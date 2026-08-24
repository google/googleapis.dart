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

import 'package:googleapis/datamanager/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAdEvent = 0;
api.AdEvent buildAdEvent() {
  final o = api.AdEvent();
  buildCounterAdEvent++;
  if (buildCounterAdEvent < 3) {
    o.adFormat = 'foo';
    o.adFormatString = 'foo';
    o.adGroupId = 'foo';
    o.adHeight = 42;
    o.adId = 'foo';
    o.adPlacement = 'foo';
    o.adPlacementString = 'foo';
    o.adType = 'foo';
    o.adTypeString = 'foo';
    o.adWidth = 42;
    o.advertiserId = 'foo';
    o.attributionHint = 'foo';
    o.campaignId = 'foo';
    o.campaignName = 'foo';
    o.deviceInfo = buildDeviceInfo();
    o.eventId = 'foo';
    o.eventSubtype = 'foo';
    o.eventSubtypeString = 'foo';
    o.eventType = 'foo';
    o.measurementAllowed = true;
    o.medium = 'foo';
    o.mobileDeviceId = 'foo';
    o.platform = 'foo';
    o.platformString = 'foo';
    o.platformType = 'foo';
    o.platformTypeString = 'foo';
    o.regionCode = 'foo';
    o.source = 'foo';
    o.targetingType = 'foo';
    o.targetingTypeString = 'foo';
    o.timestamp = 'foo';
    o.userData = buildUserData();
    o.viewabilityInfo = buildViewabilityInfo();
  }
  buildCounterAdEvent--;
  return o;
}

void checkAdEvent(api.AdEvent o) {
  buildCounterAdEvent++;
  if (buildCounterAdEvent < 3) {
    unittest.expect(o.adFormat!, unittest.equals('foo'));
    unittest.expect(o.adFormatString!, unittest.equals('foo'));
    unittest.expect(o.adGroupId!, unittest.equals('foo'));
    unittest.expect(o.adHeight!, unittest.equals(42));
    unittest.expect(o.adId!, unittest.equals('foo'));
    unittest.expect(o.adPlacement!, unittest.equals('foo'));
    unittest.expect(o.adPlacementString!, unittest.equals('foo'));
    unittest.expect(o.adType!, unittest.equals('foo'));
    unittest.expect(o.adTypeString!, unittest.equals('foo'));
    unittest.expect(o.adWidth!, unittest.equals(42));
    unittest.expect(o.advertiserId!, unittest.equals('foo'));
    unittest.expect(o.attributionHint!, unittest.equals('foo'));
    unittest.expect(o.campaignId!, unittest.equals('foo'));
    unittest.expect(o.campaignName!, unittest.equals('foo'));
    checkDeviceInfo(o.deviceInfo!);
    unittest.expect(o.eventId!, unittest.equals('foo'));
    unittest.expect(o.eventSubtype!, unittest.equals('foo'));
    unittest.expect(o.eventSubtypeString!, unittest.equals('foo'));
    unittest.expect(o.eventType!, unittest.equals('foo'));
    unittest.expect(o.measurementAllowed!, unittest.isTrue);
    unittest.expect(o.medium!, unittest.equals('foo'));
    unittest.expect(o.mobileDeviceId!, unittest.equals('foo'));
    unittest.expect(o.platform!, unittest.equals('foo'));
    unittest.expect(o.platformString!, unittest.equals('foo'));
    unittest.expect(o.platformType!, unittest.equals('foo'));
    unittest.expect(o.platformTypeString!, unittest.equals('foo'));
    unittest.expect(o.regionCode!, unittest.equals('foo'));
    unittest.expect(o.source!, unittest.equals('foo'));
    unittest.expect(o.targetingType!, unittest.equals('foo'));
    unittest.expect(o.targetingTypeString!, unittest.equals('foo'));
    unittest.expect(o.timestamp!, unittest.equals('foo'));
    checkUserData(o.userData!);
    checkViewabilityInfo(o.viewabilityInfo!);
  }
  buildCounterAdEvent--;
}

core.List<api.EncryptedUserId> buildUnnamed0() => [
  buildEncryptedUserId(),
  buildEncryptedUserId(),
];

void checkUnnamed0(core.List<api.EncryptedUserId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEncryptedUserId(o[0]);
  checkEncryptedUserId(o[1]);
}

core.int buildCounterAdIdentifiers = 0;
api.AdIdentifiers buildAdIdentifiers() {
  final o = api.AdIdentifiers();
  buildCounterAdIdentifiers++;
  if (buildCounterAdIdentifiers < 3) {
    o.dclid = 'foo';
    o.encryptedUserIds = buildUnnamed0();
    o.gbraid = 'foo';
    o.gclid = 'foo';
    o.impressionId = 'foo';
    o.landingPageDeviceInfo = buildDeviceInfo();
    o.matchId = 'foo';
    o.mobileDeviceId = 'foo';
    o.sessionAttributes = 'foo';
    o.wbraid = 'foo';
  }
  buildCounterAdIdentifiers--;
  return o;
}

void checkAdIdentifiers(api.AdIdentifiers o) {
  buildCounterAdIdentifiers++;
  if (buildCounterAdIdentifiers < 3) {
    unittest.expect(o.dclid!, unittest.equals('foo'));
    checkUnnamed0(o.encryptedUserIds!);
    unittest.expect(o.gbraid!, unittest.equals('foo'));
    unittest.expect(o.gclid!, unittest.equals('foo'));
    unittest.expect(o.impressionId!, unittest.equals('foo'));
    checkDeviceInfo(o.landingPageDeviceInfo!);
    unittest.expect(o.matchId!, unittest.equals('foo'));
    unittest.expect(o.mobileDeviceId!, unittest.equals('foo'));
    unittest.expect(o.sessionAttributes!, unittest.equals('foo'));
    unittest.expect(o.wbraid!, unittest.equals('foo'));
  }
  buildCounterAdIdentifiers--;
}

core.int buildCounterAddressInfo = 0;
api.AddressInfo buildAddressInfo() {
  final o = api.AddressInfo();
  buildCounterAddressInfo++;
  if (buildCounterAddressInfo < 3) {
    o.addressLine = 'foo';
    o.administrativeArea = 'foo';
    o.city = 'foo';
    o.familyName = 'foo';
    o.givenName = 'foo';
    o.postalCode = 'foo';
    o.regionCode = 'foo';
  }
  buildCounterAddressInfo--;
  return o;
}

