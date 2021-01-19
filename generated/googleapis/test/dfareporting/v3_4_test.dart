// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unused_local_variable

library googleapis.dfareporting.v3_4.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/dfareporting/v3_4.dart' as api;

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

core.List<core.String> buildUnnamed3993() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3993(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3994() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3994(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAccount = 0;
api.Account buildAccount() {
  var o = api.Account();
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    o.accountPermissionIds = buildUnnamed3993();
    o.accountProfile = 'foo';
    o.active = true;
    o.activeAdsLimitTier = 'foo';
    o.activeViewOptOut = true;
    o.availablePermissionIds = buildUnnamed3994();
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
    checkUnnamed3993(o.accountPermissionIds);
    unittest.expect(o.accountProfile, unittest.equals('foo'));
    unittest.expect(o.active, unittest.isTrue);
    unittest.expect(o.activeAdsLimitTier, unittest.equals('foo'));
    unittest.expect(o.activeViewOptOut, unittest.isTrue);
    checkUnnamed3994(o.availablePermissionIds);
    unittest.expect(o.countryId, unittest.equals('foo'));
    unittest.expect(o.currencyId, unittest.equals('foo'));
    unittest.expect(o.defaultCreativeSizeId, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.locale, unittest.equals('foo'));
    unittest.expect(o.maximumImageSize, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.nielsenOcrEnabled, unittest.isTrue);
    checkReportsConfiguration(o.reportsConfiguration);
    unittest.expect(o.shareReportsWithTwitter, unittest.isTrue);
    unittest.expect(o.teaserSizeLimit, unittest.equals('foo'));
  }
  buildCounterAccount--;
}

core.int buildCounterAccountActiveAdSummary = 0;
api.AccountActiveAdSummary buildAccountActiveAdSummary() {
  var o = api.AccountActiveAdSummary();
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
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.activeAds, unittest.equals('foo'));
    unittest.expect(o.activeAdsLimitTier, unittest.equals('foo'));
    unittest.expect(o.availableAds, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccountActiveAdSummary--;
}

core.List<core.String> buildUnnamed3995() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed3995(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAccountPermission = 0;
api.AccountPermission buildAccountPermission() {
  var o = api.AccountPermission();
  buildCounterAccountPermission++;
  if (buildCounterAccountPermission < 3) {
    o.accountProfiles = buildUnnamed3995();
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
    checkUnnamed3995(o.accountProfiles);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.level, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.permissionGroupId, unittest.equals('foo'));
  }
  buildCounterAccountPermission--;
}

core.int buildCounterAccountPermissionGroup = 0;
api.AccountPermissionGroup buildAccountPermissionGroup() {
  var o = api.AccountPermissionGroup();
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
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterAccountPermissionGroup--;
}

core.List<api.AccountPermissionGroup> buildUnnamed3996() {
  var o = <api.AccountPermissionGroup>[];
  o.add(buildAccountPermissionGroup());
  o.add(buildAccountPermissionGroup());
  return o;
}

void checkUnnamed3996(core.List<api.AccountPermissionGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountPermissionGroup(o[0]);
  checkAccountPermissionGroup(o[1]);
}

core.int buildCounterAccountPermissionGroupsListResponse = 0;
api.AccountPermissionGroupsListResponse
    buildAccountPermissionGroupsListResponse() {
  var o = api.AccountPermissionGroupsListResponse();
  buildCounterAccountPermissionGroupsListResponse++;
  if (buildCounterAccountPermissionGroupsListResponse < 3) {
    o.accountPermissionGroups = buildUnnamed3996();
    o.kind = 'foo';
  }
  buildCounterAccountPermissionGroupsListResponse--;
  return o;
}

void checkAccountPermissionGroupsListResponse(
    api.AccountPermissionGroupsListResponse o) {
  buildCounterAccountPermissionGroupsListResponse++;
  if (buildCounterAccountPermissionGroupsListResponse < 3) {
    checkUnnamed3996(o.accountPermissionGroups);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccountPermissionGroupsListResponse--;
}

core.List<api.AccountPermission> buildUnnamed3997() {
  var o = <api.AccountPermission>[];
  o.add(buildAccountPermission());
  o.add(buildAccountPermission());
  return o;
}

void checkUnnamed3997(core.List<api.AccountPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountPermission(o[0]);
  checkAccountPermission(o[1]);
}

core.int buildCounterAccountPermissionsListResponse = 0;
api.AccountPermissionsListResponse buildAccountPermissionsListResponse() {
  var o = api.AccountPermissionsListResponse();
  buildCounterAccountPermissionsListResponse++;
  if (buildCounterAccountPermissionsListResponse < 3) {
    o.accountPermissions = buildUnnamed3997();
    o.kind = 'foo';
  }
  buildCounterAccountPermissionsListResponse--;
  return o;
}

void checkAccountPermissionsListResponse(api.AccountPermissionsListResponse o) {
  buildCounterAccountPermissionsListResponse++;
  if (buildCounterAccountPermissionsListResponse < 3) {
    checkUnnamed3997(o.accountPermissions);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterAccountPermissionsListResponse--;
}

core.int buildCounterAccountUserProfile = 0;
api.AccountUserProfile buildAccountUserProfile() {
  var o = api.AccountUserProfile();
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
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.active, unittest.isTrue);
    checkObjectFilter(o.advertiserFilter);
    checkObjectFilter(o.campaignFilter);
    unittest.expect(o.comments, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.locale, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkObjectFilter(o.siteFilter);
    unittest.expect(o.subaccountId, unittest.equals('foo'));
    unittest.expect(o.traffickerType, unittest.equals('foo'));
    unittest.expect(o.userAccessType, unittest.equals('foo'));
    checkObjectFilter(o.userRoleFilter);
    unittest.expect(o.userRoleId, unittest.equals('foo'));
  }
  buildCounterAccountUserProfile--;
}

core.List<api.AccountUserProfile> buildUnnamed3998() {
  var o = <api.AccountUserProfile>[];
  o.add(buildAccountUserProfile());
  o.add(buildAccountUserProfile());
  return o;
}

void checkUnnamed3998(core.List<api.AccountUserProfile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountUserProfile(o[0]);
  checkAccountUserProfile(o[1]);
}

core.int buildCounterAccountUserProfilesListResponse = 0;
api.AccountUserProfilesListResponse buildAccountUserProfilesListResponse() {
  var o = api.AccountUserProfilesListResponse();
  buildCounterAccountUserProfilesListResponse++;
  if (buildCounterAccountUserProfilesListResponse < 3) {
    o.accountUserProfiles = buildUnnamed3998();
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
    checkUnnamed3998(o.accountUserProfiles);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterAccountUserProfilesListResponse--;
}

core.List<api.Account> buildUnnamed3999() {
  var o = <api.Account>[];
  o.add(buildAccount());
  o.add(buildAccount());
  return o;
}

void checkUnnamed3999(core.List<api.Account> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccount(o[0]);
  checkAccount(o[1]);
}

core.int buildCounterAccountsListResponse = 0;
api.AccountsListResponse buildAccountsListResponse() {
  var o = api.AccountsListResponse();
  buildCounterAccountsListResponse++;
  if (buildCounterAccountsListResponse < 3) {
    o.accounts = buildUnnamed3999();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterAccountsListResponse--;
  return o;
}

void checkAccountsListResponse(api.AccountsListResponse o) {
  buildCounterAccountsListResponse++;
  if (buildCounterAccountsListResponse < 3) {
    checkUnnamed3999(o.accounts);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterAccountsListResponse--;
}

core.List<api.DimensionValue> buildUnnamed4000() {
  var o = <api.DimensionValue>[];
  o.add(buildDimensionValue());
  o.add(buildDimensionValue());
  return o;
}

void checkUnnamed4000(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

core.List<core.String> buildUnnamed4001() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4001(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterActivities = 0;
api.Activities buildActivities() {
  var o = api.Activities();
  buildCounterActivities++;
  if (buildCounterActivities < 3) {
    o.filters = buildUnnamed4000();
    o.kind = 'foo';
    o.metricNames = buildUnnamed4001();
  }
  buildCounterActivities--;
  return o;
}

void checkActivities(api.Activities o) {
  buildCounterActivities++;
  if (buildCounterActivities < 3) {
    checkUnnamed4000(o.filters);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4001(o.metricNames);
  }
  buildCounterActivities--;
}

core.List<api.CreativeGroupAssignment> buildUnnamed4002() {
  var o = <api.CreativeGroupAssignment>[];
  o.add(buildCreativeGroupAssignment());
  o.add(buildCreativeGroupAssignment());
  return o;
}

void checkUnnamed4002(core.List<api.CreativeGroupAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeGroupAssignment(o[0]);
  checkCreativeGroupAssignment(o[1]);
}

core.List<api.EventTagOverride> buildUnnamed4003() {
  var o = <api.EventTagOverride>[];
  o.add(buildEventTagOverride());
  o.add(buildEventTagOverride());
  return o;
}

void checkUnnamed4003(core.List<api.EventTagOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventTagOverride(o[0]);
  checkEventTagOverride(o[1]);
}

core.List<api.PlacementAssignment> buildUnnamed4004() {
  var o = <api.PlacementAssignment>[];
  o.add(buildPlacementAssignment());
  o.add(buildPlacementAssignment());
  return o;
}

void checkUnnamed4004(core.List<api.PlacementAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlacementAssignment(o[0]);
  checkPlacementAssignment(o[1]);
}

core.int buildCounterAd = 0;
api.Ad buildAd() {
  var o = api.Ad();
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
    o.creativeGroupAssignments = buildUnnamed4002();
    o.creativeRotation = buildCreativeRotation();
    o.dayPartTargeting = buildDayPartTargeting();
    o.defaultClickThroughEventTagProperties =
        buildDefaultClickThroughEventTagProperties();
    o.deliverySchedule = buildDeliverySchedule();
    o.dynamicClickTracker = true;
    o.endTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.eventTagOverrides = buildUnnamed4003();
    o.geoTargeting = buildGeoTargeting();
    o.id = 'foo';
    o.idDimensionValue = buildDimensionValue();
    o.keyValueTargetingExpression = buildKeyValueTargetingExpression();
    o.kind = 'foo';
    o.languageTargeting = buildLanguageTargeting();
    o.lastModifiedInfo = buildLastModifiedInfo();
    o.name = 'foo';
    o.placementAssignments = buildUnnamed4004();
    o.remarketingListExpression = buildListTargetingExpression();
    o.size = buildSize();
    o.sslCompliant = true;
    o.sslRequired = true;
    o.startTime = core.DateTime.parse("2002-02-27T14:01:02");
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
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.active, unittest.isTrue);
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    checkDimensionValue(o.advertiserIdDimensionValue);
    unittest.expect(o.archived, unittest.isTrue);
    unittest.expect(o.audienceSegmentId, unittest.equals('foo'));
    unittest.expect(o.campaignId, unittest.equals('foo'));
    checkDimensionValue(o.campaignIdDimensionValue);
    checkClickThroughUrl(o.clickThroughUrl);
    checkClickThroughUrlSuffixProperties(o.clickThroughUrlSuffixProperties);
    unittest.expect(o.comments, unittest.equals('foo'));
    unittest.expect(o.compatibility, unittest.equals('foo'));
    checkLastModifiedInfo(o.createInfo);
    checkUnnamed4002(o.creativeGroupAssignments);
    checkCreativeRotation(o.creativeRotation);
    checkDayPartTargeting(o.dayPartTargeting);
    checkDefaultClickThroughEventTagProperties(
        o.defaultClickThroughEventTagProperties);
    checkDeliverySchedule(o.deliverySchedule);
    unittest.expect(o.dynamicClickTracker, unittest.isTrue);
    unittest.expect(
        o.endTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkUnnamed4003(o.eventTagOverrides);
    checkGeoTargeting(o.geoTargeting);
    unittest.expect(o.id, unittest.equals('foo'));
    checkDimensionValue(o.idDimensionValue);
    checkKeyValueTargetingExpression(o.keyValueTargetingExpression);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkLanguageTargeting(o.languageTargeting);
    checkLastModifiedInfo(o.lastModifiedInfo);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4004(o.placementAssignments);
    checkListTargetingExpression(o.remarketingListExpression);
    checkSize(o.size);
    unittest.expect(o.sslCompliant, unittest.isTrue);
    unittest.expect(o.sslRequired, unittest.isTrue);
    unittest.expect(o.startTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.subaccountId, unittest.equals('foo'));
    unittest.expect(o.targetingTemplateId, unittest.equals('foo'));
    checkTechnologyTargeting(o.technologyTargeting);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterAd--;
}

core.int buildCounterAdBlockingConfiguration = 0;
api.AdBlockingConfiguration buildAdBlockingConfiguration() {
  var o = api.AdBlockingConfiguration();
  buildCounterAdBlockingConfiguration++;
  if (buildCounterAdBlockingConfiguration < 3) {
    o.clickThroughUrl = 'foo';
    o.creativeBundleId = 'foo';
    o.enabled = true;
    o.overrideClickThroughUrl = true;
  }
  buildCounterAdBlockingConfiguration--;
  return o;
}

void checkAdBlockingConfiguration(api.AdBlockingConfiguration o) {
  buildCounterAdBlockingConfiguration++;
  if (buildCounterAdBlockingConfiguration < 3) {
    unittest.expect(o.clickThroughUrl, unittest.equals('foo'));
    unittest.expect(o.creativeBundleId, unittest.equals('foo'));
    unittest.expect(o.enabled, unittest.isTrue);
    unittest.expect(o.overrideClickThroughUrl, unittest.isTrue);
  }
  buildCounterAdBlockingConfiguration--;
}

core.int buildCounterAdSlot = 0;
api.AdSlot buildAdSlot() {
  var o = api.AdSlot();
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
    unittest.expect(o.comment, unittest.equals('foo'));
    unittest.expect(o.compatibility, unittest.equals('foo'));
    unittest.expect(o.height, unittest.equals('foo'));
    unittest.expect(o.linkedPlacementId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.paymentSourceType, unittest.equals('foo'));
    unittest.expect(o.primary, unittest.isTrue);
    unittest.expect(o.width, unittest.equals('foo'));
  }
  buildCounterAdSlot--;
}

core.List<api.Ad> buildUnnamed4005() {
  var o = <api.Ad>[];
  o.add(buildAd());
  o.add(buildAd());
  return o;
}

void checkUnnamed4005(core.List<api.Ad> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAd(o[0]);
  checkAd(o[1]);
}

core.int buildCounterAdsListResponse = 0;
api.AdsListResponse buildAdsListResponse() {
  var o = api.AdsListResponse();
  buildCounterAdsListResponse++;
  if (buildCounterAdsListResponse < 3) {
    o.ads = buildUnnamed4005();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterAdsListResponse--;
  return o;
}

void checkAdsListResponse(api.AdsListResponse o) {
  buildCounterAdsListResponse++;
  if (buildCounterAdsListResponse < 3) {
    checkUnnamed4005(o.ads);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterAdsListResponse--;
}

core.int buildCounterAdvertiser = 0;
api.Advertiser buildAdvertiser() {
  var o = api.Advertiser();
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
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.advertiserGroupId, unittest.equals('foo'));
    unittest.expect(o.clickThroughUrlSuffix, unittest.equals('foo'));
    unittest.expect(o.defaultClickThroughEventTagId, unittest.equals('foo'));
    unittest.expect(o.defaultEmail, unittest.equals('foo'));
    unittest.expect(o.floodlightConfigurationId, unittest.equals('foo'));
    checkDimensionValue(o.floodlightConfigurationIdDimensionValue);
    unittest.expect(o.id, unittest.equals('foo'));
    checkDimensionValue(o.idDimensionValue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(
        o.originalFloodlightConfigurationId, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.subaccountId, unittest.equals('foo'));
    unittest.expect(o.suspended, unittest.isTrue);
  }
  buildCounterAdvertiser--;
}

core.int buildCounterAdvertiserGroup = 0;
api.AdvertiserGroup buildAdvertiserGroup() {
  var o = api.AdvertiserGroup();
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
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterAdvertiserGroup--;
}

core.List<api.AdvertiserGroup> buildUnnamed4006() {
  var o = <api.AdvertiserGroup>[];
  o.add(buildAdvertiserGroup());
  o.add(buildAdvertiserGroup());
  return o;
}

void checkUnnamed4006(core.List<api.AdvertiserGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdvertiserGroup(o[0]);
  checkAdvertiserGroup(o[1]);
}

core.int buildCounterAdvertiserGroupsListResponse = 0;
api.AdvertiserGroupsListResponse buildAdvertiserGroupsListResponse() {
  var o = api.AdvertiserGroupsListResponse();
  buildCounterAdvertiserGroupsListResponse++;
  if (buildCounterAdvertiserGroupsListResponse < 3) {
    o.advertiserGroups = buildUnnamed4006();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterAdvertiserGroupsListResponse--;
  return o;
}

void checkAdvertiserGroupsListResponse(api.AdvertiserGroupsListResponse o) {
  buildCounterAdvertiserGroupsListResponse++;
  if (buildCounterAdvertiserGroupsListResponse < 3) {
    checkUnnamed4006(o.advertiserGroups);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterAdvertiserGroupsListResponse--;
}

core.List<api.LandingPage> buildUnnamed4007() {
  var o = <api.LandingPage>[];
  o.add(buildLandingPage());
  o.add(buildLandingPage());
  return o;
}

void checkUnnamed4007(core.List<api.LandingPage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLandingPage(o[0]);
  checkLandingPage(o[1]);
}

core.int buildCounterAdvertiserLandingPagesListResponse = 0;
api.AdvertiserLandingPagesListResponse
    buildAdvertiserLandingPagesListResponse() {
  var o = api.AdvertiserLandingPagesListResponse();
  buildCounterAdvertiserLandingPagesListResponse++;
  if (buildCounterAdvertiserLandingPagesListResponse < 3) {
    o.kind = 'foo';
    o.landingPages = buildUnnamed4007();
    o.nextPageToken = 'foo';
  }
  buildCounterAdvertiserLandingPagesListResponse--;
  return o;
}

void checkAdvertiserLandingPagesListResponse(
    api.AdvertiserLandingPagesListResponse o) {
  buildCounterAdvertiserLandingPagesListResponse++;
  if (buildCounterAdvertiserLandingPagesListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4007(o.landingPages);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterAdvertiserLandingPagesListResponse--;
}

core.List<api.Advertiser> buildUnnamed4008() {
  var o = <api.Advertiser>[];
  o.add(buildAdvertiser());
  o.add(buildAdvertiser());
  return o;
}

void checkUnnamed4008(core.List<api.Advertiser> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdvertiser(o[0]);
  checkAdvertiser(o[1]);
}

core.int buildCounterAdvertisersListResponse = 0;
api.AdvertisersListResponse buildAdvertisersListResponse() {
  var o = api.AdvertisersListResponse();
  buildCounterAdvertisersListResponse++;
  if (buildCounterAdvertisersListResponse < 3) {
    o.advertisers = buildUnnamed4008();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterAdvertisersListResponse--;
  return o;
}

void checkAdvertisersListResponse(api.AdvertisersListResponse o) {
  buildCounterAdvertisersListResponse++;
  if (buildCounterAdvertisersListResponse < 3) {
    checkUnnamed4008(o.advertisers);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterAdvertisersListResponse--;
}

core.int buildCounterAudienceSegment = 0;
api.AudienceSegment buildAudienceSegment() {
  var o = api.AudienceSegment();
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
    unittest.expect(o.allocation, unittest.equals(42));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterAudienceSegment--;
}

core.List<api.AudienceSegment> buildUnnamed4009() {
  var o = <api.AudienceSegment>[];
  o.add(buildAudienceSegment());
  o.add(buildAudienceSegment());
  return o;
}

void checkUnnamed4009(core.List<api.AudienceSegment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAudienceSegment(o[0]);
  checkAudienceSegment(o[1]);
}

core.int buildCounterAudienceSegmentGroup = 0;
api.AudienceSegmentGroup buildAudienceSegmentGroup() {
  var o = api.AudienceSegmentGroup();
  buildCounterAudienceSegmentGroup++;
  if (buildCounterAudienceSegmentGroup < 3) {
    o.audienceSegments = buildUnnamed4009();
    o.id = 'foo';
    o.name = 'foo';
  }
  buildCounterAudienceSegmentGroup--;
  return o;
}

void checkAudienceSegmentGroup(api.AudienceSegmentGroup o) {
  buildCounterAudienceSegmentGroup++;
  if (buildCounterAudienceSegmentGroup < 3) {
    checkUnnamed4009(o.audienceSegments);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterAudienceSegmentGroup--;
}

core.int buildCounterBrowser = 0;
api.Browser buildBrowser() {
  var o = api.Browser();
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
    unittest.expect(o.browserVersionId, unittest.equals('foo'));
    unittest.expect(o.dartId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.majorVersion, unittest.equals('foo'));
    unittest.expect(o.minorVersion, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterBrowser--;
}

core.List<api.Browser> buildUnnamed4010() {
  var o = <api.Browser>[];
  o.add(buildBrowser());
  o.add(buildBrowser());
  return o;
}

void checkUnnamed4010(core.List<api.Browser> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBrowser(o[0]);
  checkBrowser(o[1]);
}

core.int buildCounterBrowsersListResponse = 0;
api.BrowsersListResponse buildBrowsersListResponse() {
  var o = api.BrowsersListResponse();
  buildCounterBrowsersListResponse++;
  if (buildCounterBrowsersListResponse < 3) {
    o.browsers = buildUnnamed4010();
    o.kind = 'foo';
  }
  buildCounterBrowsersListResponse--;
  return o;
}

void checkBrowsersListResponse(api.BrowsersListResponse o) {
  buildCounterBrowsersListResponse++;
  if (buildCounterBrowsersListResponse < 3) {
    checkUnnamed4010(o.browsers);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterBrowsersListResponse--;
}

core.List<api.CreativeOptimizationConfiguration> buildUnnamed4011() {
  var o = <api.CreativeOptimizationConfiguration>[];
  o.add(buildCreativeOptimizationConfiguration());
  o.add(buildCreativeOptimizationConfiguration());
  return o;
}

void checkUnnamed4011(core.List<api.CreativeOptimizationConfiguration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeOptimizationConfiguration(o[0]);
  checkCreativeOptimizationConfiguration(o[1]);
}

core.List<api.AudienceSegmentGroup> buildUnnamed4012() {
  var o = <api.AudienceSegmentGroup>[];
  o.add(buildAudienceSegmentGroup());
  o.add(buildAudienceSegmentGroup());
  return o;
}

void checkUnnamed4012(core.List<api.AudienceSegmentGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAudienceSegmentGroup(o[0]);
  checkAudienceSegmentGroup(o[1]);
}

core.List<core.String> buildUnnamed4013() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4013(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.EventTagOverride> buildUnnamed4014() {
  var o = <api.EventTagOverride>[];
  o.add(buildEventTagOverride());
  o.add(buildEventTagOverride());
  return o;
}

void checkUnnamed4014(core.List<api.EventTagOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventTagOverride(o[0]);
  checkEventTagOverride(o[1]);
}

core.List<core.String> buildUnnamed4015() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4015(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCampaign = 0;
api.Campaign buildCampaign() {
  var o = api.Campaign();
  buildCounterCampaign++;
  if (buildCounterCampaign < 3) {
    o.accountId = 'foo';
    o.adBlockingConfiguration = buildAdBlockingConfiguration();
    o.additionalCreativeOptimizationConfigurations = buildUnnamed4011();
    o.advertiserGroupId = 'foo';
    o.advertiserId = 'foo';
    o.advertiserIdDimensionValue = buildDimensionValue();
    o.archived = true;
    o.audienceSegmentGroups = buildUnnamed4012();
    o.billingInvoiceCode = 'foo';
    o.clickThroughUrlSuffixProperties = buildClickThroughUrlSuffixProperties();
    o.comment = 'foo';
    o.createInfo = buildLastModifiedInfo();
    o.creativeGroupIds = buildUnnamed4013();
    o.creativeOptimizationConfiguration =
        buildCreativeOptimizationConfiguration();
    o.defaultClickThroughEventTagProperties =
        buildDefaultClickThroughEventTagProperties();
    o.defaultLandingPageId = 'foo';
    o.endDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.eventTagOverrides = buildUnnamed4014();
    o.externalId = 'foo';
    o.id = 'foo';
    o.idDimensionValue = buildDimensionValue();
    o.kind = 'foo';
    o.lastModifiedInfo = buildLastModifiedInfo();
    o.name = 'foo';
    o.nielsenOcrEnabled = true;
    o.startDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.subaccountId = 'foo';
    o.traffickerEmails = buildUnnamed4015();
  }
  buildCounterCampaign--;
  return o;
}

void checkCampaign(api.Campaign o) {
  buildCounterCampaign++;
  if (buildCounterCampaign < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    checkAdBlockingConfiguration(o.adBlockingConfiguration);
    checkUnnamed4011(o.additionalCreativeOptimizationConfigurations);
    unittest.expect(o.advertiserGroupId, unittest.equals('foo'));
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    checkDimensionValue(o.advertiserIdDimensionValue);
    unittest.expect(o.archived, unittest.isTrue);
    checkUnnamed4012(o.audienceSegmentGroups);
    unittest.expect(o.billingInvoiceCode, unittest.equals('foo'));
    checkClickThroughUrlSuffixProperties(o.clickThroughUrlSuffixProperties);
    unittest.expect(o.comment, unittest.equals('foo'));
    checkLastModifiedInfo(o.createInfo);
    checkUnnamed4013(o.creativeGroupIds);
    checkCreativeOptimizationConfiguration(o.creativeOptimizationConfiguration);
    checkDefaultClickThroughEventTagProperties(
        o.defaultClickThroughEventTagProperties);
    unittest.expect(o.defaultLandingPageId, unittest.equals('foo'));
    unittest.expect(
        o.endDate, unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    checkUnnamed4014(o.eventTagOverrides);
    unittest.expect(o.externalId, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkDimensionValue(o.idDimensionValue);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkLastModifiedInfo(o.lastModifiedInfo);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.nielsenOcrEnabled, unittest.isTrue);
    unittest.expect(o.startDate,
        unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.subaccountId, unittest.equals('foo'));
    checkUnnamed4015(o.traffickerEmails);
  }
  buildCounterCampaign--;
}

core.int buildCounterCampaignCreativeAssociation = 0;
api.CampaignCreativeAssociation buildCampaignCreativeAssociation() {
  var o = api.CampaignCreativeAssociation();
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
    unittest.expect(o.creativeId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterCampaignCreativeAssociation--;
}

core.List<api.CampaignCreativeAssociation> buildUnnamed4016() {
  var o = <api.CampaignCreativeAssociation>[];
  o.add(buildCampaignCreativeAssociation());
  o.add(buildCampaignCreativeAssociation());
  return o;
}

void checkUnnamed4016(core.List<api.CampaignCreativeAssociation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCampaignCreativeAssociation(o[0]);
  checkCampaignCreativeAssociation(o[1]);
}

core.int buildCounterCampaignCreativeAssociationsListResponse = 0;
api.CampaignCreativeAssociationsListResponse
    buildCampaignCreativeAssociationsListResponse() {
  var o = api.CampaignCreativeAssociationsListResponse();
  buildCounterCampaignCreativeAssociationsListResponse++;
  if (buildCounterCampaignCreativeAssociationsListResponse < 3) {
    o.campaignCreativeAssociations = buildUnnamed4016();
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
    checkUnnamed4016(o.campaignCreativeAssociations);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterCampaignCreativeAssociationsListResponse--;
}

core.int buildCounterCampaignManagerIds = 0;
api.CampaignManagerIds buildCampaignManagerIds() {
  var o = api.CampaignManagerIds();
  buildCounterCampaignManagerIds++;
  if (buildCounterCampaignManagerIds < 3) {
    o.adId = 'foo';
    o.campaignId = 'foo';
    o.creativeId = 'foo';
    o.kind = 'foo';
    o.placementId = 'foo';
    o.siteId = 'foo';
  }
  buildCounterCampaignManagerIds--;
  return o;
}

void checkCampaignManagerIds(api.CampaignManagerIds o) {
  buildCounterCampaignManagerIds++;
  if (buildCounterCampaignManagerIds < 3) {
    unittest.expect(o.adId, unittest.equals('foo'));
    unittest.expect(o.campaignId, unittest.equals('foo'));
    unittest.expect(o.creativeId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.placementId, unittest.equals('foo'));
    unittest.expect(o.siteId, unittest.equals('foo'));
  }
  buildCounterCampaignManagerIds--;
}

core.List<api.Campaign> buildUnnamed4017() {
  var o = <api.Campaign>[];
  o.add(buildCampaign());
  o.add(buildCampaign());
  return o;
}

void checkUnnamed4017(core.List<api.Campaign> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCampaign(o[0]);
  checkCampaign(o[1]);
}

core.int buildCounterCampaignsListResponse = 0;
api.CampaignsListResponse buildCampaignsListResponse() {
  var o = api.CampaignsListResponse();
  buildCounterCampaignsListResponse++;
  if (buildCounterCampaignsListResponse < 3) {
    o.campaigns = buildUnnamed4017();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterCampaignsListResponse--;
  return o;
}

void checkCampaignsListResponse(api.CampaignsListResponse o) {
  buildCounterCampaignsListResponse++;
  if (buildCounterCampaignsListResponse < 3) {
    checkUnnamed4017(o.campaigns);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterCampaignsListResponse--;
}

core.int buildCounterChangeLog = 0;
api.ChangeLog buildChangeLog() {
  var o = api.ChangeLog();
  buildCounterChangeLog++;
  if (buildCounterChangeLog < 3) {
    o.accountId = 'foo';
    o.action = 'foo';
    o.changeTime = core.DateTime.parse("2002-02-27T14:01:02");
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
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.action, unittest.equals('foo'));
    unittest.expect(o.changeTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.fieldName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.newValue, unittest.equals('foo'));
    unittest.expect(o.objectId, unittest.equals('foo'));
    unittest.expect(o.objectType, unittest.equals('foo'));
    unittest.expect(o.oldValue, unittest.equals('foo'));
    unittest.expect(o.subaccountId, unittest.equals('foo'));
    unittest.expect(o.transactionId, unittest.equals('foo'));
    unittest.expect(o.userProfileId, unittest.equals('foo'));
    unittest.expect(o.userProfileName, unittest.equals('foo'));
  }
  buildCounterChangeLog--;
}

core.List<api.ChangeLog> buildUnnamed4018() {
  var o = <api.ChangeLog>[];
  o.add(buildChangeLog());
  o.add(buildChangeLog());
  return o;
}

void checkUnnamed4018(core.List<api.ChangeLog> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChangeLog(o[0]);
  checkChangeLog(o[1]);
}

core.int buildCounterChangeLogsListResponse = 0;
api.ChangeLogsListResponse buildChangeLogsListResponse() {
  var o = api.ChangeLogsListResponse();
  buildCounterChangeLogsListResponse++;
  if (buildCounterChangeLogsListResponse < 3) {
    o.changeLogs = buildUnnamed4018();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterChangeLogsListResponse--;
  return o;
}

void checkChangeLogsListResponse(api.ChangeLogsListResponse o) {
  buildCounterChangeLogsListResponse++;
  if (buildCounterChangeLogsListResponse < 3) {
    checkUnnamed4018(o.changeLogs);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterChangeLogsListResponse--;
}

core.List<api.ChannelGroupingRule> buildUnnamed4019() {
  var o = <api.ChannelGroupingRule>[];
  o.add(buildChannelGroupingRule());
  o.add(buildChannelGroupingRule());
  return o;
}

void checkUnnamed4019(core.List<api.ChannelGroupingRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChannelGroupingRule(o[0]);
  checkChannelGroupingRule(o[1]);
}

core.int buildCounterChannelGrouping = 0;
api.ChannelGrouping buildChannelGrouping() {
  var o = api.ChannelGrouping();
  buildCounterChannelGrouping++;
  if (buildCounterChannelGrouping < 3) {
    o.fallbackName = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.rules = buildUnnamed4019();
  }
  buildCounterChannelGrouping--;
  return o;
}

void checkChannelGrouping(api.ChannelGrouping o) {
  buildCounterChannelGrouping++;
  if (buildCounterChannelGrouping < 3) {
    unittest.expect(o.fallbackName, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4019(o.rules);
  }
  buildCounterChannelGrouping--;
}

core.List<api.DisjunctiveMatchStatement> buildUnnamed4020() {
  var o = <api.DisjunctiveMatchStatement>[];
  o.add(buildDisjunctiveMatchStatement());
  o.add(buildDisjunctiveMatchStatement());
  return o;
}

void checkUnnamed4020(core.List<api.DisjunctiveMatchStatement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisjunctiveMatchStatement(o[0]);
  checkDisjunctiveMatchStatement(o[1]);
}

core.int buildCounterChannelGroupingRule = 0;
api.ChannelGroupingRule buildChannelGroupingRule() {
  var o = api.ChannelGroupingRule();
  buildCounterChannelGroupingRule++;
  if (buildCounterChannelGroupingRule < 3) {
    o.disjunctiveMatchStatements = buildUnnamed4020();
    o.kind = 'foo';
    o.name = 'foo';
  }
  buildCounterChannelGroupingRule--;
  return o;
}

void checkChannelGroupingRule(api.ChannelGroupingRule o) {
  buildCounterChannelGroupingRule++;
  if (buildCounterChannelGroupingRule < 3) {
    checkUnnamed4020(o.disjunctiveMatchStatements);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterChannelGroupingRule--;
}

core.List<api.City> buildUnnamed4021() {
  var o = <api.City>[];
  o.add(buildCity());
  o.add(buildCity());
  return o;
}

void checkUnnamed4021(core.List<api.City> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCity(o[0]);
  checkCity(o[1]);
}

core.int buildCounterCitiesListResponse = 0;
api.CitiesListResponse buildCitiesListResponse() {
  var o = api.CitiesListResponse();
  buildCounterCitiesListResponse++;
  if (buildCounterCitiesListResponse < 3) {
    o.cities = buildUnnamed4021();
    o.kind = 'foo';
  }
  buildCounterCitiesListResponse--;
  return o;
}

void checkCitiesListResponse(api.CitiesListResponse o) {
  buildCounterCitiesListResponse++;
  if (buildCounterCitiesListResponse < 3) {
    checkUnnamed4021(o.cities);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterCitiesListResponse--;
}

core.int buildCounterCity = 0;
api.City buildCity() {
  var o = api.City();
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
    unittest.expect(o.countryCode, unittest.equals('foo'));
    unittest.expect(o.countryDartId, unittest.equals('foo'));
    unittest.expect(o.dartId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.metroCode, unittest.equals('foo'));
    unittest.expect(o.metroDmaId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.regionCode, unittest.equals('foo'));
    unittest.expect(o.regionDartId, unittest.equals('foo'));
  }
  buildCounterCity--;
}

core.int buildCounterClickTag = 0;
api.ClickTag buildClickTag() {
  var o = api.ClickTag();
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
    checkCreativeClickThroughUrl(o.clickThroughUrl);
    unittest.expect(o.eventName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterClickTag--;
}

core.int buildCounterClickThroughUrl = 0;
api.ClickThroughUrl buildClickThroughUrl() {
  var o = api.ClickThroughUrl();
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
    unittest.expect(o.computedClickThroughUrl, unittest.equals('foo'));
    unittest.expect(o.customClickThroughUrl, unittest.equals('foo'));
    unittest.expect(o.defaultLandingPage, unittest.isTrue);
    unittest.expect(o.landingPageId, unittest.equals('foo'));
  }
  buildCounterClickThroughUrl--;
}

core.int buildCounterClickThroughUrlSuffixProperties = 0;
api.ClickThroughUrlSuffixProperties buildClickThroughUrlSuffixProperties() {
  var o = api.ClickThroughUrlSuffixProperties();
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
    unittest.expect(o.clickThroughUrlSuffix, unittest.equals('foo'));
    unittest.expect(o.overrideInheritedSuffix, unittest.isTrue);
  }
  buildCounterClickThroughUrlSuffixProperties--;
}

core.int buildCounterCompanionClickThroughOverride = 0;
api.CompanionClickThroughOverride buildCompanionClickThroughOverride() {
  var o = api.CompanionClickThroughOverride();
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
    checkClickThroughUrl(o.clickThroughUrl);
    unittest.expect(o.creativeId, unittest.equals('foo'));
  }
  buildCounterCompanionClickThroughOverride--;
}

core.List<api.Size> buildUnnamed4022() {
  var o = <api.Size>[];
  o.add(buildSize());
  o.add(buildSize());
  return o;
}

void checkUnnamed4022(core.List<api.Size> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSize(o[0]);
  checkSize(o[1]);
}

core.int buildCounterCompanionSetting = 0;
api.CompanionSetting buildCompanionSetting() {
  var o = api.CompanionSetting();
  buildCounterCompanionSetting++;
  if (buildCounterCompanionSetting < 3) {
    o.companionsDisabled = true;
    o.enabledSizes = buildUnnamed4022();
    o.imageOnly = true;
    o.kind = 'foo';
  }
  buildCounterCompanionSetting--;
  return o;
}

void checkCompanionSetting(api.CompanionSetting o) {
  buildCounterCompanionSetting++;
  if (buildCounterCompanionSetting < 3) {
    unittest.expect(o.companionsDisabled, unittest.isTrue);
    checkUnnamed4022(o.enabledSizes);
    unittest.expect(o.imageOnly, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterCompanionSetting--;
}

core.int buildCounterCompatibleFields = 0;
api.CompatibleFields buildCompatibleFields() {
  var o = api.CompatibleFields();
  buildCounterCompatibleFields++;
  if (buildCounterCompatibleFields < 3) {
    o.crossDimensionReachReportCompatibleFields =
        buildCrossDimensionReachReportCompatibleFields();
    o.floodlightReportCompatibleFields =
        buildFloodlightReportCompatibleFields();
    o.kind = 'foo';
    o.pathAttributionReportCompatibleFields = buildPathReportCompatibleFields();
    o.pathReportCompatibleFields = buildPathReportCompatibleFields();
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
        o.crossDimensionReachReportCompatibleFields);
    checkFloodlightReportCompatibleFields(o.floodlightReportCompatibleFields);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkPathReportCompatibleFields(o.pathAttributionReportCompatibleFields);
    checkPathReportCompatibleFields(o.pathReportCompatibleFields);
    checkPathToConversionReportCompatibleFields(
        o.pathToConversionReportCompatibleFields);
    checkReachReportCompatibleFields(o.reachReportCompatibleFields);
    checkReportCompatibleFields(o.reportCompatibleFields);
  }
  buildCounterCompatibleFields--;
}

core.int buildCounterConnectionType = 0;
api.ConnectionType buildConnectionType() {
  var o = api.ConnectionType();
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
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterConnectionType--;
}

core.List<api.ConnectionType> buildUnnamed4023() {
  var o = <api.ConnectionType>[];
  o.add(buildConnectionType());
  o.add(buildConnectionType());
  return o;
}

void checkUnnamed4023(core.List<api.ConnectionType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnectionType(o[0]);
  checkConnectionType(o[1]);
}

core.int buildCounterConnectionTypesListResponse = 0;
api.ConnectionTypesListResponse buildConnectionTypesListResponse() {
  var o = api.ConnectionTypesListResponse();
  buildCounterConnectionTypesListResponse++;
  if (buildCounterConnectionTypesListResponse < 3) {
    o.connectionTypes = buildUnnamed4023();
    o.kind = 'foo';
  }
  buildCounterConnectionTypesListResponse--;
  return o;
}

void checkConnectionTypesListResponse(api.ConnectionTypesListResponse o) {
  buildCounterConnectionTypesListResponse++;
  if (buildCounterConnectionTypesListResponse < 3) {
    checkUnnamed4023(o.connectionTypes);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterConnectionTypesListResponse--;
}

core.List<api.ContentCategory> buildUnnamed4024() {
  var o = <api.ContentCategory>[];
  o.add(buildContentCategory());
  o.add(buildContentCategory());
  return o;
}

void checkUnnamed4024(core.List<api.ContentCategory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContentCategory(o[0]);
  checkContentCategory(o[1]);
}

core.int buildCounterContentCategoriesListResponse = 0;
api.ContentCategoriesListResponse buildContentCategoriesListResponse() {
  var o = api.ContentCategoriesListResponse();
  buildCounterContentCategoriesListResponse++;
  if (buildCounterContentCategoriesListResponse < 3) {
    o.contentCategories = buildUnnamed4024();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterContentCategoriesListResponse--;
  return o;
}

void checkContentCategoriesListResponse(api.ContentCategoriesListResponse o) {
  buildCounterContentCategoriesListResponse++;
  if (buildCounterContentCategoriesListResponse < 3) {
    checkUnnamed4024(o.contentCategories);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterContentCategoriesListResponse--;
}

core.int buildCounterContentCategory = 0;
api.ContentCategory buildContentCategory() {
  var o = api.ContentCategory();
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
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterContentCategory--;
}

core.List<api.CustomFloodlightVariable> buildUnnamed4025() {
  var o = <api.CustomFloodlightVariable>[];
  o.add(buildCustomFloodlightVariable());
  o.add(buildCustomFloodlightVariable());
  return o;
}

void checkUnnamed4025(core.List<api.CustomFloodlightVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomFloodlightVariable(o[0]);
  checkCustomFloodlightVariable(o[1]);
}

core.List<core.String> buildUnnamed4026() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4026(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterConversion = 0;
api.Conversion buildConversion() {
  var o = api.Conversion();
  buildCounterConversion++;
  if (buildCounterConversion < 3) {
    o.childDirectedTreatment = true;
    o.customVariables = buildUnnamed4025();
    o.dclid = 'foo';
    o.encryptedUserId = 'foo';
    o.encryptedUserIdCandidates = buildUnnamed4026();
    o.floodlightActivityId = 'foo';
    o.floodlightConfigurationId = 'foo';
    o.gclid = 'foo';
    o.kind = 'foo';
    o.limitAdTracking = true;
    o.matchId = 'foo';
    o.mobileDeviceId = 'foo';
    o.nonPersonalizedAd = true;
    o.ordinal = 'foo';
    o.quantity = 'foo';
    o.timestampMicros = 'foo';
    o.treatmentForUnderage = true;
    o.value = 42.0;
  }
  buildCounterConversion--;
  return o;
}

void checkConversion(api.Conversion o) {
  buildCounterConversion++;
  if (buildCounterConversion < 3) {
    unittest.expect(o.childDirectedTreatment, unittest.isTrue);
    checkUnnamed4025(o.customVariables);
    unittest.expect(o.dclid, unittest.equals('foo'));
    unittest.expect(o.encryptedUserId, unittest.equals('foo'));
    checkUnnamed4026(o.encryptedUserIdCandidates);
    unittest.expect(o.floodlightActivityId, unittest.equals('foo'));
    unittest.expect(o.floodlightConfigurationId, unittest.equals('foo'));
    unittest.expect(o.gclid, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.limitAdTracking, unittest.isTrue);
    unittest.expect(o.matchId, unittest.equals('foo'));
    unittest.expect(o.mobileDeviceId, unittest.equals('foo'));
    unittest.expect(o.nonPersonalizedAd, unittest.isTrue);
    unittest.expect(o.ordinal, unittest.equals('foo'));
    unittest.expect(o.quantity, unittest.equals('foo'));
    unittest.expect(o.timestampMicros, unittest.equals('foo'));
    unittest.expect(o.treatmentForUnderage, unittest.isTrue);
    unittest.expect(o.value, unittest.equals(42.0));
  }
  buildCounterConversion--;
}

core.int buildCounterConversionError = 0;
api.ConversionError buildConversionError() {
  var o = api.ConversionError();
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
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterConversionError--;
}

core.List<api.ConversionError> buildUnnamed4027() {
  var o = <api.ConversionError>[];
  o.add(buildConversionError());
  o.add(buildConversionError());
  return o;
}

void checkUnnamed4027(core.List<api.ConversionError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConversionError(o[0]);
  checkConversionError(o[1]);
}

core.int buildCounterConversionStatus = 0;
api.ConversionStatus buildConversionStatus() {
  var o = api.ConversionStatus();
  buildCounterConversionStatus++;
  if (buildCounterConversionStatus < 3) {
    o.conversion = buildConversion();
    o.errors = buildUnnamed4027();
    o.kind = 'foo';
  }
  buildCounterConversionStatus--;
  return o;
}

void checkConversionStatus(api.ConversionStatus o) {
  buildCounterConversionStatus++;
  if (buildCounterConversionStatus < 3) {
    checkConversion(o.conversion);
    checkUnnamed4027(o.errors);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterConversionStatus--;
}

core.List<api.Conversion> buildUnnamed4028() {
  var o = <api.Conversion>[];
  o.add(buildConversion());
  o.add(buildConversion());
  return o;
}

void checkUnnamed4028(core.List<api.Conversion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConversion(o[0]);
  checkConversion(o[1]);
}

core.int buildCounterConversionsBatchInsertRequest = 0;
api.ConversionsBatchInsertRequest buildConversionsBatchInsertRequest() {
  var o = api.ConversionsBatchInsertRequest();
  buildCounterConversionsBatchInsertRequest++;
  if (buildCounterConversionsBatchInsertRequest < 3) {
    o.conversions = buildUnnamed4028();
    o.encryptionInfo = buildEncryptionInfo();
    o.kind = 'foo';
  }
  buildCounterConversionsBatchInsertRequest--;
  return o;
}

void checkConversionsBatchInsertRequest(api.ConversionsBatchInsertRequest o) {
  buildCounterConversionsBatchInsertRequest++;
  if (buildCounterConversionsBatchInsertRequest < 3) {
    checkUnnamed4028(o.conversions);
    checkEncryptionInfo(o.encryptionInfo);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterConversionsBatchInsertRequest--;
}

core.List<api.ConversionStatus> buildUnnamed4029() {
  var o = <api.ConversionStatus>[];
  o.add(buildConversionStatus());
  o.add(buildConversionStatus());
  return o;
}

void checkUnnamed4029(core.List<api.ConversionStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConversionStatus(o[0]);
  checkConversionStatus(o[1]);
}

core.int buildCounterConversionsBatchInsertResponse = 0;
api.ConversionsBatchInsertResponse buildConversionsBatchInsertResponse() {
  var o = api.ConversionsBatchInsertResponse();
  buildCounterConversionsBatchInsertResponse++;
  if (buildCounterConversionsBatchInsertResponse < 3) {
    o.hasFailures = true;
    o.kind = 'foo';
    o.status = buildUnnamed4029();
  }
  buildCounterConversionsBatchInsertResponse--;
  return o;
}

void checkConversionsBatchInsertResponse(api.ConversionsBatchInsertResponse o) {
  buildCounterConversionsBatchInsertResponse++;
  if (buildCounterConversionsBatchInsertResponse < 3) {
    unittest.expect(o.hasFailures, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4029(o.status);
  }
  buildCounterConversionsBatchInsertResponse--;
}

core.List<api.Conversion> buildUnnamed4030() {
  var o = <api.Conversion>[];
  o.add(buildConversion());
  o.add(buildConversion());
  return o;
}

void checkUnnamed4030(core.List<api.Conversion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConversion(o[0]);
  checkConversion(o[1]);
}

core.int buildCounterConversionsBatchUpdateRequest = 0;
api.ConversionsBatchUpdateRequest buildConversionsBatchUpdateRequest() {
  var o = api.ConversionsBatchUpdateRequest();
  buildCounterConversionsBatchUpdateRequest++;
  if (buildCounterConversionsBatchUpdateRequest < 3) {
    o.conversions = buildUnnamed4030();
    o.encryptionInfo = buildEncryptionInfo();
    o.kind = 'foo';
  }
  buildCounterConversionsBatchUpdateRequest--;
  return o;
}

void checkConversionsBatchUpdateRequest(api.ConversionsBatchUpdateRequest o) {
  buildCounterConversionsBatchUpdateRequest++;
  if (buildCounterConversionsBatchUpdateRequest < 3) {
    checkUnnamed4030(o.conversions);
    checkEncryptionInfo(o.encryptionInfo);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterConversionsBatchUpdateRequest--;
}

core.List<api.ConversionStatus> buildUnnamed4031() {
  var o = <api.ConversionStatus>[];
  o.add(buildConversionStatus());
  o.add(buildConversionStatus());
  return o;
}

void checkUnnamed4031(core.List<api.ConversionStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConversionStatus(o[0]);
  checkConversionStatus(o[1]);
}

core.int buildCounterConversionsBatchUpdateResponse = 0;
api.ConversionsBatchUpdateResponse buildConversionsBatchUpdateResponse() {
  var o = api.ConversionsBatchUpdateResponse();
  buildCounterConversionsBatchUpdateResponse++;
  if (buildCounterConversionsBatchUpdateResponse < 3) {
    o.hasFailures = true;
    o.kind = 'foo';
    o.status = buildUnnamed4031();
  }
  buildCounterConversionsBatchUpdateResponse--;
  return o;
}

void checkConversionsBatchUpdateResponse(api.ConversionsBatchUpdateResponse o) {
  buildCounterConversionsBatchUpdateResponse++;
  if (buildCounterConversionsBatchUpdateResponse < 3) {
    unittest.expect(o.hasFailures, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4031(o.status);
  }
  buildCounterConversionsBatchUpdateResponse--;
}

core.List<api.Country> buildUnnamed4032() {
  var o = <api.Country>[];
  o.add(buildCountry());
  o.add(buildCountry());
  return o;
}

void checkUnnamed4032(core.List<api.Country> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCountry(o[0]);
  checkCountry(o[1]);
}

core.int buildCounterCountriesListResponse = 0;
api.CountriesListResponse buildCountriesListResponse() {
  var o = api.CountriesListResponse();
  buildCounterCountriesListResponse++;
  if (buildCounterCountriesListResponse < 3) {
    o.countries = buildUnnamed4032();
    o.kind = 'foo';
  }
  buildCounterCountriesListResponse--;
  return o;
}

void checkCountriesListResponse(api.CountriesListResponse o) {
  buildCounterCountriesListResponse++;
  if (buildCounterCountriesListResponse < 3) {
    checkUnnamed4032(o.countries);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterCountriesListResponse--;
}

core.int buildCounterCountry = 0;
api.Country buildCountry() {
  var o = api.Country();
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
    unittest.expect(o.countryCode, unittest.equals('foo'));
    unittest.expect(o.dartId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.sslEnabled, unittest.isTrue);
  }
  buildCounterCountry--;
}

core.List<core.String> buildUnnamed4033() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4033(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Size> buildUnnamed4034() {
  var o = <api.Size>[];
  o.add(buildSize());
  o.add(buildSize());
  return o;
}

void checkUnnamed4034(core.List<api.Size> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSize(o[0]);
  checkSize(o[1]);
}

core.List<core.String> buildUnnamed4035() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4035(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ClickTag> buildUnnamed4036() {
  var o = <api.ClickTag>[];
  o.add(buildClickTag());
  o.add(buildClickTag());
  return o;
}

void checkUnnamed4036(core.List<api.ClickTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClickTag(o[0]);
  checkClickTag(o[1]);
}

core.List<core.String> buildUnnamed4037() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4037(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4038() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4038(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.CreativeCustomEvent> buildUnnamed4039() {
  var o = <api.CreativeCustomEvent>[];
  o.add(buildCreativeCustomEvent());
  o.add(buildCreativeCustomEvent());
  return o;
}

void checkUnnamed4039(core.List<api.CreativeCustomEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeCustomEvent(o[0]);
  checkCreativeCustomEvent(o[1]);
}

core.List<api.CreativeAsset> buildUnnamed4040() {
  var o = <api.CreativeAsset>[];
  o.add(buildCreativeAsset());
  o.add(buildCreativeAsset());
  return o;
}

void checkUnnamed4040(core.List<api.CreativeAsset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeAsset(o[0]);
  checkCreativeAsset(o[1]);
}

core.List<api.CreativeFieldAssignment> buildUnnamed4041() {
  var o = <api.CreativeFieldAssignment>[];
  o.add(buildCreativeFieldAssignment());
  o.add(buildCreativeFieldAssignment());
  return o;
}

void checkUnnamed4041(core.List<api.CreativeFieldAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeFieldAssignment(o[0]);
  checkCreativeFieldAssignment(o[1]);
}

core.List<core.String> buildUnnamed4042() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4042(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.CreativeCustomEvent> buildUnnamed4043() {
  var o = <api.CreativeCustomEvent>[];
  o.add(buildCreativeCustomEvent());
  o.add(buildCreativeCustomEvent());
  return o;
}

void checkUnnamed4043(core.List<api.CreativeCustomEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeCustomEvent(o[0]);
  checkCreativeCustomEvent(o[1]);
}

core.List<api.ThirdPartyTrackingUrl> buildUnnamed4044() {
  var o = <api.ThirdPartyTrackingUrl>[];
  o.add(buildThirdPartyTrackingUrl());
  o.add(buildThirdPartyTrackingUrl());
  return o;
}

void checkUnnamed4044(core.List<api.ThirdPartyTrackingUrl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThirdPartyTrackingUrl(o[0]);
  checkThirdPartyTrackingUrl(o[1]);
}

core.List<api.CreativeCustomEvent> buildUnnamed4045() {
  var o = <api.CreativeCustomEvent>[];
  o.add(buildCreativeCustomEvent());
  o.add(buildCreativeCustomEvent());
  return o;
}

void checkUnnamed4045(core.List<api.CreativeCustomEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeCustomEvent(o[0]);
  checkCreativeCustomEvent(o[1]);
}

core.int buildCounterCreative = 0;
api.Creative buildCreative() {
  var o = api.Creative();
  buildCounterCreative++;
  if (buildCounterCreative < 3) {
    o.accountId = 'foo';
    o.active = true;
    o.adParameters = 'foo';
    o.adTagKeys = buildUnnamed4033();
    o.additionalSizes = buildUnnamed4034();
    o.advertiserId = 'foo';
    o.allowScriptAccess = true;
    o.archived = true;
    o.artworkType = 'foo';
    o.authoringSource = 'foo';
    o.authoringTool = 'foo';
    o.autoAdvanceImages = true;
    o.backgroundColor = 'foo';
    o.backupImageClickThroughUrl = buildCreativeClickThroughUrl();
    o.backupImageFeatures = buildUnnamed4035();
    o.backupImageReportingLabel = 'foo';
    o.backupImageTargetWindow = buildTargetWindow();
    o.clickTags = buildUnnamed4036();
    o.commercialId = 'foo';
    o.companionCreatives = buildUnnamed4037();
    o.compatibility = buildUnnamed4038();
    o.convertFlashToHtml5 = true;
    o.counterCustomEvents = buildUnnamed4039();
    o.creativeAssetSelection = buildCreativeAssetSelection();
    o.creativeAssets = buildUnnamed4040();
    o.creativeFieldAssignments = buildUnnamed4041();
    o.customKeyValues = buildUnnamed4042();
    o.dynamicAssetSelection = true;
    o.exitCustomEvents = buildUnnamed4043();
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
    o.thirdPartyUrls = buildUnnamed4044();
    o.timerCustomEvents = buildUnnamed4045();
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
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.active, unittest.isTrue);
    unittest.expect(o.adParameters, unittest.equals('foo'));
    checkUnnamed4033(o.adTagKeys);
    checkUnnamed4034(o.additionalSizes);
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    unittest.expect(o.allowScriptAccess, unittest.isTrue);
    unittest.expect(o.archived, unittest.isTrue);
    unittest.expect(o.artworkType, unittest.equals('foo'));
    unittest.expect(o.authoringSource, unittest.equals('foo'));
    unittest.expect(o.authoringTool, unittest.equals('foo'));
    unittest.expect(o.autoAdvanceImages, unittest.isTrue);
    unittest.expect(o.backgroundColor, unittest.equals('foo'));
    checkCreativeClickThroughUrl(o.backupImageClickThroughUrl);
    checkUnnamed4035(o.backupImageFeatures);
    unittest.expect(o.backupImageReportingLabel, unittest.equals('foo'));
    checkTargetWindow(o.backupImageTargetWindow);
    checkUnnamed4036(o.clickTags);
    unittest.expect(o.commercialId, unittest.equals('foo'));
    checkUnnamed4037(o.companionCreatives);
    checkUnnamed4038(o.compatibility);
    unittest.expect(o.convertFlashToHtml5, unittest.isTrue);
    checkUnnamed4039(o.counterCustomEvents);
    checkCreativeAssetSelection(o.creativeAssetSelection);
    checkUnnamed4040(o.creativeAssets);
    checkUnnamed4041(o.creativeFieldAssignments);
    checkUnnamed4042(o.customKeyValues);
    unittest.expect(o.dynamicAssetSelection, unittest.isTrue);
    checkUnnamed4043(o.exitCustomEvents);
    checkFsCommand(o.fsCommand);
    unittest.expect(o.htmlCode, unittest.equals('foo'));
    unittest.expect(o.htmlCodeLocked, unittest.isTrue);
    unittest.expect(o.id, unittest.equals('foo'));
    checkDimensionValue(o.idDimensionValue);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkLastModifiedInfo(o.lastModifiedInfo);
    unittest.expect(o.latestTraffickedCreativeId, unittest.equals('foo'));
    unittest.expect(o.mediaDescription, unittest.equals('foo'));
    unittest.expect(o.mediaDuration, unittest.equals(42.0));
    unittest.expect(o.name, unittest.equals('foo'));
    checkObaIcon(o.obaIcon);
    unittest.expect(o.overrideCss, unittest.equals('foo'));
    checkVideoOffset(o.progressOffset);
    unittest.expect(o.redirectUrl, unittest.equals('foo'));
    unittest.expect(o.renderingId, unittest.equals('foo'));
    checkDimensionValue(o.renderingIdDimensionValue);
    unittest.expect(o.requiredFlashPluginVersion, unittest.equals('foo'));
    unittest.expect(o.requiredFlashVersion, unittest.equals(42));
    checkSize(o.size);
    checkVideoOffset(o.skipOffset);
    unittest.expect(o.skippable, unittest.isTrue);
    unittest.expect(o.sslCompliant, unittest.isTrue);
    unittest.expect(o.sslOverride, unittest.isTrue);
    unittest.expect(o.studioAdvertiserId, unittest.equals('foo'));
    unittest.expect(o.studioCreativeId, unittest.equals('foo'));
    unittest.expect(o.studioTraffickedCreativeId, unittest.equals('foo'));
    unittest.expect(o.subaccountId, unittest.equals('foo'));
    unittest.expect(
        o.thirdPartyBackupImageImpressionsUrl, unittest.equals('foo'));
    unittest.expect(
        o.thirdPartyRichMediaImpressionsUrl, unittest.equals('foo'));
    checkUnnamed4044(o.thirdPartyUrls);
    checkUnnamed4045(o.timerCustomEvents);
    unittest.expect(o.totalFileSize, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    checkUniversalAdId(o.universalAdId);
    unittest.expect(o.version, unittest.equals(42));
  }
  buildCounterCreative--;
}

core.List<api.Size> buildUnnamed4046() {
  var o = <api.Size>[];
  o.add(buildSize());
  o.add(buildSize());
  return o;
}

void checkUnnamed4046(core.List<api.Size> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSize(o[0]);
  checkSize(o[1]);
}

core.List<core.String> buildUnnamed4047() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4047(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4048() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4048(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCreativeAsset = 0;
api.CreativeAsset buildCreativeAsset() {
  var o = api.CreativeAsset();
  buildCounterCreativeAsset++;
  if (buildCounterCreativeAsset < 3) {
    o.actionScript3 = true;
    o.active = true;
    o.additionalSizes = buildUnnamed4046();
    o.alignment = 'foo';
    o.artworkType = 'foo';
    o.assetIdentifier = buildCreativeAssetId();
    o.audioBitRate = 42;
    o.audioSampleRate = 42;
    o.backupImageExit = buildCreativeCustomEvent();
    o.bitRate = 42;
    o.childAssetType = 'foo';
    o.collapsedSize = buildSize();
    o.companionCreativeIds = buildUnnamed4047();
    o.customStartTimeValue = 42;
    o.detectedFeatures = buildUnnamed4048();
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
    unittest.expect(o.actionScript3, unittest.isTrue);
    unittest.expect(o.active, unittest.isTrue);
    checkUnnamed4046(o.additionalSizes);
    unittest.expect(o.alignment, unittest.equals('foo'));
    unittest.expect(o.artworkType, unittest.equals('foo'));
    checkCreativeAssetId(o.assetIdentifier);
    unittest.expect(o.audioBitRate, unittest.equals(42));
    unittest.expect(o.audioSampleRate, unittest.equals(42));
    checkCreativeCustomEvent(o.backupImageExit);
    unittest.expect(o.bitRate, unittest.equals(42));
    unittest.expect(o.childAssetType, unittest.equals('foo'));
    checkSize(o.collapsedSize);
    checkUnnamed4047(o.companionCreativeIds);
    unittest.expect(o.customStartTimeValue, unittest.equals(42));
    checkUnnamed4048(o.detectedFeatures);
    unittest.expect(o.displayType, unittest.equals('foo'));
    unittest.expect(o.duration, unittest.equals(42));
    unittest.expect(o.durationType, unittest.equals('foo'));
    checkSize(o.expandedDimension);
    unittest.expect(o.fileSize, unittest.equals('foo'));
    unittest.expect(o.flashVersion, unittest.equals(42));
    unittest.expect(o.frameRate, unittest.equals(42.0));
    unittest.expect(o.hideFlashObjects, unittest.isTrue);
    unittest.expect(o.hideSelectionBoxes, unittest.isTrue);
    unittest.expect(o.horizontallyLocked, unittest.isTrue);
    unittest.expect(o.id, unittest.equals('foo'));
    checkDimensionValue(o.idDimensionValue);
    unittest.expect(o.mediaDuration, unittest.equals(42.0));
    unittest.expect(o.mimeType, unittest.equals('foo'));
    checkOffsetPosition(o.offset);
    unittest.expect(o.orientation, unittest.equals('foo'));
    unittest.expect(o.originalBackup, unittest.isTrue);
    unittest.expect(o.politeLoad, unittest.isTrue);
    checkOffsetPosition(o.position);
    unittest.expect(o.positionLeftUnit, unittest.equals('foo'));
    unittest.expect(o.positionTopUnit, unittest.equals('foo'));
    unittest.expect(o.progressiveServingUrl, unittest.equals('foo'));
    unittest.expect(o.pushdown, unittest.isTrue);
    unittest.expect(o.pushdownDuration, unittest.equals(42.0));
    unittest.expect(o.role, unittest.equals('foo'));
    checkSize(o.size);
    unittest.expect(o.sslCompliant, unittest.isTrue);
    unittest.expect(o.startTimeType, unittest.equals('foo'));
    unittest.expect(o.streamingServingUrl, unittest.equals('foo'));
    unittest.expect(o.transparency, unittest.isTrue);
    unittest.expect(o.verticallyLocked, unittest.isTrue);
    unittest.expect(o.windowMode, unittest.equals('foo'));
    unittest.expect(o.zIndex, unittest.equals(42));
    unittest.expect(o.zipFilename, unittest.equals('foo'));
    unittest.expect(o.zipFilesize, unittest.equals('foo'));
  }
  buildCounterCreativeAsset--;
}

core.int buildCounterCreativeAssetId = 0;
api.CreativeAssetId buildCreativeAssetId() {
  var o = api.CreativeAssetId();
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
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterCreativeAssetId--;
}

core.List<api.ClickTag> buildUnnamed4049() {
  var o = <api.ClickTag>[];
  o.add(buildClickTag());
  o.add(buildClickTag());
  return o;
}

void checkUnnamed4049(core.List<api.ClickTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClickTag(o[0]);
  checkClickTag(o[1]);
}

core.List<api.CreativeCustomEvent> buildUnnamed4050() {
  var o = <api.CreativeCustomEvent>[];
  o.add(buildCreativeCustomEvent());
  o.add(buildCreativeCustomEvent());
  return o;
}

void checkUnnamed4050(core.List<api.CreativeCustomEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeCustomEvent(o[0]);
  checkCreativeCustomEvent(o[1]);
}

core.List<core.String> buildUnnamed4051() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4051(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.CreativeCustomEvent> buildUnnamed4052() {
  var o = <api.CreativeCustomEvent>[];
  o.add(buildCreativeCustomEvent());
  o.add(buildCreativeCustomEvent());
  return o;
}

void checkUnnamed4052(core.List<api.CreativeCustomEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeCustomEvent(o[0]);
  checkCreativeCustomEvent(o[1]);
}

core.List<api.CreativeCustomEvent> buildUnnamed4053() {
  var o = <api.CreativeCustomEvent>[];
  o.add(buildCreativeCustomEvent());
  o.add(buildCreativeCustomEvent());
  return o;
}

void checkUnnamed4053(core.List<api.CreativeCustomEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeCustomEvent(o[0]);
  checkCreativeCustomEvent(o[1]);
}

core.List<core.String> buildUnnamed4054() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4054(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCreativeAssetMetadata = 0;
api.CreativeAssetMetadata buildCreativeAssetMetadata() {
  var o = api.CreativeAssetMetadata();
  buildCounterCreativeAssetMetadata++;
  if (buildCounterCreativeAssetMetadata < 3) {
    o.assetIdentifier = buildCreativeAssetId();
    o.clickTags = buildUnnamed4049();
    o.counterCustomEvents = buildUnnamed4050();
    o.detectedFeatures = buildUnnamed4051();
    o.exitCustomEvents = buildUnnamed4052();
    o.id = 'foo';
    o.idDimensionValue = buildDimensionValue();
    o.kind = 'foo';
    o.richMedia = true;
    o.timerCustomEvents = buildUnnamed4053();
    o.warnedValidationRules = buildUnnamed4054();
  }
  buildCounterCreativeAssetMetadata--;
  return o;
}

void checkCreativeAssetMetadata(api.CreativeAssetMetadata o) {
  buildCounterCreativeAssetMetadata++;
  if (buildCounterCreativeAssetMetadata < 3) {
    checkCreativeAssetId(o.assetIdentifier);
    checkUnnamed4049(o.clickTags);
    checkUnnamed4050(o.counterCustomEvents);
    checkUnnamed4051(o.detectedFeatures);
    checkUnnamed4052(o.exitCustomEvents);
    unittest.expect(o.id, unittest.equals('foo'));
    checkDimensionValue(o.idDimensionValue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.richMedia, unittest.isTrue);
    checkUnnamed4053(o.timerCustomEvents);
    checkUnnamed4054(o.warnedValidationRules);
  }
  buildCounterCreativeAssetMetadata--;
}

core.List<api.Rule> buildUnnamed4055() {
  var o = <api.Rule>[];
  o.add(buildRule());
  o.add(buildRule());
  return o;
}

void checkUnnamed4055(core.List<api.Rule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRule(o[0]);
  checkRule(o[1]);
}

core.int buildCounterCreativeAssetSelection = 0;
api.CreativeAssetSelection buildCreativeAssetSelection() {
  var o = api.CreativeAssetSelection();
  buildCounterCreativeAssetSelection++;
  if (buildCounterCreativeAssetSelection < 3) {
    o.defaultAssetId = 'foo';
    o.rules = buildUnnamed4055();
  }
  buildCounterCreativeAssetSelection--;
  return o;
}

void checkCreativeAssetSelection(api.CreativeAssetSelection o) {
  buildCounterCreativeAssetSelection++;
  if (buildCounterCreativeAssetSelection < 3) {
    unittest.expect(o.defaultAssetId, unittest.equals('foo'));
    checkUnnamed4055(o.rules);
  }
  buildCounterCreativeAssetSelection--;
}

core.List<api.CompanionClickThroughOverride> buildUnnamed4056() {
  var o = <api.CompanionClickThroughOverride>[];
  o.add(buildCompanionClickThroughOverride());
  o.add(buildCompanionClickThroughOverride());
  return o;
}

void checkUnnamed4056(core.List<api.CompanionClickThroughOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompanionClickThroughOverride(o[0]);
  checkCompanionClickThroughOverride(o[1]);
}

core.List<api.CreativeGroupAssignment> buildUnnamed4057() {
  var o = <api.CreativeGroupAssignment>[];
  o.add(buildCreativeGroupAssignment());
  o.add(buildCreativeGroupAssignment());
  return o;
}

void checkUnnamed4057(core.List<api.CreativeGroupAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeGroupAssignment(o[0]);
  checkCreativeGroupAssignment(o[1]);
}

core.List<api.RichMediaExitOverride> buildUnnamed4058() {
  var o = <api.RichMediaExitOverride>[];
  o.add(buildRichMediaExitOverride());
  o.add(buildRichMediaExitOverride());
  return o;
}

void checkUnnamed4058(core.List<api.RichMediaExitOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRichMediaExitOverride(o[0]);
  checkRichMediaExitOverride(o[1]);
}

core.int buildCounterCreativeAssignment = 0;
api.CreativeAssignment buildCreativeAssignment() {
  var o = api.CreativeAssignment();
  buildCounterCreativeAssignment++;
  if (buildCounterCreativeAssignment < 3) {
    o.active = true;
    o.applyEventTags = true;
    o.clickThroughUrl = buildClickThroughUrl();
    o.companionCreativeOverrides = buildUnnamed4056();
    o.creativeGroupAssignments = buildUnnamed4057();
    o.creativeId = 'foo';
    o.creativeIdDimensionValue = buildDimensionValue();
    o.endTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.richMediaExitOverrides = buildUnnamed4058();
    o.sequence = 42;
    o.sslCompliant = true;
    o.startTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.weight = 42;
  }
  buildCounterCreativeAssignment--;
  return o;
}

void checkCreativeAssignment(api.CreativeAssignment o) {
  buildCounterCreativeAssignment++;
  if (buildCounterCreativeAssignment < 3) {
    unittest.expect(o.active, unittest.isTrue);
    unittest.expect(o.applyEventTags, unittest.isTrue);
    checkClickThroughUrl(o.clickThroughUrl);
    checkUnnamed4056(o.companionCreativeOverrides);
    checkUnnamed4057(o.creativeGroupAssignments);
    unittest.expect(o.creativeId, unittest.equals('foo'));
    checkDimensionValue(o.creativeIdDimensionValue);
    unittest.expect(
        o.endTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkUnnamed4058(o.richMediaExitOverrides);
    unittest.expect(o.sequence, unittest.equals(42));
    unittest.expect(o.sslCompliant, unittest.isTrue);
    unittest.expect(o.startTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.weight, unittest.equals(42));
  }
  buildCounterCreativeAssignment--;
}

core.int buildCounterCreativeClickThroughUrl = 0;
api.CreativeClickThroughUrl buildCreativeClickThroughUrl() {
  var o = api.CreativeClickThroughUrl();
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
    unittest.expect(o.computedClickThroughUrl, unittest.equals('foo'));
    unittest.expect(o.customClickThroughUrl, unittest.equals('foo'));
    unittest.expect(o.landingPageId, unittest.equals('foo'));
  }
  buildCounterCreativeClickThroughUrl--;
}

core.int buildCounterCreativeCustomEvent = 0;
api.CreativeCustomEvent buildCreativeCustomEvent() {
  var o = api.CreativeCustomEvent();
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
    unittest.expect(o.advertiserCustomEventId, unittest.equals('foo'));
    unittest.expect(o.advertiserCustomEventName, unittest.equals('foo'));
    unittest.expect(o.advertiserCustomEventType, unittest.equals('foo'));
    unittest.expect(o.artworkLabel, unittest.equals('foo'));
    unittest.expect(o.artworkType, unittest.equals('foo'));
    checkCreativeClickThroughUrl(o.exitClickThroughUrl);
    unittest.expect(o.id, unittest.equals('foo'));
    checkPopupWindowProperties(o.popupWindowProperties);
    unittest.expect(o.targetType, unittest.equals('foo'));
    unittest.expect(o.videoReportingId, unittest.equals('foo'));
  }
  buildCounterCreativeCustomEvent--;
}

core.int buildCounterCreativeField = 0;
api.CreativeField buildCreativeField() {
  var o = api.CreativeField();
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
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    checkDimensionValue(o.advertiserIdDimensionValue);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.subaccountId, unittest.equals('foo'));
  }
  buildCounterCreativeField--;
}

core.int buildCounterCreativeFieldAssignment = 0;
api.CreativeFieldAssignment buildCreativeFieldAssignment() {
  var o = api.CreativeFieldAssignment();
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
    unittest.expect(o.creativeFieldId, unittest.equals('foo'));
    unittest.expect(o.creativeFieldValueId, unittest.equals('foo'));
  }
  buildCounterCreativeFieldAssignment--;
}

core.int buildCounterCreativeFieldValue = 0;
api.CreativeFieldValue buildCreativeFieldValue() {
  var o = api.CreativeFieldValue();
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
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterCreativeFieldValue--;
}

core.List<api.CreativeFieldValue> buildUnnamed4059() {
  var o = <api.CreativeFieldValue>[];
  o.add(buildCreativeFieldValue());
  o.add(buildCreativeFieldValue());
  return o;
}

void checkUnnamed4059(core.List<api.CreativeFieldValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeFieldValue(o[0]);
  checkCreativeFieldValue(o[1]);
}

core.int buildCounterCreativeFieldValuesListResponse = 0;
api.CreativeFieldValuesListResponse buildCreativeFieldValuesListResponse() {
  var o = api.CreativeFieldValuesListResponse();
  buildCounterCreativeFieldValuesListResponse++;
  if (buildCounterCreativeFieldValuesListResponse < 3) {
    o.creativeFieldValues = buildUnnamed4059();
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
    checkUnnamed4059(o.creativeFieldValues);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterCreativeFieldValuesListResponse--;
}

core.List<api.CreativeField> buildUnnamed4060() {
  var o = <api.CreativeField>[];
  o.add(buildCreativeField());
  o.add(buildCreativeField());
  return o;
}

void checkUnnamed4060(core.List<api.CreativeField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeField(o[0]);
  checkCreativeField(o[1]);
}

core.int buildCounterCreativeFieldsListResponse = 0;
api.CreativeFieldsListResponse buildCreativeFieldsListResponse() {
  var o = api.CreativeFieldsListResponse();
  buildCounterCreativeFieldsListResponse++;
  if (buildCounterCreativeFieldsListResponse < 3) {
    o.creativeFields = buildUnnamed4060();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterCreativeFieldsListResponse--;
  return o;
}

void checkCreativeFieldsListResponse(api.CreativeFieldsListResponse o) {
  buildCounterCreativeFieldsListResponse++;
  if (buildCounterCreativeFieldsListResponse < 3) {
    checkUnnamed4060(o.creativeFields);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterCreativeFieldsListResponse--;
}

core.int buildCounterCreativeGroup = 0;
api.CreativeGroup buildCreativeGroup() {
  var o = api.CreativeGroup();
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
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    checkDimensionValue(o.advertiserIdDimensionValue);
    unittest.expect(o.groupNumber, unittest.equals(42));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.subaccountId, unittest.equals('foo'));
  }
  buildCounterCreativeGroup--;
}

core.int buildCounterCreativeGroupAssignment = 0;
api.CreativeGroupAssignment buildCreativeGroupAssignment() {
  var o = api.CreativeGroupAssignment();
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
    unittest.expect(o.creativeGroupId, unittest.equals('foo'));
    unittest.expect(o.creativeGroupNumber, unittest.equals('foo'));
  }
  buildCounterCreativeGroupAssignment--;
}

core.List<api.CreativeGroup> buildUnnamed4061() {
  var o = <api.CreativeGroup>[];
  o.add(buildCreativeGroup());
  o.add(buildCreativeGroup());
  return o;
}

void checkUnnamed4061(core.List<api.CreativeGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeGroup(o[0]);
  checkCreativeGroup(o[1]);
}

core.int buildCounterCreativeGroupsListResponse = 0;
api.CreativeGroupsListResponse buildCreativeGroupsListResponse() {
  var o = api.CreativeGroupsListResponse();
  buildCounterCreativeGroupsListResponse++;
  if (buildCounterCreativeGroupsListResponse < 3) {
    o.creativeGroups = buildUnnamed4061();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterCreativeGroupsListResponse--;
  return o;
}

void checkCreativeGroupsListResponse(api.CreativeGroupsListResponse o) {
  buildCounterCreativeGroupsListResponse++;
  if (buildCounterCreativeGroupsListResponse < 3) {
    checkUnnamed4061(o.creativeGroups);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterCreativeGroupsListResponse--;
}

core.List<api.OptimizationActivity> buildUnnamed4062() {
  var o = <api.OptimizationActivity>[];
  o.add(buildOptimizationActivity());
  o.add(buildOptimizationActivity());
  return o;
}

void checkUnnamed4062(core.List<api.OptimizationActivity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOptimizationActivity(o[0]);
  checkOptimizationActivity(o[1]);
}

core.int buildCounterCreativeOptimizationConfiguration = 0;
api.CreativeOptimizationConfiguration buildCreativeOptimizationConfiguration() {
  var o = api.CreativeOptimizationConfiguration();
  buildCounterCreativeOptimizationConfiguration++;
  if (buildCounterCreativeOptimizationConfiguration < 3) {
    o.id = 'foo';
    o.name = 'foo';
    o.optimizationActivitys = buildUnnamed4062();
    o.optimizationModel = 'foo';
  }
  buildCounterCreativeOptimizationConfiguration--;
  return o;
}

void checkCreativeOptimizationConfiguration(
    api.CreativeOptimizationConfiguration o) {
  buildCounterCreativeOptimizationConfiguration++;
  if (buildCounterCreativeOptimizationConfiguration < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4062(o.optimizationActivitys);
    unittest.expect(o.optimizationModel, unittest.equals('foo'));
  }
  buildCounterCreativeOptimizationConfiguration--;
}

core.List<api.CreativeAssignment> buildUnnamed4063() {
  var o = <api.CreativeAssignment>[];
  o.add(buildCreativeAssignment());
  o.add(buildCreativeAssignment());
  return o;
}

void checkUnnamed4063(core.List<api.CreativeAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreativeAssignment(o[0]);
  checkCreativeAssignment(o[1]);
}

core.int buildCounterCreativeRotation = 0;
api.CreativeRotation buildCreativeRotation() {
  var o = api.CreativeRotation();
  buildCounterCreativeRotation++;
  if (buildCounterCreativeRotation < 3) {
    o.creativeAssignments = buildUnnamed4063();
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
    checkUnnamed4063(o.creativeAssignments);
    unittest.expect(
        o.creativeOptimizationConfigurationId, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.weightCalculationStrategy, unittest.equals('foo'));
  }
  buildCounterCreativeRotation--;
}

core.List<api.Creative> buildUnnamed4064() {
  var o = <api.Creative>[];
  o.add(buildCreative());
  o.add(buildCreative());
  return o;
}

void checkUnnamed4064(core.List<api.Creative> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCreative(o[0]);
  checkCreative(o[1]);
}

core.int buildCounterCreativesListResponse = 0;
api.CreativesListResponse buildCreativesListResponse() {
  var o = api.CreativesListResponse();
  buildCounterCreativesListResponse++;
  if (buildCounterCreativesListResponse < 3) {
    o.creatives = buildUnnamed4064();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterCreativesListResponse--;
  return o;
}

void checkCreativesListResponse(api.CreativesListResponse o) {
  buildCounterCreativesListResponse++;
  if (buildCounterCreativesListResponse < 3) {
    checkUnnamed4064(o.creatives);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterCreativesListResponse--;
}

core.List<api.Dimension> buildUnnamed4065() {
  var o = <api.Dimension>[];
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

void checkUnnamed4065(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Dimension> buildUnnamed4066() {
  var o = <api.Dimension>[];
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

void checkUnnamed4066(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Metric> buildUnnamed4067() {
  var o = <api.Metric>[];
  o.add(buildMetric());
  o.add(buildMetric());
  return o;
}

void checkUnnamed4067(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.List<api.Metric> buildUnnamed4068() {
  var o = <api.Metric>[];
  o.add(buildMetric());
  o.add(buildMetric());
  return o;
}

void checkUnnamed4068(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.int buildCounterCrossDimensionReachReportCompatibleFields = 0;
api.CrossDimensionReachReportCompatibleFields
    buildCrossDimensionReachReportCompatibleFields() {
  var o = api.CrossDimensionReachReportCompatibleFields();
  buildCounterCrossDimensionReachReportCompatibleFields++;
  if (buildCounterCrossDimensionReachReportCompatibleFields < 3) {
    o.breakdown = buildUnnamed4065();
    o.dimensionFilters = buildUnnamed4066();
    o.kind = 'foo';
    o.metrics = buildUnnamed4067();
    o.overlapMetrics = buildUnnamed4068();
  }
  buildCounterCrossDimensionReachReportCompatibleFields--;
  return o;
}

void checkCrossDimensionReachReportCompatibleFields(
    api.CrossDimensionReachReportCompatibleFields o) {
  buildCounterCrossDimensionReachReportCompatibleFields++;
  if (buildCounterCrossDimensionReachReportCompatibleFields < 3) {
    checkUnnamed4065(o.breakdown);
    checkUnnamed4066(o.dimensionFilters);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4067(o.metrics);
    checkUnnamed4068(o.overlapMetrics);
  }
  buildCounterCrossDimensionReachReportCompatibleFields--;
}

core.List<api.CustomVariable> buildUnnamed4069() {
  var o = <api.CustomVariable>[];
  o.add(buildCustomVariable());
  o.add(buildCustomVariable());
  return o;
}

void checkUnnamed4069(core.List<api.CustomVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomVariable(o[0]);
  checkCustomVariable(o[1]);
}

core.int buildCounterCustomEvent = 0;
api.CustomEvent buildCustomEvent() {
  var o = api.CustomEvent();
  buildCounterCustomEvent++;
  if (buildCounterCustomEvent < 3) {
    o.annotateClickEvent = buildCustomEventClickAnnotation();
    o.annotateImpressionEvent = buildCustomEventImpressionAnnotation();
    o.customVariables = buildUnnamed4069();
    o.eventType = 'foo';
    o.floodlightConfigurationId = 'foo';
    o.insertEvent = buildCustomEventInsert();
    o.kind = 'foo';
    o.ordinal = 'foo';
    o.timestampMicros = 'foo';
  }
  buildCounterCustomEvent--;
  return o;
}

void checkCustomEvent(api.CustomEvent o) {
  buildCounterCustomEvent++;
  if (buildCounterCustomEvent < 3) {
    checkCustomEventClickAnnotation(o.annotateClickEvent);
    checkCustomEventImpressionAnnotation(o.annotateImpressionEvent);
    checkUnnamed4069(o.customVariables);
    unittest.expect(o.eventType, unittest.equals('foo'));
    unittest.expect(o.floodlightConfigurationId, unittest.equals('foo'));
    checkCustomEventInsert(o.insertEvent);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.ordinal, unittest.equals('foo'));
    unittest.expect(o.timestampMicros, unittest.equals('foo'));
  }
  buildCounterCustomEvent--;
}

core.int buildCounterCustomEventClickAnnotation = 0;
api.CustomEventClickAnnotation buildCustomEventClickAnnotation() {
  var o = api.CustomEventClickAnnotation();
  buildCounterCustomEventClickAnnotation++;
  if (buildCounterCustomEventClickAnnotation < 3) {
    o.gclid = 'foo';
    o.kind = 'foo';
  }
  buildCounterCustomEventClickAnnotation--;
  return o;
}

void checkCustomEventClickAnnotation(api.CustomEventClickAnnotation o) {
  buildCounterCustomEventClickAnnotation++;
  if (buildCounterCustomEventClickAnnotation < 3) {
    unittest.expect(o.gclid, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterCustomEventClickAnnotation--;
}

core.int buildCounterCustomEventError = 0;
api.CustomEventError buildCustomEventError() {
  var o = api.CustomEventError();
  buildCounterCustomEventError++;
  if (buildCounterCustomEventError < 3) {
    o.code = 'foo';
    o.kind = 'foo';
    o.message = 'foo';
  }
  buildCounterCustomEventError--;
  return o;
}

void checkCustomEventError(api.CustomEventError o) {
  buildCounterCustomEventError++;
  if (buildCounterCustomEventError < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterCustomEventError--;
}

core.int buildCounterCustomEventImpressionAnnotation = 0;
api.CustomEventImpressionAnnotation buildCustomEventImpressionAnnotation() {
  var o = api.CustomEventImpressionAnnotation();
  buildCounterCustomEventImpressionAnnotation++;
  if (buildCounterCustomEventImpressionAnnotation < 3) {
    o.kind = 'foo';
    o.pathImpressionId = 'foo';
  }
  buildCounterCustomEventImpressionAnnotation--;
  return o;
}

void checkCustomEventImpressionAnnotation(
    api.CustomEventImpressionAnnotation o) {
  buildCounterCustomEventImpressionAnnotation++;
  if (buildCounterCustomEventImpressionAnnotation < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.pathImpressionId, unittest.equals('foo'));
  }
  buildCounterCustomEventImpressionAnnotation--;
}

core.int buildCounterCustomEventInsert = 0;
api.CustomEventInsert buildCustomEventInsert() {
  var o = api.CustomEventInsert();
  buildCounterCustomEventInsert++;
  if (buildCounterCustomEventInsert < 3) {
    o.cmDimensions = buildCampaignManagerIds();
    o.dv3Dimensions = buildDV3Ids();
    o.insertEventType = 'foo';
    o.kind = 'foo';
    o.matchId = 'foo';
    o.mobileDeviceId = 'foo';
  }
  buildCounterCustomEventInsert--;
  return o;
}

void checkCustomEventInsert(api.CustomEventInsert o) {
  buildCounterCustomEventInsert++;
  if (buildCounterCustomEventInsert < 3) {
    checkCampaignManagerIds(o.cmDimensions);
    checkDV3Ids(o.dv3Dimensions);
    unittest.expect(o.insertEventType, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.matchId, unittest.equals('foo'));
    unittest.expect(o.mobileDeviceId, unittest.equals('foo'));
  }
  buildCounterCustomEventInsert--;
}

core.List<api.CustomEventError> buildUnnamed4070() {
  var o = <api.CustomEventError>[];
  o.add(buildCustomEventError());
  o.add(buildCustomEventError());
  return o;
}

void checkUnnamed4070(core.List<api.CustomEventError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomEventError(o[0]);
  checkCustomEventError(o[1]);
}

core.int buildCounterCustomEventStatus = 0;
api.CustomEventStatus buildCustomEventStatus() {
  var o = api.CustomEventStatus();
  buildCounterCustomEventStatus++;
  if (buildCounterCustomEventStatus < 3) {
    o.customEvent = buildCustomEvent();
    o.errors = buildUnnamed4070();
    o.kind = 'foo';
  }
  buildCounterCustomEventStatus--;
  return o;
}

void checkCustomEventStatus(api.CustomEventStatus o) {
  buildCounterCustomEventStatus++;
  if (buildCounterCustomEventStatus < 3) {
    checkCustomEvent(o.customEvent);
    checkUnnamed4070(o.errors);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterCustomEventStatus--;
}

core.List<api.CustomEvent> buildUnnamed4071() {
  var o = <api.CustomEvent>[];
  o.add(buildCustomEvent());
  o.add(buildCustomEvent());
  return o;
}

void checkUnnamed4071(core.List<api.CustomEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomEvent(o[0]);
  checkCustomEvent(o[1]);
}

core.int buildCounterCustomEventsBatchInsertRequest = 0;
api.CustomEventsBatchInsertRequest buildCustomEventsBatchInsertRequest() {
  var o = api.CustomEventsBatchInsertRequest();
  buildCounterCustomEventsBatchInsertRequest++;
  if (buildCounterCustomEventsBatchInsertRequest < 3) {
    o.customEvents = buildUnnamed4071();
    o.kind = 'foo';
  }
  buildCounterCustomEventsBatchInsertRequest--;
  return o;
}

void checkCustomEventsBatchInsertRequest(api.CustomEventsBatchInsertRequest o) {
  buildCounterCustomEventsBatchInsertRequest++;
  if (buildCounterCustomEventsBatchInsertRequest < 3) {
    checkUnnamed4071(o.customEvents);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterCustomEventsBatchInsertRequest--;
}

core.List<api.CustomEventStatus> buildUnnamed4072() {
  var o = <api.CustomEventStatus>[];
  o.add(buildCustomEventStatus());
  o.add(buildCustomEventStatus());
  return o;
}

void checkUnnamed4072(core.List<api.CustomEventStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomEventStatus(o[0]);
  checkCustomEventStatus(o[1]);
}

core.int buildCounterCustomEventsBatchInsertResponse = 0;
api.CustomEventsBatchInsertResponse buildCustomEventsBatchInsertResponse() {
  var o = api.CustomEventsBatchInsertResponse();
  buildCounterCustomEventsBatchInsertResponse++;
  if (buildCounterCustomEventsBatchInsertResponse < 3) {
    o.hasFailures = true;
    o.kind = 'foo';
    o.status = buildUnnamed4072();
  }
  buildCounterCustomEventsBatchInsertResponse--;
  return o;
}

void checkCustomEventsBatchInsertResponse(
    api.CustomEventsBatchInsertResponse o) {
  buildCounterCustomEventsBatchInsertResponse++;
  if (buildCounterCustomEventsBatchInsertResponse < 3) {
    unittest.expect(o.hasFailures, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4072(o.status);
  }
  buildCounterCustomEventsBatchInsertResponse--;
}

core.int buildCounterCustomFloodlightVariable = 0;
api.CustomFloodlightVariable buildCustomFloodlightVariable() {
  var o = api.CustomFloodlightVariable();
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
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterCustomFloodlightVariable--;
}

core.List<api.DimensionValue> buildUnnamed4073() {
  var o = <api.DimensionValue>[];
  o.add(buildDimensionValue());
  o.add(buildDimensionValue());
  return o;
}

void checkUnnamed4073(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

core.int buildCounterCustomRichMediaEvents = 0;
api.CustomRichMediaEvents buildCustomRichMediaEvents() {
  var o = api.CustomRichMediaEvents();
  buildCounterCustomRichMediaEvents++;
  if (buildCounterCustomRichMediaEvents < 3) {
    o.filteredEventIds = buildUnnamed4073();
    o.kind = 'foo';
  }
  buildCounterCustomRichMediaEvents--;
  return o;
}

void checkCustomRichMediaEvents(api.CustomRichMediaEvents o) {
  buildCounterCustomRichMediaEvents++;
  if (buildCounterCustomRichMediaEvents < 3) {
    checkUnnamed4073(o.filteredEventIds);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterCustomRichMediaEvents--;
}

core.int buildCounterCustomVariable = 0;
api.CustomVariable buildCustomVariable() {
  var o = api.CustomVariable();
  buildCounterCustomVariable++;
  if (buildCounterCustomVariable < 3) {
    o.index = 'foo';
    o.kind = 'foo';
    o.value = 'foo';
  }
  buildCounterCustomVariable--;
  return o;
}

void checkCustomVariable(api.CustomVariable o) {
  buildCounterCustomVariable++;
  if (buildCounterCustomVariable < 3) {
    unittest.expect(o.index, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterCustomVariable--;
}

core.int buildCounterCustomViewabilityMetric = 0;
api.CustomViewabilityMetric buildCustomViewabilityMetric() {
  var o = api.CustomViewabilityMetric();
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
    checkCustomViewabilityMetricConfiguration(o.configuration);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterCustomViewabilityMetric--;
}

core.int buildCounterCustomViewabilityMetricConfiguration = 0;
api.CustomViewabilityMetricConfiguration
    buildCustomViewabilityMetricConfiguration() {
  var o = api.CustomViewabilityMetricConfiguration();
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
    unittest.expect(o.audible, unittest.isTrue);
    unittest.expect(o.timeMillis, unittest.equals(42));
    unittest.expect(o.timePercent, unittest.equals(42));
    unittest.expect(o.viewabilityPercent, unittest.equals(42));
  }
  buildCounterCustomViewabilityMetricConfiguration--;
}

core.int buildCounterDV3Ids = 0;
api.DV3Ids buildDV3Ids() {
  var o = api.DV3Ids();
  buildCounterDV3Ids++;
  if (buildCounterDV3Ids < 3) {
    o.dvCampaignId = 'foo';
    o.dvCreativeId = 'foo';
    o.dvInsertionOrderId = 'foo';
    o.dvLineItemId = 'foo';
    o.dvSiteId = 'foo';
    o.kind = 'foo';
  }
  buildCounterDV3Ids--;
  return o;
}

void checkDV3Ids(api.DV3Ids o) {
  buildCounterDV3Ids++;
  if (buildCounterDV3Ids < 3) {
    unittest.expect(o.dvCampaignId, unittest.equals('foo'));
    unittest.expect(o.dvCreativeId, unittest.equals('foo'));
    unittest.expect(o.dvInsertionOrderId, unittest.equals('foo'));
    unittest.expect(o.dvLineItemId, unittest.equals('foo'));
    unittest.expect(o.dvSiteId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterDV3Ids--;
}

core.int buildCounterDateRange = 0;
api.DateRange buildDateRange() {
  var o = api.DateRange();
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
        o.endDate, unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.relativeDateRange, unittest.equals('foo'));
    unittest.expect(o.startDate,
        unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
  }
  buildCounterDateRange--;
}

core.List<core.String> buildUnnamed4074() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4074(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.int> buildUnnamed4075() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed4075(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterDayPartTargeting = 0;
api.DayPartTargeting buildDayPartTargeting() {
  var o = api.DayPartTargeting();
  buildCounterDayPartTargeting++;
  if (buildCounterDayPartTargeting < 3) {
    o.daysOfWeek = buildUnnamed4074();
    o.hoursOfDay = buildUnnamed4075();
    o.userLocalTime = true;
  }
  buildCounterDayPartTargeting--;
  return o;
}

void checkDayPartTargeting(api.DayPartTargeting o) {
  buildCounterDayPartTargeting++;
  if (buildCounterDayPartTargeting < 3) {
    checkUnnamed4074(o.daysOfWeek);
    checkUnnamed4075(o.hoursOfDay);
    unittest.expect(o.userLocalTime, unittest.isTrue);
  }
  buildCounterDayPartTargeting--;
}

core.List<core.String> buildUnnamed4076() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4076(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDeepLink = 0;
api.DeepLink buildDeepLink() {
  var o = api.DeepLink();
  buildCounterDeepLink++;
  if (buildCounterDeepLink < 3) {
    o.appUrl = 'foo';
    o.fallbackUrl = 'foo';
    o.kind = 'foo';
    o.mobileApp = buildMobileApp();
    o.remarketingListIds = buildUnnamed4076();
  }
  buildCounterDeepLink--;
  return o;
}

void checkDeepLink(api.DeepLink o) {
  buildCounterDeepLink++;
  if (buildCounterDeepLink < 3) {
    unittest.expect(o.appUrl, unittest.equals('foo'));
    unittest.expect(o.fallbackUrl, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkMobileApp(o.mobileApp);
    checkUnnamed4076(o.remarketingListIds);
  }
  buildCounterDeepLink--;
}

core.int buildCounterDefaultClickThroughEventTagProperties = 0;
api.DefaultClickThroughEventTagProperties
    buildDefaultClickThroughEventTagProperties() {
  var o = api.DefaultClickThroughEventTagProperties();
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
    unittest.expect(o.defaultClickThroughEventTagId, unittest.equals('foo'));
    unittest.expect(o.overrideInheritedEventTag, unittest.isTrue);
  }
  buildCounterDefaultClickThroughEventTagProperties--;
}

core.int buildCounterDeliverySchedule = 0;
api.DeliverySchedule buildDeliverySchedule() {
  var o = api.DeliverySchedule();
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
    checkFrequencyCap(o.frequencyCap);
    unittest.expect(o.hardCutoff, unittest.isTrue);
    unittest.expect(o.impressionRatio, unittest.equals('foo'));
    unittest.expect(o.priority, unittest.equals('foo'));
  }
  buildCounterDeliverySchedule--;
}

core.int buildCounterDfpSettings = 0;
api.DfpSettings buildDfpSettings() {
  var o = api.DfpSettings();
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
    unittest.expect(o.dfpNetworkCode, unittest.equals('foo'));
    unittest.expect(o.dfpNetworkName, unittest.equals('foo'));
    unittest.expect(o.programmaticPlacementAccepted, unittest.isTrue);
    unittest.expect(o.pubPaidPlacementAccepted, unittest.isTrue);
    unittest.expect(o.publisherPortalOnly, unittest.isTrue);
  }
  buildCounterDfpSettings--;
}

core.int buildCounterDimension = 0;
api.Dimension buildDimension() {
  var o = api.Dimension();
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
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterDimension--;
}

core.int buildCounterDimensionFilter = 0;
api.DimensionFilter buildDimensionFilter() {
  var o = api.DimensionFilter();
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
    unittest.expect(o.dimensionName, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterDimensionFilter--;
}

core.int buildCounterDimensionValue = 0;
api.DimensionValue buildDimensionValue() {
  var o = api.DimensionValue();
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
    unittest.expect(o.dimensionName, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.matchType, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterDimensionValue--;
}

core.List<api.DimensionValue> buildUnnamed4077() {
  var o = <api.DimensionValue>[];
  o.add(buildDimensionValue());
  o.add(buildDimensionValue());
  return o;
}

void checkUnnamed4077(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

core.int buildCounterDimensionValueList = 0;
api.DimensionValueList buildDimensionValueList() {
  var o = api.DimensionValueList();
  buildCounterDimensionValueList++;
  if (buildCounterDimensionValueList < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed4077();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterDimensionValueList--;
  return o;
}

void checkDimensionValueList(api.DimensionValueList o) {
  buildCounterDimensionValueList++;
  if (buildCounterDimensionValueList < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed4077(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterDimensionValueList--;
}

core.List<api.DimensionFilter> buildUnnamed4078() {
  var o = <api.DimensionFilter>[];
  o.add(buildDimensionFilter());
  o.add(buildDimensionFilter());
  return o;
}

void checkUnnamed4078(core.List<api.DimensionFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionFilter(o[0]);
  checkDimensionFilter(o[1]);
}

core.int buildCounterDimensionValueRequest = 0;
api.DimensionValueRequest buildDimensionValueRequest() {
  var o = api.DimensionValueRequest();
  buildCounterDimensionValueRequest++;
  if (buildCounterDimensionValueRequest < 3) {
    o.dimensionName = 'foo';
    o.endDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.filters = buildUnnamed4078();
    o.kind = 'foo';
    o.startDate = core.DateTime.parse('2002-02-27T14:01:02Z');
  }
  buildCounterDimensionValueRequest--;
  return o;
}

void checkDimensionValueRequest(api.DimensionValueRequest o) {
  buildCounterDimensionValueRequest++;
  if (buildCounterDimensionValueRequest < 3) {
    unittest.expect(o.dimensionName, unittest.equals('foo'));
    unittest.expect(
        o.endDate, unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    checkUnnamed4078(o.filters);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.startDate,
        unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
  }
  buildCounterDimensionValueRequest--;
}

core.List<core.String> buildUnnamed4079() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4079(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4080() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4080(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDirectorySite = 0;
api.DirectorySite buildDirectorySite() {
  var o = api.DirectorySite();
  buildCounterDirectorySite++;
  if (buildCounterDirectorySite < 3) {
    o.id = 'foo';
    o.idDimensionValue = buildDimensionValue();
    o.inpageTagFormats = buildUnnamed4079();
    o.interstitialTagFormats = buildUnnamed4080();
    o.kind = 'foo';
    o.name = 'foo';
    o.settings = buildDirectorySiteSettings();
    o.url = 'foo';
  }
  buildCounterDirectorySite--;
  return o;
}

void checkDirectorySite(api.DirectorySite o) {
  buildCounterDirectorySite++;
  if (buildCounterDirectorySite < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    checkDimensionValue(o.idDimensionValue);
    checkUnnamed4079(o.inpageTagFormats);
    checkUnnamed4080(o.interstitialTagFormats);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkDirectorySiteSettings(o.settings);
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterDirectorySite--;
}

core.int buildCounterDirectorySiteSettings = 0;
api.DirectorySiteSettings buildDirectorySiteSettings() {
  var o = api.DirectorySiteSettings();
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
    unittest.expect(o.activeViewOptOut, unittest.isTrue);
    checkDfpSettings(o.dfpSettings);
    unittest.expect(o.instreamVideoPlacementAccepted, unittest.isTrue);
    unittest.expect(o.interstitialPlacementAccepted, unittest.isTrue);
  }
  buildCounterDirectorySiteSettings--;
}

core.List<api.DirectorySite> buildUnnamed4081() {
  var o = <api.DirectorySite>[];
  o.add(buildDirectorySite());
  o.add(buildDirectorySite());
  return o;
}

void checkUnnamed4081(core.List<api.DirectorySite> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDirectorySite(o[0]);
  checkDirectorySite(o[1]);
}

core.int buildCounterDirectorySitesListResponse = 0;
api.DirectorySitesListResponse buildDirectorySitesListResponse() {
  var o = api.DirectorySitesListResponse();
  buildCounterDirectorySitesListResponse++;
  if (buildCounterDirectorySitesListResponse < 3) {
    o.directorySites = buildUnnamed4081();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterDirectorySitesListResponse--;
  return o;
}

void checkDirectorySitesListResponse(api.DirectorySitesListResponse o) {
  buildCounterDirectorySitesListResponse++;
  if (buildCounterDirectorySitesListResponse < 3) {
    checkUnnamed4081(o.directorySites);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterDirectorySitesListResponse--;
}

core.List<api.EventFilter> buildUnnamed4082() {
  var o = <api.EventFilter>[];
  o.add(buildEventFilter());
  o.add(buildEventFilter());
  return o;
}

void checkUnnamed4082(core.List<api.EventFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventFilter(o[0]);
  checkEventFilter(o[1]);
}

core.int buildCounterDisjunctiveMatchStatement = 0;
api.DisjunctiveMatchStatement buildDisjunctiveMatchStatement() {
  var o = api.DisjunctiveMatchStatement();
  buildCounterDisjunctiveMatchStatement++;
  if (buildCounterDisjunctiveMatchStatement < 3) {
    o.eventFilters = buildUnnamed4082();
    o.kind = 'foo';
  }
  buildCounterDisjunctiveMatchStatement--;
  return o;
}

void checkDisjunctiveMatchStatement(api.DisjunctiveMatchStatement o) {
  buildCounterDisjunctiveMatchStatement++;
  if (buildCounterDisjunctiveMatchStatement < 3) {
    checkUnnamed4082(o.eventFilters);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterDisjunctiveMatchStatement--;
}

core.int buildCounterDynamicTargetingKey = 0;
api.DynamicTargetingKey buildDynamicTargetingKey() {
  var o = api.DynamicTargetingKey();
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
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.objectId, unittest.equals('foo'));
    unittest.expect(o.objectType, unittest.equals('foo'));
  }
  buildCounterDynamicTargetingKey--;
}

core.List<api.DynamicTargetingKey> buildUnnamed4083() {
  var o = <api.DynamicTargetingKey>[];
  o.add(buildDynamicTargetingKey());
  o.add(buildDynamicTargetingKey());
  return o;
}

void checkUnnamed4083(core.List<api.DynamicTargetingKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDynamicTargetingKey(o[0]);
  checkDynamicTargetingKey(o[1]);
}

core.int buildCounterDynamicTargetingKeysListResponse = 0;
api.DynamicTargetingKeysListResponse buildDynamicTargetingKeysListResponse() {
  var o = api.DynamicTargetingKeysListResponse();
  buildCounterDynamicTargetingKeysListResponse++;
  if (buildCounterDynamicTargetingKeysListResponse < 3) {
    o.dynamicTargetingKeys = buildUnnamed4083();
    o.kind = 'foo';
  }
  buildCounterDynamicTargetingKeysListResponse--;
  return o;
}

void checkDynamicTargetingKeysListResponse(
    api.DynamicTargetingKeysListResponse o) {
  buildCounterDynamicTargetingKeysListResponse++;
  if (buildCounterDynamicTargetingKeysListResponse < 3) {
    checkUnnamed4083(o.dynamicTargetingKeys);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterDynamicTargetingKeysListResponse--;
}

core.int buildCounterEncryptionInfo = 0;
api.EncryptionInfo buildEncryptionInfo() {
  var o = api.EncryptionInfo();
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
    unittest.expect(o.encryptionEntityId, unittest.equals('foo'));
    unittest.expect(o.encryptionEntityType, unittest.equals('foo'));
    unittest.expect(o.encryptionSource, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterEncryptionInfo--;
}

core.int buildCounterEventFilter = 0;
api.EventFilter buildEventFilter() {
  var o = api.EventFilter();
  buildCounterEventFilter++;
  if (buildCounterEventFilter < 3) {
    o.dimensionFilter = buildPathReportDimensionValue();
    o.kind = 'foo';
  }
  buildCounterEventFilter--;
  return o;
}

void checkEventFilter(api.EventFilter o) {
  buildCounterEventFilter++;
  if (buildCounterEventFilter < 3) {
    checkPathReportDimensionValue(o.dimensionFilter);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterEventFilter--;
}

core.List<core.String> buildUnnamed4084() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4084(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEventTag = 0;
api.EventTag buildEventTag() {
  var o = api.EventTag();
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
    o.siteIds = buildUnnamed4084();
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
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    checkDimensionValue(o.advertiserIdDimensionValue);
    unittest.expect(o.campaignId, unittest.equals('foo'));
    checkDimensionValue(o.campaignIdDimensionValue);
    unittest.expect(o.enabledByDefault, unittest.isTrue);
    unittest.expect(o.excludeFromAdxRequests, unittest.isTrue);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.siteFilterType, unittest.equals('foo'));
    checkUnnamed4084(o.siteIds);
    unittest.expect(o.sslCompliant, unittest.isTrue);
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.subaccountId, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
    unittest.expect(o.urlEscapeLevels, unittest.equals(42));
  }
  buildCounterEventTag--;
}

core.int buildCounterEventTagOverride = 0;
api.EventTagOverride buildEventTagOverride() {
  var o = api.EventTagOverride();
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
    unittest.expect(o.enabled, unittest.isTrue);
    unittest.expect(o.id, unittest.equals('foo'));
  }
  buildCounterEventTagOverride--;
}

core.List<api.EventTag> buildUnnamed4085() {
  var o = <api.EventTag>[];
  o.add(buildEventTag());
  o.add(buildEventTag());
  return o;
}

void checkUnnamed4085(core.List<api.EventTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventTag(o[0]);
  checkEventTag(o[1]);
}

core.int buildCounterEventTagsListResponse = 0;
api.EventTagsListResponse buildEventTagsListResponse() {
  var o = api.EventTagsListResponse();
  buildCounterEventTagsListResponse++;
  if (buildCounterEventTagsListResponse < 3) {
    o.eventTags = buildUnnamed4085();
    o.kind = 'foo';
  }
  buildCounterEventTagsListResponse--;
  return o;
}

void checkEventTagsListResponse(api.EventTagsListResponse o) {
  buildCounterEventTagsListResponse++;
  if (buildCounterEventTagsListResponse < 3) {
    checkUnnamed4085(o.eventTags);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterEventTagsListResponse--;
}

core.int buildCounterFileUrls = 0;
api.FileUrls buildFileUrls() {
  var o = api.FileUrls();
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
    unittest.expect(o.apiUrl, unittest.equals('foo'));
    unittest.expect(o.browserUrl, unittest.equals('foo'));
  }
  buildCounterFileUrls--;
}

core.int buildCounterFile = 0;
api.File buildFile() {
  var o = api.File();
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
    checkDateRange(o.dateRange);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.fileName, unittest.equals('foo'));
    unittest.expect(o.format, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastModifiedTime, unittest.equals('foo'));
    unittest.expect(o.reportId, unittest.equals('foo'));
    unittest.expect(o.status, unittest.equals('foo'));
    checkFileUrls(o.urls);
  }
  buildCounterFile--;
}

core.List<api.File> buildUnnamed4086() {
  var o = <api.File>[];
  o.add(buildFile());
  o.add(buildFile());
  return o;
}

void checkUnnamed4086(core.List<api.File> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFile(o[0]);
  checkFile(o[1]);
}

core.int buildCounterFileList = 0;
api.FileList buildFileList() {
  var o = api.FileList();
  buildCounterFileList++;
  if (buildCounterFileList < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed4086();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterFileList--;
  return o;
}

void checkFileList(api.FileList o) {
  buildCounterFileList++;
  if (buildCounterFileList < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed4086(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterFileList--;
}

core.int buildCounterFlight = 0;
api.Flight buildFlight() {
  var o = api.Flight();
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
        o.endDate, unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.rateOrCost, unittest.equals('foo'));
    unittest.expect(o.startDate,
        unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.units, unittest.equals('foo'));
  }
  buildCounterFlight--;
}

core.int buildCounterFloodlightActivitiesGenerateTagResponse = 0;
api.FloodlightActivitiesGenerateTagResponse
    buildFloodlightActivitiesGenerateTagResponse() {
  var o = api.FloodlightActivitiesGenerateTagResponse();
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
    unittest.expect(o.floodlightActivityTag, unittest.equals('foo'));
    unittest.expect(o.globalSiteTagGlobalSnippet, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterFloodlightActivitiesGenerateTagResponse--;
}

core.List<api.FloodlightActivity> buildUnnamed4087() {
  var o = <api.FloodlightActivity>[];
  o.add(buildFloodlightActivity());
  o.add(buildFloodlightActivity());
  return o;
}

void checkUnnamed4087(core.List<api.FloodlightActivity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFloodlightActivity(o[0]);
  checkFloodlightActivity(o[1]);
}

core.int buildCounterFloodlightActivitiesListResponse = 0;
api.FloodlightActivitiesListResponse buildFloodlightActivitiesListResponse() {
  var o = api.FloodlightActivitiesListResponse();
  buildCounterFloodlightActivitiesListResponse++;
  if (buildCounterFloodlightActivitiesListResponse < 3) {
    o.floodlightActivities = buildUnnamed4087();
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
    checkUnnamed4087(o.floodlightActivities);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterFloodlightActivitiesListResponse--;
}

core.List<api.FloodlightActivityDynamicTag> buildUnnamed4088() {
  var o = <api.FloodlightActivityDynamicTag>[];
  o.add(buildFloodlightActivityDynamicTag());
  o.add(buildFloodlightActivityDynamicTag());
  return o;
}

void checkUnnamed4088(core.List<api.FloodlightActivityDynamicTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFloodlightActivityDynamicTag(o[0]);
  checkFloodlightActivityDynamicTag(o[1]);
}

core.List<api.FloodlightActivityPublisherDynamicTag> buildUnnamed4089() {
  var o = <api.FloodlightActivityPublisherDynamicTag>[];
  o.add(buildFloodlightActivityPublisherDynamicTag());
  o.add(buildFloodlightActivityPublisherDynamicTag());
  return o;
}

void checkUnnamed4089(core.List<api.FloodlightActivityPublisherDynamicTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFloodlightActivityPublisherDynamicTag(o[0]);
  checkFloodlightActivityPublisherDynamicTag(o[1]);
}

core.List<core.String> buildUnnamed4090() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4090(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFloodlightActivity = 0;
api.FloodlightActivity buildFloodlightActivity() {
  var o = api.FloodlightActivity();
  buildCounterFloodlightActivity++;
  if (buildCounterFloodlightActivity < 3) {
    o.accountId = 'foo';
    o.advertiserId = 'foo';
    o.advertiserIdDimensionValue = buildDimensionValue();
    o.attributionEnabled = true;
    o.cacheBustingType = 'foo';
    o.countingMethod = 'foo';
    o.defaultTags = buildUnnamed4088();
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
    o.publisherTags = buildUnnamed4089();
    o.secure = true;
    o.sslCompliant = true;
    o.sslRequired = true;
    o.status = 'foo';
    o.subaccountId = 'foo';
    o.tagFormat = 'foo';
    o.tagString = 'foo';
    o.userDefinedVariableTypes = buildUnnamed4090();
  }
  buildCounterFloodlightActivity--;
  return o;
}

void checkFloodlightActivity(api.FloodlightActivity o) {
  buildCounterFloodlightActivity++;
  if (buildCounterFloodlightActivity < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    checkDimensionValue(o.advertiserIdDimensionValue);
    unittest.expect(o.attributionEnabled, unittest.isTrue);
    unittest.expect(o.cacheBustingType, unittest.equals('foo'));
    unittest.expect(o.countingMethod, unittest.equals('foo'));
    checkUnnamed4088(o.defaultTags);
    unittest.expect(o.expectedUrl, unittest.equals('foo'));
    unittest.expect(o.floodlightActivityGroupId, unittest.equals('foo'));
    unittest.expect(o.floodlightActivityGroupName, unittest.equals('foo'));
    unittest.expect(o.floodlightActivityGroupTagString, unittest.equals('foo'));
    unittest.expect(o.floodlightActivityGroupType, unittest.equals('foo'));
    unittest.expect(o.floodlightConfigurationId, unittest.equals('foo'));
    checkDimensionValue(o.floodlightConfigurationIdDimensionValue);
    unittest.expect(o.floodlightTagType, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkDimensionValue(o.idDimensionValue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.notes, unittest.equals('foo'));
    checkUnnamed4089(o.publisherTags);
    unittest.expect(o.secure, unittest.isTrue);
    unittest.expect(o.sslCompliant, unittest.isTrue);
    unittest.expect(o.sslRequired, unittest.isTrue);
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.subaccountId, unittest.equals('foo'));
    unittest.expect(o.tagFormat, unittest.equals('foo'));
    unittest.expect(o.tagString, unittest.equals('foo'));
    checkUnnamed4090(o.userDefinedVariableTypes);
  }
  buildCounterFloodlightActivity--;
}

core.int buildCounterFloodlightActivityDynamicTag = 0;
api.FloodlightActivityDynamicTag buildFloodlightActivityDynamicTag() {
  var o = api.FloodlightActivityDynamicTag();
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
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.tag, unittest.equals('foo'));
  }
  buildCounterFloodlightActivityDynamicTag--;
}

core.int buildCounterFloodlightActivityGroup = 0;
api.FloodlightActivityGroup buildFloodlightActivityGroup() {
  var o = api.FloodlightActivityGroup();
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
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    checkDimensionValue(o.advertiserIdDimensionValue);
    unittest.expect(o.floodlightConfigurationId, unittest.equals('foo'));
    checkDimensionValue(o.floodlightConfigurationIdDimensionValue);
    unittest.expect(o.id, unittest.equals('foo'));
    checkDimensionValue(o.idDimensionValue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.subaccountId, unittest.equals('foo'));
    unittest.expect(o.tagString, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterFloodlightActivityGroup--;
}

core.List<api.FloodlightActivityGroup> buildUnnamed4091() {
  var o = <api.FloodlightActivityGroup>[];
  o.add(buildFloodlightActivityGroup());
  o.add(buildFloodlightActivityGroup());
  return o;
}

void checkUnnamed4091(core.List<api.FloodlightActivityGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFloodlightActivityGroup(o[0]);
  checkFloodlightActivityGroup(o[1]);
}

core.int buildCounterFloodlightActivityGroupsListResponse = 0;
api.FloodlightActivityGroupsListResponse
    buildFloodlightActivityGroupsListResponse() {
  var o = api.FloodlightActivityGroupsListResponse();
  buildCounterFloodlightActivityGroupsListResponse++;
  if (buildCounterFloodlightActivityGroupsListResponse < 3) {
    o.floodlightActivityGroups = buildUnnamed4091();
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
    checkUnnamed4091(o.floodlightActivityGroups);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterFloodlightActivityGroupsListResponse--;
}

core.int buildCounterFloodlightActivityPublisherDynamicTag = 0;
api.FloodlightActivityPublisherDynamicTag
    buildFloodlightActivityPublisherDynamicTag() {
  var o = api.FloodlightActivityPublisherDynamicTag();
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
    unittest.expect(o.clickThrough, unittest.isTrue);
    unittest.expect(o.directorySiteId, unittest.equals('foo'));
    checkFloodlightActivityDynamicTag(o.dynamicTag);
    unittest.expect(o.siteId, unittest.equals('foo'));
    checkDimensionValue(o.siteIdDimensionValue);
    unittest.expect(o.viewThrough, unittest.isTrue);
  }
  buildCounterFloodlightActivityPublisherDynamicTag--;
}

core.List<api.ThirdPartyAuthenticationToken> buildUnnamed4092() {
  var o = <api.ThirdPartyAuthenticationToken>[];
  o.add(buildThirdPartyAuthenticationToken());
  o.add(buildThirdPartyAuthenticationToken());
  return o;
}

void checkUnnamed4092(core.List<api.ThirdPartyAuthenticationToken> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThirdPartyAuthenticationToken(o[0]);
  checkThirdPartyAuthenticationToken(o[1]);
}

core.List<api.UserDefinedVariableConfiguration> buildUnnamed4093() {
  var o = <api.UserDefinedVariableConfiguration>[];
  o.add(buildUserDefinedVariableConfiguration());
  o.add(buildUserDefinedVariableConfiguration());
  return o;
}

void checkUnnamed4093(core.List<api.UserDefinedVariableConfiguration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserDefinedVariableConfiguration(o[0]);
  checkUserDefinedVariableConfiguration(o[1]);
}

core.int buildCounterFloodlightConfiguration = 0;
api.FloodlightConfiguration buildFloodlightConfiguration() {
  var o = api.FloodlightConfiguration();
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
    o.thirdPartyAuthenticationTokens = buildUnnamed4092();
    o.userDefinedVariableConfigurations = buildUnnamed4093();
  }
  buildCounterFloodlightConfiguration--;
  return o;
}

void checkFloodlightConfiguration(api.FloodlightConfiguration o) {
  buildCounterFloodlightConfiguration++;
  if (buildCounterFloodlightConfiguration < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    checkDimensionValue(o.advertiserIdDimensionValue);
    unittest.expect(o.analyticsDataSharingEnabled, unittest.isTrue);
    checkCustomViewabilityMetric(o.customViewabilityMetric);
    unittest.expect(o.exposureToConversionEnabled, unittest.isTrue);
    unittest.expect(o.firstDayOfWeek, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkDimensionValue(o.idDimensionValue);
    unittest.expect(o.inAppAttributionTrackingEnabled, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkLookbackConfiguration(o.lookbackConfiguration);
    unittest.expect(
        o.naturalSearchConversionAttributionOption, unittest.equals('foo'));
    checkOmnitureSettings(o.omnitureSettings);
    unittest.expect(o.subaccountId, unittest.equals('foo'));
    checkTagSettings(o.tagSettings);
    checkUnnamed4092(o.thirdPartyAuthenticationTokens);
    checkUnnamed4093(o.userDefinedVariableConfigurations);
  }
  buildCounterFloodlightConfiguration--;
}

core.List<api.FloodlightConfiguration> buildUnnamed4094() {
  var o = <api.FloodlightConfiguration>[];
  o.add(buildFloodlightConfiguration());
  o.add(buildFloodlightConfiguration());
  return o;
}

void checkUnnamed4094(core.List<api.FloodlightConfiguration> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFloodlightConfiguration(o[0]);
  checkFloodlightConfiguration(o[1]);
}

core.int buildCounterFloodlightConfigurationsListResponse = 0;
api.FloodlightConfigurationsListResponse
    buildFloodlightConfigurationsListResponse() {
  var o = api.FloodlightConfigurationsListResponse();
  buildCounterFloodlightConfigurationsListResponse++;
  if (buildCounterFloodlightConfigurationsListResponse < 3) {
    o.floodlightConfigurations = buildUnnamed4094();
    o.kind = 'foo';
  }
  buildCounterFloodlightConfigurationsListResponse--;
  return o;
}

void checkFloodlightConfigurationsListResponse(
    api.FloodlightConfigurationsListResponse o) {
  buildCounterFloodlightConfigurationsListResponse++;
  if (buildCounterFloodlightConfigurationsListResponse < 3) {
    checkUnnamed4094(o.floodlightConfigurations);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterFloodlightConfigurationsListResponse--;
}

core.List<api.Dimension> buildUnnamed4095() {
  var o = <api.Dimension>[];
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

void checkUnnamed4095(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Dimension> buildUnnamed4096() {
  var o = <api.Dimension>[];
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

void checkUnnamed4096(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Metric> buildUnnamed4097() {
  var o = <api.Metric>[];
  o.add(buildMetric());
  o.add(buildMetric());
  return o;
}

void checkUnnamed4097(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.int buildCounterFloodlightReportCompatibleFields = 0;
api.FloodlightReportCompatibleFields buildFloodlightReportCompatibleFields() {
  var o = api.FloodlightReportCompatibleFields();
  buildCounterFloodlightReportCompatibleFields++;
  if (buildCounterFloodlightReportCompatibleFields < 3) {
    o.dimensionFilters = buildUnnamed4095();
    o.dimensions = buildUnnamed4096();
    o.kind = 'foo';
    o.metrics = buildUnnamed4097();
  }
  buildCounterFloodlightReportCompatibleFields--;
  return o;
}

void checkFloodlightReportCompatibleFields(
    api.FloodlightReportCompatibleFields o) {
  buildCounterFloodlightReportCompatibleFields++;
  if (buildCounterFloodlightReportCompatibleFields < 3) {
    checkUnnamed4095(o.dimensionFilters);
    checkUnnamed4096(o.dimensions);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4097(o.metrics);
  }
  buildCounterFloodlightReportCompatibleFields--;
}

core.int buildCounterFrequencyCap = 0;
api.FrequencyCap buildFrequencyCap() {
  var o = api.FrequencyCap();
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
    unittest.expect(o.duration, unittest.equals('foo'));
    unittest.expect(o.impressions, unittest.equals('foo'));
  }
  buildCounterFrequencyCap--;
}

core.int buildCounterFsCommand = 0;
api.FsCommand buildFsCommand() {
  var o = api.FsCommand();
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
    unittest.expect(o.left, unittest.equals(42));
    unittest.expect(o.positionOption, unittest.equals('foo'));
    unittest.expect(o.top, unittest.equals(42));
    unittest.expect(o.windowHeight, unittest.equals(42));
    unittest.expect(o.windowWidth, unittest.equals(42));
  }
  buildCounterFsCommand--;
}

core.List<api.City> buildUnnamed4098() {
  var o = <api.City>[];
  o.add(buildCity());
  o.add(buildCity());
  return o;
}

void checkUnnamed4098(core.List<api.City> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCity(o[0]);
  checkCity(o[1]);
}

core.List<api.Country> buildUnnamed4099() {
  var o = <api.Country>[];
  o.add(buildCountry());
  o.add(buildCountry());
  return o;
}

void checkUnnamed4099(core.List<api.Country> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCountry(o[0]);
  checkCountry(o[1]);
}

core.List<api.Metro> buildUnnamed4100() {
  var o = <api.Metro>[];
  o.add(buildMetro());
  o.add(buildMetro());
  return o;
}

void checkUnnamed4100(core.List<api.Metro> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetro(o[0]);
  checkMetro(o[1]);
}

core.List<api.PostalCode> buildUnnamed4101() {
  var o = <api.PostalCode>[];
  o.add(buildPostalCode());
  o.add(buildPostalCode());
  return o;
}

void checkUnnamed4101(core.List<api.PostalCode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPostalCode(o[0]);
  checkPostalCode(o[1]);
}

core.List<api.Region> buildUnnamed4102() {
  var o = <api.Region>[];
  o.add(buildRegion());
  o.add(buildRegion());
  return o;
}

void checkUnnamed4102(core.List<api.Region> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegion(o[0]);
  checkRegion(o[1]);
}

core.int buildCounterGeoTargeting = 0;
api.GeoTargeting buildGeoTargeting() {
  var o = api.GeoTargeting();
  buildCounterGeoTargeting++;
  if (buildCounterGeoTargeting < 3) {
    o.cities = buildUnnamed4098();
    o.countries = buildUnnamed4099();
    o.excludeCountries = true;
    o.metros = buildUnnamed4100();
    o.postalCodes = buildUnnamed4101();
    o.regions = buildUnnamed4102();
  }
  buildCounterGeoTargeting--;
  return o;
}

void checkGeoTargeting(api.GeoTargeting o) {
  buildCounterGeoTargeting++;
  if (buildCounterGeoTargeting < 3) {
    checkUnnamed4098(o.cities);
    checkUnnamed4099(o.countries);
    unittest.expect(o.excludeCountries, unittest.isTrue);
    checkUnnamed4100(o.metros);
    checkUnnamed4101(o.postalCodes);
    checkUnnamed4102(o.regions);
  }
  buildCounterGeoTargeting--;
}

core.List<api.AdSlot> buildUnnamed4103() {
  var o = <api.AdSlot>[];
  o.add(buildAdSlot());
  o.add(buildAdSlot());
  return o;
}

void checkUnnamed4103(core.List<api.AdSlot> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdSlot(o[0]);
  checkAdSlot(o[1]);
}

core.int buildCounterInventoryItem = 0;
api.InventoryItem buildInventoryItem() {
  var o = api.InventoryItem();
  buildCounterInventoryItem++;
  if (buildCounterInventoryItem < 3) {
    o.accountId = 'foo';
    o.adSlots = buildUnnamed4103();
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
    unittest.expect(o.accountId, unittest.equals('foo'));
    checkUnnamed4103(o.adSlots);
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    unittest.expect(o.contentCategoryId, unittest.equals('foo'));
    unittest.expect(o.estimatedClickThroughRate, unittest.equals('foo'));
    unittest.expect(o.estimatedConversionRate, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.inPlan, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkLastModifiedInfo(o.lastModifiedInfo);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.negotiationChannelId, unittest.equals('foo'));
    unittest.expect(o.orderId, unittest.equals('foo'));
    unittest.expect(o.placementStrategyId, unittest.equals('foo'));
    checkPricing(o.pricing);
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.rfpId, unittest.equals('foo'));
    unittest.expect(o.siteId, unittest.equals('foo'));
    unittest.expect(o.subaccountId, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterInventoryItem--;
}

core.List<api.InventoryItem> buildUnnamed4104() {
  var o = <api.InventoryItem>[];
  o.add(buildInventoryItem());
  o.add(buildInventoryItem());
  return o;
}

void checkUnnamed4104(core.List<api.InventoryItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInventoryItem(o[0]);
  checkInventoryItem(o[1]);
}

core.int buildCounterInventoryItemsListResponse = 0;
api.InventoryItemsListResponse buildInventoryItemsListResponse() {
  var o = api.InventoryItemsListResponse();
  buildCounterInventoryItemsListResponse++;
  if (buildCounterInventoryItemsListResponse < 3) {
    o.inventoryItems = buildUnnamed4104();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterInventoryItemsListResponse--;
  return o;
}

void checkInventoryItemsListResponse(api.InventoryItemsListResponse o) {
  buildCounterInventoryItemsListResponse++;
  if (buildCounterInventoryItemsListResponse < 3) {
    checkUnnamed4104(o.inventoryItems);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterInventoryItemsListResponse--;
}

core.int buildCounterKeyValueTargetingExpression = 0;
api.KeyValueTargetingExpression buildKeyValueTargetingExpression() {
  var o = api.KeyValueTargetingExpression();
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
    unittest.expect(o.expression, unittest.equals('foo'));
  }
  buildCounterKeyValueTargetingExpression--;
}

core.List<api.DeepLink> buildUnnamed4105() {
  var o = <api.DeepLink>[];
  o.add(buildDeepLink());
  o.add(buildDeepLink());
  return o;
}

void checkUnnamed4105(core.List<api.DeepLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeepLink(o[0]);
  checkDeepLink(o[1]);
}

core.int buildCounterLandingPage = 0;
api.LandingPage buildLandingPage() {
  var o = api.LandingPage();
  buildCounterLandingPage++;
  if (buildCounterLandingPage < 3) {
    o.advertiserId = 'foo';
    o.archived = true;
    o.deepLinks = buildUnnamed4105();
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
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    unittest.expect(o.archived, unittest.isTrue);
    checkUnnamed4105(o.deepLinks);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterLandingPage--;
}

core.int buildCounterLanguage = 0;
api.Language buildLanguage() {
  var o = api.Language();
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
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.languageCode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterLanguage--;
}

core.List<api.Language> buildUnnamed4106() {
  var o = <api.Language>[];
  o.add(buildLanguage());
  o.add(buildLanguage());
  return o;
}

void checkUnnamed4106(core.List<api.Language> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLanguage(o[0]);
  checkLanguage(o[1]);
}

core.int buildCounterLanguageTargeting = 0;
api.LanguageTargeting buildLanguageTargeting() {
  var o = api.LanguageTargeting();
  buildCounterLanguageTargeting++;
  if (buildCounterLanguageTargeting < 3) {
    o.languages = buildUnnamed4106();
  }
  buildCounterLanguageTargeting--;
  return o;
}

void checkLanguageTargeting(api.LanguageTargeting o) {
  buildCounterLanguageTargeting++;
  if (buildCounterLanguageTargeting < 3) {
    checkUnnamed4106(o.languages);
  }
  buildCounterLanguageTargeting--;
}

core.List<api.Language> buildUnnamed4107() {
  var o = <api.Language>[];
  o.add(buildLanguage());
  o.add(buildLanguage());
  return o;
}

void checkUnnamed4107(core.List<api.Language> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLanguage(o[0]);
  checkLanguage(o[1]);
}

core.int buildCounterLanguagesListResponse = 0;
api.LanguagesListResponse buildLanguagesListResponse() {
  var o = api.LanguagesListResponse();
  buildCounterLanguagesListResponse++;
  if (buildCounterLanguagesListResponse < 3) {
    o.kind = 'foo';
    o.languages = buildUnnamed4107();
  }
  buildCounterLanguagesListResponse--;
  return o;
}

void checkLanguagesListResponse(api.LanguagesListResponse o) {
  buildCounterLanguagesListResponse++;
  if (buildCounterLanguagesListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4107(o.languages);
  }
  buildCounterLanguagesListResponse--;
}

core.int buildCounterLastModifiedInfo = 0;
api.LastModifiedInfo buildLastModifiedInfo() {
  var o = api.LastModifiedInfo();
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
    unittest.expect(o.time, unittest.equals('foo'));
  }
  buildCounterLastModifiedInfo--;
}

core.List<api.ListPopulationTerm> buildUnnamed4108() {
  var o = <api.ListPopulationTerm>[];
  o.add(buildListPopulationTerm());
  o.add(buildListPopulationTerm());
  return o;
}

void checkUnnamed4108(core.List<api.ListPopulationTerm> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkListPopulationTerm(o[0]);
  checkListPopulationTerm(o[1]);
}

core.int buildCounterListPopulationClause = 0;
api.ListPopulationClause buildListPopulationClause() {
  var o = api.ListPopulationClause();
  buildCounterListPopulationClause++;
  if (buildCounterListPopulationClause < 3) {
    o.terms = buildUnnamed4108();
  }
  buildCounterListPopulationClause--;
  return o;
}

void checkListPopulationClause(api.ListPopulationClause o) {
  buildCounterListPopulationClause++;
  if (buildCounterListPopulationClause < 3) {
    checkUnnamed4108(o.terms);
  }
  buildCounterListPopulationClause--;
}

core.List<api.ListPopulationClause> buildUnnamed4109() {
  var o = <api.ListPopulationClause>[];
  o.add(buildListPopulationClause());
  o.add(buildListPopulationClause());
  return o;
}

void checkUnnamed4109(core.List<api.ListPopulationClause> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkListPopulationClause(o[0]);
  checkListPopulationClause(o[1]);
}

core.int buildCounterListPopulationRule = 0;
api.ListPopulationRule buildListPopulationRule() {
  var o = api.ListPopulationRule();
  buildCounterListPopulationRule++;
  if (buildCounterListPopulationRule < 3) {
    o.floodlightActivityId = 'foo';
    o.floodlightActivityName = 'foo';
    o.listPopulationClauses = buildUnnamed4109();
  }
  buildCounterListPopulationRule--;
  return o;
}

void checkListPopulationRule(api.ListPopulationRule o) {
  buildCounterListPopulationRule++;
  if (buildCounterListPopulationRule < 3) {
    unittest.expect(o.floodlightActivityId, unittest.equals('foo'));
    unittest.expect(o.floodlightActivityName, unittest.equals('foo'));
    checkUnnamed4109(o.listPopulationClauses);
  }
  buildCounterListPopulationRule--;
}

core.int buildCounterListPopulationTerm = 0;
api.ListPopulationTerm buildListPopulationTerm() {
  var o = api.ListPopulationTerm();
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
    unittest.expect(o.contains, unittest.isTrue);
    unittest.expect(o.negation, unittest.isTrue);
    unittest.expect(o.operator, unittest.equals('foo'));
    unittest.expect(o.remarketingListId, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
    unittest.expect(o.variableFriendlyName, unittest.equals('foo'));
    unittest.expect(o.variableName, unittest.equals('foo'));
  }
  buildCounterListPopulationTerm--;
}

core.int buildCounterListTargetingExpression = 0;
api.ListTargetingExpression buildListTargetingExpression() {
  var o = api.ListTargetingExpression();
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
    unittest.expect(o.expression, unittest.equals('foo'));
  }
  buildCounterListTargetingExpression--;
}

core.int buildCounterLookbackConfiguration = 0;
api.LookbackConfiguration buildLookbackConfiguration() {
  var o = api.LookbackConfiguration();
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
    unittest.expect(o.clickDuration, unittest.equals(42));
    unittest.expect(o.postImpressionActivitiesDuration, unittest.equals(42));
  }
  buildCounterLookbackConfiguration--;
}

core.int buildCounterMetric = 0;
api.Metric buildMetric() {
  var o = api.Metric();
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
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterMetric--;
}

core.int buildCounterMetro = 0;
api.Metro buildMetro() {
  var o = api.Metro();
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
    unittest.expect(o.countryCode, unittest.equals('foo'));
    unittest.expect(o.countryDartId, unittest.equals('foo'));
    unittest.expect(o.dartId, unittest.equals('foo'));
    unittest.expect(o.dmaId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.metroCode, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterMetro--;
}

core.List<api.Metro> buildUnnamed4110() {
  var o = <api.Metro>[];
  o.add(buildMetro());
  o.add(buildMetro());
  return o;
}

void checkUnnamed4110(core.List<api.Metro> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetro(o[0]);
  checkMetro(o[1]);
}

core.int buildCounterMetrosListResponse = 0;
api.MetrosListResponse buildMetrosListResponse() {
  var o = api.MetrosListResponse();
  buildCounterMetrosListResponse++;
  if (buildCounterMetrosListResponse < 3) {
    o.kind = 'foo';
    o.metros = buildUnnamed4110();
  }
  buildCounterMetrosListResponse--;
  return o;
}

void checkMetrosListResponse(api.MetrosListResponse o) {
  buildCounterMetrosListResponse++;
  if (buildCounterMetrosListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4110(o.metros);
  }
  buildCounterMetrosListResponse--;
}

core.int buildCounterMobileApp = 0;
api.MobileApp buildMobileApp() {
  var o = api.MobileApp();
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
    unittest.expect(o.directory, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.publisherName, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterMobileApp--;
}

core.List<api.MobileApp> buildUnnamed4111() {
  var o = <api.MobileApp>[];
  o.add(buildMobileApp());
  o.add(buildMobileApp());
  return o;
}

void checkUnnamed4111(core.List<api.MobileApp> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMobileApp(o[0]);
  checkMobileApp(o[1]);
}

core.int buildCounterMobileAppsListResponse = 0;
api.MobileAppsListResponse buildMobileAppsListResponse() {
  var o = api.MobileAppsListResponse();
  buildCounterMobileAppsListResponse++;
  if (buildCounterMobileAppsListResponse < 3) {
    o.kind = 'foo';
    o.mobileApps = buildUnnamed4111();
    o.nextPageToken = 'foo';
  }
  buildCounterMobileAppsListResponse--;
  return o;
}

void checkMobileAppsListResponse(api.MobileAppsListResponse o) {
  buildCounterMobileAppsListResponse++;
  if (buildCounterMobileAppsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4111(o.mobileApps);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterMobileAppsListResponse--;
}

core.int buildCounterMobileCarrier = 0;
api.MobileCarrier buildMobileCarrier() {
  var o = api.MobileCarrier();
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
    unittest.expect(o.countryCode, unittest.equals('foo'));
    unittest.expect(o.countryDartId, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterMobileCarrier--;
}

core.List<api.MobileCarrier> buildUnnamed4112() {
  var o = <api.MobileCarrier>[];
  o.add(buildMobileCarrier());
  o.add(buildMobileCarrier());
  return o;
}

void checkUnnamed4112(core.List<api.MobileCarrier> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMobileCarrier(o[0]);
  checkMobileCarrier(o[1]);
}

core.int buildCounterMobileCarriersListResponse = 0;
api.MobileCarriersListResponse buildMobileCarriersListResponse() {
  var o = api.MobileCarriersListResponse();
  buildCounterMobileCarriersListResponse++;
  if (buildCounterMobileCarriersListResponse < 3) {
    o.kind = 'foo';
    o.mobileCarriers = buildUnnamed4112();
  }
  buildCounterMobileCarriersListResponse--;
  return o;
}

void checkMobileCarriersListResponse(api.MobileCarriersListResponse o) {
  buildCounterMobileCarriersListResponse++;
  if (buildCounterMobileCarriersListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4112(o.mobileCarriers);
  }
  buildCounterMobileCarriersListResponse--;
}

core.int buildCounterObaIcon = 0;
api.ObaIcon buildObaIcon() {
  var o = api.ObaIcon();
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
    unittest.expect(o.iconClickThroughUrl, unittest.equals('foo'));
    unittest.expect(o.iconClickTrackingUrl, unittest.equals('foo'));
    unittest.expect(o.iconViewTrackingUrl, unittest.equals('foo'));
    unittest.expect(o.program, unittest.equals('foo'));
    unittest.expect(o.resourceUrl, unittest.equals('foo'));
    checkSize(o.size);
    unittest.expect(o.xPosition, unittest.equals('foo'));
    unittest.expect(o.yPosition, unittest.equals('foo'));
  }
  buildCounterObaIcon--;
}

core.List<core.String> buildUnnamed4113() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4113(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterObjectFilter = 0;
api.ObjectFilter buildObjectFilter() {
  var o = api.ObjectFilter();
  buildCounterObjectFilter++;
  if (buildCounterObjectFilter < 3) {
    o.kind = 'foo';
    o.objectIds = buildUnnamed4113();
    o.status = 'foo';
  }
  buildCounterObjectFilter--;
  return o;
}

void checkObjectFilter(api.ObjectFilter o) {
  buildCounterObjectFilter++;
  if (buildCounterObjectFilter < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4113(o.objectIds);
    unittest.expect(o.status, unittest.equals('foo'));
  }
  buildCounterObjectFilter--;
}

core.int buildCounterOffsetPosition = 0;
api.OffsetPosition buildOffsetPosition() {
  var o = api.OffsetPosition();
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
    unittest.expect(o.left, unittest.equals(42));
    unittest.expect(o.top, unittest.equals(42));
  }
  buildCounterOffsetPosition--;
}

core.int buildCounterOmnitureSettings = 0;
api.OmnitureSettings buildOmnitureSettings() {
  var o = api.OmnitureSettings();
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
    unittest.expect(o.omnitureCostDataEnabled, unittest.isTrue);
    unittest.expect(o.omnitureIntegrationEnabled, unittest.isTrue);
  }
  buildCounterOmnitureSettings--;
}

core.int buildCounterOperatingSystem = 0;
api.OperatingSystem buildOperatingSystem() {
  var o = api.OperatingSystem();
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
    unittest.expect(o.dartId, unittest.equals('foo'));
    unittest.expect(o.desktop, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.mobile, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterOperatingSystem--;
}

core.int buildCounterOperatingSystemVersion = 0;
api.OperatingSystemVersion buildOperatingSystemVersion() {
  var o = api.OperatingSystemVersion();
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
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.majorVersion, unittest.equals('foo'));
    unittest.expect(o.minorVersion, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkOperatingSystem(o.operatingSystem);
  }
  buildCounterOperatingSystemVersion--;
}

core.List<api.OperatingSystemVersion> buildUnnamed4114() {
  var o = <api.OperatingSystemVersion>[];
  o.add(buildOperatingSystemVersion());
  o.add(buildOperatingSystemVersion());
  return o;
}

void checkUnnamed4114(core.List<api.OperatingSystemVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperatingSystemVersion(o[0]);
  checkOperatingSystemVersion(o[1]);
}

core.int buildCounterOperatingSystemVersionsListResponse = 0;
api.OperatingSystemVersionsListResponse
    buildOperatingSystemVersionsListResponse() {
  var o = api.OperatingSystemVersionsListResponse();
  buildCounterOperatingSystemVersionsListResponse++;
  if (buildCounterOperatingSystemVersionsListResponse < 3) {
    o.kind = 'foo';
    o.operatingSystemVersions = buildUnnamed4114();
  }
  buildCounterOperatingSystemVersionsListResponse--;
  return o;
}

void checkOperatingSystemVersionsListResponse(
    api.OperatingSystemVersionsListResponse o) {
  buildCounterOperatingSystemVersionsListResponse++;
  if (buildCounterOperatingSystemVersionsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4114(o.operatingSystemVersions);
  }
  buildCounterOperatingSystemVersionsListResponse--;
}

core.List<api.OperatingSystem> buildUnnamed4115() {
  var o = <api.OperatingSystem>[];
  o.add(buildOperatingSystem());
  o.add(buildOperatingSystem());
  return o;
}

void checkUnnamed4115(core.List<api.OperatingSystem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperatingSystem(o[0]);
  checkOperatingSystem(o[1]);
}

core.int buildCounterOperatingSystemsListResponse = 0;
api.OperatingSystemsListResponse buildOperatingSystemsListResponse() {
  var o = api.OperatingSystemsListResponse();
  buildCounterOperatingSystemsListResponse++;
  if (buildCounterOperatingSystemsListResponse < 3) {
    o.kind = 'foo';
    o.operatingSystems = buildUnnamed4115();
  }
  buildCounterOperatingSystemsListResponse--;
  return o;
}

void checkOperatingSystemsListResponse(api.OperatingSystemsListResponse o) {
  buildCounterOperatingSystemsListResponse++;
  if (buildCounterOperatingSystemsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4115(o.operatingSystems);
  }
  buildCounterOperatingSystemsListResponse--;
}

core.int buildCounterOptimizationActivity = 0;
api.OptimizationActivity buildOptimizationActivity() {
  var o = api.OptimizationActivity();
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
    unittest.expect(o.floodlightActivityId, unittest.equals('foo'));
    checkDimensionValue(o.floodlightActivityIdDimensionValue);
    unittest.expect(o.weight, unittest.equals(42));
  }
  buildCounterOptimizationActivity--;
}

core.List<core.String> buildUnnamed4116() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4116(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.OrderContact> buildUnnamed4117() {
  var o = <api.OrderContact>[];
  o.add(buildOrderContact());
  o.add(buildOrderContact());
  return o;
}

void checkUnnamed4117(core.List<api.OrderContact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderContact(o[0]);
  checkOrderContact(o[1]);
}

core.List<core.String> buildUnnamed4118() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4118(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4119() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4119(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOrder = 0;
api.Order buildOrder() {
  var o = api.Order();
  buildCounterOrder++;
  if (buildCounterOrder < 3) {
    o.accountId = 'foo';
    o.advertiserId = 'foo';
    o.approverUserProfileIds = buildUnnamed4116();
    o.buyerInvoiceId = 'foo';
    o.buyerOrganizationName = 'foo';
    o.comments = 'foo';
    o.contacts = buildUnnamed4117();
    o.id = 'foo';
    o.kind = 'foo';
    o.lastModifiedInfo = buildLastModifiedInfo();
    o.name = 'foo';
    o.notes = 'foo';
    o.planningTermId = 'foo';
    o.projectId = 'foo';
    o.sellerOrderId = 'foo';
    o.sellerOrganizationName = 'foo';
    o.siteId = buildUnnamed4118();
    o.siteNames = buildUnnamed4119();
    o.subaccountId = 'foo';
    o.termsAndConditions = 'foo';
  }
  buildCounterOrder--;
  return o;
}

void checkOrder(api.Order o) {
  buildCounterOrder++;
  if (buildCounterOrder < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    checkUnnamed4116(o.approverUserProfileIds);
    unittest.expect(o.buyerInvoiceId, unittest.equals('foo'));
    unittest.expect(o.buyerOrganizationName, unittest.equals('foo'));
    unittest.expect(o.comments, unittest.equals('foo'));
    checkUnnamed4117(o.contacts);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkLastModifiedInfo(o.lastModifiedInfo);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.notes, unittest.equals('foo'));
    unittest.expect(o.planningTermId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.sellerOrderId, unittest.equals('foo'));
    unittest.expect(o.sellerOrganizationName, unittest.equals('foo'));
    checkUnnamed4118(o.siteId);
    checkUnnamed4119(o.siteNames);
    unittest.expect(o.subaccountId, unittest.equals('foo'));
    unittest.expect(o.termsAndConditions, unittest.equals('foo'));
  }
  buildCounterOrder--;
}

core.int buildCounterOrderContact = 0;
api.OrderContact buildOrderContact() {
  var o = api.OrderContact();
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
    unittest.expect(o.contactInfo, unittest.equals('foo'));
    unittest.expect(o.contactName, unittest.equals('foo'));
    unittest.expect(o.contactTitle, unittest.equals('foo'));
    unittest.expect(o.contactType, unittest.equals('foo'));
    unittest.expect(o.signatureUserProfileId, unittest.equals('foo'));
  }
  buildCounterOrderContact--;
}

core.List<core.String> buildUnnamed4120() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4120(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4121() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4121(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOrderDocument = 0;
api.OrderDocument buildOrderDocument() {
  var o = api.OrderDocument();
  buildCounterOrderDocument++;
  if (buildCounterOrderDocument < 3) {
    o.accountId = 'foo';
    o.advertiserId = 'foo';
    o.amendedOrderDocumentId = 'foo';
    o.approvedByUserProfileIds = buildUnnamed4120();
    o.cancelled = true;
    o.createdInfo = buildLastModifiedInfo();
    o.effectiveDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.id = 'foo';
    o.kind = 'foo';
    o.lastSentRecipients = buildUnnamed4121();
    o.lastSentTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.orderId = 'foo';
    o.projectId = 'foo';
    o.signed = true;
    o.subaccountId = 'foo';
    o.title = 'foo';
    o.type = 'foo';
  }
  buildCounterOrderDocument--;
  return o;
}

void checkOrderDocument(api.OrderDocument o) {
  buildCounterOrderDocument++;
  if (buildCounterOrderDocument < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    unittest.expect(o.amendedOrderDocumentId, unittest.equals('foo'));
    checkUnnamed4120(o.approvedByUserProfileIds);
    unittest.expect(o.cancelled, unittest.isTrue);
    checkLastModifiedInfo(o.createdInfo);
    unittest.expect(o.effectiveDate,
        unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4121(o.lastSentRecipients);
    unittest.expect(o.lastSentTime,
        unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.orderId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.signed, unittest.isTrue);
    unittest.expect(o.subaccountId, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterOrderDocument--;
}

core.List<api.OrderDocument> buildUnnamed4122() {
  var o = <api.OrderDocument>[];
  o.add(buildOrderDocument());
  o.add(buildOrderDocument());
  return o;
}

void checkUnnamed4122(core.List<api.OrderDocument> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderDocument(o[0]);
  checkOrderDocument(o[1]);
}

core.int buildCounterOrderDocumentsListResponse = 0;
api.OrderDocumentsListResponse buildOrderDocumentsListResponse() {
  var o = api.OrderDocumentsListResponse();
  buildCounterOrderDocumentsListResponse++;
  if (buildCounterOrderDocumentsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.orderDocuments = buildUnnamed4122();
  }
  buildCounterOrderDocumentsListResponse--;
  return o;
}

void checkOrderDocumentsListResponse(api.OrderDocumentsListResponse o) {
  buildCounterOrderDocumentsListResponse++;
  if (buildCounterOrderDocumentsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4122(o.orderDocuments);
  }
  buildCounterOrderDocumentsListResponse--;
}

core.List<api.Order> buildUnnamed4123() {
  var o = <api.Order>[];
  o.add(buildOrder());
  o.add(buildOrder());
  return o;
}

void checkUnnamed4123(core.List<api.Order> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrder(o[0]);
  checkOrder(o[1]);
}

core.int buildCounterOrdersListResponse = 0;
api.OrdersListResponse buildOrdersListResponse() {
  var o = api.OrdersListResponse();
  buildCounterOrdersListResponse++;
  if (buildCounterOrdersListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.orders = buildUnnamed4123();
  }
  buildCounterOrdersListResponse--;
  return o;
}

void checkOrdersListResponse(api.OrdersListResponse o) {
  buildCounterOrdersListResponse++;
  if (buildCounterOrdersListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4123(o.orders);
  }
  buildCounterOrdersListResponse--;
}

core.List<api.EventFilter> buildUnnamed4124() {
  var o = <api.EventFilter>[];
  o.add(buildEventFilter());
  o.add(buildEventFilter());
  return o;
}

void checkUnnamed4124(core.List<api.EventFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventFilter(o[0]);
  checkEventFilter(o[1]);
}

core.int buildCounterPathFilter = 0;
api.PathFilter buildPathFilter() {
  var o = api.PathFilter();
  buildCounterPathFilter++;
  if (buildCounterPathFilter < 3) {
    o.eventFilters = buildUnnamed4124();
    o.kind = 'foo';
    o.pathMatchPosition = 'foo';
  }
  buildCounterPathFilter--;
  return o;
}

void checkPathFilter(api.PathFilter o) {
  buildCounterPathFilter++;
  if (buildCounterPathFilter < 3) {
    checkUnnamed4124(o.eventFilters);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.pathMatchPosition, unittest.equals('foo'));
  }
  buildCounterPathFilter--;
}

core.List<api.Dimension> buildUnnamed4125() {
  var o = <api.Dimension>[];
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

void checkUnnamed4125(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Dimension> buildUnnamed4126() {
  var o = <api.Dimension>[];
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

void checkUnnamed4126(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Metric> buildUnnamed4127() {
  var o = <api.Metric>[];
  o.add(buildMetric());
  o.add(buildMetric());
  return o;
}

void checkUnnamed4127(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.List<api.Dimension> buildUnnamed4128() {
  var o = <api.Dimension>[];
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

void checkUnnamed4128(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.int buildCounterPathReportCompatibleFields = 0;
api.PathReportCompatibleFields buildPathReportCompatibleFields() {
  var o = api.PathReportCompatibleFields();
  buildCounterPathReportCompatibleFields++;
  if (buildCounterPathReportCompatibleFields < 3) {
    o.channelGroupings = buildUnnamed4125();
    o.dimensions = buildUnnamed4126();
    o.kind = 'foo';
    o.metrics = buildUnnamed4127();
    o.pathFilters = buildUnnamed4128();
  }
  buildCounterPathReportCompatibleFields--;
  return o;
}

void checkPathReportCompatibleFields(api.PathReportCompatibleFields o) {
  buildCounterPathReportCompatibleFields++;
  if (buildCounterPathReportCompatibleFields < 3) {
    checkUnnamed4125(o.channelGroupings);
    checkUnnamed4126(o.dimensions);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4127(o.metrics);
    checkUnnamed4128(o.pathFilters);
  }
  buildCounterPathReportCompatibleFields--;
}

core.List<core.String> buildUnnamed4129() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4129(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4130() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4130(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPathReportDimensionValue = 0;
api.PathReportDimensionValue buildPathReportDimensionValue() {
  var o = api.PathReportDimensionValue();
  buildCounterPathReportDimensionValue++;
  if (buildCounterPathReportDimensionValue < 3) {
    o.dimensionName = 'foo';
    o.ids = buildUnnamed4129();
    o.kind = 'foo';
    o.matchType = 'foo';
    o.values = buildUnnamed4130();
  }
  buildCounterPathReportDimensionValue--;
  return o;
}

void checkPathReportDimensionValue(api.PathReportDimensionValue o) {
  buildCounterPathReportDimensionValue++;
  if (buildCounterPathReportDimensionValue < 3) {
    unittest.expect(o.dimensionName, unittest.equals('foo'));
    checkUnnamed4129(o.ids);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.matchType, unittest.equals('foo'));
    checkUnnamed4130(o.values);
  }
  buildCounterPathReportDimensionValue--;
}

core.List<api.Dimension> buildUnnamed4131() {
  var o = <api.Dimension>[];
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

void checkUnnamed4131(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Dimension> buildUnnamed4132() {
  var o = <api.Dimension>[];
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

void checkUnnamed4132(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Metric> buildUnnamed4133() {
  var o = <api.Metric>[];
  o.add(buildMetric());
  o.add(buildMetric());
  return o;
}

void checkUnnamed4133(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.List<api.Dimension> buildUnnamed4134() {
  var o = <api.Dimension>[];
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

void checkUnnamed4134(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.int buildCounterPathToConversionReportCompatibleFields = 0;
api.PathToConversionReportCompatibleFields
    buildPathToConversionReportCompatibleFields() {
  var o = api.PathToConversionReportCompatibleFields();
  buildCounterPathToConversionReportCompatibleFields++;
  if (buildCounterPathToConversionReportCompatibleFields < 3) {
    o.conversionDimensions = buildUnnamed4131();
    o.customFloodlightVariables = buildUnnamed4132();
    o.kind = 'foo';
    o.metrics = buildUnnamed4133();
    o.perInteractionDimensions = buildUnnamed4134();
  }
  buildCounterPathToConversionReportCompatibleFields--;
  return o;
}

void checkPathToConversionReportCompatibleFields(
    api.PathToConversionReportCompatibleFields o) {
  buildCounterPathToConversionReportCompatibleFields++;
  if (buildCounterPathToConversionReportCompatibleFields < 3) {
    checkUnnamed4131(o.conversionDimensions);
    checkUnnamed4132(o.customFloodlightVariables);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4133(o.metrics);
    checkUnnamed4134(o.perInteractionDimensions);
  }
  buildCounterPathToConversionReportCompatibleFields--;
}

core.List<api.Size> buildUnnamed4135() {
  var o = <api.Size>[];
  o.add(buildSize());
  o.add(buildSize());
  return o;
}

void checkUnnamed4135(core.List<api.Size> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSize(o[0]);
  checkSize(o[1]);
}

core.List<core.String> buildUnnamed4136() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4136(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPlacement = 0;
api.Placement buildPlacement() {
  var o = api.Placement();
  buildCounterPlacement++;
  if (buildCounterPlacement < 3) {
    o.accountId = 'foo';
    o.adBlockingOptOut = true;
    o.additionalSizes = buildUnnamed4135();
    o.advertiserId = 'foo';
    o.advertiserIdDimensionValue = buildDimensionValue();
    o.archived = true;
    o.campaignId = 'foo';
    o.campaignIdDimensionValue = buildDimensionValue();
    o.comment = 'foo';
    o.compatibility = 'foo';
    o.contentCategoryId = 'foo';
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
    o.size = buildSize();
    o.sslRequired = true;
    o.status = 'foo';
    o.subaccountId = 'foo';
    o.tagFormats = buildUnnamed4136();
    o.tagSetting = buildTagSetting();
    o.videoActiveViewOptOut = true;
    o.videoSettings = buildVideoSettings();
    o.vpaidAdapterChoice = 'foo';
  }
  buildCounterPlacement--;
  return o;
}

void checkPlacement(api.Placement o) {
  buildCounterPlacement++;
  if (buildCounterPlacement < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.adBlockingOptOut, unittest.isTrue);
    checkUnnamed4135(o.additionalSizes);
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    checkDimensionValue(o.advertiserIdDimensionValue);
    unittest.expect(o.archived, unittest.isTrue);
    unittest.expect(o.campaignId, unittest.equals('foo'));
    checkDimensionValue(o.campaignIdDimensionValue);
    unittest.expect(o.comment, unittest.equals('foo'));
    unittest.expect(o.compatibility, unittest.equals('foo'));
    unittest.expect(o.contentCategoryId, unittest.equals('foo'));
    checkLastModifiedInfo(o.createInfo);
    unittest.expect(o.directorySiteId, unittest.equals('foo'));
    checkDimensionValue(o.directorySiteIdDimensionValue);
    unittest.expect(o.externalId, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkDimensionValue(o.idDimensionValue);
    unittest.expect(o.keyName, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkLastModifiedInfo(o.lastModifiedInfo);
    checkLookbackConfiguration(o.lookbackConfiguration);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.paymentApproved, unittest.isTrue);
    unittest.expect(o.paymentSource, unittest.equals('foo'));
    unittest.expect(o.placementGroupId, unittest.equals('foo'));
    checkDimensionValue(o.placementGroupIdDimensionValue);
    unittest.expect(o.placementStrategyId, unittest.equals('foo'));
    checkPricingSchedule(o.pricingSchedule);
    unittest.expect(o.primary, unittest.isTrue);
    checkLastModifiedInfo(o.publisherUpdateInfo);
    unittest.expect(o.siteId, unittest.equals('foo'));
    checkDimensionValue(o.siteIdDimensionValue);
    checkSize(o.size);
    unittest.expect(o.sslRequired, unittest.isTrue);
    unittest.expect(o.status, unittest.equals('foo'));
    unittest.expect(o.subaccountId, unittest.equals('foo'));
    checkUnnamed4136(o.tagFormats);
    checkTagSetting(o.tagSetting);
    unittest.expect(o.videoActiveViewOptOut, unittest.isTrue);
    checkVideoSettings(o.videoSettings);
    unittest.expect(o.vpaidAdapterChoice, unittest.equals('foo'));
  }
  buildCounterPlacement--;
}

core.int buildCounterPlacementAssignment = 0;
api.PlacementAssignment buildPlacementAssignment() {
  var o = api.PlacementAssignment();
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
    unittest.expect(o.active, unittest.isTrue);
    unittest.expect(o.placementId, unittest.equals('foo'));
    checkDimensionValue(o.placementIdDimensionValue);
    unittest.expect(o.sslRequired, unittest.isTrue);
  }
  buildCounterPlacementAssignment--;
}

core.List<core.String> buildUnnamed4137() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4137(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPlacementGroup = 0;
api.PlacementGroup buildPlacementGroup() {
  var o = api.PlacementGroup();
  buildCounterPlacementGroup++;
  if (buildCounterPlacementGroup < 3) {
    o.accountId = 'foo';
    o.advertiserId = 'foo';
    o.advertiserIdDimensionValue = buildDimensionValue();
    o.archived = true;
    o.campaignId = 'foo';
    o.campaignIdDimensionValue = buildDimensionValue();
    o.childPlacementIds = buildUnnamed4137();
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
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    checkDimensionValue(o.advertiserIdDimensionValue);
    unittest.expect(o.archived, unittest.isTrue);
    unittest.expect(o.campaignId, unittest.equals('foo'));
    checkDimensionValue(o.campaignIdDimensionValue);
    checkUnnamed4137(o.childPlacementIds);
    unittest.expect(o.comment, unittest.equals('foo'));
    unittest.expect(o.contentCategoryId, unittest.equals('foo'));
    checkLastModifiedInfo(o.createInfo);
    unittest.expect(o.directorySiteId, unittest.equals('foo'));
    checkDimensionValue(o.directorySiteIdDimensionValue);
    unittest.expect(o.externalId, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkDimensionValue(o.idDimensionValue);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkLastModifiedInfo(o.lastModifiedInfo);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.placementGroupType, unittest.equals('foo'));
    unittest.expect(o.placementStrategyId, unittest.equals('foo'));
    checkPricingSchedule(o.pricingSchedule);
    unittest.expect(o.primaryPlacementId, unittest.equals('foo'));
    checkDimensionValue(o.primaryPlacementIdDimensionValue);
    unittest.expect(o.siteId, unittest.equals('foo'));
    checkDimensionValue(o.siteIdDimensionValue);
    unittest.expect(o.subaccountId, unittest.equals('foo'));
  }
  buildCounterPlacementGroup--;
}

core.List<api.PlacementGroup> buildUnnamed4138() {
  var o = <api.PlacementGroup>[];
  o.add(buildPlacementGroup());
  o.add(buildPlacementGroup());
  return o;
}

void checkUnnamed4138(core.List<api.PlacementGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlacementGroup(o[0]);
  checkPlacementGroup(o[1]);
}

core.int buildCounterPlacementGroupsListResponse = 0;
api.PlacementGroupsListResponse buildPlacementGroupsListResponse() {
  var o = api.PlacementGroupsListResponse();
  buildCounterPlacementGroupsListResponse++;
  if (buildCounterPlacementGroupsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.placementGroups = buildUnnamed4138();
  }
  buildCounterPlacementGroupsListResponse--;
  return o;
}

void checkPlacementGroupsListResponse(api.PlacementGroupsListResponse o) {
  buildCounterPlacementGroupsListResponse++;
  if (buildCounterPlacementGroupsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4138(o.placementGroups);
  }
  buildCounterPlacementGroupsListResponse--;
}

core.List<api.PlacementStrategy> buildUnnamed4139() {
  var o = <api.PlacementStrategy>[];
  o.add(buildPlacementStrategy());
  o.add(buildPlacementStrategy());
  return o;
}

void checkUnnamed4139(core.List<api.PlacementStrategy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlacementStrategy(o[0]);
  checkPlacementStrategy(o[1]);
}

core.int buildCounterPlacementStrategiesListResponse = 0;
api.PlacementStrategiesListResponse buildPlacementStrategiesListResponse() {
  var o = api.PlacementStrategiesListResponse();
  buildCounterPlacementStrategiesListResponse++;
  if (buildCounterPlacementStrategiesListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.placementStrategies = buildUnnamed4139();
  }
  buildCounterPlacementStrategiesListResponse--;
  return o;
}

void checkPlacementStrategiesListResponse(
    api.PlacementStrategiesListResponse o) {
  buildCounterPlacementStrategiesListResponse++;
  if (buildCounterPlacementStrategiesListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4139(o.placementStrategies);
  }
  buildCounterPlacementStrategiesListResponse--;
}

core.int buildCounterPlacementStrategy = 0;
api.PlacementStrategy buildPlacementStrategy() {
  var o = api.PlacementStrategy();
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
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterPlacementStrategy--;
}

core.List<api.TagData> buildUnnamed4140() {
  var o = <api.TagData>[];
  o.add(buildTagData());
  o.add(buildTagData());
  return o;
}

void checkUnnamed4140(core.List<api.TagData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTagData(o[0]);
  checkTagData(o[1]);
}

core.int buildCounterPlacementTag = 0;
api.PlacementTag buildPlacementTag() {
  var o = api.PlacementTag();
  buildCounterPlacementTag++;
  if (buildCounterPlacementTag < 3) {
    o.placementId = 'foo';
    o.tagDatas = buildUnnamed4140();
  }
  buildCounterPlacementTag--;
  return o;
}

void checkPlacementTag(api.PlacementTag o) {
  buildCounterPlacementTag++;
  if (buildCounterPlacementTag < 3) {
    unittest.expect(o.placementId, unittest.equals('foo'));
    checkUnnamed4140(o.tagDatas);
  }
  buildCounterPlacementTag--;
}

core.List<api.PlacementTag> buildUnnamed4141() {
  var o = <api.PlacementTag>[];
  o.add(buildPlacementTag());
  o.add(buildPlacementTag());
  return o;
}

void checkUnnamed4141(core.List<api.PlacementTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlacementTag(o[0]);
  checkPlacementTag(o[1]);
}

core.int buildCounterPlacementsGenerateTagsResponse = 0;
api.PlacementsGenerateTagsResponse buildPlacementsGenerateTagsResponse() {
  var o = api.PlacementsGenerateTagsResponse();
  buildCounterPlacementsGenerateTagsResponse++;
  if (buildCounterPlacementsGenerateTagsResponse < 3) {
    o.kind = 'foo';
    o.placementTags = buildUnnamed4141();
  }
  buildCounterPlacementsGenerateTagsResponse--;
  return o;
}

void checkPlacementsGenerateTagsResponse(api.PlacementsGenerateTagsResponse o) {
  buildCounterPlacementsGenerateTagsResponse++;
  if (buildCounterPlacementsGenerateTagsResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4141(o.placementTags);
  }
  buildCounterPlacementsGenerateTagsResponse--;
}

core.List<api.Placement> buildUnnamed4142() {
  var o = <api.Placement>[];
  o.add(buildPlacement());
  o.add(buildPlacement());
  return o;
}

void checkUnnamed4142(core.List<api.Placement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlacement(o[0]);
  checkPlacement(o[1]);
}

core.int buildCounterPlacementsListResponse = 0;
api.PlacementsListResponse buildPlacementsListResponse() {
  var o = api.PlacementsListResponse();
  buildCounterPlacementsListResponse++;
  if (buildCounterPlacementsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.placements = buildUnnamed4142();
  }
  buildCounterPlacementsListResponse--;
  return o;
}

void checkPlacementsListResponse(api.PlacementsListResponse o) {
  buildCounterPlacementsListResponse++;
  if (buildCounterPlacementsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4142(o.placements);
  }
  buildCounterPlacementsListResponse--;
}

core.int buildCounterPlatformType = 0;
api.PlatformType buildPlatformType() {
  var o = api.PlatformType();
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
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterPlatformType--;
}

core.List<api.PlatformType> buildUnnamed4143() {
  var o = <api.PlatformType>[];
  o.add(buildPlatformType());
  o.add(buildPlatformType());
  return o;
}

void checkUnnamed4143(core.List<api.PlatformType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlatformType(o[0]);
  checkPlatformType(o[1]);
}

core.int buildCounterPlatformTypesListResponse = 0;
api.PlatformTypesListResponse buildPlatformTypesListResponse() {
  var o = api.PlatformTypesListResponse();
  buildCounterPlatformTypesListResponse++;
  if (buildCounterPlatformTypesListResponse < 3) {
    o.kind = 'foo';
    o.platformTypes = buildUnnamed4143();
  }
  buildCounterPlatformTypesListResponse--;
  return o;
}

void checkPlatformTypesListResponse(api.PlatformTypesListResponse o) {
  buildCounterPlatformTypesListResponse++;
  if (buildCounterPlatformTypesListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4143(o.platformTypes);
  }
  buildCounterPlatformTypesListResponse--;
}

core.int buildCounterPopupWindowProperties = 0;
api.PopupWindowProperties buildPopupWindowProperties() {
  var o = api.PopupWindowProperties();
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
    checkSize(o.dimension);
    checkOffsetPosition(o.offset);
    unittest.expect(o.positionType, unittest.equals('foo'));
    unittest.expect(o.showAddressBar, unittest.isTrue);
    unittest.expect(o.showMenuBar, unittest.isTrue);
    unittest.expect(o.showScrollBar, unittest.isTrue);
    unittest.expect(o.showStatusBar, unittest.isTrue);
    unittest.expect(o.showToolBar, unittest.isTrue);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterPopupWindowProperties--;
}

core.int buildCounterPostalCode = 0;
api.PostalCode buildPostalCode() {
  var o = api.PostalCode();
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
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.countryCode, unittest.equals('foo'));
    unittest.expect(o.countryDartId, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterPostalCode--;
}

core.List<api.PostalCode> buildUnnamed4144() {
  var o = <api.PostalCode>[];
  o.add(buildPostalCode());
  o.add(buildPostalCode());
  return o;
}

void checkUnnamed4144(core.List<api.PostalCode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPostalCode(o[0]);
  checkPostalCode(o[1]);
}

core.int buildCounterPostalCodesListResponse = 0;
api.PostalCodesListResponse buildPostalCodesListResponse() {
  var o = api.PostalCodesListResponse();
  buildCounterPostalCodesListResponse++;
  if (buildCounterPostalCodesListResponse < 3) {
    o.kind = 'foo';
    o.postalCodes = buildUnnamed4144();
  }
  buildCounterPostalCodesListResponse--;
  return o;
}

void checkPostalCodesListResponse(api.PostalCodesListResponse o) {
  buildCounterPostalCodesListResponse++;
  if (buildCounterPostalCodesListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4144(o.postalCodes);
  }
  buildCounterPostalCodesListResponse--;
}

core.List<api.Flight> buildUnnamed4145() {
  var o = <api.Flight>[];
  o.add(buildFlight());
  o.add(buildFlight());
  return o;
}

void checkUnnamed4145(core.List<api.Flight> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFlight(o[0]);
  checkFlight(o[1]);
}

core.int buildCounterPricing = 0;
api.Pricing buildPricing() {
  var o = api.Pricing();
  buildCounterPricing++;
  if (buildCounterPricing < 3) {
    o.capCostType = 'foo';
    o.endDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.flights = buildUnnamed4145();
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
    unittest.expect(o.capCostType, unittest.equals('foo'));
    unittest.expect(
        o.endDate, unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    checkUnnamed4145(o.flights);
    unittest.expect(o.groupType, unittest.equals('foo'));
    unittest.expect(o.pricingType, unittest.equals('foo'));
    unittest.expect(o.startDate,
        unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
  }
  buildCounterPricing--;
}

core.List<api.PricingSchedulePricingPeriod> buildUnnamed4146() {
  var o = <api.PricingSchedulePricingPeriod>[];
  o.add(buildPricingSchedulePricingPeriod());
  o.add(buildPricingSchedulePricingPeriod());
  return o;
}

void checkUnnamed4146(core.List<api.PricingSchedulePricingPeriod> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPricingSchedulePricingPeriod(o[0]);
  checkPricingSchedulePricingPeriod(o[1]);
}

core.int buildCounterPricingSchedule = 0;
api.PricingSchedule buildPricingSchedule() {
  var o = api.PricingSchedule();
  buildCounterPricingSchedule++;
  if (buildCounterPricingSchedule < 3) {
    o.capCostOption = 'foo';
    o.endDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.flighted = true;
    o.floodlightActivityId = 'foo';
    o.pricingPeriods = buildUnnamed4146();
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
    unittest.expect(o.capCostOption, unittest.equals('foo'));
    unittest.expect(
        o.endDate, unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.flighted, unittest.isTrue);
    unittest.expect(o.floodlightActivityId, unittest.equals('foo'));
    checkUnnamed4146(o.pricingPeriods);
    unittest.expect(o.pricingType, unittest.equals('foo'));
    unittest.expect(o.startDate,
        unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.testingStartDate,
        unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
  }
  buildCounterPricingSchedule--;
}

core.int buildCounterPricingSchedulePricingPeriod = 0;
api.PricingSchedulePricingPeriod buildPricingSchedulePricingPeriod() {
  var o = api.PricingSchedulePricingPeriod();
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
        o.endDate, unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.pricingComment, unittest.equals('foo'));
    unittest.expect(o.rateOrCostNanos, unittest.equals('foo'));
    unittest.expect(o.startDate,
        unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.units, unittest.equals('foo'));
  }
  buildCounterPricingSchedulePricingPeriod--;
}

core.int buildCounterProject = 0;
api.Project buildProject() {
  var o = api.Project();
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
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    unittest.expect(o.audienceAgeGroup, unittest.equals('foo'));
    unittest.expect(o.audienceGender, unittest.equals('foo'));
    unittest.expect(o.budget, unittest.equals('foo'));
    unittest.expect(o.clientBillingCode, unittest.equals('foo'));
    unittest.expect(o.clientName, unittest.equals('foo'));
    unittest.expect(
        o.endDate, unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkLastModifiedInfo(o.lastModifiedInfo);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.overview, unittest.equals('foo'));
    unittest.expect(o.startDate,
        unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.subaccountId, unittest.equals('foo'));
    unittest.expect(o.targetClicks, unittest.equals('foo'));
    unittest.expect(o.targetConversions, unittest.equals('foo'));
    unittest.expect(o.targetCpaNanos, unittest.equals('foo'));
    unittest.expect(o.targetCpcNanos, unittest.equals('foo'));
    unittest.expect(o.targetCpmActiveViewNanos, unittest.equals('foo'));
    unittest.expect(o.targetCpmNanos, unittest.equals('foo'));
    unittest.expect(o.targetImpressions, unittest.equals('foo'));
  }
  buildCounterProject--;
}

core.List<api.Project> buildUnnamed4147() {
  var o = <api.Project>[];
  o.add(buildProject());
  o.add(buildProject());
  return o;
}

void checkUnnamed4147(core.List<api.Project> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProject(o[0]);
  checkProject(o[1]);
}

core.int buildCounterProjectsListResponse = 0;
api.ProjectsListResponse buildProjectsListResponse() {
  var o = api.ProjectsListResponse();
  buildCounterProjectsListResponse++;
  if (buildCounterProjectsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.projects = buildUnnamed4147();
  }
  buildCounterProjectsListResponse--;
  return o;
}

void checkProjectsListResponse(api.ProjectsListResponse o) {
  buildCounterProjectsListResponse++;
  if (buildCounterProjectsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4147(o.projects);
  }
  buildCounterProjectsListResponse--;
}

core.List<api.Dimension> buildUnnamed4148() {
  var o = <api.Dimension>[];
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

void checkUnnamed4148(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Dimension> buildUnnamed4149() {
  var o = <api.Dimension>[];
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

void checkUnnamed4149(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Metric> buildUnnamed4150() {
  var o = <api.Metric>[];
  o.add(buildMetric());
  o.add(buildMetric());
  return o;
}

void checkUnnamed4150(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.List<api.Metric> buildUnnamed4151() {
  var o = <api.Metric>[];
  o.add(buildMetric());
  o.add(buildMetric());
  return o;
}

void checkUnnamed4151(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.List<api.Metric> buildUnnamed4152() {
  var o = <api.Metric>[];
  o.add(buildMetric());
  o.add(buildMetric());
  return o;
}

void checkUnnamed4152(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.int buildCounterReachReportCompatibleFields = 0;
api.ReachReportCompatibleFields buildReachReportCompatibleFields() {
  var o = api.ReachReportCompatibleFields();
  buildCounterReachReportCompatibleFields++;
  if (buildCounterReachReportCompatibleFields < 3) {
    o.dimensionFilters = buildUnnamed4148();
    o.dimensions = buildUnnamed4149();
    o.kind = 'foo';
    o.metrics = buildUnnamed4150();
    o.pivotedActivityMetrics = buildUnnamed4151();
    o.reachByFrequencyMetrics = buildUnnamed4152();
  }
  buildCounterReachReportCompatibleFields--;
  return o;
}

void checkReachReportCompatibleFields(api.ReachReportCompatibleFields o) {
  buildCounterReachReportCompatibleFields++;
  if (buildCounterReachReportCompatibleFields < 3) {
    checkUnnamed4148(o.dimensionFilters);
    checkUnnamed4149(o.dimensions);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4150(o.metrics);
    checkUnnamed4151(o.pivotedActivityMetrics);
    checkUnnamed4152(o.reachByFrequencyMetrics);
  }
  buildCounterReachReportCompatibleFields--;
}

core.int buildCounterRecipient = 0;
api.Recipient buildRecipient() {
  var o = api.Recipient();
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
    unittest.expect(o.deliveryType, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterRecipient--;
}

core.int buildCounterRegion = 0;
api.Region buildRegion() {
  var o = api.Region();
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
    unittest.expect(o.countryCode, unittest.equals('foo'));
    unittest.expect(o.countryDartId, unittest.equals('foo'));
    unittest.expect(o.dartId, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.regionCode, unittest.equals('foo'));
  }
  buildCounterRegion--;
}

core.List<api.Region> buildUnnamed4153() {
  var o = <api.Region>[];
  o.add(buildRegion());
  o.add(buildRegion());
  return o;
}

void checkUnnamed4153(core.List<api.Region> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegion(o[0]);
  checkRegion(o[1]);
}

core.int buildCounterRegionsListResponse = 0;
api.RegionsListResponse buildRegionsListResponse() {
  var o = api.RegionsListResponse();
  buildCounterRegionsListResponse++;
  if (buildCounterRegionsListResponse < 3) {
    o.kind = 'foo';
    o.regions = buildUnnamed4153();
  }
  buildCounterRegionsListResponse--;
  return o;
}

void checkRegionsListResponse(api.RegionsListResponse o) {
  buildCounterRegionsListResponse++;
  if (buildCounterRegionsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4153(o.regions);
  }
  buildCounterRegionsListResponse--;
}

core.int buildCounterRemarketingList = 0;
api.RemarketingList buildRemarketingList() {
  var o = api.RemarketingList();
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
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.active, unittest.isTrue);
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    checkDimensionValue(o.advertiserIdDimensionValue);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lifeSpan, unittest.equals('foo'));
    checkListPopulationRule(o.listPopulationRule);
    unittest.expect(o.listSize, unittest.equals('foo'));
    unittest.expect(o.listSource, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.subaccountId, unittest.equals('foo'));
  }
  buildCounterRemarketingList--;
}

core.List<core.String> buildUnnamed4154() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4154(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4155() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4155(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRemarketingListShare = 0;
api.RemarketingListShare buildRemarketingListShare() {
  var o = api.RemarketingListShare();
  buildCounterRemarketingListShare++;
  if (buildCounterRemarketingListShare < 3) {
    o.kind = 'foo';
    o.remarketingListId = 'foo';
    o.sharedAccountIds = buildUnnamed4154();
    o.sharedAdvertiserIds = buildUnnamed4155();
  }
  buildCounterRemarketingListShare--;
  return o;
}

void checkRemarketingListShare(api.RemarketingListShare o) {
  buildCounterRemarketingListShare++;
  if (buildCounterRemarketingListShare < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.remarketingListId, unittest.equals('foo'));
    checkUnnamed4154(o.sharedAccountIds);
    checkUnnamed4155(o.sharedAdvertiserIds);
  }
  buildCounterRemarketingListShare--;
}

core.List<api.RemarketingList> buildUnnamed4156() {
  var o = <api.RemarketingList>[];
  o.add(buildRemarketingList());
  o.add(buildRemarketingList());
  return o;
}

void checkUnnamed4156(core.List<api.RemarketingList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRemarketingList(o[0]);
  checkRemarketingList(o[1]);
}

core.int buildCounterRemarketingListsListResponse = 0;
api.RemarketingListsListResponse buildRemarketingListsListResponse() {
  var o = api.RemarketingListsListResponse();
  buildCounterRemarketingListsListResponse++;
  if (buildCounterRemarketingListsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.remarketingLists = buildUnnamed4156();
  }
  buildCounterRemarketingListsListResponse--;
  return o;
}

void checkRemarketingListsListResponse(api.RemarketingListsListResponse o) {
  buildCounterRemarketingListsListResponse++;
  if (buildCounterRemarketingListsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4156(o.remarketingLists);
  }
  buildCounterRemarketingListsListResponse--;
}

core.List<api.DimensionValue> buildUnnamed4157() {
  var o = <api.DimensionValue>[];
  o.add(buildDimensionValue());
  o.add(buildDimensionValue());
  return o;
}

void checkUnnamed4157(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

core.List<api.SortedDimension> buildUnnamed4158() {
  var o = <api.SortedDimension>[];
  o.add(buildSortedDimension());
  o.add(buildSortedDimension());
  return o;
}

void checkUnnamed4158(core.List<api.SortedDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortedDimension(o[0]);
  checkSortedDimension(o[1]);
}

core.List<core.String> buildUnnamed4159() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4159(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReportCriteria = 0;
api.ReportCriteria buildReportCriteria() {
  var o = api.ReportCriteria();
  buildCounterReportCriteria++;
  if (buildCounterReportCriteria < 3) {
    o.activities = buildActivities();
    o.customRichMediaEvents = buildCustomRichMediaEvents();
    o.dateRange = buildDateRange();
    o.dimensionFilters = buildUnnamed4157();
    o.dimensions = buildUnnamed4158();
    o.metricNames = buildUnnamed4159();
  }
  buildCounterReportCriteria--;
  return o;
}

void checkReportCriteria(api.ReportCriteria o) {
  buildCounterReportCriteria++;
  if (buildCounterReportCriteria < 3) {
    checkActivities(o.activities);
    checkCustomRichMediaEvents(o.customRichMediaEvents);
    checkDateRange(o.dateRange);
    checkUnnamed4157(o.dimensionFilters);
    checkUnnamed4158(o.dimensions);
    checkUnnamed4159(o.metricNames);
  }
  buildCounterReportCriteria--;
}

core.List<api.SortedDimension> buildUnnamed4160() {
  var o = <api.SortedDimension>[];
  o.add(buildSortedDimension());
  o.add(buildSortedDimension());
  return o;
}

void checkUnnamed4160(core.List<api.SortedDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortedDimension(o[0]);
  checkSortedDimension(o[1]);
}

core.List<api.DimensionValue> buildUnnamed4161() {
  var o = <api.DimensionValue>[];
  o.add(buildDimensionValue());
  o.add(buildDimensionValue());
  return o;
}

void checkUnnamed4161(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

core.List<core.String> buildUnnamed4162() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4162(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4163() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4163(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReportCrossDimensionReachCriteria = 0;
api.ReportCrossDimensionReachCriteria buildReportCrossDimensionReachCriteria() {
  var o = api.ReportCrossDimensionReachCriteria();
  buildCounterReportCrossDimensionReachCriteria++;
  if (buildCounterReportCrossDimensionReachCriteria < 3) {
    o.breakdown = buildUnnamed4160();
    o.dateRange = buildDateRange();
    o.dimension = 'foo';
    o.dimensionFilters = buildUnnamed4161();
    o.metricNames = buildUnnamed4162();
    o.overlapMetricNames = buildUnnamed4163();
    o.pivoted = true;
  }
  buildCounterReportCrossDimensionReachCriteria--;
  return o;
}

void checkReportCrossDimensionReachCriteria(
    api.ReportCrossDimensionReachCriteria o) {
  buildCounterReportCrossDimensionReachCriteria++;
  if (buildCounterReportCrossDimensionReachCriteria < 3) {
    checkUnnamed4160(o.breakdown);
    checkDateRange(o.dateRange);
    unittest.expect(o.dimension, unittest.equals('foo'));
    checkUnnamed4161(o.dimensionFilters);
    checkUnnamed4162(o.metricNames);
    checkUnnamed4163(o.overlapMetricNames);
    unittest.expect(o.pivoted, unittest.isTrue);
  }
  buildCounterReportCrossDimensionReachCriteria--;
}

core.List<api.Recipient> buildUnnamed4164() {
  var o = <api.Recipient>[];
  o.add(buildRecipient());
  o.add(buildRecipient());
  return o;
}

void checkUnnamed4164(core.List<api.Recipient> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRecipient(o[0]);
  checkRecipient(o[1]);
}

core.int buildCounterReportDelivery = 0;
api.ReportDelivery buildReportDelivery() {
  var o = api.ReportDelivery();
  buildCounterReportDelivery++;
  if (buildCounterReportDelivery < 3) {
    o.emailOwner = true;
    o.emailOwnerDeliveryType = 'foo';
    o.message = 'foo';
    o.recipients = buildUnnamed4164();
  }
  buildCounterReportDelivery--;
  return o;
}

void checkReportDelivery(api.ReportDelivery o) {
  buildCounterReportDelivery++;
  if (buildCounterReportDelivery < 3) {
    unittest.expect(o.emailOwner, unittest.isTrue);
    unittest.expect(o.emailOwnerDeliveryType, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
    checkUnnamed4164(o.recipients);
  }
  buildCounterReportDelivery--;
}

core.List<api.DimensionValue> buildUnnamed4165() {
  var o = <api.DimensionValue>[];
  o.add(buildDimensionValue());
  o.add(buildDimensionValue());
  return o;
}

void checkUnnamed4165(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

core.List<api.DimensionValue> buildUnnamed4166() {
  var o = <api.DimensionValue>[];
  o.add(buildDimensionValue());
  o.add(buildDimensionValue());
  return o;
}

void checkUnnamed4166(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

core.List<api.SortedDimension> buildUnnamed4167() {
  var o = <api.SortedDimension>[];
  o.add(buildSortedDimension());
  o.add(buildSortedDimension());
  return o;
}

void checkUnnamed4167(core.List<api.SortedDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortedDimension(o[0]);
  checkSortedDimension(o[1]);
}

core.List<core.String> buildUnnamed4168() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4168(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReportFloodlightCriteriaReportProperties = 0;
api.ReportFloodlightCriteriaReportProperties
    buildReportFloodlightCriteriaReportProperties() {
  var o = api.ReportFloodlightCriteriaReportProperties();
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
    unittest.expect(o.includeAttributedIPConversions, unittest.isTrue);
    unittest.expect(o.includeUnattributedCookieConversions, unittest.isTrue);
    unittest.expect(o.includeUnattributedIPConversions, unittest.isTrue);
  }
  buildCounterReportFloodlightCriteriaReportProperties--;
}

core.int buildCounterReportFloodlightCriteria = 0;
api.ReportFloodlightCriteria buildReportFloodlightCriteria() {
  var o = api.ReportFloodlightCriteria();
  buildCounterReportFloodlightCriteria++;
  if (buildCounterReportFloodlightCriteria < 3) {
    o.customRichMediaEvents = buildUnnamed4165();
    o.dateRange = buildDateRange();
    o.dimensionFilters = buildUnnamed4166();
    o.dimensions = buildUnnamed4167();
    o.floodlightConfigId = buildDimensionValue();
    o.metricNames = buildUnnamed4168();
    o.reportProperties = buildReportFloodlightCriteriaReportProperties();
  }
  buildCounterReportFloodlightCriteria--;
  return o;
}

void checkReportFloodlightCriteria(api.ReportFloodlightCriteria o) {
  buildCounterReportFloodlightCriteria++;
  if (buildCounterReportFloodlightCriteria < 3) {
    checkUnnamed4165(o.customRichMediaEvents);
    checkDateRange(o.dateRange);
    checkUnnamed4166(o.dimensionFilters);
    checkUnnamed4167(o.dimensions);
    checkDimensionValue(o.floodlightConfigId);
    checkUnnamed4168(o.metricNames);
    checkReportFloodlightCriteriaReportProperties(o.reportProperties);
  }
  buildCounterReportFloodlightCriteria--;
}

core.List<api.DimensionValue> buildUnnamed4169() {
  var o = <api.DimensionValue>[];
  o.add(buildDimensionValue());
  o.add(buildDimensionValue());
  return o;
}

void checkUnnamed4169(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

core.List<api.SortedDimension> buildUnnamed4170() {
  var o = <api.SortedDimension>[];
  o.add(buildSortedDimension());
  o.add(buildSortedDimension());
  return o;
}

void checkUnnamed4170(core.List<api.SortedDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortedDimension(o[0]);
  checkSortedDimension(o[1]);
}

core.List<core.String> buildUnnamed4171() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4171(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.PathFilter> buildUnnamed4172() {
  var o = <api.PathFilter>[];
  o.add(buildPathFilter());
  o.add(buildPathFilter());
  return o;
}

void checkUnnamed4172(core.List<api.PathFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPathFilter(o[0]);
  checkPathFilter(o[1]);
}

core.int buildCounterReportPathAttributionCriteria = 0;
api.ReportPathAttributionCriteria buildReportPathAttributionCriteria() {
  var o = api.ReportPathAttributionCriteria();
  buildCounterReportPathAttributionCriteria++;
  if (buildCounterReportPathAttributionCriteria < 3) {
    o.activityFilters = buildUnnamed4169();
    o.customChannelGrouping = buildChannelGrouping();
    o.dateRange = buildDateRange();
    o.dimensions = buildUnnamed4170();
    o.floodlightConfigId = buildDimensionValue();
    o.metricNames = buildUnnamed4171();
    o.pathFilters = buildUnnamed4172();
  }
  buildCounterReportPathAttributionCriteria--;
  return o;
}

void checkReportPathAttributionCriteria(api.ReportPathAttributionCriteria o) {
  buildCounterReportPathAttributionCriteria++;
  if (buildCounterReportPathAttributionCriteria < 3) {
    checkUnnamed4169(o.activityFilters);
    checkChannelGrouping(o.customChannelGrouping);
    checkDateRange(o.dateRange);
    checkUnnamed4170(o.dimensions);
    checkDimensionValue(o.floodlightConfigId);
    checkUnnamed4171(o.metricNames);
    checkUnnamed4172(o.pathFilters);
  }
  buildCounterReportPathAttributionCriteria--;
}

core.List<api.DimensionValue> buildUnnamed4173() {
  var o = <api.DimensionValue>[];
  o.add(buildDimensionValue());
  o.add(buildDimensionValue());
  return o;
}

void checkUnnamed4173(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

core.List<api.SortedDimension> buildUnnamed4174() {
  var o = <api.SortedDimension>[];
  o.add(buildSortedDimension());
  o.add(buildSortedDimension());
  return o;
}

void checkUnnamed4174(core.List<api.SortedDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortedDimension(o[0]);
  checkSortedDimension(o[1]);
}

core.List<core.String> buildUnnamed4175() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4175(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.PathFilter> buildUnnamed4176() {
  var o = <api.PathFilter>[];
  o.add(buildPathFilter());
  o.add(buildPathFilter());
  return o;
}

void checkUnnamed4176(core.List<api.PathFilter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPathFilter(o[0]);
  checkPathFilter(o[1]);
}

core.int buildCounterReportPathCriteria = 0;
api.ReportPathCriteria buildReportPathCriteria() {
  var o = api.ReportPathCriteria();
  buildCounterReportPathCriteria++;
  if (buildCounterReportPathCriteria < 3) {
    o.activityFilters = buildUnnamed4173();
    o.customChannelGrouping = buildChannelGrouping();
    o.dateRange = buildDateRange();
    o.dimensions = buildUnnamed4174();
    o.floodlightConfigId = buildDimensionValue();
    o.metricNames = buildUnnamed4175();
    o.pathFilters = buildUnnamed4176();
  }
  buildCounterReportPathCriteria--;
  return o;
}

void checkReportPathCriteria(api.ReportPathCriteria o) {
  buildCounterReportPathCriteria++;
  if (buildCounterReportPathCriteria < 3) {
    checkUnnamed4173(o.activityFilters);
    checkChannelGrouping(o.customChannelGrouping);
    checkDateRange(o.dateRange);
    checkUnnamed4174(o.dimensions);
    checkDimensionValue(o.floodlightConfigId);
    checkUnnamed4175(o.metricNames);
    checkUnnamed4176(o.pathFilters);
  }
  buildCounterReportPathCriteria--;
}

core.List<api.DimensionValue> buildUnnamed4177() {
  var o = <api.DimensionValue>[];
  o.add(buildDimensionValue());
  o.add(buildDimensionValue());
  return o;
}

void checkUnnamed4177(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

core.List<api.SortedDimension> buildUnnamed4178() {
  var o = <api.SortedDimension>[];
  o.add(buildSortedDimension());
  o.add(buildSortedDimension());
  return o;
}

void checkUnnamed4178(core.List<api.SortedDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortedDimension(o[0]);
  checkSortedDimension(o[1]);
}

core.List<api.SortedDimension> buildUnnamed4179() {
  var o = <api.SortedDimension>[];
  o.add(buildSortedDimension());
  o.add(buildSortedDimension());
  return o;
}

void checkUnnamed4179(core.List<api.SortedDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortedDimension(o[0]);
  checkSortedDimension(o[1]);
}

core.List<api.DimensionValue> buildUnnamed4180() {
  var o = <api.DimensionValue>[];
  o.add(buildDimensionValue());
  o.add(buildDimensionValue());
  return o;
}

void checkUnnamed4180(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

core.List<core.String> buildUnnamed4181() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4181(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.SortedDimension> buildUnnamed4182() {
  var o = <api.SortedDimension>[];
  o.add(buildSortedDimension());
  o.add(buildSortedDimension());
  return o;
}

void checkUnnamed4182(core.List<api.SortedDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortedDimension(o[0]);
  checkSortedDimension(o[1]);
}

core.int buildCounterReportPathToConversionCriteriaReportProperties = 0;
api.ReportPathToConversionCriteriaReportProperties
    buildReportPathToConversionCriteriaReportProperties() {
  var o = api.ReportPathToConversionCriteriaReportProperties();
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
    unittest.expect(o.clicksLookbackWindow, unittest.equals(42));
    unittest.expect(o.impressionsLookbackWindow, unittest.equals(42));
    unittest.expect(o.includeAttributedIPConversions, unittest.isTrue);
    unittest.expect(o.includeUnattributedCookieConversions, unittest.isTrue);
    unittest.expect(o.includeUnattributedIPConversions, unittest.isTrue);
    unittest.expect(o.maximumClickInteractions, unittest.equals(42));
    unittest.expect(o.maximumImpressionInteractions, unittest.equals(42));
    unittest.expect(o.maximumInteractionGap, unittest.equals(42));
    unittest.expect(o.pivotOnInteractionPath, unittest.isTrue);
  }
  buildCounterReportPathToConversionCriteriaReportProperties--;
}

core.int buildCounterReportPathToConversionCriteria = 0;
api.ReportPathToConversionCriteria buildReportPathToConversionCriteria() {
  var o = api.ReportPathToConversionCriteria();
  buildCounterReportPathToConversionCriteria++;
  if (buildCounterReportPathToConversionCriteria < 3) {
    o.activityFilters = buildUnnamed4177();
    o.conversionDimensions = buildUnnamed4178();
    o.customFloodlightVariables = buildUnnamed4179();
    o.customRichMediaEvents = buildUnnamed4180();
    o.dateRange = buildDateRange();
    o.floodlightConfigId = buildDimensionValue();
    o.metricNames = buildUnnamed4181();
    o.perInteractionDimensions = buildUnnamed4182();
    o.reportProperties = buildReportPathToConversionCriteriaReportProperties();
  }
  buildCounterReportPathToConversionCriteria--;
  return o;
}

void checkReportPathToConversionCriteria(api.ReportPathToConversionCriteria o) {
  buildCounterReportPathToConversionCriteria++;
  if (buildCounterReportPathToConversionCriteria < 3) {
    checkUnnamed4177(o.activityFilters);
    checkUnnamed4178(o.conversionDimensions);
    checkUnnamed4179(o.customFloodlightVariables);
    checkUnnamed4180(o.customRichMediaEvents);
    checkDateRange(o.dateRange);
    checkDimensionValue(o.floodlightConfigId);
    checkUnnamed4181(o.metricNames);
    checkUnnamed4182(o.perInteractionDimensions);
    checkReportPathToConversionCriteriaReportProperties(o.reportProperties);
  }
  buildCounterReportPathToConversionCriteria--;
}

core.List<api.DimensionValue> buildUnnamed4183() {
  var o = <api.DimensionValue>[];
  o.add(buildDimensionValue());
  o.add(buildDimensionValue());
  return o;
}

void checkUnnamed4183(core.List<api.DimensionValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimensionValue(o[0]);
  checkDimensionValue(o[1]);
}

core.List<api.SortedDimension> buildUnnamed4184() {
  var o = <api.SortedDimension>[];
  o.add(buildSortedDimension());
  o.add(buildSortedDimension());
  return o;
}

void checkUnnamed4184(core.List<api.SortedDimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSortedDimension(o[0]);
  checkSortedDimension(o[1]);
}

core.List<core.String> buildUnnamed4185() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4185(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4186() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4186(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReportReachCriteria = 0;
api.ReportReachCriteria buildReportReachCriteria() {
  var o = api.ReportReachCriteria();
  buildCounterReportReachCriteria++;
  if (buildCounterReportReachCriteria < 3) {
    o.activities = buildActivities();
    o.customRichMediaEvents = buildCustomRichMediaEvents();
    o.dateRange = buildDateRange();
    o.dimensionFilters = buildUnnamed4183();
    o.dimensions = buildUnnamed4184();
    o.enableAllDimensionCombinations = true;
    o.metricNames = buildUnnamed4185();
    o.reachByFrequencyMetricNames = buildUnnamed4186();
  }
  buildCounterReportReachCriteria--;
  return o;
}

void checkReportReachCriteria(api.ReportReachCriteria o) {
  buildCounterReportReachCriteria++;
  if (buildCounterReportReachCriteria < 3) {
    checkActivities(o.activities);
    checkCustomRichMediaEvents(o.customRichMediaEvents);
    checkDateRange(o.dateRange);
    checkUnnamed4183(o.dimensionFilters);
    checkUnnamed4184(o.dimensions);
    unittest.expect(o.enableAllDimensionCombinations, unittest.isTrue);
    checkUnnamed4185(o.metricNames);
    checkUnnamed4186(o.reachByFrequencyMetricNames);
  }
  buildCounterReportReachCriteria--;
}

core.List<core.String> buildUnnamed4187() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4187(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReportSchedule = 0;
api.ReportSchedule buildReportSchedule() {
  var o = api.ReportSchedule();
  buildCounterReportSchedule++;
  if (buildCounterReportSchedule < 3) {
    o.active = true;
    o.every = 42;
    o.expirationDate = core.DateTime.parse('2002-02-27T14:01:02Z');
    o.repeats = 'foo';
    o.repeatsOnWeekDays = buildUnnamed4187();
    o.runsOnDayOfMonth = 'foo';
    o.startDate = core.DateTime.parse('2002-02-27T14:01:02Z');
  }
  buildCounterReportSchedule--;
  return o;
}

void checkReportSchedule(api.ReportSchedule o) {
  buildCounterReportSchedule++;
  if (buildCounterReportSchedule < 3) {
    unittest.expect(o.active, unittest.isTrue);
    unittest.expect(o.every, unittest.equals(42));
    unittest.expect(o.expirationDate,
        unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
    unittest.expect(o.repeats, unittest.equals('foo'));
    checkUnnamed4187(o.repeatsOnWeekDays);
    unittest.expect(o.runsOnDayOfMonth, unittest.equals('foo'));
    unittest.expect(o.startDate,
        unittest.equals(core.DateTime.parse("2002-02-27T00:00:00")));
  }
  buildCounterReportSchedule--;
}

core.int buildCounterReport = 0;
api.Report buildReport() {
  var o = api.Report();
  buildCounterReport++;
  if (buildCounterReport < 3) {
    o.accountId = 'foo';
    o.criteria = buildReportCriteria();
    o.crossDimensionReachCriteria = buildReportCrossDimensionReachCriteria();
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
    o.pathAttributionCriteria = buildReportPathAttributionCriteria();
    o.pathCriteria = buildReportPathCriteria();
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
    unittest.expect(o.accountId, unittest.equals('foo'));
    checkReportCriteria(o.criteria);
    checkReportCrossDimensionReachCriteria(o.crossDimensionReachCriteria);
    checkReportDelivery(o.delivery);
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.fileName, unittest.equals('foo'));
    checkReportFloodlightCriteria(o.floodlightCriteria);
    unittest.expect(o.format, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lastModifiedTime, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.ownerProfileId, unittest.equals('foo'));
    checkReportPathAttributionCriteria(o.pathAttributionCriteria);
    checkReportPathCriteria(o.pathCriteria);
    checkReportPathToConversionCriteria(o.pathToConversionCriteria);
    checkReportReachCriteria(o.reachCriteria);
    checkReportSchedule(o.schedule);
    unittest.expect(o.subAccountId, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterReport--;
}

core.List<api.Dimension> buildUnnamed4188() {
  var o = <api.Dimension>[];
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

void checkUnnamed4188(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Dimension> buildUnnamed4189() {
  var o = <api.Dimension>[];
  o.add(buildDimension());
  o.add(buildDimension());
  return o;
}

void checkUnnamed4189(core.List<api.Dimension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDimension(o[0]);
  checkDimension(o[1]);
}

core.List<api.Metric> buildUnnamed4190() {
  var o = <api.Metric>[];
  o.add(buildMetric());
  o.add(buildMetric());
  return o;
}

void checkUnnamed4190(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.List<api.Metric> buildUnnamed4191() {
  var o = <api.Metric>[];
  o.add(buildMetric());
  o.add(buildMetric());
  return o;
}

void checkUnnamed4191(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.int buildCounterReportCompatibleFields = 0;
api.ReportCompatibleFields buildReportCompatibleFields() {
  var o = api.ReportCompatibleFields();
  buildCounterReportCompatibleFields++;
  if (buildCounterReportCompatibleFields < 3) {
    o.dimensionFilters = buildUnnamed4188();
    o.dimensions = buildUnnamed4189();
    o.kind = 'foo';
    o.metrics = buildUnnamed4190();
    o.pivotedActivityMetrics = buildUnnamed4191();
  }
  buildCounterReportCompatibleFields--;
  return o;
}

void checkReportCompatibleFields(api.ReportCompatibleFields o) {
  buildCounterReportCompatibleFields++;
  if (buildCounterReportCompatibleFields < 3) {
    checkUnnamed4188(o.dimensionFilters);
    checkUnnamed4189(o.dimensions);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4190(o.metrics);
    checkUnnamed4191(o.pivotedActivityMetrics);
  }
  buildCounterReportCompatibleFields--;
}

core.List<api.Report> buildUnnamed4192() {
  var o = <api.Report>[];
  o.add(buildReport());
  o.add(buildReport());
  return o;
}

void checkUnnamed4192(core.List<api.Report> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReport(o[0]);
  checkReport(o[1]);
}

core.int buildCounterReportList = 0;
api.ReportList buildReportList() {
  var o = api.ReportList();
  buildCounterReportList++;
  if (buildCounterReportList < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed4192();
    o.kind = 'foo';
    o.nextPageToken = 'foo';
  }
  buildCounterReportList--;
  return o;
}

void checkReportList(api.ReportList o) {
  buildCounterReportList++;
  if (buildCounterReportList < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed4192(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterReportList--;
}

core.int buildCounterReportsConfiguration = 0;
api.ReportsConfiguration buildReportsConfiguration() {
  var o = api.ReportsConfiguration();
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
    unittest.expect(o.exposureToConversionEnabled, unittest.isTrue);
    checkLookbackConfiguration(o.lookbackConfiguration);
    unittest.expect(o.reportGenerationTimeZoneId, unittest.equals('foo'));
  }
  buildCounterReportsConfiguration--;
}

core.int buildCounterRichMediaExitOverride = 0;
api.RichMediaExitOverride buildRichMediaExitOverride() {
  var o = api.RichMediaExitOverride();
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
    checkClickThroughUrl(o.clickThroughUrl);
    unittest.expect(o.enabled, unittest.isTrue);
    unittest.expect(o.exitId, unittest.equals('foo'));
  }
  buildCounterRichMediaExitOverride--;
}

core.int buildCounterRule = 0;
api.Rule buildRule() {
  var o = api.Rule();
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
    unittest.expect(o.assetId, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.targetingTemplateId, unittest.equals('foo'));
  }
  buildCounterRule--;
}

core.List<api.SiteContact> buildUnnamed4193() {
  var o = <api.SiteContact>[];
  o.add(buildSiteContact());
  o.add(buildSiteContact());
  return o;
}

void checkUnnamed4193(core.List<api.SiteContact> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSiteContact(o[0]);
  checkSiteContact(o[1]);
}

core.int buildCounterSite = 0;
api.Site buildSite() {
  var o = api.Site();
  buildCounterSite++;
  if (buildCounterSite < 3) {
    o.accountId = 'foo';
    o.approved = true;
    o.directorySiteId = 'foo';
    o.directorySiteIdDimensionValue = buildDimensionValue();
    o.id = 'foo';
    o.idDimensionValue = buildDimensionValue();
    o.keyName = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.siteContacts = buildUnnamed4193();
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
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.approved, unittest.isTrue);
    unittest.expect(o.directorySiteId, unittest.equals('foo'));
    checkDimensionValue(o.directorySiteIdDimensionValue);
    unittest.expect(o.id, unittest.equals('foo'));
    checkDimensionValue(o.idDimensionValue);
    unittest.expect(o.keyName, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed4193(o.siteContacts);
    checkSiteSettings(o.siteSettings);
    unittest.expect(o.subaccountId, unittest.equals('foo'));
    checkSiteVideoSettings(o.videoSettings);
  }
  buildCounterSite--;
}

core.List<api.Size> buildUnnamed4194() {
  var o = <api.Size>[];
  o.add(buildSize());
  o.add(buildSize());
  return o;
}

void checkUnnamed4194(core.List<api.Size> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSize(o[0]);
  checkSize(o[1]);
}

core.int buildCounterSiteCompanionSetting = 0;
api.SiteCompanionSetting buildSiteCompanionSetting() {
  var o = api.SiteCompanionSetting();
  buildCounterSiteCompanionSetting++;
  if (buildCounterSiteCompanionSetting < 3) {
    o.companionsDisabled = true;
    o.enabledSizes = buildUnnamed4194();
    o.imageOnly = true;
    o.kind = 'foo';
  }
  buildCounterSiteCompanionSetting--;
  return o;
}

void checkSiteCompanionSetting(api.SiteCompanionSetting o) {
  buildCounterSiteCompanionSetting++;
  if (buildCounterSiteCompanionSetting < 3) {
    unittest.expect(o.companionsDisabled, unittest.isTrue);
    checkUnnamed4194(o.enabledSizes);
    unittest.expect(o.imageOnly, unittest.isTrue);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterSiteCompanionSetting--;
}

core.int buildCounterSiteContact = 0;
api.SiteContact buildSiteContact() {
  var o = api.SiteContact();
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
    unittest.expect(o.address, unittest.equals('foo'));
    unittest.expect(o.contactType, unittest.equals('foo'));
    unittest.expect(o.email, unittest.equals('foo'));
    unittest.expect(o.firstName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.lastName, unittest.equals('foo'));
    unittest.expect(o.phone, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterSiteContact--;
}

core.int buildCounterSiteSettings = 0;
api.SiteSettings buildSiteSettings() {
  var o = api.SiteSettings();
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
    unittest.expect(o.activeViewOptOut, unittest.isTrue);
    unittest.expect(o.adBlockingOptOut, unittest.isTrue);
    unittest.expect(o.disableNewCookie, unittest.isTrue);
    checkTagSetting(o.tagSetting);
    unittest.expect(o.videoActiveViewOptOutTemplate, unittest.isTrue);
    unittest.expect(o.vpaidAdapterChoiceTemplate, unittest.equals('foo'));
  }
  buildCounterSiteSettings--;
}

core.int buildCounterSiteSkippableSetting = 0;
api.SiteSkippableSetting buildSiteSkippableSetting() {
  var o = api.SiteSkippableSetting();
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
    unittest.expect(o.kind, unittest.equals('foo'));
    checkVideoOffset(o.progressOffset);
    checkVideoOffset(o.skipOffset);
    unittest.expect(o.skippable, unittest.isTrue);
  }
  buildCounterSiteSkippableSetting--;
}

core.List<core.int> buildUnnamed4195() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed4195(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterSiteTranscodeSetting = 0;
api.SiteTranscodeSetting buildSiteTranscodeSetting() {
  var o = api.SiteTranscodeSetting();
  buildCounterSiteTranscodeSetting++;
  if (buildCounterSiteTranscodeSetting < 3) {
    o.enabledVideoFormats = buildUnnamed4195();
    o.kind = 'foo';
  }
  buildCounterSiteTranscodeSetting--;
  return o;
}

void checkSiteTranscodeSetting(api.SiteTranscodeSetting o) {
  buildCounterSiteTranscodeSetting++;
  if (buildCounterSiteTranscodeSetting < 3) {
    checkUnnamed4195(o.enabledVideoFormats);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterSiteTranscodeSetting--;
}

core.int buildCounterSiteVideoSettings = 0;
api.SiteVideoSettings buildSiteVideoSettings() {
  var o = api.SiteVideoSettings();
  buildCounterSiteVideoSettings++;
  if (buildCounterSiteVideoSettings < 3) {
    o.companionSettings = buildSiteCompanionSetting();
    o.kind = 'foo';
    o.obaEnabled = true;
    o.obaSettings = buildObaIcon();
    o.orientation = 'foo';
    o.skippableSettings = buildSiteSkippableSetting();
    o.transcodeSettings = buildSiteTranscodeSetting();
  }
  buildCounterSiteVideoSettings--;
  return o;
}

void checkSiteVideoSettings(api.SiteVideoSettings o) {
  buildCounterSiteVideoSettings++;
  if (buildCounterSiteVideoSettings < 3) {
    checkSiteCompanionSetting(o.companionSettings);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.obaEnabled, unittest.isTrue);
    checkObaIcon(o.obaSettings);
    unittest.expect(o.orientation, unittest.equals('foo'));
    checkSiteSkippableSetting(o.skippableSettings);
    checkSiteTranscodeSetting(o.transcodeSettings);
  }
  buildCounterSiteVideoSettings--;
}

core.List<api.Site> buildUnnamed4196() {
  var o = <api.Site>[];
  o.add(buildSite());
  o.add(buildSite());
  return o;
}

void checkUnnamed4196(core.List<api.Site> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSite(o[0]);
  checkSite(o[1]);
}

core.int buildCounterSitesListResponse = 0;
api.SitesListResponse buildSitesListResponse() {
  var o = api.SitesListResponse();
  buildCounterSitesListResponse++;
  if (buildCounterSitesListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.sites = buildUnnamed4196();
  }
  buildCounterSitesListResponse--;
  return o;
}

void checkSitesListResponse(api.SitesListResponse o) {
  buildCounterSitesListResponse++;
  if (buildCounterSitesListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4196(o.sites);
  }
  buildCounterSitesListResponse--;
}

core.int buildCounterSize = 0;
api.Size buildSize() {
  var o = api.Size();
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
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.iab, unittest.isTrue);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterSize--;
}

core.List<api.Size> buildUnnamed4197() {
  var o = <api.Size>[];
  o.add(buildSize());
  o.add(buildSize());
  return o;
}

void checkUnnamed4197(core.List<api.Size> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSize(o[0]);
  checkSize(o[1]);
}

core.int buildCounterSizesListResponse = 0;
api.SizesListResponse buildSizesListResponse() {
  var o = api.SizesListResponse();
  buildCounterSizesListResponse++;
  if (buildCounterSizesListResponse < 3) {
    o.kind = 'foo';
    o.sizes = buildUnnamed4197();
  }
  buildCounterSizesListResponse--;
  return o;
}

void checkSizesListResponse(api.SizesListResponse o) {
  buildCounterSizesListResponse++;
  if (buildCounterSizesListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4197(o.sizes);
  }
  buildCounterSizesListResponse--;
}

core.int buildCounterSkippableSetting = 0;
api.SkippableSetting buildSkippableSetting() {
  var o = api.SkippableSetting();
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
    unittest.expect(o.kind, unittest.equals('foo'));
    checkVideoOffset(o.progressOffset);
    checkVideoOffset(o.skipOffset);
    unittest.expect(o.skippable, unittest.isTrue);
  }
  buildCounterSkippableSetting--;
}

core.int buildCounterSortedDimension = 0;
api.SortedDimension buildSortedDimension() {
  var o = api.SortedDimension();
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
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.sortOrder, unittest.equals('foo'));
  }
  buildCounterSortedDimension--;
}

core.List<core.String> buildUnnamed4198() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4198(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSubaccount = 0;
api.Subaccount buildSubaccount() {
  var o = api.Subaccount();
  buildCounterSubaccount++;
  if (buildCounterSubaccount < 3) {
    o.accountId = 'foo';
    o.availablePermissionIds = buildUnnamed4198();
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
    unittest.expect(o.accountId, unittest.equals('foo'));
    checkUnnamed4198(o.availablePermissionIds);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterSubaccount--;
}

core.List<api.Subaccount> buildUnnamed4199() {
  var o = <api.Subaccount>[];
  o.add(buildSubaccount());
  o.add(buildSubaccount());
  return o;
}

void checkUnnamed4199(core.List<api.Subaccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubaccount(o[0]);
  checkSubaccount(o[1]);
}

core.int buildCounterSubaccountsListResponse = 0;
api.SubaccountsListResponse buildSubaccountsListResponse() {
  var o = api.SubaccountsListResponse();
  buildCounterSubaccountsListResponse++;
  if (buildCounterSubaccountsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.subaccounts = buildUnnamed4199();
  }
  buildCounterSubaccountsListResponse--;
  return o;
}

void checkSubaccountsListResponse(api.SubaccountsListResponse o) {
  buildCounterSubaccountsListResponse++;
  if (buildCounterSubaccountsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4199(o.subaccounts);
  }
  buildCounterSubaccountsListResponse--;
}

core.int buildCounterTagData = 0;
api.TagData buildTagData() {
  var o = api.TagData();
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
    unittest.expect(o.adId, unittest.equals('foo'));
    unittest.expect(o.clickTag, unittest.equals('foo'));
    unittest.expect(o.creativeId, unittest.equals('foo'));
    unittest.expect(o.format, unittest.equals('foo'));
    unittest.expect(o.impressionTag, unittest.equals('foo'));
  }
  buildCounterTagData--;
}

core.int buildCounterTagSetting = 0;
api.TagSetting buildTagSetting() {
  var o = api.TagSetting();
  buildCounterTagSetting++;
  if (buildCounterTagSetting < 3) {
    o.additionalKeyValues = 'foo';
    o.includeClickThroughUrls = true;
    o.includeClickTracking = true;
    o.keywordOption = 'foo';
  }
  buildCounterTagSetting--;
  return o;
}

void checkTagSetting(api.TagSetting o) {
  buildCounterTagSetting++;
  if (buildCounterTagSetting < 3) {
    unittest.expect(o.additionalKeyValues, unittest.equals('foo'));
    unittest.expect(o.includeClickThroughUrls, unittest.isTrue);
    unittest.expect(o.includeClickTracking, unittest.isTrue);
    unittest.expect(o.keywordOption, unittest.equals('foo'));
  }
  buildCounterTagSetting--;
}

core.int buildCounterTagSettings = 0;
api.TagSettings buildTagSettings() {
  var o = api.TagSettings();
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
    unittest.expect(o.dynamicTagEnabled, unittest.isTrue);
    unittest.expect(o.imageTagEnabled, unittest.isTrue);
  }
  buildCounterTagSettings--;
}

core.int buildCounterTargetWindow = 0;
api.TargetWindow buildTargetWindow() {
  var o = api.TargetWindow();
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
    unittest.expect(o.customHtml, unittest.equals('foo'));
    unittest.expect(o.targetWindowOption, unittest.equals('foo'));
  }
  buildCounterTargetWindow--;
}

core.int buildCounterTargetableRemarketingList = 0;
api.TargetableRemarketingList buildTargetableRemarketingList() {
  var o = api.TargetableRemarketingList();
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
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.active, unittest.isTrue);
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    checkDimensionValue(o.advertiserIdDimensionValue);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.lifeSpan, unittest.equals('foo'));
    unittest.expect(o.listSize, unittest.equals('foo'));
    unittest.expect(o.listSource, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.subaccountId, unittest.equals('foo'));
  }
  buildCounterTargetableRemarketingList--;
}

core.List<api.TargetableRemarketingList> buildUnnamed4200() {
  var o = <api.TargetableRemarketingList>[];
  o.add(buildTargetableRemarketingList());
  o.add(buildTargetableRemarketingList());
  return o;
}

void checkUnnamed4200(core.List<api.TargetableRemarketingList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetableRemarketingList(o[0]);
  checkTargetableRemarketingList(o[1]);
}

core.int buildCounterTargetableRemarketingListsListResponse = 0;
api.TargetableRemarketingListsListResponse
    buildTargetableRemarketingListsListResponse() {
  var o = api.TargetableRemarketingListsListResponse();
  buildCounterTargetableRemarketingListsListResponse++;
  if (buildCounterTargetableRemarketingListsListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.targetableRemarketingLists = buildUnnamed4200();
  }
  buildCounterTargetableRemarketingListsListResponse--;
  return o;
}

void checkTargetableRemarketingListsListResponse(
    api.TargetableRemarketingListsListResponse o) {
  buildCounterTargetableRemarketingListsListResponse++;
  if (buildCounterTargetableRemarketingListsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4200(o.targetableRemarketingLists);
  }
  buildCounterTargetableRemarketingListsListResponse--;
}

core.int buildCounterTargetingTemplate = 0;
api.TargetingTemplate buildTargetingTemplate() {
  var o = api.TargetingTemplate();
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
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.advertiserId, unittest.equals('foo'));
    checkDimensionValue(o.advertiserIdDimensionValue);
    checkDayPartTargeting(o.dayPartTargeting);
    checkGeoTargeting(o.geoTargeting);
    unittest.expect(o.id, unittest.equals('foo'));
    checkKeyValueTargetingExpression(o.keyValueTargetingExpression);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkLanguageTargeting(o.languageTargeting);
    checkListTargetingExpression(o.listTargetingExpression);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.subaccountId, unittest.equals('foo'));
    checkTechnologyTargeting(o.technologyTargeting);
  }
  buildCounterTargetingTemplate--;
}

core.List<api.TargetingTemplate> buildUnnamed4201() {
  var o = <api.TargetingTemplate>[];
  o.add(buildTargetingTemplate());
  o.add(buildTargetingTemplate());
  return o;
}

void checkUnnamed4201(core.List<api.TargetingTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTargetingTemplate(o[0]);
  checkTargetingTemplate(o[1]);
}

core.int buildCounterTargetingTemplatesListResponse = 0;
api.TargetingTemplatesListResponse buildTargetingTemplatesListResponse() {
  var o = api.TargetingTemplatesListResponse();
  buildCounterTargetingTemplatesListResponse++;
  if (buildCounterTargetingTemplatesListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.targetingTemplates = buildUnnamed4201();
  }
  buildCounterTargetingTemplatesListResponse--;
  return o;
}

void checkTargetingTemplatesListResponse(api.TargetingTemplatesListResponse o) {
  buildCounterTargetingTemplatesListResponse++;
  if (buildCounterTargetingTemplatesListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4201(o.targetingTemplates);
  }
  buildCounterTargetingTemplatesListResponse--;
}

core.List<api.Browser> buildUnnamed4202() {
  var o = <api.Browser>[];
  o.add(buildBrowser());
  o.add(buildBrowser());
  return o;
}

void checkUnnamed4202(core.List<api.Browser> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBrowser(o[0]);
  checkBrowser(o[1]);
}

core.List<api.ConnectionType> buildUnnamed4203() {
  var o = <api.ConnectionType>[];
  o.add(buildConnectionType());
  o.add(buildConnectionType());
  return o;
}

void checkUnnamed4203(core.List<api.ConnectionType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConnectionType(o[0]);
  checkConnectionType(o[1]);
}

core.List<api.MobileCarrier> buildUnnamed4204() {
  var o = <api.MobileCarrier>[];
  o.add(buildMobileCarrier());
  o.add(buildMobileCarrier());
  return o;
}

void checkUnnamed4204(core.List<api.MobileCarrier> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMobileCarrier(o[0]);
  checkMobileCarrier(o[1]);
}

core.List<api.OperatingSystemVersion> buildUnnamed4205() {
  var o = <api.OperatingSystemVersion>[];
  o.add(buildOperatingSystemVersion());
  o.add(buildOperatingSystemVersion());
  return o;
}

void checkUnnamed4205(core.List<api.OperatingSystemVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperatingSystemVersion(o[0]);
  checkOperatingSystemVersion(o[1]);
}

core.List<api.OperatingSystem> buildUnnamed4206() {
  var o = <api.OperatingSystem>[];
  o.add(buildOperatingSystem());
  o.add(buildOperatingSystem());
  return o;
}

void checkUnnamed4206(core.List<api.OperatingSystem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperatingSystem(o[0]);
  checkOperatingSystem(o[1]);
}

core.List<api.PlatformType> buildUnnamed4207() {
  var o = <api.PlatformType>[];
  o.add(buildPlatformType());
  o.add(buildPlatformType());
  return o;
}

void checkUnnamed4207(core.List<api.PlatformType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlatformType(o[0]);
  checkPlatformType(o[1]);
}

core.int buildCounterTechnologyTargeting = 0;
api.TechnologyTargeting buildTechnologyTargeting() {
  var o = api.TechnologyTargeting();
  buildCounterTechnologyTargeting++;
  if (buildCounterTechnologyTargeting < 3) {
    o.browsers = buildUnnamed4202();
    o.connectionTypes = buildUnnamed4203();
    o.mobileCarriers = buildUnnamed4204();
    o.operatingSystemVersions = buildUnnamed4205();
    o.operatingSystems = buildUnnamed4206();
    o.platformTypes = buildUnnamed4207();
  }
  buildCounterTechnologyTargeting--;
  return o;
}

void checkTechnologyTargeting(api.TechnologyTargeting o) {
  buildCounterTechnologyTargeting++;
  if (buildCounterTechnologyTargeting < 3) {
    checkUnnamed4202(o.browsers);
    checkUnnamed4203(o.connectionTypes);
    checkUnnamed4204(o.mobileCarriers);
    checkUnnamed4205(o.operatingSystemVersions);
    checkUnnamed4206(o.operatingSystems);
    checkUnnamed4207(o.platformTypes);
  }
  buildCounterTechnologyTargeting--;
}

core.int buildCounterThirdPartyAuthenticationToken = 0;
api.ThirdPartyAuthenticationToken buildThirdPartyAuthenticationToken() {
  var o = api.ThirdPartyAuthenticationToken();
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
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterThirdPartyAuthenticationToken--;
}

core.int buildCounterThirdPartyTrackingUrl = 0;
api.ThirdPartyTrackingUrl buildThirdPartyTrackingUrl() {
  var o = api.ThirdPartyTrackingUrl();
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
    unittest.expect(o.thirdPartyUrlType, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterThirdPartyTrackingUrl--;
}

core.List<core.int> buildUnnamed4208() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed4208(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterTranscodeSetting = 0;
api.TranscodeSetting buildTranscodeSetting() {
  var o = api.TranscodeSetting();
  buildCounterTranscodeSetting++;
  if (buildCounterTranscodeSetting < 3) {
    o.enabledVideoFormats = buildUnnamed4208();
    o.kind = 'foo';
  }
  buildCounterTranscodeSetting--;
  return o;
}

void checkTranscodeSetting(api.TranscodeSetting o) {
  buildCounterTranscodeSetting++;
  if (buildCounterTranscodeSetting < 3) {
    checkUnnamed4208(o.enabledVideoFormats);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterTranscodeSetting--;
}

core.int buildCounterUniversalAdId = 0;
api.UniversalAdId buildUniversalAdId() {
  var o = api.UniversalAdId();
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
    unittest.expect(o.registry, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterUniversalAdId--;
}

core.int buildCounterUserDefinedVariableConfiguration = 0;
api.UserDefinedVariableConfiguration buildUserDefinedVariableConfiguration() {
  var o = api.UserDefinedVariableConfiguration();
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
    unittest.expect(o.dataType, unittest.equals('foo'));
    unittest.expect(o.reportName, unittest.equals('foo'));
    unittest.expect(o.variableType, unittest.equals('foo'));
  }
  buildCounterUserDefinedVariableConfiguration--;
}

core.int buildCounterUserProfile = 0;
api.UserProfile buildUserProfile() {
  var o = api.UserProfile();
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
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.accountName, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.profileId, unittest.equals('foo'));
    unittest.expect(o.subAccountId, unittest.equals('foo'));
    unittest.expect(o.subAccountName, unittest.equals('foo'));
    unittest.expect(o.userName, unittest.equals('foo'));
  }
  buildCounterUserProfile--;
}

core.List<api.UserProfile> buildUnnamed4209() {
  var o = <api.UserProfile>[];
  o.add(buildUserProfile());
  o.add(buildUserProfile());
  return o;
}

void checkUnnamed4209(core.List<api.UserProfile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserProfile(o[0]);
  checkUserProfile(o[1]);
}

core.int buildCounterUserProfileList = 0;
api.UserProfileList buildUserProfileList() {
  var o = api.UserProfileList();
  buildCounterUserProfileList++;
  if (buildCounterUserProfileList < 3) {
    o.etag = 'foo';
    o.items = buildUnnamed4209();
    o.kind = 'foo';
  }
  buildCounterUserProfileList--;
  return o;
}

void checkUserProfileList(api.UserProfileList o) {
  buildCounterUserProfileList++;
  if (buildCounterUserProfileList < 3) {
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed4209(o.items);
    unittest.expect(o.kind, unittest.equals('foo'));
  }
  buildCounterUserProfileList--;
}

core.List<api.UserRolePermission> buildUnnamed4210() {
  var o = <api.UserRolePermission>[];
  o.add(buildUserRolePermission());
  o.add(buildUserRolePermission());
  return o;
}

void checkUnnamed4210(core.List<api.UserRolePermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserRolePermission(o[0]);
  checkUserRolePermission(o[1]);
}

core.int buildCounterUserRole = 0;
api.UserRole buildUserRole() {
  var o = api.UserRole();
  buildCounterUserRole++;
  if (buildCounterUserRole < 3) {
    o.accountId = 'foo';
    o.defaultUserRole = true;
    o.id = 'foo';
    o.kind = 'foo';
    o.name = 'foo';
    o.parentUserRoleId = 'foo';
    o.permissions = buildUnnamed4210();
    o.subaccountId = 'foo';
  }
  buildCounterUserRole--;
  return o;
}

void checkUserRole(api.UserRole o) {
  buildCounterUserRole++;
  if (buildCounterUserRole < 3) {
    unittest.expect(o.accountId, unittest.equals('foo'));
    unittest.expect(o.defaultUserRole, unittest.isTrue);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.parentUserRoleId, unittest.equals('foo'));
    checkUnnamed4210(o.permissions);
    unittest.expect(o.subaccountId, unittest.equals('foo'));
  }
  buildCounterUserRole--;
}

core.int buildCounterUserRolePermission = 0;
api.UserRolePermission buildUserRolePermission() {
  var o = api.UserRolePermission();
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
    unittest.expect(o.availability, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.permissionGroupId, unittest.equals('foo'));
  }
  buildCounterUserRolePermission--;
}

core.int buildCounterUserRolePermissionGroup = 0;
api.UserRolePermissionGroup buildUserRolePermissionGroup() {
  var o = api.UserRolePermissionGroup();
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
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterUserRolePermissionGroup--;
}

core.List<api.UserRolePermissionGroup> buildUnnamed4211() {
  var o = <api.UserRolePermissionGroup>[];
  o.add(buildUserRolePermissionGroup());
  o.add(buildUserRolePermissionGroup());
  return o;
}

void checkUnnamed4211(core.List<api.UserRolePermissionGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserRolePermissionGroup(o[0]);
  checkUserRolePermissionGroup(o[1]);
}

core.int buildCounterUserRolePermissionGroupsListResponse = 0;
api.UserRolePermissionGroupsListResponse
    buildUserRolePermissionGroupsListResponse() {
  var o = api.UserRolePermissionGroupsListResponse();
  buildCounterUserRolePermissionGroupsListResponse++;
  if (buildCounterUserRolePermissionGroupsListResponse < 3) {
    o.kind = 'foo';
    o.userRolePermissionGroups = buildUnnamed4211();
  }
  buildCounterUserRolePermissionGroupsListResponse--;
  return o;
}

void checkUserRolePermissionGroupsListResponse(
    api.UserRolePermissionGroupsListResponse o) {
  buildCounterUserRolePermissionGroupsListResponse++;
  if (buildCounterUserRolePermissionGroupsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4211(o.userRolePermissionGroups);
  }
  buildCounterUserRolePermissionGroupsListResponse--;
}

core.List<api.UserRolePermission> buildUnnamed4212() {
  var o = <api.UserRolePermission>[];
  o.add(buildUserRolePermission());
  o.add(buildUserRolePermission());
  return o;
}

void checkUnnamed4212(core.List<api.UserRolePermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserRolePermission(o[0]);
  checkUserRolePermission(o[1]);
}

core.int buildCounterUserRolePermissionsListResponse = 0;
api.UserRolePermissionsListResponse buildUserRolePermissionsListResponse() {
  var o = api.UserRolePermissionsListResponse();
  buildCounterUserRolePermissionsListResponse++;
  if (buildCounterUserRolePermissionsListResponse < 3) {
    o.kind = 'foo';
    o.userRolePermissions = buildUnnamed4212();
  }
  buildCounterUserRolePermissionsListResponse--;
  return o;
}

void checkUserRolePermissionsListResponse(
    api.UserRolePermissionsListResponse o) {
  buildCounterUserRolePermissionsListResponse++;
  if (buildCounterUserRolePermissionsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4212(o.userRolePermissions);
  }
  buildCounterUserRolePermissionsListResponse--;
}

core.List<api.UserRole> buildUnnamed4213() {
  var o = <api.UserRole>[];
  o.add(buildUserRole());
  o.add(buildUserRole());
  return o;
}

void checkUnnamed4213(core.List<api.UserRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserRole(o[0]);
  checkUserRole(o[1]);
}

core.int buildCounterUserRolesListResponse = 0;
api.UserRolesListResponse buildUserRolesListResponse() {
  var o = api.UserRolesListResponse();
  buildCounterUserRolesListResponse++;
  if (buildCounterUserRolesListResponse < 3) {
    o.kind = 'foo';
    o.nextPageToken = 'foo';
    o.userRoles = buildUnnamed4213();
  }
  buildCounterUserRolesListResponse--;
  return o;
}

void checkUserRolesListResponse(api.UserRolesListResponse o) {
  buildCounterUserRolesListResponse++;
  if (buildCounterUserRolesListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4213(o.userRoles);
  }
  buildCounterUserRolesListResponse--;
}

core.int buildCounterVideoFormat = 0;
api.VideoFormat buildVideoFormat() {
  var o = api.VideoFormat();
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
    unittest.expect(o.fileType, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals(42));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkSize(o.resolution);
    unittest.expect(o.targetBitRate, unittest.equals(42));
  }
  buildCounterVideoFormat--;
}

core.List<api.VideoFormat> buildUnnamed4214() {
  var o = <api.VideoFormat>[];
  o.add(buildVideoFormat());
  o.add(buildVideoFormat());
  return o;
}

void checkUnnamed4214(core.List<api.VideoFormat> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVideoFormat(o[0]);
  checkVideoFormat(o[1]);
}

core.int buildCounterVideoFormatsListResponse = 0;
api.VideoFormatsListResponse buildVideoFormatsListResponse() {
  var o = api.VideoFormatsListResponse();
  buildCounterVideoFormatsListResponse++;
  if (buildCounterVideoFormatsListResponse < 3) {
    o.kind = 'foo';
    o.videoFormats = buildUnnamed4214();
  }
  buildCounterVideoFormatsListResponse--;
  return o;
}

void checkVideoFormatsListResponse(api.VideoFormatsListResponse o) {
  buildCounterVideoFormatsListResponse++;
  if (buildCounterVideoFormatsListResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed4214(o.videoFormats);
  }
  buildCounterVideoFormatsListResponse--;
}

core.int buildCounterVideoOffset = 0;
api.VideoOffset buildVideoOffset() {
  var o = api.VideoOffset();
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
    unittest.expect(o.offsetPercentage, unittest.equals(42));
    unittest.expect(o.offsetSeconds, unittest.equals(42));
  }
  buildCounterVideoOffset--;
}

core.int buildCounterVideoSettings = 0;
api.VideoSettings buildVideoSettings() {
  var o = api.VideoSettings();
  buildCounterVideoSettings++;
  if (buildCounterVideoSettings < 3) {
    o.companionSettings = buildCompanionSetting();
    o.kind = 'foo';
    o.obaEnabled = true;
    o.obaSettings = buildObaIcon();
    o.orientation = 'foo';
    o.skippableSettings = buildSkippableSetting();
    o.transcodeSettings = buildTranscodeSetting();
  }
  buildCounterVideoSettings--;
  return o;
}

void checkVideoSettings(api.VideoSettings o) {
  buildCounterVideoSettings++;
  if (buildCounterVideoSettings < 3) {
    checkCompanionSetting(o.companionSettings);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.obaEnabled, unittest.isTrue);
    checkObaIcon(o.obaSettings);
    unittest.expect(o.orientation, unittest.equals('foo'));
    checkSkippableSetting(o.skippableSettings);
    checkTranscodeSetting(o.transcodeSettings);
  }
  buildCounterVideoSettings--;
}

core.List<core.String> buildUnnamed4215() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4215(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4216() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4216(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4217() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4217(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4218() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4218(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4219() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4219(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4220() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4220(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4221() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4221(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4222() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4222(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4223() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4223(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4224() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4224(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4225() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4225(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4226() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4226(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4227() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4227(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4228() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4228(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4229() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4229(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4230() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4230(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4231() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4231(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4232() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4232(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4233() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4233(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4234() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4234(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4235() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4235(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4236() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4236(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4237() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4237(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4238() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4238(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4239() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4239(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4240() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4240(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4241() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4241(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4242() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4242(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4243() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4243(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4244() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4244(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4245() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4245(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4246() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4246(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4247() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4247(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4248() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4248(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4249() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4249(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4250() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4250(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4251() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4251(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4252() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4252(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4253() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4253(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4254() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4254(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4255() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4255(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4256() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4256(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4257() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4257(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4258() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4258(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4259() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4259(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4260() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4260(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4261() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4261(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4262() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4262(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4263() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4263(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4264() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4264(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4265() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4265(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4266() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4266(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4267() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4267(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4268() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4268(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4269() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4269(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4270() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4270(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4271() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4271(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4272() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4272(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4273() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4273(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4274() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4274(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4275() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4275(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4276() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4276(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4277() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4277(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4278() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4278(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4279() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4279(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4280() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4280(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4281() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4281(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4282() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4282(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4283() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4283(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4284() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4284(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4285() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4285(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4286() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4286(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4287() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4287(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4288() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4288(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4289() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4289(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4290() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4290(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4291() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4291(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4292() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4292(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4293() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4293(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4294() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4294(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4295() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4295(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4296() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4296(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4297() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4297(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4298() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4298(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4299() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4299(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4300() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4300(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4301() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4301(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4302() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4302(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4303() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4303(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4304() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4304(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed4305() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed4305(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-Account', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccount();
      var od = api.Account.fromJson(o.toJson());
      checkAccount(od);
    });
  });

  unittest.group('obj-schema-AccountActiveAdSummary', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountActiveAdSummary();
      var od = api.AccountActiveAdSummary.fromJson(o.toJson());
      checkAccountActiveAdSummary(od);
    });
  });

  unittest.group('obj-schema-AccountPermission', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountPermission();
      var od = api.AccountPermission.fromJson(o.toJson());
      checkAccountPermission(od);
    });
  });

  unittest.group('obj-schema-AccountPermissionGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountPermissionGroup();
      var od = api.AccountPermissionGroup.fromJson(o.toJson());
      checkAccountPermissionGroup(od);
    });
  });

  unittest.group('obj-schema-AccountPermissionGroupsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountPermissionGroupsListResponse();
      var od = api.AccountPermissionGroupsListResponse.fromJson(o.toJson());
      checkAccountPermissionGroupsListResponse(od);
    });
  });

  unittest.group('obj-schema-AccountPermissionsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountPermissionsListResponse();
      var od = api.AccountPermissionsListResponse.fromJson(o.toJson());
      checkAccountPermissionsListResponse(od);
    });
  });

  unittest.group('obj-schema-AccountUserProfile', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountUserProfile();
      var od = api.AccountUserProfile.fromJson(o.toJson());
      checkAccountUserProfile(od);
    });
  });

  unittest.group('obj-schema-AccountUserProfilesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountUserProfilesListResponse();
      var od = api.AccountUserProfilesListResponse.fromJson(o.toJson());
      checkAccountUserProfilesListResponse(od);
    });
  });

  unittest.group('obj-schema-AccountsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAccountsListResponse();
      var od = api.AccountsListResponse.fromJson(o.toJson());
      checkAccountsListResponse(od);
    });
  });

  unittest.group('obj-schema-Activities', () {
    unittest.test('to-json--from-json', () {
      var o = buildActivities();
      var od = api.Activities.fromJson(o.toJson());
      checkActivities(od);
    });
  });

  unittest.group('obj-schema-Ad', () {
    unittest.test('to-json--from-json', () {
      var o = buildAd();
      var od = api.Ad.fromJson(o.toJson());
      checkAd(od);
    });
  });

  unittest.group('obj-schema-AdBlockingConfiguration', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdBlockingConfiguration();
      var od = api.AdBlockingConfiguration.fromJson(o.toJson());
      checkAdBlockingConfiguration(od);
    });
  });

  unittest.group('obj-schema-AdSlot', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdSlot();
      var od = api.AdSlot.fromJson(o.toJson());
      checkAdSlot(od);
    });
  });

  unittest.group('obj-schema-AdsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdsListResponse();
      var od = api.AdsListResponse.fromJson(o.toJson());
      checkAdsListResponse(od);
    });
  });

  unittest.group('obj-schema-Advertiser', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdvertiser();
      var od = api.Advertiser.fromJson(o.toJson());
      checkAdvertiser(od);
    });
  });

  unittest.group('obj-schema-AdvertiserGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdvertiserGroup();
      var od = api.AdvertiserGroup.fromJson(o.toJson());
      checkAdvertiserGroup(od);
    });
  });

  unittest.group('obj-schema-AdvertiserGroupsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdvertiserGroupsListResponse();
      var od = api.AdvertiserGroupsListResponse.fromJson(o.toJson());
      checkAdvertiserGroupsListResponse(od);
    });
  });

  unittest.group('obj-schema-AdvertiserLandingPagesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdvertiserLandingPagesListResponse();
      var od = api.AdvertiserLandingPagesListResponse.fromJson(o.toJson());
      checkAdvertiserLandingPagesListResponse(od);
    });
  });

  unittest.group('obj-schema-AdvertisersListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildAdvertisersListResponse();
      var od = api.AdvertisersListResponse.fromJson(o.toJson());
      checkAdvertisersListResponse(od);
    });
  });

  unittest.group('obj-schema-AudienceSegment', () {
    unittest.test('to-json--from-json', () {
      var o = buildAudienceSegment();
      var od = api.AudienceSegment.fromJson(o.toJson());
      checkAudienceSegment(od);
    });
  });

  unittest.group('obj-schema-AudienceSegmentGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildAudienceSegmentGroup();
      var od = api.AudienceSegmentGroup.fromJson(o.toJson());
      checkAudienceSegmentGroup(od);
    });
  });

  unittest.group('obj-schema-Browser', () {
    unittest.test('to-json--from-json', () {
      var o = buildBrowser();
      var od = api.Browser.fromJson(o.toJson());
      checkBrowser(od);
    });
  });

  unittest.group('obj-schema-BrowsersListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBrowsersListResponse();
      var od = api.BrowsersListResponse.fromJson(o.toJson());
      checkBrowsersListResponse(od);
    });
  });

  unittest.group('obj-schema-Campaign', () {
    unittest.test('to-json--from-json', () {
      var o = buildCampaign();
      var od = api.Campaign.fromJson(o.toJson());
      checkCampaign(od);
    });
  });

  unittest.group('obj-schema-CampaignCreativeAssociation', () {
    unittest.test('to-json--from-json', () {
      var o = buildCampaignCreativeAssociation();
      var od = api.CampaignCreativeAssociation.fromJson(o.toJson());
      checkCampaignCreativeAssociation(od);
    });
  });

  unittest.group('obj-schema-CampaignCreativeAssociationsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildCampaignCreativeAssociationsListResponse();
      var od =
          api.CampaignCreativeAssociationsListResponse.fromJson(o.toJson());
      checkCampaignCreativeAssociationsListResponse(od);
    });
  });

  unittest.group('obj-schema-CampaignManagerIds', () {
    unittest.test('to-json--from-json', () {
      var o = buildCampaignManagerIds();
      var od = api.CampaignManagerIds.fromJson(o.toJson());
      checkCampaignManagerIds(od);
    });
  });

  unittest.group('obj-schema-CampaignsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildCampaignsListResponse();
      var od = api.CampaignsListResponse.fromJson(o.toJson());
      checkCampaignsListResponse(od);
    });
  });

  unittest.group('obj-schema-ChangeLog', () {
    unittest.test('to-json--from-json', () {
      var o = buildChangeLog();
      var od = api.ChangeLog.fromJson(o.toJson());
      checkChangeLog(od);
    });
  });

  unittest.group('obj-schema-ChangeLogsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildChangeLogsListResponse();
      var od = api.ChangeLogsListResponse.fromJson(o.toJson());
      checkChangeLogsListResponse(od);
    });
  });

  unittest.group('obj-schema-ChannelGrouping', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannelGrouping();
      var od = api.ChannelGrouping.fromJson(o.toJson());
      checkChannelGrouping(od);
    });
  });

  unittest.group('obj-schema-ChannelGroupingRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildChannelGroupingRule();
      var od = api.ChannelGroupingRule.fromJson(o.toJson());
      checkChannelGroupingRule(od);
    });
  });

  unittest.group('obj-schema-CitiesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildCitiesListResponse();
      var od = api.CitiesListResponse.fromJson(o.toJson());
      checkCitiesListResponse(od);
    });
  });

  unittest.group('obj-schema-City', () {
    unittest.test('to-json--from-json', () {
      var o = buildCity();
      var od = api.City.fromJson(o.toJson());
      checkCity(od);
    });
  });

  unittest.group('obj-schema-ClickTag', () {
    unittest.test('to-json--from-json', () {
      var o = buildClickTag();
      var od = api.ClickTag.fromJson(o.toJson());
      checkClickTag(od);
    });
  });

  unittest.group('obj-schema-ClickThroughUrl', () {
    unittest.test('to-json--from-json', () {
      var o = buildClickThroughUrl();
      var od = api.ClickThroughUrl.fromJson(o.toJson());
      checkClickThroughUrl(od);
    });
  });

  unittest.group('obj-schema-ClickThroughUrlSuffixProperties', () {
    unittest.test('to-json--from-json', () {
      var o = buildClickThroughUrlSuffixProperties();
      var od = api.ClickThroughUrlSuffixProperties.fromJson(o.toJson());
      checkClickThroughUrlSuffixProperties(od);
    });
  });

  unittest.group('obj-schema-CompanionClickThroughOverride', () {
    unittest.test('to-json--from-json', () {
      var o = buildCompanionClickThroughOverride();
      var od = api.CompanionClickThroughOverride.fromJson(o.toJson());
      checkCompanionClickThroughOverride(od);
    });
  });

  unittest.group('obj-schema-CompanionSetting', () {
    unittest.test('to-json--from-json', () {
      var o = buildCompanionSetting();
      var od = api.CompanionSetting.fromJson(o.toJson());
      checkCompanionSetting(od);
    });
  });

  unittest.group('obj-schema-CompatibleFields', () {
    unittest.test('to-json--from-json', () {
      var o = buildCompatibleFields();
      var od = api.CompatibleFields.fromJson(o.toJson());
      checkCompatibleFields(od);
    });
  });

  unittest.group('obj-schema-ConnectionType', () {
    unittest.test('to-json--from-json', () {
      var o = buildConnectionType();
      var od = api.ConnectionType.fromJson(o.toJson());
      checkConnectionType(od);
    });
  });

  unittest.group('obj-schema-ConnectionTypesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildConnectionTypesListResponse();
      var od = api.ConnectionTypesListResponse.fromJson(o.toJson());
      checkConnectionTypesListResponse(od);
    });
  });

  unittest.group('obj-schema-ContentCategoriesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildContentCategoriesListResponse();
      var od = api.ContentCategoriesListResponse.fromJson(o.toJson());
      checkContentCategoriesListResponse(od);
    });
  });

  unittest.group('obj-schema-ContentCategory', () {
    unittest.test('to-json--from-json', () {
      var o = buildContentCategory();
      var od = api.ContentCategory.fromJson(o.toJson());
      checkContentCategory(od);
    });
  });

  unittest.group('obj-schema-Conversion', () {
    unittest.test('to-json--from-json', () {
      var o = buildConversion();
      var od = api.Conversion.fromJson(o.toJson());
      checkConversion(od);
    });
  });

  unittest.group('obj-schema-ConversionError', () {
    unittest.test('to-json--from-json', () {
      var o = buildConversionError();
      var od = api.ConversionError.fromJson(o.toJson());
      checkConversionError(od);
    });
  });

  unittest.group('obj-schema-ConversionStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildConversionStatus();
      var od = api.ConversionStatus.fromJson(o.toJson());
      checkConversionStatus(od);
    });
  });

  unittest.group('obj-schema-ConversionsBatchInsertRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildConversionsBatchInsertRequest();
      var od = api.ConversionsBatchInsertRequest.fromJson(o.toJson());
      checkConversionsBatchInsertRequest(od);
    });
  });

  unittest.group('obj-schema-ConversionsBatchInsertResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildConversionsBatchInsertResponse();
      var od = api.ConversionsBatchInsertResponse.fromJson(o.toJson());
      checkConversionsBatchInsertResponse(od);
    });
  });

  unittest.group('obj-schema-ConversionsBatchUpdateRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildConversionsBatchUpdateRequest();
      var od = api.ConversionsBatchUpdateRequest.fromJson(o.toJson());
      checkConversionsBatchUpdateRequest(od);
    });
  });

  unittest.group('obj-schema-ConversionsBatchUpdateResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildConversionsBatchUpdateResponse();
      var od = api.ConversionsBatchUpdateResponse.fromJson(o.toJson());
      checkConversionsBatchUpdateResponse(od);
    });
  });

  unittest.group('obj-schema-CountriesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildCountriesListResponse();
      var od = api.CountriesListResponse.fromJson(o.toJson());
      checkCountriesListResponse(od);
    });
  });

  unittest.group('obj-schema-Country', () {
    unittest.test('to-json--from-json', () {
      var o = buildCountry();
      var od = api.Country.fromJson(o.toJson());
      checkCountry(od);
    });
  });

  unittest.group('obj-schema-Creative', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreative();
      var od = api.Creative.fromJson(o.toJson());
      checkCreative(od);
    });
  });

  unittest.group('obj-schema-CreativeAsset', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreativeAsset();
      var od = api.CreativeAsset.fromJson(o.toJson());
      checkCreativeAsset(od);
    });
  });

  unittest.group('obj-schema-CreativeAssetId', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreativeAssetId();
      var od = api.CreativeAssetId.fromJson(o.toJson());
      checkCreativeAssetId(od);
    });
  });

  unittest.group('obj-schema-CreativeAssetMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreativeAssetMetadata();
      var od = api.CreativeAssetMetadata.fromJson(o.toJson());
      checkCreativeAssetMetadata(od);
    });
  });

  unittest.group('obj-schema-CreativeAssetSelection', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreativeAssetSelection();
      var od = api.CreativeAssetSelection.fromJson(o.toJson());
      checkCreativeAssetSelection(od);
    });
  });

  unittest.group('obj-schema-CreativeAssignment', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreativeAssignment();
      var od = api.CreativeAssignment.fromJson(o.toJson());
      checkCreativeAssignment(od);
    });
  });

  unittest.group('obj-schema-CreativeClickThroughUrl', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreativeClickThroughUrl();
      var od = api.CreativeClickThroughUrl.fromJson(o.toJson());
      checkCreativeClickThroughUrl(od);
    });
  });

  unittest.group('obj-schema-CreativeCustomEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreativeCustomEvent();
      var od = api.CreativeCustomEvent.fromJson(o.toJson());
      checkCreativeCustomEvent(od);
    });
  });

  unittest.group('obj-schema-CreativeField', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreativeField();
      var od = api.CreativeField.fromJson(o.toJson());
      checkCreativeField(od);
    });
  });

  unittest.group('obj-schema-CreativeFieldAssignment', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreativeFieldAssignment();
      var od = api.CreativeFieldAssignment.fromJson(o.toJson());
      checkCreativeFieldAssignment(od);
    });
  });

  unittest.group('obj-schema-CreativeFieldValue', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreativeFieldValue();
      var od = api.CreativeFieldValue.fromJson(o.toJson());
      checkCreativeFieldValue(od);
    });
  });

  unittest.group('obj-schema-CreativeFieldValuesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreativeFieldValuesListResponse();
      var od = api.CreativeFieldValuesListResponse.fromJson(o.toJson());
      checkCreativeFieldValuesListResponse(od);
    });
  });

  unittest.group('obj-schema-CreativeFieldsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreativeFieldsListResponse();
      var od = api.CreativeFieldsListResponse.fromJson(o.toJson());
      checkCreativeFieldsListResponse(od);
    });
  });

  unittest.group('obj-schema-CreativeGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreativeGroup();
      var od = api.CreativeGroup.fromJson(o.toJson());
      checkCreativeGroup(od);
    });
  });

  unittest.group('obj-schema-CreativeGroupAssignment', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreativeGroupAssignment();
      var od = api.CreativeGroupAssignment.fromJson(o.toJson());
      checkCreativeGroupAssignment(od);
    });
  });

  unittest.group('obj-schema-CreativeGroupsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreativeGroupsListResponse();
      var od = api.CreativeGroupsListResponse.fromJson(o.toJson());
      checkCreativeGroupsListResponse(od);
    });
  });

  unittest.group('obj-schema-CreativeOptimizationConfiguration', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreativeOptimizationConfiguration();
      var od = api.CreativeOptimizationConfiguration.fromJson(o.toJson());
      checkCreativeOptimizationConfiguration(od);
    });
  });

  unittest.group('obj-schema-CreativeRotation', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreativeRotation();
      var od = api.CreativeRotation.fromJson(o.toJson());
      checkCreativeRotation(od);
    });
  });

  unittest.group('obj-schema-CreativesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreativesListResponse();
      var od = api.CreativesListResponse.fromJson(o.toJson());
      checkCreativesListResponse(od);
    });
  });

  unittest.group('obj-schema-CrossDimensionReachReportCompatibleFields', () {
    unittest.test('to-json--from-json', () {
      var o = buildCrossDimensionReachReportCompatibleFields();
      var od =
          api.CrossDimensionReachReportCompatibleFields.fromJson(o.toJson());
      checkCrossDimensionReachReportCompatibleFields(od);
    });
  });

  unittest.group('obj-schema-CustomEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomEvent();
      var od = api.CustomEvent.fromJson(o.toJson());
      checkCustomEvent(od);
    });
  });

  unittest.group('obj-schema-CustomEventClickAnnotation', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomEventClickAnnotation();
      var od = api.CustomEventClickAnnotation.fromJson(o.toJson());
      checkCustomEventClickAnnotation(od);
    });
  });

  unittest.group('obj-schema-CustomEventError', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomEventError();
      var od = api.CustomEventError.fromJson(o.toJson());
      checkCustomEventError(od);
    });
  });

  unittest.group('obj-schema-CustomEventImpressionAnnotation', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomEventImpressionAnnotation();
      var od = api.CustomEventImpressionAnnotation.fromJson(o.toJson());
      checkCustomEventImpressionAnnotation(od);
    });
  });

  unittest.group('obj-schema-CustomEventInsert', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomEventInsert();
      var od = api.CustomEventInsert.fromJson(o.toJson());
      checkCustomEventInsert(od);
    });
  });

  unittest.group('obj-schema-CustomEventStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomEventStatus();
      var od = api.CustomEventStatus.fromJson(o.toJson());
      checkCustomEventStatus(od);
    });
  });

  unittest.group('obj-schema-CustomEventsBatchInsertRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomEventsBatchInsertRequest();
      var od = api.CustomEventsBatchInsertRequest.fromJson(o.toJson());
      checkCustomEventsBatchInsertRequest(od);
    });
  });

  unittest.group('obj-schema-CustomEventsBatchInsertResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomEventsBatchInsertResponse();
      var od = api.CustomEventsBatchInsertResponse.fromJson(o.toJson());
      checkCustomEventsBatchInsertResponse(od);
    });
  });

  unittest.group('obj-schema-CustomFloodlightVariable', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomFloodlightVariable();
      var od = api.CustomFloodlightVariable.fromJson(o.toJson());
      checkCustomFloodlightVariable(od);
    });
  });

  unittest.group('obj-schema-CustomRichMediaEvents', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomRichMediaEvents();
      var od = api.CustomRichMediaEvents.fromJson(o.toJson());
      checkCustomRichMediaEvents(od);
    });
  });

  unittest.group('obj-schema-CustomVariable', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomVariable();
      var od = api.CustomVariable.fromJson(o.toJson());
      checkCustomVariable(od);
    });
  });

  unittest.group('obj-schema-CustomViewabilityMetric', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomViewabilityMetric();
      var od = api.CustomViewabilityMetric.fromJson(o.toJson());
      checkCustomViewabilityMetric(od);
    });
  });

  unittest.group('obj-schema-CustomViewabilityMetricConfiguration', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomViewabilityMetricConfiguration();
      var od = api.CustomViewabilityMetricConfiguration.fromJson(o.toJson());
      checkCustomViewabilityMetricConfiguration(od);
    });
  });

  unittest.group('obj-schema-DV3Ids', () {
    unittest.test('to-json--from-json', () {
      var o = buildDV3Ids();
      var od = api.DV3Ids.fromJson(o.toJson());
      checkDV3Ids(od);
    });
  });

  unittest.group('obj-schema-DateRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildDateRange();
      var od = api.DateRange.fromJson(o.toJson());
      checkDateRange(od);
    });
  });

  unittest.group('obj-schema-DayPartTargeting', () {
    unittest.test('to-json--from-json', () {
      var o = buildDayPartTargeting();
      var od = api.DayPartTargeting.fromJson(o.toJson());
      checkDayPartTargeting(od);
    });
  });

  unittest.group('obj-schema-DeepLink', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeepLink();
      var od = api.DeepLink.fromJson(o.toJson());
      checkDeepLink(od);
    });
  });

  unittest.group('obj-schema-DefaultClickThroughEventTagProperties', () {
    unittest.test('to-json--from-json', () {
      var o = buildDefaultClickThroughEventTagProperties();
      var od = api.DefaultClickThroughEventTagProperties.fromJson(o.toJson());
      checkDefaultClickThroughEventTagProperties(od);
    });
  });

  unittest.group('obj-schema-DeliverySchedule', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeliverySchedule();
      var od = api.DeliverySchedule.fromJson(o.toJson());
      checkDeliverySchedule(od);
    });
  });

  unittest.group('obj-schema-DfpSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildDfpSettings();
      var od = api.DfpSettings.fromJson(o.toJson());
      checkDfpSettings(od);
    });
  });

  unittest.group('obj-schema-Dimension', () {
    unittest.test('to-json--from-json', () {
      var o = buildDimension();
      var od = api.Dimension.fromJson(o.toJson());
      checkDimension(od);
    });
  });

  unittest.group('obj-schema-DimensionFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildDimensionFilter();
      var od = api.DimensionFilter.fromJson(o.toJson());
      checkDimensionFilter(od);
    });
  });

  unittest.group('obj-schema-DimensionValue', () {
    unittest.test('to-json--from-json', () {
      var o = buildDimensionValue();
      var od = api.DimensionValue.fromJson(o.toJson());
      checkDimensionValue(od);
    });
  });

  unittest.group('obj-schema-DimensionValueList', () {
    unittest.test('to-json--from-json', () {
      var o = buildDimensionValueList();
      var od = api.DimensionValueList.fromJson(o.toJson());
      checkDimensionValueList(od);
    });
  });

  unittest.group('obj-schema-DimensionValueRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDimensionValueRequest();
      var od = api.DimensionValueRequest.fromJson(o.toJson());
      checkDimensionValueRequest(od);
    });
  });

  unittest.group('obj-schema-DirectorySite', () {
    unittest.test('to-json--from-json', () {
      var o = buildDirectorySite();
      var od = api.DirectorySite.fromJson(o.toJson());
      checkDirectorySite(od);
    });
  });

  unittest.group('obj-schema-DirectorySiteSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildDirectorySiteSettings();
      var od = api.DirectorySiteSettings.fromJson(o.toJson());
      checkDirectorySiteSettings(od);
    });
  });

  unittest.group('obj-schema-DirectorySitesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildDirectorySitesListResponse();
      var od = api.DirectorySitesListResponse.fromJson(o.toJson());
      checkDirectorySitesListResponse(od);
    });
  });

  unittest.group('obj-schema-DisjunctiveMatchStatement', () {
    unittest.test('to-json--from-json', () {
      var o = buildDisjunctiveMatchStatement();
      var od = api.DisjunctiveMatchStatement.fromJson(o.toJson());
      checkDisjunctiveMatchStatement(od);
    });
  });

  unittest.group('obj-schema-DynamicTargetingKey', () {
    unittest.test('to-json--from-json', () {
      var o = buildDynamicTargetingKey();
      var od = api.DynamicTargetingKey.fromJson(o.toJson());
      checkDynamicTargetingKey(od);
    });
  });

  unittest.group('obj-schema-DynamicTargetingKeysListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildDynamicTargetingKeysListResponse();
      var od = api.DynamicTargetingKeysListResponse.fromJson(o.toJson());
      checkDynamicTargetingKeysListResponse(od);
    });
  });

  unittest.group('obj-schema-EncryptionInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildEncryptionInfo();
      var od = api.EncryptionInfo.fromJson(o.toJson());
      checkEncryptionInfo(od);
    });
  });

  unittest.group('obj-schema-EventFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildEventFilter();
      var od = api.EventFilter.fromJson(o.toJson());
      checkEventFilter(od);
    });
  });

  unittest.group('obj-schema-EventTag', () {
    unittest.test('to-json--from-json', () {
      var o = buildEventTag();
      var od = api.EventTag.fromJson(o.toJson());
      checkEventTag(od);
    });
  });

  unittest.group('obj-schema-EventTagOverride', () {
    unittest.test('to-json--from-json', () {
      var o = buildEventTagOverride();
      var od = api.EventTagOverride.fromJson(o.toJson());
      checkEventTagOverride(od);
    });
  });

  unittest.group('obj-schema-EventTagsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildEventTagsListResponse();
      var od = api.EventTagsListResponse.fromJson(o.toJson());
      checkEventTagsListResponse(od);
    });
  });

  unittest.group('obj-schema-FileUrls', () {
    unittest.test('to-json--from-json', () {
      var o = buildFileUrls();
      var od = api.FileUrls.fromJson(o.toJson());
      checkFileUrls(od);
    });
  });

  unittest.group('obj-schema-File', () {
    unittest.test('to-json--from-json', () {
      var o = buildFile();
      var od = api.File.fromJson(o.toJson());
      checkFile(od);
    });
  });

  unittest.group('obj-schema-FileList', () {
    unittest.test('to-json--from-json', () {
      var o = buildFileList();
      var od = api.FileList.fromJson(o.toJson());
      checkFileList(od);
    });
  });

  unittest.group('obj-schema-Flight', () {
    unittest.test('to-json--from-json', () {
      var o = buildFlight();
      var od = api.Flight.fromJson(o.toJson());
      checkFlight(od);
    });
  });

  unittest.group('obj-schema-FloodlightActivitiesGenerateTagResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildFloodlightActivitiesGenerateTagResponse();
      var od = api.FloodlightActivitiesGenerateTagResponse.fromJson(o.toJson());
      checkFloodlightActivitiesGenerateTagResponse(od);
    });
  });

  unittest.group('obj-schema-FloodlightActivitiesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildFloodlightActivitiesListResponse();
      var od = api.FloodlightActivitiesListResponse.fromJson(o.toJson());
      checkFloodlightActivitiesListResponse(od);
    });
  });

  unittest.group('obj-schema-FloodlightActivity', () {
    unittest.test('to-json--from-json', () {
      var o = buildFloodlightActivity();
      var od = api.FloodlightActivity.fromJson(o.toJson());
      checkFloodlightActivity(od);
    });
  });

  unittest.group('obj-schema-FloodlightActivityDynamicTag', () {
    unittest.test('to-json--from-json', () {
      var o = buildFloodlightActivityDynamicTag();
      var od = api.FloodlightActivityDynamicTag.fromJson(o.toJson());
      checkFloodlightActivityDynamicTag(od);
    });
  });

  unittest.group('obj-schema-FloodlightActivityGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildFloodlightActivityGroup();
      var od = api.FloodlightActivityGroup.fromJson(o.toJson());
      checkFloodlightActivityGroup(od);
    });
  });

  unittest.group('obj-schema-FloodlightActivityGroupsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildFloodlightActivityGroupsListResponse();
      var od = api.FloodlightActivityGroupsListResponse.fromJson(o.toJson());
      checkFloodlightActivityGroupsListResponse(od);
    });
  });

  unittest.group('obj-schema-FloodlightActivityPublisherDynamicTag', () {
    unittest.test('to-json--from-json', () {
      var o = buildFloodlightActivityPublisherDynamicTag();
      var od = api.FloodlightActivityPublisherDynamicTag.fromJson(o.toJson());
      checkFloodlightActivityPublisherDynamicTag(od);
    });
  });

  unittest.group('obj-schema-FloodlightConfiguration', () {
    unittest.test('to-json--from-json', () {
      var o = buildFloodlightConfiguration();
      var od = api.FloodlightConfiguration.fromJson(o.toJson());
      checkFloodlightConfiguration(od);
    });
  });

  unittest.group('obj-schema-FloodlightConfigurationsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildFloodlightConfigurationsListResponse();
      var od = api.FloodlightConfigurationsListResponse.fromJson(o.toJson());
      checkFloodlightConfigurationsListResponse(od);
    });
  });

  unittest.group('obj-schema-FloodlightReportCompatibleFields', () {
    unittest.test('to-json--from-json', () {
      var o = buildFloodlightReportCompatibleFields();
      var od = api.FloodlightReportCompatibleFields.fromJson(o.toJson());
      checkFloodlightReportCompatibleFields(od);
    });
  });

  unittest.group('obj-schema-FrequencyCap', () {
    unittest.test('to-json--from-json', () {
      var o = buildFrequencyCap();
      var od = api.FrequencyCap.fromJson(o.toJson());
      checkFrequencyCap(od);
    });
  });

  unittest.group('obj-schema-FsCommand', () {
    unittest.test('to-json--from-json', () {
      var o = buildFsCommand();
      var od = api.FsCommand.fromJson(o.toJson());
      checkFsCommand(od);
    });
  });

  unittest.group('obj-schema-GeoTargeting', () {
    unittest.test('to-json--from-json', () {
      var o = buildGeoTargeting();
      var od = api.GeoTargeting.fromJson(o.toJson());
      checkGeoTargeting(od);
    });
  });

  unittest.group('obj-schema-InventoryItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildInventoryItem();
      var od = api.InventoryItem.fromJson(o.toJson());
      checkInventoryItem(od);
    });
  });

  unittest.group('obj-schema-InventoryItemsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildInventoryItemsListResponse();
      var od = api.InventoryItemsListResponse.fromJson(o.toJson());
      checkInventoryItemsListResponse(od);
    });
  });

  unittest.group('obj-schema-KeyValueTargetingExpression', () {
    unittest.test('to-json--from-json', () {
      var o = buildKeyValueTargetingExpression();
      var od = api.KeyValueTargetingExpression.fromJson(o.toJson());
      checkKeyValueTargetingExpression(od);
    });
  });

  unittest.group('obj-schema-LandingPage', () {
    unittest.test('to-json--from-json', () {
      var o = buildLandingPage();
      var od = api.LandingPage.fromJson(o.toJson());
      checkLandingPage(od);
    });
  });

  unittest.group('obj-schema-Language', () {
    unittest.test('to-json--from-json', () {
      var o = buildLanguage();
      var od = api.Language.fromJson(o.toJson());
      checkLanguage(od);
    });
  });

  unittest.group('obj-schema-LanguageTargeting', () {
    unittest.test('to-json--from-json', () {
      var o = buildLanguageTargeting();
      var od = api.LanguageTargeting.fromJson(o.toJson());
      checkLanguageTargeting(od);
    });
  });

  unittest.group('obj-schema-LanguagesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLanguagesListResponse();
      var od = api.LanguagesListResponse.fromJson(o.toJson());
      checkLanguagesListResponse(od);
    });
  });

  unittest.group('obj-schema-LastModifiedInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildLastModifiedInfo();
      var od = api.LastModifiedInfo.fromJson(o.toJson());
      checkLastModifiedInfo(od);
    });
  });

  unittest.group('obj-schema-ListPopulationClause', () {
    unittest.test('to-json--from-json', () {
      var o = buildListPopulationClause();
      var od = api.ListPopulationClause.fromJson(o.toJson());
      checkListPopulationClause(od);
    });
  });

  unittest.group('obj-schema-ListPopulationRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildListPopulationRule();
      var od = api.ListPopulationRule.fromJson(o.toJson());
      checkListPopulationRule(od);
    });
  });

  unittest.group('obj-schema-ListPopulationTerm', () {
    unittest.test('to-json--from-json', () {
      var o = buildListPopulationTerm();
      var od = api.ListPopulationTerm.fromJson(o.toJson());
      checkListPopulationTerm(od);
    });
  });

  unittest.group('obj-schema-ListTargetingExpression', () {
    unittest.test('to-json--from-json', () {
      var o = buildListTargetingExpression();
      var od = api.ListTargetingExpression.fromJson(o.toJson());
      checkListTargetingExpression(od);
    });
  });

  unittest.group('obj-schema-LookbackConfiguration', () {
    unittest.test('to-json--from-json', () {
      var o = buildLookbackConfiguration();
      var od = api.LookbackConfiguration.fromJson(o.toJson());
      checkLookbackConfiguration(od);
    });
  });

  unittest.group('obj-schema-Metric', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetric();
      var od = api.Metric.fromJson(o.toJson());
      checkMetric(od);
    });
  });

  unittest.group('obj-schema-Metro', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetro();
      var od = api.Metro.fromJson(o.toJson());
      checkMetro(od);
    });
  });

  unittest.group('obj-schema-MetrosListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetrosListResponse();
      var od = api.MetrosListResponse.fromJson(o.toJson());
      checkMetrosListResponse(od);
    });
  });

  unittest.group('obj-schema-MobileApp', () {
    unittest.test('to-json--from-json', () {
      var o = buildMobileApp();
      var od = api.MobileApp.fromJson(o.toJson());
      checkMobileApp(od);
    });
  });

  unittest.group('obj-schema-MobileAppsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildMobileAppsListResponse();
      var od = api.MobileAppsListResponse.fromJson(o.toJson());
      checkMobileAppsListResponse(od);
    });
  });

  unittest.group('obj-schema-MobileCarrier', () {
    unittest.test('to-json--from-json', () {
      var o = buildMobileCarrier();
      var od = api.MobileCarrier.fromJson(o.toJson());
      checkMobileCarrier(od);
    });
  });

  unittest.group('obj-schema-MobileCarriersListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildMobileCarriersListResponse();
      var od = api.MobileCarriersListResponse.fromJson(o.toJson());
      checkMobileCarriersListResponse(od);
    });
  });

  unittest.group('obj-schema-ObaIcon', () {
    unittest.test('to-json--from-json', () {
      var o = buildObaIcon();
      var od = api.ObaIcon.fromJson(o.toJson());
      checkObaIcon(od);
    });
  });

  unittest.group('obj-schema-ObjectFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildObjectFilter();
      var od = api.ObjectFilter.fromJson(o.toJson());
      checkObjectFilter(od);
    });
  });

  unittest.group('obj-schema-OffsetPosition', () {
    unittest.test('to-json--from-json', () {
      var o = buildOffsetPosition();
      var od = api.OffsetPosition.fromJson(o.toJson());
      checkOffsetPosition(od);
    });
  });

  unittest.group('obj-schema-OmnitureSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildOmnitureSettings();
      var od = api.OmnitureSettings.fromJson(o.toJson());
      checkOmnitureSettings(od);
    });
  });

  unittest.group('obj-schema-OperatingSystem', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperatingSystem();
      var od = api.OperatingSystem.fromJson(o.toJson());
      checkOperatingSystem(od);
    });
  });

  unittest.group('obj-schema-OperatingSystemVersion', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperatingSystemVersion();
      var od = api.OperatingSystemVersion.fromJson(o.toJson());
      checkOperatingSystemVersion(od);
    });
  });

  unittest.group('obj-schema-OperatingSystemVersionsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperatingSystemVersionsListResponse();
      var od = api.OperatingSystemVersionsListResponse.fromJson(o.toJson());
      checkOperatingSystemVersionsListResponse(od);
    });
  });

  unittest.group('obj-schema-OperatingSystemsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOperatingSystemsListResponse();
      var od = api.OperatingSystemsListResponse.fromJson(o.toJson());
      checkOperatingSystemsListResponse(od);
    });
  });

  unittest.group('obj-schema-OptimizationActivity', () {
    unittest.test('to-json--from-json', () {
      var o = buildOptimizationActivity();
      var od = api.OptimizationActivity.fromJson(o.toJson());
      checkOptimizationActivity(od);
    });
  });

  unittest.group('obj-schema-Order', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrder();
      var od = api.Order.fromJson(o.toJson());
      checkOrder(od);
    });
  });

  unittest.group('obj-schema-OrderContact', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderContact();
      var od = api.OrderContact.fromJson(o.toJson());
      checkOrderContact(od);
    });
  });

  unittest.group('obj-schema-OrderDocument', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderDocument();
      var od = api.OrderDocument.fromJson(o.toJson());
      checkOrderDocument(od);
    });
  });

  unittest.group('obj-schema-OrderDocumentsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrderDocumentsListResponse();
      var od = api.OrderDocumentsListResponse.fromJson(o.toJson());
      checkOrderDocumentsListResponse(od);
    });
  });

  unittest.group('obj-schema-OrdersListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildOrdersListResponse();
      var od = api.OrdersListResponse.fromJson(o.toJson());
      checkOrdersListResponse(od);
    });
  });

  unittest.group('obj-schema-PathFilter', () {
    unittest.test('to-json--from-json', () {
      var o = buildPathFilter();
      var od = api.PathFilter.fromJson(o.toJson());
      checkPathFilter(od);
    });
  });

  unittest.group('obj-schema-PathReportCompatibleFields', () {
    unittest.test('to-json--from-json', () {
      var o = buildPathReportCompatibleFields();
      var od = api.PathReportCompatibleFields.fromJson(o.toJson());
      checkPathReportCompatibleFields(od);
    });
  });

  unittest.group('obj-schema-PathReportDimensionValue', () {
    unittest.test('to-json--from-json', () {
      var o = buildPathReportDimensionValue();
      var od = api.PathReportDimensionValue.fromJson(o.toJson());
      checkPathReportDimensionValue(od);
    });
  });

  unittest.group('obj-schema-PathToConversionReportCompatibleFields', () {
    unittest.test('to-json--from-json', () {
      var o = buildPathToConversionReportCompatibleFields();
      var od = api.PathToConversionReportCompatibleFields.fromJson(o.toJson());
      checkPathToConversionReportCompatibleFields(od);
    });
  });

  unittest.group('obj-schema-Placement', () {
    unittest.test('to-json--from-json', () {
      var o = buildPlacement();
      var od = api.Placement.fromJson(o.toJson());
      checkPlacement(od);
    });
  });

  unittest.group('obj-schema-PlacementAssignment', () {
    unittest.test('to-json--from-json', () {
      var o = buildPlacementAssignment();
      var od = api.PlacementAssignment.fromJson(o.toJson());
      checkPlacementAssignment(od);
    });
  });

  unittest.group('obj-schema-PlacementGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildPlacementGroup();
      var od = api.PlacementGroup.fromJson(o.toJson());
      checkPlacementGroup(od);
    });
  });

  unittest.group('obj-schema-PlacementGroupsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildPlacementGroupsListResponse();
      var od = api.PlacementGroupsListResponse.fromJson(o.toJson());
      checkPlacementGroupsListResponse(od);
    });
  });

  unittest.group('obj-schema-PlacementStrategiesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildPlacementStrategiesListResponse();
      var od = api.PlacementStrategiesListResponse.fromJson(o.toJson());
      checkPlacementStrategiesListResponse(od);
    });
  });

  unittest.group('obj-schema-PlacementStrategy', () {
    unittest.test('to-json--from-json', () {
      var o = buildPlacementStrategy();
      var od = api.PlacementStrategy.fromJson(o.toJson());
      checkPlacementStrategy(od);
    });
  });

  unittest.group('obj-schema-PlacementTag', () {
    unittest.test('to-json--from-json', () {
      var o = buildPlacementTag();
      var od = api.PlacementTag.fromJson(o.toJson());
      checkPlacementTag(od);
    });
  });

  unittest.group('obj-schema-PlacementsGenerateTagsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildPlacementsGenerateTagsResponse();
      var od = api.PlacementsGenerateTagsResponse.fromJson(o.toJson());
      checkPlacementsGenerateTagsResponse(od);
    });
  });

  unittest.group('obj-schema-PlacementsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildPlacementsListResponse();
      var od = api.PlacementsListResponse.fromJson(o.toJson());
      checkPlacementsListResponse(od);
    });
  });

  unittest.group('obj-schema-PlatformType', () {
    unittest.test('to-json--from-json', () {
      var o = buildPlatformType();
      var od = api.PlatformType.fromJson(o.toJson());
      checkPlatformType(od);
    });
  });

  unittest.group('obj-schema-PlatformTypesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildPlatformTypesListResponse();
      var od = api.PlatformTypesListResponse.fromJson(o.toJson());
      checkPlatformTypesListResponse(od);
    });
  });

  unittest.group('obj-schema-PopupWindowProperties', () {
    unittest.test('to-json--from-json', () {
      var o = buildPopupWindowProperties();
      var od = api.PopupWindowProperties.fromJson(o.toJson());
      checkPopupWindowProperties(od);
    });
  });

  unittest.group('obj-schema-PostalCode', () {
    unittest.test('to-json--from-json', () {
      var o = buildPostalCode();
      var od = api.PostalCode.fromJson(o.toJson());
      checkPostalCode(od);
    });
  });

  unittest.group('obj-schema-PostalCodesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildPostalCodesListResponse();
      var od = api.PostalCodesListResponse.fromJson(o.toJson());
      checkPostalCodesListResponse(od);
    });
  });

  unittest.group('obj-schema-Pricing', () {
    unittest.test('to-json--from-json', () {
      var o = buildPricing();
      var od = api.Pricing.fromJson(o.toJson());
      checkPricing(od);
    });
  });

  unittest.group('obj-schema-PricingSchedule', () {
    unittest.test('to-json--from-json', () {
      var o = buildPricingSchedule();
      var od = api.PricingSchedule.fromJson(o.toJson());
      checkPricingSchedule(od);
    });
  });

  unittest.group('obj-schema-PricingSchedulePricingPeriod', () {
    unittest.test('to-json--from-json', () {
      var o = buildPricingSchedulePricingPeriod();
      var od = api.PricingSchedulePricingPeriod.fromJson(o.toJson());
      checkPricingSchedulePricingPeriod(od);
    });
  });

  unittest.group('obj-schema-Project', () {
    unittest.test('to-json--from-json', () {
      var o = buildProject();
      var od = api.Project.fromJson(o.toJson());
      checkProject(od);
    });
  });

  unittest.group('obj-schema-ProjectsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildProjectsListResponse();
      var od = api.ProjectsListResponse.fromJson(o.toJson());
      checkProjectsListResponse(od);
    });
  });

  unittest.group('obj-schema-ReachReportCompatibleFields', () {
    unittest.test('to-json--from-json', () {
      var o = buildReachReportCompatibleFields();
      var od = api.ReachReportCompatibleFields.fromJson(o.toJson());
      checkReachReportCompatibleFields(od);
    });
  });

  unittest.group('obj-schema-Recipient', () {
    unittest.test('to-json--from-json', () {
      var o = buildRecipient();
      var od = api.Recipient.fromJson(o.toJson());
      checkRecipient(od);
    });
  });

  unittest.group('obj-schema-Region', () {
    unittest.test('to-json--from-json', () {
      var o = buildRegion();
      var od = api.Region.fromJson(o.toJson());
      checkRegion(od);
    });
  });

  unittest.group('obj-schema-RegionsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildRegionsListResponse();
      var od = api.RegionsListResponse.fromJson(o.toJson());
      checkRegionsListResponse(od);
    });
  });

  unittest.group('obj-schema-RemarketingList', () {
    unittest.test('to-json--from-json', () {
      var o = buildRemarketingList();
      var od = api.RemarketingList.fromJson(o.toJson());
      checkRemarketingList(od);
    });
  });

  unittest.group('obj-schema-RemarketingListShare', () {
    unittest.test('to-json--from-json', () {
      var o = buildRemarketingListShare();
      var od = api.RemarketingListShare.fromJson(o.toJson());
      checkRemarketingListShare(od);
    });
  });

  unittest.group('obj-schema-RemarketingListsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildRemarketingListsListResponse();
      var od = api.RemarketingListsListResponse.fromJson(o.toJson());
      checkRemarketingListsListResponse(od);
    });
  });

  unittest.group('obj-schema-ReportCriteria', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportCriteria();
      var od = api.ReportCriteria.fromJson(o.toJson());
      checkReportCriteria(od);
    });
  });

  unittest.group('obj-schema-ReportCrossDimensionReachCriteria', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportCrossDimensionReachCriteria();
      var od = api.ReportCrossDimensionReachCriteria.fromJson(o.toJson());
      checkReportCrossDimensionReachCriteria(od);
    });
  });

  unittest.group('obj-schema-ReportDelivery', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportDelivery();
      var od = api.ReportDelivery.fromJson(o.toJson());
      checkReportDelivery(od);
    });
  });

  unittest.group('obj-schema-ReportFloodlightCriteriaReportProperties', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportFloodlightCriteriaReportProperties();
      var od =
          api.ReportFloodlightCriteriaReportProperties.fromJson(o.toJson());
      checkReportFloodlightCriteriaReportProperties(od);
    });
  });

  unittest.group('obj-schema-ReportFloodlightCriteria', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportFloodlightCriteria();
      var od = api.ReportFloodlightCriteria.fromJson(o.toJson());
      checkReportFloodlightCriteria(od);
    });
  });

  unittest.group('obj-schema-ReportPathAttributionCriteria', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportPathAttributionCriteria();
      var od = api.ReportPathAttributionCriteria.fromJson(o.toJson());
      checkReportPathAttributionCriteria(od);
    });
  });

  unittest.group('obj-schema-ReportPathCriteria', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportPathCriteria();
      var od = api.ReportPathCriteria.fromJson(o.toJson());
      checkReportPathCriteria(od);
    });
  });

  unittest.group('obj-schema-ReportPathToConversionCriteriaReportProperties',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildReportPathToConversionCriteriaReportProperties();
      var od = api.ReportPathToConversionCriteriaReportProperties.fromJson(
          o.toJson());
      checkReportPathToConversionCriteriaReportProperties(od);
    });
  });

  unittest.group('obj-schema-ReportPathToConversionCriteria', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportPathToConversionCriteria();
      var od = api.ReportPathToConversionCriteria.fromJson(o.toJson());
      checkReportPathToConversionCriteria(od);
    });
  });

  unittest.group('obj-schema-ReportReachCriteria', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportReachCriteria();
      var od = api.ReportReachCriteria.fromJson(o.toJson());
      checkReportReachCriteria(od);
    });
  });

  unittest.group('obj-schema-ReportSchedule', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportSchedule();
      var od = api.ReportSchedule.fromJson(o.toJson());
      checkReportSchedule(od);
    });
  });

  unittest.group('obj-schema-Report', () {
    unittest.test('to-json--from-json', () {
      var o = buildReport();
      var od = api.Report.fromJson(o.toJson());
      checkReport(od);
    });
  });

  unittest.group('obj-schema-ReportCompatibleFields', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportCompatibleFields();
      var od = api.ReportCompatibleFields.fromJson(o.toJson());
      checkReportCompatibleFields(od);
    });
  });

  unittest.group('obj-schema-ReportList', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportList();
      var od = api.ReportList.fromJson(o.toJson());
      checkReportList(od);
    });
  });

  unittest.group('obj-schema-ReportsConfiguration', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportsConfiguration();
      var od = api.ReportsConfiguration.fromJson(o.toJson());
      checkReportsConfiguration(od);
    });
  });

  unittest.group('obj-schema-RichMediaExitOverride', () {
    unittest.test('to-json--from-json', () {
      var o = buildRichMediaExitOverride();
      var od = api.RichMediaExitOverride.fromJson(o.toJson());
      checkRichMediaExitOverride(od);
    });
  });

  unittest.group('obj-schema-Rule', () {
    unittest.test('to-json--from-json', () {
      var o = buildRule();
      var od = api.Rule.fromJson(o.toJson());
      checkRule(od);
    });
  });

  unittest.group('obj-schema-Site', () {
    unittest.test('to-json--from-json', () {
      var o = buildSite();
      var od = api.Site.fromJson(o.toJson());
      checkSite(od);
    });
  });

  unittest.group('obj-schema-SiteCompanionSetting', () {
    unittest.test('to-json--from-json', () {
      var o = buildSiteCompanionSetting();
      var od = api.SiteCompanionSetting.fromJson(o.toJson());
      checkSiteCompanionSetting(od);
    });
  });

  unittest.group('obj-schema-SiteContact', () {
    unittest.test('to-json--from-json', () {
      var o = buildSiteContact();
      var od = api.SiteContact.fromJson(o.toJson());
      checkSiteContact(od);
    });
  });

  unittest.group('obj-schema-SiteSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildSiteSettings();
      var od = api.SiteSettings.fromJson(o.toJson());
      checkSiteSettings(od);
    });
  });

  unittest.group('obj-schema-SiteSkippableSetting', () {
    unittest.test('to-json--from-json', () {
      var o = buildSiteSkippableSetting();
      var od = api.SiteSkippableSetting.fromJson(o.toJson());
      checkSiteSkippableSetting(od);
    });
  });

  unittest.group('obj-schema-SiteTranscodeSetting', () {
    unittest.test('to-json--from-json', () {
      var o = buildSiteTranscodeSetting();
      var od = api.SiteTranscodeSetting.fromJson(o.toJson());
      checkSiteTranscodeSetting(od);
    });
  });

  unittest.group('obj-schema-SiteVideoSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildSiteVideoSettings();
      var od = api.SiteVideoSettings.fromJson(o.toJson());
      checkSiteVideoSettings(od);
    });
  });

  unittest.group('obj-schema-SitesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSitesListResponse();
      var od = api.SitesListResponse.fromJson(o.toJson());
      checkSitesListResponse(od);
    });
  });

  unittest.group('obj-schema-Size', () {
    unittest.test('to-json--from-json', () {
      var o = buildSize();
      var od = api.Size.fromJson(o.toJson());
      checkSize(od);
    });
  });

  unittest.group('obj-schema-SizesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSizesListResponse();
      var od = api.SizesListResponse.fromJson(o.toJson());
      checkSizesListResponse(od);
    });
  });

  unittest.group('obj-schema-SkippableSetting', () {
    unittest.test('to-json--from-json', () {
      var o = buildSkippableSetting();
      var od = api.SkippableSetting.fromJson(o.toJson());
      checkSkippableSetting(od);
    });
  });

  unittest.group('obj-schema-SortedDimension', () {
    unittest.test('to-json--from-json', () {
      var o = buildSortedDimension();
      var od = api.SortedDimension.fromJson(o.toJson());
      checkSortedDimension(od);
    });
  });

  unittest.group('obj-schema-Subaccount', () {
    unittest.test('to-json--from-json', () {
      var o = buildSubaccount();
      var od = api.Subaccount.fromJson(o.toJson());
      checkSubaccount(od);
    });
  });

  unittest.group('obj-schema-SubaccountsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSubaccountsListResponse();
      var od = api.SubaccountsListResponse.fromJson(o.toJson());
      checkSubaccountsListResponse(od);
    });
  });

  unittest.group('obj-schema-TagData', () {
    unittest.test('to-json--from-json', () {
      var o = buildTagData();
      var od = api.TagData.fromJson(o.toJson());
      checkTagData(od);
    });
  });

  unittest.group('obj-schema-TagSetting', () {
    unittest.test('to-json--from-json', () {
      var o = buildTagSetting();
      var od = api.TagSetting.fromJson(o.toJson());
      checkTagSetting(od);
    });
  });

  unittest.group('obj-schema-TagSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildTagSettings();
      var od = api.TagSettings.fromJson(o.toJson());
      checkTagSettings(od);
    });
  });

  unittest.group('obj-schema-TargetWindow', () {
    unittest.test('to-json--from-json', () {
      var o = buildTargetWindow();
      var od = api.TargetWindow.fromJson(o.toJson());
      checkTargetWindow(od);
    });
  });

  unittest.group('obj-schema-TargetableRemarketingList', () {
    unittest.test('to-json--from-json', () {
      var o = buildTargetableRemarketingList();
      var od = api.TargetableRemarketingList.fromJson(o.toJson());
      checkTargetableRemarketingList(od);
    });
  });

  unittest.group('obj-schema-TargetableRemarketingListsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildTargetableRemarketingListsListResponse();
      var od = api.TargetableRemarketingListsListResponse.fromJson(o.toJson());
      checkTargetableRemarketingListsListResponse(od);
    });
  });

  unittest.group('obj-schema-TargetingTemplate', () {
    unittest.test('to-json--from-json', () {
      var o = buildTargetingTemplate();
      var od = api.TargetingTemplate.fromJson(o.toJson());
      checkTargetingTemplate(od);
    });
  });

  unittest.group('obj-schema-TargetingTemplatesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildTargetingTemplatesListResponse();
      var od = api.TargetingTemplatesListResponse.fromJson(o.toJson());
      checkTargetingTemplatesListResponse(od);
    });
  });

  unittest.group('obj-schema-TechnologyTargeting', () {
    unittest.test('to-json--from-json', () {
      var o = buildTechnologyTargeting();
      var od = api.TechnologyTargeting.fromJson(o.toJson());
      checkTechnologyTargeting(od);
    });
  });

  unittest.group('obj-schema-ThirdPartyAuthenticationToken', () {
    unittest.test('to-json--from-json', () {
      var o = buildThirdPartyAuthenticationToken();
      var od = api.ThirdPartyAuthenticationToken.fromJson(o.toJson());
      checkThirdPartyAuthenticationToken(od);
    });
  });

  unittest.group('obj-schema-ThirdPartyTrackingUrl', () {
    unittest.test('to-json--from-json', () {
      var o = buildThirdPartyTrackingUrl();
      var od = api.ThirdPartyTrackingUrl.fromJson(o.toJson());
      checkThirdPartyTrackingUrl(od);
    });
  });

  unittest.group('obj-schema-TranscodeSetting', () {
    unittest.test('to-json--from-json', () {
      var o = buildTranscodeSetting();
      var od = api.TranscodeSetting.fromJson(o.toJson());
      checkTranscodeSetting(od);
    });
  });

  unittest.group('obj-schema-UniversalAdId', () {
    unittest.test('to-json--from-json', () {
      var o = buildUniversalAdId();
      var od = api.UniversalAdId.fromJson(o.toJson());
      checkUniversalAdId(od);
    });
  });

  unittest.group('obj-schema-UserDefinedVariableConfiguration', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserDefinedVariableConfiguration();
      var od = api.UserDefinedVariableConfiguration.fromJson(o.toJson());
      checkUserDefinedVariableConfiguration(od);
    });
  });

  unittest.group('obj-schema-UserProfile', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserProfile();
      var od = api.UserProfile.fromJson(o.toJson());
      checkUserProfile(od);
    });
  });

  unittest.group('obj-schema-UserProfileList', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserProfileList();
      var od = api.UserProfileList.fromJson(o.toJson());
      checkUserProfileList(od);
    });
  });

  unittest.group('obj-schema-UserRole', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserRole();
      var od = api.UserRole.fromJson(o.toJson());
      checkUserRole(od);
    });
  });

  unittest.group('obj-schema-UserRolePermission', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserRolePermission();
      var od = api.UserRolePermission.fromJson(o.toJson());
      checkUserRolePermission(od);
    });
  });

  unittest.group('obj-schema-UserRolePermissionGroup', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserRolePermissionGroup();
      var od = api.UserRolePermissionGroup.fromJson(o.toJson());
      checkUserRolePermissionGroup(od);
    });
  });

  unittest.group('obj-schema-UserRolePermissionGroupsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserRolePermissionGroupsListResponse();
      var od = api.UserRolePermissionGroupsListResponse.fromJson(o.toJson());
      checkUserRolePermissionGroupsListResponse(od);
    });
  });

  unittest.group('obj-schema-UserRolePermissionsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserRolePermissionsListResponse();
      var od = api.UserRolePermissionsListResponse.fromJson(o.toJson());
      checkUserRolePermissionsListResponse(od);
    });
  });

  unittest.group('obj-schema-UserRolesListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildUserRolesListResponse();
      var od = api.UserRolesListResponse.fromJson(o.toJson());
      checkUserRolesListResponse(od);
    });
  });

  unittest.group('obj-schema-VideoFormat', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoFormat();
      var od = api.VideoFormat.fromJson(o.toJson());
      checkVideoFormat(od);
    });
  });

  unittest.group('obj-schema-VideoFormatsListResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoFormatsListResponse();
      var od = api.VideoFormatsListResponse.fromJson(o.toJson());
      checkVideoFormatsListResponse(od);
    });
  });

  unittest.group('obj-schema-VideoOffset', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoOffset();
      var od = api.VideoOffset.fromJson(o.toJson());
      checkVideoOffset(od);
    });
  });

  unittest.group('obj-schema-VideoSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildVideoSettings();
      var od = api.VideoSettings.fromJson(o.toJson());
      checkVideoSettings(od);
    });
  });

  unittest.group('resource-AccountActiveAdSummariesResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.AccountActiveAdSummariesResourceApi res =
          api.DfareportingApi(mock).accountActiveAdSummaries;
      var arg_profileId = 'foo';
      var arg_summaryAccountId = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/accountActiveAdSummaries/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("/accountActiveAdSummaries/"));
        pathOffset += 26;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_summaryAccountId'));

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
        var resp = convert.json.encode(buildAccountActiveAdSummary());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_summaryAccountId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountActiveAdSummary(response);
      })));
    });
  });

  unittest.group('resource-AccountPermissionGroupsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.AccountPermissionGroupsResourceApi res =
          api.DfareportingApi(mock).accountPermissionGroups;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/accountPermissionGroups/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("/accountPermissionGroups/"));
        pathOffset += 25;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildAccountPermissionGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountPermissionGroup(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.AccountPermissionGroupsResourceApi res =
          api.DfareportingApi(mock).accountPermissionGroups;
      var arg_profileId = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/accountPermissionGroups', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 24),
            unittest.equals("/accountPermissionGroups"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildAccountPermissionGroupsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountPermissionGroupsListResponse(response);
      })));
    });
  });

  unittest.group('resource-AccountPermissionsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.AccountPermissionsResourceApi res =
          api.DfareportingApi(mock).accountPermissions;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/accountPermissions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/accountPermissions/"));
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildAccountPermission());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountPermission(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.AccountPermissionsResourceApi res =
          api.DfareportingApi(mock).accountPermissions;
      var arg_profileId = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/accountPermissions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/accountPermissions"));
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
        var resp = convert.json.encode(buildAccountPermissionsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountPermissionsListResponse(response);
      })));
    });
  });

  unittest.group('resource-AccountUserProfilesResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.AccountUserProfilesResourceApi res =
          api.DfareportingApi(mock).accountUserProfiles;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/accountUserProfiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/accountUserProfiles/"));
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildAccountUserProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountUserProfile(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.AccountUserProfilesResourceApi res =
          api.DfareportingApi(mock).accountUserProfiles;
      var arg_request = buildAccountUserProfile();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AccountUserProfile.fromJson(json);
        checkAccountUserProfile(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/accountUserProfiles', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/accountUserProfiles"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccountUserProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountUserProfile(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.AccountUserProfilesResourceApi res =
          api.DfareportingApi(mock).accountUserProfiles;
      var arg_profileId = 'foo';
      var arg_subaccountId = 'foo';
      var arg_sortOrder = 'foo';
      var arg_userRoleId = 'foo';
      var arg_pageToken = 'foo';
      var arg_ids = buildUnnamed4215();
      var arg_sortField = 'foo';
      var arg_active = true;
      var arg_searchString = 'foo';
      var arg_maxResults = 42;
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/accountUserProfiles', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/accountUserProfiles"));
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
            queryMap["subaccountId"].first, unittest.equals(arg_subaccountId));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(
            queryMap["userRoleId"].first, unittest.equals(arg_userRoleId));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(
            queryMap["active"].first, unittest.equals("$arg_active"));
        unittest.expect(
            queryMap["searchString"].first, unittest.equals(arg_searchString));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccountUserProfilesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId,
              subaccountId: arg_subaccountId,
              sortOrder: arg_sortOrder,
              userRoleId: arg_userRoleId,
              pageToken: arg_pageToken,
              ids: arg_ids,
              sortField: arg_sortField,
              active: arg_active,
              searchString: arg_searchString,
              maxResults: arg_maxResults,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountUserProfilesListResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.AccountUserProfilesResourceApi res =
          api.DfareportingApi(mock).accountUserProfiles;
      var arg_request = buildAccountUserProfile();
      var arg_profileId = 'foo';
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AccountUserProfile.fromJson(json);
        checkAccountUserProfile(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/accountUserProfiles', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/accountUserProfiles"));
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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccountUserProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountUserProfile(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.AccountUserProfilesResourceApi res =
          api.DfareportingApi(mock).accountUserProfiles;
      var arg_request = buildAccountUserProfile();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AccountUserProfile.fromJson(json);
        checkAccountUserProfile(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/accountUserProfiles', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/accountUserProfiles"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccountUserProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountUserProfile(response);
      })));
    });
  });

  unittest.group('resource-AccountsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.AccountsResourceApi res = api.DfareportingApi(mock).accounts;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/accounts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/accounts/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccount(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.AccountsResourceApi res = api.DfareportingApi(mock).accounts;
      var arg_profileId = 'foo';
      var arg_pageToken = 'foo';
      var arg_searchString = 'foo';
      var arg_sortField = 'foo';
      var arg_maxResults = 42;
      var arg_ids = buildUnnamed4216();
      var arg_sortOrder = 'foo';
      var arg_active = true;
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/accounts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/accounts"));
        pathOffset += 9;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["searchString"].first, unittest.equals(arg_searchString));
        unittest.expect(
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(
            queryMap["active"].first, unittest.equals("$arg_active"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccountsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId,
              pageToken: arg_pageToken,
              searchString: arg_searchString,
              sortField: arg_sortField,
              maxResults: arg_maxResults,
              ids: arg_ids,
              sortOrder: arg_sortOrder,
              active: arg_active,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccountsListResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.AccountsResourceApi res = api.DfareportingApi(mock).accounts;
      var arg_request = buildAccount();
      var arg_profileId = 'foo';
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Account.fromJson(json);
        checkAccount(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/accounts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/accounts"));
        pathOffset += 9;

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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccount(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.AccountsResourceApi res = api.DfareportingApi(mock).accounts;
      var arg_request = buildAccount();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Account.fromJson(json);
        checkAccount(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/accounts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/accounts"));
        pathOffset += 9;

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
        var resp = convert.json.encode(buildAccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAccount(response);
      })));
    });
  });

  unittest.group('resource-AdsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.AdsResourceApi res = api.DfareportingApi(mock).ads;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/ads/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/ads/"));
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildAd());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAd(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.AdsResourceApi res = api.DfareportingApi(mock).ads;
      var arg_request = buildAd();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Ad.fromJson(json);
        checkAd(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/ads', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 4),
            unittest.equals("/ads"));
        pathOffset += 4;

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
        var resp = convert.json.encode(buildAd());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAd(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.AdsResourceApi res = api.DfareportingApi(mock).ads;
      var arg_profileId = 'foo';
      var arg_placementIds = buildUnnamed4217();
      var arg_campaignIds = buildUnnamed4218();
      var arg_dynamicClickTracker = true;
      var arg_compatibility = 'foo';
      var arg_type = buildUnnamed4219();
      var arg_ids = buildUnnamed4220();
      var arg_sortOrder = 'foo';
      var arg_archived = true;
      var arg_audienceSegmentIds = buildUnnamed4221();
      var arg_active = true;
      var arg_remarketingListIds = buildUnnamed4222();
      var arg_sizeIds = buildUnnamed4223();
      var arg_creativeOptimizationConfigurationIds = buildUnnamed4224();
      var arg_advertiserId = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_sslCompliant = true;
      var arg_landingPageIds = buildUnnamed4225();
      var arg_creativeIds = buildUnnamed4226();
      var arg_overriddenEventTagId = 'foo';
      var arg_sslRequired = true;
      var arg_sortField = 'foo';
      var arg_searchString = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/ads', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 4),
            unittest.equals("/ads"));
        pathOffset += 4;

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
            queryMap["placementIds"], unittest.equals(arg_placementIds));
        unittest.expect(
            queryMap["campaignIds"], unittest.equals(arg_campaignIds));
        unittest.expect(queryMap["dynamicClickTracker"].first,
            unittest.equals("$arg_dynamicClickTracker"));
        unittest.expect(queryMap["compatibility"].first,
            unittest.equals(arg_compatibility));
        unittest.expect(queryMap["type"], unittest.equals(arg_type));
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(
            queryMap["archived"].first, unittest.equals("$arg_archived"));
        unittest.expect(queryMap["audienceSegmentIds"],
            unittest.equals(arg_audienceSegmentIds));
        unittest.expect(
            queryMap["active"].first, unittest.equals("$arg_active"));
        unittest.expect(queryMap["remarketingListIds"],
            unittest.equals(arg_remarketingListIds));
        unittest.expect(queryMap["sizeIds"], unittest.equals(arg_sizeIds));
        unittest.expect(queryMap["creativeOptimizationConfigurationIds"],
            unittest.equals(arg_creativeOptimizationConfigurationIds));
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["sslCompliant"].first,
            unittest.equals("$arg_sslCompliant"));
        unittest.expect(
            queryMap["landingPageIds"], unittest.equals(arg_landingPageIds));
        unittest.expect(
            queryMap["creativeIds"], unittest.equals(arg_creativeIds));
        unittest.expect(queryMap["overriddenEventTagId"].first,
            unittest.equals(arg_overriddenEventTagId));
        unittest.expect(
            queryMap["sslRequired"].first, unittest.equals("$arg_sslRequired"));
        unittest.expect(
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(
            queryMap["searchString"].first, unittest.equals(arg_searchString));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAdsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId,
              placementIds: arg_placementIds,
              campaignIds: arg_campaignIds,
              dynamicClickTracker: arg_dynamicClickTracker,
              compatibility: arg_compatibility,
              type: arg_type,
              ids: arg_ids,
              sortOrder: arg_sortOrder,
              archived: arg_archived,
              audienceSegmentIds: arg_audienceSegmentIds,
              active: arg_active,
              remarketingListIds: arg_remarketingListIds,
              sizeIds: arg_sizeIds,
              creativeOptimizationConfigurationIds:
                  arg_creativeOptimizationConfigurationIds,
              advertiserId: arg_advertiserId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              sslCompliant: arg_sslCompliant,
              landingPageIds: arg_landingPageIds,
              creativeIds: arg_creativeIds,
              overriddenEventTagId: arg_overriddenEventTagId,
              sslRequired: arg_sslRequired,
              sortField: arg_sortField,
              searchString: arg_searchString,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdsListResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.AdsResourceApi res = api.DfareportingApi(mock).ads;
      var arg_request = buildAd();
      var arg_profileId = 'foo';
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Ad.fromJson(json);
        checkAd(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/ads', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 4),
            unittest.equals("/ads"));
        pathOffset += 4;

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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAd());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAd(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.AdsResourceApi res = api.DfareportingApi(mock).ads;
      var arg_request = buildAd();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Ad.fromJson(json);
        checkAd(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/ads', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 4),
            unittest.equals("/ads"));
        pathOffset += 4;

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
        var resp = convert.json.encode(buildAd());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAd(response);
      })));
    });
  });

  unittest.group('resource-AdvertiserGroupsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.AdvertiserGroupsResourceApi res =
          api.DfareportingApi(mock).advertiserGroups;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/advertiserGroups/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/advertiserGroups/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.AdvertiserGroupsResourceApi res =
          api.DfareportingApi(mock).advertiserGroups;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/advertiserGroups/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/advertiserGroups/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildAdvertiserGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdvertiserGroup(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.AdvertiserGroupsResourceApi res =
          api.DfareportingApi(mock).advertiserGroups;
      var arg_request = buildAdvertiserGroup();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AdvertiserGroup.fromJson(json);
        checkAdvertiserGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/advertiserGroups', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/advertiserGroups"));
        pathOffset += 17;

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
        var resp = convert.json.encode(buildAdvertiserGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdvertiserGroup(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.AdvertiserGroupsResourceApi res =
          api.DfareportingApi(mock).advertiserGroups;
      var arg_profileId = 'foo';
      var arg_searchString = 'foo';
      var arg_maxResults = 42;
      var arg_ids = buildUnnamed4227();
      var arg_sortOrder = 'foo';
      var arg_sortField = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/advertiserGroups', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/advertiserGroups"));
        pathOffset += 17;

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
            queryMap["searchString"].first, unittest.equals(arg_searchString));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAdvertiserGroupsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId,
              searchString: arg_searchString,
              maxResults: arg_maxResults,
              ids: arg_ids,
              sortOrder: arg_sortOrder,
              sortField: arg_sortField,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdvertiserGroupsListResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.AdvertiserGroupsResourceApi res =
          api.DfareportingApi(mock).advertiserGroups;
      var arg_request = buildAdvertiserGroup();
      var arg_profileId = 'foo';
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AdvertiserGroup.fromJson(json);
        checkAdvertiserGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/advertiserGroups', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/advertiserGroups"));
        pathOffset += 17;

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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAdvertiserGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdvertiserGroup(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.AdvertiserGroupsResourceApi res =
          api.DfareportingApi(mock).advertiserGroups;
      var arg_request = buildAdvertiserGroup();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.AdvertiserGroup.fromJson(json);
        checkAdvertiserGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/advertiserGroups', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/advertiserGroups"));
        pathOffset += 17;

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
        var resp = convert.json.encode(buildAdvertiserGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdvertiserGroup(response);
      })));
    });
  });

  unittest.group('resource-AdvertiserLandingPagesResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.AdvertiserLandingPagesResourceApi res =
          api.DfareportingApi(mock).advertiserLandingPages;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/advertiserLandingPages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 24),
            unittest.equals("/advertiserLandingPages/"));
        pathOffset += 24;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildLandingPage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLandingPage(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.AdvertiserLandingPagesResourceApi res =
          api.DfareportingApi(mock).advertiserLandingPages;
      var arg_request = buildLandingPage();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LandingPage.fromJson(json);
        checkLandingPage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/advertiserLandingPages', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 23),
            unittest.equals("/advertiserLandingPages"));
        pathOffset += 23;

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
        var resp = convert.json.encode(buildLandingPage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLandingPage(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.AdvertiserLandingPagesResourceApi res =
          api.DfareportingApi(mock).advertiserLandingPages;
      var arg_profileId = 'foo';
      var arg_subaccountId = 'foo';
      var arg_campaignIds = buildUnnamed4228();
      var arg_sortOrder = 'foo';
      var arg_advertiserIds = buildUnnamed4229();
      var arg_pageToken = 'foo';
      var arg_sortField = 'foo';
      var arg_archived = true;
      var arg_searchString = 'foo';
      var arg_maxResults = 42;
      var arg_ids = buildUnnamed4230();
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/advertiserLandingPages', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 23),
            unittest.equals("/advertiserLandingPages"));
        pathOffset += 23;

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
            queryMap["subaccountId"].first, unittest.equals(arg_subaccountId));
        unittest.expect(
            queryMap["campaignIds"], unittest.equals(arg_campaignIds));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(
            queryMap["advertiserIds"], unittest.equals(arg_advertiserIds));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(
            queryMap["archived"].first, unittest.equals("$arg_archived"));
        unittest.expect(
            queryMap["searchString"].first, unittest.equals(arg_searchString));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildAdvertiserLandingPagesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId,
              subaccountId: arg_subaccountId,
              campaignIds: arg_campaignIds,
              sortOrder: arg_sortOrder,
              advertiserIds: arg_advertiserIds,
              pageToken: arg_pageToken,
              sortField: arg_sortField,
              archived: arg_archived,
              searchString: arg_searchString,
              maxResults: arg_maxResults,
              ids: arg_ids,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdvertiserLandingPagesListResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.AdvertiserLandingPagesResourceApi res =
          api.DfareportingApi(mock).advertiserLandingPages;
      var arg_request = buildLandingPage();
      var arg_profileId = 'foo';
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LandingPage.fromJson(json);
        checkLandingPage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/advertiserLandingPages', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 23),
            unittest.equals("/advertiserLandingPages"));
        pathOffset += 23;

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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLandingPage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLandingPage(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.AdvertiserLandingPagesResourceApi res =
          api.DfareportingApi(mock).advertiserLandingPages;
      var arg_request = buildLandingPage();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LandingPage.fromJson(json);
        checkLandingPage(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/advertiserLandingPages', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 23),
            unittest.equals("/advertiserLandingPages"));
        pathOffset += 23;

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
        var resp = convert.json.encode(buildLandingPage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLandingPage(response);
      })));
    });
  });

  unittest.group('resource-AdvertisersResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.AdvertisersResourceApi res = api.DfareportingApi(mock).advertisers;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/advertisers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/advertisers/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdvertiser(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.AdvertisersResourceApi res = api.DfareportingApi(mock).advertisers;
      var arg_request = buildAdvertiser();
      var arg_profileId = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/advertisers', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/advertisers"));
        pathOffset += 12;

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
          .insert(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdvertiser(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.AdvertisersResourceApi res = api.DfareportingApi(mock).advertisers;
      var arg_profileId = 'foo';
      var arg_maxResults = 42;
      var arg_subaccountId = 'foo';
      var arg_ids = buildUnnamed4231();
      var arg_sortOrder = 'foo';
      var arg_status = 'foo';
      var arg_onlyParent = true;
      var arg_floodlightConfigurationIds = buildUnnamed4232();
      var arg_sortField = 'foo';
      var arg_searchString = 'foo';
      var arg_advertiserGroupIds = buildUnnamed4233();
      var arg_pageToken = 'foo';
      var arg_includeAdvertisersWithoutGroupsOnly = true;
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/advertisers', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/advertisers"));
        pathOffset += 12;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["subaccountId"].first, unittest.equals(arg_subaccountId));
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(queryMap["status"].first, unittest.equals(arg_status));
        unittest.expect(
            queryMap["onlyParent"].first, unittest.equals("$arg_onlyParent"));
        unittest.expect(queryMap["floodlightConfigurationIds"],
            unittest.equals(arg_floodlightConfigurationIds));
        unittest.expect(
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(
            queryMap["searchString"].first, unittest.equals(arg_searchString));
        unittest.expect(queryMap["advertiserGroupIds"],
            unittest.equals(arg_advertiserGroupIds));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["includeAdvertisersWithoutGroupsOnly"].first,
            unittest.equals("$arg_includeAdvertisersWithoutGroupsOnly"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAdvertisersListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId,
              maxResults: arg_maxResults,
              subaccountId: arg_subaccountId,
              ids: arg_ids,
              sortOrder: arg_sortOrder,
              status: arg_status,
              onlyParent: arg_onlyParent,
              floodlightConfigurationIds: arg_floodlightConfigurationIds,
              sortField: arg_sortField,
              searchString: arg_searchString,
              advertiserGroupIds: arg_advertiserGroupIds,
              pageToken: arg_pageToken,
              includeAdvertisersWithoutGroupsOnly:
                  arg_includeAdvertisersWithoutGroupsOnly,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdvertisersListResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.AdvertisersResourceApi res = api.DfareportingApi(mock).advertisers;
      var arg_request = buildAdvertiser();
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/advertisers', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/advertisers"));
        pathOffset += 12;

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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildAdvertiser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdvertiser(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.AdvertisersResourceApi res = api.DfareportingApi(mock).advertisers;
      var arg_request = buildAdvertiser();
      var arg_profileId = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/advertisers', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/advertisers"));
        pathOffset += 12;

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
          .update(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkAdvertiser(response);
      })));
    });
  });

  unittest.group('resource-BrowsersResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.BrowsersResourceApi res = api.DfareportingApi(mock).browsers;
      var arg_profileId = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/browsers', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/browsers"));
        pathOffset += 9;

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
        var resp = convert.json.encode(buildBrowsersListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBrowsersListResponse(response);
      })));
    });
  });

  unittest.group('resource-CampaignCreativeAssociationsResourceApi', () {
    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.CampaignCreativeAssociationsResourceApi res =
          api.DfareportingApi(mock).campaignCreativeAssociations;
      var arg_request = buildCampaignCreativeAssociation();
      var arg_profileId = 'foo';
      var arg_campaignId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CampaignCreativeAssociation.fromJson(json);
        checkCampaignCreativeAssociation(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/campaigns/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/campaigns/"));
        pathOffset += 11;
        index = path.indexOf('/campaignCreativeAssociations', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_campaignId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("/campaignCreativeAssociations"));
        pathOffset += 29;

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
        var resp = convert.json.encode(buildCampaignCreativeAssociation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_profileId, arg_campaignId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCampaignCreativeAssociation(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.CampaignCreativeAssociationsResourceApi res =
          api.DfareportingApi(mock).campaignCreativeAssociations;
      var arg_profileId = 'foo';
      var arg_campaignId = 'foo';
      var arg_maxResults = 42;
      var arg_sortOrder = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/campaigns/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/campaigns/"));
        pathOffset += 11;
        index = path.indexOf('/campaignCreativeAssociations', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_campaignId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 29),
            unittest.equals("/campaignCreativeAssociations"));
        pathOffset += 29;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildCampaignCreativeAssociationsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId, arg_campaignId,
              maxResults: arg_maxResults,
              sortOrder: arg_sortOrder,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCampaignCreativeAssociationsListResponse(response);
      })));
    });
  });

  unittest.group('resource-CampaignsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.CampaignsResourceApi res = api.DfareportingApi(mock).campaigns;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/campaigns/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/campaigns/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCampaign(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.CampaignsResourceApi res = api.DfareportingApi(mock).campaigns;
      var arg_request = buildCampaign();
      var arg_profileId = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/campaigns', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/campaigns"));
        pathOffset += 10;

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
          .insert(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCampaign(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.CampaignsResourceApi res = api.DfareportingApi(mock).campaigns;
      var arg_profileId = 'foo';
      var arg_maxResults = 42;
      var arg_archived = true;
      var arg_sortField = 'foo';
      var arg_ids = buildUnnamed4234();
      var arg_atLeastOneOptimizationActivity = true;
      var arg_excludedIds = buildUnnamed4235();
      var arg_sortOrder = 'foo';
      var arg_searchString = 'foo';
      var arg_advertiserGroupIds = buildUnnamed4236();
      var arg_overriddenEventTagId = 'foo';
      var arg_pageToken = 'foo';
      var arg_subaccountId = 'foo';
      var arg_advertiserIds = buildUnnamed4237();
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/campaigns', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/campaigns"));
        pathOffset += 10;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["archived"].first, unittest.equals("$arg_archived"));
        unittest.expect(
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(queryMap["atLeastOneOptimizationActivity"].first,
            unittest.equals("$arg_atLeastOneOptimizationActivity"));
        unittest.expect(
            queryMap["excludedIds"], unittest.equals(arg_excludedIds));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(
            queryMap["searchString"].first, unittest.equals(arg_searchString));
        unittest.expect(queryMap["advertiserGroupIds"],
            unittest.equals(arg_advertiserGroupIds));
        unittest.expect(queryMap["overriddenEventTagId"].first,
            unittest.equals(arg_overriddenEventTagId));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["subaccountId"].first, unittest.equals(arg_subaccountId));
        unittest.expect(
            queryMap["advertiserIds"], unittest.equals(arg_advertiserIds));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCampaignsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId,
              maxResults: arg_maxResults,
              archived: arg_archived,
              sortField: arg_sortField,
              ids: arg_ids,
              atLeastOneOptimizationActivity:
                  arg_atLeastOneOptimizationActivity,
              excludedIds: arg_excludedIds,
              sortOrder: arg_sortOrder,
              searchString: arg_searchString,
              advertiserGroupIds: arg_advertiserGroupIds,
              overriddenEventTagId: arg_overriddenEventTagId,
              pageToken: arg_pageToken,
              subaccountId: arg_subaccountId,
              advertiserIds: arg_advertiserIds,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCampaignsListResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.CampaignsResourceApi res = api.DfareportingApi(mock).campaigns;
      var arg_request = buildCampaign();
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/campaigns', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/campaigns"));
        pathOffset += 10;

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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCampaign());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCampaign(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.CampaignsResourceApi res = api.DfareportingApi(mock).campaigns;
      var arg_request = buildCampaign();
      var arg_profileId = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/campaigns', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/campaigns"));
        pathOffset += 10;

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
          .update(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCampaign(response);
      })));
    });
  });

  unittest.group('resource-ChangeLogsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ChangeLogsResourceApi res = api.DfareportingApi(mock).changeLogs;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/changeLogs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/changeLogs/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildChangeLog());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChangeLog(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ChangeLogsResourceApi res = api.DfareportingApi(mock).changeLogs;
      var arg_profileId = 'foo';
      var arg_action = 'foo';
      var arg_objectType = 'foo';
      var arg_maxChangeTime = 'foo';
      var arg_objectIds = buildUnnamed4238();
      var arg_userProfileIds = buildUnnamed4239();
      var arg_maxResults = 42;
      var arg_minChangeTime = 'foo';
      var arg_pageToken = 'foo';
      var arg_searchString = 'foo';
      var arg_ids = buildUnnamed4240();
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/changeLogs', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/changeLogs"));
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
        unittest.expect(queryMap["action"].first, unittest.equals(arg_action));
        unittest.expect(
            queryMap["objectType"].first, unittest.equals(arg_objectType));
        unittest.expect(queryMap["maxChangeTime"].first,
            unittest.equals(arg_maxChangeTime));
        unittest.expect(queryMap["objectIds"], unittest.equals(arg_objectIds));
        unittest.expect(
            queryMap["userProfileIds"], unittest.equals(arg_userProfileIds));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["minChangeTime"].first,
            unittest.equals(arg_minChangeTime));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["searchString"].first, unittest.equals(arg_searchString));
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildChangeLogsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId,
              action: arg_action,
              objectType: arg_objectType,
              maxChangeTime: arg_maxChangeTime,
              objectIds: arg_objectIds,
              userProfileIds: arg_userProfileIds,
              maxResults: arg_maxResults,
              minChangeTime: arg_minChangeTime,
              pageToken: arg_pageToken,
              searchString: arg_searchString,
              ids: arg_ids,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkChangeLogsListResponse(response);
      })));
    });
  });

  unittest.group('resource-CitiesResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.CitiesResourceApi res = api.DfareportingApi(mock).cities;
      var arg_profileId = 'foo';
      var arg_countryDartIds = buildUnnamed4241();
      var arg_namePrefix = 'foo';
      var arg_dartIds = buildUnnamed4242();
      var arg_regionDartIds = buildUnnamed4243();
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/cities', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/cities"));
        pathOffset += 7;

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
            queryMap["countryDartIds"], unittest.equals(arg_countryDartIds));
        unittest.expect(
            queryMap["namePrefix"].first, unittest.equals(arg_namePrefix));
        unittest.expect(queryMap["dartIds"], unittest.equals(arg_dartIds));
        unittest.expect(
            queryMap["regionDartIds"], unittest.equals(arg_regionDartIds));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCitiesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId,
              countryDartIds: arg_countryDartIds,
              namePrefix: arg_namePrefix,
              dartIds: arg_dartIds,
              regionDartIds: arg_regionDartIds,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCitiesListResponse(response);
      })));
    });
  });

  unittest.group('resource-ConnectionTypesResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ConnectionTypesResourceApi res =
          api.DfareportingApi(mock).connectionTypes;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/connectionTypes/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/connectionTypes/"));
        pathOffset += 17;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildConnectionType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkConnectionType(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ConnectionTypesResourceApi res =
          api.DfareportingApi(mock).connectionTypes;
      var arg_profileId = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/connectionTypes', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/connectionTypes"));
        pathOffset += 16;

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
        var resp = convert.json.encode(buildConnectionTypesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkConnectionTypesListResponse(response);
      })));
    });
  });

  unittest.group('resource-ContentCategoriesResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ContentCategoriesResourceApi res =
          api.DfareportingApi(mock).contentCategories;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/contentCategories/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/contentCategories/"));
        pathOffset += 19;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ContentCategoriesResourceApi res =
          api.DfareportingApi(mock).contentCategories;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/contentCategories/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/contentCategories/"));
        pathOffset += 19;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildContentCategory());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkContentCategory(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.ContentCategoriesResourceApi res =
          api.DfareportingApi(mock).contentCategories;
      var arg_request = buildContentCategory();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ContentCategory.fromJson(json);
        checkContentCategory(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/contentCategories', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/contentCategories"));
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
        var resp = convert.json.encode(buildContentCategory());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkContentCategory(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ContentCategoriesResourceApi res =
          api.DfareportingApi(mock).contentCategories;
      var arg_profileId = 'foo';
      var arg_sortOrder = 'foo';
      var arg_searchString = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_sortField = 'foo';
      var arg_ids = buildUnnamed4244();
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/contentCategories', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/contentCategories"));
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
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(
            queryMap["searchString"].first, unittest.equals(arg_searchString));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildContentCategoriesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId,
              sortOrder: arg_sortOrder,
              searchString: arg_searchString,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              sortField: arg_sortField,
              ids: arg_ids,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkContentCategoriesListResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.ContentCategoriesResourceApi res =
          api.DfareportingApi(mock).contentCategories;
      var arg_request = buildContentCategory();
      var arg_profileId = 'foo';
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ContentCategory.fromJson(json);
        checkContentCategory(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/contentCategories', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/contentCategories"));
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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildContentCategory());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkContentCategory(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.ContentCategoriesResourceApi res =
          api.DfareportingApi(mock).contentCategories;
      var arg_request = buildContentCategory();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ContentCategory.fromJson(json);
        checkContentCategory(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/contentCategories', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/contentCategories"));
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
        var resp = convert.json.encode(buildContentCategory());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkContentCategory(response);
      })));
    });
  });

  unittest.group('resource-ConversionsResourceApi', () {
    unittest.test('method--batchinsert', () {
      var mock = HttpServerMock();
      api.ConversionsResourceApi res = api.DfareportingApi(mock).conversions;
      var arg_request = buildConversionsBatchInsertRequest();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ConversionsBatchInsertRequest.fromJson(json);
        checkConversionsBatchInsertRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/conversions/batchinsert', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 24),
            unittest.equals("/conversions/batchinsert"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildConversionsBatchInsertResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchinsert(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkConversionsBatchInsertResponse(response);
      })));
    });

    unittest.test('method--batchupdate', () {
      var mock = HttpServerMock();
      api.ConversionsResourceApi res = api.DfareportingApi(mock).conversions;
      var arg_request = buildConversionsBatchUpdateRequest();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ConversionsBatchUpdateRequest.fromJson(json);
        checkConversionsBatchUpdateRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/conversions/batchupdate', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 24),
            unittest.equals("/conversions/batchupdate"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildConversionsBatchUpdateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchupdate(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkConversionsBatchUpdateResponse(response);
      })));
    });
  });

  unittest.group('resource-CountriesResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.CountriesResourceApi res = api.DfareportingApi(mock).countries;
      var arg_profileId = 'foo';
      var arg_dartId = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/countries/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/countries/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_dartId'));

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
        var resp = convert.json.encode(buildCountry());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_dartId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCountry(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.CountriesResourceApi res = api.DfareportingApi(mock).countries;
      var arg_profileId = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/countries', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/countries"));
        pathOffset += 10;

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
        var resp = convert.json.encode(buildCountriesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCountriesListResponse(response);
      })));
    });
  });

  unittest.group('resource-CreativeAssetsResourceApi', () {
    unittest.test('method--insert', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      api.CreativeAssetsResourceApi res =
          api.DfareportingApi(mock).creativeAssets;
      var arg_request = buildCreativeAssetMetadata();
      var arg_profileId = 'foo';
      var arg_advertiserId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreativeAssetMetadata.fromJson(json);
        checkCreativeAssetMetadata(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/creativeAssets/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/creativeAssets/"));
        pathOffset += 16;
        index = path.indexOf('/creativeAssets', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_advertiserId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/creativeAssets"));
        pathOffset += 15;

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
        var resp = convert.json.encode(buildCreativeAssetMetadata());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_profileId, arg_advertiserId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreativeAssetMetadata(response);
      })));
    });
  });

  unittest.group('resource-CreativeFieldValuesResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.CreativeFieldValuesResourceApi res =
          api.DfareportingApi(mock).creativeFieldValues;
      var arg_profileId = 'foo';
      var arg_creativeFieldId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/creativeFields/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/creativeFields/"));
        pathOffset += 16;
        index = path.indexOf('/creativeFieldValues/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_creativeFieldId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/creativeFieldValues/"));
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_profileId, arg_creativeFieldId, arg_id,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.CreativeFieldValuesResourceApi res =
          api.DfareportingApi(mock).creativeFieldValues;
      var arg_profileId = 'foo';
      var arg_creativeFieldId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/creativeFields/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/creativeFields/"));
        pathOffset += 16;
        index = path.indexOf('/creativeFieldValues/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_creativeFieldId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/creativeFieldValues/"));
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildCreativeFieldValue());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_creativeFieldId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreativeFieldValue(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.CreativeFieldValuesResourceApi res =
          api.DfareportingApi(mock).creativeFieldValues;
      var arg_request = buildCreativeFieldValue();
      var arg_profileId = 'foo';
      var arg_creativeFieldId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreativeFieldValue.fromJson(json);
        checkCreativeFieldValue(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/creativeFields/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/creativeFields/"));
        pathOffset += 16;
        index = path.indexOf('/creativeFieldValues', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_creativeFieldId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/creativeFieldValues"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCreativeFieldValue());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_profileId, arg_creativeFieldId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreativeFieldValue(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.CreativeFieldValuesResourceApi res =
          api.DfareportingApi(mock).creativeFieldValues;
      var arg_profileId = 'foo';
      var arg_creativeFieldId = 'foo';
      var arg_searchString = 'foo';
      var arg_sortField = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_ids = buildUnnamed4245();
      var arg_sortOrder = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/creativeFields/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/creativeFields/"));
        pathOffset += 16;
        index = path.indexOf('/creativeFieldValues', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_creativeFieldId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/creativeFieldValues"));
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
            queryMap["searchString"].first, unittest.equals(arg_searchString));
        unittest.expect(
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCreativeFieldValuesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId, arg_creativeFieldId,
              searchString: arg_searchString,
              sortField: arg_sortField,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              ids: arg_ids,
              sortOrder: arg_sortOrder,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreativeFieldValuesListResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.CreativeFieldValuesResourceApi res =
          api.DfareportingApi(mock).creativeFieldValues;
      var arg_request = buildCreativeFieldValue();
      var arg_profileId = 'foo';
      var arg_creativeFieldId = 'foo';
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreativeFieldValue.fromJson(json);
        checkCreativeFieldValue(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/creativeFields/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/creativeFields/"));
        pathOffset += 16;
        index = path.indexOf('/creativeFieldValues', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_creativeFieldId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/creativeFieldValues"));
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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCreativeFieldValue());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_profileId, arg_creativeFieldId, arg_id,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreativeFieldValue(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.CreativeFieldValuesResourceApi res =
          api.DfareportingApi(mock).creativeFieldValues;
      var arg_request = buildCreativeFieldValue();
      var arg_profileId = 'foo';
      var arg_creativeFieldId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreativeFieldValue.fromJson(json);
        checkCreativeFieldValue(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/creativeFields/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/creativeFields/"));
        pathOffset += 16;
        index = path.indexOf('/creativeFieldValues', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_creativeFieldId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/creativeFieldValues"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCreativeFieldValue());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_profileId, arg_creativeFieldId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreativeFieldValue(response);
      })));
    });
  });

  unittest.group('resource-CreativeFieldsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.CreativeFieldsResourceApi res =
          api.DfareportingApi(mock).creativeFields;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/creativeFields/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/creativeFields/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.CreativeFieldsResourceApi res =
          api.DfareportingApi(mock).creativeFields;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/creativeFields/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/creativeFields/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildCreativeField());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreativeField(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.CreativeFieldsResourceApi res =
          api.DfareportingApi(mock).creativeFields;
      var arg_request = buildCreativeField();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreativeField.fromJson(json);
        checkCreativeField(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/creativeFields', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/creativeFields"));
        pathOffset += 15;

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
        var resp = convert.json.encode(buildCreativeField());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreativeField(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.CreativeFieldsResourceApi res =
          api.DfareportingApi(mock).creativeFields;
      var arg_profileId = 'foo';
      var arg_searchString = 'foo';
      var arg_pageToken = 'foo';
      var arg_maxResults = 42;
      var arg_sortField = 'foo';
      var arg_advertiserIds = buildUnnamed4246();
      var arg_sortOrder = 'foo';
      var arg_ids = buildUnnamed4247();
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/creativeFields', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/creativeFields"));
        pathOffset += 15;

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
            queryMap["searchString"].first, unittest.equals(arg_searchString));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(
            queryMap["advertiserIds"], unittest.equals(arg_advertiserIds));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCreativeFieldsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId,
              searchString: arg_searchString,
              pageToken: arg_pageToken,
              maxResults: arg_maxResults,
              sortField: arg_sortField,
              advertiserIds: arg_advertiserIds,
              sortOrder: arg_sortOrder,
              ids: arg_ids,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreativeFieldsListResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.CreativeFieldsResourceApi res =
          api.DfareportingApi(mock).creativeFields;
      var arg_request = buildCreativeField();
      var arg_profileId = 'foo';
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreativeField.fromJson(json);
        checkCreativeField(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/creativeFields', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/creativeFields"));
        pathOffset += 15;

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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCreativeField());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreativeField(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.CreativeFieldsResourceApi res =
          api.DfareportingApi(mock).creativeFields;
      var arg_request = buildCreativeField();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreativeField.fromJson(json);
        checkCreativeField(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/creativeFields', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/creativeFields"));
        pathOffset += 15;

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
        var resp = convert.json.encode(buildCreativeField());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreativeField(response);
      })));
    });
  });

  unittest.group('resource-CreativeGroupsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.CreativeGroupsResourceApi res =
          api.DfareportingApi(mock).creativeGroups;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/creativeGroups/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/creativeGroups/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildCreativeGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreativeGroup(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.CreativeGroupsResourceApi res =
          api.DfareportingApi(mock).creativeGroups;
      var arg_request = buildCreativeGroup();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreativeGroup.fromJson(json);
        checkCreativeGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/creativeGroups', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/creativeGroups"));
        pathOffset += 15;

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
        var resp = convert.json.encode(buildCreativeGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreativeGroup(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.CreativeGroupsResourceApi res =
          api.DfareportingApi(mock).creativeGroups;
      var arg_profileId = 'foo';
      var arg_maxResults = 42;
      var arg_groupNumber = 42;
      var arg_sortField = 'foo';
      var arg_ids = buildUnnamed4248();
      var arg_advertiserIds = buildUnnamed4249();
      var arg_searchString = 'foo';
      var arg_pageToken = 'foo';
      var arg_sortOrder = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/creativeGroups', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/creativeGroups"));
        pathOffset += 15;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(core.int.parse(queryMap["groupNumber"].first),
            unittest.equals(arg_groupNumber));
        unittest.expect(
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(
            queryMap["advertiserIds"], unittest.equals(arg_advertiserIds));
        unittest.expect(
            queryMap["searchString"].first, unittest.equals(arg_searchString));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCreativeGroupsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId,
              maxResults: arg_maxResults,
              groupNumber: arg_groupNumber,
              sortField: arg_sortField,
              ids: arg_ids,
              advertiserIds: arg_advertiserIds,
              searchString: arg_searchString,
              pageToken: arg_pageToken,
              sortOrder: arg_sortOrder,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreativeGroupsListResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.CreativeGroupsResourceApi res =
          api.DfareportingApi(mock).creativeGroups;
      var arg_request = buildCreativeGroup();
      var arg_profileId = 'foo';
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreativeGroup.fromJson(json);
        checkCreativeGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/creativeGroups', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/creativeGroups"));
        pathOffset += 15;

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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCreativeGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreativeGroup(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.CreativeGroupsResourceApi res =
          api.DfareportingApi(mock).creativeGroups;
      var arg_request = buildCreativeGroup();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreativeGroup.fromJson(json);
        checkCreativeGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/creativeGroups', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/creativeGroups"));
        pathOffset += 15;

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
        var resp = convert.json.encode(buildCreativeGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreativeGroup(response);
      })));
    });
  });

  unittest.group('resource-CreativesResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.CreativesResourceApi res = api.DfareportingApi(mock).creatives;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/creatives/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/creatives/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreative(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.CreativesResourceApi res = api.DfareportingApi(mock).creatives;
      var arg_request = buildCreative();
      var arg_profileId = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/creatives', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/creatives"));
        pathOffset += 10;

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
          .insert(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreative(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.CreativesResourceApi res = api.DfareportingApi(mock).creatives;
      var arg_profileId = 'foo';
      var arg_maxResults = 42;
      var arg_creativeFieldIds = buildUnnamed4250();
      var arg_types = buildUnnamed4251();
      var arg_sizeIds = buildUnnamed4252();
      var arg_campaignId = 'foo';
      var arg_advertiserId = 'foo';
      var arg_active = true;
      var arg_sortField = 'foo';
      var arg_searchString = 'foo';
      var arg_studioCreativeId = 'foo';
      var arg_pageToken = 'foo';
      var arg_ids = buildUnnamed4253();
      var arg_companionCreativeIds = buildUnnamed4254();
      var arg_renderingIds = buildUnnamed4255();
      var arg_archived = true;
      var arg_sortOrder = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/creatives', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/creatives"));
        pathOffset += 10;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["creativeFieldIds"],
            unittest.equals(arg_creativeFieldIds));
        unittest.expect(queryMap["types"], unittest.equals(arg_types));
        unittest.expect(queryMap["sizeIds"], unittest.equals(arg_sizeIds));
        unittest.expect(
            queryMap["campaignId"].first, unittest.equals(arg_campaignId));
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(
            queryMap["active"].first, unittest.equals("$arg_active"));
        unittest.expect(
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(
            queryMap["searchString"].first, unittest.equals(arg_searchString));
        unittest.expect(queryMap["studioCreativeId"].first,
            unittest.equals(arg_studioCreativeId));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(queryMap["companionCreativeIds"],
            unittest.equals(arg_companionCreativeIds));
        unittest.expect(
            queryMap["renderingIds"], unittest.equals(arg_renderingIds));
        unittest.expect(
            queryMap["archived"].first, unittest.equals("$arg_archived"));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCreativesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId,
              maxResults: arg_maxResults,
              creativeFieldIds: arg_creativeFieldIds,
              types: arg_types,
              sizeIds: arg_sizeIds,
              campaignId: arg_campaignId,
              advertiserId: arg_advertiserId,
              active: arg_active,
              sortField: arg_sortField,
              searchString: arg_searchString,
              studioCreativeId: arg_studioCreativeId,
              pageToken: arg_pageToken,
              ids: arg_ids,
              companionCreativeIds: arg_companionCreativeIds,
              renderingIds: arg_renderingIds,
              archived: arg_archived,
              sortOrder: arg_sortOrder,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreativesListResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.CreativesResourceApi res = api.DfareportingApi(mock).creatives;
      var arg_request = buildCreative();
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/creatives', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/creatives"));
        pathOffset += 10;

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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildCreative());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreative(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.CreativesResourceApi res = api.DfareportingApi(mock).creatives;
      var arg_request = buildCreative();
      var arg_profileId = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/creatives', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/creatives"));
        pathOffset += 10;

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
          .update(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCreative(response);
      })));
    });
  });

  unittest.group('resource-CustomEventsResourceApi', () {
    unittest.test('method--batchinsert', () {
      var mock = HttpServerMock();
      api.CustomEventsResourceApi res = api.DfareportingApi(mock).customEvents;
      var arg_request = buildCustomEventsBatchInsertRequest();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CustomEventsBatchInsertRequest.fromJson(json);
        checkCustomEventsBatchInsertRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/customEvents/batchinsert', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("/customEvents/batchinsert"));
        pathOffset += 25;

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
        var resp = convert.json.encode(buildCustomEventsBatchInsertResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchinsert(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCustomEventsBatchInsertResponse(response);
      })));
    });
  });

  unittest.group('resource-DimensionValuesResourceApi', () {
    unittest.test('method--query', () {
      var mock = HttpServerMock();
      api.DimensionValuesResourceApi res =
          api.DfareportingApi(mock).dimensionValues;
      var arg_request = buildDimensionValueRequest();
      var arg_profileId = 'foo';
      var arg_pageToken = 'foo';
      var arg_maxResults = 42;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DimensionValueRequest.fromJson(json);
        checkDimensionValueRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/dimensionvalues/query', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("/dimensionvalues/query"));
        pathOffset += 22;

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
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDimensionValueList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .query(arg_request, arg_profileId,
              pageToken: arg_pageToken,
              maxResults: arg_maxResults,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDimensionValueList(response);
      })));
    });
  });

  unittest.group('resource-DirectorySitesResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.DirectorySitesResourceApi res =
          api.DfareportingApi(mock).directorySites;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/directorySites/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/directorySites/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildDirectorySite());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDirectorySite(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.DirectorySitesResourceApi res =
          api.DfareportingApi(mock).directorySites;
      var arg_request = buildDirectorySite();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DirectorySite.fromJson(json);
        checkDirectorySite(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/directorySites', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/directorySites"));
        pathOffset += 15;

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
        var resp = convert.json.encode(buildDirectorySite());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDirectorySite(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.DirectorySitesResourceApi res =
          api.DfareportingApi(mock).directorySites;
      var arg_profileId = 'foo';
      var arg_acceptsPublisherPaidPlacements = true;
      var arg_sortField = 'foo';
      var arg_sortOrder = 'foo';
      var arg_ids = buildUnnamed4256();
      var arg_active = true;
      var arg_pageToken = 'foo';
      var arg_maxResults = 42;
      var arg_acceptsInStreamVideoPlacements = true;
      var arg_searchString = 'foo';
      var arg_dfpNetworkCode = 'foo';
      var arg_acceptsInterstitialPlacements = true;
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/directorySites', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/directorySites"));
        pathOffset += 15;

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
        unittest.expect(queryMap["acceptsPublisherPaidPlacements"].first,
            unittest.equals("$arg_acceptsPublisherPaidPlacements"));
        unittest.expect(
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(
            queryMap["active"].first, unittest.equals("$arg_active"));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["acceptsInStreamVideoPlacements"].first,
            unittest.equals("$arg_acceptsInStreamVideoPlacements"));
        unittest.expect(
            queryMap["searchString"].first, unittest.equals(arg_searchString));
        unittest.expect(queryMap["dfpNetworkCode"].first,
            unittest.equals(arg_dfpNetworkCode));
        unittest.expect(queryMap["acceptsInterstitialPlacements"].first,
            unittest.equals("$arg_acceptsInterstitialPlacements"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDirectorySitesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId,
              acceptsPublisherPaidPlacements:
                  arg_acceptsPublisherPaidPlacements,
              sortField: arg_sortField,
              sortOrder: arg_sortOrder,
              ids: arg_ids,
              active: arg_active,
              pageToken: arg_pageToken,
              maxResults: arg_maxResults,
              acceptsInStreamVideoPlacements:
                  arg_acceptsInStreamVideoPlacements,
              searchString: arg_searchString,
              dfpNetworkCode: arg_dfpNetworkCode,
              acceptsInterstitialPlacements: arg_acceptsInterstitialPlacements,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDirectorySitesListResponse(response);
      })));
    });
  });

  unittest.group('resource-DynamicTargetingKeysResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.DynamicTargetingKeysResourceApi res =
          api.DfareportingApi(mock).dynamicTargetingKeys;
      var arg_profileId = 'foo';
      var arg_objectId = 'foo';
      var arg_name = 'foo';
      var arg_objectType = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/dynamicTargetingKeys/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("/dynamicTargetingKeys/"));
        pathOffset += 22;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_objectId'));

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
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(
            queryMap["objectType"].first, unittest.equals(arg_objectType));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_profileId, arg_objectId, arg_name, arg_objectType,
              $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.DynamicTargetingKeysResourceApi res =
          api.DfareportingApi(mock).dynamicTargetingKeys;
      var arg_request = buildDynamicTargetingKey();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.DynamicTargetingKey.fromJson(json);
        checkDynamicTargetingKey(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/dynamicTargetingKeys', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/dynamicTargetingKeys"));
        pathOffset += 21;

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
        var resp = convert.json.encode(buildDynamicTargetingKey());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDynamicTargetingKey(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.DynamicTargetingKeysResourceApi res =
          api.DfareportingApi(mock).dynamicTargetingKeys;
      var arg_profileId = 'foo';
      var arg_objectType = 'foo';
      var arg_objectId = 'foo';
      var arg_names = buildUnnamed4257();
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/dynamicTargetingKeys', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/dynamicTargetingKeys"));
        pathOffset += 21;

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
            queryMap["objectType"].first, unittest.equals(arg_objectType));
        unittest.expect(
            queryMap["objectId"].first, unittest.equals(arg_objectId));
        unittest.expect(queryMap["names"], unittest.equals(arg_names));
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDynamicTargetingKeysListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId,
              objectType: arg_objectType,
              objectId: arg_objectId,
              names: arg_names,
              advertiserId: arg_advertiserId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDynamicTargetingKeysListResponse(response);
      })));
    });
  });

  unittest.group('resource-EventTagsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.EventTagsResourceApi res = api.DfareportingApi(mock).eventTags;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/eventTags/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/eventTags/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.EventTagsResourceApi res = api.DfareportingApi(mock).eventTags;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/eventTags/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/eventTags/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildEventTag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEventTag(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.EventTagsResourceApi res = api.DfareportingApi(mock).eventTags;
      var arg_request = buildEventTag();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.EventTag.fromJson(json);
        checkEventTag(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/eventTags', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/eventTags"));
        pathOffset += 10;

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
        var resp = convert.json.encode(buildEventTag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEventTag(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.EventTagsResourceApi res = api.DfareportingApi(mock).eventTags;
      var arg_profileId = 'foo';
      var arg_definitionsOnly = true;
      var arg_adId = 'foo';
      var arg_searchString = 'foo';
      var arg_advertiserId = 'foo';
      var arg_ids = buildUnnamed4258();
      var arg_sortField = 'foo';
      var arg_enabled = true;
      var arg_eventTagTypes = buildUnnamed4259();
      var arg_campaignId = 'foo';
      var arg_sortOrder = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/eventTags', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/eventTags"));
        pathOffset += 10;

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
        unittest.expect(queryMap["definitionsOnly"].first,
            unittest.equals("$arg_definitionsOnly"));
        unittest.expect(queryMap["adId"].first, unittest.equals(arg_adId));
        unittest.expect(
            queryMap["searchString"].first, unittest.equals(arg_searchString));
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(
            queryMap["enabled"].first, unittest.equals("$arg_enabled"));
        unittest.expect(
            queryMap["eventTagTypes"], unittest.equals(arg_eventTagTypes));
        unittest.expect(
            queryMap["campaignId"].first, unittest.equals(arg_campaignId));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEventTagsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId,
              definitionsOnly: arg_definitionsOnly,
              adId: arg_adId,
              searchString: arg_searchString,
              advertiserId: arg_advertiserId,
              ids: arg_ids,
              sortField: arg_sortField,
              enabled: arg_enabled,
              eventTagTypes: arg_eventTagTypes,
              campaignId: arg_campaignId,
              sortOrder: arg_sortOrder,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEventTagsListResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.EventTagsResourceApi res = api.DfareportingApi(mock).eventTags;
      var arg_request = buildEventTag();
      var arg_profileId = 'foo';
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.EventTag.fromJson(json);
        checkEventTag(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/eventTags', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/eventTags"));
        pathOffset += 10;

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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEventTag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEventTag(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.EventTagsResourceApi res = api.DfareportingApi(mock).eventTags;
      var arg_request = buildEventTag();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.EventTag.fromJson(json);
        checkEventTag(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/eventTags', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/eventTags"));
        pathOffset += 10;

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
        var resp = convert.json.encode(buildEventTag());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEventTag(response);
      })));
    });
  });

  unittest.group('resource-FilesResourceApi', () {
    unittest.test('method--get', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      api.FilesResourceApi res = api.DfareportingApi(mock).files;
      var arg_reportId = 'foo';
      var arg_fileId = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("reports/"));
        pathOffset += 8;
        index = path.indexOf('/files/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_reportId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/files/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_fileId'));

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
        var resp = convert.json.encode(buildFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_reportId, arg_fileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFile(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.FilesResourceApi res = api.DfareportingApi(mock).files;
      var arg_profileId = 'foo';
      var arg_scope = 'foo';
      var arg_pageToken = 'foo';
      var arg_sortOrder = 'foo';
      var arg_sortField = 'foo';
      var arg_maxResults = 42;
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/files', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/files"));
        pathOffset += 6;

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
        unittest.expect(queryMap["scope"].first, unittest.equals(arg_scope));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildFileList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId,
              scope: arg_scope,
              pageToken: arg_pageToken,
              sortOrder: arg_sortOrder,
              sortField: arg_sortField,
              maxResults: arg_maxResults,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFileList(response);
      })));
    });
  });

  unittest.group('resource-FloodlightActivitiesResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.FloodlightActivitiesResourceApi res =
          api.DfareportingApi(mock).floodlightActivities;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/floodlightActivities/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("/floodlightActivities/"));
        pathOffset += 22;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--generatetag', () {
      var mock = HttpServerMock();
      api.FloodlightActivitiesResourceApi res =
          api.DfareportingApi(mock).floodlightActivities;
      var arg_profileId = 'foo';
      var arg_floodlightActivityId = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/floodlightActivities/generatetag', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 33),
            unittest.equals("/floodlightActivities/generatetag"));
        pathOffset += 33;

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
        unittest.expect(queryMap["floodlightActivityId"].first,
            unittest.equals(arg_floodlightActivityId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildFloodlightActivitiesGenerateTagResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generatetag(arg_profileId,
              floodlightActivityId: arg_floodlightActivityId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFloodlightActivitiesGenerateTagResponse(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.FloodlightActivitiesResourceApi res =
          api.DfareportingApi(mock).floodlightActivities;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/floodlightActivities/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("/floodlightActivities/"));
        pathOffset += 22;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildFloodlightActivity());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFloodlightActivity(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.FloodlightActivitiesResourceApi res =
          api.DfareportingApi(mock).floodlightActivities;
      var arg_request = buildFloodlightActivity();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.FloodlightActivity.fromJson(json);
        checkFloodlightActivity(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/floodlightActivities', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/floodlightActivities"));
        pathOffset += 21;

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
        var resp = convert.json.encode(buildFloodlightActivity());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFloodlightActivity(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.FloodlightActivitiesResourceApi res =
          api.DfareportingApi(mock).floodlightActivities;
      var arg_profileId = 'foo';
      var arg_advertiserId = 'foo';
      var arg_sortField = 'foo';
      var arg_sortOrder = 'foo';
      var arg_floodlightActivityGroupIds = buildUnnamed4260();
      var arg_floodlightConfigurationId = 'foo';
      var arg_maxResults = 42;
      var arg_ids = buildUnnamed4261();
      var arg_tagString = 'foo';
      var arg_pageToken = 'foo';
      var arg_floodlightActivityGroupName = 'foo';
      var arg_floodlightActivityGroupTagString = 'foo';
      var arg_floodlightActivityGroupType = 'foo';
      var arg_searchString = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/floodlightActivities', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/floodlightActivities"));
        pathOffset += 21;

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
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(queryMap["floodlightActivityGroupIds"],
            unittest.equals(arg_floodlightActivityGroupIds));
        unittest.expect(queryMap["floodlightConfigurationId"].first,
            unittest.equals(arg_floodlightConfigurationId));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(
            queryMap["tagString"].first, unittest.equals(arg_tagString));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["floodlightActivityGroupName"].first,
            unittest.equals(arg_floodlightActivityGroupName));
        unittest.expect(queryMap["floodlightActivityGroupTagString"].first,
            unittest.equals(arg_floodlightActivityGroupTagString));
        unittest.expect(queryMap["floodlightActivityGroupType"].first,
            unittest.equals(arg_floodlightActivityGroupType));
        unittest.expect(
            queryMap["searchString"].first, unittest.equals(arg_searchString));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildFloodlightActivitiesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId,
              advertiserId: arg_advertiserId,
              sortField: arg_sortField,
              sortOrder: arg_sortOrder,
              floodlightActivityGroupIds: arg_floodlightActivityGroupIds,
              floodlightConfigurationId: arg_floodlightConfigurationId,
              maxResults: arg_maxResults,
              ids: arg_ids,
              tagString: arg_tagString,
              pageToken: arg_pageToken,
              floodlightActivityGroupName: arg_floodlightActivityGroupName,
              floodlightActivityGroupTagString:
                  arg_floodlightActivityGroupTagString,
              floodlightActivityGroupType: arg_floodlightActivityGroupType,
              searchString: arg_searchString,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFloodlightActivitiesListResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.FloodlightActivitiesResourceApi res =
          api.DfareportingApi(mock).floodlightActivities;
      var arg_request = buildFloodlightActivity();
      var arg_profileId = 'foo';
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.FloodlightActivity.fromJson(json);
        checkFloodlightActivity(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/floodlightActivities', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/floodlightActivities"));
        pathOffset += 21;

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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildFloodlightActivity());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFloodlightActivity(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.FloodlightActivitiesResourceApi res =
          api.DfareportingApi(mock).floodlightActivities;
      var arg_request = buildFloodlightActivity();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.FloodlightActivity.fromJson(json);
        checkFloodlightActivity(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/floodlightActivities', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/floodlightActivities"));
        pathOffset += 21;

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
        var resp = convert.json.encode(buildFloodlightActivity());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFloodlightActivity(response);
      })));
    });
  });

  unittest.group('resource-FloodlightActivityGroupsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.FloodlightActivityGroupsResourceApi res =
          api.DfareportingApi(mock).floodlightActivityGroups;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/floodlightActivityGroups/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("/floodlightActivityGroups/"));
        pathOffset += 26;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildFloodlightActivityGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFloodlightActivityGroup(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.FloodlightActivityGroupsResourceApi res =
          api.DfareportingApi(mock).floodlightActivityGroups;
      var arg_request = buildFloodlightActivityGroup();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.FloodlightActivityGroup.fromJson(json);
        checkFloodlightActivityGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/floodlightActivityGroups', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("/floodlightActivityGroups"));
        pathOffset += 25;

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
        var resp = convert.json.encode(buildFloodlightActivityGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFloodlightActivityGroup(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.FloodlightActivityGroupsResourceApi res =
          api.DfareportingApi(mock).floodlightActivityGroups;
      var arg_profileId = 'foo';
      var arg_advertiserId = 'foo';
      var arg_sortOrder = 'foo';
      var arg_ids = buildUnnamed4262();
      var arg_floodlightConfigurationId = 'foo';
      var arg_sortField = 'foo';
      var arg_maxResults = 42;
      var arg_searchString = 'foo';
      var arg_pageToken = 'foo';
      var arg_type = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/floodlightActivityGroups', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("/floodlightActivityGroups"));
        pathOffset += 25;

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
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(queryMap["floodlightConfigurationId"].first,
            unittest.equals(arg_floodlightConfigurationId));
        unittest.expect(
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["searchString"].first, unittest.equals(arg_searchString));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["type"].first, unittest.equals(arg_type));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildFloodlightActivityGroupsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId,
              advertiserId: arg_advertiserId,
              sortOrder: arg_sortOrder,
              ids: arg_ids,
              floodlightConfigurationId: arg_floodlightConfigurationId,
              sortField: arg_sortField,
              maxResults: arg_maxResults,
              searchString: arg_searchString,
              pageToken: arg_pageToken,
              type: arg_type,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFloodlightActivityGroupsListResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.FloodlightActivityGroupsResourceApi res =
          api.DfareportingApi(mock).floodlightActivityGroups;
      var arg_request = buildFloodlightActivityGroup();
      var arg_profileId = 'foo';
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.FloodlightActivityGroup.fromJson(json);
        checkFloodlightActivityGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/floodlightActivityGroups', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("/floodlightActivityGroups"));
        pathOffset += 25;

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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildFloodlightActivityGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFloodlightActivityGroup(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.FloodlightActivityGroupsResourceApi res =
          api.DfareportingApi(mock).floodlightActivityGroups;
      var arg_request = buildFloodlightActivityGroup();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.FloodlightActivityGroup.fromJson(json);
        checkFloodlightActivityGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/floodlightActivityGroups', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("/floodlightActivityGroups"));
        pathOffset += 25;

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
        var resp = convert.json.encode(buildFloodlightActivityGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFloodlightActivityGroup(response);
      })));
    });
  });

  unittest.group('resource-FloodlightConfigurationsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.FloodlightConfigurationsResourceApi res =
          api.DfareportingApi(mock).floodlightConfigurations;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/floodlightConfigurations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("/floodlightConfigurations/"));
        pathOffset += 26;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildFloodlightConfiguration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFloodlightConfiguration(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.FloodlightConfigurationsResourceApi res =
          api.DfareportingApi(mock).floodlightConfigurations;
      var arg_profileId = 'foo';
      var arg_ids = buildUnnamed4263();
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/floodlightConfigurations', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("/floodlightConfigurations"));
        pathOffset += 25;

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
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildFloodlightConfigurationsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId, ids: arg_ids, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFloodlightConfigurationsListResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.FloodlightConfigurationsResourceApi res =
          api.DfareportingApi(mock).floodlightConfigurations;
      var arg_request = buildFloodlightConfiguration();
      var arg_profileId = 'foo';
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.FloodlightConfiguration.fromJson(json);
        checkFloodlightConfiguration(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/floodlightConfigurations', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("/floodlightConfigurations"));
        pathOffset += 25;

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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildFloodlightConfiguration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFloodlightConfiguration(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.FloodlightConfigurationsResourceApi res =
          api.DfareportingApi(mock).floodlightConfigurations;
      var arg_request = buildFloodlightConfiguration();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.FloodlightConfiguration.fromJson(json);
        checkFloodlightConfiguration(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/floodlightConfigurations', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("/floodlightConfigurations"));
        pathOffset += 25;

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
        var resp = convert.json.encode(buildFloodlightConfiguration());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFloodlightConfiguration(response);
      })));
    });
  });

  unittest.group('resource-InventoryItemsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.InventoryItemsResourceApi res =
          api.DfareportingApi(mock).inventoryItems;
      var arg_profileId = 'foo';
      var arg_projectId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/projects/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/projects/"));
        pathOffset += 10;
        index = path.indexOf('/inventoryItems/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/inventoryItems/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildInventoryItem());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_projectId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInventoryItem(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.InventoryItemsResourceApi res =
          api.DfareportingApi(mock).inventoryItems;
      var arg_profileId = 'foo';
      var arg_projectId = 'foo';
      var arg_inPlan = true;
      var arg_orderId = buildUnnamed4264();
      var arg_siteId = buildUnnamed4265();
      var arg_ids = buildUnnamed4266();
      var arg_sortOrder = 'foo';
      var arg_sortField = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_type = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/projects/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/projects/"));
        pathOffset += 10;
        index = path.indexOf('/inventoryItems', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/inventoryItems"));
        pathOffset += 15;

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
            queryMap["inPlan"].first, unittest.equals("$arg_inPlan"));
        unittest.expect(queryMap["orderId"], unittest.equals(arg_orderId));
        unittest.expect(queryMap["siteId"], unittest.equals(arg_siteId));
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["type"].first, unittest.equals(arg_type));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildInventoryItemsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId, arg_projectId,
              inPlan: arg_inPlan,
              orderId: arg_orderId,
              siteId: arg_siteId,
              ids: arg_ids,
              sortOrder: arg_sortOrder,
              sortField: arg_sortField,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              type: arg_type,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkInventoryItemsListResponse(response);
      })));
    });
  });

  unittest.group('resource-LanguagesResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.LanguagesResourceApi res = api.DfareportingApi(mock).languages;
      var arg_profileId = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/languages', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/languages"));
        pathOffset += 10;

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
        var resp = convert.json.encode(buildLanguagesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLanguagesListResponse(response);
      })));
    });
  });

  unittest.group('resource-MetrosResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.MetrosResourceApi res = api.DfareportingApi(mock).metros;
      var arg_profileId = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/metros', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/metros"));
        pathOffset += 7;

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
        var resp = convert.json.encode(buildMetrosListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMetrosListResponse(response);
      })));
    });
  });

  unittest.group('resource-MobileAppsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.MobileAppsResourceApi res = api.DfareportingApi(mock).mobileApps;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/mobileApps/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/mobileApps/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildMobileApp());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMobileApp(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.MobileAppsResourceApi res = api.DfareportingApi(mock).mobileApps;
      var arg_profileId = 'foo';
      var arg_pageToken = 'foo';
      var arg_directories = buildUnnamed4267();
      var arg_searchString = 'foo';
      var arg_maxResults = 42;
      var arg_ids = buildUnnamed4268();
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/mobileApps', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/mobileApps"));
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
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["directories"], unittest.equals(arg_directories));
        unittest.expect(
            queryMap["searchString"].first, unittest.equals(arg_searchString));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildMobileAppsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId,
              pageToken: arg_pageToken,
              directories: arg_directories,
              searchString: arg_searchString,
              maxResults: arg_maxResults,
              ids: arg_ids,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMobileAppsListResponse(response);
      })));
    });
  });

  unittest.group('resource-MobileCarriersResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.MobileCarriersResourceApi res =
          api.DfareportingApi(mock).mobileCarriers;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/mobileCarriers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/mobileCarriers/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildMobileCarrier());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMobileCarrier(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.MobileCarriersResourceApi res =
          api.DfareportingApi(mock).mobileCarriers;
      var arg_profileId = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/mobileCarriers', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/mobileCarriers"));
        pathOffset += 15;

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
        var resp = convert.json.encode(buildMobileCarriersListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkMobileCarriersListResponse(response);
      })));
    });
  });

  unittest.group('resource-OperatingSystemVersionsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.OperatingSystemVersionsResourceApi res =
          api.DfareportingApi(mock).operatingSystemVersions;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/operatingSystemVersions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("/operatingSystemVersions/"));
        pathOffset += 25;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildOperatingSystemVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperatingSystemVersion(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.OperatingSystemVersionsResourceApi res =
          api.DfareportingApi(mock).operatingSystemVersions;
      var arg_profileId = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/operatingSystemVersions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 24),
            unittest.equals("/operatingSystemVersions"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildOperatingSystemVersionsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperatingSystemVersionsListResponse(response);
      })));
    });
  });

  unittest.group('resource-OperatingSystemsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.OperatingSystemsResourceApi res =
          api.DfareportingApi(mock).operatingSystems;
      var arg_profileId = 'foo';
      var arg_dartId = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/operatingSystems/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/operatingSystems/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_dartId'));

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
        var resp = convert.json.encode(buildOperatingSystem());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_dartId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperatingSystem(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.OperatingSystemsResourceApi res =
          api.DfareportingApi(mock).operatingSystems;
      var arg_profileId = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/operatingSystems', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/operatingSystems"));
        pathOffset += 17;

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
        var resp = convert.json.encode(buildOperatingSystemsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperatingSystemsListResponse(response);
      })));
    });
  });

  unittest.group('resource-OrderDocumentsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.OrderDocumentsResourceApi res =
          api.DfareportingApi(mock).orderDocuments;
      var arg_profileId = 'foo';
      var arg_projectId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/projects/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/projects/"));
        pathOffset += 10;
        index = path.indexOf('/orderDocuments/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/orderDocuments/"));
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildOrderDocument());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_projectId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrderDocument(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.OrderDocumentsResourceApi res =
          api.DfareportingApi(mock).orderDocuments;
      var arg_profileId = 'foo';
      var arg_projectId = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_approved = true;
      var arg_sortOrder = 'foo';
      var arg_orderId = buildUnnamed4269();
      var arg_siteId = buildUnnamed4270();
      var arg_sortField = 'foo';
      var arg_searchString = 'foo';
      var arg_ids = buildUnnamed4271();
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/projects/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/projects/"));
        pathOffset += 10;
        index = path.indexOf('/orderDocuments', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/orderDocuments"));
        pathOffset += 15;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["approved"].first, unittest.equals("$arg_approved"));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(queryMap["orderId"], unittest.equals(arg_orderId));
        unittest.expect(queryMap["siteId"], unittest.equals(arg_siteId));
        unittest.expect(
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(
            queryMap["searchString"].first, unittest.equals(arg_searchString));
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOrderDocumentsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId, arg_projectId,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              approved: arg_approved,
              sortOrder: arg_sortOrder,
              orderId: arg_orderId,
              siteId: arg_siteId,
              sortField: arg_sortField,
              searchString: arg_searchString,
              ids: arg_ids,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrderDocumentsListResponse(response);
      })));
    });
  });

  unittest.group('resource-OrdersResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.OrdersResourceApi res = api.DfareportingApi(mock).orders;
      var arg_profileId = 'foo';
      var arg_projectId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/projects/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/projects/"));
        pathOffset += 10;
        index = path.indexOf('/orders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/orders/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildOrder());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_projectId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrder(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.OrdersResourceApi res = api.DfareportingApi(mock).orders;
      var arg_profileId = 'foo';
      var arg_projectId = 'foo';
      var arg_sortOrder = 'foo';
      var arg_sortField = 'foo';
      var arg_pageToken = 'foo';
      var arg_searchString = 'foo';
      var arg_siteId = buildUnnamed4272();
      var arg_maxResults = 42;
      var arg_ids = buildUnnamed4273();
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/projects/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/projects/"));
        pathOffset += 10;
        index = path.indexOf('/orders', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/orders"));
        pathOffset += 7;

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
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["searchString"].first, unittest.equals(arg_searchString));
        unittest.expect(queryMap["siteId"], unittest.equals(arg_siteId));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildOrdersListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId, arg_projectId,
              sortOrder: arg_sortOrder,
              sortField: arg_sortField,
              pageToken: arg_pageToken,
              searchString: arg_searchString,
              siteId: arg_siteId,
              maxResults: arg_maxResults,
              ids: arg_ids,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOrdersListResponse(response);
      })));
    });
  });

  unittest.group('resource-PlacementGroupsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.PlacementGroupsResourceApi res =
          api.DfareportingApi(mock).placementGroups;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/placementGroups/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/placementGroups/"));
        pathOffset += 17;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildPlacementGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlacementGroup(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.PlacementGroupsResourceApi res =
          api.DfareportingApi(mock).placementGroups;
      var arg_request = buildPlacementGroup();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PlacementGroup.fromJson(json);
        checkPlacementGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/placementGroups', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/placementGroups"));
        pathOffset += 16;

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
        var resp = convert.json.encode(buildPlacementGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlacementGroup(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.PlacementGroupsResourceApi res =
          api.DfareportingApi(mock).placementGroups;
      var arg_profileId = 'foo';
      var arg_placementStrategyIds = buildUnnamed4274();
      var arg_contentCategoryIds = buildUnnamed4275();
      var arg_searchString = 'foo';
      var arg_sortField = 'foo';
      var arg_advertiserIds = buildUnnamed4276();
      var arg_campaignIds = buildUnnamed4277();
      var arg_minEndDate = 'foo';
      var arg_archived = true;
      var arg_directorySiteIds = buildUnnamed4278();
      var arg_siteIds = buildUnnamed4279();
      var arg_pricingTypes = buildUnnamed4280();
      var arg_pageToken = 'foo';
      var arg_ids = buildUnnamed4281();
      var arg_sortOrder = 'foo';
      var arg_placementGroupType = 'foo';
      var arg_maxEndDate = 'foo';
      var arg_maxResults = 42;
      var arg_minStartDate = 'foo';
      var arg_maxStartDate = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/placementGroups', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/placementGroups"));
        pathOffset += 16;

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
        unittest.expect(queryMap["placementStrategyIds"],
            unittest.equals(arg_placementStrategyIds));
        unittest.expect(queryMap["contentCategoryIds"],
            unittest.equals(arg_contentCategoryIds));
        unittest.expect(
            queryMap["searchString"].first, unittest.equals(arg_searchString));
        unittest.expect(
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(
            queryMap["advertiserIds"], unittest.equals(arg_advertiserIds));
        unittest.expect(
            queryMap["campaignIds"], unittest.equals(arg_campaignIds));
        unittest.expect(
            queryMap["minEndDate"].first, unittest.equals(arg_minEndDate));
        unittest.expect(
            queryMap["archived"].first, unittest.equals("$arg_archived"));
        unittest.expect(queryMap["directorySiteIds"],
            unittest.equals(arg_directorySiteIds));
        unittest.expect(queryMap["siteIds"], unittest.equals(arg_siteIds));
        unittest.expect(
            queryMap["pricingTypes"], unittest.equals(arg_pricingTypes));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(queryMap["placementGroupType"].first,
            unittest.equals(arg_placementGroupType));
        unittest.expect(
            queryMap["maxEndDate"].first, unittest.equals(arg_maxEndDate));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["minStartDate"].first, unittest.equals(arg_minStartDate));
        unittest.expect(
            queryMap["maxStartDate"].first, unittest.equals(arg_maxStartDate));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPlacementGroupsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId,
              placementStrategyIds: arg_placementStrategyIds,
              contentCategoryIds: arg_contentCategoryIds,
              searchString: arg_searchString,
              sortField: arg_sortField,
              advertiserIds: arg_advertiserIds,
              campaignIds: arg_campaignIds,
              minEndDate: arg_minEndDate,
              archived: arg_archived,
              directorySiteIds: arg_directorySiteIds,
              siteIds: arg_siteIds,
              pricingTypes: arg_pricingTypes,
              pageToken: arg_pageToken,
              ids: arg_ids,
              sortOrder: arg_sortOrder,
              placementGroupType: arg_placementGroupType,
              maxEndDate: arg_maxEndDate,
              maxResults: arg_maxResults,
              minStartDate: arg_minStartDate,
              maxStartDate: arg_maxStartDate,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlacementGroupsListResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.PlacementGroupsResourceApi res =
          api.DfareportingApi(mock).placementGroups;
      var arg_request = buildPlacementGroup();
      var arg_profileId = 'foo';
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PlacementGroup.fromJson(json);
        checkPlacementGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/placementGroups', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/placementGroups"));
        pathOffset += 16;

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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPlacementGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlacementGroup(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.PlacementGroupsResourceApi res =
          api.DfareportingApi(mock).placementGroups;
      var arg_request = buildPlacementGroup();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PlacementGroup.fromJson(json);
        checkPlacementGroup(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/placementGroups', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/placementGroups"));
        pathOffset += 16;

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
        var resp = convert.json.encode(buildPlacementGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlacementGroup(response);
      })));
    });
  });

  unittest.group('resource-PlacementStrategiesResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.PlacementStrategiesResourceApi res =
          api.DfareportingApi(mock).placementStrategies;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/placementStrategies/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/placementStrategies/"));
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.PlacementStrategiesResourceApi res =
          api.DfareportingApi(mock).placementStrategies;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/placementStrategies/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/placementStrategies/"));
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildPlacementStrategy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlacementStrategy(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.PlacementStrategiesResourceApi res =
          api.DfareportingApi(mock).placementStrategies;
      var arg_request = buildPlacementStrategy();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PlacementStrategy.fromJson(json);
        checkPlacementStrategy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/placementStrategies', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/placementStrategies"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPlacementStrategy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlacementStrategy(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.PlacementStrategiesResourceApi res =
          api.DfareportingApi(mock).placementStrategies;
      var arg_profileId = 'foo';
      var arg_maxResults = 42;
      var arg_searchString = 'foo';
      var arg_pageToken = 'foo';
      var arg_ids = buildUnnamed4282();
      var arg_sortOrder = 'foo';
      var arg_sortField = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/placementStrategies', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/placementStrategies"));
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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["searchString"].first, unittest.equals(arg_searchString));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPlacementStrategiesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId,
              maxResults: arg_maxResults,
              searchString: arg_searchString,
              pageToken: arg_pageToken,
              ids: arg_ids,
              sortOrder: arg_sortOrder,
              sortField: arg_sortField,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlacementStrategiesListResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.PlacementStrategiesResourceApi res =
          api.DfareportingApi(mock).placementStrategies;
      var arg_request = buildPlacementStrategy();
      var arg_profileId = 'foo';
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PlacementStrategy.fromJson(json);
        checkPlacementStrategy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/placementStrategies', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/placementStrategies"));
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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPlacementStrategy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlacementStrategy(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.PlacementStrategiesResourceApi res =
          api.DfareportingApi(mock).placementStrategies;
      var arg_request = buildPlacementStrategy();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.PlacementStrategy.fromJson(json);
        checkPlacementStrategy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/placementStrategies', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/placementStrategies"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPlacementStrategy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlacementStrategy(response);
      })));
    });
  });

  unittest.group('resource-PlacementsResourceApi', () {
    unittest.test('method--generatetags', () {
      var mock = HttpServerMock();
      api.PlacementsResourceApi res = api.DfareportingApi(mock).placements;
      var arg_profileId = 'foo';
      var arg_tagFormats = buildUnnamed4283();
      var arg_placementIds = buildUnnamed4284();
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
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/placements/generatetags', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 24),
            unittest.equals("/placements/generatetags"));
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
            queryMap["tagFormats"], unittest.equals(arg_tagFormats));
        unittest.expect(
            queryMap["placementIds"], unittest.equals(arg_placementIds));
        unittest.expect(
            queryMap["campaignId"].first, unittest.equals(arg_campaignId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPlacementsGenerateTagsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .generatetags(arg_profileId,
              tagFormats: arg_tagFormats,
              placementIds: arg_placementIds,
              campaignId: arg_campaignId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlacementsGenerateTagsResponse(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.PlacementsResourceApi res = api.DfareportingApi(mock).placements;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/placements/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/placements/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildPlacement());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlacement(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.PlacementsResourceApi res = api.DfareportingApi(mock).placements;
      var arg_request = buildPlacement();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Placement.fromJson(json);
        checkPlacement(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/placements', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/placements"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPlacement());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlacement(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.PlacementsResourceApi res = api.DfareportingApi(mock).placements;
      var arg_profileId = 'foo';
      var arg_archived = true;
      var arg_campaignIds = buildUnnamed4285();
      var arg_maxEndDate = 'foo';
      var arg_compatibilities = buildUnnamed4286();
      var arg_advertiserIds = buildUnnamed4287();
      var arg_minEndDate = 'foo';
      var arg_sortOrder = 'foo';
      var arg_siteIds = buildUnnamed4288();
      var arg_pageToken = 'foo';
      var arg_sortField = 'foo';
      var arg_searchString = 'foo';
      var arg_groupIds = buildUnnamed4289();
      var arg_contentCategoryIds = buildUnnamed4290();
      var arg_pricingTypes = buildUnnamed4291();
      var arg_maxStartDate = 'foo';
      var arg_directorySiteIds = buildUnnamed4292();
      var arg_paymentSource = 'foo';
      var arg_ids = buildUnnamed4293();
      var arg_minStartDate = 'foo';
      var arg_sizeIds = buildUnnamed4294();
      var arg_maxResults = 42;
      var arg_placementStrategyIds = buildUnnamed4295();
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/placements', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/placements"));
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
        unittest.expect(
            queryMap["archived"].first, unittest.equals("$arg_archived"));
        unittest.expect(
            queryMap["campaignIds"], unittest.equals(arg_campaignIds));
        unittest.expect(
            queryMap["maxEndDate"].first, unittest.equals(arg_maxEndDate));
        unittest.expect(
            queryMap["compatibilities"], unittest.equals(arg_compatibilities));
        unittest.expect(
            queryMap["advertiserIds"], unittest.equals(arg_advertiserIds));
        unittest.expect(
            queryMap["minEndDate"].first, unittest.equals(arg_minEndDate));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(queryMap["siteIds"], unittest.equals(arg_siteIds));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(
            queryMap["searchString"].first, unittest.equals(arg_searchString));
        unittest.expect(queryMap["groupIds"], unittest.equals(arg_groupIds));
        unittest.expect(queryMap["contentCategoryIds"],
            unittest.equals(arg_contentCategoryIds));
        unittest.expect(
            queryMap["pricingTypes"], unittest.equals(arg_pricingTypes));
        unittest.expect(
            queryMap["maxStartDate"].first, unittest.equals(arg_maxStartDate));
        unittest.expect(queryMap["directorySiteIds"],
            unittest.equals(arg_directorySiteIds));
        unittest.expect(queryMap["paymentSource"].first,
            unittest.equals(arg_paymentSource));
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(
            queryMap["minStartDate"].first, unittest.equals(arg_minStartDate));
        unittest.expect(queryMap["sizeIds"], unittest.equals(arg_sizeIds));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["placementStrategyIds"],
            unittest.equals(arg_placementStrategyIds));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPlacementsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId,
              archived: arg_archived,
              campaignIds: arg_campaignIds,
              maxEndDate: arg_maxEndDate,
              compatibilities: arg_compatibilities,
              advertiserIds: arg_advertiserIds,
              minEndDate: arg_minEndDate,
              sortOrder: arg_sortOrder,
              siteIds: arg_siteIds,
              pageToken: arg_pageToken,
              sortField: arg_sortField,
              searchString: arg_searchString,
              groupIds: arg_groupIds,
              contentCategoryIds: arg_contentCategoryIds,
              pricingTypes: arg_pricingTypes,
              maxStartDate: arg_maxStartDate,
              directorySiteIds: arg_directorySiteIds,
              paymentSource: arg_paymentSource,
              ids: arg_ids,
              minStartDate: arg_minStartDate,
              sizeIds: arg_sizeIds,
              maxResults: arg_maxResults,
              placementStrategyIds: arg_placementStrategyIds,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlacementsListResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.PlacementsResourceApi res = api.DfareportingApi(mock).placements;
      var arg_request = buildPlacement();
      var arg_profileId = 'foo';
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Placement.fromJson(json);
        checkPlacement(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/placements', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/placements"));
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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPlacement());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlacement(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.PlacementsResourceApi res = api.DfareportingApi(mock).placements;
      var arg_request = buildPlacement();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Placement.fromJson(json);
        checkPlacement(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/placements', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/placements"));
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildPlacement());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlacement(response);
      })));
    });
  });

  unittest.group('resource-PlatformTypesResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.PlatformTypesResourceApi res =
          api.DfareportingApi(mock).platformTypes;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/platformTypes/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/platformTypes/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildPlatformType());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlatformType(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.PlatformTypesResourceApi res =
          api.DfareportingApi(mock).platformTypes;
      var arg_profileId = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/platformTypes', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/platformTypes"));
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
        var resp = convert.json.encode(buildPlatformTypesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPlatformTypesListResponse(response);
      })));
    });
  });

  unittest.group('resource-PostalCodesResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.PostalCodesResourceApi res = api.DfareportingApi(mock).postalCodes;
      var arg_profileId = 'foo';
      var arg_code = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/postalCodes/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/postalCodes/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_code'));

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
        var resp = convert.json.encode(buildPostalCode());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_code, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPostalCode(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.PostalCodesResourceApi res = api.DfareportingApi(mock).postalCodes;
      var arg_profileId = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/postalCodes', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/postalCodes"));
        pathOffset += 12;

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
        var resp = convert.json.encode(buildPostalCodesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPostalCodesListResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsResourceApi res = api.DfareportingApi(mock).projects;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/projects/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/projects/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildProject());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProject(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsResourceApi res = api.DfareportingApi(mock).projects;
      var arg_profileId = 'foo';
      var arg_maxResults = 42;
      var arg_advertiserIds = buildUnnamed4296();
      var arg_sortOrder = 'foo';
      var arg_ids = buildUnnamed4297();
      var arg_pageToken = 'foo';
      var arg_sortField = 'foo';
      var arg_searchString = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/projects', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/projects"));
        pathOffset += 9;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["advertiserIds"], unittest.equals(arg_advertiserIds));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(
            queryMap["searchString"].first, unittest.equals(arg_searchString));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildProjectsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId,
              maxResults: arg_maxResults,
              advertiserIds: arg_advertiserIds,
              sortOrder: arg_sortOrder,
              ids: arg_ids,
              pageToken: arg_pageToken,
              sortField: arg_sortField,
              searchString: arg_searchString,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkProjectsListResponse(response);
      })));
    });
  });

  unittest.group('resource-RegionsResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.RegionsResourceApi res = api.DfareportingApi(mock).regions;
      var arg_profileId = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/regions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/regions"));
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
        var resp = convert.json.encode(buildRegionsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRegionsListResponse(response);
      })));
    });
  });

  unittest.group('resource-RemarketingListSharesResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.RemarketingListSharesResourceApi res =
          api.DfareportingApi(mock).remarketingListShares;
      var arg_profileId = 'foo';
      var arg_remarketingListId = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/remarketingListShares/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 23),
            unittest.equals("/remarketingListShares/"));
        pathOffset += 23;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_remarketingListId'));

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
        var resp = convert.json.encode(buildRemarketingListShare());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_remarketingListId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRemarketingListShare(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.RemarketingListSharesResourceApi res =
          api.DfareportingApi(mock).remarketingListShares;
      var arg_request = buildRemarketingListShare();
      var arg_profileId = 'foo';
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RemarketingListShare.fromJson(json);
        checkRemarketingListShare(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/remarketingListShares', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("/remarketingListShares"));
        pathOffset += 22;

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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRemarketingListShare());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRemarketingListShare(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.RemarketingListSharesResourceApi res =
          api.DfareportingApi(mock).remarketingListShares;
      var arg_request = buildRemarketingListShare();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RemarketingListShare.fromJson(json);
        checkRemarketingListShare(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/remarketingListShares', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 22),
            unittest.equals("/remarketingListShares"));
        pathOffset += 22;

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
        var resp = convert.json.encode(buildRemarketingListShare());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRemarketingListShare(response);
      })));
    });
  });

  unittest.group('resource-RemarketingListsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.RemarketingListsResourceApi res =
          api.DfareportingApi(mock).remarketingLists;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/remarketingLists/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/remarketingLists/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildRemarketingList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRemarketingList(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.RemarketingListsResourceApi res =
          api.DfareportingApi(mock).remarketingLists;
      var arg_request = buildRemarketingList();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RemarketingList.fromJson(json);
        checkRemarketingList(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/remarketingLists', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/remarketingLists"));
        pathOffset += 17;

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
        var resp = convert.json.encode(buildRemarketingList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRemarketingList(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.RemarketingListsResourceApi res =
          api.DfareportingApi(mock).remarketingLists;
      var arg_profileId = 'foo';
      var arg_advertiserId = 'foo';
      var arg_sortField = 'foo';
      var arg_sortOrder = 'foo';
      var arg_floodlightActivityId = 'foo';
      var arg_pageToken = 'foo';
      var arg_maxResults = 42;
      var arg_active = true;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/remarketingLists', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/remarketingLists"));
        pathOffset += 17;

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
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(queryMap["floodlightActivityId"].first,
            unittest.equals(arg_floodlightActivityId));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["active"].first, unittest.equals("$arg_active"));
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRemarketingListsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId, arg_advertiserId,
              sortField: arg_sortField,
              sortOrder: arg_sortOrder,
              floodlightActivityId: arg_floodlightActivityId,
              pageToken: arg_pageToken,
              maxResults: arg_maxResults,
              active: arg_active,
              name: arg_name,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRemarketingListsListResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.RemarketingListsResourceApi res =
          api.DfareportingApi(mock).remarketingLists;
      var arg_request = buildRemarketingList();
      var arg_profileId = 'foo';
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RemarketingList.fromJson(json);
        checkRemarketingList(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/remarketingLists', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/remarketingLists"));
        pathOffset += 17;

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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildRemarketingList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRemarketingList(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.RemarketingListsResourceApi res =
          api.DfareportingApi(mock).remarketingLists;
      var arg_request = buildRemarketingList();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.RemarketingList.fromJson(json);
        checkRemarketingList(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/remarketingLists', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/remarketingLists"));
        pathOffset += 17;

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
        var resp = convert.json.encode(buildRemarketingList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkRemarketingList(response);
      })));
    });
  });

  unittest.group('resource-ReportsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ReportsResourceApi res = api.DfareportingApi(mock).reports;
      var arg_profileId = 'foo';
      var arg_reportId = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/reports/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/reports/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_reportId'));

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_profileId, arg_reportId, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ReportsResourceApi res = api.DfareportingApi(mock).reports;
      var arg_profileId = 'foo';
      var arg_reportId = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/reports/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/reports/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_reportId'));

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
        var resp = convert.json.encode(buildReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_reportId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReport(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.ReportsResourceApi res = api.DfareportingApi(mock).reports;
      var arg_request = buildReport();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Report.fromJson(json);
        checkReport(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/reports', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/reports"));
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
        var resp = convert.json.encode(buildReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReport(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ReportsResourceApi res = api.DfareportingApi(mock).reports;
      var arg_profileId = 'foo';
      var arg_sortOrder = 'foo';
      var arg_scope = 'foo';
      var arg_maxResults = 42;
      var arg_pageToken = 'foo';
      var arg_sortField = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/reports', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/reports"));
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
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(queryMap["scope"].first, unittest.equals(arg_scope));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildReportList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId,
              sortOrder: arg_sortOrder,
              scope: arg_scope,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              sortField: arg_sortField,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReportList(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.ReportsResourceApi res = api.DfareportingApi(mock).reports;
      var arg_request = buildReport();
      var arg_profileId = 'foo';
      var arg_reportId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Report.fromJson(json);
        checkReport(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/reports/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/reports/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_reportId'));

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
        var resp = convert.json.encode(buildReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_profileId, arg_reportId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReport(response);
      })));
    });

    unittest.test('method--run', () {
      var mock = HttpServerMock();
      api.ReportsResourceApi res = api.DfareportingApi(mock).reports;
      var arg_profileId = 'foo';
      var arg_reportId = 'foo';
      var arg_synchronous = true;
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/reports/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/reports/"));
        pathOffset += 9;
        index = path.indexOf('/run', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_reportId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 4),
            unittest.equals("/run"));
        pathOffset += 4;

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
            queryMap["synchronous"].first, unittest.equals("$arg_synchronous"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .run(arg_profileId, arg_reportId,
              synchronous: arg_synchronous, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFile(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.ReportsResourceApi res = api.DfareportingApi(mock).reports;
      var arg_request = buildReport();
      var arg_profileId = 'foo';
      var arg_reportId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Report.fromJson(json);
        checkReport(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/reports/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/reports/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_reportId'));

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
        var resp = convert.json.encode(buildReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_profileId, arg_reportId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReport(response);
      })));
    });
  });

  unittest.group('resource-ReportsCompatibleFieldsResourceApi', () {
    unittest.test('method--query', () {
      var mock = HttpServerMock();
      api.ReportsCompatibleFieldsResourceApi res =
          api.DfareportingApi(mock).reports.compatibleFields;
      var arg_request = buildReport();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Report.fromJson(json);
        checkReport(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/reports/compatiblefields/query', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 31),
            unittest.equals("/reports/compatiblefields/query"));
        pathOffset += 31;

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
        var resp = convert.json.encode(buildCompatibleFields());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .query(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkCompatibleFields(response);
      })));
    });
  });

  unittest.group('resource-ReportsFilesResourceApi', () {
    unittest.test('method--get', () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = HttpServerMock();
      api.ReportsFilesResourceApi res = api.DfareportingApi(mock).reports.files;
      var arg_profileId = 'foo';
      var arg_reportId = 'foo';
      var arg_fileId = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/reports/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/reports/"));
        pathOffset += 9;
        index = path.indexOf('/files/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_reportId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/files/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_fileId'));

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
        var resp = convert.json.encode(buildFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_reportId, arg_fileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFile(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ReportsFilesResourceApi res = api.DfareportingApi(mock).reports.files;
      var arg_profileId = 'foo';
      var arg_reportId = 'foo';
      var arg_maxResults = 42;
      var arg_sortOrder = 'foo';
      var arg_pageToken = 'foo';
      var arg_sortField = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/reports/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/reports/"));
        pathOffset += 9;
        index = path.indexOf('/files', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_reportId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/files"));
        pathOffset += 6;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildFileList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId, arg_reportId,
              maxResults: arg_maxResults,
              sortOrder: arg_sortOrder,
              pageToken: arg_pageToken,
              sortField: arg_sortField,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkFileList(response);
      })));
    });
  });

  unittest.group('resource-SitesResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.SitesResourceApi res = api.DfareportingApi(mock).sites;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/sites/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/sites/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildSite());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSite(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.SitesResourceApi res = api.DfareportingApi(mock).sites;
      var arg_request = buildSite();
      var arg_profileId = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/sites', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/sites"));
        pathOffset += 6;

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
        var resp = convert.json.encode(buildSite());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSite(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.SitesResourceApi res = api.DfareportingApi(mock).sites;
      var arg_profileId = 'foo';
      var arg_unmappedSite = true;
      var arg_sortOrder = 'foo';
      var arg_acceptsInStreamVideoPlacements = true;
      var arg_acceptsPublisherPaidPlacements = true;
      var arg_maxResults = 42;
      var arg_campaignIds = buildUnnamed4298();
      var arg_searchString = 'foo';
      var arg_directorySiteIds = buildUnnamed4299();
      var arg_adWordsSite = true;
      var arg_approved = true;
      var arg_pageToken = 'foo';
      var arg_ids = buildUnnamed4300();
      var arg_acceptsInterstitialPlacements = true;
      var arg_subaccountId = 'foo';
      var arg_sortField = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/sites', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/sites"));
        pathOffset += 6;

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
        unittest.expect(queryMap["unmappedSite"].first,
            unittest.equals("$arg_unmappedSite"));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(queryMap["acceptsInStreamVideoPlacements"].first,
            unittest.equals("$arg_acceptsInStreamVideoPlacements"));
        unittest.expect(queryMap["acceptsPublisherPaidPlacements"].first,
            unittest.equals("$arg_acceptsPublisherPaidPlacements"));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["campaignIds"], unittest.equals(arg_campaignIds));
        unittest.expect(
            queryMap["searchString"].first, unittest.equals(arg_searchString));
        unittest.expect(queryMap["directorySiteIds"],
            unittest.equals(arg_directorySiteIds));
        unittest.expect(
            queryMap["adWordsSite"].first, unittest.equals("$arg_adWordsSite"));
        unittest.expect(
            queryMap["approved"].first, unittest.equals("$arg_approved"));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(queryMap["acceptsInterstitialPlacements"].first,
            unittest.equals("$arg_acceptsInterstitialPlacements"));
        unittest.expect(
            queryMap["subaccountId"].first, unittest.equals(arg_subaccountId));
        unittest.expect(
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSitesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId,
              unmappedSite: arg_unmappedSite,
              sortOrder: arg_sortOrder,
              acceptsInStreamVideoPlacements:
                  arg_acceptsInStreamVideoPlacements,
              acceptsPublisherPaidPlacements:
                  arg_acceptsPublisherPaidPlacements,
              maxResults: arg_maxResults,
              campaignIds: arg_campaignIds,
              searchString: arg_searchString,
              directorySiteIds: arg_directorySiteIds,
              adWordsSite: arg_adWordsSite,
              approved: arg_approved,
              pageToken: arg_pageToken,
              ids: arg_ids,
              acceptsInterstitialPlacements: arg_acceptsInterstitialPlacements,
              subaccountId: arg_subaccountId,
              sortField: arg_sortField,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSitesListResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.SitesResourceApi res = api.DfareportingApi(mock).sites;
      var arg_request = buildSite();
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/sites', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/sites"));
        pathOffset += 6;

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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSite());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSite(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.SitesResourceApi res = api.DfareportingApi(mock).sites;
      var arg_request = buildSite();
      var arg_profileId = 'foo';
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
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/sites', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/sites"));
        pathOffset += 6;

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
        var resp = convert.json.encode(buildSite());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSite(response);
      })));
    });
  });

  unittest.group('resource-SizesResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.SizesResourceApi res = api.DfareportingApi(mock).sizes;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/sizes/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("/sizes/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildSize());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSize(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.SizesResourceApi res = api.DfareportingApi(mock).sizes;
      var arg_request = buildSize();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Size.fromJson(json);
        checkSize(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/sizes', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/sizes"));
        pathOffset += 6;

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
        var resp = convert.json.encode(buildSize());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSize(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.SizesResourceApi res = api.DfareportingApi(mock).sizes;
      var arg_profileId = 'foo';
      var arg_height = 42;
      var arg_iabStandard = true;
      var arg_width = 42;
      var arg_ids = buildUnnamed4301();
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/sizes', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/sizes"));
        pathOffset += 6;

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
        unittest.expect(core.int.parse(queryMap["height"].first),
            unittest.equals(arg_height));
        unittest.expect(
            queryMap["iabStandard"].first, unittest.equals("$arg_iabStandard"));
        unittest.expect(core.int.parse(queryMap["width"].first),
            unittest.equals(arg_width));
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSizesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId,
              height: arg_height,
              iabStandard: arg_iabStandard,
              width: arg_width,
              ids: arg_ids,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSizesListResponse(response);
      })));
    });
  });

  unittest.group('resource-SubaccountsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.SubaccountsResourceApi res = api.DfareportingApi(mock).subaccounts;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/subaccounts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/subaccounts/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildSubaccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSubaccount(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.SubaccountsResourceApi res = api.DfareportingApi(mock).subaccounts;
      var arg_request = buildSubaccount();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Subaccount.fromJson(json);
        checkSubaccount(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/subaccounts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/subaccounts"));
        pathOffset += 12;

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
        var resp = convert.json.encode(buildSubaccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSubaccount(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.SubaccountsResourceApi res = api.DfareportingApi(mock).subaccounts;
      var arg_profileId = 'foo';
      var arg_maxResults = 42;
      var arg_searchString = 'foo';
      var arg_sortOrder = 'foo';
      var arg_ids = buildUnnamed4302();
      var arg_pageToken = 'foo';
      var arg_sortField = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/subaccounts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/subaccounts"));
        pathOffset += 12;

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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["searchString"].first, unittest.equals(arg_searchString));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSubaccountsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId,
              maxResults: arg_maxResults,
              searchString: arg_searchString,
              sortOrder: arg_sortOrder,
              ids: arg_ids,
              pageToken: arg_pageToken,
              sortField: arg_sortField,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSubaccountsListResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.SubaccountsResourceApi res = api.DfareportingApi(mock).subaccounts;
      var arg_request = buildSubaccount();
      var arg_profileId = 'foo';
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Subaccount.fromJson(json);
        checkSubaccount(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/subaccounts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/subaccounts"));
        pathOffset += 12;

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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSubaccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSubaccount(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.SubaccountsResourceApi res = api.DfareportingApi(mock).subaccounts;
      var arg_request = buildSubaccount();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Subaccount.fromJson(json);
        checkSubaccount(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/subaccounts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("/subaccounts"));
        pathOffset += 12;

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
        var resp = convert.json.encode(buildSubaccount());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSubaccount(response);
      })));
    });
  });

  unittest.group('resource-TargetableRemarketingListsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.TargetableRemarketingListsResourceApi res =
          api.DfareportingApi(mock).targetableRemarketingLists;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/targetableRemarketingLists/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 28),
            unittest.equals("/targetableRemarketingLists/"));
        pathOffset += 28;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildTargetableRemarketingList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTargetableRemarketingList(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.TargetableRemarketingListsResourceApi res =
          api.DfareportingApi(mock).targetableRemarketingLists;
      var arg_profileId = 'foo';
      var arg_advertiserId = 'foo';
      var arg_sortField = 'foo';
      var arg_sortOrder = 'foo';
      var arg_active = true;
      var arg_name = 'foo';
      var arg_pageToken = 'foo';
      var arg_maxResults = 42;
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/targetableRemarketingLists', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 27),
            unittest.equals("/targetableRemarketingLists"));
        pathOffset += 27;

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
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(
            queryMap["active"].first, unittest.equals("$arg_active"));
        unittest.expect(queryMap["name"].first, unittest.equals(arg_name));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildTargetableRemarketingListsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId, arg_advertiserId,
              sortField: arg_sortField,
              sortOrder: arg_sortOrder,
              active: arg_active,
              name: arg_name,
              pageToken: arg_pageToken,
              maxResults: arg_maxResults,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTargetableRemarketingListsListResponse(response);
      })));
    });
  });

  unittest.group('resource-TargetingTemplatesResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.TargetingTemplatesResourceApi res =
          api.DfareportingApi(mock).targetingTemplates;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/targetingTemplates/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/targetingTemplates/"));
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildTargetingTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTargetingTemplate(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.TargetingTemplatesResourceApi res =
          api.DfareportingApi(mock).targetingTemplates;
      var arg_request = buildTargetingTemplate();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TargetingTemplate.fromJson(json);
        checkTargetingTemplate(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/targetingTemplates', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/targetingTemplates"));
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
        var resp = convert.json.encode(buildTargetingTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTargetingTemplate(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.TargetingTemplatesResourceApi res =
          api.DfareportingApi(mock).targetingTemplates;
      var arg_profileId = 'foo';
      var arg_maxResults = 42;
      var arg_sortField = 'foo';
      var arg_searchString = 'foo';
      var arg_pageToken = 'foo';
      var arg_advertiserId = 'foo';
      var arg_sortOrder = 'foo';
      var arg_ids = buildUnnamed4303();
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/targetingTemplates', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/targetingTemplates"));
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
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(
            queryMap["searchString"].first, unittest.equals(arg_searchString));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["advertiserId"].first, unittest.equals(arg_advertiserId));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTargetingTemplatesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId,
              maxResults: arg_maxResults,
              sortField: arg_sortField,
              searchString: arg_searchString,
              pageToken: arg_pageToken,
              advertiserId: arg_advertiserId,
              sortOrder: arg_sortOrder,
              ids: arg_ids,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTargetingTemplatesListResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.TargetingTemplatesResourceApi res =
          api.DfareportingApi(mock).targetingTemplates;
      var arg_request = buildTargetingTemplate();
      var arg_profileId = 'foo';
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TargetingTemplate.fromJson(json);
        checkTargetingTemplate(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/targetingTemplates', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/targetingTemplates"));
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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTargetingTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTargetingTemplate(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.TargetingTemplatesResourceApi res =
          api.DfareportingApi(mock).targetingTemplates;
      var arg_request = buildTargetingTemplate();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.TargetingTemplate.fromJson(json);
        checkTargetingTemplate(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/targetingTemplates', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 19),
            unittest.equals("/targetingTemplates"));
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
        var resp = convert.json.encode(buildTargetingTemplate());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTargetingTemplate(response);
      })));
    });
  });

  unittest.group('resource-UserProfilesResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.UserProfilesResourceApi res = api.DfareportingApi(mock).userProfiles;
      var arg_profileId = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));

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
        var resp = convert.json.encode(buildUserProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUserProfile(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.UserProfilesResourceApi res = api.DfareportingApi(mock).userProfiles;
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("userprofiles"));
        pathOffset += 12;

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
        var resp = convert.json.encode(buildUserProfileList());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list($fields: arg_$fields).then(unittest.expectAsync1(((response) {
        checkUserProfileList(response);
      })));
    });
  });

  unittest.group('resource-UserRolePermissionGroupsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.UserRolePermissionGroupsResourceApi res =
          api.DfareportingApi(mock).userRolePermissionGroups;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/userRolePermissionGroups/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 26),
            unittest.equals("/userRolePermissionGroups/"));
        pathOffset += 26;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildUserRolePermissionGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUserRolePermissionGroup(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.UserRolePermissionGroupsResourceApi res =
          api.DfareportingApi(mock).userRolePermissionGroups;
      var arg_profileId = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/userRolePermissionGroups', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 25),
            unittest.equals("/userRolePermissionGroups"));
        pathOffset += 25;

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
            convert.json.encode(buildUserRolePermissionGroupsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUserRolePermissionGroupsListResponse(response);
      })));
    });
  });

  unittest.group('resource-UserRolePermissionsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.UserRolePermissionsResourceApi res =
          api.DfareportingApi(mock).userRolePermissions;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/userRolePermissions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/userRolePermissions/"));
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildUserRolePermission());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUserRolePermission(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.UserRolePermissionsResourceApi res =
          api.DfareportingApi(mock).userRolePermissions;
      var arg_profileId = 'foo';
      var arg_ids = buildUnnamed4304();
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/userRolePermissions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 20),
            unittest.equals("/userRolePermissions"));
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
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildUserRolePermissionsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId, ids: arg_ids, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUserRolePermissionsListResponse(response);
      })));
    });
  });

  unittest.group('resource-UserRolesResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.UserRolesResourceApi res = api.DfareportingApi(mock).userRoles;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/userRoles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/userRoles/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1((_) {}));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.UserRolesResourceApi res = api.DfareportingApi(mock).userRoles;
      var arg_profileId = 'foo';
      var arg_id = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/userRoles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/userRoles/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildUserRole());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUserRole(response);
      })));
    });

    unittest.test('method--insert', () {
      var mock = HttpServerMock();
      api.UserRolesResourceApi res = api.DfareportingApi(mock).userRoles;
      var arg_request = buildUserRole();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UserRole.fromJson(json);
        checkUserRole(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/userRoles', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/userRoles"));
        pathOffset += 10;

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
        var resp = convert.json.encode(buildUserRole());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .insert(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUserRole(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.UserRolesResourceApi res = api.DfareportingApi(mock).userRoles;
      var arg_profileId = 'foo';
      var arg_subaccountId = 'foo';
      var arg_sortOrder = 'foo';
      var arg_ids = buildUnnamed4305();
      var arg_accountUserRoleOnly = true;
      var arg_sortField = 'foo';
      var arg_searchString = 'foo';
      var arg_maxResults = 42;
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/userRoles', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/userRoles"));
        pathOffset += 10;

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
            queryMap["subaccountId"].first, unittest.equals(arg_subaccountId));
        unittest.expect(
            queryMap["sortOrder"].first, unittest.equals(arg_sortOrder));
        unittest.expect(queryMap["ids"], unittest.equals(arg_ids));
        unittest.expect(queryMap["accountUserRoleOnly"].first,
            unittest.equals("$arg_accountUserRoleOnly"));
        unittest.expect(
            queryMap["sortField"].first, unittest.equals(arg_sortField));
        unittest.expect(
            queryMap["searchString"].first, unittest.equals(arg_searchString));
        unittest.expect(core.int.parse(queryMap["maxResults"].first),
            unittest.equals(arg_maxResults));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildUserRolesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId,
              subaccountId: arg_subaccountId,
              sortOrder: arg_sortOrder,
              ids: arg_ids,
              accountUserRoleOnly: arg_accountUserRoleOnly,
              sortField: arg_sortField,
              searchString: arg_searchString,
              maxResults: arg_maxResults,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUserRolesListResponse(response);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      api.UserRolesResourceApi res = api.DfareportingApi(mock).userRoles;
      var arg_request = buildUserRole();
      var arg_profileId = 'foo';
      var arg_id = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UserRole.fromJson(json);
        checkUserRole(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/userRoles', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/userRoles"));
        pathOffset += 10;

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
        unittest.expect(queryMap["id"].first, unittest.equals(arg_id));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildUserRole());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUserRole(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.UserRolesResourceApi res = api.DfareportingApi(mock).userRoles;
      var arg_request = buildUserRole();
      var arg_profileId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.UserRole.fromJson(json);
        checkUserRole(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/userRoles', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/userRoles"));
        pathOffset += 10;

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
        var resp = convert.json.encode(buildUserRole());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkUserRole(response);
      })));
    });
  });

  unittest.group('resource-VideoFormatsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.VideoFormatsResourceApi res = api.DfareportingApi(mock).videoFormats;
      var arg_profileId = 'foo';
      var arg_id = 42;
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/videoFormats/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/videoFormats/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_id'));

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
        var resp = convert.json.encode(buildVideoFormat());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_profileId, arg_id, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVideoFormat(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.VideoFormatsResourceApi res = api.DfareportingApi(mock).videoFormats;
      var arg_profileId = 'foo';
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
            unittest.equals("dfareporting/v3.4/"));
        pathOffset += 18;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("userprofiles/"));
        pathOffset += 13;
        index = path.indexOf('/videoFormats', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_profileId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/videoFormats"));
        pathOffset += 13;

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
        var resp = convert.json.encode(buildVideoFormatsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_profileId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkVideoFormatsListResponse(response);
      })));
    });
  });
}