void checkAddressInfo(api.AddressInfo o) {
  buildCounterAddressInfo++;
  if (buildCounterAddressInfo < 3) {
    unittest.expect(o.addressLine!, unittest.equals('foo'));
    unittest.expect(o.administrativeArea!, unittest.equals('foo'));
    unittest.expect(o.city!, unittest.equals('foo'));
    unittest.expect(o.familyName!, unittest.equals('foo'));
    unittest.expect(o.givenName!, unittest.equals('foo'));
    unittest.expect(o.postalCode!, unittest.equals('foo'));
    unittest.expect(o.regionCode!, unittest.equals('foo'));
  }
  buildCounterAddressInfo--;
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAudienceMember = 0;
api.AudienceMember buildAudienceMember() {
  final o = api.AudienceMember();
  buildCounterAudienceMember++;
  if (buildCounterAudienceMember < 3) {
    o.compositeData = buildCompositeData();
    o.consent = buildConsent();
    o.destinationReferences = buildUnnamed1();
    o.googleUserIdData = buildGoogleUserIdData();
    o.mobileData = buildMobileData();
    o.pairData = buildPairData();
    o.partnerProvidedIdData = buildPartnerProvidedIdData();
    o.ppidData = buildPpidData();
    o.userData = buildUserData();
    o.userIdData = buildUserIdData();
  }
  buildCounterAudienceMember--;
  return o;
}

void checkAudienceMember(api.AudienceMember o) {
  buildCounterAudienceMember++;
  if (buildCounterAudienceMember < 3) {
    checkCompositeData(o.compositeData!);
    checkConsent(o.consent!);
    checkUnnamed1(o.destinationReferences!);
    checkGoogleUserIdData(o.googleUserIdData!);
    checkMobileData(o.mobileData!);
    checkPairData(o.pairData!);
    checkPartnerProvidedIdData(o.partnerProvidedIdData!);
    checkPpidData(o.ppidData!);
    checkUserData(o.userData!);
    checkUserIdData(o.userIdData!);
  }
  buildCounterAudienceMember--;
}

core.int buildCounterAwsWrappedKeyInfo = 0;
api.AwsWrappedKeyInfo buildAwsWrappedKeyInfo() {
  final o = api.AwsWrappedKeyInfo();
  buildCounterAwsWrappedKeyInfo++;
  if (buildCounterAwsWrappedKeyInfo < 3) {
    o.encryptedDek = 'foo';
    o.kekUri = 'foo';
    o.keyType = 'foo';
    o.roleArn = 'foo';
  }
  buildCounterAwsWrappedKeyInfo--;
  return o;
}

void checkAwsWrappedKeyInfo(api.AwsWrappedKeyInfo o) {
  buildCounterAwsWrappedKeyInfo++;
  if (buildCounterAwsWrappedKeyInfo < 3) {
    unittest.expect(o.encryptedDek!, unittest.equals('foo'));
    unittest.expect(o.kekUri!, unittest.equals('foo'));
    unittest.expect(o.keyType!, unittest.equals('foo'));
    unittest.expect(o.roleArn!, unittest.equals('foo'));
  }
  buildCounterAwsWrappedKeyInfo--;
}

core.int buildCounterBaseline = 0;
api.Baseline buildBaseline() {
  final o = api.Baseline();
  buildCounterBaseline++;
  if (buildCounterBaseline < 3) {
    o.baselineLocation = buildLocation();
    o.locationAutoDetectionEnabled = true;
  }
  buildCounterBaseline--;
  return o;
}

void checkBaseline(api.Baseline o) {
  buildCounterBaseline++;
  if (buildCounterBaseline < 3) {
    checkLocation(o.baselineLocation!);
    unittest.expect(o.locationAutoDetectionEnabled!, unittest.isTrue);
  }
  buildCounterBaseline--;
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Item> buildUnnamed3() => [buildItem(), buildItem()];

void checkUnnamed3(core.List<api.Item> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkItem(o[0]);
  checkItem(o[1]);
}

core.int buildCounterCartData = 0;
api.CartData buildCartData() {
  final o = api.CartData();
  buildCounterCartData++;
  if (buildCounterCartData < 3) {
    o.couponCodes = buildUnnamed2();
    o.items = buildUnnamed3();
    o.merchantFeedLabel = 'foo';
    o.merchantFeedLanguageCode = 'foo';
    o.merchantId = 'foo';
    o.transactionDiscount = 42.0;
  }
  buildCounterCartData--;
  return o;
}

void checkCartData(api.CartData o) {
  buildCounterCartData++;
  if (buildCounterCartData < 3) {
    checkUnnamed2(o.couponCodes!);
    checkUnnamed3(o.items!);
    unittest.expect(o.merchantFeedLabel!, unittest.equals('foo'));
    unittest.expect(o.merchantFeedLanguageCode!, unittest.equals('foo'));
    unittest.expect(o.merchantId!, unittest.equals('foo'));
    unittest.expect(o.transactionDiscount!, unittest.equals(42.0));
  }
  buildCounterCartData--;
}

core.List<api.IpData> buildUnnamed4() => [buildIpData(), buildIpData()];

void checkUnnamed4(core.List<api.IpData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIpData(o[0]);
  checkIpData(o[1]);
}

core.int buildCounterCompositeData = 0;
api.CompositeData buildCompositeData() {
  final o = api.CompositeData();
  buildCounterCompositeData++;
  if (buildCounterCompositeData < 3) {
    o.ipData = buildUnnamed4();
    o.userData = buildUserData();
  }
  buildCounterCompositeData--;
  return o;
}

void checkCompositeData(api.CompositeData o) {
  buildCounterCompositeData++;
  if (buildCounterCompositeData < 3) {
    checkUnnamed4(o.ipData!);
    checkUserData(o.userData!);
  }
  buildCounterCompositeData--;
}

core.int buildCounterConsent = 0;
api.Consent buildConsent() {
  final o = api.Consent();
  buildCounterConsent++;
  if (buildCounterConsent < 3) {
    o.adPersonalization = 'foo';
    o.adUserData = 'foo';
  }
  buildCounterConsent--;
  return o;
}

void checkConsent(api.Consent o) {
  buildCounterConsent++;
  if (buildCounterConsent < 3) {
    unittest.expect(o.adPersonalization!, unittest.equals('foo'));
    unittest.expect(o.adUserData!, unittest.equals('foo'));
  }
  buildCounterConsent--;
}

core.int buildCounterContactIdInfo = 0;
api.ContactIdInfo buildContactIdInfo() {
  final o = api.ContactIdInfo();
  buildCounterContactIdInfo++;
  if (buildCounterContactIdInfo < 3) {
    o.dataSourceType = 'foo';
    o.matchRatePercentage = 42;
  }
  buildCounterContactIdInfo--;
  return o;
}

void checkContactIdInfo(api.ContactIdInfo o) {
  buildCounterContactIdInfo++;
  if (buildCounterContactIdInfo < 3) {
    unittest.expect(o.dataSourceType!, unittest.equals('foo'));
    unittest.expect(o.matchRatePercentage!, unittest.equals(42));
  }
  buildCounterContactIdInfo--;
}

core.int buildCounterCoordinatorKeyInfo = 0;
api.CoordinatorKeyInfo buildCoordinatorKeyInfo() {
  final o = api.CoordinatorKeyInfo();
  buildCounterCoordinatorKeyInfo++;
  if (buildCounterCoordinatorKeyInfo < 3) {
    o.keyId = 'foo';
  }
  buildCounterCoordinatorKeyInfo--;
  return o;
}

void checkCoordinatorKeyInfo(api.CoordinatorKeyInfo o) {
  buildCounterCoordinatorKeyInfo++;
  if (buildCounterCoordinatorKeyInfo < 3) {
    unittest.expect(o.keyId!, unittest.equals('foo'));
  }
  buildCounterCoordinatorKeyInfo--;
}

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCustomVariable = 0;
api.CustomVariable buildCustomVariable() {
  final o = api.CustomVariable();
  buildCounterCustomVariable++;
  if (buildCounterCustomVariable < 3) {
    o.destinationReferences = buildUnnamed5();
    o.value = 'foo';
    o.variable = 'foo';
  }
  buildCounterCustomVariable--;
  return o;
}

void checkCustomVariable(api.CustomVariable o) {
  buildCounterCustomVariable++;
  if (buildCounterCustomVariable < 3) {
    checkUnnamed5(o.destinationReferences!);
    unittest.expect(o.value!, unittest.equals('foo'));
    unittest.expect(o.variable!, unittest.equals('foo'));
  }
  buildCounterCustomVariable--;
}

core.int buildCounterDataTypeCount = 0;
api.DataTypeCount buildDataTypeCount() {
  final o = api.DataTypeCount();
  buildCounterDataTypeCount++;
  if (buildCounterDataTypeCount < 3) {
    o.count = 'foo';
    o.type = 'foo';
  }
  buildCounterDataTypeCount--;
  return o;
}

void checkDataTypeCount(api.DataTypeCount o) {
  buildCounterDataTypeCount++;
  if (buildCounterDataTypeCount < 3) {
    unittest.expect(o.count!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterDataTypeCount--;
}

core.int buildCounterDestination = 0;
api.Destination buildDestination() {
  final o = api.Destination();
  buildCounterDestination++;
  if (buildCounterDestination < 3) {
    o.linkedAccount = buildProductAccount();
    o.loginAccount = buildProductAccount();
    o.operatingAccount = buildProductAccount();
    o.productDestinationId = 'foo';
    o.reference = 'foo';
  }
  buildCounterDestination--;
  return o;
}

void checkDestination(api.Destination o) {
  buildCounterDestination++;
  if (buildCounterDestination < 3) {
    checkProductAccount(o.linkedAccount!);
    checkProductAccount(o.loginAccount!);
    checkProductAccount(o.operatingAccount!);
    unittest.expect(o.productDestinationId!, unittest.equals('foo'));
    unittest.expect(o.reference!, unittest.equals('foo'));
  }
  buildCounterDestination--;
}

core.int buildCounterDeviceInfo = 0;
api.DeviceInfo buildDeviceInfo() {
  final o = api.DeviceInfo();
  buildCounterDeviceInfo++;
  if (buildCounterDeviceInfo < 3) {
    o.brand = 'foo';
    o.browser = 'foo';
    o.browserVersion = 'foo';
    o.category = 'foo';
    o.ipAddress = 'foo';
    o.languageCode = 'foo';
    o.model = 'foo';
    o.operatingSystem = 'foo';
    o.operatingSystemVersion = 'foo';
    o.screenHeight = 42;
    o.screenWidth = 42;
    o.userAgent = 'foo';
  }
  buildCounterDeviceInfo--;
  return o;
}

void checkDeviceInfo(api.DeviceInfo o) {
  buildCounterDeviceInfo++;
  if (buildCounterDeviceInfo < 3) {
    unittest.expect(o.brand!, unittest.equals('foo'));
    unittest.expect(o.browser!, unittest.equals('foo'));
    unittest.expect(o.browserVersion!, unittest.equals('foo'));
    unittest.expect(o.category!, unittest.equals('foo'));
    unittest.expect(o.ipAddress!, unittest.equals('foo'));
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.model!, unittest.equals('foo'));
    unittest.expect(o.operatingSystem!, unittest.equals('foo'));
    unittest.expect(o.operatingSystemVersion!, unittest.equals('foo'));
    unittest.expect(o.screenHeight!, unittest.equals(42));
    unittest.expect(o.screenWidth!, unittest.equals(42));
    unittest.expect(o.userAgent!, unittest.equals('foo'));
  }
  buildCounterDeviceInfo--;
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

core.int buildCounterEncryptedUserId = 0;
api.EncryptedUserId buildEncryptedUserId() {
  final o = api.EncryptedUserId();
  buildCounterEncryptedUserId++;
  if (buildCounterEncryptedUserId < 3) {
    o.encryptedId = 'foo';
    o.entityId = 'foo';
    o.entityType = 'foo';
    o.source = 'foo';
  }
  buildCounterEncryptedUserId--;
  return o;
}

void checkEncryptedUserId(api.EncryptedUserId o) {
  buildCounterEncryptedUserId++;
  if (buildCounterEncryptedUserId < 3) {
    unittest.expect(o.encryptedId!, unittest.equals('foo'));
    unittest.expect(o.entityId!, unittest.equals('foo'));
    unittest.expect(o.entityType!, unittest.equals('foo'));
    unittest.expect(o.source!, unittest.equals('foo'));
  }
  buildCounterEncryptedUserId--;
}

core.int buildCounterEncryptionInfo = 0;
api.EncryptionInfo buildEncryptionInfo() {
  final o = api.EncryptionInfo();
  buildCounterEncryptionInfo++;
  if (buildCounterEncryptionInfo < 3) {
    o.awsWrappedKeyInfo = buildAwsWrappedKeyInfo();
    o.coordinatorKeyInfo = buildCoordinatorKeyInfo();
    o.gcpWrappedKeyInfo = buildGcpWrappedKeyInfo();
  }
  buildCounterEncryptionInfo--;
  return o;
}

void checkEncryptionInfo(api.EncryptionInfo o) {
  buildCounterEncryptionInfo++;
  if (buildCounterEncryptionInfo < 3) {
    checkAwsWrappedKeyInfo(o.awsWrappedKeyInfo!);
    checkCoordinatorKeyInfo(o.coordinatorKeyInfo!);
    checkGcpWrappedKeyInfo(o.gcpWrappedKeyInfo!);
  }
  buildCounterEncryptionInfo--;
}

core.int buildCounterErrorCount = 0;
api.ErrorCount buildErrorCount() {
  final o = api.ErrorCount();
  buildCounterErrorCount++;
  if (buildCounterErrorCount < 3) {
    o.reason = 'foo';
    o.recordCount = 'foo';
  }
  buildCounterErrorCount--;
  return o;
}

void checkErrorCount(api.ErrorCount o) {
  buildCounterErrorCount++;
  if (buildCounterErrorCount < 3) {
    unittest.expect(o.reason!, unittest.equals('foo'));
    unittest.expect(o.recordCount!, unittest.equals('foo'));
  }
  buildCounterErrorCount--;
}

core.List<api.ErrorCount> buildUnnamed6() => [
  buildErrorCount(),
  buildErrorCount(),
];

void checkUnnamed6(core.List<api.ErrorCount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorCount(o[0]);
  checkErrorCount(o[1]);
}

core.int buildCounterErrorInfo = 0;
api.ErrorInfo buildErrorInfo() {
  final o = api.ErrorInfo();
  buildCounterErrorInfo++;
  if (buildCounterErrorInfo < 3) {
    o.errorCounts = buildUnnamed6();
  }
  buildCounterErrorInfo--;
  return o;
}

void checkErrorInfo(api.ErrorInfo o) {
  buildCounterErrorInfo++;
  if (buildCounterErrorInfo < 3) {
    checkUnnamed6(o.errorCounts!);
  }
  buildCounterErrorInfo--;
}

core.List<api.EventParameter> buildUnnamed7() => [
  buildEventParameter(),
  buildEventParameter(),
];

void checkUnnamed7(core.List<api.EventParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEventParameter(o[0]);
  checkEventParameter(o[1]);
}

core.List<api.CustomVariable> buildUnnamed8() => [
  buildCustomVariable(),
  buildCustomVariable(),
];

void checkUnnamed8(core.List<api.CustomVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomVariable(o[0]);
  checkCustomVariable(o[1]);
}

core.List<core.String> buildUnnamed9() => ['foo', 'foo'];

void checkUnnamed9(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ExperimentalField> buildUnnamed10() => [
  buildExperimentalField(),
  buildExperimentalField(),
];

void checkUnnamed10(core.List<api.ExperimentalField> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExperimentalField(o[0]);
  checkExperimentalField(o[1]);
}

core.int buildCounterEvent = 0;
api.Event buildEvent() {
  final o = api.Event();
  buildCounterEvent++;
  if (buildCounterEvent < 3) {
    o.adIdentifiers = buildAdIdentifiers();
    o.additionalEventParameters = buildUnnamed7();
    o.appInstanceId = 'foo';
    o.cartData = buildCartData();
    o.clientId = 'foo';
    o.consent = buildConsent();
    o.conversionCount = 42.0;
    o.conversionValue = 42.0;
    o.currency = 'foo';
    o.customVariables = buildUnnamed8();
    o.destinationReferences = buildUnnamed9();
    o.eventDeviceInfo = buildDeviceInfo();
    o.eventLocation = buildEventLocation();
    o.eventName = 'foo';
    o.eventSource = 'foo';
    o.eventTimestamp = 'foo';
    o.experimentalFields = buildUnnamed10();
    o.lastUpdatedTimestamp = 'foo';
    o.thirdPartyUserData = buildUserData();
    o.transactionId = 'foo';
    o.userData = buildUserData();
    o.userId = 'foo';
    o.userProperties = buildUserProperties();
  }
  buildCounterEvent--;
  return o;
}

void checkEvent(api.Event o) {
  buildCounterEvent++;
  if (buildCounterEvent < 3) {
    checkAdIdentifiers(o.adIdentifiers!);
    checkUnnamed7(o.additionalEventParameters!);
    unittest.expect(o.appInstanceId!, unittest.equals('foo'));
    checkCartData(o.cartData!);
    unittest.expect(o.clientId!, unittest.equals('foo'));
    checkConsent(o.consent!);
    unittest.expect(o.conversionCount!, unittest.equals(42.0));
    unittest.expect(o.conversionValue!, unittest.equals(42.0));
    unittest.expect(o.currency!, unittest.equals('foo'));
    checkUnnamed8(o.customVariables!);
    checkUnnamed9(o.destinationReferences!);
    checkDeviceInfo(o.eventDeviceInfo!);
    checkEventLocation(o.eventLocation!);
    unittest.expect(o.eventName!, unittest.equals('foo'));
    unittest.expect(o.eventSource!, unittest.equals('foo'));
    unittest.expect(o.eventTimestamp!, unittest.equals('foo'));
    checkUnnamed10(o.experimentalFields!);
    unittest.expect(o.lastUpdatedTimestamp!, unittest.equals('foo'));
    checkUserData(o.thirdPartyUserData!);
    unittest.expect(o.transactionId!, unittest.equals('foo'));
    checkUserData(o.userData!);
    unittest.expect(o.userId!, unittest.equals('foo'));
    checkUserProperties(o.userProperties!);
  }
  buildCounterEvent--;
}

core.int buildCounterEventLocation = 0;
api.EventLocation buildEventLocation() {
  final o = api.EventLocation();
  buildCounterEventLocation++;
  if (buildCounterEventLocation < 3) {
    o.city = 'foo';
    o.continentCode = 'foo';
    o.regionCode = 'foo';
    o.storeId = 'foo';
    o.subcontinentCode = 'foo';
    o.subdivisionCode = 'foo';
  }
  buildCounterEventLocation--;
  return o;
}

void checkEventLocation(api.EventLocation o) {
  buildCounterEventLocation++;
  if (buildCounterEventLocation < 3) {
    unittest.expect(o.city!, unittest.equals('foo'));
    unittest.expect(o.continentCode!, unittest.equals('foo'));
    unittest.expect(o.regionCode!, unittest.equals('foo'));
    unittest.expect(o.storeId!, unittest.equals('foo'));
    unittest.expect(o.subcontinentCode!, unittest.equals('foo'));
    unittest.expect(o.subdivisionCode!, unittest.equals('foo'));
  }
  buildCounterEventLocation--;
}

core.int buildCounterEventParameter = 0;
api.EventParameter buildEventParameter() {
  final o = api.EventParameter();
  buildCounterEventParameter++;
  if (buildCounterEventParameter < 3) {
    o.parameterName = 'foo';
    o.value = 'foo';
  }
  buildCounterEventParameter--;
  return o;
}

void checkEventParameter(api.EventParameter o) {
  buildCounterEventParameter++;
  if (buildCounterEventParameter < 3) {
    unittest.expect(o.parameterName!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterEventParameter--;
}

core.int buildCounterExperimentalField = 0;
api.ExperimentalField buildExperimentalField() {
  final o = api.ExperimentalField();
  buildCounterExperimentalField++;
  if (buildCounterExperimentalField < 3) {
    o.field = 'foo';
    o.value = 'foo';
  }
  buildCounterExperimentalField--;
  return o;
}

void checkExperimentalField(api.ExperimentalField o) {
  buildCounterExperimentalField++;
  if (buildCounterExperimentalField < 3) {
    unittest.expect(o.field!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterExperimentalField--;
}

core.int buildCounterFieldWarning = 0;
api.FieldWarning buildFieldWarning() {
  final o = api.FieldWarning();
  buildCounterFieldWarning++;
  if (buildCounterFieldWarning < 3) {
    o.description = 'foo';
    o.field = 'foo';
    o.reason = 'foo';
  }
  buildCounterFieldWarning--;
  return o;
}

void checkFieldWarning(api.FieldWarning o) {
  buildCounterFieldWarning++;
  if (buildCounterFieldWarning < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.field!, unittest.equals('foo'));
    unittest.expect(o.reason!, unittest.equals('foo'));
  }
  buildCounterFieldWarning--;
}

core.int buildCounterGcpWrappedKeyInfo = 0;
api.GcpWrappedKeyInfo buildGcpWrappedKeyInfo() {
  final o = api.GcpWrappedKeyInfo();
  buildCounterGcpWrappedKeyInfo++;
  if (buildCounterGcpWrappedKeyInfo < 3) {
    o.encryptedDek = 'foo';
    o.kekUri = 'foo';
    o.keyType = 'foo';
    o.wipProvider = 'foo';
  }
  buildCounterGcpWrappedKeyInfo--;
  return o;
}

void checkGcpWrappedKeyInfo(api.GcpWrappedKeyInfo o) {
  buildCounterGcpWrappedKeyInfo++;
  if (buildCounterGcpWrappedKeyInfo < 3) {
    unittest.expect(o.encryptedDek!, unittest.equals('foo'));
    unittest.expect(o.kekUri!, unittest.equals('foo'));
    unittest.expect(o.keyType!, unittest.equals('foo'));
    unittest.expect(o.wipProvider!, unittest.equals('foo'));
  }
  buildCounterGcpWrappedKeyInfo--;
}

core.List<core.String> buildUnnamed11() => ['foo', 'foo'];

void checkUnnamed11(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleUserIdData = 0;
api.GoogleUserIdData buildGoogleUserIdData() {
  final o = api.GoogleUserIdData();
  buildCounterGoogleUserIdData++;
  if (buildCounterGoogleUserIdData < 3) {
    o.googleUserIds = buildUnnamed11();
  }
  buildCounterGoogleUserIdData--;
  return o;
}

void checkGoogleUserIdData(api.GoogleUserIdData o) {
  buildCounterGoogleUserIdData++;
  if (buildCounterGoogleUserIdData < 3) {
    checkUnnamed11(o.googleUserIds!);
  }
  buildCounterGoogleUserIdData--;
}

core.List<api.AdEvent> buildUnnamed12() => [buildAdEvent(), buildAdEvent()];

void checkUnnamed12(core.List<api.AdEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAdEvent(o[0]);
  checkAdEvent(o[1]);
}

core.int buildCounterIngestAdEventsRequest = 0;
api.IngestAdEventsRequest buildIngestAdEventsRequest() {
  final o = api.IngestAdEventsRequest();
  buildCounterIngestAdEventsRequest++;
  if (buildCounterIngestAdEventsRequest < 3) {
    o.adEvents = buildUnnamed12();
    o.encryptionInfo = buildEncryptionInfo();
    o.validateOnly = true;
  }
  buildCounterIngestAdEventsRequest--;
  return o;
}

void checkIngestAdEventsRequest(api.IngestAdEventsRequest o) {
  buildCounterIngestAdEventsRequest++;
  if (buildCounterIngestAdEventsRequest < 3) {
    checkUnnamed12(o.adEvents!);
    checkEncryptionInfo(o.encryptionInfo!);
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterIngestAdEventsRequest--;
}

core.int buildCounterIngestAdEventsResponse = 0;
api.IngestAdEventsResponse buildIngestAdEventsResponse() {
  final o = api.IngestAdEventsResponse();
  buildCounterIngestAdEventsResponse++;
  if (buildCounterIngestAdEventsResponse < 3) {}
  buildCounterIngestAdEventsResponse--;
  return o;
}

void checkIngestAdEventsResponse(api.IngestAdEventsResponse o) {
  buildCounterIngestAdEventsResponse++;
  if (buildCounterIngestAdEventsResponse < 3) {}
  buildCounterIngestAdEventsResponse--;
}

core.List<api.AudienceMember> buildUnnamed13() => [
  buildAudienceMember(),
  buildAudienceMember(),
];

void checkUnnamed13(core.List<api.AudienceMember> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAudienceMember(o[0]);
  checkAudienceMember(o[1]);
}

core.List<api.Destination> buildUnnamed14() => [
  buildDestination(),
  buildDestination(),
];

void checkUnnamed14(core.List<api.Destination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDestination(o[0]);
  checkDestination(o[1]);
}

core.int buildCounterIngestAudienceMembersRequest = 0;
api.IngestAudienceMembersRequest buildIngestAudienceMembersRequest() {
  final o = api.IngestAudienceMembersRequest();
  buildCounterIngestAudienceMembersRequest++;
  if (buildCounterIngestAudienceMembersRequest < 3) {
    o.audienceMembers = buildUnnamed13();
    o.consent = buildConsent();
    o.destinations = buildUnnamed14();
    o.encoding = 'foo';
    o.encryptionInfo = buildEncryptionInfo();
    o.termsOfService = buildTermsOfService();
    o.validateOnly = true;
  }
  buildCounterIngestAudienceMembersRequest--;
  return o;
}

void checkIngestAudienceMembersRequest(api.IngestAudienceMembersRequest o) {
  buildCounterIngestAudienceMembersRequest++;
  if (buildCounterIngestAudienceMembersRequest < 3) {
    checkUnnamed13(o.audienceMembers!);
    checkConsent(o.consent!);
    checkUnnamed14(o.destinations!);
    unittest.expect(o.encoding!, unittest.equals('foo'));
    checkEncryptionInfo(o.encryptionInfo!);
    checkTermsOfService(o.termsOfService!);
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterIngestAudienceMembersRequest--;
}

core.List<api.FieldWarning> buildUnnamed15() => [
  buildFieldWarning(),
  buildFieldWarning(),
];

void checkUnnamed15(core.List<api.FieldWarning> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFieldWarning(o[0]);
  checkFieldWarning(o[1]);
}

core.int buildCounterIngestAudienceMembersResponse = 0;
api.IngestAudienceMembersResponse buildIngestAudienceMembersResponse() {
  final o = api.IngestAudienceMembersResponse();
  buildCounterIngestAudienceMembersResponse++;
  if (buildCounterIngestAudienceMembersResponse < 3) {
    o.fieldWarnings = buildUnnamed15();
    o.requestId = 'foo';
  }
  buildCounterIngestAudienceMembersResponse--;
  return o;
}

void checkIngestAudienceMembersResponse(api.IngestAudienceMembersResponse o) {
  buildCounterIngestAudienceMembersResponse++;
  if (buildCounterIngestAudienceMembersResponse < 3) {
    checkUnnamed15(o.fieldWarnings!);
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterIngestAudienceMembersResponse--;
}

core.int buildCounterIngestAudienceMembersStatus = 0;
api.IngestAudienceMembersStatus buildIngestAudienceMembersStatus() {
  final o = api.IngestAudienceMembersStatus();
  buildCounterIngestAudienceMembersStatus++;
  if (buildCounterIngestAudienceMembersStatus < 3) {
    o.compositeDataIngestionStatus = buildIngestCompositeDataStatus();
    o.googleUserIdDataIngestionStatus = buildIngestGoogleUserIdDataStatus();
    o.mobileDataIngestionStatus = buildIngestMobileDataStatus();
    o.pairDataIngestionStatus = buildIngestPairDataStatus();
    o.partnerProvidedIdDataIngestionStatus =
        buildIngestPartnerProvidedIdDataStatus();
    o.ppidDataIngestionStatus = buildIngestPpidDataStatus();
    o.userDataIngestionStatus = buildIngestUserDataStatus();
    o.userIdDataIngestionStatus = buildIngestUserIdDataStatus();
  }
  buildCounterIngestAudienceMembersStatus--;
  return o;
}

void checkIngestAudienceMembersStatus(api.IngestAudienceMembersStatus o) {
  buildCounterIngestAudienceMembersStatus++;
  if (buildCounterIngestAudienceMembersStatus < 3) {
    checkIngestCompositeDataStatus(o.compositeDataIngestionStatus!);
    checkIngestGoogleUserIdDataStatus(o.googleUserIdDataIngestionStatus!);
    checkIngestMobileDataStatus(o.mobileDataIngestionStatus!);
    checkIngestPairDataStatus(o.pairDataIngestionStatus!);
    checkIngestPartnerProvidedIdDataStatus(
      o.partnerProvidedIdDataIngestionStatus!,
    );
    checkIngestPpidDataStatus(o.ppidDataIngestionStatus!);
    checkIngestUserDataStatus(o.userDataIngestionStatus!);
    checkIngestUserIdDataStatus(o.userIdDataIngestionStatus!);
  }
  buildCounterIngestAudienceMembersStatus--;
}

core.List<api.DataTypeCount> buildUnnamed16() => [
  buildDataTypeCount(),
  buildDataTypeCount(),
];

void checkUnnamed16(core.List<api.DataTypeCount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataTypeCount(o[0]);
  checkDataTypeCount(o[1]);
}

core.int buildCounterIngestCompositeDataStatus = 0;
api.IngestCompositeDataStatus buildIngestCompositeDataStatus() {
  final o = api.IngestCompositeDataStatus();
  buildCounterIngestCompositeDataStatus++;
  if (buildCounterIngestCompositeDataStatus < 3) {
    o.dataTypeCounts = buildUnnamed16();
    o.recordCount = 'foo';
    o.uploadMatchRateRange = 'foo';
  }
  buildCounterIngestCompositeDataStatus--;
  return o;
}

void checkIngestCompositeDataStatus(api.IngestCompositeDataStatus o) {
  buildCounterIngestCompositeDataStatus++;
  if (buildCounterIngestCompositeDataStatus < 3) {
    checkUnnamed16(o.dataTypeCounts!);
    unittest.expect(o.recordCount!, unittest.equals('foo'));
    unittest.expect(o.uploadMatchRateRange!, unittest.equals('foo'));
  }
  buildCounterIngestCompositeDataStatus--;
}

core.List<api.Destination> buildUnnamed17() => [
  buildDestination(),
  buildDestination(),
];

void checkUnnamed17(core.List<api.Destination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDestination(o[0]);
  checkDestination(o[1]);
}

core.List<api.Event> buildUnnamed18() => [buildEvent(), buildEvent()];

void checkUnnamed18(core.List<api.Event> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEvent(o[0]);
  checkEvent(o[1]);
}

core.int buildCounterIngestEventsRequest = 0;
api.IngestEventsRequest buildIngestEventsRequest() {
  final o = api.IngestEventsRequest();
  buildCounterIngestEventsRequest++;
  if (buildCounterIngestEventsRequest < 3) {
    o.consent = buildConsent();
    o.destinations = buildUnnamed17();
    o.encoding = 'foo';
    o.encryptionInfo = buildEncryptionInfo();
    o.events = buildUnnamed18();
    o.validateOnly = true;
  }
  buildCounterIngestEventsRequest--;
  return o;
}

void checkIngestEventsRequest(api.IngestEventsRequest o) {
  buildCounterIngestEventsRequest++;
  if (buildCounterIngestEventsRequest < 3) {
    checkConsent(o.consent!);
    checkUnnamed17(o.destinations!);
    unittest.expect(o.encoding!, unittest.equals('foo'));
    checkEncryptionInfo(o.encryptionInfo!);
    checkUnnamed18(o.events!);
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterIngestEventsRequest--;
}

core.List<api.FieldWarning> buildUnnamed19() => [
  buildFieldWarning(),
  buildFieldWarning(),
];

void checkUnnamed19(core.List<api.FieldWarning> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFieldWarning(o[0]);
  checkFieldWarning(o[1]);
}

core.int buildCounterIngestEventsResponse = 0;
api.IngestEventsResponse buildIngestEventsResponse() {
  final o = api.IngestEventsResponse();
  buildCounterIngestEventsResponse++;
  if (buildCounterIngestEventsResponse < 3) {
    o.fieldWarnings = buildUnnamed19();
    o.requestId = 'foo';
  }
  buildCounterIngestEventsResponse--;
  return o;
}

void checkIngestEventsResponse(api.IngestEventsResponse o) {
  buildCounterIngestEventsResponse++;
  if (buildCounterIngestEventsResponse < 3) {
    checkUnnamed19(o.fieldWarnings!);
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterIngestEventsResponse--;
}

core.int buildCounterIngestEventsStatus = 0;
api.IngestEventsStatus buildIngestEventsStatus() {
  final o = api.IngestEventsStatus();
  buildCounterIngestEventsStatus++;
  if (buildCounterIngestEventsStatus < 3) {
    o.recordCount = 'foo';
  }
  buildCounterIngestEventsStatus--;
  return o;
}

void checkIngestEventsStatus(api.IngestEventsStatus o) {
  buildCounterIngestEventsStatus++;
  if (buildCounterIngestEventsStatus < 3) {
    unittest.expect(o.recordCount!, unittest.equals('foo'));
  }
  buildCounterIngestEventsStatus--;
}

core.int buildCounterIngestGoogleUserIdDataStatus = 0;
api.IngestGoogleUserIdDataStatus buildIngestGoogleUserIdDataStatus() {
  final o = api.IngestGoogleUserIdDataStatus();
  buildCounterIngestGoogleUserIdDataStatus++;
  if (buildCounterIngestGoogleUserIdDataStatus < 3) {
    o.googleUserIdCount = 'foo';
    o.recordCount = 'foo';
  }
  buildCounterIngestGoogleUserIdDataStatus--;
  return o;
}

void checkIngestGoogleUserIdDataStatus(api.IngestGoogleUserIdDataStatus o) {
  buildCounterIngestGoogleUserIdDataStatus++;
  if (buildCounterIngestGoogleUserIdDataStatus < 3) {
    unittest.expect(o.googleUserIdCount!, unittest.equals('foo'));
    unittest.expect(o.recordCount!, unittest.equals('foo'));
  }
  buildCounterIngestGoogleUserIdDataStatus--;
}

core.int buildCounterIngestMobileDataStatus = 0;
api.IngestMobileDataStatus buildIngestMobileDataStatus() {
  final o = api.IngestMobileDataStatus();
  buildCounterIngestMobileDataStatus++;
  if (buildCounterIngestMobileDataStatus < 3) {
    o.mobileIdCount = 'foo';
    o.recordCount = 'foo';
  }
  buildCounterIngestMobileDataStatus--;
  return o;
}

void checkIngestMobileDataStatus(api.IngestMobileDataStatus o) {
  buildCounterIngestMobileDataStatus++;
  if (buildCounterIngestMobileDataStatus < 3) {
    unittest.expect(o.mobileIdCount!, unittest.equals('foo'));
    unittest.expect(o.recordCount!, unittest.equals('foo'));
  }
  buildCounterIngestMobileDataStatus--;
}

core.int buildCounterIngestPairDataStatus = 0;
api.IngestPairDataStatus buildIngestPairDataStatus() {
  final o = api.IngestPairDataStatus();
  buildCounterIngestPairDataStatus++;
  if (buildCounterIngestPairDataStatus < 3) {
    o.pairIdCount = 'foo';
    o.recordCount = 'foo';
  }
  buildCounterIngestPairDataStatus--;
  return o;
}

void checkIngestPairDataStatus(api.IngestPairDataStatus o) {
  buildCounterIngestPairDataStatus++;
  if (buildCounterIngestPairDataStatus < 3) {
    unittest.expect(o.pairIdCount!, unittest.equals('foo'));
    unittest.expect(o.recordCount!, unittest.equals('foo'));
  }
  buildCounterIngestPairDataStatus--;
}

core.int buildCounterIngestPartnerProvidedIdDataStatus = 0;
api.IngestPartnerProvidedIdDataStatus buildIngestPartnerProvidedIdDataStatus() {
  final o = api.IngestPartnerProvidedIdDataStatus();
  buildCounterIngestPartnerProvidedIdDataStatus++;
  if (buildCounterIngestPartnerProvidedIdDataStatus < 3) {
    o.partnerProvidedIdCount = 'foo';
    o.recordCount = 'foo';
  }
  buildCounterIngestPartnerProvidedIdDataStatus--;
  return o;
}

void checkIngestPartnerProvidedIdDataStatus(
  api.IngestPartnerProvidedIdDataStatus o,
) {
  buildCounterIngestPartnerProvidedIdDataStatus++;
  if (buildCounterIngestPartnerProvidedIdDataStatus < 3) {
    unittest.expect(o.partnerProvidedIdCount!, unittest.equals('foo'));
    unittest.expect(o.recordCount!, unittest.equals('foo'));
  }
  buildCounterIngestPartnerProvidedIdDataStatus--;
}

core.int buildCounterIngestPpidDataStatus = 0;
api.IngestPpidDataStatus buildIngestPpidDataStatus() {
  final o = api.IngestPpidDataStatus();
  buildCounterIngestPpidDataStatus++;
  if (buildCounterIngestPpidDataStatus < 3) {
    o.ppidCount = 'foo';
    o.recordCount = 'foo';
  }
  buildCounterIngestPpidDataStatus--;
  return o;
}

void checkIngestPpidDataStatus(api.IngestPpidDataStatus o) {
  buildCounterIngestPpidDataStatus++;
  if (buildCounterIngestPpidDataStatus < 3) {
    unittest.expect(o.ppidCount!, unittest.equals('foo'));
    unittest.expect(o.recordCount!, unittest.equals('foo'));
  }
  buildCounterIngestPpidDataStatus--;
}

core.int buildCounterIngestUserDataStatus = 0;
api.IngestUserDataStatus buildIngestUserDataStatus() {
  final o = api.IngestUserDataStatus();
  buildCounterIngestUserDataStatus++;
  if (buildCounterIngestUserDataStatus < 3) {
    o.recordCount = 'foo';
    o.uploadMatchRateRange = 'foo';
    o.userIdentifierCount = 'foo';
  }
  buildCounterIngestUserDataStatus--;
  return o;
}

void checkIngestUserDataStatus(api.IngestUserDataStatus o) {
  buildCounterIngestUserDataStatus++;
  if (buildCounterIngestUserDataStatus < 3) {
    unittest.expect(o.recordCount!, unittest.equals('foo'));
    unittest.expect(o.uploadMatchRateRange!, unittest.equals('foo'));
    unittest.expect(o.userIdentifierCount!, unittest.equals('foo'));
  }
  buildCounterIngestUserDataStatus--;
}

core.int buildCounterIngestUserIdDataStatus = 0;
api.IngestUserIdDataStatus buildIngestUserIdDataStatus() {
  final o = api.IngestUserIdDataStatus();
  buildCounterIngestUserIdDataStatus++;
  if (buildCounterIngestUserIdDataStatus < 3) {
    o.recordCount = 'foo';
    o.userIdCount = 'foo';
  }
  buildCounterIngestUserIdDataStatus--;
  return o;
}

void checkIngestUserIdDataStatus(api.IngestUserIdDataStatus o) {
  buildCounterIngestUserIdDataStatus++;
  if (buildCounterIngestUserIdDataStatus < 3) {
    unittest.expect(o.recordCount!, unittest.equals('foo'));
    unittest.expect(o.userIdCount!, unittest.equals('foo'));
  }
  buildCounterIngestUserIdDataStatus--;
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterIngestedUserListInfo = 0;
api.IngestedUserListInfo buildIngestedUserListInfo() {
  final o = api.IngestedUserListInfo();
  buildCounterIngestedUserListInfo++;
  if (buildCounterIngestedUserListInfo < 3) {
    o.contactIdInfo = buildContactIdInfo();
    o.mobileIdInfo = buildMobileIdInfo();
    o.pairIdInfo = buildPairIdInfo();
    o.partnerAudienceInfo = buildPartnerAudienceInfo();
    o.pseudonymousIdInfo = buildPseudonymousIdInfo();
    o.uploadKeyTypes = buildUnnamed20();
    o.userIdInfo = buildUserIdInfo();
  }
  buildCounterIngestedUserListInfo--;
  return o;
}

void checkIngestedUserListInfo(api.IngestedUserListInfo o) {
  buildCounterIngestedUserListInfo++;
  if (buildCounterIngestedUserListInfo < 3) {
    checkContactIdInfo(o.contactIdInfo!);
    checkMobileIdInfo(o.mobileIdInfo!);
    checkPairIdInfo(o.pairIdInfo!);
    checkPartnerAudienceInfo(o.partnerAudienceInfo!);
    checkPseudonymousIdInfo(o.pseudonymousIdInfo!);
    checkUnnamed20(o.uploadKeyTypes!);
    checkUserIdInfo(o.userIdInfo!);
  }
  buildCounterIngestedUserListInfo--;
}

core.int buildCounterIpData = 0;
api.IpData buildIpData() {
  final o = api.IpData();
  buildCounterIpData++;
  if (buildCounterIpData < 3) {
    o.ipAddress = 'foo';
    o.observeEndTime = 'foo';
    o.observeStartTime = 'foo';
  }
  buildCounterIpData--;
  return o;
}

void checkIpData(api.IpData o) {
  buildCounterIpData++;
  if (buildCounterIpData < 3) {
    unittest.expect(o.ipAddress!, unittest.equals('foo'));
    unittest.expect(o.observeEndTime!, unittest.equals('foo'));
    unittest.expect(o.observeStartTime!, unittest.equals('foo'));
  }
  buildCounterIpData--;
}

core.List<api.ItemParameter> buildUnnamed21() => [
  buildItemParameter(),
  buildItemParameter(),
];

void checkUnnamed21(core.List<api.ItemParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkItemParameter(o[0]);
  checkItemParameter(o[1]);
}

core.List<api.ItemCustomVariable> buildUnnamed22() => [
  buildItemCustomVariable(),
  buildItemCustomVariable(),
];

void checkUnnamed22(core.List<api.ItemCustomVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkItemCustomVariable(o[0]);
  checkItemCustomVariable(o[1]);
}

core.int buildCounterItem = 0;
api.Item buildItem() {
  final o = api.Item();
  buildCounterItem++;
  if (buildCounterItem < 3) {
    o.additionalItemParameters = buildUnnamed21();
    o.conversionValue = 42.0;
    o.customVariables = buildUnnamed22();
    o.itemId = 'foo';
    o.merchantFeedLabel = 'foo';
    o.merchantFeedLanguageCode = 'foo';
    o.merchantId = 'foo';
    o.merchantProductId = 'foo';
    o.quantity = 'foo';
    o.unitPrice = 42.0;
  }
  buildCounterItem--;
  return o;
}

void checkItem(api.Item o) {
  buildCounterItem++;
  if (buildCounterItem < 3) {
    checkUnnamed21(o.additionalItemParameters!);
    unittest.expect(o.conversionValue!, unittest.equals(42.0));
    checkUnnamed22(o.customVariables!);
    unittest.expect(o.itemId!, unittest.equals('foo'));
    unittest.expect(o.merchantFeedLabel!, unittest.equals('foo'));
    unittest.expect(o.merchantFeedLanguageCode!, unittest.equals('foo'));
    unittest.expect(o.merchantId!, unittest.equals('foo'));
    unittest.expect(o.merchantProductId!, unittest.equals('foo'));
    unittest.expect(o.quantity!, unittest.equals('foo'));
    unittest.expect(o.unitPrice!, unittest.equals(42.0));
  }
  buildCounterItem--;
}

core.List<core.String> buildUnnamed23() => ['foo', 'foo'];

void checkUnnamed23(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterItemCustomVariable = 0;
api.ItemCustomVariable buildItemCustomVariable() {
  final o = api.ItemCustomVariable();
  buildCounterItemCustomVariable++;
  if (buildCounterItemCustomVariable < 3) {
    o.destinationReferences = buildUnnamed23();
    o.value = 'foo';
    o.variable = 'foo';
  }
  buildCounterItemCustomVariable--;
  return o;
}

void checkItemCustomVariable(api.ItemCustomVariable o) {
  buildCounterItemCustomVariable++;
  if (buildCounterItemCustomVariable < 3) {
    checkUnnamed23(o.destinationReferences!);
    unittest.expect(o.value!, unittest.equals('foo'));
    unittest.expect(o.variable!, unittest.equals('foo'));
  }
  buildCounterItemCustomVariable--;
}

core.int buildCounterItemParameter = 0;
api.ItemParameter buildItemParameter() {
  final o = api.ItemParameter();
  buildCounterItemParameter++;
  if (buildCounterItemParameter < 3) {
    o.parameterName = 'foo';
    o.value = 'foo';
  }
  buildCounterItemParameter--;
  return o;
}

void checkItemParameter(api.ItemParameter o) {
  buildCounterItemParameter++;
  if (buildCounterItemParameter < 3) {
    unittest.expect(o.parameterName!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterItemParameter--;
}

core.List<api.UserListDirectLicense> buildUnnamed24() => [
  buildUserListDirectLicense(),
  buildUserListDirectLicense(),
];

void checkUnnamed24(core.List<api.UserListDirectLicense> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserListDirectLicense(o[0]);
  checkUserListDirectLicense(o[1]);
}

core.int buildCounterListUserListDirectLicensesResponse = 0;
api.ListUserListDirectLicensesResponse
buildListUserListDirectLicensesResponse() {
  final o = api.ListUserListDirectLicensesResponse();
  buildCounterListUserListDirectLicensesResponse++;
  if (buildCounterListUserListDirectLicensesResponse < 3) {
    o.nextPageToken = 'foo';
    o.userListDirectLicenses = buildUnnamed24();
  }
  buildCounterListUserListDirectLicensesResponse--;
  return o;
}

void checkListUserListDirectLicensesResponse(
  api.ListUserListDirectLicensesResponse o,
) {
  buildCounterListUserListDirectLicensesResponse++;
  if (buildCounterListUserListDirectLicensesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed24(o.userListDirectLicenses!);
  }
  buildCounterListUserListDirectLicensesResponse--;
}

core.List<api.UserListGlobalLicenseCustomerInfo> buildUnnamed25() => [
  buildUserListGlobalLicenseCustomerInfo(),
  buildUserListGlobalLicenseCustomerInfo(),
];

void checkUnnamed25(core.List<api.UserListGlobalLicenseCustomerInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserListGlobalLicenseCustomerInfo(o[0]);
  checkUserListGlobalLicenseCustomerInfo(o[1]);
}

core.int buildCounterListUserListGlobalLicenseCustomerInfosResponse = 0;
api.ListUserListGlobalLicenseCustomerInfosResponse
buildListUserListGlobalLicenseCustomerInfosResponse() {
  final o = api.ListUserListGlobalLicenseCustomerInfosResponse();
  buildCounterListUserListGlobalLicenseCustomerInfosResponse++;
  if (buildCounterListUserListGlobalLicenseCustomerInfosResponse < 3) {
    o.nextPageToken = 'foo';
    o.userListGlobalLicenseCustomerInfos = buildUnnamed25();
  }
  buildCounterListUserListGlobalLicenseCustomerInfosResponse--;
  return o;
}

void checkListUserListGlobalLicenseCustomerInfosResponse(
  api.ListUserListGlobalLicenseCustomerInfosResponse o,
) {
  buildCounterListUserListGlobalLicenseCustomerInfosResponse++;
  if (buildCounterListUserListGlobalLicenseCustomerInfosResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed25(o.userListGlobalLicenseCustomerInfos!);
  }
  buildCounterListUserListGlobalLicenseCustomerInfosResponse--;
}

core.List<api.UserListGlobalLicense> buildUnnamed26() => [
  buildUserListGlobalLicense(),
  buildUserListGlobalLicense(),
];

void checkUnnamed26(core.List<api.UserListGlobalLicense> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserListGlobalLicense(o[0]);
  checkUserListGlobalLicense(o[1]);
}

core.int buildCounterListUserListGlobalLicensesResponse = 0;
api.ListUserListGlobalLicensesResponse
buildListUserListGlobalLicensesResponse() {
  final o = api.ListUserListGlobalLicensesResponse();
  buildCounterListUserListGlobalLicensesResponse++;
  if (buildCounterListUserListGlobalLicensesResponse < 3) {
    o.nextPageToken = 'foo';
    o.userListGlobalLicenses = buildUnnamed26();
  }
  buildCounterListUserListGlobalLicensesResponse--;
  return o;
}

void checkListUserListGlobalLicensesResponse(
  api.ListUserListGlobalLicensesResponse o,
) {
  buildCounterListUserListGlobalLicensesResponse++;
  if (buildCounterListUserListGlobalLicensesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed26(o.userListGlobalLicenses!);
  }
  buildCounterListUserListGlobalLicensesResponse--;
}

core.List<api.UserList> buildUnnamed27() => [buildUserList(), buildUserList()];

void checkUnnamed27(core.List<api.UserList> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserList(o[0]);
  checkUserList(o[1]);
}

core.int buildCounterListUserListsResponse = 0;
api.ListUserListsResponse buildListUserListsResponse() {
  final o = api.ListUserListsResponse();
  buildCounterListUserListsResponse++;
  if (buildCounterListUserListsResponse < 3) {
    o.nextPageToken = 'foo';
    o.userLists = buildUnnamed27();
  }
  buildCounterListUserListsResponse--;
  return o;
}

void checkListUserListsResponse(api.ListUserListsResponse o) {
  buildCounterListUserListsResponse++;
  if (buildCounterListUserListsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed27(o.userLists!);
  }
  buildCounterListUserListsResponse--;
}

core.List<core.String> buildUnnamed28() => ['foo', 'foo'];

void checkUnnamed28(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.regionCodes = buildUnnamed28();
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    checkUnnamed28(o.regionCodes!);
  }
  buildCounterLocation--;
}

core.List<api.MarketingDataInsightsAttribute> buildUnnamed29() => [
  buildMarketingDataInsightsAttribute(),
  buildMarketingDataInsightsAttribute(),
];

void checkUnnamed29(core.List<api.MarketingDataInsightsAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketingDataInsightsAttribute(o[0]);
  checkMarketingDataInsightsAttribute(o[1]);
}

core.int buildCounterMarketingDataInsight = 0;
api.MarketingDataInsight buildMarketingDataInsight() {
  final o = api.MarketingDataInsight();
  buildCounterMarketingDataInsight++;
  if (buildCounterMarketingDataInsight < 3) {
    o.attributes = buildUnnamed29();
    o.dimension = 'foo';
  }
  buildCounterMarketingDataInsight--;
  return o;
}

void checkMarketingDataInsight(api.MarketingDataInsight o) {
  buildCounterMarketingDataInsight++;
  if (buildCounterMarketingDataInsight < 3) {
    checkUnnamed29(o.attributes!);
    unittest.expect(o.dimension!, unittest.equals('foo'));
  }
  buildCounterMarketingDataInsight--;
}

core.int buildCounterMarketingDataInsightsAttribute = 0;
api.MarketingDataInsightsAttribute buildMarketingDataInsightsAttribute() {
  final o = api.MarketingDataInsightsAttribute();
  buildCounterMarketingDataInsightsAttribute++;
  if (buildCounterMarketingDataInsightsAttribute < 3) {
    o.ageRange = 'foo';
    o.gender = 'foo';
    o.lift = 42.0;
    o.userInterestId = 'foo';
  }
  buildCounterMarketingDataInsightsAttribute--;
  return o;
}

void checkMarketingDataInsightsAttribute(api.MarketingDataInsightsAttribute o) {
  buildCounterMarketingDataInsightsAttribute++;
  if (buildCounterMarketingDataInsightsAttribute < 3) {
    unittest.expect(o.ageRange!, unittest.equals('foo'));
    unittest.expect(o.gender!, unittest.equals('foo'));
    unittest.expect(o.lift!, unittest.equals(42.0));
    unittest.expect(o.userInterestId!, unittest.equals('foo'));
  }
  buildCounterMarketingDataInsightsAttribute--;
}

core.List<core.String> buildUnnamed30() => ['foo', 'foo'];

void checkUnnamed30(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMobileData = 0;
api.MobileData buildMobileData() {
  final o = api.MobileData();
  buildCounterMobileData++;
  if (buildCounterMobileData < 3) {
    o.mobileIds = buildUnnamed30();
  }
  buildCounterMobileData--;
  return o;
}

void checkMobileData(api.MobileData o) {
  buildCounterMobileData++;
  if (buildCounterMobileData < 3) {
    checkUnnamed30(o.mobileIds!);
  }
  buildCounterMobileData--;
}

core.int buildCounterMobileIdInfo = 0;
api.MobileIdInfo buildMobileIdInfo() {
  final o = api.MobileIdInfo();
  buildCounterMobileIdInfo++;
  if (buildCounterMobileIdInfo < 3) {
    o.appId = 'foo';
    o.dataSourceType = 'foo';
    o.keySpace = 'foo';
  }
  buildCounterMobileIdInfo--;
  return o;
}

void checkMobileIdInfo(api.MobileIdInfo o) {
  buildCounterMobileIdInfo++;
  if (buildCounterMobileIdInfo < 3) {
    unittest.expect(o.appId!, unittest.equals('foo'));
    unittest.expect(o.dataSourceType!, unittest.equals('foo'));
    unittest.expect(o.keySpace!, unittest.equals('foo'));
  }
  buildCounterMobileIdInfo--;
}

core.List<core.String> buildUnnamed31() => ['foo', 'foo'];

void checkUnnamed31(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPairData = 0;
api.PairData buildPairData() {
  final o = api.PairData();
  buildCounterPairData++;
  if (buildCounterPairData < 3) {
    o.pairIds = buildUnnamed31();
  }
  buildCounterPairData--;
  return o;
}

void checkPairData(api.PairData o) {
  buildCounterPairData++;
  if (buildCounterPairData < 3) {
    checkUnnamed31(o.pairIds!);
  }
  buildCounterPairData--;
}

core.int buildCounterPairIdInfo = 0;
api.PairIdInfo buildPairIdInfo() {
  final o = api.PairIdInfo();
  buildCounterPairIdInfo++;
  if (buildCounterPairIdInfo < 3) {
    o.advertiserIdentifierCount = 'foo';
    o.cleanRoomIdentifier = 'foo';
    o.matchRatePercentage = 42;
    o.publisherId = 'foo';
    o.publisherName = 'foo';
  }
  buildCounterPairIdInfo--;
  return o;
}

void checkPairIdInfo(api.PairIdInfo o) {
  buildCounterPairIdInfo++;
  if (buildCounterPairIdInfo < 3) {
    unittest.expect(o.advertiserIdentifierCount!, unittest.equals('foo'));
    unittest.expect(o.cleanRoomIdentifier!, unittest.equals('foo'));
    unittest.expect(o.matchRatePercentage!, unittest.equals(42));
    unittest.expect(o.publisherId!, unittest.equals('foo'));
    unittest.expect(o.publisherName!, unittest.equals('foo'));
  }
  buildCounterPairIdInfo--;
}

core.int buildCounterPartnerAudienceInfo = 0;
api.PartnerAudienceInfo buildPartnerAudienceInfo() {
  final o = api.PartnerAudienceInfo();
  buildCounterPartnerAudienceInfo++;
  if (buildCounterPartnerAudienceInfo < 3) {
    o.commercePartner = 'foo';
    o.partnerAudienceSource = 'foo';
  }
  buildCounterPartnerAudienceInfo--;
  return o;
}

void checkPartnerAudienceInfo(api.PartnerAudienceInfo o) {
  buildCounterPartnerAudienceInfo++;
  if (buildCounterPartnerAudienceInfo < 3) {
    unittest.expect(o.commercePartner!, unittest.equals('foo'));
    unittest.expect(o.partnerAudienceSource!, unittest.equals('foo'));
  }
  buildCounterPartnerAudienceInfo--;
}

core.int buildCounterPartnerCustomerAccount = 0;
api.PartnerCustomerAccount buildPartnerCustomerAccount() {
  final o = api.PartnerCustomerAccount();
  buildCounterPartnerCustomerAccount++;
  if (buildCounterPartnerCustomerAccount < 3) {
    o.accountId = 'foo';
    o.accountName = 'foo';
    o.accountType = 'foo';
  }
  buildCounterPartnerCustomerAccount--;
  return o;
}

void checkPartnerCustomerAccount(api.PartnerCustomerAccount o) {
  buildCounterPartnerCustomerAccount++;
  if (buildCounterPartnerCustomerAccount < 3) {
    unittest.expect(o.accountId!, unittest.equals('foo'));
    unittest.expect(o.accountName!, unittest.equals('foo'));
    unittest.expect(o.accountType!, unittest.equals('foo'));
  }
  buildCounterPartnerCustomerAccount--;
}

core.int buildCounterPartnerLink = 0;
api.PartnerLink buildPartnerLink() {
  final o = api.PartnerLink();
  buildCounterPartnerLink++;
  if (buildCounterPartnerLink < 3) {
    o.featureSet = 'foo';
    o.name = 'foo';
    o.owningAccount = buildProductAccount();
    o.partnerAccount = buildProductAccount();
    o.partnerCustomerAccount = buildPartnerCustomerAccount();
    o.partnerLinkId = 'foo';
    o.partnerLinkMetadata = buildPartnerLinkMetadata();
  }
  buildCounterPartnerLink--;
  return o;
}

void checkPartnerLink(api.PartnerLink o) {
  buildCounterPartnerLink++;
  if (buildCounterPartnerLink < 3) {
    unittest.expect(o.featureSet!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkProductAccount(o.owningAccount!);
    checkProductAccount(o.partnerAccount!);
    checkPartnerCustomerAccount(o.partnerCustomerAccount!);
    unittest.expect(o.partnerLinkId!, unittest.equals('foo'));
    checkPartnerLinkMetadata(o.partnerLinkMetadata!);
  }
  buildCounterPartnerLink--;
}

core.List<api.PartnerCustomerAccount> buildUnnamed32() => [
  buildPartnerCustomerAccount(),
  buildPartnerCustomerAccount(),
];

void checkUnnamed32(core.List<api.PartnerCustomerAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPartnerCustomerAccount(o[0]);
  checkPartnerCustomerAccount(o[1]);
}

core.int buildCounterPartnerLinkMetadata = 0;
api.PartnerLinkMetadata buildPartnerLinkMetadata() {
  final o = api.PartnerLinkMetadata();
  buildCounterPartnerLinkMetadata++;
  if (buildCounterPartnerLinkMetadata < 3) {
    o.implicitAccounts = buildUnnamed32();
  }
  buildCounterPartnerLinkMetadata--;
  return o;
}

void checkPartnerLinkMetadata(api.PartnerLinkMetadata o) {
  buildCounterPartnerLinkMetadata++;
  if (buildCounterPartnerLinkMetadata < 3) {
    checkUnnamed32(o.implicitAccounts!);
  }
  buildCounterPartnerLinkMetadata--;
}

core.List<core.String> buildUnnamed33() => ['foo', 'foo'];

void checkUnnamed33(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPartnerProvidedIdData = 0;
api.PartnerProvidedIdData buildPartnerProvidedIdData() {
  final o = api.PartnerProvidedIdData();
  buildCounterPartnerProvidedIdData++;
  if (buildCounterPartnerProvidedIdData < 3) {
    o.partnerProvidedIds = buildUnnamed33();
  }
  buildCounterPartnerProvidedIdData--;
  return o;
}

void checkPartnerProvidedIdData(api.PartnerProvidedIdData o) {
  buildCounterPartnerProvidedIdData++;
  if (buildCounterPartnerProvidedIdData < 3) {
    checkUnnamed33(o.partnerProvidedIds!);
  }
  buildCounterPartnerProvidedIdData--;
}

core.List<core.String> buildUnnamed34() => ['foo', 'foo'];

void checkUnnamed34(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPpidData = 0;
api.PpidData buildPpidData() {
  final o = api.PpidData();
  buildCounterPpidData++;
  if (buildCounterPpidData < 3) {
    o.ppids = buildUnnamed34();
  }
  buildCounterPpidData--;
  return o;
}

void checkPpidData(api.PpidData o) {
  buildCounterPpidData++;
  if (buildCounterPpidData < 3) {
    checkUnnamed34(o.ppids!);
  }
  buildCounterPpidData--;
}

core.int buildCounterProductAccount = 0;
api.ProductAccount buildProductAccount() {
  final o = api.ProductAccount();
  buildCounterProductAccount++;
  if (buildCounterProductAccount < 3) {
    o.accountId = 'foo';
    o.accountType = 'foo';
    o.product = 'foo';
  }
  buildCounterProductAccount--;
  return o;
}

void checkProductAccount(api.ProductAccount o) {
  buildCounterProductAccount++;
  if (buildCounterProductAccount < 3) {
    unittest.expect(o.accountId!, unittest.equals('foo'));
    unittest.expect(o.accountType!, unittest.equals('foo'));
    unittest.expect(o.product!, unittest.equals('foo'));
  }
  buildCounterProductAccount--;
}

core.int buildCounterPseudonymousIdInfo = 0;
api.PseudonymousIdInfo buildPseudonymousIdInfo() {
  final o = api.PseudonymousIdInfo();
  buildCounterPseudonymousIdInfo++;
  if (buildCounterPseudonymousIdInfo < 3) {
    o.billableRecordCount = 'foo';
    o.syncStatus = 'foo';
  }
  buildCounterPseudonymousIdInfo--;
  return o;
}

void checkPseudonymousIdInfo(api.PseudonymousIdInfo o) {
  buildCounterPseudonymousIdInfo++;
  if (buildCounterPseudonymousIdInfo < 3) {
    unittest.expect(o.billableRecordCount!, unittest.equals('foo'));
    unittest.expect(o.syncStatus!, unittest.equals('foo'));
  }
  buildCounterPseudonymousIdInfo--;
}

core.List<api.Destination> buildUnnamed35() => [
  buildDestination(),
  buildDestination(),
];

void checkUnnamed35(core.List<api.Destination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDestination(o[0]);
  checkDestination(o[1]);
}

core.int buildCounterRemoveAllAudienceMembersRequest = 0;
api.RemoveAllAudienceMembersRequest buildRemoveAllAudienceMembersRequest() {
  final o = api.RemoveAllAudienceMembersRequest();
  buildCounterRemoveAllAudienceMembersRequest++;
  if (buildCounterRemoveAllAudienceMembersRequest < 3) {
    o.destinations = buildUnnamed35();
    o.removeAsOfTime = 'foo';
    o.validateOnly = true;
  }
  buildCounterRemoveAllAudienceMembersRequest--;
  return o;
}

void checkRemoveAllAudienceMembersRequest(
  api.RemoveAllAudienceMembersRequest o,
) {
  buildCounterRemoveAllAudienceMembersRequest++;
  if (buildCounterRemoveAllAudienceMembersRequest < 3) {
    checkUnnamed35(o.destinations!);
    unittest.expect(o.removeAsOfTime!, unittest.equals('foo'));
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterRemoveAllAudienceMembersRequest--;
}

core.int buildCounterRemoveAllAudienceMembersResponse = 0;
api.RemoveAllAudienceMembersResponse buildRemoveAllAudienceMembersResponse() {
  final o = api.RemoveAllAudienceMembersResponse();
  buildCounterRemoveAllAudienceMembersResponse++;
  if (buildCounterRemoveAllAudienceMembersResponse < 3) {
    o.requestId = 'foo';
  }
  buildCounterRemoveAllAudienceMembersResponse--;
  return o;
}

void checkRemoveAllAudienceMembersResponse(
  api.RemoveAllAudienceMembersResponse o,
) {
  buildCounterRemoveAllAudienceMembersResponse++;
  if (buildCounterRemoveAllAudienceMembersResponse < 3) {
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterRemoveAllAudienceMembersResponse--;
}

core.int buildCounterRemoveAllAudienceMembersStatus = 0;
api.RemoveAllAudienceMembersStatus buildRemoveAllAudienceMembersStatus() {
  final o = api.RemoveAllAudienceMembersStatus();
  buildCounterRemoveAllAudienceMembersStatus++;
  if (buildCounterRemoveAllAudienceMembersStatus < 3) {}
  buildCounterRemoveAllAudienceMembersStatus--;
  return o;
}

void checkRemoveAllAudienceMembersStatus(api.RemoveAllAudienceMembersStatus o) {
  buildCounterRemoveAllAudienceMembersStatus++;
  if (buildCounterRemoveAllAudienceMembersStatus < 3) {}
  buildCounterRemoveAllAudienceMembersStatus--;
}

core.List<api.AudienceMember> buildUnnamed36() => [
  buildAudienceMember(),
  buildAudienceMember(),
];

void checkUnnamed36(core.List<api.AudienceMember> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAudienceMember(o[0]);
  checkAudienceMember(o[1]);
}

core.List<api.Destination> buildUnnamed37() => [
  buildDestination(),
  buildDestination(),
];

void checkUnnamed37(core.List<api.Destination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDestination(o[0]);
  checkDestination(o[1]);
}

core.int buildCounterRemoveAudienceMembersRequest = 0;
api.RemoveAudienceMembersRequest buildRemoveAudienceMembersRequest() {
  final o = api.RemoveAudienceMembersRequest();
  buildCounterRemoveAudienceMembersRequest++;
  if (buildCounterRemoveAudienceMembersRequest < 3) {
    o.audienceMembers = buildUnnamed36();
    o.destinations = buildUnnamed37();
    o.encoding = 'foo';
    o.encryptionInfo = buildEncryptionInfo();
    o.validateOnly = true;
  }
  buildCounterRemoveAudienceMembersRequest--;
  return o;
}

void checkRemoveAudienceMembersRequest(api.RemoveAudienceMembersRequest o) {
  buildCounterRemoveAudienceMembersRequest++;
  if (buildCounterRemoveAudienceMembersRequest < 3) {
    checkUnnamed36(o.audienceMembers!);
    checkUnnamed37(o.destinations!);
    unittest.expect(o.encoding!, unittest.equals('foo'));
    checkEncryptionInfo(o.encryptionInfo!);
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterRemoveAudienceMembersRequest--;
}

core.int buildCounterRemoveAudienceMembersResponse = 0;
api.RemoveAudienceMembersResponse buildRemoveAudienceMembersResponse() {
  final o = api.RemoveAudienceMembersResponse();
  buildCounterRemoveAudienceMembersResponse++;
  if (buildCounterRemoveAudienceMembersResponse < 3) {
    o.requestId = 'foo';
  }
  buildCounterRemoveAudienceMembersResponse--;
  return o;
}

void checkRemoveAudienceMembersResponse(api.RemoveAudienceMembersResponse o) {
  buildCounterRemoveAudienceMembersResponse++;
  if (buildCounterRemoveAudienceMembersResponse < 3) {
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterRemoveAudienceMembersResponse--;
}

core.int buildCounterRemoveAudienceMembersStatus = 0;
api.RemoveAudienceMembersStatus buildRemoveAudienceMembersStatus() {
  final o = api.RemoveAudienceMembersStatus();
  buildCounterRemoveAudienceMembersStatus++;
  if (buildCounterRemoveAudienceMembersStatus < 3) {
    o.compositeDataRemovalStatus = buildRemoveCompositeDataStatus();
    o.googleUserIdDataRemovalStatus = buildRemoveGoogleUserIdDataStatus();
    o.mobileDataRemovalStatus = buildRemoveMobileDataStatus();
    o.pairDataRemovalStatus = buildRemovePairDataStatus();
    o.partnerProvidedIdDataRemovalStatus =
        buildRemovePartnerProvidedIdDataStatus();
    o.ppidDataRemovalStatus = buildRemovePpidDataStatus();
    o.userDataRemovalStatus = buildRemoveUserDataStatus();
    o.userIdDataRemovalStatus = buildRemoveUserIdDataStatus();
  }
  buildCounterRemoveAudienceMembersStatus--;
  return o;
}

void checkRemoveAudienceMembersStatus(api.RemoveAudienceMembersStatus o) {
  buildCounterRemoveAudienceMembersStatus++;
  if (buildCounterRemoveAudienceMembersStatus < 3) {
    checkRemoveCompositeDataStatus(o.compositeDataRemovalStatus!);
    checkRemoveGoogleUserIdDataStatus(o.googleUserIdDataRemovalStatus!);
    checkRemoveMobileDataStatus(o.mobileDataRemovalStatus!);
    checkRemovePairDataStatus(o.pairDataRemovalStatus!);
    checkRemovePartnerProvidedIdDataStatus(
      o.partnerProvidedIdDataRemovalStatus!,
    );
    checkRemovePpidDataStatus(o.ppidDataRemovalStatus!);
    checkRemoveUserDataStatus(o.userDataRemovalStatus!);
    checkRemoveUserIdDataStatus(o.userIdDataRemovalStatus!);
  }
  buildCounterRemoveAudienceMembersStatus--;
}

core.List<api.DataTypeCount> buildUnnamed38() => [
  buildDataTypeCount(),
  buildDataTypeCount(),
];

void checkUnnamed38(core.List<api.DataTypeCount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataTypeCount(o[0]);
  checkDataTypeCount(o[1]);
}

core.int buildCounterRemoveCompositeDataStatus = 0;
api.RemoveCompositeDataStatus buildRemoveCompositeDataStatus() {
  final o = api.RemoveCompositeDataStatus();
  buildCounterRemoveCompositeDataStatus++;
  if (buildCounterRemoveCompositeDataStatus < 3) {
    o.dataTypeCounts = buildUnnamed38();
    o.recordCount = 'foo';
  }
  buildCounterRemoveCompositeDataStatus--;
  return o;
}

void checkRemoveCompositeDataStatus(api.RemoveCompositeDataStatus o) {
  buildCounterRemoveCompositeDataStatus++;
  if (buildCounterRemoveCompositeDataStatus < 3) {
    checkUnnamed38(o.dataTypeCounts!);
    unittest.expect(o.recordCount!, unittest.equals('foo'));
  }
  buildCounterRemoveCompositeDataStatus--;
}

core.int buildCounterRemoveGoogleUserIdDataStatus = 0;
api.RemoveGoogleUserIdDataStatus buildRemoveGoogleUserIdDataStatus() {
  final o = api.RemoveGoogleUserIdDataStatus();
  buildCounterRemoveGoogleUserIdDataStatus++;
  if (buildCounterRemoveGoogleUserIdDataStatus < 3) {
    o.googleUserIdCount = 'foo';
    o.recordCount = 'foo';
  }
  buildCounterRemoveGoogleUserIdDataStatus--;
  return o;
}

void checkRemoveGoogleUserIdDataStatus(api.RemoveGoogleUserIdDataStatus o) {
  buildCounterRemoveGoogleUserIdDataStatus++;
  if (buildCounterRemoveGoogleUserIdDataStatus < 3) {
    unittest.expect(o.googleUserIdCount!, unittest.equals('foo'));
    unittest.expect(o.recordCount!, unittest.equals('foo'));
  }
  buildCounterRemoveGoogleUserIdDataStatus--;
}

core.int buildCounterRemoveMobileDataStatus = 0;
api.RemoveMobileDataStatus buildRemoveMobileDataStatus() {
  final o = api.RemoveMobileDataStatus();
  buildCounterRemoveMobileDataStatus++;
  if (buildCounterRemoveMobileDataStatus < 3) {
    o.mobileIdCount = 'foo';
    o.recordCount = 'foo';
  }
  buildCounterRemoveMobileDataStatus--;
  return o;
}

void checkRemoveMobileDataStatus(api.RemoveMobileDataStatus o) {
  buildCounterRemoveMobileDataStatus++;
  if (buildCounterRemoveMobileDataStatus < 3) {
    unittest.expect(o.mobileIdCount!, unittest.equals('foo'));
    unittest.expect(o.recordCount!, unittest.equals('foo'));
  }
  buildCounterRemoveMobileDataStatus--;
}

core.int buildCounterRemovePairDataStatus = 0;
api.RemovePairDataStatus buildRemovePairDataStatus() {
  final o = api.RemovePairDataStatus();
  buildCounterRemovePairDataStatus++;
  if (buildCounterRemovePairDataStatus < 3) {
    o.pairIdCount = 'foo';
    o.recordCount = 'foo';
  }
  buildCounterRemovePairDataStatus--;
  return o;
}

void checkRemovePairDataStatus(api.RemovePairDataStatus o) {
  buildCounterRemovePairDataStatus++;
  if (buildCounterRemovePairDataStatus < 3) {
    unittest.expect(o.pairIdCount!, unittest.equals('foo'));
    unittest.expect(o.recordCount!, unittest.equals('foo'));
  }
  buildCounterRemovePairDataStatus--;
}

core.int buildCounterRemovePartnerProvidedIdDataStatus = 0;
api.RemovePartnerProvidedIdDataStatus buildRemovePartnerProvidedIdDataStatus() {
  final o = api.RemovePartnerProvidedIdDataStatus();
  buildCounterRemovePartnerProvidedIdDataStatus++;
  if (buildCounterRemovePartnerProvidedIdDataStatus < 3) {
    o.partnerProvidedIdCount = 'foo';
    o.recordCount = 'foo';
  }
  buildCounterRemovePartnerProvidedIdDataStatus--;
  return o;
}

void checkRemovePartnerProvidedIdDataStatus(
  api.RemovePartnerProvidedIdDataStatus o,
) {
  buildCounterRemovePartnerProvidedIdDataStatus++;
  if (buildCounterRemovePartnerProvidedIdDataStatus < 3) {
    unittest.expect(o.partnerProvidedIdCount!, unittest.equals('foo'));
    unittest.expect(o.recordCount!, unittest.equals('foo'));
  }
  buildCounterRemovePartnerProvidedIdDataStatus--;
}

core.int buildCounterRemovePpidDataStatus = 0;
api.RemovePpidDataStatus buildRemovePpidDataStatus() {
  final o = api.RemovePpidDataStatus();
  buildCounterRemovePpidDataStatus++;
  if (buildCounterRemovePpidDataStatus < 3) {
    o.ppidCount = 'foo';
    o.recordCount = 'foo';
  }
  buildCounterRemovePpidDataStatus--;
  return o;
}

void checkRemovePpidDataStatus(api.RemovePpidDataStatus o) {
  buildCounterRemovePpidDataStatus++;
  if (buildCounterRemovePpidDataStatus < 3) {
    unittest.expect(o.ppidCount!, unittest.equals('foo'));
    unittest.expect(o.recordCount!, unittest.equals('foo'));
  }
  buildCounterRemovePpidDataStatus--;
}

core.int buildCounterRemoveUserDataStatus = 0;
api.RemoveUserDataStatus buildRemoveUserDataStatus() {
  final o = api.RemoveUserDataStatus();
  buildCounterRemoveUserDataStatus++;
  if (buildCounterRemoveUserDataStatus < 3) {
    o.recordCount = 'foo';
    o.userIdentifierCount = 'foo';
  }
  buildCounterRemoveUserDataStatus--;
  return o;
}

void checkRemoveUserDataStatus(api.RemoveUserDataStatus o) {
  buildCounterRemoveUserDataStatus++;
  if (buildCounterRemoveUserDataStatus < 3) {
    unittest.expect(o.recordCount!, unittest.equals('foo'));
    unittest.expect(o.userIdentifierCount!, unittest.equals('foo'));
  }
  buildCounterRemoveUserDataStatus--;
}

core.int buildCounterRemoveUserIdDataStatus = 0;
api.RemoveUserIdDataStatus buildRemoveUserIdDataStatus() {
  final o = api.RemoveUserIdDataStatus();
  buildCounterRemoveUserIdDataStatus++;
  if (buildCounterRemoveUserIdDataStatus < 3) {
    o.recordCount = 'foo';
    o.userIdCount = 'foo';
  }
  buildCounterRemoveUserIdDataStatus--;
  return o;
}

void checkRemoveUserIdDataStatus(api.RemoveUserIdDataStatus o) {
  buildCounterRemoveUserIdDataStatus++;
  if (buildCounterRemoveUserIdDataStatus < 3) {
    unittest.expect(o.recordCount!, unittest.equals('foo'));
    unittest.expect(o.userIdCount!, unittest.equals('foo'));
  }
  buildCounterRemoveUserIdDataStatus--;
}

core.int buildCounterRequestStatusPerDestination = 0;
api.RequestStatusPerDestination buildRequestStatusPerDestination() {
  final o = api.RequestStatusPerDestination();
  buildCounterRequestStatusPerDestination++;
  if (buildCounterRequestStatusPerDestination < 3) {
    o.audienceMembersIngestionStatus = buildIngestAudienceMembersStatus();
    o.audienceMembersRemovalStatus = buildRemoveAudienceMembersStatus();
    o.destination = buildDestination();
    o.errorInfo = buildErrorInfo();
    o.eventsIngestionStatus = buildIngestEventsStatus();
    o.removeAllAudienceMembersStatus = buildRemoveAllAudienceMembersStatus();
    o.requestStatus = 'foo';
    o.warningInfo = buildWarningInfo();
  }
  buildCounterRequestStatusPerDestination--;
  return o;
}

void checkRequestStatusPerDestination(api.RequestStatusPerDestination o) {
  buildCounterRequestStatusPerDestination++;
  if (buildCounterRequestStatusPerDestination < 3) {
    checkIngestAudienceMembersStatus(o.audienceMembersIngestionStatus!);
    checkRemoveAudienceMembersStatus(o.audienceMembersRemovalStatus!);
    checkDestination(o.destination!);
    checkErrorInfo(o.errorInfo!);
    checkIngestEventsStatus(o.eventsIngestionStatus!);
    checkRemoveAllAudienceMembersStatus(o.removeAllAudienceMembersStatus!);
    unittest.expect(o.requestStatus!, unittest.equals('foo'));
    checkWarningInfo(o.warningInfo!);
  }
  buildCounterRequestStatusPerDestination--;
}

core.int buildCounterRetrieveInsightsRequest = 0;
api.RetrieveInsightsRequest buildRetrieveInsightsRequest() {
  final o = api.RetrieveInsightsRequest();
  buildCounterRetrieveInsightsRequest++;
  if (buildCounterRetrieveInsightsRequest < 3) {
    o.baseline = buildBaseline();
    o.userListId = 'foo';
  }
  buildCounterRetrieveInsightsRequest--;
  return o;
}

void checkRetrieveInsightsRequest(api.RetrieveInsightsRequest o) {
  buildCounterRetrieveInsightsRequest++;
  if (buildCounterRetrieveInsightsRequest < 3) {
    checkBaseline(o.baseline!);
    unittest.expect(o.userListId!, unittest.equals('foo'));
  }
  buildCounterRetrieveInsightsRequest--;
}

core.List<api.MarketingDataInsight> buildUnnamed39() => [
  buildMarketingDataInsight(),
  buildMarketingDataInsight(),
];

void checkUnnamed39(core.List<api.MarketingDataInsight> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMarketingDataInsight(o[0]);
  checkMarketingDataInsight(o[1]);
}

core.int buildCounterRetrieveInsightsResponse = 0;
api.RetrieveInsightsResponse buildRetrieveInsightsResponse() {
  final o = api.RetrieveInsightsResponse();
  buildCounterRetrieveInsightsResponse++;
  if (buildCounterRetrieveInsightsResponse < 3) {
    o.marketingDataInsights = buildUnnamed39();
  }
  buildCounterRetrieveInsightsResponse--;
  return o;
}

void checkRetrieveInsightsResponse(api.RetrieveInsightsResponse o) {
  buildCounterRetrieveInsightsResponse++;
  if (buildCounterRetrieveInsightsResponse < 3) {
    checkUnnamed39(o.marketingDataInsights!);
  }
  buildCounterRetrieveInsightsResponse--;
}

core.List<api.RequestStatusPerDestination> buildUnnamed40() => [
  buildRequestStatusPerDestination(),
  buildRequestStatusPerDestination(),
];

void checkUnnamed40(core.List<api.RequestStatusPerDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRequestStatusPerDestination(o[0]);
  checkRequestStatusPerDestination(o[1]);
}

core.int buildCounterRetrieveRequestStatusResponse = 0;
api.RetrieveRequestStatusResponse buildRetrieveRequestStatusResponse() {
  final o = api.RetrieveRequestStatusResponse();
  buildCounterRetrieveRequestStatusResponse++;
  if (buildCounterRetrieveRequestStatusResponse < 3) {
    o.requestStatusPerDestination = buildUnnamed40();
  }
  buildCounterRetrieveRequestStatusResponse--;
  return o;
}

void checkRetrieveRequestStatusResponse(api.RetrieveRequestStatusResponse o) {
  buildCounterRetrieveRequestStatusResponse++;
  if (buildCounterRetrieveRequestStatusResponse < 3) {
    checkUnnamed40(o.requestStatusPerDestination!);
  }
  buildCounterRetrieveRequestStatusResponse--;
}

core.List<api.PartnerLink> buildUnnamed41() => [
  buildPartnerLink(),
  buildPartnerLink(),
];

void checkUnnamed41(core.List<api.PartnerLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPartnerLink(o[0]);
  checkPartnerLink(o[1]);
}

core.int buildCounterSearchPartnerLinksResponse = 0;
api.SearchPartnerLinksResponse buildSearchPartnerLinksResponse() {
  final o = api.SearchPartnerLinksResponse();
  buildCounterSearchPartnerLinksResponse++;
  if (buildCounterSearchPartnerLinksResponse < 3) {
    o.nextPageToken = 'foo';
    o.partnerLinks = buildUnnamed41();
  }
  buildCounterSearchPartnerLinksResponse--;
  return o;
}

void checkSearchPartnerLinksResponse(api.SearchPartnerLinksResponse o) {
  buildCounterSearchPartnerLinksResponse++;
  if (buildCounterSearchPartnerLinksResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed41(o.partnerLinks!);
  }
  buildCounterSearchPartnerLinksResponse--;
}

core.int buildCounterSizeInfo = 0;
api.SizeInfo buildSizeInfo() {
  final o = api.SizeInfo();
  buildCounterSizeInfo++;
  if (buildCounterSizeInfo < 3) {
    o.displayNetworkMembersCount = 'foo';
    o.gmailMembersCount = 'foo';
    o.searchNetworkMembersCount = 'foo';
    o.youtubeMembersCount = 'foo';
  }
  buildCounterSizeInfo--;
  return o;
}

void checkSizeInfo(api.SizeInfo o) {
  buildCounterSizeInfo++;
  if (buildCounterSizeInfo < 3) {
    unittest.expect(o.displayNetworkMembersCount!, unittest.equals('foo'));
    unittest.expect(o.gmailMembersCount!, unittest.equals('foo'));
    unittest.expect(o.searchNetworkMembersCount!, unittest.equals('foo'));
    unittest.expect(o.youtubeMembersCount!, unittest.equals('foo'));
  }
  buildCounterSizeInfo--;
}

core.int buildCounterTargetNetworkInfo = 0;
api.TargetNetworkInfo buildTargetNetworkInfo() {
  final o = api.TargetNetworkInfo();
  buildCounterTargetNetworkInfo++;
  if (buildCounterTargetNetworkInfo < 3) {
    o.eligibleForDisplay = true;
    o.eligibleForSearch = true;
  }
  buildCounterTargetNetworkInfo--;
  return o;
}

void checkTargetNetworkInfo(api.TargetNetworkInfo o) {
  buildCounterTargetNetworkInfo++;
  if (buildCounterTargetNetworkInfo < 3) {
    unittest.expect(o.eligibleForDisplay!, unittest.isTrue);
    unittest.expect(o.eligibleForSearch!, unittest.isTrue);
  }
  buildCounterTargetNetworkInfo--;
}

core.int buildCounterTermsOfService = 0;
api.TermsOfService buildTermsOfService() {
  final o = api.TermsOfService();
  buildCounterTermsOfService++;
  if (buildCounterTermsOfService < 3) {
    o.customerMatchTermsOfServiceStatus = 'foo';
  }
  buildCounterTermsOfService--;
  return o;
}

void checkTermsOfService(api.TermsOfService o) {
  buildCounterTermsOfService++;
  if (buildCounterTermsOfService < 3) {
    unittest.expect(
      o.customerMatchTermsOfServiceStatus!,
      unittest.equals('foo'),
    );
  }
  buildCounterTermsOfService--;
}

core.List<api.UserIdentifier> buildUnnamed42() => [
  buildUserIdentifier(),
  buildUserIdentifier(),
];

void checkUnnamed42(core.List<api.UserIdentifier> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserIdentifier(o[0]);
  checkUserIdentifier(o[1]);
}

core.int buildCounterUserData = 0;
api.UserData buildUserData() {
  final o = api.UserData();
  buildCounterUserData++;
  if (buildCounterUserData < 3) {
    o.userIdentifiers = buildUnnamed42();
  }
  buildCounterUserData--;
  return o;
}

void checkUserData(api.UserData o) {
  buildCounterUserData++;
  if (buildCounterUserData < 3) {
    checkUnnamed42(o.userIdentifiers!);
  }
  buildCounterUserData--;
}

core.int buildCounterUserIdData = 0;
api.UserIdData buildUserIdData() {
  final o = api.UserIdData();
  buildCounterUserIdData++;
  if (buildCounterUserIdData < 3) {
    o.userId = 'foo';
  }
  buildCounterUserIdData--;
  return o;
}

void checkUserIdData(api.UserIdData o) {
  buildCounterUserIdData++;
  if (buildCounterUserIdData < 3) {
    unittest.expect(o.userId!, unittest.equals('foo'));
  }
  buildCounterUserIdData--;
}

core.int buildCounterUserIdInfo = 0;
api.UserIdInfo buildUserIdInfo() {
  final o = api.UserIdInfo();
  buildCounterUserIdInfo++;
  if (buildCounterUserIdInfo < 3) {
    o.dataSourceType = 'foo';
  }
  buildCounterUserIdInfo--;
  return o;
}

void checkUserIdInfo(api.UserIdInfo o) {
  buildCounterUserIdInfo++;
  if (buildCounterUserIdInfo < 3) {
    unittest.expect(o.dataSourceType!, unittest.equals('foo'));
  }
  buildCounterUserIdInfo--;
}

core.int buildCounterUserIdentifier = 0;
api.UserIdentifier buildUserIdentifier() {
  final o = api.UserIdentifier();
  buildCounterUserIdentifier++;
  if (buildCounterUserIdentifier < 3) {
    o.address = buildAddressInfo();
    o.emailAddress = 'foo';
    o.phoneNumber = 'foo';
  }
  buildCounterUserIdentifier--;
  return o;
}

void checkUserIdentifier(api.UserIdentifier o) {
  buildCounterUserIdentifier++;
  if (buildCounterUserIdentifier < 3) {
    checkAddressInfo(o.address!);
    unittest.expect(o.emailAddress!, unittest.equals('foo'));
    unittest.expect(o.phoneNumber!, unittest.equals('foo'));
  }
  buildCounterUserIdentifier--;
}

core.int buildCounterUserList = 0;
api.UserList buildUserList() {
  final o = api.UserList();
  buildCounterUserList++;
  if (buildCounterUserList < 3) {
    o.accessReason = 'foo';
    o.accountAccessStatus = 'foo';
    o.closingReason = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.id = 'foo';
    o.ingestedUserListInfo = buildIngestedUserListInfo();
    o.integrationCode = 'foo';
    o.membershipDuration = 'foo';
    o.membershipStatus = 'foo';
    o.name = 'foo';
    o.readOnly = true;
    o.sizeInfo = buildSizeInfo();
    o.targetNetworkInfo = buildTargetNetworkInfo();
  }
  buildCounterUserList--;
  return o;
}

void checkUserList(api.UserList o) {
  buildCounterUserList++;
  if (buildCounterUserList < 3) {
    unittest.expect(o.accessReason!, unittest.equals('foo'));
    unittest.expect(o.accountAccessStatus!, unittest.equals('foo'));
    unittest.expect(o.closingReason!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    checkIngestedUserListInfo(o.ingestedUserListInfo!);
    unittest.expect(o.integrationCode!, unittest.equals('foo'));
    unittest.expect(o.membershipDuration!, unittest.equals('foo'));
    unittest.expect(o.membershipStatus!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.readOnly!, unittest.isTrue);
    checkSizeInfo(o.sizeInfo!);
    checkTargetNetworkInfo(o.targetNetworkInfo!);
  }
  buildCounterUserList--;
}

core.List<api.UserListLicensePricing> buildUnnamed43() => [
  buildUserListLicensePricing(),
  buildUserListLicensePricing(),
];

void checkUnnamed43(core.List<api.UserListLicensePricing> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserListLicensePricing(o[0]);
  checkUserListLicensePricing(o[1]);
}

core.int buildCounterUserListDirectLicense = 0;
api.UserListDirectLicense buildUserListDirectLicense() {
  final o = api.UserListDirectLicense();
  buildCounterUserListDirectLicense++;
  if (buildCounterUserListDirectLicense < 3) {
    o.clientAccountDisplayName = 'foo';
    o.clientAccountId = 'foo';
    o.clientAccountType = 'foo';
    o.historicalPricings = buildUnnamed43();
    o.metrics = buildUserListLicenseMetrics();
    o.name = 'foo';
    o.pricing = buildUserListLicensePricing();
    o.status = 'foo';
    o.userListDisplayName = 'foo';
    o.userListId = 'foo';
  }
  buildCounterUserListDirectLicense--;
  return o;
}

void checkUserListDirectLicense(api.UserListDirectLicense o) {
  buildCounterUserListDirectLicense++;
  if (buildCounterUserListDirectLicense < 3) {
    unittest.expect(o.clientAccountDisplayName!, unittest.equals('foo'));
    unittest.expect(o.clientAccountId!, unittest.equals('foo'));
    unittest.expect(o.clientAccountType!, unittest.equals('foo'));
    checkUnnamed43(o.historicalPricings!);
    checkUserListLicenseMetrics(o.metrics!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUserListLicensePricing(o.pricing!);
    unittest.expect(o.status!, unittest.equals('foo'));
    unittest.expect(o.userListDisplayName!, unittest.equals('foo'));
    unittest.expect(o.userListId!, unittest.equals('foo'));
  }
  buildCounterUserListDirectLicense--;
}

core.List<api.UserListLicensePricing> buildUnnamed44() => [
  buildUserListLicensePricing(),
  buildUserListLicensePricing(),
];

void checkUnnamed44(core.List<api.UserListLicensePricing> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserListLicensePricing(o[0]);
  checkUserListLicensePricing(o[1]);
}

core.int buildCounterUserListGlobalLicense = 0;
api.UserListGlobalLicense buildUserListGlobalLicense() {
  final o = api.UserListGlobalLicense();
  buildCounterUserListGlobalLicense++;
  if (buildCounterUserListGlobalLicense < 3) {
    o.historicalPricings = buildUnnamed44();
    o.licenseType = 'foo';
    o.metrics = buildUserListLicenseMetrics();
    o.name = 'foo';
    o.pricing = buildUserListLicensePricing();
    o.status = 'foo';
    o.userListDisplayName = 'foo';
    o.userListId = 'foo';
  }
  buildCounterUserListGlobalLicense--;
  return o;
}

void checkUserListGlobalLicense(api.UserListGlobalLicense o) {
  buildCounterUserListGlobalLicense++;
  if (buildCounterUserListGlobalLicense < 3) {
    checkUnnamed44(o.historicalPricings!);
    unittest.expect(o.licenseType!, unittest.equals('foo'));
    checkUserListLicenseMetrics(o.metrics!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUserListLicensePricing(o.pricing!);
    unittest.expect(o.status!, unittest.equals('foo'));
    unittest.expect(o.userListDisplayName!, unittest.equals('foo'));
    unittest.expect(o.userListId!, unittest.equals('foo'));
  }
  buildCounterUserListGlobalLicense--;
}

core.List<api.UserListLicensePricing> buildUnnamed45() => [
  buildUserListLicensePricing(),
  buildUserListLicensePricing(),
];

void checkUnnamed45(core.List<api.UserListLicensePricing> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserListLicensePricing(o[0]);
  checkUserListLicensePricing(o[1]);
}

core.int buildCounterUserListGlobalLicenseCustomerInfo = 0;
api.UserListGlobalLicenseCustomerInfo buildUserListGlobalLicenseCustomerInfo() {
  final o = api.UserListGlobalLicenseCustomerInfo();
  buildCounterUserListGlobalLicenseCustomerInfo++;
  if (buildCounterUserListGlobalLicenseCustomerInfo < 3) {
    o.clientAccountDisplayName = 'foo';
    o.clientAccountId = 'foo';
    o.clientAccountType = 'foo';
    o.historicalPricings = buildUnnamed45();
    o.licenseType = 'foo';
    o.metrics = buildUserListLicenseMetrics();
    o.name = 'foo';
    o.pricing = buildUserListLicensePricing();
    o.status = 'foo';
    o.userListDisplayName = 'foo';
    o.userListId = 'foo';
  }
  buildCounterUserListGlobalLicenseCustomerInfo--;
  return o;
}

void checkUserListGlobalLicenseCustomerInfo(
  api.UserListGlobalLicenseCustomerInfo o,
) {
  buildCounterUserListGlobalLicenseCustomerInfo++;
  if (buildCounterUserListGlobalLicenseCustomerInfo < 3) {
    unittest.expect(o.clientAccountDisplayName!, unittest.equals('foo'));
    unittest.expect(o.clientAccountId!, unittest.equals('foo'));
    unittest.expect(o.clientAccountType!, unittest.equals('foo'));
    checkUnnamed45(o.historicalPricings!);
    unittest.expect(o.licenseType!, unittest.equals('foo'));
    checkUserListLicenseMetrics(o.metrics!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUserListLicensePricing(o.pricing!);
    unittest.expect(o.status!, unittest.equals('foo'));
    unittest.expect(o.userListDisplayName!, unittest.equals('foo'));
    unittest.expect(o.userListId!, unittest.equals('foo'));
  }
  buildCounterUserListGlobalLicenseCustomerInfo--;
}

core.int buildCounterUserListLicenseMetrics = 0;
api.UserListLicenseMetrics buildUserListLicenseMetrics() {
  final o = api.UserListLicenseMetrics();
  buildCounterUserListLicenseMetrics++;
  if (buildCounterUserListLicenseMetrics < 3) {
    o.clickCount = 'foo';
    o.endDate = 'foo';
    o.impressionCount = 'foo';
    o.revenueUsdMicros = 'foo';
    o.startDate = 'foo';
  }
  buildCounterUserListLicenseMetrics--;
  return o;
}

void checkUserListLicenseMetrics(api.UserListLicenseMetrics o) {
  buildCounterUserListLicenseMetrics++;
  if (buildCounterUserListLicenseMetrics < 3) {
    unittest.expect(o.clickCount!, unittest.equals('foo'));
    unittest.expect(o.endDate!, unittest.equals('foo'));
    unittest.expect(o.impressionCount!, unittest.equals('foo'));
    unittest.expect(o.revenueUsdMicros!, unittest.equals('foo'));
    unittest.expect(o.startDate!, unittest.equals('foo'));
  }
  buildCounterUserListLicenseMetrics--;
}

core.int buildCounterUserListLicensePricing = 0;
api.UserListLicensePricing buildUserListLicensePricing() {
  final o = api.UserListLicensePricing();
  buildCounterUserListLicensePricing++;
  if (buildCounterUserListLicensePricing < 3) {
    o.buyerApprovalState = 'foo';
    o.costMicros = 'foo';
    o.costType = 'foo';
    o.currencyCode = 'foo';
    o.endTime = 'foo';
    o.maxCostMicros = 'foo';
    o.pricingActive = true;
    o.pricingId = 'foo';
    o.startTime = 'foo';
  }
  buildCounterUserListLicensePricing--;
  return o;
}

void checkUserListLicensePricing(api.UserListLicensePricing o) {
  buildCounterUserListLicensePricing++;
  if (buildCounterUserListLicensePricing < 3) {
    unittest.expect(o.buyerApprovalState!, unittest.equals('foo'));
    unittest.expect(o.costMicros!, unittest.equals('foo'));
    unittest.expect(o.costType!, unittest.equals('foo'));
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.maxCostMicros!, unittest.equals('foo'));
    unittest.expect(o.pricingActive!, unittest.isTrue);
    unittest.expect(o.pricingId!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
  }
  buildCounterUserListLicensePricing--;
}

core.List<api.UserProperty> buildUnnamed46() => [
  buildUserProperty(),
  buildUserProperty(),
];

void checkUnnamed46(core.List<api.UserProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserProperty(o[0]);
  checkUserProperty(o[1]);
}

core.int buildCounterUserProperties = 0;
api.UserProperties buildUserProperties() {
  final o = api.UserProperties();
  buildCounterUserProperties++;
  if (buildCounterUserProperties < 3) {
    o.additionalUserProperties = buildUnnamed46();
    o.customerType = 'foo';
    o.customerValueBucket = 'foo';
  }
  buildCounterUserProperties--;
  return o;
}

void checkUserProperties(api.UserProperties o) {
  buildCounterUserProperties++;
  if (buildCounterUserProperties < 3) {
    checkUnnamed46(o.additionalUserProperties!);
    unittest.expect(o.customerType!, unittest.equals('foo'));
    unittest.expect(o.customerValueBucket!, unittest.equals('foo'));
  }
  buildCounterUserProperties--;
}

core.int buildCounterUserProperty = 0;
api.UserProperty buildUserProperty() {
  final o = api.UserProperty();
  buildCounterUserProperty++;
  if (buildCounterUserProperty < 3) {
    o.propertyName = 'foo';
    o.value = 'foo';
  }
  buildCounterUserProperty--;
  return o;
}

void checkUserProperty(api.UserProperty o) {
  buildCounterUserProperty++;
  if (buildCounterUserProperty < 3) {
    unittest.expect(o.propertyName!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterUserProperty--;
}

core.int buildCounterViewabilityInfo = 0;
api.ViewabilityInfo buildViewabilityInfo() {
  final o = api.ViewabilityInfo();
  buildCounterViewabilityInfo++;
  if (buildCounterViewabilityInfo < 3) {
    o.mediaDuration = 'foo';
    o.mediaQuartile = 'foo';
    o.mediaSkippable = true;
    o.mediaVolumePercent = 42;
    o.playbackDuration = 'foo';
    o.viewType = 'foo';
    o.viewableDuration = 'foo';
    o.viewablePercent = 42;
  }
  buildCounterViewabilityInfo--;
  return o;
}

void checkViewabilityInfo(api.ViewabilityInfo o) {
  buildCounterViewabilityInfo++;
  if (buildCounterViewabilityInfo < 3) {
    unittest.expect(o.mediaDuration!, unittest.equals('foo'));
    unittest.expect(o.mediaQuartile!, unittest.equals('foo'));
    unittest.expect(o.mediaSkippable!, unittest.isTrue);
    unittest.expect(o.mediaVolumePercent!, unittest.equals(42));
    unittest.expect(o.playbackDuration!, unittest.equals('foo'));
    unittest.expect(o.viewType!, unittest.equals('foo'));
    unittest.expect(o.viewableDuration!, unittest.equals('foo'));
    unittest.expect(o.viewablePercent!, unittest.equals(42));
  }
  buildCounterViewabilityInfo--;
}

core.int buildCounterWarningCount = 0;
api.WarningCount buildWarningCount() {
  final o = api.WarningCount();
  buildCounterWarningCount++;
  if (buildCounterWarningCount < 3) {
    o.reason = 'foo';
    o.recordCount = 'foo';
  }
  buildCounterWarningCount--;
  return o;
}

void checkWarningCount(api.WarningCount o) {
  buildCounterWarningCount++;
  if (buildCounterWarningCount < 3) {
    unittest.expect(o.reason!, unittest.equals('foo'));
    unittest.expect(o.recordCount!, unittest.equals('foo'));
  }
  buildCounterWarningCount--;
}

core.List<api.WarningCount> buildUnnamed47() => [
  buildWarningCount(),
  buildWarningCount(),
];

void checkUnnamed47(core.List<api.WarningCount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWarningCount(o[0]);
  checkWarningCount(o[1]);
}

core.int buildCounterWarningInfo = 0;
api.WarningInfo buildWarningInfo() {
  final o = api.WarningInfo();
  buildCounterWarningInfo++;
  if (buildCounterWarningInfo < 3) {
    o.warningCounts = buildUnnamed47();
  }
  buildCounterWarningInfo--;
  return o;
}

void checkWarningInfo(api.WarningInfo o) {
  buildCounterWarningInfo++;
  if (buildCounterWarningInfo < 3) {
    checkUnnamed47(o.warningCounts!);
  }
  buildCounterWarningInfo--;
}

void main() {
  unittest.group('obj-schema-AdEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdEvent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdEvent(od);
    });
  });

  unittest.group('obj-schema-AdIdentifiers', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdIdentifiers();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdIdentifiers.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdIdentifiers(od);
    });
  });

  unittest.group('obj-schema-AddressInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddressInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddressInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAddressInfo(od);
    });
  });

  unittest.group('obj-schema-AudienceMember', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAudienceMember();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AudienceMember.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAudienceMember(od);
    });
  });

  unittest.group('obj-schema-AwsWrappedKeyInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAwsWrappedKeyInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AwsWrappedKeyInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAwsWrappedKeyInfo(od);
    });
  });

  unittest.group('obj-schema-Baseline', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBaseline();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Baseline.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBaseline(od);
    });
  });

  unittest.group('obj-schema-CartData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCartData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CartData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCartData(od);
    });
  });

  unittest.group('obj-schema-CompositeData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompositeData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompositeData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCompositeData(od);
    });
  });

  unittest.group('obj-schema-Consent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Consent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConsent(od);
    });
  });

  unittest.group('obj-schema-ContactIdInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContactIdInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContactIdInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkContactIdInfo(od);
    });
  });

  unittest.group('obj-schema-CoordinatorKeyInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCoordinatorKeyInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CoordinatorKeyInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCoordinatorKeyInfo(od);
    });
  });

  unittest.group('obj-schema-CustomVariable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomVariable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomVariable.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomVariable(od);
    });
  });

  unittest.group('obj-schema-DataTypeCount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataTypeCount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataTypeCount.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataTypeCount(od);
    });
  });

  unittest.group('obj-schema-Destination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Destination.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDestination(od);
    });
  });

  unittest.group('obj-schema-DeviceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeviceInfo(od);
    });
  });

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

  unittest.group('obj-schema-EncryptedUserId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEncryptedUserId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EncryptedUserId.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEncryptedUserId(od);
    });
  });

  unittest.group('obj-schema-EncryptionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEncryptionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EncryptionInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEncryptionInfo(od);
    });
  });

  unittest.group('obj-schema-ErrorCount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildErrorCount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ErrorCount.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkErrorCount(od);
    });
  });

  unittest.group('obj-schema-ErrorInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildErrorInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ErrorInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkErrorInfo(od);
    });
  });

  unittest.group('obj-schema-Event', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Event.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEvent(od);
    });
  });

  unittest.group('obj-schema-EventLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventLocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEventLocation(od);
    });
  });

  unittest.group('obj-schema-EventParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEventParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EventParameter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEventParameter(od);
    });
  });

  unittest.group('obj-schema-ExperimentalField', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExperimentalField();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExperimentalField.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExperimentalField(od);
    });
  });

  unittest.group('obj-schema-FieldWarning', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFieldWarning();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FieldWarning.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFieldWarning(od);
    });
  });

  unittest.group('obj-schema-GcpWrappedKeyInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGcpWrappedKeyInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GcpWrappedKeyInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGcpWrappedKeyInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleUserIdData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleUserIdData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleUserIdData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleUserIdData(od);
    });
  });

  unittest.group('obj-schema-IngestAdEventsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngestAdEventsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IngestAdEventsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIngestAdEventsRequest(od);
    });
  });

  unittest.group('obj-schema-IngestAdEventsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngestAdEventsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IngestAdEventsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIngestAdEventsResponse(od);
    });
  });

  unittest.group('obj-schema-IngestAudienceMembersRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngestAudienceMembersRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IngestAudienceMembersRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIngestAudienceMembersRequest(od);
    });
  });

  unittest.group('obj-schema-IngestAudienceMembersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngestAudienceMembersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IngestAudienceMembersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIngestAudienceMembersResponse(od);
    });
  });

  unittest.group('obj-schema-IngestAudienceMembersStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngestAudienceMembersStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IngestAudienceMembersStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIngestAudienceMembersStatus(od);
    });
  });

  unittest.group('obj-schema-IngestCompositeDataStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngestCompositeDataStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IngestCompositeDataStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIngestCompositeDataStatus(od);
    });
  });

  unittest.group('obj-schema-IngestEventsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngestEventsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IngestEventsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIngestEventsRequest(od);
    });
  });

  unittest.group('obj-schema-IngestEventsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngestEventsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IngestEventsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIngestEventsResponse(od);
    });
  });

  unittest.group('obj-schema-IngestEventsStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngestEventsStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IngestEventsStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIngestEventsStatus(od);
    });
  });

  unittest.group('obj-schema-IngestGoogleUserIdDataStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngestGoogleUserIdDataStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IngestGoogleUserIdDataStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIngestGoogleUserIdDataStatus(od);
    });
  });

  unittest.group('obj-schema-IngestMobileDataStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngestMobileDataStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IngestMobileDataStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIngestMobileDataStatus(od);
    });
  });

  unittest.group('obj-schema-IngestPairDataStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngestPairDataStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IngestPairDataStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIngestPairDataStatus(od);
    });
  });

  unittest.group('obj-schema-IngestPartnerProvidedIdDataStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngestPartnerProvidedIdDataStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IngestPartnerProvidedIdDataStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIngestPartnerProvidedIdDataStatus(od);
    });
  });

  unittest.group('obj-schema-IngestPpidDataStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngestPpidDataStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IngestPpidDataStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIngestPpidDataStatus(od);
    });
  });

  unittest.group('obj-schema-IngestUserDataStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngestUserDataStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IngestUserDataStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIngestUserDataStatus(od);
    });
  });

  unittest.group('obj-schema-IngestUserIdDataStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngestUserIdDataStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IngestUserIdDataStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIngestUserIdDataStatus(od);
    });
  });

  unittest.group('obj-schema-IngestedUserListInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIngestedUserListInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IngestedUserListInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIngestedUserListInfo(od);
    });
  });

  unittest.group('obj-schema-IpData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIpData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IpData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIpData(od);
    });
  });

  unittest.group('obj-schema-Item', () {
    unittest.test('to-json--from-json', () async {
      final o = buildItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Item.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkItem(od);
    });
  });

  unittest.group('obj-schema-ItemCustomVariable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildItemCustomVariable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ItemCustomVariable.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkItemCustomVariable(od);
    });
  });

  unittest.group('obj-schema-ItemParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildItemParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ItemParameter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkItemParameter(od);
    });
  });

  unittest.group('obj-schema-ListUserListDirectLicensesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUserListDirectLicensesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUserListDirectLicensesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListUserListDirectLicensesResponse(od);
    });
  });

  unittest.group(
    'obj-schema-ListUserListGlobalLicenseCustomerInfosResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildListUserListGlobalLicenseCustomerInfosResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.ListUserListGlobalLicenseCustomerInfosResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkListUserListGlobalLicenseCustomerInfosResponse(od);
      });
    },
  );

  unittest.group('obj-schema-ListUserListGlobalLicensesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUserListGlobalLicensesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUserListGlobalLicensesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListUserListGlobalLicensesResponse(od);
    });
  });

  unittest.group('obj-schema-ListUserListsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUserListsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUserListsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListUserListsResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Location.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-MarketingDataInsight', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMarketingDataInsight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MarketingDataInsight.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMarketingDataInsight(od);
    });
  });

  unittest.group('obj-schema-MarketingDataInsightsAttribute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMarketingDataInsightsAttribute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MarketingDataInsightsAttribute.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMarketingDataInsightsAttribute(od);
    });
  });

  unittest.group('obj-schema-MobileData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMobileData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MobileData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMobileData(od);
    });
  });

  unittest.group('obj-schema-MobileIdInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMobileIdInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MobileIdInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMobileIdInfo(od);
    });
  });

  unittest.group('obj-schema-PairData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPairData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PairData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPairData(od);
    });
  });

  unittest.group('obj-schema-PairIdInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPairIdInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PairIdInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPairIdInfo(od);
    });
  });

  unittest.group('obj-schema-PartnerAudienceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartnerAudienceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartnerAudienceInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPartnerAudienceInfo(od);
    });
  });

  unittest.group('obj-schema-PartnerCustomerAccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartnerCustomerAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartnerCustomerAccount.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPartnerCustomerAccount(od);
    });
  });

  unittest.group('obj-schema-PartnerLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartnerLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartnerLink.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPartnerLink(od);
    });
  });

  unittest.group('obj-schema-PartnerLinkMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartnerLinkMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartnerLinkMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPartnerLinkMetadata(od);
    });
  });

  unittest.group('obj-schema-PartnerProvidedIdData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartnerProvidedIdData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartnerProvidedIdData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPartnerProvidedIdData(od);
    });
  });

  unittest.group('obj-schema-PpidData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPpidData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PpidData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPpidData(od);
    });
  });

  unittest.group('obj-schema-ProductAccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductAccount.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProductAccount(od);
    });
  });

  unittest.group('obj-schema-PseudonymousIdInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPseudonymousIdInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PseudonymousIdInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPseudonymousIdInfo(od);
    });
  });

  unittest.group('obj-schema-RemoveAllAudienceMembersRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveAllAudienceMembersRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveAllAudienceMembersRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRemoveAllAudienceMembersRequest(od);
    });
  });

  unittest.group('obj-schema-RemoveAllAudienceMembersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveAllAudienceMembersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveAllAudienceMembersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRemoveAllAudienceMembersResponse(od);
    });
  });

  unittest.group('obj-schema-RemoveAllAudienceMembersStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveAllAudienceMembersStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveAllAudienceMembersStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRemoveAllAudienceMembersStatus(od);
    });
  });

  unittest.group('obj-schema-RemoveAudienceMembersRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveAudienceMembersRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveAudienceMembersRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRemoveAudienceMembersRequest(od);
    });
  });

  unittest.group('obj-schema-RemoveAudienceMembersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveAudienceMembersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveAudienceMembersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRemoveAudienceMembersResponse(od);
    });
  });

  unittest.group('obj-schema-RemoveAudienceMembersStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveAudienceMembersStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveAudienceMembersStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRemoveAudienceMembersStatus(od);
    });
  });

  unittest.group('obj-schema-RemoveCompositeDataStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveCompositeDataStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveCompositeDataStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRemoveCompositeDataStatus(od);
    });
  });

  unittest.group('obj-schema-RemoveGoogleUserIdDataStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveGoogleUserIdDataStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveGoogleUserIdDataStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRemoveGoogleUserIdDataStatus(od);
    });
  });

  unittest.group('obj-schema-RemoveMobileDataStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveMobileDataStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveMobileDataStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRemoveMobileDataStatus(od);
    });
  });

  unittest.group('obj-schema-RemovePairDataStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemovePairDataStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemovePairDataStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRemovePairDataStatus(od);
    });
  });

  unittest.group('obj-schema-RemovePartnerProvidedIdDataStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemovePartnerProvidedIdDataStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemovePartnerProvidedIdDataStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRemovePartnerProvidedIdDataStatus(od);
    });
  });

  unittest.group('obj-schema-RemovePpidDataStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemovePpidDataStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemovePpidDataStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRemovePpidDataStatus(od);
    });
  });

  unittest.group('obj-schema-RemoveUserDataStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveUserDataStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveUserDataStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRemoveUserDataStatus(od);
    });
  });

  unittest.group('obj-schema-RemoveUserIdDataStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveUserIdDataStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveUserIdDataStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRemoveUserIdDataStatus(od);
    });
  });

  unittest.group('obj-schema-RequestStatusPerDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRequestStatusPerDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RequestStatusPerDestination.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRequestStatusPerDestination(od);
    });
  });

  unittest.group('obj-schema-RetrieveInsightsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRetrieveInsightsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RetrieveInsightsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRetrieveInsightsRequest(od);
    });
  });

  unittest.group('obj-schema-RetrieveInsightsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRetrieveInsightsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RetrieveInsightsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRetrieveInsightsResponse(od);
    });
  });

  unittest.group('obj-schema-RetrieveRequestStatusResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRetrieveRequestStatusResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RetrieveRequestStatusResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRetrieveRequestStatusResponse(od);
    });
  });

  unittest.group('obj-schema-SearchPartnerLinksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchPartnerLinksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchPartnerLinksResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSearchPartnerLinksResponse(od);
    });
  });

  unittest.group('obj-schema-SizeInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSizeInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SizeInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSizeInfo(od);
    });
  });

  unittest.group('obj-schema-TargetNetworkInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetNetworkInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetNetworkInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTargetNetworkInfo(od);
    });
  });

  unittest.group('obj-schema-TermsOfService', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTermsOfService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TermsOfService.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTermsOfService(od);
    });
  });

  unittest.group('obj-schema-UserData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUserData(od);
    });
  });

  unittest.group('obj-schema-UserIdData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserIdData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserIdData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUserIdData(od);
    });
  });

  unittest.group('obj-schema-UserIdInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserIdInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserIdInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUserIdInfo(od);
    });
  });

  unittest.group('obj-schema-UserIdentifier', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserIdentifier();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserIdentifier.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUserIdentifier(od);
    });
  });

  unittest.group('obj-schema-UserList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUserList(od);
    });
  });

  unittest.group('obj-schema-UserListDirectLicense', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserListDirectLicense();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserListDirectLicense.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUserListDirectLicense(od);
    });
  });

  unittest.group('obj-schema-UserListGlobalLicense', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserListGlobalLicense();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserListGlobalLicense.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUserListGlobalLicense(od);
    });
  });

  unittest.group('obj-schema-UserListGlobalLicenseCustomerInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserListGlobalLicenseCustomerInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserListGlobalLicenseCustomerInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUserListGlobalLicenseCustomerInfo(od);
    });
  });

  unittest.group('obj-schema-UserListLicenseMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserListLicenseMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserListLicenseMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUserListLicenseMetrics(od);
    });
  });

  unittest.group('obj-schema-UserListLicensePricing', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserListLicensePricing();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserListLicensePricing.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUserListLicensePricing(od);
    });
  });

  unittest.group('obj-schema-UserProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUserProperties(od);
    });
  });

  unittest.group('obj-schema-UserProperty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserProperty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserProperty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUserProperty(od);
    });
  });

  unittest.group('obj-schema-ViewabilityInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildViewabilityInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ViewabilityInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkViewabilityInfo(od);
    });
  });

  unittest.group('obj-schema-WarningCount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWarningCount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WarningCount.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWarningCount(od);
    });
  });

  unittest.group('obj-schema-WarningInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWarningInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WarningInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWarningInfo(od);
    });
  });

  unittest.group('resource-AccountTypesAccountsInsightsResource', () {
    unittest.test('method--retrieve', () async {
      final mock = HttpServerMock();
      final res = api.DataManagerApi(mock).accountTypes.accounts.insights;
      final arg_request = buildRetrieveInsightsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RetrieveInsightsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRetrieveInsightsRequest(obj);

          final path = req.url.path;
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
            unittest.equals('v1/'),
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
          final resp = convert.json.encode(buildRetrieveInsightsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.retrieve(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkRetrieveInsightsResponse(response as api.RetrieveInsightsResponse);
    });
  });

  unittest.group('resource-AccountTypesAccountsPartnerLinksResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataManagerApi(mock).accountTypes.accounts.partnerLinks;
      final arg_request = buildPartnerLink();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.PartnerLink.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPartnerLink(obj);

          final path = req.url.path;
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
            unittest.equals('v1/'),
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
          final resp = convert.json.encode(buildPartnerLink());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkPartnerLink(response as api.PartnerLink);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataManagerApi(mock).accountTypes.accounts.partnerLinks;
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
            unittest.equals('v1/'),
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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.DataManagerApi(mock).accountTypes.accounts.partnerLinks;
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
            unittest.equals('v1/'),
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
          final resp = convert.json.encode(buildSearchPartnerLinksResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.search(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkSearchPartnerLinksResponse(
        response as api.SearchPartnerLinksResponse,
      );
    });
  });

  unittest.group('resource-AccountTypesAccountsUserListDirectLicensesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataManagerApi(
        mock,
      ).accountTypes.accounts.userListDirectLicenses;
      final arg_request = buildUserListDirectLicense();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UserListDirectLicense.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUserListDirectLicense(obj);

          final path = req.url.path;
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
            unittest.equals('v1/'),
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
          final resp = convert.json.encode(buildUserListDirectLicense());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkUserListDirectLicense(response as api.UserListDirectLicense);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataManagerApi(
        mock,
      ).accountTypes.accounts.userListDirectLicenses;
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
            unittest.equals('v1/'),
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
          final resp = convert.json.encode(buildUserListDirectLicense());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkUserListDirectLicense(response as api.UserListDirectLicense);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataManagerApi(
        mock,
      ).accountTypes.accounts.userListDirectLicenses;
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
            unittest.equals('v1/'),
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
          final resp = convert.json.encode(
            buildListUserListDirectLicensesResponse(),
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
      checkListUserListDirectLicensesResponse(
        response as api.ListUserListDirectLicensesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DataManagerApi(
        mock,
      ).accountTypes.accounts.userListDirectLicenses;
      final arg_request = buildUserListDirectLicense();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UserListDirectLicense.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUserListDirectLicense(obj);

          final path = req.url.path;
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
            unittest.equals('v1/'),
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
          final resp = convert.json.encode(buildUserListDirectLicense());
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
      checkUserListDirectLicense(response as api.UserListDirectLicense);
    });
  });

  unittest.group('resource-AccountTypesAccountsUserListGlobalLicensesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataManagerApi(
        mock,
      ).accountTypes.accounts.userListGlobalLicenses;
      final arg_request = buildUserListGlobalLicense();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UserListGlobalLicense.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUserListGlobalLicense(obj);

          final path = req.url.path;
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
            unittest.equals('v1/'),
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
          final resp = convert.json.encode(buildUserListGlobalLicense());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkUserListGlobalLicense(response as api.UserListGlobalLicense);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataManagerApi(
        mock,
      ).accountTypes.accounts.userListGlobalLicenses;
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
            unittest.equals('v1/'),
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
          final resp = convert.json.encode(buildUserListGlobalLicense());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkUserListGlobalLicense(response as api.UserListGlobalLicense);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataManagerApi(
        mock,
      ).accountTypes.accounts.userListGlobalLicenses;
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
            unittest.equals('v1/'),
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
          final resp = convert.json.encode(
            buildListUserListGlobalLicensesResponse(),
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
      checkListUserListGlobalLicensesResponse(
        response as api.ListUserListGlobalLicensesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DataManagerApi(
        mock,
      ).accountTypes.accounts.userListGlobalLicenses;
      final arg_request = buildUserListGlobalLicense();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UserListGlobalLicense.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUserListGlobalLicense(obj);

          final path = req.url.path;
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
            unittest.equals('v1/'),
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
          final resp = convert.json.encode(buildUserListGlobalLicense());
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
      checkUserListGlobalLicense(response as api.UserListGlobalLicense);
    });
  });

  unittest.group(
    'resource-AccountTypesAccountsUserListGlobalLicensesUserListGlobalLicenseCustomerInfosResource',
    () {
      unittest.test('method--list', () async {
        final mock = HttpServerMock();
        final res = api.DataManagerApi(mock)
            .accountTypes
            .accounts
            .userListGlobalLicenses
            .userListGlobalLicenseCustomerInfos;
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
              unittest.equals('v1/'),
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
            final resp = convert.json.encode(
              buildListUserListGlobalLicenseCustomerInfosResponse(),
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
        checkListUserListGlobalLicenseCustomerInfosResponse(
          response as api.ListUserListGlobalLicenseCustomerInfosResponse,
        );
      });
    },
  );

  unittest.group('resource-AccountTypesAccountsUserListsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataManagerApi(mock).accountTypes.accounts.userLists;
      final arg_request = buildUserList();
      final arg_parent = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UserList.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUserList(obj);

          final path = req.url.path;
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
            unittest.equals('v1/'),
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
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildUserList());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkUserList(response as api.UserList);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataManagerApi(mock).accountTypes.accounts.userLists;
      final arg_name = 'foo';
      final arg_validateOnly = true;
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
            unittest.equals('v1/'),
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
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
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
        arg_name,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataManagerApi(mock).accountTypes.accounts.userLists;
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
            unittest.equals('v1/'),
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
          final resp = convert.json.encode(buildUserList());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkUserList(response as api.UserList);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataManagerApi(mock).accountTypes.accounts.userLists;
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
            unittest.equals('v1/'),
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
          final resp = convert.json.encode(buildListUserListsResponse());
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
      checkListUserListsResponse(response as api.ListUserListsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DataManagerApi(mock).accountTypes.accounts.userLists;
      final arg_request = buildUserList();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UserList.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUserList(obj);

          final path = req.url.path;
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
            unittest.equals('v1/'),
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
            queryMap['validateOnly']!.first,
            unittest.equals('$arg_validateOnly'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildUserList());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        validateOnly: arg_validateOnly,
        $fields: arg_$fields,
      );
      checkUserList(response as api.UserList);
    });
  });

  unittest.group('resource-AdEventsResource', () {
    unittest.test('method--ingest', () async {
      final mock = HttpServerMock();
      final res = api.DataManagerApi(mock).adEvents;
      final arg_request = buildIngestAdEventsRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.IngestAdEventsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkIngestAdEventsRequest(obj);

          final path = req.url.path;
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
            unittest.equals('v1/adEvents:ingest'),
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
          final resp = convert.json.encode(buildIngestAdEventsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.ingest(arg_request, $fields: arg_$fields);
      checkIngestAdEventsResponse(response as api.IngestAdEventsResponse);
    });
  });

  unittest.group('resource-AudienceMembersResource', () {
    unittest.test('method--ingest', () async {
      final mock = HttpServerMock();
      final res = api.DataManagerApi(mock).audienceMembers;
      final arg_request = buildIngestAudienceMembersRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.IngestAudienceMembersRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkIngestAudienceMembersRequest(obj);

          final path = req.url.path;
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
            unittest.equals('v1/audienceMembers:ingest'),
          );
          pathOffset += 25;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
            buildIngestAudienceMembersResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.ingest(arg_request, $fields: arg_$fields);
      checkIngestAudienceMembersResponse(
        response as api.IngestAudienceMembersResponse,
      );
    });

    unittest.test('method--remove', () async {
      final mock = HttpServerMock();
      final res = api.DataManagerApi(mock).audienceMembers;
      final arg_request = buildRemoveAudienceMembersRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RemoveAudienceMembersRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRemoveAudienceMembersRequest(obj);

          final path = req.url.path;
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
            unittest.equals('v1/audienceMembers:remove'),
          );
          pathOffset += 25;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
            buildRemoveAudienceMembersResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.remove(arg_request, $fields: arg_$fields);
      checkRemoveAudienceMembersResponse(
        response as api.RemoveAudienceMembersResponse,
      );
    });

    unittest.test('method--removeAll', () async {
      final mock = HttpServerMock();
      final res = api.DataManagerApi(mock).audienceMembers;
      final arg_request = buildRemoveAllAudienceMembersRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RemoveAllAudienceMembersRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRemoveAllAudienceMembersRequest(obj);

          final path = req.url.path;
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
            unittest.equals('v1/audienceMembers:removeAll'),
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
            buildRemoveAllAudienceMembersResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.removeAll(arg_request, $fields: arg_$fields);
      checkRemoveAllAudienceMembersResponse(
        response as api.RemoveAllAudienceMembersResponse,
      );
    });
  });

  unittest.group('resource-EventsResource', () {
    unittest.test('method--ingest', () async {
      final mock = HttpServerMock();
      final res = api.DataManagerApi(mock).events;
      final arg_request = buildIngestEventsRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.IngestEventsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkIngestEventsRequest(obj);

          final path = req.url.path;
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
            unittest.equals('v1/events:ingest'),
          );
          pathOffset += 16;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
          final resp = convert.json.encode(buildIngestEventsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.ingest(arg_request, $fields: arg_$fields);
      checkIngestEventsResponse(response as api.IngestEventsResponse);
    });
  });

  unittest.group('resource-RequestStatusResource', () {
    unittest.test('method--retrieve', () async {
      final mock = HttpServerMock();
      final res = api.DataManagerApi(mock).requestStatus;
      final arg_requestId = 'foo';
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
            unittest.equals('v1/requestStatus:retrieve'),
          );
          pathOffset += 25;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildRetrieveRequestStatusResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.retrieve(
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkRetrieveRequestStatusResponse(
        response as api.RetrieveRequestStatusResponse,
      );
    });
  });
}
