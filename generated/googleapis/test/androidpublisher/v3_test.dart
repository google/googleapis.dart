// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/androidpublisher/v3.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAbi = 0;
api.Abi buildAbi() {
  final o = api.Abi();
  buildCounterAbi++;
  if (buildCounterAbi < 3) {
    o.alias = 'foo';
  }
  buildCounterAbi--;
  return o;
}

void checkAbi(api.Abi o) {
  buildCounterAbi++;
  if (buildCounterAbi < 3) {
    unittest.expect(
      o.alias!,
      unittest.equals('foo'),
    );
  }
  buildCounterAbi--;
}

core.List<api.Abi> buildUnnamed0() => [
      buildAbi(),
      buildAbi(),
    ];

void checkUnnamed0(core.List<api.Abi> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAbi(o[0]);
  checkAbi(o[1]);
}

core.List<api.Abi> buildUnnamed1() => [
      buildAbi(),
      buildAbi(),
    ];

void checkUnnamed1(core.List<api.Abi> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAbi(o[0]);
  checkAbi(o[1]);
}

core.int buildCounterAbiTargeting = 0;
api.AbiTargeting buildAbiTargeting() {
  final o = api.AbiTargeting();
  buildCounterAbiTargeting++;
  if (buildCounterAbiTargeting < 3) {
    o.alternatives = buildUnnamed0();
    o.value = buildUnnamed1();
  }
  buildCounterAbiTargeting--;
  return o;
}

void checkAbiTargeting(api.AbiTargeting o) {
  buildCounterAbiTargeting++;
  if (buildCounterAbiTargeting < 3) {
    checkUnnamed0(o.alternatives!);
    checkUnnamed1(o.value!);
  }
  buildCounterAbiTargeting--;
}

core.int buildCounterAcquisitionTargetingRule = 0;
api.AcquisitionTargetingRule buildAcquisitionTargetingRule() {
  final o = api.AcquisitionTargetingRule();
  buildCounterAcquisitionTargetingRule++;
  if (buildCounterAcquisitionTargetingRule < 3) {
    o.scope = buildTargetingRuleScope();
  }
  buildCounterAcquisitionTargetingRule--;
  return o;
}

void checkAcquisitionTargetingRule(api.AcquisitionTargetingRule o) {
  buildCounterAcquisitionTargetingRule++;
  if (buildCounterAcquisitionTargetingRule < 3) {
    checkTargetingRuleScope(o.scope!);
  }
  buildCounterAcquisitionTargetingRule--;
}

core.int buildCounterActivateBasePlanRequest = 0;
api.ActivateBasePlanRequest buildActivateBasePlanRequest() {
  final o = api.ActivateBasePlanRequest();
  buildCounterActivateBasePlanRequest++;
  if (buildCounterActivateBasePlanRequest < 3) {
    o.basePlanId = 'foo';
    o.latencyTolerance = 'foo';
    o.packageName = 'foo';
    o.productId = 'foo';
  }
  buildCounterActivateBasePlanRequest--;
  return o;
}

void checkActivateBasePlanRequest(api.ActivateBasePlanRequest o) {
  buildCounterActivateBasePlanRequest++;
  if (buildCounterActivateBasePlanRequest < 3) {
    unittest.expect(
      o.basePlanId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.latencyTolerance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
  }
  buildCounterActivateBasePlanRequest--;
}

core.int buildCounterActivateSubscriptionOfferRequest = 0;
api.ActivateSubscriptionOfferRequest buildActivateSubscriptionOfferRequest() {
  final o = api.ActivateSubscriptionOfferRequest();
  buildCounterActivateSubscriptionOfferRequest++;
  if (buildCounterActivateSubscriptionOfferRequest < 3) {
    o.basePlanId = 'foo';
    o.latencyTolerance = 'foo';
    o.offerId = 'foo';
    o.packageName = 'foo';
    o.productId = 'foo';
  }
  buildCounterActivateSubscriptionOfferRequest--;
  return o;
}

void checkActivateSubscriptionOfferRequest(
    api.ActivateSubscriptionOfferRequest o) {
  buildCounterActivateSubscriptionOfferRequest++;
  if (buildCounterActivateSubscriptionOfferRequest < 3) {
    unittest.expect(
      o.basePlanId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.latencyTolerance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.offerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
  }
  buildCounterActivateSubscriptionOfferRequest--;
}

core.int buildCounterAddTargetingRequest = 0;
api.AddTargetingRequest buildAddTargetingRequest() {
  final o = api.AddTargetingRequest();
  buildCounterAddTargetingRequest++;
  if (buildCounterAddTargetingRequest < 3) {
    o.targetingUpdate = buildTargetingUpdate();
  }
  buildCounterAddTargetingRequest--;
  return o;
}

void checkAddTargetingRequest(api.AddTargetingRequest o) {
  buildCounterAddTargetingRequest++;
  if (buildCounterAddTargetingRequest < 3) {
    checkTargetingUpdate(o.targetingUpdate!);
  }
  buildCounterAddTargetingRequest--;
}

core.int buildCounterAddTargetingResponse = 0;
api.AddTargetingResponse buildAddTargetingResponse() {
  final o = api.AddTargetingResponse();
  buildCounterAddTargetingResponse++;
  if (buildCounterAddTargetingResponse < 3) {}
  buildCounterAddTargetingResponse--;
  return o;
}

void checkAddTargetingResponse(api.AddTargetingResponse o) {
  buildCounterAddTargetingResponse++;
  if (buildCounterAddTargetingResponse < 3) {}
  buildCounterAddTargetingResponse--;
}

core.int buildCounterAllUsers = 0;
api.AllUsers buildAllUsers() {
  final o = api.AllUsers();
  buildCounterAllUsers++;
  if (buildCounterAllUsers < 3) {
    o.isAllUsersRequested = true;
  }
  buildCounterAllUsers--;
  return o;
}

void checkAllUsers(api.AllUsers o) {
  buildCounterAllUsers++;
  if (buildCounterAllUsers < 3) {
    unittest.expect(o.isAllUsersRequested!, unittest.isTrue);
  }
  buildCounterAllUsers--;
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

core.int buildCounterAndroidSdks = 0;
api.AndroidSdks buildAndroidSdks() {
  final o = api.AndroidSdks();
  buildCounterAndroidSdks++;
  if (buildCounterAndroidSdks < 3) {
    o.sdkLevels = buildUnnamed2();
  }
  buildCounterAndroidSdks--;
  return o;
}

void checkAndroidSdks(api.AndroidSdks o) {
  buildCounterAndroidSdks++;
  if (buildCounterAndroidSdks < 3) {
    checkUnnamed2(o.sdkLevels!);
  }
  buildCounterAndroidSdks--;
}

core.int buildCounterApk = 0;
api.Apk buildApk() {
  final o = api.Apk();
  buildCounterApk++;
  if (buildCounterApk < 3) {
    o.binary = buildApkBinary();
    o.versionCode = 42;
  }
  buildCounterApk--;
  return o;
}

void checkApk(api.Apk o) {
  buildCounterApk++;
  if (buildCounterApk < 3) {
    checkApkBinary(o.binary!);
    unittest.expect(
      o.versionCode!,
      unittest.equals(42),
    );
  }
  buildCounterApk--;
}

core.int buildCounterApkBinary = 0;
api.ApkBinary buildApkBinary() {
  final o = api.ApkBinary();
  buildCounterApkBinary++;
  if (buildCounterApkBinary < 3) {
    o.sha1 = 'foo';
    o.sha256 = 'foo';
  }
  buildCounterApkBinary--;
  return o;
}

void checkApkBinary(api.ApkBinary o) {
  buildCounterApkBinary++;
  if (buildCounterApkBinary < 3) {
    unittest.expect(
      o.sha1!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sha256!,
      unittest.equals('foo'),
    );
  }
  buildCounterApkBinary--;
}

core.int buildCounterApkDescription = 0;
api.ApkDescription buildApkDescription() {
  final o = api.ApkDescription();
  buildCounterApkDescription++;
  if (buildCounterApkDescription < 3) {
    o.assetSliceMetadata = buildSplitApkMetadata();
    o.instantApkMetadata = buildSplitApkMetadata();
    o.path = 'foo';
    o.splitApkMetadata = buildSplitApkMetadata();
    o.standaloneApkMetadata = buildStandaloneApkMetadata();
    o.targeting = buildApkTargeting();
  }
  buildCounterApkDescription--;
  return o;
}

void checkApkDescription(api.ApkDescription o) {
  buildCounterApkDescription++;
  if (buildCounterApkDescription < 3) {
    checkSplitApkMetadata(o.assetSliceMetadata!);
    checkSplitApkMetadata(o.instantApkMetadata!);
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    checkSplitApkMetadata(o.splitApkMetadata!);
    checkStandaloneApkMetadata(o.standaloneApkMetadata!);
    checkApkTargeting(o.targeting!);
  }
  buildCounterApkDescription--;
}

core.List<api.ApkDescription> buildUnnamed3() => [
      buildApkDescription(),
      buildApkDescription(),
    ];

void checkUnnamed3(core.List<api.ApkDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApkDescription(o[0]);
  checkApkDescription(o[1]);
}

core.int buildCounterApkSet = 0;
api.ApkSet buildApkSet() {
  final o = api.ApkSet();
  buildCounterApkSet++;
  if (buildCounterApkSet < 3) {
    o.apkDescription = buildUnnamed3();
    o.moduleMetadata = buildModuleMetadata();
  }
  buildCounterApkSet--;
  return o;
}

void checkApkSet(api.ApkSet o) {
  buildCounterApkSet++;
  if (buildCounterApkSet < 3) {
    checkUnnamed3(o.apkDescription!);
    checkModuleMetadata(o.moduleMetadata!);
  }
  buildCounterApkSet--;
}

core.int buildCounterApkTargeting = 0;
api.ApkTargeting buildApkTargeting() {
  final o = api.ApkTargeting();
  buildCounterApkTargeting++;
  if (buildCounterApkTargeting < 3) {
    o.abiTargeting = buildAbiTargeting();
    o.languageTargeting = buildLanguageTargeting();
    o.multiAbiTargeting = buildMultiAbiTargeting();
    o.screenDensityTargeting = buildScreenDensityTargeting();
    o.sdkVersionTargeting = buildSdkVersionTargeting();
    o.textureCompressionFormatTargeting =
        buildTextureCompressionFormatTargeting();
  }
  buildCounterApkTargeting--;
  return o;
}

void checkApkTargeting(api.ApkTargeting o) {
  buildCounterApkTargeting++;
  if (buildCounterApkTargeting < 3) {
    checkAbiTargeting(o.abiTargeting!);
    checkLanguageTargeting(o.languageTargeting!);
    checkMultiAbiTargeting(o.multiAbiTargeting!);
    checkScreenDensityTargeting(o.screenDensityTargeting!);
    checkSdkVersionTargeting(o.sdkVersionTargeting!);
    checkTextureCompressionFormatTargeting(
        o.textureCompressionFormatTargeting!);
  }
  buildCounterApkTargeting--;
}

core.int buildCounterApksAddExternallyHostedRequest = 0;
api.ApksAddExternallyHostedRequest buildApksAddExternallyHostedRequest() {
  final o = api.ApksAddExternallyHostedRequest();
  buildCounterApksAddExternallyHostedRequest++;
  if (buildCounterApksAddExternallyHostedRequest < 3) {
    o.externallyHostedApk = buildExternallyHostedApk();
  }
  buildCounterApksAddExternallyHostedRequest--;
  return o;
}

void checkApksAddExternallyHostedRequest(api.ApksAddExternallyHostedRequest o) {
  buildCounterApksAddExternallyHostedRequest++;
  if (buildCounterApksAddExternallyHostedRequest < 3) {
    checkExternallyHostedApk(o.externallyHostedApk!);
  }
  buildCounterApksAddExternallyHostedRequest--;
}

core.int buildCounterApksAddExternallyHostedResponse = 0;
api.ApksAddExternallyHostedResponse buildApksAddExternallyHostedResponse() {
  final o = api.ApksAddExternallyHostedResponse();
  buildCounterApksAddExternallyHostedResponse++;
  if (buildCounterApksAddExternallyHostedResponse < 3) {
    o.externallyHostedApk = buildExternallyHostedApk();
  }
  buildCounterApksAddExternallyHostedResponse--;
  return o;
}

void checkApksAddExternallyHostedResponse(
    api.ApksAddExternallyHostedResponse o) {
  buildCounterApksAddExternallyHostedResponse++;
  if (buildCounterApksAddExternallyHostedResponse < 3) {
    checkExternallyHostedApk(o.externallyHostedApk!);
  }
  buildCounterApksAddExternallyHostedResponse--;
}

core.List<api.Apk> buildUnnamed4() => [
      buildApk(),
      buildApk(),
    ];

void checkUnnamed4(core.List<api.Apk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApk(o[0]);
  checkApk(o[1]);
}

core.int buildCounterApksListResponse = 0;
api.ApksListResponse buildApksListResponse() {
  final o = api.ApksListResponse();
  buildCounterApksListResponse++;
  if (buildCounterApksListResponse < 3) {
    o.apks = buildUnnamed4();
    o.kind = 'foo';
  }
  buildCounterApksListResponse--;
  return o;
}

void checkApksListResponse(api.ApksListResponse o) {
  buildCounterApksListResponse++;
  if (buildCounterApksListResponse < 3) {
    checkUnnamed4(o.apks!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterApksListResponse--;
}

core.int buildCounterAppDetails = 0;
api.AppDetails buildAppDetails() {
  final o = api.AppDetails();
  buildCounterAppDetails++;
  if (buildCounterAppDetails < 3) {
    o.contactEmail = 'foo';
    o.contactPhone = 'foo';
    o.contactWebsite = 'foo';
    o.defaultLanguage = 'foo';
  }
  buildCounterAppDetails--;
  return o;
}

void checkAppDetails(api.AppDetails o) {
  buildCounterAppDetails++;
  if (buildCounterAppDetails < 3) {
    unittest.expect(
      o.contactEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contactPhone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contactWebsite!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultLanguage!,
      unittest.equals('foo'),
    );
  }
  buildCounterAppDetails--;
}

core.int buildCounterAppEdit = 0;
api.AppEdit buildAppEdit() {
  final o = api.AppEdit();
  buildCounterAppEdit++;
  if (buildCounterAppEdit < 3) {
    o.expiryTimeSeconds = 'foo';
    o.id = 'foo';
  }
  buildCounterAppEdit--;
  return o;
}

void checkAppEdit(api.AppEdit o) {
  buildCounterAppEdit++;
  if (buildCounterAppEdit < 3) {
    unittest.expect(
      o.expiryTimeSeconds!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
  }
  buildCounterAppEdit--;
}

core.int buildCounterAppRecoveryAction = 0;
api.AppRecoveryAction buildAppRecoveryAction() {
  final o = api.AppRecoveryAction();
  buildCounterAppRecoveryAction++;
  if (buildCounterAppRecoveryAction < 3) {
    o.appRecoveryId = 'foo';
    o.cancelTime = 'foo';
    o.createTime = 'foo';
    o.deployTime = 'foo';
    o.lastUpdateTime = 'foo';
    o.remoteInAppUpdateData = buildRemoteInAppUpdateData();
    o.status = 'foo';
    o.targeting = buildTargeting();
  }
  buildCounterAppRecoveryAction--;
  return o;
}

void checkAppRecoveryAction(api.AppRecoveryAction o) {
  buildCounterAppRecoveryAction++;
  if (buildCounterAppRecoveryAction < 3) {
    unittest.expect(
      o.appRecoveryId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cancelTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deployTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastUpdateTime!,
      unittest.equals('foo'),
    );
    checkRemoteInAppUpdateData(o.remoteInAppUpdateData!);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    checkTargeting(o.targeting!);
  }
  buildCounterAppRecoveryAction--;
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

core.int buildCounterAppVersionList = 0;
api.AppVersionList buildAppVersionList() {
  final o = api.AppVersionList();
  buildCounterAppVersionList++;
  if (buildCounterAppVersionList < 3) {
    o.versionCodes = buildUnnamed5();
  }
  buildCounterAppVersionList--;
  return o;
}

void checkAppVersionList(api.AppVersionList o) {
  buildCounterAppVersionList++;
  if (buildCounterAppVersionList < 3) {
    checkUnnamed5(o.versionCodes!);
  }
  buildCounterAppVersionList--;
}

core.int buildCounterAppVersionRange = 0;
api.AppVersionRange buildAppVersionRange() {
  final o = api.AppVersionRange();
  buildCounterAppVersionRange++;
  if (buildCounterAppVersionRange < 3) {
    o.versionCodeEnd = 'foo';
    o.versionCodeStart = 'foo';
  }
  buildCounterAppVersionRange--;
  return o;
}

void checkAppVersionRange(api.AppVersionRange o) {
  buildCounterAppVersionRange++;
  if (buildCounterAppVersionRange < 3) {
    unittest.expect(
      o.versionCodeEnd!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionCodeStart!,
      unittest.equals('foo'),
    );
  }
  buildCounterAppVersionRange--;
}

core.int buildCounterArchiveSubscriptionRequest = 0;
api.ArchiveSubscriptionRequest buildArchiveSubscriptionRequest() {
  final o = api.ArchiveSubscriptionRequest();
  buildCounterArchiveSubscriptionRequest++;
  if (buildCounterArchiveSubscriptionRequest < 3) {}
  buildCounterArchiveSubscriptionRequest--;
  return o;
}

void checkArchiveSubscriptionRequest(api.ArchiveSubscriptionRequest o) {
  buildCounterArchiveSubscriptionRequest++;
  if (buildCounterArchiveSubscriptionRequest < 3) {}
  buildCounterArchiveSubscriptionRequest--;
}

core.int buildCounterAssetModuleMetadata = 0;
api.AssetModuleMetadata buildAssetModuleMetadata() {
  final o = api.AssetModuleMetadata();
  buildCounterAssetModuleMetadata++;
  if (buildCounterAssetModuleMetadata < 3) {
    o.deliveryType = 'foo';
    o.name = 'foo';
  }
  buildCounterAssetModuleMetadata--;
  return o;
}

void checkAssetModuleMetadata(api.AssetModuleMetadata o) {
  buildCounterAssetModuleMetadata++;
  if (buildCounterAssetModuleMetadata < 3) {
    unittest.expect(
      o.deliveryType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterAssetModuleMetadata--;
}

core.List<api.ApkDescription> buildUnnamed6() => [
      buildApkDescription(),
      buildApkDescription(),
    ];

void checkUnnamed6(core.List<api.ApkDescription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApkDescription(o[0]);
  checkApkDescription(o[1]);
}

core.int buildCounterAssetSliceSet = 0;
api.AssetSliceSet buildAssetSliceSet() {
  final o = api.AssetSliceSet();
  buildCounterAssetSliceSet++;
  if (buildCounterAssetSliceSet < 3) {
    o.apkDescription = buildUnnamed6();
    o.assetModuleMetadata = buildAssetModuleMetadata();
  }
  buildCounterAssetSliceSet--;
  return o;
}

void checkAssetSliceSet(api.AssetSliceSet o) {
  buildCounterAssetSliceSet++;
  if (buildCounterAssetSliceSet < 3) {
    checkUnnamed6(o.apkDescription!);
    checkAssetModuleMetadata(o.assetModuleMetadata!);
  }
  buildCounterAssetSliceSet--;
}

core.int buildCounterAutoRenewingBasePlanType = 0;
api.AutoRenewingBasePlanType buildAutoRenewingBasePlanType() {
  final o = api.AutoRenewingBasePlanType();
  buildCounterAutoRenewingBasePlanType++;
  if (buildCounterAutoRenewingBasePlanType < 3) {
    o.accountHoldDuration = 'foo';
    o.billingPeriodDuration = 'foo';
    o.gracePeriodDuration = 'foo';
    o.legacyCompatible = true;
    o.legacyCompatibleSubscriptionOfferId = 'foo';
    o.prorationMode = 'foo';
    o.resubscribeState = 'foo';
  }
  buildCounterAutoRenewingBasePlanType--;
  return o;
}

void checkAutoRenewingBasePlanType(api.AutoRenewingBasePlanType o) {
  buildCounterAutoRenewingBasePlanType++;
  if (buildCounterAutoRenewingBasePlanType < 3) {
    unittest.expect(
      o.accountHoldDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.billingPeriodDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.gracePeriodDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(o.legacyCompatible!, unittest.isTrue);
    unittest.expect(
      o.legacyCompatibleSubscriptionOfferId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.prorationMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resubscribeState!,
      unittest.equals('foo'),
    );
  }
  buildCounterAutoRenewingBasePlanType--;
}

core.int buildCounterAutoRenewingPlan = 0;
api.AutoRenewingPlan buildAutoRenewingPlan() {
  final o = api.AutoRenewingPlan();
  buildCounterAutoRenewingPlan++;
  if (buildCounterAutoRenewingPlan < 3) {
    o.autoRenewEnabled = true;
    o.priceChangeDetails = buildSubscriptionItemPriceChangeDetails();
  }
  buildCounterAutoRenewingPlan--;
  return o;
}

void checkAutoRenewingPlan(api.AutoRenewingPlan o) {
  buildCounterAutoRenewingPlan++;
  if (buildCounterAutoRenewingPlan < 3) {
    unittest.expect(o.autoRenewEnabled!, unittest.isTrue);
    checkSubscriptionItemPriceChangeDetails(o.priceChangeDetails!);
  }
  buildCounterAutoRenewingPlan--;
}

core.List<api.OfferTag> buildUnnamed7() => [
      buildOfferTag(),
      buildOfferTag(),
    ];

void checkUnnamed7(core.List<api.OfferTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOfferTag(o[0]);
  checkOfferTag(o[1]);
}

core.List<api.RegionalBasePlanConfig> buildUnnamed8() => [
      buildRegionalBasePlanConfig(),
      buildRegionalBasePlanConfig(),
    ];

void checkUnnamed8(core.List<api.RegionalBasePlanConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegionalBasePlanConfig(o[0]);
  checkRegionalBasePlanConfig(o[1]);
}

core.int buildCounterBasePlan = 0;
api.BasePlan buildBasePlan() {
  final o = api.BasePlan();
  buildCounterBasePlan++;
  if (buildCounterBasePlan < 3) {
    o.autoRenewingBasePlanType = buildAutoRenewingBasePlanType();
    o.basePlanId = 'foo';
    o.offerTags = buildUnnamed7();
    o.otherRegionsConfig = buildOtherRegionsBasePlanConfig();
    o.prepaidBasePlanType = buildPrepaidBasePlanType();
    o.regionalConfigs = buildUnnamed8();
    o.state = 'foo';
  }
  buildCounterBasePlan--;
  return o;
}

void checkBasePlan(api.BasePlan o) {
  buildCounterBasePlan++;
  if (buildCounterBasePlan < 3) {
    checkAutoRenewingBasePlanType(o.autoRenewingBasePlanType!);
    unittest.expect(
      o.basePlanId!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.offerTags!);
    checkOtherRegionsBasePlanConfig(o.otherRegionsConfig!);
    checkPrepaidBasePlanType(o.prepaidBasePlanType!);
    checkUnnamed8(o.regionalConfigs!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterBasePlan--;
}

core.List<api.GetSubscriptionOfferRequest> buildUnnamed9() => [
      buildGetSubscriptionOfferRequest(),
      buildGetSubscriptionOfferRequest(),
    ];

void checkUnnamed9(core.List<api.GetSubscriptionOfferRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGetSubscriptionOfferRequest(o[0]);
  checkGetSubscriptionOfferRequest(o[1]);
}

core.int buildCounterBatchGetSubscriptionOffersRequest = 0;
api.BatchGetSubscriptionOffersRequest buildBatchGetSubscriptionOffersRequest() {
  final o = api.BatchGetSubscriptionOffersRequest();
  buildCounterBatchGetSubscriptionOffersRequest++;
  if (buildCounterBatchGetSubscriptionOffersRequest < 3) {
    o.requests = buildUnnamed9();
  }
  buildCounterBatchGetSubscriptionOffersRequest--;
  return o;
}

void checkBatchGetSubscriptionOffersRequest(
    api.BatchGetSubscriptionOffersRequest o) {
  buildCounterBatchGetSubscriptionOffersRequest++;
  if (buildCounterBatchGetSubscriptionOffersRequest < 3) {
    checkUnnamed9(o.requests!);
  }
  buildCounterBatchGetSubscriptionOffersRequest--;
}

core.List<api.SubscriptionOffer> buildUnnamed10() => [
      buildSubscriptionOffer(),
      buildSubscriptionOffer(),
    ];

void checkUnnamed10(core.List<api.SubscriptionOffer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubscriptionOffer(o[0]);
  checkSubscriptionOffer(o[1]);
}

core.int buildCounterBatchGetSubscriptionOffersResponse = 0;
api.BatchGetSubscriptionOffersResponse
    buildBatchGetSubscriptionOffersResponse() {
  final o = api.BatchGetSubscriptionOffersResponse();
  buildCounterBatchGetSubscriptionOffersResponse++;
  if (buildCounterBatchGetSubscriptionOffersResponse < 3) {
    o.subscriptionOffers = buildUnnamed10();
  }
  buildCounterBatchGetSubscriptionOffersResponse--;
  return o;
}

void checkBatchGetSubscriptionOffersResponse(
    api.BatchGetSubscriptionOffersResponse o) {
  buildCounterBatchGetSubscriptionOffersResponse++;
  if (buildCounterBatchGetSubscriptionOffersResponse < 3) {
    checkUnnamed10(o.subscriptionOffers!);
  }
  buildCounterBatchGetSubscriptionOffersResponse--;
}

core.List<api.Subscription> buildUnnamed11() => [
      buildSubscription(),
      buildSubscription(),
    ];

void checkUnnamed11(core.List<api.Subscription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubscription(o[0]);
  checkSubscription(o[1]);
}

core.int buildCounterBatchGetSubscriptionsResponse = 0;
api.BatchGetSubscriptionsResponse buildBatchGetSubscriptionsResponse() {
  final o = api.BatchGetSubscriptionsResponse();
  buildCounterBatchGetSubscriptionsResponse++;
  if (buildCounterBatchGetSubscriptionsResponse < 3) {
    o.subscriptions = buildUnnamed11();
  }
  buildCounterBatchGetSubscriptionsResponse--;
  return o;
}

void checkBatchGetSubscriptionsResponse(api.BatchGetSubscriptionsResponse o) {
  buildCounterBatchGetSubscriptionsResponse++;
  if (buildCounterBatchGetSubscriptionsResponse < 3) {
    checkUnnamed11(o.subscriptions!);
  }
  buildCounterBatchGetSubscriptionsResponse--;
}

core.List<api.MigrateBasePlanPricesRequest> buildUnnamed12() => [
      buildMigrateBasePlanPricesRequest(),
      buildMigrateBasePlanPricesRequest(),
    ];

void checkUnnamed12(core.List<api.MigrateBasePlanPricesRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMigrateBasePlanPricesRequest(o[0]);
  checkMigrateBasePlanPricesRequest(o[1]);
}

core.int buildCounterBatchMigrateBasePlanPricesRequest = 0;
api.BatchMigrateBasePlanPricesRequest buildBatchMigrateBasePlanPricesRequest() {
  final o = api.BatchMigrateBasePlanPricesRequest();
  buildCounterBatchMigrateBasePlanPricesRequest++;
  if (buildCounterBatchMigrateBasePlanPricesRequest < 3) {
    o.requests = buildUnnamed12();
  }
  buildCounterBatchMigrateBasePlanPricesRequest--;
  return o;
}

void checkBatchMigrateBasePlanPricesRequest(
    api.BatchMigrateBasePlanPricesRequest o) {
  buildCounterBatchMigrateBasePlanPricesRequest++;
  if (buildCounterBatchMigrateBasePlanPricesRequest < 3) {
    checkUnnamed12(o.requests!);
  }
  buildCounterBatchMigrateBasePlanPricesRequest--;
}

core.List<api.MigrateBasePlanPricesResponse> buildUnnamed13() => [
      buildMigrateBasePlanPricesResponse(),
      buildMigrateBasePlanPricesResponse(),
    ];

void checkUnnamed13(core.List<api.MigrateBasePlanPricesResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMigrateBasePlanPricesResponse(o[0]);
  checkMigrateBasePlanPricesResponse(o[1]);
}

core.int buildCounterBatchMigrateBasePlanPricesResponse = 0;
api.BatchMigrateBasePlanPricesResponse
    buildBatchMigrateBasePlanPricesResponse() {
  final o = api.BatchMigrateBasePlanPricesResponse();
  buildCounterBatchMigrateBasePlanPricesResponse++;
  if (buildCounterBatchMigrateBasePlanPricesResponse < 3) {
    o.responses = buildUnnamed13();
  }
  buildCounterBatchMigrateBasePlanPricesResponse--;
  return o;
}

void checkBatchMigrateBasePlanPricesResponse(
    api.BatchMigrateBasePlanPricesResponse o) {
  buildCounterBatchMigrateBasePlanPricesResponse++;
  if (buildCounterBatchMigrateBasePlanPricesResponse < 3) {
    checkUnnamed13(o.responses!);
  }
  buildCounterBatchMigrateBasePlanPricesResponse--;
}

core.List<api.UpdateBasePlanStateRequest> buildUnnamed14() => [
      buildUpdateBasePlanStateRequest(),
      buildUpdateBasePlanStateRequest(),
    ];

void checkUnnamed14(core.List<api.UpdateBasePlanStateRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpdateBasePlanStateRequest(o[0]);
  checkUpdateBasePlanStateRequest(o[1]);
}

core.int buildCounterBatchUpdateBasePlanStatesRequest = 0;
api.BatchUpdateBasePlanStatesRequest buildBatchUpdateBasePlanStatesRequest() {
  final o = api.BatchUpdateBasePlanStatesRequest();
  buildCounterBatchUpdateBasePlanStatesRequest++;
  if (buildCounterBatchUpdateBasePlanStatesRequest < 3) {
    o.requests = buildUnnamed14();
  }
  buildCounterBatchUpdateBasePlanStatesRequest--;
  return o;
}

void checkBatchUpdateBasePlanStatesRequest(
    api.BatchUpdateBasePlanStatesRequest o) {
  buildCounterBatchUpdateBasePlanStatesRequest++;
  if (buildCounterBatchUpdateBasePlanStatesRequest < 3) {
    checkUnnamed14(o.requests!);
  }
  buildCounterBatchUpdateBasePlanStatesRequest--;
}

core.List<api.Subscription> buildUnnamed15() => [
      buildSubscription(),
      buildSubscription(),
    ];

void checkUnnamed15(core.List<api.Subscription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubscription(o[0]);
  checkSubscription(o[1]);
}

core.int buildCounterBatchUpdateBasePlanStatesResponse = 0;
api.BatchUpdateBasePlanStatesResponse buildBatchUpdateBasePlanStatesResponse() {
  final o = api.BatchUpdateBasePlanStatesResponse();
  buildCounterBatchUpdateBasePlanStatesResponse++;
  if (buildCounterBatchUpdateBasePlanStatesResponse < 3) {
    o.subscriptions = buildUnnamed15();
  }
  buildCounterBatchUpdateBasePlanStatesResponse--;
  return o;
}

void checkBatchUpdateBasePlanStatesResponse(
    api.BatchUpdateBasePlanStatesResponse o) {
  buildCounterBatchUpdateBasePlanStatesResponse++;
  if (buildCounterBatchUpdateBasePlanStatesResponse < 3) {
    checkUnnamed15(o.subscriptions!);
  }
  buildCounterBatchUpdateBasePlanStatesResponse--;
}

core.List<api.UpdateSubscriptionOfferStateRequest> buildUnnamed16() => [
      buildUpdateSubscriptionOfferStateRequest(),
      buildUpdateSubscriptionOfferStateRequest(),
    ];

void checkUnnamed16(core.List<api.UpdateSubscriptionOfferStateRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpdateSubscriptionOfferStateRequest(o[0]);
  checkUpdateSubscriptionOfferStateRequest(o[1]);
}

core.int buildCounterBatchUpdateSubscriptionOfferStatesRequest = 0;
api.BatchUpdateSubscriptionOfferStatesRequest
    buildBatchUpdateSubscriptionOfferStatesRequest() {
  final o = api.BatchUpdateSubscriptionOfferStatesRequest();
  buildCounterBatchUpdateSubscriptionOfferStatesRequest++;
  if (buildCounterBatchUpdateSubscriptionOfferStatesRequest < 3) {
    o.requests = buildUnnamed16();
  }
  buildCounterBatchUpdateSubscriptionOfferStatesRequest--;
  return o;
}

void checkBatchUpdateSubscriptionOfferStatesRequest(
    api.BatchUpdateSubscriptionOfferStatesRequest o) {
  buildCounterBatchUpdateSubscriptionOfferStatesRequest++;
  if (buildCounterBatchUpdateSubscriptionOfferStatesRequest < 3) {
    checkUnnamed16(o.requests!);
  }
  buildCounterBatchUpdateSubscriptionOfferStatesRequest--;
}

core.List<api.SubscriptionOffer> buildUnnamed17() => [
      buildSubscriptionOffer(),
      buildSubscriptionOffer(),
    ];

void checkUnnamed17(core.List<api.SubscriptionOffer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubscriptionOffer(o[0]);
  checkSubscriptionOffer(o[1]);
}

core.int buildCounterBatchUpdateSubscriptionOfferStatesResponse = 0;
api.BatchUpdateSubscriptionOfferStatesResponse
    buildBatchUpdateSubscriptionOfferStatesResponse() {
  final o = api.BatchUpdateSubscriptionOfferStatesResponse();
  buildCounterBatchUpdateSubscriptionOfferStatesResponse++;
  if (buildCounterBatchUpdateSubscriptionOfferStatesResponse < 3) {
    o.subscriptionOffers = buildUnnamed17();
  }
  buildCounterBatchUpdateSubscriptionOfferStatesResponse--;
  return o;
}

void checkBatchUpdateSubscriptionOfferStatesResponse(
    api.BatchUpdateSubscriptionOfferStatesResponse o) {
  buildCounterBatchUpdateSubscriptionOfferStatesResponse++;
  if (buildCounterBatchUpdateSubscriptionOfferStatesResponse < 3) {
    checkUnnamed17(o.subscriptionOffers!);
  }
  buildCounterBatchUpdateSubscriptionOfferStatesResponse--;
}

core.List<api.UpdateSubscriptionOfferRequest> buildUnnamed18() => [
      buildUpdateSubscriptionOfferRequest(),
      buildUpdateSubscriptionOfferRequest(),
    ];

void checkUnnamed18(core.List<api.UpdateSubscriptionOfferRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpdateSubscriptionOfferRequest(o[0]);
  checkUpdateSubscriptionOfferRequest(o[1]);
}

core.int buildCounterBatchUpdateSubscriptionOffersRequest = 0;
api.BatchUpdateSubscriptionOffersRequest
    buildBatchUpdateSubscriptionOffersRequest() {
  final o = api.BatchUpdateSubscriptionOffersRequest();
  buildCounterBatchUpdateSubscriptionOffersRequest++;
  if (buildCounterBatchUpdateSubscriptionOffersRequest < 3) {
    o.requests = buildUnnamed18();
  }
  buildCounterBatchUpdateSubscriptionOffersRequest--;
  return o;
}

void checkBatchUpdateSubscriptionOffersRequest(
    api.BatchUpdateSubscriptionOffersRequest o) {
  buildCounterBatchUpdateSubscriptionOffersRequest++;
  if (buildCounterBatchUpdateSubscriptionOffersRequest < 3) {
    checkUnnamed18(o.requests!);
  }
  buildCounterBatchUpdateSubscriptionOffersRequest--;
}

core.List<api.SubscriptionOffer> buildUnnamed19() => [
      buildSubscriptionOffer(),
      buildSubscriptionOffer(),
    ];

void checkUnnamed19(core.List<api.SubscriptionOffer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubscriptionOffer(o[0]);
  checkSubscriptionOffer(o[1]);
}

core.int buildCounterBatchUpdateSubscriptionOffersResponse = 0;
api.BatchUpdateSubscriptionOffersResponse
    buildBatchUpdateSubscriptionOffersResponse() {
  final o = api.BatchUpdateSubscriptionOffersResponse();
  buildCounterBatchUpdateSubscriptionOffersResponse++;
  if (buildCounterBatchUpdateSubscriptionOffersResponse < 3) {
    o.subscriptionOffers = buildUnnamed19();
  }
  buildCounterBatchUpdateSubscriptionOffersResponse--;
  return o;
}

void checkBatchUpdateSubscriptionOffersResponse(
    api.BatchUpdateSubscriptionOffersResponse o) {
  buildCounterBatchUpdateSubscriptionOffersResponse++;
  if (buildCounterBatchUpdateSubscriptionOffersResponse < 3) {
    checkUnnamed19(o.subscriptionOffers!);
  }
  buildCounterBatchUpdateSubscriptionOffersResponse--;
}

core.List<api.UpdateSubscriptionRequest> buildUnnamed20() => [
      buildUpdateSubscriptionRequest(),
      buildUpdateSubscriptionRequest(),
    ];

void checkUnnamed20(core.List<api.UpdateSubscriptionRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpdateSubscriptionRequest(o[0]);
  checkUpdateSubscriptionRequest(o[1]);
}

core.int buildCounterBatchUpdateSubscriptionsRequest = 0;
api.BatchUpdateSubscriptionsRequest buildBatchUpdateSubscriptionsRequest() {
  final o = api.BatchUpdateSubscriptionsRequest();
  buildCounterBatchUpdateSubscriptionsRequest++;
  if (buildCounterBatchUpdateSubscriptionsRequest < 3) {
    o.requests = buildUnnamed20();
  }
  buildCounterBatchUpdateSubscriptionsRequest--;
  return o;
}

void checkBatchUpdateSubscriptionsRequest(
    api.BatchUpdateSubscriptionsRequest o) {
  buildCounterBatchUpdateSubscriptionsRequest++;
  if (buildCounterBatchUpdateSubscriptionsRequest < 3) {
    checkUnnamed20(o.requests!);
  }
  buildCounterBatchUpdateSubscriptionsRequest--;
}

core.List<api.Subscription> buildUnnamed21() => [
      buildSubscription(),
      buildSubscription(),
    ];

void checkUnnamed21(core.List<api.Subscription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubscription(o[0]);
  checkSubscription(o[1]);
}

core.int buildCounterBatchUpdateSubscriptionsResponse = 0;
api.BatchUpdateSubscriptionsResponse buildBatchUpdateSubscriptionsResponse() {
  final o = api.BatchUpdateSubscriptionsResponse();
  buildCounterBatchUpdateSubscriptionsResponse++;
  if (buildCounterBatchUpdateSubscriptionsResponse < 3) {
    o.subscriptions = buildUnnamed21();
  }
  buildCounterBatchUpdateSubscriptionsResponse--;
  return o;
}

void checkBatchUpdateSubscriptionsResponse(
    api.BatchUpdateSubscriptionsResponse o) {
  buildCounterBatchUpdateSubscriptionsResponse++;
  if (buildCounterBatchUpdateSubscriptionsResponse < 3) {
    checkUnnamed21(o.subscriptions!);
  }
  buildCounterBatchUpdateSubscriptionsResponse--;
}

core.int buildCounterBundle = 0;
api.Bundle buildBundle() {
  final o = api.Bundle();
  buildCounterBundle++;
  if (buildCounterBundle < 3) {
    o.sha1 = 'foo';
    o.sha256 = 'foo';
    o.versionCode = 42;
  }
  buildCounterBundle--;
  return o;
}

void checkBundle(api.Bundle o) {
  buildCounterBundle++;
  if (buildCounterBundle < 3) {
    unittest.expect(
      o.sha1!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sha256!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionCode!,
      unittest.equals(42),
    );
  }
  buildCounterBundle--;
}

core.List<api.Bundle> buildUnnamed22() => [
      buildBundle(),
      buildBundle(),
    ];

void checkUnnamed22(core.List<api.Bundle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBundle(o[0]);
  checkBundle(o[1]);
}

core.int buildCounterBundlesListResponse = 0;
api.BundlesListResponse buildBundlesListResponse() {
  final o = api.BundlesListResponse();
  buildCounterBundlesListResponse++;
  if (buildCounterBundlesListResponse < 3) {
    o.bundles = buildUnnamed22();
    o.kind = 'foo';
  }
  buildCounterBundlesListResponse--;
  return o;
}

void checkBundlesListResponse(api.BundlesListResponse o) {
  buildCounterBundlesListResponse++;
  if (buildCounterBundlesListResponse < 3) {
    checkUnnamed22(o.bundles!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
  }
  buildCounterBundlesListResponse--;
}

core.int buildCounterCancelAppRecoveryRequest = 0;
api.CancelAppRecoveryRequest buildCancelAppRecoveryRequest() {
  final o = api.CancelAppRecoveryRequest();
  buildCounterCancelAppRecoveryRequest++;
  if (buildCounterCancelAppRecoveryRequest < 3) {}
  buildCounterCancelAppRecoveryRequest--;
  return o;
}

void checkCancelAppRecoveryRequest(api.CancelAppRecoveryRequest o) {
  buildCounterCancelAppRecoveryRequest++;
  if (buildCounterCancelAppRecoveryRequest < 3) {}
  buildCounterCancelAppRecoveryRequest--;
}

core.int buildCounterCancelAppRecoveryResponse = 0;
api.CancelAppRecoveryResponse buildCancelAppRecoveryResponse() {
  final o = api.CancelAppRecoveryResponse();
  buildCounterCancelAppRecoveryResponse++;
  if (buildCounterCancelAppRecoveryResponse < 3) {}
  buildCounterCancelAppRecoveryResponse--;
  return o;
}

void checkCancelAppRecoveryResponse(api.CancelAppRecoveryResponse o) {
  buildCounterCancelAppRecoveryResponse++;
  if (buildCounterCancelAppRecoveryResponse < 3) {}
  buildCounterCancelAppRecoveryResponse--;
}

core.int buildCounterCancelSurveyResult = 0;
api.CancelSurveyResult buildCancelSurveyResult() {
  final o = api.CancelSurveyResult();
  buildCounterCancelSurveyResult++;
  if (buildCounterCancelSurveyResult < 3) {
    o.reason = 'foo';
    o.reasonUserInput = 'foo';
  }
  buildCounterCancelSurveyResult--;
  return o;
}

void checkCancelSurveyResult(api.CancelSurveyResult o) {
  buildCounterCancelSurveyResult++;
  if (buildCounterCancelSurveyResult < 3) {
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reasonUserInput!,
      unittest.equals('foo'),
    );
  }
  buildCounterCancelSurveyResult--;
}

core.int buildCounterCanceledStateContext = 0;
api.CanceledStateContext buildCanceledStateContext() {
  final o = api.CanceledStateContext();
  buildCounterCanceledStateContext++;
  if (buildCounterCanceledStateContext < 3) {
    o.developerInitiatedCancellation = buildDeveloperInitiatedCancellation();
    o.replacementCancellation = buildReplacementCancellation();
    o.systemInitiatedCancellation = buildSystemInitiatedCancellation();
    o.userInitiatedCancellation = buildUserInitiatedCancellation();
  }
  buildCounterCanceledStateContext--;
  return o;
}

void checkCanceledStateContext(api.CanceledStateContext o) {
  buildCounterCanceledStateContext++;
  if (buildCounterCanceledStateContext < 3) {
    checkDeveloperInitiatedCancellation(o.developerInitiatedCancellation!);
    checkReplacementCancellation(o.replacementCancellation!);
    checkSystemInitiatedCancellation(o.systemInitiatedCancellation!);
    checkUserInitiatedCancellation(o.userInitiatedCancellation!);
  }
  buildCounterCanceledStateContext--;
}

core.int buildCounterComment = 0;
api.Comment buildComment() {
  final o = api.Comment();
  buildCounterComment++;
  if (buildCounterComment < 3) {
    o.developerComment = buildDeveloperComment();
    o.userComment = buildUserComment();
  }
  buildCounterComment--;
  return o;
}

void checkComment(api.Comment o) {
  buildCounterComment++;
  if (buildCounterComment < 3) {
    checkDeveloperComment(o.developerComment!);
    checkUserComment(o.userComment!);
  }
  buildCounterComment--;
}

core.int buildCounterConvertRegionPricesRequest = 0;
api.ConvertRegionPricesRequest buildConvertRegionPricesRequest() {
  final o = api.ConvertRegionPricesRequest();
  buildCounterConvertRegionPricesRequest++;
  if (buildCounterConvertRegionPricesRequest < 3) {
    o.price = buildMoney();
  }
  buildCounterConvertRegionPricesRequest--;
  return o;
}

void checkConvertRegionPricesRequest(api.ConvertRegionPricesRequest o) {
  buildCounterConvertRegionPricesRequest++;
  if (buildCounterConvertRegionPricesRequest < 3) {
    checkMoney(o.price!);
  }
  buildCounterConvertRegionPricesRequest--;
}

core.Map<core.String, api.ConvertedRegionPrice> buildUnnamed23() => {
      'x': buildConvertedRegionPrice(),
      'y': buildConvertedRegionPrice(),
    };

void checkUnnamed23(core.Map<core.String, api.ConvertedRegionPrice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkConvertedRegionPrice(o['x']!);
  checkConvertedRegionPrice(o['y']!);
}

core.int buildCounterConvertRegionPricesResponse = 0;
api.ConvertRegionPricesResponse buildConvertRegionPricesResponse() {
  final o = api.ConvertRegionPricesResponse();
  buildCounterConvertRegionPricesResponse++;
  if (buildCounterConvertRegionPricesResponse < 3) {
    o.convertedOtherRegionsPrice = buildConvertedOtherRegionsPrice();
    o.convertedRegionPrices = buildUnnamed23();
  }
  buildCounterConvertRegionPricesResponse--;
  return o;
}

void checkConvertRegionPricesResponse(api.ConvertRegionPricesResponse o) {
  buildCounterConvertRegionPricesResponse++;
  if (buildCounterConvertRegionPricesResponse < 3) {
    checkConvertedOtherRegionsPrice(o.convertedOtherRegionsPrice!);
    checkUnnamed23(o.convertedRegionPrices!);
  }
  buildCounterConvertRegionPricesResponse--;
}

core.int buildCounterConvertedOtherRegionsPrice = 0;
api.ConvertedOtherRegionsPrice buildConvertedOtherRegionsPrice() {
  final o = api.ConvertedOtherRegionsPrice();
  buildCounterConvertedOtherRegionsPrice++;
  if (buildCounterConvertedOtherRegionsPrice < 3) {
    o.eurPrice = buildMoney();
    o.usdPrice = buildMoney();
  }
  buildCounterConvertedOtherRegionsPrice--;
  return o;
}

void checkConvertedOtherRegionsPrice(api.ConvertedOtherRegionsPrice o) {
  buildCounterConvertedOtherRegionsPrice++;
  if (buildCounterConvertedOtherRegionsPrice < 3) {
    checkMoney(o.eurPrice!);
    checkMoney(o.usdPrice!);
  }
  buildCounterConvertedOtherRegionsPrice--;
}

core.int buildCounterConvertedRegionPrice = 0;
api.ConvertedRegionPrice buildConvertedRegionPrice() {
  final o = api.ConvertedRegionPrice();
  buildCounterConvertedRegionPrice++;
  if (buildCounterConvertedRegionPrice < 3) {
    o.price = buildMoney();
    o.regionCode = 'foo';
    o.taxAmount = buildMoney();
  }
  buildCounterConvertedRegionPrice--;
  return o;
}

void checkConvertedRegionPrice(api.ConvertedRegionPrice o) {
  buildCounterConvertedRegionPrice++;
  if (buildCounterConvertedRegionPrice < 3) {
    checkMoney(o.price!);
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
    checkMoney(o.taxAmount!);
  }
  buildCounterConvertedRegionPrice--;
}

core.List<core.String> buildUnnamed24() => [
      'foo',
      'foo',
    ];

void checkUnnamed24(core.List<core.String> o) {
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

core.int buildCounterCountryTargeting = 0;
api.CountryTargeting buildCountryTargeting() {
  final o = api.CountryTargeting();
  buildCounterCountryTargeting++;
  if (buildCounterCountryTargeting < 3) {
    o.countries = buildUnnamed24();
    o.includeRestOfWorld = true;
  }
  buildCounterCountryTargeting--;
  return o;
}

void checkCountryTargeting(api.CountryTargeting o) {
  buildCounterCountryTargeting++;
  if (buildCounterCountryTargeting < 3) {
    checkUnnamed24(o.countries!);
    unittest.expect(o.includeRestOfWorld!, unittest.isTrue);
  }
  buildCounterCountryTargeting--;
}

core.int buildCounterCreateDraftAppRecoveryRequest = 0;
api.CreateDraftAppRecoveryRequest buildCreateDraftAppRecoveryRequest() {
  final o = api.CreateDraftAppRecoveryRequest();
  buildCounterCreateDraftAppRecoveryRequest++;
  if (buildCounterCreateDraftAppRecoveryRequest < 3) {
    o.remoteInAppUpdate = buildRemoteInAppUpdate();
    o.targeting = buildTargeting();
  }
  buildCounterCreateDraftAppRecoveryRequest--;
  return o;
}

void checkCreateDraftAppRecoveryRequest(api.CreateDraftAppRecoveryRequest o) {
  buildCounterCreateDraftAppRecoveryRequest++;
  if (buildCounterCreateDraftAppRecoveryRequest < 3) {
    checkRemoteInAppUpdate(o.remoteInAppUpdate!);
    checkTargeting(o.targeting!);
  }
  buildCounterCreateDraftAppRecoveryRequest--;
}

core.int buildCounterDeactivateBasePlanRequest = 0;
api.DeactivateBasePlanRequest buildDeactivateBasePlanRequest() {
  final o = api.DeactivateBasePlanRequest();
  buildCounterDeactivateBasePlanRequest++;
  if (buildCounterDeactivateBasePlanRequest < 3) {
    o.basePlanId = 'foo';
    o.latencyTolerance = 'foo';
    o.packageName = 'foo';
    o.productId = 'foo';
  }
  buildCounterDeactivateBasePlanRequest--;
  return o;
}

void checkDeactivateBasePlanRequest(api.DeactivateBasePlanRequest o) {
  buildCounterDeactivateBasePlanRequest++;
  if (buildCounterDeactivateBasePlanRequest < 3) {
    unittest.expect(
      o.basePlanId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.latencyTolerance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeactivateBasePlanRequest--;
}

core.int buildCounterDeactivateSubscriptionOfferRequest = 0;
api.DeactivateSubscriptionOfferRequest
    buildDeactivateSubscriptionOfferRequest() {
  final o = api.DeactivateSubscriptionOfferRequest();
  buildCounterDeactivateSubscriptionOfferRequest++;
  if (buildCounterDeactivateSubscriptionOfferRequest < 3) {
    o.basePlanId = 'foo';
    o.latencyTolerance = 'foo';
    o.offerId = 'foo';
    o.packageName = 'foo';
    o.productId = 'foo';
  }
  buildCounterDeactivateSubscriptionOfferRequest--;
  return o;
}

void checkDeactivateSubscriptionOfferRequest(
    api.DeactivateSubscriptionOfferRequest o) {
  buildCounterDeactivateSubscriptionOfferRequest++;
  if (buildCounterDeactivateSubscriptionOfferRequest < 3) {
    unittest.expect(
      o.basePlanId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.latencyTolerance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.offerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeactivateSubscriptionOfferRequest--;
}

core.int buildCounterDeferredItemReplacement = 0;
api.DeferredItemReplacement buildDeferredItemReplacement() {
  final o = api.DeferredItemReplacement();
  buildCounterDeferredItemReplacement++;
  if (buildCounterDeferredItemReplacement < 3) {
    o.productId = 'foo';
  }
  buildCounterDeferredItemReplacement--;
  return o;
}

void checkDeferredItemReplacement(api.DeferredItemReplacement o) {
  buildCounterDeferredItemReplacement++;
  if (buildCounterDeferredItemReplacement < 3) {
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeferredItemReplacement--;
}

core.int buildCounterDeobfuscationFile = 0;
api.DeobfuscationFile buildDeobfuscationFile() {
  final o = api.DeobfuscationFile();
  buildCounterDeobfuscationFile++;
  if (buildCounterDeobfuscationFile < 3) {
    o.symbolType = 'foo';
  }
  buildCounterDeobfuscationFile--;
  return o;
}

void checkDeobfuscationFile(api.DeobfuscationFile o) {
  buildCounterDeobfuscationFile++;
  if (buildCounterDeobfuscationFile < 3) {
    unittest.expect(
      o.symbolType!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeobfuscationFile--;
}

core.int buildCounterDeobfuscationFilesUploadResponse = 0;
api.DeobfuscationFilesUploadResponse buildDeobfuscationFilesUploadResponse() {
  final o = api.DeobfuscationFilesUploadResponse();
  buildCounterDeobfuscationFilesUploadResponse++;
  if (buildCounterDeobfuscationFilesUploadResponse < 3) {
    o.deobfuscationFile = buildDeobfuscationFile();
  }
  buildCounterDeobfuscationFilesUploadResponse--;
  return o;
}

void checkDeobfuscationFilesUploadResponse(
    api.DeobfuscationFilesUploadResponse o) {
  buildCounterDeobfuscationFilesUploadResponse++;
  if (buildCounterDeobfuscationFilesUploadResponse < 3) {
    checkDeobfuscationFile(o.deobfuscationFile!);
  }
  buildCounterDeobfuscationFilesUploadResponse--;
}

core.int buildCounterDeployAppRecoveryRequest = 0;
api.DeployAppRecoveryRequest buildDeployAppRecoveryRequest() {
  final o = api.DeployAppRecoveryRequest();
  buildCounterDeployAppRecoveryRequest++;
  if (buildCounterDeployAppRecoveryRequest < 3) {}
  buildCounterDeployAppRecoveryRequest--;
  return o;
}

void checkDeployAppRecoveryRequest(api.DeployAppRecoveryRequest o) {
  buildCounterDeployAppRecoveryRequest++;
  if (buildCounterDeployAppRecoveryRequest < 3) {}
  buildCounterDeployAppRecoveryRequest--;
}

core.int buildCounterDeployAppRecoveryResponse = 0;
api.DeployAppRecoveryResponse buildDeployAppRecoveryResponse() {
  final o = api.DeployAppRecoveryResponse();
  buildCounterDeployAppRecoveryResponse++;
  if (buildCounterDeployAppRecoveryResponse < 3) {}
  buildCounterDeployAppRecoveryResponse--;
  return o;
}

void checkDeployAppRecoveryResponse(api.DeployAppRecoveryResponse o) {
  buildCounterDeployAppRecoveryResponse++;
  if (buildCounterDeployAppRecoveryResponse < 3) {}
  buildCounterDeployAppRecoveryResponse--;
}

core.int buildCounterDeveloperComment = 0;
api.DeveloperComment buildDeveloperComment() {
  final o = api.DeveloperComment();
  buildCounterDeveloperComment++;
  if (buildCounterDeveloperComment < 3) {
    o.lastModified = buildTimestamp();
    o.text = 'foo';
  }
  buildCounterDeveloperComment--;
  return o;
}

void checkDeveloperComment(api.DeveloperComment o) {
  buildCounterDeveloperComment++;
  if (buildCounterDeveloperComment < 3) {
    checkTimestamp(o.lastModified!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeveloperComment--;
}

core.int buildCounterDeveloperInitiatedCancellation = 0;
api.DeveloperInitiatedCancellation buildDeveloperInitiatedCancellation() {
  final o = api.DeveloperInitiatedCancellation();
  buildCounterDeveloperInitiatedCancellation++;
  if (buildCounterDeveloperInitiatedCancellation < 3) {}
  buildCounterDeveloperInitiatedCancellation--;
  return o;
}

void checkDeveloperInitiatedCancellation(api.DeveloperInitiatedCancellation o) {
  buildCounterDeveloperInitiatedCancellation++;
  if (buildCounterDeveloperInitiatedCancellation < 3) {}
  buildCounterDeveloperInitiatedCancellation--;
}

core.int buildCounterDeviceFeature = 0;
api.DeviceFeature buildDeviceFeature() {
  final o = api.DeviceFeature();
  buildCounterDeviceFeature++;
  if (buildCounterDeviceFeature < 3) {
    o.featureName = 'foo';
    o.featureVersion = 42;
  }
  buildCounterDeviceFeature--;
  return o;
}

void checkDeviceFeature(api.DeviceFeature o) {
  buildCounterDeviceFeature++;
  if (buildCounterDeviceFeature < 3) {
    unittest.expect(
      o.featureName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.featureVersion!,
      unittest.equals(42),
    );
  }
  buildCounterDeviceFeature--;
}

core.int buildCounterDeviceFeatureTargeting = 0;
api.DeviceFeatureTargeting buildDeviceFeatureTargeting() {
  final o = api.DeviceFeatureTargeting();
  buildCounterDeviceFeatureTargeting++;
  if (buildCounterDeviceFeatureTargeting < 3) {
    o.requiredFeature = buildDeviceFeature();
  }
  buildCounterDeviceFeatureTargeting--;
  return o;
}

void checkDeviceFeatureTargeting(api.DeviceFeatureTargeting o) {
  buildCounterDeviceFeatureTargeting++;
  if (buildCounterDeviceFeatureTargeting < 3) {
    checkDeviceFeature(o.requiredFeature!);
  }
  buildCounterDeviceFeatureTargeting--;
}

core.List<api.DeviceSelector> buildUnnamed25() => [
      buildDeviceSelector(),
      buildDeviceSelector(),
    ];

void checkUnnamed25(core.List<api.DeviceSelector> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceSelector(o[0]);
  checkDeviceSelector(o[1]);
}

core.int buildCounterDeviceGroup = 0;
api.DeviceGroup buildDeviceGroup() {
  final o = api.DeviceGroup();
  buildCounterDeviceGroup++;
  if (buildCounterDeviceGroup < 3) {
    o.deviceSelectors = buildUnnamed25();
    o.name = 'foo';
  }
  buildCounterDeviceGroup--;
  return o;
}

void checkDeviceGroup(api.DeviceGroup o) {
  buildCounterDeviceGroup++;
  if (buildCounterDeviceGroup < 3) {
    checkUnnamed25(o.deviceSelectors!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeviceGroup--;
}

core.int buildCounterDeviceId = 0;
api.DeviceId buildDeviceId() {
  final o = api.DeviceId();
  buildCounterDeviceId++;
  if (buildCounterDeviceId < 3) {
    o.buildBrand = 'foo';
    o.buildDevice = 'foo';
  }
  buildCounterDeviceId--;
  return o;
}

void checkDeviceId(api.DeviceId o) {
  buildCounterDeviceId++;
  if (buildCounterDeviceId < 3) {
    unittest.expect(
      o.buildBrand!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.buildDevice!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeviceId--;
}

core.int buildCounterDeviceMetadata = 0;
api.DeviceMetadata buildDeviceMetadata() {
  final o = api.DeviceMetadata();
  buildCounterDeviceMetadata++;
  if (buildCounterDeviceMetadata < 3) {
    o.cpuMake = 'foo';
    o.cpuModel = 'foo';
    o.deviceClass = 'foo';
    o.glEsVersion = 42;
    o.manufacturer = 'foo';
    o.nativePlatform = 'foo';
    o.productName = 'foo';
    o.ramMb = 42;
    o.screenDensityDpi = 42;
    o.screenHeightPx = 42;
    o.screenWidthPx = 42;
  }
  buildCounterDeviceMetadata--;
  return o;
}

void checkDeviceMetadata(api.DeviceMetadata o) {
  buildCounterDeviceMetadata++;
  if (buildCounterDeviceMetadata < 3) {
    unittest.expect(
      o.cpuMake!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cpuModel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceClass!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.glEsVersion!,
      unittest.equals(42),
    );
    unittest.expect(
      o.manufacturer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nativePlatform!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ramMb!,
      unittest.equals(42),
    );
    unittest.expect(
      o.screenDensityDpi!,
      unittest.equals(42),
    );
    unittest.expect(
      o.screenHeightPx!,
      unittest.equals(42),
    );
    unittest.expect(
      o.screenWidthPx!,
      unittest.equals(42),
    );
  }
  buildCounterDeviceMetadata--;
}

core.int buildCounterDeviceRam = 0;
api.DeviceRam buildDeviceRam() {
  final o = api.DeviceRam();
  buildCounterDeviceRam++;
  if (buildCounterDeviceRam < 3) {
    o.maxBytes = 'foo';
    o.minBytes = 'foo';
  }
  buildCounterDeviceRam--;
  return o;
}

void checkDeviceRam(api.DeviceRam o) {
  buildCounterDeviceRam++;
  if (buildCounterDeviceRam < 3) {
    unittest.expect(
      o.maxBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minBytes!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeviceRam--;
}

core.List<api.DeviceId> buildUnnamed26() => [
      buildDeviceId(),
      buildDeviceId(),
    ];

void checkUnnamed26(core.List<api.DeviceId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceId(o[0]);
  checkDeviceId(o[1]);
}

core.List<api.SystemFeature> buildUnnamed27() => [
      buildSystemFeature(),
      buildSystemFeature(),
    ];

void checkUnnamed27(core.List<api.SystemFeature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSystemFeature(o[0]);
  checkSystemFeature(o[1]);
}

core.List<api.DeviceId> buildUnnamed28() => [
      buildDeviceId(),
      buildDeviceId(),
    ];

void checkUnnamed28(core.List<api.DeviceId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceId(o[0]);
  checkDeviceId(o[1]);
}

core.List<api.SystemFeature> buildUnnamed29() => [
      buildSystemFeature(),
      buildSystemFeature(),
    ];

void checkUnnamed29(core.List<api.SystemFeature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSystemFeature(o[0]);
  checkSystemFeature(o[1]);
}

core.int buildCounterDeviceSelector = 0;
api.DeviceSelector buildDeviceSelector() {
  final o = api.DeviceSelector();
  buildCounterDeviceSelector++;
  if (buildCounterDeviceSelector < 3) {
    o.deviceRam = buildDeviceRam();
    o.excludedDeviceIds = buildUnnamed26();
    o.forbiddenSystemFeatures = buildUnnamed27();
    o.includedDeviceIds = buildUnnamed28();
    o.requiredSystemFeatures = buildUnnamed29();
  }
  buildCounterDeviceSelector--;
  return o;
}

void checkDeviceSelector(api.DeviceSelector o) {
  buildCounterDeviceSelector++;
  if (buildCounterDeviceSelector < 3) {
    checkDeviceRam(o.deviceRam!);
    checkUnnamed26(o.excludedDeviceIds!);
    checkUnnamed27(o.forbiddenSystemFeatures!);
    checkUnnamed28(o.includedDeviceIds!);
    checkUnnamed29(o.requiredSystemFeatures!);
  }
  buildCounterDeviceSelector--;
}

core.List<core.String> buildUnnamed30() => [
      'foo',
      'foo',
    ];

void checkUnnamed30(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed31() => [
      'foo',
      'foo',
    ];

void checkUnnamed31(core.List<core.String> o) {
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

core.int buildCounterDeviceSpec = 0;
api.DeviceSpec buildDeviceSpec() {
  final o = api.DeviceSpec();
  buildCounterDeviceSpec++;
  if (buildCounterDeviceSpec < 3) {
    o.screenDensity = 42;
    o.supportedAbis = buildUnnamed30();
    o.supportedLocales = buildUnnamed31();
  }
  buildCounterDeviceSpec--;
  return o;
}

void checkDeviceSpec(api.DeviceSpec o) {
  buildCounterDeviceSpec++;
  if (buildCounterDeviceSpec < 3) {
    unittest.expect(
      o.screenDensity!,
      unittest.equals(42),
    );
    checkUnnamed30(o.supportedAbis!);
    checkUnnamed31(o.supportedLocales!);
  }
  buildCounterDeviceSpec--;
}

core.List<core.String> buildUnnamed32() => [
      'foo',
      'foo',
    ];

void checkUnnamed32(core.List<core.String> o) {
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

core.int buildCounterDeviceTier = 0;
api.DeviceTier buildDeviceTier() {
  final o = api.DeviceTier();
  buildCounterDeviceTier++;
  if (buildCounterDeviceTier < 3) {
    o.deviceGroupNames = buildUnnamed32();
    o.level = 42;
  }
  buildCounterDeviceTier--;
  return o;
}

void checkDeviceTier(api.DeviceTier o) {
  buildCounterDeviceTier++;
  if (buildCounterDeviceTier < 3) {
    checkUnnamed32(o.deviceGroupNames!);
    unittest.expect(
      o.level!,
      unittest.equals(42),
    );
  }
  buildCounterDeviceTier--;
}

core.List<api.DeviceGroup> buildUnnamed33() => [
      buildDeviceGroup(),
      buildDeviceGroup(),
    ];

void checkUnnamed33(core.List<api.DeviceGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceGroup(o[0]);
  checkDeviceGroup(o[1]);
}

core.List<api.UserCountrySet> buildUnnamed34() => [
      buildUserCountrySet(),
      buildUserCountrySet(),
    ];

void checkUnnamed34(core.List<api.UserCountrySet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserCountrySet(o[0]);
  checkUserCountrySet(o[1]);
}

core.int buildCounterDeviceTierConfig = 0;
api.DeviceTierConfig buildDeviceTierConfig() {
  final o = api.DeviceTierConfig();
  buildCounterDeviceTierConfig++;
  if (buildCounterDeviceTierConfig < 3) {
    o.deviceGroups = buildUnnamed33();
    o.deviceTierConfigId = 'foo';
    o.deviceTierSet = buildDeviceTierSet();
    o.userCountrySets = buildUnnamed34();
  }
  buildCounterDeviceTierConfig--;
  return o;
}

void checkDeviceTierConfig(api.DeviceTierConfig o) {
  buildCounterDeviceTierConfig++;
  if (buildCounterDeviceTierConfig < 3) {
    checkUnnamed33(o.deviceGroups!);
    unittest.expect(
      o.deviceTierConfigId!,
      unittest.equals('foo'),
    );
    checkDeviceTierSet(o.deviceTierSet!);
    checkUnnamed34(o.userCountrySets!);
  }
  buildCounterDeviceTierConfig--;
}

core.List<api.DeviceTier> buildUnnamed35() => [
      buildDeviceTier(),
      buildDeviceTier(),
    ];

void checkUnnamed35(core.List<api.DeviceTier> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceTier(o[0]);
  checkDeviceTier(o[1]);
}

core.int buildCounterDeviceTierSet = 0;
api.DeviceTierSet buildDeviceTierSet() {
  final o = api.DeviceTierSet();
  buildCounterDeviceTierSet++;
  if (buildCounterDeviceTierSet < 3) {
    o.deviceTiers = buildUnnamed35();
  }
  buildCounterDeviceTierSet--;
  return o;
}

void checkDeviceTierSet(api.DeviceTierSet o) {
  buildCounterDeviceTierSet++;
  if (buildCounterDeviceTierSet < 3) {
    checkUnnamed35(o.deviceTiers!);
  }
  buildCounterDeviceTierSet--;
}

core.int buildCounterExpansionFile = 0;
api.ExpansionFile buildExpansionFile() {
  final o = api.ExpansionFile();
  buildCounterExpansionFile++;
  if (buildCounterExpansionFile < 3) {
    o.fileSize = 'foo';
    o.referencesVersion = 42;
  }
  buildCounterExpansionFile--;
  return o;
}

void checkExpansionFile(api.ExpansionFile o) {
  buildCounterExpansionFile++;
  if (buildCounterExpansionFile < 3) {
    unittest.expect(
      o.fileSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.referencesVersion!,
      unittest.equals(42),
    );
  }
  buildCounterExpansionFile--;
}

core.int buildCounterExpansionFilesUploadResponse = 0;
api.ExpansionFilesUploadResponse buildExpansionFilesUploadResponse() {
  final o = api.ExpansionFilesUploadResponse();
  buildCounterExpansionFilesUploadResponse++;
  if (buildCounterExpansionFilesUploadResponse < 3) {
    o.expansionFile = buildExpansionFile();
  }
  buildCounterExpansionFilesUploadResponse--;
  return o;
}

void checkExpansionFilesUploadResponse(api.ExpansionFilesUploadResponse o) {
  buildCounterExpansionFilesUploadResponse++;
  if (buildCounterExpansionFilesUploadResponse < 3) {
    checkExpansionFile(o.expansionFile!);
  }
  buildCounterExpansionFilesUploadResponse--;
}

core.int buildCounterExternalAccountIdentifiers = 0;
api.ExternalAccountIdentifiers buildExternalAccountIdentifiers() {
  final o = api.ExternalAccountIdentifiers();
  buildCounterExternalAccountIdentifiers++;
  if (buildCounterExternalAccountIdentifiers < 3) {
    o.externalAccountId = 'foo';
    o.obfuscatedExternalAccountId = 'foo';
    o.obfuscatedExternalProfileId = 'foo';
  }
  buildCounterExternalAccountIdentifiers--;
  return o;
}

void checkExternalAccountIdentifiers(api.ExternalAccountIdentifiers o) {
  buildCounterExternalAccountIdentifiers++;
  if (buildCounterExternalAccountIdentifiers < 3) {
    unittest.expect(
      o.externalAccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.obfuscatedExternalAccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.obfuscatedExternalProfileId!,
      unittest.equals('foo'),
    );
  }
  buildCounterExternalAccountIdentifiers--;
}

core.int buildCounterExternalSubscription = 0;
api.ExternalSubscription buildExternalSubscription() {
  final o = api.ExternalSubscription();
  buildCounterExternalSubscription++;
  if (buildCounterExternalSubscription < 3) {
    o.subscriptionType = 'foo';
  }
  buildCounterExternalSubscription--;
  return o;
}

void checkExternalSubscription(api.ExternalSubscription o) {
  buildCounterExternalSubscription++;
  if (buildCounterExternalSubscription < 3) {
    unittest.expect(
      o.subscriptionType!,
      unittest.equals('foo'),
    );
  }
  buildCounterExternalSubscription--;
}

core.int buildCounterExternalTransaction = 0;
api.ExternalTransaction buildExternalTransaction() {
  final o = api.ExternalTransaction();
  buildCounterExternalTransaction++;
  if (buildCounterExternalTransaction < 3) {
    o.createTime = 'foo';
    o.currentPreTaxAmount = buildPrice();
    o.currentTaxAmount = buildPrice();
    o.externalTransactionId = 'foo';
    o.oneTimeTransaction = buildOneTimeExternalTransaction();
    o.originalPreTaxAmount = buildPrice();
    o.originalTaxAmount = buildPrice();
    o.packageName = 'foo';
    o.recurringTransaction = buildRecurringExternalTransaction();
    o.testPurchase = buildExternalTransactionTestPurchase();
    o.transactionState = 'foo';
    o.transactionTime = 'foo';
    o.userTaxAddress = buildExternalTransactionAddress();
  }
  buildCounterExternalTransaction--;
  return o;
}

void checkExternalTransaction(api.ExternalTransaction o) {
  buildCounterExternalTransaction++;
  if (buildCounterExternalTransaction < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkPrice(o.currentPreTaxAmount!);
    checkPrice(o.currentTaxAmount!);
    unittest.expect(
      o.externalTransactionId!,
      unittest.equals('foo'),
    );
    checkOneTimeExternalTransaction(o.oneTimeTransaction!);
    checkPrice(o.originalPreTaxAmount!);
    checkPrice(o.originalTaxAmount!);
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    checkRecurringExternalTransaction(o.recurringTransaction!);
    checkExternalTransactionTestPurchase(o.testPurchase!);
    unittest.expect(
      o.transactionState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.transactionTime!,
      unittest.equals('foo'),
    );
    checkExternalTransactionAddress(o.userTaxAddress!);
  }
  buildCounterExternalTransaction--;
}

core.int buildCounterExternalTransactionAddress = 0;
api.ExternalTransactionAddress buildExternalTransactionAddress() {
  final o = api.ExternalTransactionAddress();
  buildCounterExternalTransactionAddress++;
  if (buildCounterExternalTransactionAddress < 3) {
    o.administrativeArea = 'foo';
    o.regionCode = 'foo';
  }
  buildCounterExternalTransactionAddress--;
  return o;
}

void checkExternalTransactionAddress(api.ExternalTransactionAddress o) {
  buildCounterExternalTransactionAddress++;
  if (buildCounterExternalTransactionAddress < 3) {
    unittest.expect(
      o.administrativeArea!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterExternalTransactionAddress--;
}

core.int buildCounterExternalTransactionTestPurchase = 0;
api.ExternalTransactionTestPurchase buildExternalTransactionTestPurchase() {
  final o = api.ExternalTransactionTestPurchase();
  buildCounterExternalTransactionTestPurchase++;
  if (buildCounterExternalTransactionTestPurchase < 3) {}
  buildCounterExternalTransactionTestPurchase--;
  return o;
}

void checkExternalTransactionTestPurchase(
    api.ExternalTransactionTestPurchase o) {
  buildCounterExternalTransactionTestPurchase++;
  if (buildCounterExternalTransactionTestPurchase < 3) {}
  buildCounterExternalTransactionTestPurchase--;
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

core.List<core.String> buildUnnamed37() => [
      'foo',
      'foo',
    ];

void checkUnnamed37(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed38() => [
      'foo',
      'foo',
    ];

void checkUnnamed38(core.List<core.String> o) {
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

core.List<api.UsesPermission> buildUnnamed39() => [
      buildUsesPermission(),
      buildUsesPermission(),
    ];

void checkUnnamed39(core.List<api.UsesPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUsesPermission(o[0]);
  checkUsesPermission(o[1]);
}

core.int buildCounterExternallyHostedApk = 0;
api.ExternallyHostedApk buildExternallyHostedApk() {
  final o = api.ExternallyHostedApk();
  buildCounterExternallyHostedApk++;
  if (buildCounterExternallyHostedApk < 3) {
    o.applicationLabel = 'foo';
    o.certificateBase64s = buildUnnamed36();
    o.externallyHostedUrl = 'foo';
    o.fileSha1Base64 = 'foo';
    o.fileSha256Base64 = 'foo';
    o.fileSize = 'foo';
    o.iconBase64 = 'foo';
    o.maximumSdk = 42;
    o.minimumSdk = 42;
    o.nativeCodes = buildUnnamed37();
    o.packageName = 'foo';
    o.usesFeatures = buildUnnamed38();
    o.usesPermissions = buildUnnamed39();
    o.versionCode = 42;
    o.versionName = 'foo';
  }
  buildCounterExternallyHostedApk--;
  return o;
}

void checkExternallyHostedApk(api.ExternallyHostedApk o) {
  buildCounterExternallyHostedApk++;
  if (buildCounterExternallyHostedApk < 3) {
    unittest.expect(
      o.applicationLabel!,
      unittest.equals('foo'),
    );
    checkUnnamed36(o.certificateBase64s!);
    unittest.expect(
      o.externallyHostedUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fileSha1Base64!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fileSha256Base64!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fileSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.iconBase64!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maximumSdk!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minimumSdk!,
      unittest.equals(42),
    );
    checkUnnamed37(o.nativeCodes!);
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    checkUnnamed38(o.usesFeatures!);
    checkUnnamed39(o.usesPermissions!);
    unittest.expect(
      o.versionCode!,
      unittest.equals(42),
    );
    unittest.expect(
      o.versionName!,
      unittest.equals('foo'),
    );
  }
  buildCounterExternallyHostedApk--;
}

core.int buildCounterFullRefund = 0;
api.FullRefund buildFullRefund() {
  final o = api.FullRefund();
  buildCounterFullRefund++;
  if (buildCounterFullRefund < 3) {}
  buildCounterFullRefund--;
  return o;
}

void checkFullRefund(api.FullRefund o) {
  buildCounterFullRefund++;
  if (buildCounterFullRefund < 3) {}
  buildCounterFullRefund--;
}

core.List<api.GeneratedApksPerSigningKey> buildUnnamed40() => [
      buildGeneratedApksPerSigningKey(),
      buildGeneratedApksPerSigningKey(),
    ];

void checkUnnamed40(core.List<api.GeneratedApksPerSigningKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGeneratedApksPerSigningKey(o[0]);
  checkGeneratedApksPerSigningKey(o[1]);
}

core.int buildCounterGeneratedApksListResponse = 0;
api.GeneratedApksListResponse buildGeneratedApksListResponse() {
  final o = api.GeneratedApksListResponse();
  buildCounterGeneratedApksListResponse++;
  if (buildCounterGeneratedApksListResponse < 3) {
    o.generatedApks = buildUnnamed40();
  }
  buildCounterGeneratedApksListResponse--;
  return o;
}

void checkGeneratedApksListResponse(api.GeneratedApksListResponse o) {
  buildCounterGeneratedApksListResponse++;
  if (buildCounterGeneratedApksListResponse < 3) {
    checkUnnamed40(o.generatedApks!);
  }
  buildCounterGeneratedApksListResponse--;
}

core.List<api.GeneratedAssetPackSlice> buildUnnamed41() => [
      buildGeneratedAssetPackSlice(),
      buildGeneratedAssetPackSlice(),
    ];

void checkUnnamed41(core.List<api.GeneratedAssetPackSlice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGeneratedAssetPackSlice(o[0]);
  checkGeneratedAssetPackSlice(o[1]);
}

core.List<api.GeneratedRecoveryApk> buildUnnamed42() => [
      buildGeneratedRecoveryApk(),
      buildGeneratedRecoveryApk(),
    ];

void checkUnnamed42(core.List<api.GeneratedRecoveryApk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGeneratedRecoveryApk(o[0]);
  checkGeneratedRecoveryApk(o[1]);
}

core.List<api.GeneratedSplitApk> buildUnnamed43() => [
      buildGeneratedSplitApk(),
      buildGeneratedSplitApk(),
    ];

void checkUnnamed43(core.List<api.GeneratedSplitApk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGeneratedSplitApk(o[0]);
  checkGeneratedSplitApk(o[1]);
}

core.List<api.GeneratedStandaloneApk> buildUnnamed44() => [
      buildGeneratedStandaloneApk(),
      buildGeneratedStandaloneApk(),
    ];

void checkUnnamed44(core.List<api.GeneratedStandaloneApk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGeneratedStandaloneApk(o[0]);
  checkGeneratedStandaloneApk(o[1]);
}

core.int buildCounterGeneratedApksPerSigningKey = 0;
api.GeneratedApksPerSigningKey buildGeneratedApksPerSigningKey() {
  final o = api.GeneratedApksPerSigningKey();
  buildCounterGeneratedApksPerSigningKey++;
  if (buildCounterGeneratedApksPerSigningKey < 3) {
    o.certificateSha256Hash = 'foo';
    o.generatedAssetPackSlices = buildUnnamed41();
    o.generatedRecoveryModules = buildUnnamed42();
    o.generatedSplitApks = buildUnnamed43();
    o.generatedStandaloneApks = buildUnnamed44();
    o.generatedUniversalApk = buildGeneratedUniversalApk();
    o.targetingInfo = buildTargetingInfo();
  }
  buildCounterGeneratedApksPerSigningKey--;
  return o;
}

void checkGeneratedApksPerSigningKey(api.GeneratedApksPerSigningKey o) {
  buildCounterGeneratedApksPerSigningKey++;
  if (buildCounterGeneratedApksPerSigningKey < 3) {
    unittest.expect(
      o.certificateSha256Hash!,
      unittest.equals('foo'),
    );
    checkUnnamed41(o.generatedAssetPackSlices!);
    checkUnnamed42(o.generatedRecoveryModules!);
    checkUnnamed43(o.generatedSplitApks!);
    checkUnnamed44(o.generatedStandaloneApks!);
    checkGeneratedUniversalApk(o.generatedUniversalApk!);
    checkTargetingInfo(o.targetingInfo!);
  }
  buildCounterGeneratedApksPerSigningKey--;
}

core.int buildCounterGeneratedAssetPackSlice = 0;
api.GeneratedAssetPackSlice buildGeneratedAssetPackSlice() {
  final o = api.GeneratedAssetPackSlice();
  buildCounterGeneratedAssetPackSlice++;
  if (buildCounterGeneratedAssetPackSlice < 3) {
    o.downloadId = 'foo';
    o.moduleName = 'foo';
    o.sliceId = 'foo';
    o.version = 'foo';
  }
  buildCounterGeneratedAssetPackSlice--;
  return o;
}

void checkGeneratedAssetPackSlice(api.GeneratedAssetPackSlice o) {
  buildCounterGeneratedAssetPackSlice++;
  if (buildCounterGeneratedAssetPackSlice < 3) {
    unittest.expect(
      o.downloadId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.moduleName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sliceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGeneratedAssetPackSlice--;
}

core.int buildCounterGeneratedRecoveryApk = 0;
api.GeneratedRecoveryApk buildGeneratedRecoveryApk() {
  final o = api.GeneratedRecoveryApk();
  buildCounterGeneratedRecoveryApk++;
  if (buildCounterGeneratedRecoveryApk < 3) {
    o.downloadId = 'foo';
    o.moduleName = 'foo';
    o.recoveryId = 'foo';
    o.recoveryStatus = 'foo';
  }
  buildCounterGeneratedRecoveryApk--;
  return o;
}

void checkGeneratedRecoveryApk(api.GeneratedRecoveryApk o) {
  buildCounterGeneratedRecoveryApk++;
  if (buildCounterGeneratedRecoveryApk < 3) {
    unittest.expect(
      o.downloadId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.moduleName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.recoveryId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.recoveryStatus!,
      unittest.equals('foo'),
    );
  }
  buildCounterGeneratedRecoveryApk--;
}

core.int buildCounterGeneratedSplitApk = 0;
api.GeneratedSplitApk buildGeneratedSplitApk() {
  final o = api.GeneratedSplitApk();
  buildCounterGeneratedSplitApk++;
  if (buildCounterGeneratedSplitApk < 3) {
    o.downloadId = 'foo';
    o.moduleName = 'foo';
    o.splitId = 'foo';
    o.variantId = 42;
  }
  buildCounterGeneratedSplitApk--;
  return o;
}

void checkGeneratedSplitApk(api.GeneratedSplitApk o) {
  buildCounterGeneratedSplitApk++;
  if (buildCounterGeneratedSplitApk < 3) {
    unittest.expect(
      o.downloadId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.moduleName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.splitId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.variantId!,
      unittest.equals(42),
    );
  }
  buildCounterGeneratedSplitApk--;
}

core.int buildCounterGeneratedStandaloneApk = 0;
api.GeneratedStandaloneApk buildGeneratedStandaloneApk() {
  final o = api.GeneratedStandaloneApk();
  buildCounterGeneratedStandaloneApk++;
  if (buildCounterGeneratedStandaloneApk < 3) {
    o.downloadId = 'foo';
    o.variantId = 42;
  }
  buildCounterGeneratedStandaloneApk--;
  return o;
}

void checkGeneratedStandaloneApk(api.GeneratedStandaloneApk o) {
  buildCounterGeneratedStandaloneApk++;
  if (buildCounterGeneratedStandaloneApk < 3) {
    unittest.expect(
      o.downloadId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.variantId!,
      unittest.equals(42),
    );
  }
  buildCounterGeneratedStandaloneApk--;
}

core.int buildCounterGeneratedUniversalApk = 0;
api.GeneratedUniversalApk buildGeneratedUniversalApk() {
  final o = api.GeneratedUniversalApk();
  buildCounterGeneratedUniversalApk++;
  if (buildCounterGeneratedUniversalApk < 3) {
    o.downloadId = 'foo';
  }
  buildCounterGeneratedUniversalApk--;
  return o;
}

void checkGeneratedUniversalApk(api.GeneratedUniversalApk o) {
  buildCounterGeneratedUniversalApk++;
  if (buildCounterGeneratedUniversalApk < 3) {
    unittest.expect(
      o.downloadId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGeneratedUniversalApk--;
}

core.int buildCounterGetSubscriptionOfferRequest = 0;
api.GetSubscriptionOfferRequest buildGetSubscriptionOfferRequest() {
  final o = api.GetSubscriptionOfferRequest();
  buildCounterGetSubscriptionOfferRequest++;
  if (buildCounterGetSubscriptionOfferRequest < 3) {
    o.basePlanId = 'foo';
    o.offerId = 'foo';
    o.packageName = 'foo';
    o.productId = 'foo';
  }
  buildCounterGetSubscriptionOfferRequest--;
  return o;
}

void checkGetSubscriptionOfferRequest(api.GetSubscriptionOfferRequest o) {
  buildCounterGetSubscriptionOfferRequest++;
  if (buildCounterGetSubscriptionOfferRequest < 3) {
    unittest.expect(
      o.basePlanId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.offerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGetSubscriptionOfferRequest--;
}

core.List<core.String> buildUnnamed45() => [
      'foo',
      'foo',
    ];

void checkUnnamed45(core.List<core.String> o) {
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

core.int buildCounterGrant = 0;
api.Grant buildGrant() {
  final o = api.Grant();
  buildCounterGrant++;
  if (buildCounterGrant < 3) {
    o.appLevelPermissions = buildUnnamed45();
    o.name = 'foo';
    o.packageName = 'foo';
  }
  buildCounterGrant--;
  return o;
}

void checkGrant(api.Grant o) {
  buildCounterGrant++;
  if (buildCounterGrant < 3) {
    checkUnnamed45(o.appLevelPermissions!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGrant--;
}

core.int buildCounterImage = 0;
api.Image buildImage() {
  final o = api.Image();
  buildCounterImage++;
  if (buildCounterImage < 3) {
    o.id = 'foo';
    o.sha1 = 'foo';
    o.sha256 = 'foo';
    o.url = 'foo';
  }
  buildCounterImage--;
  return o;
}

void checkImage(api.Image o) {
  buildCounterImage++;
  if (buildCounterImage < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sha1!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sha256!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterImage--;
}

core.List<api.Image> buildUnnamed46() => [
      buildImage(),
      buildImage(),
    ];

void checkUnnamed46(core.List<api.Image> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImage(o[0]);
  checkImage(o[1]);
}

core.int buildCounterImagesDeleteAllResponse = 0;
api.ImagesDeleteAllResponse buildImagesDeleteAllResponse() {
  final o = api.ImagesDeleteAllResponse();
  buildCounterImagesDeleteAllResponse++;
  if (buildCounterImagesDeleteAllResponse < 3) {
    o.deleted = buildUnnamed46();
  }
  buildCounterImagesDeleteAllResponse--;
  return o;
}

void checkImagesDeleteAllResponse(api.ImagesDeleteAllResponse o) {
  buildCounterImagesDeleteAllResponse++;
  if (buildCounterImagesDeleteAllResponse < 3) {
    checkUnnamed46(o.deleted!);
  }
  buildCounterImagesDeleteAllResponse--;
}

core.List<api.Image> buildUnnamed47() => [
      buildImage(),
      buildImage(),
    ];

void checkUnnamed47(core.List<api.Image> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImage(o[0]);
  checkImage(o[1]);
}

core.int buildCounterImagesListResponse = 0;
api.ImagesListResponse buildImagesListResponse() {
  final o = api.ImagesListResponse();
  buildCounterImagesListResponse++;
  if (buildCounterImagesListResponse < 3) {
    o.images = buildUnnamed47();
  }
  buildCounterImagesListResponse--;
  return o;
}

void checkImagesListResponse(api.ImagesListResponse o) {
  buildCounterImagesListResponse++;
  if (buildCounterImagesListResponse < 3) {
    checkUnnamed47(o.images!);
  }
  buildCounterImagesListResponse--;
}

core.int buildCounterImagesUploadResponse = 0;
api.ImagesUploadResponse buildImagesUploadResponse() {
  final o = api.ImagesUploadResponse();
  buildCounterImagesUploadResponse++;
  if (buildCounterImagesUploadResponse < 3) {
    o.image = buildImage();
  }
  buildCounterImagesUploadResponse--;
  return o;
}

void checkImagesUploadResponse(api.ImagesUploadResponse o) {
  buildCounterImagesUploadResponse++;
  if (buildCounterImagesUploadResponse < 3) {
    checkImage(o.image!);
  }
  buildCounterImagesUploadResponse--;
}

core.Map<core.String, api.InAppProductListing> buildUnnamed48() => {
      'x': buildInAppProductListing(),
      'y': buildInAppProductListing(),
    };

void checkUnnamed48(core.Map<core.String, api.InAppProductListing> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInAppProductListing(o['x']!);
  checkInAppProductListing(o['y']!);
}

core.Map<core.String, api.Price> buildUnnamed49() => {
      'x': buildPrice(),
      'y': buildPrice(),
    };

void checkUnnamed49(core.Map<core.String, api.Price> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPrice(o['x']!);
  checkPrice(o['y']!);
}

core.int buildCounterInAppProduct = 0;
api.InAppProduct buildInAppProduct() {
  final o = api.InAppProduct();
  buildCounterInAppProduct++;
  if (buildCounterInAppProduct < 3) {
    o.defaultLanguage = 'foo';
    o.defaultPrice = buildPrice();
    o.gracePeriod = 'foo';
    o.listings = buildUnnamed48();
    o.managedProductTaxesAndComplianceSettings =
        buildManagedProductTaxAndComplianceSettings();
    o.packageName = 'foo';
    o.prices = buildUnnamed49();
    o.purchaseType = 'foo';
    o.sku = 'foo';
    o.status = 'foo';
    o.subscriptionPeriod = 'foo';
    o.subscriptionTaxesAndComplianceSettings =
        buildSubscriptionTaxAndComplianceSettings();
    o.trialPeriod = 'foo';
  }
  buildCounterInAppProduct--;
  return o;
}

void checkInAppProduct(api.InAppProduct o) {
  buildCounterInAppProduct++;
  if (buildCounterInAppProduct < 3) {
    unittest.expect(
      o.defaultLanguage!,
      unittest.equals('foo'),
    );
    checkPrice(o.defaultPrice!);
    unittest.expect(
      o.gracePeriod!,
      unittest.equals('foo'),
    );
    checkUnnamed48(o.listings!);
    checkManagedProductTaxAndComplianceSettings(
        o.managedProductTaxesAndComplianceSettings!);
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    checkUnnamed49(o.prices!);
    unittest.expect(
      o.purchaseType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sku!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subscriptionPeriod!,
      unittest.equals('foo'),
    );
    checkSubscriptionTaxAndComplianceSettings(
        o.subscriptionTaxesAndComplianceSettings!);
    unittest.expect(
      o.trialPeriod!,
      unittest.equals('foo'),
    );
  }
  buildCounterInAppProduct--;
}

core.List<core.String> buildUnnamed50() => [
      'foo',
      'foo',
    ];

void checkUnnamed50(core.List<core.String> o) {
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

core.int buildCounterInAppProductListing = 0;
api.InAppProductListing buildInAppProductListing() {
  final o = api.InAppProductListing();
  buildCounterInAppProductListing++;
  if (buildCounterInAppProductListing < 3) {
    o.benefits = buildUnnamed50();
    o.description = 'foo';
    o.title = 'foo';
  }
  buildCounterInAppProductListing--;
  return o;
}

void checkInAppProductListing(api.InAppProductListing o) {
  buildCounterInAppProductListing++;
  if (buildCounterInAppProductListing < 3) {
    checkUnnamed50(o.benefits!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterInAppProductListing--;
}

core.List<api.InappproductsDeleteRequest> buildUnnamed51() => [
      buildInappproductsDeleteRequest(),
      buildInappproductsDeleteRequest(),
    ];

void checkUnnamed51(core.List<api.InappproductsDeleteRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInappproductsDeleteRequest(o[0]);
  checkInappproductsDeleteRequest(o[1]);
}

core.int buildCounterInappproductsBatchDeleteRequest = 0;
api.InappproductsBatchDeleteRequest buildInappproductsBatchDeleteRequest() {
  final o = api.InappproductsBatchDeleteRequest();
  buildCounterInappproductsBatchDeleteRequest++;
  if (buildCounterInappproductsBatchDeleteRequest < 3) {
    o.requests = buildUnnamed51();
  }
  buildCounterInappproductsBatchDeleteRequest--;
  return o;
}

void checkInappproductsBatchDeleteRequest(
    api.InappproductsBatchDeleteRequest o) {
  buildCounterInappproductsBatchDeleteRequest++;
  if (buildCounterInappproductsBatchDeleteRequest < 3) {
    checkUnnamed51(o.requests!);
  }
  buildCounterInappproductsBatchDeleteRequest--;
}

core.List<api.InAppProduct> buildUnnamed52() => [
      buildInAppProduct(),
      buildInAppProduct(),
    ];

void checkUnnamed52(core.List<api.InAppProduct> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInAppProduct(o[0]);
  checkInAppProduct(o[1]);
}

core.int buildCounterInappproductsBatchGetResponse = 0;
api.InappproductsBatchGetResponse buildInappproductsBatchGetResponse() {
  final o = api.InappproductsBatchGetResponse();
  buildCounterInappproductsBatchGetResponse++;
  if (buildCounterInappproductsBatchGetResponse < 3) {
    o.inappproduct = buildUnnamed52();
  }
  buildCounterInappproductsBatchGetResponse--;
  return o;
}

void checkInappproductsBatchGetResponse(api.InappproductsBatchGetResponse o) {
  buildCounterInappproductsBatchGetResponse++;
  if (buildCounterInappproductsBatchGetResponse < 3) {
    checkUnnamed52(o.inappproduct!);
  }
  buildCounterInappproductsBatchGetResponse--;
}

core.List<api.InappproductsUpdateRequest> buildUnnamed53() => [
      buildInappproductsUpdateRequest(),
      buildInappproductsUpdateRequest(),
    ];

void checkUnnamed53(core.List<api.InappproductsUpdateRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInappproductsUpdateRequest(o[0]);
  checkInappproductsUpdateRequest(o[1]);
}

core.int buildCounterInappproductsBatchUpdateRequest = 0;
api.InappproductsBatchUpdateRequest buildInappproductsBatchUpdateRequest() {
  final o = api.InappproductsBatchUpdateRequest();
  buildCounterInappproductsBatchUpdateRequest++;
  if (buildCounterInappproductsBatchUpdateRequest < 3) {
    o.requests = buildUnnamed53();
  }
  buildCounterInappproductsBatchUpdateRequest--;
  return o;
}

void checkInappproductsBatchUpdateRequest(
    api.InappproductsBatchUpdateRequest o) {
  buildCounterInappproductsBatchUpdateRequest++;
  if (buildCounterInappproductsBatchUpdateRequest < 3) {
    checkUnnamed53(o.requests!);
  }
  buildCounterInappproductsBatchUpdateRequest--;
}

core.List<api.InAppProduct> buildUnnamed54() => [
      buildInAppProduct(),
      buildInAppProduct(),
    ];

void checkUnnamed54(core.List<api.InAppProduct> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInAppProduct(o[0]);
  checkInAppProduct(o[1]);
}

core.int buildCounterInappproductsBatchUpdateResponse = 0;
api.InappproductsBatchUpdateResponse buildInappproductsBatchUpdateResponse() {
  final o = api.InappproductsBatchUpdateResponse();
  buildCounterInappproductsBatchUpdateResponse++;
  if (buildCounterInappproductsBatchUpdateResponse < 3) {
    o.inappproducts = buildUnnamed54();
  }
  buildCounterInappproductsBatchUpdateResponse--;
  return o;
}

void checkInappproductsBatchUpdateResponse(
    api.InappproductsBatchUpdateResponse o) {
  buildCounterInappproductsBatchUpdateResponse++;
  if (buildCounterInappproductsBatchUpdateResponse < 3) {
    checkUnnamed54(o.inappproducts!);
  }
  buildCounterInappproductsBatchUpdateResponse--;
}

core.int buildCounterInappproductsDeleteRequest = 0;
api.InappproductsDeleteRequest buildInappproductsDeleteRequest() {
  final o = api.InappproductsDeleteRequest();
  buildCounterInappproductsDeleteRequest++;
  if (buildCounterInappproductsDeleteRequest < 3) {
    o.latencyTolerance = 'foo';
    o.packageName = 'foo';
    o.sku = 'foo';
  }
  buildCounterInappproductsDeleteRequest--;
  return o;
}

void checkInappproductsDeleteRequest(api.InappproductsDeleteRequest o) {
  buildCounterInappproductsDeleteRequest++;
  if (buildCounterInappproductsDeleteRequest < 3) {
    unittest.expect(
      o.latencyTolerance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sku!,
      unittest.equals('foo'),
    );
  }
  buildCounterInappproductsDeleteRequest--;
}

core.List<api.InAppProduct> buildUnnamed55() => [
      buildInAppProduct(),
      buildInAppProduct(),
    ];

void checkUnnamed55(core.List<api.InAppProduct> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInAppProduct(o[0]);
  checkInAppProduct(o[1]);
}

core.int buildCounterInappproductsListResponse = 0;
api.InappproductsListResponse buildInappproductsListResponse() {
  final o = api.InappproductsListResponse();
  buildCounterInappproductsListResponse++;
  if (buildCounterInappproductsListResponse < 3) {
    o.inappproduct = buildUnnamed55();
    o.kind = 'foo';
    o.pageInfo = buildPageInfo();
    o.tokenPagination = buildTokenPagination();
  }
  buildCounterInappproductsListResponse--;
  return o;
}

void checkInappproductsListResponse(api.InappproductsListResponse o) {
  buildCounterInappproductsListResponse++;
  if (buildCounterInappproductsListResponse < 3) {
    checkUnnamed55(o.inappproduct!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkPageInfo(o.pageInfo!);
    checkTokenPagination(o.tokenPagination!);
  }
  buildCounterInappproductsListResponse--;
}

core.int buildCounterInappproductsUpdateRequest = 0;
api.InappproductsUpdateRequest buildInappproductsUpdateRequest() {
  final o = api.InappproductsUpdateRequest();
  buildCounterInappproductsUpdateRequest++;
  if (buildCounterInappproductsUpdateRequest < 3) {
    o.allowMissing = true;
    o.autoConvertMissingPrices = true;
    o.inappproduct = buildInAppProduct();
    o.latencyTolerance = 'foo';
    o.packageName = 'foo';
    o.sku = 'foo';
  }
  buildCounterInappproductsUpdateRequest--;
  return o;
}

void checkInappproductsUpdateRequest(api.InappproductsUpdateRequest o) {
  buildCounterInappproductsUpdateRequest++;
  if (buildCounterInappproductsUpdateRequest < 3) {
    unittest.expect(o.allowMissing!, unittest.isTrue);
    unittest.expect(o.autoConvertMissingPrices!, unittest.isTrue);
    checkInAppProduct(o.inappproduct!);
    unittest.expect(
      o.latencyTolerance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sku!,
      unittest.equals('foo'),
    );
  }
  buildCounterInappproductsUpdateRequest--;
}

core.int buildCounterInternalAppSharingArtifact = 0;
api.InternalAppSharingArtifact buildInternalAppSharingArtifact() {
  final o = api.InternalAppSharingArtifact();
  buildCounterInternalAppSharingArtifact++;
  if (buildCounterInternalAppSharingArtifact < 3) {
    o.certificateFingerprint = 'foo';
    o.downloadUrl = 'foo';
    o.sha256 = 'foo';
  }
  buildCounterInternalAppSharingArtifact--;
  return o;
}

void checkInternalAppSharingArtifact(api.InternalAppSharingArtifact o) {
  buildCounterInternalAppSharingArtifact++;
  if (buildCounterInternalAppSharingArtifact < 3) {
    unittest.expect(
      o.certificateFingerprint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.downloadUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sha256!,
      unittest.equals('foo'),
    );
  }
  buildCounterInternalAppSharingArtifact--;
}

core.int buildCounterIntroductoryPriceInfo = 0;
api.IntroductoryPriceInfo buildIntroductoryPriceInfo() {
  final o = api.IntroductoryPriceInfo();
  buildCounterIntroductoryPriceInfo++;
  if (buildCounterIntroductoryPriceInfo < 3) {
    o.introductoryPriceAmountMicros = 'foo';
    o.introductoryPriceCurrencyCode = 'foo';
    o.introductoryPriceCycles = 42;
    o.introductoryPricePeriod = 'foo';
  }
  buildCounterIntroductoryPriceInfo--;
  return o;
}

void checkIntroductoryPriceInfo(api.IntroductoryPriceInfo o) {
  buildCounterIntroductoryPriceInfo++;
  if (buildCounterIntroductoryPriceInfo < 3) {
    unittest.expect(
      o.introductoryPriceAmountMicros!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.introductoryPriceCurrencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.introductoryPriceCycles!,
      unittest.equals(42),
    );
    unittest.expect(
      o.introductoryPricePeriod!,
      unittest.equals('foo'),
    );
  }
  buildCounterIntroductoryPriceInfo--;
}

core.List<core.String> buildUnnamed56() => [
      'foo',
      'foo',
    ];

void checkUnnamed56(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed57() => [
      'foo',
      'foo',
    ];

void checkUnnamed57(core.List<core.String> o) {
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

core.int buildCounterLanguageTargeting = 0;
api.LanguageTargeting buildLanguageTargeting() {
  final o = api.LanguageTargeting();
  buildCounterLanguageTargeting++;
  if (buildCounterLanguageTargeting < 3) {
    o.alternatives = buildUnnamed56();
    o.value = buildUnnamed57();
  }
  buildCounterLanguageTargeting--;
  return o;
}

void checkLanguageTargeting(api.LanguageTargeting o) {
  buildCounterLanguageTargeting++;
  if (buildCounterLanguageTargeting < 3) {
    checkUnnamed56(o.alternatives!);
    checkUnnamed57(o.value!);
  }
  buildCounterLanguageTargeting--;
}

core.List<api.AppRecoveryAction> buildUnnamed58() => [
      buildAppRecoveryAction(),
      buildAppRecoveryAction(),
    ];

void checkUnnamed58(core.List<api.AppRecoveryAction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAppRecoveryAction(o[0]);
  checkAppRecoveryAction(o[1]);
}

core.int buildCounterListAppRecoveriesResponse = 0;
api.ListAppRecoveriesResponse buildListAppRecoveriesResponse() {
  final o = api.ListAppRecoveriesResponse();
  buildCounterListAppRecoveriesResponse++;
  if (buildCounterListAppRecoveriesResponse < 3) {
    o.recoveryActions = buildUnnamed58();
  }
  buildCounterListAppRecoveriesResponse--;
  return o;
}

void checkListAppRecoveriesResponse(api.ListAppRecoveriesResponse o) {
  buildCounterListAppRecoveriesResponse++;
  if (buildCounterListAppRecoveriesResponse < 3) {
    checkUnnamed58(o.recoveryActions!);
  }
  buildCounterListAppRecoveriesResponse--;
}

core.List<api.DeviceTierConfig> buildUnnamed59() => [
      buildDeviceTierConfig(),
      buildDeviceTierConfig(),
    ];

void checkUnnamed59(core.List<api.DeviceTierConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceTierConfig(o[0]);
  checkDeviceTierConfig(o[1]);
}

core.int buildCounterListDeviceTierConfigsResponse = 0;
api.ListDeviceTierConfigsResponse buildListDeviceTierConfigsResponse() {
  final o = api.ListDeviceTierConfigsResponse();
  buildCounterListDeviceTierConfigsResponse++;
  if (buildCounterListDeviceTierConfigsResponse < 3) {
    o.deviceTierConfigs = buildUnnamed59();
    o.nextPageToken = 'foo';
  }
  buildCounterListDeviceTierConfigsResponse--;
  return o;
}

void checkListDeviceTierConfigsResponse(api.ListDeviceTierConfigsResponse o) {
  buildCounterListDeviceTierConfigsResponse++;
  if (buildCounterListDeviceTierConfigsResponse < 3) {
    checkUnnamed59(o.deviceTierConfigs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListDeviceTierConfigsResponse--;
}

core.List<api.SubscriptionOffer> buildUnnamed60() => [
      buildSubscriptionOffer(),
      buildSubscriptionOffer(),
    ];

void checkUnnamed60(core.List<api.SubscriptionOffer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubscriptionOffer(o[0]);
  checkSubscriptionOffer(o[1]);
}

core.int buildCounterListSubscriptionOffersResponse = 0;
api.ListSubscriptionOffersResponse buildListSubscriptionOffersResponse() {
  final o = api.ListSubscriptionOffersResponse();
  buildCounterListSubscriptionOffersResponse++;
  if (buildCounterListSubscriptionOffersResponse < 3) {
    o.nextPageToken = 'foo';
    o.subscriptionOffers = buildUnnamed60();
  }
  buildCounterListSubscriptionOffersResponse--;
  return o;
}

void checkListSubscriptionOffersResponse(api.ListSubscriptionOffersResponse o) {
  buildCounterListSubscriptionOffersResponse++;
  if (buildCounterListSubscriptionOffersResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed60(o.subscriptionOffers!);
  }
  buildCounterListSubscriptionOffersResponse--;
}

core.List<api.Subscription> buildUnnamed61() => [
      buildSubscription(),
      buildSubscription(),
    ];

void checkUnnamed61(core.List<api.Subscription> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubscription(o[0]);
  checkSubscription(o[1]);
}

core.int buildCounterListSubscriptionsResponse = 0;
api.ListSubscriptionsResponse buildListSubscriptionsResponse() {
  final o = api.ListSubscriptionsResponse();
  buildCounterListSubscriptionsResponse++;
  if (buildCounterListSubscriptionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.subscriptions = buildUnnamed61();
  }
  buildCounterListSubscriptionsResponse--;
  return o;
}

void checkListSubscriptionsResponse(api.ListSubscriptionsResponse o) {
  buildCounterListSubscriptionsResponse++;
  if (buildCounterListSubscriptionsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed61(o.subscriptions!);
  }
  buildCounterListSubscriptionsResponse--;
}

core.List<api.User> buildUnnamed62() => [
      buildUser(),
      buildUser(),
    ];

void checkUnnamed62(core.List<api.User> o) {
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
    o.users = buildUnnamed62();
  }
  buildCounterListUsersResponse--;
  return o;
}

void checkListUsersResponse(api.ListUsersResponse o) {
  buildCounterListUsersResponse++;
  if (buildCounterListUsersResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed62(o.users!);
  }
  buildCounterListUsersResponse--;
}

core.int buildCounterListing = 0;
api.Listing buildListing() {
  final o = api.Listing();
  buildCounterListing++;
  if (buildCounterListing < 3) {
    o.fullDescription = 'foo';
    o.language = 'foo';
    o.shortDescription = 'foo';
    o.title = 'foo';
    o.video = 'foo';
  }
  buildCounterListing--;
  return o;
}

void checkListing(api.Listing o) {
  buildCounterListing++;
  if (buildCounterListing < 3) {
    unittest.expect(
      o.fullDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shortDescription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.video!,
      unittest.equals('foo'),
    );
  }
  buildCounterListing--;
}

core.List<api.Listing> buildUnnamed63() => [
      buildListing(),
      buildListing(),
    ];

void checkUnnamed63(core.List<api.Listing> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkListing(o[0]);
  checkListing(o[1]);
}

core.int buildCounterListingsListResponse = 0;
api.ListingsListResponse buildListingsListResponse() {
  final o = api.ListingsListResponse();
  buildCounterListingsListResponse++;
  if (buildCounterListingsListResponse < 3) {
    o.kind = 'foo';
    o.listings = buildUnnamed63();
  }
  buildCounterListingsListResponse--;
  return o;
}

void checkListingsListResponse(api.ListingsListResponse o) {
  buildCounterListingsListResponse++;
  if (buildCounterListingsListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed63(o.listings!);
  }
  buildCounterListingsListResponse--;
}

core.int buildCounterLocalizedText = 0;
api.LocalizedText buildLocalizedText() {
  final o = api.LocalizedText();
  buildCounterLocalizedText++;
  if (buildCounterLocalizedText < 3) {
    o.language = 'foo';
    o.text = 'foo';
  }
  buildCounterLocalizedText--;
  return o;
}

void checkLocalizedText(api.LocalizedText o) {
  buildCounterLocalizedText++;
  if (buildCounterLocalizedText < 3) {
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocalizedText--;
}

core.Map<core.String, api.RegionalTaxRateInfo> buildUnnamed64() => {
      'x': buildRegionalTaxRateInfo(),
      'y': buildRegionalTaxRateInfo(),
    };

void checkUnnamed64(core.Map<core.String, api.RegionalTaxRateInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegionalTaxRateInfo(o['x']!);
  checkRegionalTaxRateInfo(o['y']!);
}

core.int buildCounterManagedProductTaxAndComplianceSettings = 0;
api.ManagedProductTaxAndComplianceSettings
    buildManagedProductTaxAndComplianceSettings() {
  final o = api.ManagedProductTaxAndComplianceSettings();
  buildCounterManagedProductTaxAndComplianceSettings++;
  if (buildCounterManagedProductTaxAndComplianceSettings < 3) {
    o.eeaWithdrawalRightType = 'foo';
    o.isTokenizedDigitalAsset = true;
    o.taxRateInfoByRegionCode = buildUnnamed64();
  }
  buildCounterManagedProductTaxAndComplianceSettings--;
  return o;
}

void checkManagedProductTaxAndComplianceSettings(
    api.ManagedProductTaxAndComplianceSettings o) {
  buildCounterManagedProductTaxAndComplianceSettings++;
  if (buildCounterManagedProductTaxAndComplianceSettings < 3) {
    unittest.expect(
      o.eeaWithdrawalRightType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isTokenizedDigitalAsset!, unittest.isTrue);
    checkUnnamed64(o.taxRateInfoByRegionCode!);
  }
  buildCounterManagedProductTaxAndComplianceSettings--;
}

core.List<api.RegionalPriceMigrationConfig> buildUnnamed65() => [
      buildRegionalPriceMigrationConfig(),
      buildRegionalPriceMigrationConfig(),
    ];

void checkUnnamed65(core.List<api.RegionalPriceMigrationConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegionalPriceMigrationConfig(o[0]);
  checkRegionalPriceMigrationConfig(o[1]);
}

core.int buildCounterMigrateBasePlanPricesRequest = 0;
api.MigrateBasePlanPricesRequest buildMigrateBasePlanPricesRequest() {
  final o = api.MigrateBasePlanPricesRequest();
  buildCounterMigrateBasePlanPricesRequest++;
  if (buildCounterMigrateBasePlanPricesRequest < 3) {
    o.basePlanId = 'foo';
    o.latencyTolerance = 'foo';
    o.packageName = 'foo';
    o.productId = 'foo';
    o.regionalPriceMigrations = buildUnnamed65();
    o.regionsVersion = buildRegionsVersion();
  }
  buildCounterMigrateBasePlanPricesRequest--;
  return o;
}

void checkMigrateBasePlanPricesRequest(api.MigrateBasePlanPricesRequest o) {
  buildCounterMigrateBasePlanPricesRequest++;
  if (buildCounterMigrateBasePlanPricesRequest < 3) {
    unittest.expect(
      o.basePlanId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.latencyTolerance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    checkUnnamed65(o.regionalPriceMigrations!);
    checkRegionsVersion(o.regionsVersion!);
  }
  buildCounterMigrateBasePlanPricesRequest--;
}

core.int buildCounterMigrateBasePlanPricesResponse = 0;
api.MigrateBasePlanPricesResponse buildMigrateBasePlanPricesResponse() {
  final o = api.MigrateBasePlanPricesResponse();
  buildCounterMigrateBasePlanPricesResponse++;
  if (buildCounterMigrateBasePlanPricesResponse < 3) {}
  buildCounterMigrateBasePlanPricesResponse--;
  return o;
}

void checkMigrateBasePlanPricesResponse(api.MigrateBasePlanPricesResponse o) {
  buildCounterMigrateBasePlanPricesResponse++;
  if (buildCounterMigrateBasePlanPricesResponse < 3) {}
  buildCounterMigrateBasePlanPricesResponse--;
}

core.List<core.String> buildUnnamed66() => [
      'foo',
      'foo',
    ];

void checkUnnamed66(core.List<core.String> o) {
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

core.int buildCounterModuleMetadata = 0;
api.ModuleMetadata buildModuleMetadata() {
  final o = api.ModuleMetadata();
  buildCounterModuleMetadata++;
  if (buildCounterModuleMetadata < 3) {
    o.deliveryType = 'foo';
    o.dependencies = buildUnnamed66();
    o.moduleType = 'foo';
    o.name = 'foo';
    o.targeting = buildModuleTargeting();
  }
  buildCounterModuleMetadata--;
  return o;
}

void checkModuleMetadata(api.ModuleMetadata o) {
  buildCounterModuleMetadata++;
  if (buildCounterModuleMetadata < 3) {
    unittest.expect(
      o.deliveryType!,
      unittest.equals('foo'),
    );
    checkUnnamed66(o.dependencies!);
    unittest.expect(
      o.moduleType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkModuleTargeting(o.targeting!);
  }
  buildCounterModuleMetadata--;
}

core.List<api.DeviceFeatureTargeting> buildUnnamed67() => [
      buildDeviceFeatureTargeting(),
      buildDeviceFeatureTargeting(),
    ];

void checkUnnamed67(core.List<api.DeviceFeatureTargeting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceFeatureTargeting(o[0]);
  checkDeviceFeatureTargeting(o[1]);
}

core.int buildCounterModuleTargeting = 0;
api.ModuleTargeting buildModuleTargeting() {
  final o = api.ModuleTargeting();
  buildCounterModuleTargeting++;
  if (buildCounterModuleTargeting < 3) {
    o.deviceFeatureTargeting = buildUnnamed67();
    o.sdkVersionTargeting = buildSdkVersionTargeting();
    o.userCountriesTargeting = buildUserCountriesTargeting();
  }
  buildCounterModuleTargeting--;
  return o;
}

void checkModuleTargeting(api.ModuleTargeting o) {
  buildCounterModuleTargeting++;
  if (buildCounterModuleTargeting < 3) {
    checkUnnamed67(o.deviceFeatureTargeting!);
    checkSdkVersionTargeting(o.sdkVersionTargeting!);
    checkUserCountriesTargeting(o.userCountriesTargeting!);
  }
  buildCounterModuleTargeting--;
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
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nanos!,
      unittest.equals(42),
    );
    unittest.expect(
      o.units!,
      unittest.equals('foo'),
    );
  }
  buildCounterMoney--;
}

core.List<api.Abi> buildUnnamed68() => [
      buildAbi(),
      buildAbi(),
    ];

void checkUnnamed68(core.List<api.Abi> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAbi(o[0]);
  checkAbi(o[1]);
}

core.int buildCounterMultiAbi = 0;
api.MultiAbi buildMultiAbi() {
  final o = api.MultiAbi();
  buildCounterMultiAbi++;
  if (buildCounterMultiAbi < 3) {
    o.abi = buildUnnamed68();
  }
  buildCounterMultiAbi--;
  return o;
}

void checkMultiAbi(api.MultiAbi o) {
  buildCounterMultiAbi++;
  if (buildCounterMultiAbi < 3) {
    checkUnnamed68(o.abi!);
  }
  buildCounterMultiAbi--;
}

core.List<api.MultiAbi> buildUnnamed69() => [
      buildMultiAbi(),
      buildMultiAbi(),
    ];

void checkUnnamed69(core.List<api.MultiAbi> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMultiAbi(o[0]);
  checkMultiAbi(o[1]);
}

core.List<api.MultiAbi> buildUnnamed70() => [
      buildMultiAbi(),
      buildMultiAbi(),
    ];

void checkUnnamed70(core.List<api.MultiAbi> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMultiAbi(o[0]);
  checkMultiAbi(o[1]);
}

core.int buildCounterMultiAbiTargeting = 0;
api.MultiAbiTargeting buildMultiAbiTargeting() {
  final o = api.MultiAbiTargeting();
  buildCounterMultiAbiTargeting++;
  if (buildCounterMultiAbiTargeting < 3) {
    o.alternatives = buildUnnamed69();
    o.value = buildUnnamed70();
  }
  buildCounterMultiAbiTargeting--;
  return o;
}

void checkMultiAbiTargeting(api.MultiAbiTargeting o) {
  buildCounterMultiAbiTargeting++;
  if (buildCounterMultiAbiTargeting < 3) {
    checkUnnamed69(o.alternatives!);
    checkUnnamed70(o.value!);
  }
  buildCounterMultiAbiTargeting--;
}

core.List<core.String> buildUnnamed71() => [
      'foo',
      'foo',
    ];

void checkUnnamed71(core.List<core.String> o) {
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

core.int buildCounterOfferDetails = 0;
api.OfferDetails buildOfferDetails() {
  final o = api.OfferDetails();
  buildCounterOfferDetails++;
  if (buildCounterOfferDetails < 3) {
    o.basePlanId = 'foo';
    o.offerId = 'foo';
    o.offerTags = buildUnnamed71();
  }
  buildCounterOfferDetails--;
  return o;
}

void checkOfferDetails(api.OfferDetails o) {
  buildCounterOfferDetails++;
  if (buildCounterOfferDetails < 3) {
    unittest.expect(
      o.basePlanId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.offerId!,
      unittest.equals('foo'),
    );
    checkUnnamed71(o.offerTags!);
  }
  buildCounterOfferDetails--;
}

core.int buildCounterOfferTag = 0;
api.OfferTag buildOfferTag() {
  final o = api.OfferTag();
  buildCounterOfferTag++;
  if (buildCounterOfferTag < 3) {
    o.tag = 'foo';
  }
  buildCounterOfferTag--;
  return o;
}

void checkOfferTag(api.OfferTag o) {
  buildCounterOfferTag++;
  if (buildCounterOfferTag < 3) {
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
  }
  buildCounterOfferTag--;
}

core.int buildCounterOneTimeExternalTransaction = 0;
api.OneTimeExternalTransaction buildOneTimeExternalTransaction() {
  final o = api.OneTimeExternalTransaction();
  buildCounterOneTimeExternalTransaction++;
  if (buildCounterOneTimeExternalTransaction < 3) {
    o.externalTransactionToken = 'foo';
  }
  buildCounterOneTimeExternalTransaction--;
  return o;
}

void checkOneTimeExternalTransaction(api.OneTimeExternalTransaction o) {
  buildCounterOneTimeExternalTransaction++;
  if (buildCounterOneTimeExternalTransaction < 3) {
    unittest.expect(
      o.externalTransactionToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterOneTimeExternalTransaction--;
}

core.int buildCounterOtherRegionsBasePlanConfig = 0;
api.OtherRegionsBasePlanConfig buildOtherRegionsBasePlanConfig() {
  final o = api.OtherRegionsBasePlanConfig();
  buildCounterOtherRegionsBasePlanConfig++;
  if (buildCounterOtherRegionsBasePlanConfig < 3) {
    o.eurPrice = buildMoney();
    o.newSubscriberAvailability = true;
    o.usdPrice = buildMoney();
  }
  buildCounterOtherRegionsBasePlanConfig--;
  return o;
}

void checkOtherRegionsBasePlanConfig(api.OtherRegionsBasePlanConfig o) {
  buildCounterOtherRegionsBasePlanConfig++;
  if (buildCounterOtherRegionsBasePlanConfig < 3) {
    checkMoney(o.eurPrice!);
    unittest.expect(o.newSubscriberAvailability!, unittest.isTrue);
    checkMoney(o.usdPrice!);
  }
  buildCounterOtherRegionsBasePlanConfig--;
}

core.int buildCounterOtherRegionsSubscriptionOfferConfig = 0;
api.OtherRegionsSubscriptionOfferConfig
    buildOtherRegionsSubscriptionOfferConfig() {
  final o = api.OtherRegionsSubscriptionOfferConfig();
  buildCounterOtherRegionsSubscriptionOfferConfig++;
  if (buildCounterOtherRegionsSubscriptionOfferConfig < 3) {
    o.otherRegionsNewSubscriberAvailability = true;
  }
  buildCounterOtherRegionsSubscriptionOfferConfig--;
  return o;
}

void checkOtherRegionsSubscriptionOfferConfig(
    api.OtherRegionsSubscriptionOfferConfig o) {
  buildCounterOtherRegionsSubscriptionOfferConfig++;
  if (buildCounterOtherRegionsSubscriptionOfferConfig < 3) {
    unittest.expect(o.otherRegionsNewSubscriberAvailability!, unittest.isTrue);
  }
  buildCounterOtherRegionsSubscriptionOfferConfig--;
}

core.int buildCounterOtherRegionsSubscriptionOfferPhaseConfig = 0;
api.OtherRegionsSubscriptionOfferPhaseConfig
    buildOtherRegionsSubscriptionOfferPhaseConfig() {
  final o = api.OtherRegionsSubscriptionOfferPhaseConfig();
  buildCounterOtherRegionsSubscriptionOfferPhaseConfig++;
  if (buildCounterOtherRegionsSubscriptionOfferPhaseConfig < 3) {
    o.absoluteDiscounts = buildOtherRegionsSubscriptionOfferPhasePrices();
    o.otherRegionsPrices = buildOtherRegionsSubscriptionOfferPhasePrices();
    o.relativeDiscount = 42.0;
  }
  buildCounterOtherRegionsSubscriptionOfferPhaseConfig--;
  return o;
}

void checkOtherRegionsSubscriptionOfferPhaseConfig(
    api.OtherRegionsSubscriptionOfferPhaseConfig o) {
  buildCounterOtherRegionsSubscriptionOfferPhaseConfig++;
  if (buildCounterOtherRegionsSubscriptionOfferPhaseConfig < 3) {
    checkOtherRegionsSubscriptionOfferPhasePrices(o.absoluteDiscounts!);
    checkOtherRegionsSubscriptionOfferPhasePrices(o.otherRegionsPrices!);
    unittest.expect(
      o.relativeDiscount!,
      unittest.equals(42.0),
    );
  }
  buildCounterOtherRegionsSubscriptionOfferPhaseConfig--;
}

core.int buildCounterOtherRegionsSubscriptionOfferPhasePrices = 0;
api.OtherRegionsSubscriptionOfferPhasePrices
    buildOtherRegionsSubscriptionOfferPhasePrices() {
  final o = api.OtherRegionsSubscriptionOfferPhasePrices();
  buildCounterOtherRegionsSubscriptionOfferPhasePrices++;
  if (buildCounterOtherRegionsSubscriptionOfferPhasePrices < 3) {
    o.eurPrice = buildMoney();
    o.usdPrice = buildMoney();
  }
  buildCounterOtherRegionsSubscriptionOfferPhasePrices--;
  return o;
}

void checkOtherRegionsSubscriptionOfferPhasePrices(
    api.OtherRegionsSubscriptionOfferPhasePrices o) {
  buildCounterOtherRegionsSubscriptionOfferPhasePrices++;
  if (buildCounterOtherRegionsSubscriptionOfferPhasePrices < 3) {
    checkMoney(o.eurPrice!);
    checkMoney(o.usdPrice!);
  }
  buildCounterOtherRegionsSubscriptionOfferPhasePrices--;
}

core.int buildCounterPageInfo = 0;
api.PageInfo buildPageInfo() {
  final o = api.PageInfo();
  buildCounterPageInfo++;
  if (buildCounterPageInfo < 3) {
    o.resultPerPage = 42;
    o.startIndex = 42;
    o.totalResults = 42;
  }
  buildCounterPageInfo--;
  return o;
}

void checkPageInfo(api.PageInfo o) {
  buildCounterPageInfo++;
  if (buildCounterPageInfo < 3) {
    unittest.expect(
      o.resultPerPage!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalResults!,
      unittest.equals(42),
    );
  }
  buildCounterPageInfo--;
}

core.int buildCounterPartialRefund = 0;
api.PartialRefund buildPartialRefund() {
  final o = api.PartialRefund();
  buildCounterPartialRefund++;
  if (buildCounterPartialRefund < 3) {
    o.refundId = 'foo';
    o.refundPreTaxAmount = buildPrice();
  }
  buildCounterPartialRefund--;
  return o;
}

void checkPartialRefund(api.PartialRefund o) {
  buildCounterPartialRefund++;
  if (buildCounterPartialRefund < 3) {
    unittest.expect(
      o.refundId!,
      unittest.equals('foo'),
    );
    checkPrice(o.refundPreTaxAmount!);
  }
  buildCounterPartialRefund--;
}

core.int buildCounterPausedStateContext = 0;
api.PausedStateContext buildPausedStateContext() {
  final o = api.PausedStateContext();
  buildCounterPausedStateContext++;
  if (buildCounterPausedStateContext < 3) {
    o.autoResumeTime = 'foo';
  }
  buildCounterPausedStateContext--;
  return o;
}

void checkPausedStateContext(api.PausedStateContext o) {
  buildCounterPausedStateContext++;
  if (buildCounterPausedStateContext < 3) {
    unittest.expect(
      o.autoResumeTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterPausedStateContext--;
}

core.int buildCounterPrepaidBasePlanType = 0;
api.PrepaidBasePlanType buildPrepaidBasePlanType() {
  final o = api.PrepaidBasePlanType();
  buildCounterPrepaidBasePlanType++;
  if (buildCounterPrepaidBasePlanType < 3) {
    o.billingPeriodDuration = 'foo';
    o.timeExtension = 'foo';
  }
  buildCounterPrepaidBasePlanType--;
  return o;
}

void checkPrepaidBasePlanType(api.PrepaidBasePlanType o) {
  buildCounterPrepaidBasePlanType++;
  if (buildCounterPrepaidBasePlanType < 3) {
    unittest.expect(
      o.billingPeriodDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timeExtension!,
      unittest.equals('foo'),
    );
  }
  buildCounterPrepaidBasePlanType--;
}

core.int buildCounterPrepaidPlan = 0;
api.PrepaidPlan buildPrepaidPlan() {
  final o = api.PrepaidPlan();
  buildCounterPrepaidPlan++;
  if (buildCounterPrepaidPlan < 3) {
    o.allowExtendAfterTime = 'foo';
  }
  buildCounterPrepaidPlan--;
  return o;
}

void checkPrepaidPlan(api.PrepaidPlan o) {
  buildCounterPrepaidPlan++;
  if (buildCounterPrepaidPlan < 3) {
    unittest.expect(
      o.allowExtendAfterTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterPrepaidPlan--;
}

core.int buildCounterPrice = 0;
api.Price buildPrice() {
  final o = api.Price();
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    o.currency = 'foo';
    o.priceMicros = 'foo';
  }
  buildCounterPrice--;
  return o;
}

void checkPrice(api.Price o) {
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    unittest.expect(
      o.currency!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.priceMicros!,
      unittest.equals('foo'),
    );
  }
  buildCounterPrice--;
}

core.int buildCounterProductPurchase = 0;
api.ProductPurchase buildProductPurchase() {
  final o = api.ProductPurchase();
  buildCounterProductPurchase++;
  if (buildCounterProductPurchase < 3) {
    o.acknowledgementState = 42;
    o.consumptionState = 42;
    o.developerPayload = 'foo';
    o.kind = 'foo';
    o.obfuscatedExternalAccountId = 'foo';
    o.obfuscatedExternalProfileId = 'foo';
    o.orderId = 'foo';
    o.productId = 'foo';
    o.purchaseState = 42;
    o.purchaseTimeMillis = 'foo';
    o.purchaseToken = 'foo';
    o.purchaseType = 42;
    o.quantity = 42;
    o.refundableQuantity = 42;
    o.regionCode = 'foo';
  }
  buildCounterProductPurchase--;
  return o;
}

void checkProductPurchase(api.ProductPurchase o) {
  buildCounterProductPurchase++;
  if (buildCounterProductPurchase < 3) {
    unittest.expect(
      o.acknowledgementState!,
      unittest.equals(42),
    );
    unittest.expect(
      o.consumptionState!,
      unittest.equals(42),
    );
    unittest.expect(
      o.developerPayload!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.obfuscatedExternalAccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.obfuscatedExternalProfileId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.purchaseState!,
      unittest.equals(42),
    );
    unittest.expect(
      o.purchaseTimeMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.purchaseToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.purchaseType!,
      unittest.equals(42),
    );
    unittest.expect(
      o.quantity!,
      unittest.equals(42),
    );
    unittest.expect(
      o.refundableQuantity!,
      unittest.equals(42),
    );
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductPurchase--;
}

core.int buildCounterProductPurchasesAcknowledgeRequest = 0;
api.ProductPurchasesAcknowledgeRequest
    buildProductPurchasesAcknowledgeRequest() {
  final o = api.ProductPurchasesAcknowledgeRequest();
  buildCounterProductPurchasesAcknowledgeRequest++;
  if (buildCounterProductPurchasesAcknowledgeRequest < 3) {
    o.developerPayload = 'foo';
  }
  buildCounterProductPurchasesAcknowledgeRequest--;
  return o;
}

void checkProductPurchasesAcknowledgeRequest(
    api.ProductPurchasesAcknowledgeRequest o) {
  buildCounterProductPurchasesAcknowledgeRequest++;
  if (buildCounterProductPurchasesAcknowledgeRequest < 3) {
    unittest.expect(
      o.developerPayload!,
      unittest.equals('foo'),
    );
  }
  buildCounterProductPurchasesAcknowledgeRequest--;
}

core.int buildCounterRecurringExternalTransaction = 0;
api.RecurringExternalTransaction buildRecurringExternalTransaction() {
  final o = api.RecurringExternalTransaction();
  buildCounterRecurringExternalTransaction++;
  if (buildCounterRecurringExternalTransaction < 3) {
    o.externalSubscription = buildExternalSubscription();
    o.externalTransactionToken = 'foo';
    o.initialExternalTransactionId = 'foo';
    o.migratedTransactionProgram = 'foo';
  }
  buildCounterRecurringExternalTransaction--;
  return o;
}

void checkRecurringExternalTransaction(api.RecurringExternalTransaction o) {
  buildCounterRecurringExternalTransaction++;
  if (buildCounterRecurringExternalTransaction < 3) {
    checkExternalSubscription(o.externalSubscription!);
    unittest.expect(
      o.externalTransactionToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.initialExternalTransactionId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.migratedTransactionProgram!,
      unittest.equals('foo'),
    );
  }
  buildCounterRecurringExternalTransaction--;
}

core.int buildCounterRefundExternalTransactionRequest = 0;
api.RefundExternalTransactionRequest buildRefundExternalTransactionRequest() {
  final o = api.RefundExternalTransactionRequest();
  buildCounterRefundExternalTransactionRequest++;
  if (buildCounterRefundExternalTransactionRequest < 3) {
    o.fullRefund = buildFullRefund();
    o.partialRefund = buildPartialRefund();
    o.refundTime = 'foo';
  }
  buildCounterRefundExternalTransactionRequest--;
  return o;
}

void checkRefundExternalTransactionRequest(
    api.RefundExternalTransactionRequest o) {
  buildCounterRefundExternalTransactionRequest++;
  if (buildCounterRefundExternalTransactionRequest < 3) {
    checkFullRefund(o.fullRefund!);
    checkPartialRefund(o.partialRefund!);
    unittest.expect(
      o.refundTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterRefundExternalTransactionRequest--;
}

core.int buildCounterRegionalBasePlanConfig = 0;
api.RegionalBasePlanConfig buildRegionalBasePlanConfig() {
  final o = api.RegionalBasePlanConfig();
  buildCounterRegionalBasePlanConfig++;
  if (buildCounterRegionalBasePlanConfig < 3) {
    o.newSubscriberAvailability = true;
    o.price = buildMoney();
    o.regionCode = 'foo';
  }
  buildCounterRegionalBasePlanConfig--;
  return o;
}

void checkRegionalBasePlanConfig(api.RegionalBasePlanConfig o) {
  buildCounterRegionalBasePlanConfig++;
  if (buildCounterRegionalBasePlanConfig < 3) {
    unittest.expect(o.newSubscriberAvailability!, unittest.isTrue);
    checkMoney(o.price!);
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterRegionalBasePlanConfig--;
}

core.int buildCounterRegionalPriceMigrationConfig = 0;
api.RegionalPriceMigrationConfig buildRegionalPriceMigrationConfig() {
  final o = api.RegionalPriceMigrationConfig();
  buildCounterRegionalPriceMigrationConfig++;
  if (buildCounterRegionalPriceMigrationConfig < 3) {
    o.oldestAllowedPriceVersionTime = 'foo';
    o.priceIncreaseType = 'foo';
    o.regionCode = 'foo';
  }
  buildCounterRegionalPriceMigrationConfig--;
  return o;
}

void checkRegionalPriceMigrationConfig(api.RegionalPriceMigrationConfig o) {
  buildCounterRegionalPriceMigrationConfig++;
  if (buildCounterRegionalPriceMigrationConfig < 3) {
    unittest.expect(
      o.oldestAllowedPriceVersionTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.priceIncreaseType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterRegionalPriceMigrationConfig--;
}

core.int buildCounterRegionalSubscriptionOfferConfig = 0;
api.RegionalSubscriptionOfferConfig buildRegionalSubscriptionOfferConfig() {
  final o = api.RegionalSubscriptionOfferConfig();
  buildCounterRegionalSubscriptionOfferConfig++;
  if (buildCounterRegionalSubscriptionOfferConfig < 3) {
    o.newSubscriberAvailability = true;
    o.regionCode = 'foo';
  }
  buildCounterRegionalSubscriptionOfferConfig--;
  return o;
}

void checkRegionalSubscriptionOfferConfig(
    api.RegionalSubscriptionOfferConfig o) {
  buildCounterRegionalSubscriptionOfferConfig++;
  if (buildCounterRegionalSubscriptionOfferConfig < 3) {
    unittest.expect(o.newSubscriberAvailability!, unittest.isTrue);
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterRegionalSubscriptionOfferConfig--;
}

core.int buildCounterRegionalSubscriptionOfferPhaseConfig = 0;
api.RegionalSubscriptionOfferPhaseConfig
    buildRegionalSubscriptionOfferPhaseConfig() {
  final o = api.RegionalSubscriptionOfferPhaseConfig();
  buildCounterRegionalSubscriptionOfferPhaseConfig++;
  if (buildCounterRegionalSubscriptionOfferPhaseConfig < 3) {
    o.absoluteDiscount = buildMoney();
    o.price = buildMoney();
    o.regionCode = 'foo';
    o.relativeDiscount = 42.0;
  }
  buildCounterRegionalSubscriptionOfferPhaseConfig--;
  return o;
}

void checkRegionalSubscriptionOfferPhaseConfig(
    api.RegionalSubscriptionOfferPhaseConfig o) {
  buildCounterRegionalSubscriptionOfferPhaseConfig++;
  if (buildCounterRegionalSubscriptionOfferPhaseConfig < 3) {
    checkMoney(o.absoluteDiscount!);
    checkMoney(o.price!);
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.relativeDiscount!,
      unittest.equals(42.0),
    );
  }
  buildCounterRegionalSubscriptionOfferPhaseConfig--;
}

core.int buildCounterRegionalTaxRateInfo = 0;
api.RegionalTaxRateInfo buildRegionalTaxRateInfo() {
  final o = api.RegionalTaxRateInfo();
  buildCounterRegionalTaxRateInfo++;
  if (buildCounterRegionalTaxRateInfo < 3) {
    o.eligibleForStreamingServiceTaxRate = true;
    o.streamingTaxType = 'foo';
    o.taxTier = 'foo';
  }
  buildCounterRegionalTaxRateInfo--;
  return o;
}

void checkRegionalTaxRateInfo(api.RegionalTaxRateInfo o) {
  buildCounterRegionalTaxRateInfo++;
  if (buildCounterRegionalTaxRateInfo < 3) {
    unittest.expect(o.eligibleForStreamingServiceTaxRate!, unittest.isTrue);
    unittest.expect(
      o.streamingTaxType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taxTier!,
      unittest.equals('foo'),
    );
  }
  buildCounterRegionalTaxRateInfo--;
}

core.List<core.String> buildUnnamed72() => [
      'foo',
      'foo',
    ];

void checkUnnamed72(core.List<core.String> o) {
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

core.int buildCounterRegions = 0;
api.Regions buildRegions() {
  final o = api.Regions();
  buildCounterRegions++;
  if (buildCounterRegions < 3) {
    o.regionCode = buildUnnamed72();
  }
  buildCounterRegions--;
  return o;
}

void checkRegions(api.Regions o) {
  buildCounterRegions++;
  if (buildCounterRegions < 3) {
    checkUnnamed72(o.regionCode!);
  }
  buildCounterRegions--;
}

core.int buildCounterRegionsVersion = 0;
api.RegionsVersion buildRegionsVersion() {
  final o = api.RegionsVersion();
  buildCounterRegionsVersion++;
  if (buildCounterRegionsVersion < 3) {
    o.version = 'foo';
  }
  buildCounterRegionsVersion--;
  return o;
}

void checkRegionsVersion(api.RegionsVersion o) {
  buildCounterRegionsVersion++;
  if (buildCounterRegionsVersion < 3) {
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterRegionsVersion--;
}

core.int buildCounterRemoteInAppUpdate = 0;
api.RemoteInAppUpdate buildRemoteInAppUpdate() {
  final o = api.RemoteInAppUpdate();
  buildCounterRemoteInAppUpdate++;
  if (buildCounterRemoteInAppUpdate < 3) {
    o.isRemoteInAppUpdateRequested = true;
  }
  buildCounterRemoteInAppUpdate--;
  return o;
}

void checkRemoteInAppUpdate(api.RemoteInAppUpdate o) {
  buildCounterRemoteInAppUpdate++;
  if (buildCounterRemoteInAppUpdate < 3) {
    unittest.expect(o.isRemoteInAppUpdateRequested!, unittest.isTrue);
  }
  buildCounterRemoteInAppUpdate--;
}

core.List<api.RemoteInAppUpdateDataPerBundle> buildUnnamed73() => [
      buildRemoteInAppUpdateDataPerBundle(),
      buildRemoteInAppUpdateDataPerBundle(),
    ];

void checkUnnamed73(core.List<api.RemoteInAppUpdateDataPerBundle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRemoteInAppUpdateDataPerBundle(o[0]);
  checkRemoteInAppUpdateDataPerBundle(o[1]);
}

core.int buildCounterRemoteInAppUpdateData = 0;
api.RemoteInAppUpdateData buildRemoteInAppUpdateData() {
  final o = api.RemoteInAppUpdateData();
  buildCounterRemoteInAppUpdateData++;
  if (buildCounterRemoteInAppUpdateData < 3) {
    o.remoteAppUpdateDataPerBundle = buildUnnamed73();
  }
  buildCounterRemoteInAppUpdateData--;
  return o;
}

void checkRemoteInAppUpdateData(api.RemoteInAppUpdateData o) {
  buildCounterRemoteInAppUpdateData++;
  if (buildCounterRemoteInAppUpdateData < 3) {
    checkUnnamed73(o.remoteAppUpdateDataPerBundle!);
  }
  buildCounterRemoteInAppUpdateData--;
}

core.int buildCounterRemoteInAppUpdateDataPerBundle = 0;
api.RemoteInAppUpdateDataPerBundle buildRemoteInAppUpdateDataPerBundle() {
  final o = api.RemoteInAppUpdateDataPerBundle();
  buildCounterRemoteInAppUpdateDataPerBundle++;
  if (buildCounterRemoteInAppUpdateDataPerBundle < 3) {
    o.recoveredDeviceCount = 'foo';
    o.totalDeviceCount = 'foo';
    o.versionCode = 'foo';
  }
  buildCounterRemoteInAppUpdateDataPerBundle--;
  return o;
}

void checkRemoteInAppUpdateDataPerBundle(api.RemoteInAppUpdateDataPerBundle o) {
  buildCounterRemoteInAppUpdateDataPerBundle++;
  if (buildCounterRemoteInAppUpdateDataPerBundle < 3) {
    unittest.expect(
      o.recoveredDeviceCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalDeviceCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterRemoteInAppUpdateDataPerBundle--;
}

core.int buildCounterReplacementCancellation = 0;
api.ReplacementCancellation buildReplacementCancellation() {
  final o = api.ReplacementCancellation();
  buildCounterReplacementCancellation++;
  if (buildCounterReplacementCancellation < 3) {}
  buildCounterReplacementCancellation--;
  return o;
}

void checkReplacementCancellation(api.ReplacementCancellation o) {
  buildCounterReplacementCancellation++;
  if (buildCounterReplacementCancellation < 3) {}
  buildCounterReplacementCancellation--;
}

core.List<api.Comment> buildUnnamed74() => [
      buildComment(),
      buildComment(),
    ];

void checkUnnamed74(core.List<api.Comment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComment(o[0]);
  checkComment(o[1]);
}

core.int buildCounterReview = 0;
api.Review buildReview() {
  final o = api.Review();
  buildCounterReview++;
  if (buildCounterReview < 3) {
    o.authorName = 'foo';
    o.comments = buildUnnamed74();
    o.reviewId = 'foo';
  }
  buildCounterReview--;
  return o;
}

void checkReview(api.Review o) {
  buildCounterReview++;
  if (buildCounterReview < 3) {
    unittest.expect(
      o.authorName!,
      unittest.equals('foo'),
    );
    checkUnnamed74(o.comments!);
    unittest.expect(
      o.reviewId!,
      unittest.equals('foo'),
    );
  }
  buildCounterReview--;
}

core.int buildCounterReviewReplyResult = 0;
api.ReviewReplyResult buildReviewReplyResult() {
  final o = api.ReviewReplyResult();
  buildCounterReviewReplyResult++;
  if (buildCounterReviewReplyResult < 3) {
    o.lastEdited = buildTimestamp();
    o.replyText = 'foo';
  }
  buildCounterReviewReplyResult--;
  return o;
}

void checkReviewReplyResult(api.ReviewReplyResult o) {
  buildCounterReviewReplyResult++;
  if (buildCounterReviewReplyResult < 3) {
    checkTimestamp(o.lastEdited!);
    unittest.expect(
      o.replyText!,
      unittest.equals('foo'),
    );
  }
  buildCounterReviewReplyResult--;
}

core.List<api.Review> buildUnnamed75() => [
      buildReview(),
      buildReview(),
    ];

void checkUnnamed75(core.List<api.Review> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReview(o[0]);
  checkReview(o[1]);
}

core.int buildCounterReviewsListResponse = 0;
api.ReviewsListResponse buildReviewsListResponse() {
  final o = api.ReviewsListResponse();
  buildCounterReviewsListResponse++;
  if (buildCounterReviewsListResponse < 3) {
    o.pageInfo = buildPageInfo();
    o.reviews = buildUnnamed75();
    o.tokenPagination = buildTokenPagination();
  }
  buildCounterReviewsListResponse--;
  return o;
}

void checkReviewsListResponse(api.ReviewsListResponse o) {
  buildCounterReviewsListResponse++;
  if (buildCounterReviewsListResponse < 3) {
    checkPageInfo(o.pageInfo!);
    checkUnnamed75(o.reviews!);
    checkTokenPagination(o.tokenPagination!);
  }
  buildCounterReviewsListResponse--;
}

core.int buildCounterReviewsReplyRequest = 0;
api.ReviewsReplyRequest buildReviewsReplyRequest() {
  final o = api.ReviewsReplyRequest();
  buildCounterReviewsReplyRequest++;
  if (buildCounterReviewsReplyRequest < 3) {
    o.replyText = 'foo';
  }
  buildCounterReviewsReplyRequest--;
  return o;
}

void checkReviewsReplyRequest(api.ReviewsReplyRequest o) {
  buildCounterReviewsReplyRequest++;
  if (buildCounterReviewsReplyRequest < 3) {
    unittest.expect(
      o.replyText!,
      unittest.equals('foo'),
    );
  }
  buildCounterReviewsReplyRequest--;
}

core.int buildCounterReviewsReplyResponse = 0;
api.ReviewsReplyResponse buildReviewsReplyResponse() {
  final o = api.ReviewsReplyResponse();
  buildCounterReviewsReplyResponse++;
  if (buildCounterReviewsReplyResponse < 3) {
    o.result = buildReviewReplyResult();
  }
  buildCounterReviewsReplyResponse--;
  return o;
}

void checkReviewsReplyResponse(api.ReviewsReplyResponse o) {
  buildCounterReviewsReplyResponse++;
  if (buildCounterReviewsReplyResponse < 3) {
    checkReviewReplyResult(o.result!);
  }
  buildCounterReviewsReplyResponse--;
}

core.int buildCounterRevocationContext = 0;
api.RevocationContext buildRevocationContext() {
  final o = api.RevocationContext();
  buildCounterRevocationContext++;
  if (buildCounterRevocationContext < 3) {
    o.proratedRefund = buildRevocationContextProratedRefund();
  }
  buildCounterRevocationContext--;
  return o;
}

void checkRevocationContext(api.RevocationContext o) {
  buildCounterRevocationContext++;
  if (buildCounterRevocationContext < 3) {
    checkRevocationContextProratedRefund(o.proratedRefund!);
  }
  buildCounterRevocationContext--;
}

core.int buildCounterRevocationContextProratedRefund = 0;
api.RevocationContextProratedRefund buildRevocationContextProratedRefund() {
  final o = api.RevocationContextProratedRefund();
  buildCounterRevocationContextProratedRefund++;
  if (buildCounterRevocationContextProratedRefund < 3) {}
  buildCounterRevocationContextProratedRefund--;
  return o;
}

void checkRevocationContextProratedRefund(
    api.RevocationContextProratedRefund o) {
  buildCounterRevocationContextProratedRefund++;
  if (buildCounterRevocationContextProratedRefund < 3) {}
  buildCounterRevocationContextProratedRefund--;
}

core.int buildCounterRevokeSubscriptionPurchaseRequest = 0;
api.RevokeSubscriptionPurchaseRequest buildRevokeSubscriptionPurchaseRequest() {
  final o = api.RevokeSubscriptionPurchaseRequest();
  buildCounterRevokeSubscriptionPurchaseRequest++;
  if (buildCounterRevokeSubscriptionPurchaseRequest < 3) {
    o.revocationContext = buildRevocationContext();
  }
  buildCounterRevokeSubscriptionPurchaseRequest--;
  return o;
}

void checkRevokeSubscriptionPurchaseRequest(
    api.RevokeSubscriptionPurchaseRequest o) {
  buildCounterRevokeSubscriptionPurchaseRequest++;
  if (buildCounterRevokeSubscriptionPurchaseRequest < 3) {
    checkRevocationContext(o.revocationContext!);
  }
  buildCounterRevokeSubscriptionPurchaseRequest--;
}

core.int buildCounterRevokeSubscriptionPurchaseResponse = 0;
api.RevokeSubscriptionPurchaseResponse
    buildRevokeSubscriptionPurchaseResponse() {
  final o = api.RevokeSubscriptionPurchaseResponse();
  buildCounterRevokeSubscriptionPurchaseResponse++;
  if (buildCounterRevokeSubscriptionPurchaseResponse < 3) {}
  buildCounterRevokeSubscriptionPurchaseResponse--;
  return o;
}

void checkRevokeSubscriptionPurchaseResponse(
    api.RevokeSubscriptionPurchaseResponse o) {
  buildCounterRevokeSubscriptionPurchaseResponse++;
  if (buildCounterRevokeSubscriptionPurchaseResponse < 3) {}
  buildCounterRevokeSubscriptionPurchaseResponse--;
}

core.int buildCounterSafetyLabelsUpdateRequest = 0;
api.SafetyLabelsUpdateRequest buildSafetyLabelsUpdateRequest() {
  final o = api.SafetyLabelsUpdateRequest();
  buildCounterSafetyLabelsUpdateRequest++;
  if (buildCounterSafetyLabelsUpdateRequest < 3) {
    o.safetyLabels = 'foo';
  }
  buildCounterSafetyLabelsUpdateRequest--;
  return o;
}

void checkSafetyLabelsUpdateRequest(api.SafetyLabelsUpdateRequest o) {
  buildCounterSafetyLabelsUpdateRequest++;
  if (buildCounterSafetyLabelsUpdateRequest < 3) {
    unittest.expect(
      o.safetyLabels!,
      unittest.equals('foo'),
    );
  }
  buildCounterSafetyLabelsUpdateRequest--;
}

core.int buildCounterSafetyLabelsUpdateResponse = 0;
api.SafetyLabelsUpdateResponse buildSafetyLabelsUpdateResponse() {
  final o = api.SafetyLabelsUpdateResponse();
  buildCounterSafetyLabelsUpdateResponse++;
  if (buildCounterSafetyLabelsUpdateResponse < 3) {}
  buildCounterSafetyLabelsUpdateResponse--;
  return o;
}

void checkSafetyLabelsUpdateResponse(api.SafetyLabelsUpdateResponse o) {
  buildCounterSafetyLabelsUpdateResponse++;
  if (buildCounterSafetyLabelsUpdateResponse < 3) {}
  buildCounterSafetyLabelsUpdateResponse--;
}

core.int buildCounterScreenDensity = 0;
api.ScreenDensity buildScreenDensity() {
  final o = api.ScreenDensity();
  buildCounterScreenDensity++;
  if (buildCounterScreenDensity < 3) {
    o.densityAlias = 'foo';
    o.densityDpi = 42;
  }
  buildCounterScreenDensity--;
  return o;
}

void checkScreenDensity(api.ScreenDensity o) {
  buildCounterScreenDensity++;
  if (buildCounterScreenDensity < 3) {
    unittest.expect(
      o.densityAlias!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.densityDpi!,
      unittest.equals(42),
    );
  }
  buildCounterScreenDensity--;
}

core.List<api.ScreenDensity> buildUnnamed76() => [
      buildScreenDensity(),
      buildScreenDensity(),
    ];

void checkUnnamed76(core.List<api.ScreenDensity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScreenDensity(o[0]);
  checkScreenDensity(o[1]);
}

core.List<api.ScreenDensity> buildUnnamed77() => [
      buildScreenDensity(),
      buildScreenDensity(),
    ];

void checkUnnamed77(core.List<api.ScreenDensity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkScreenDensity(o[0]);
  checkScreenDensity(o[1]);
}

core.int buildCounterScreenDensityTargeting = 0;
api.ScreenDensityTargeting buildScreenDensityTargeting() {
  final o = api.ScreenDensityTargeting();
  buildCounterScreenDensityTargeting++;
  if (buildCounterScreenDensityTargeting < 3) {
    o.alternatives = buildUnnamed76();
    o.value = buildUnnamed77();
  }
  buildCounterScreenDensityTargeting--;
  return o;
}

void checkScreenDensityTargeting(api.ScreenDensityTargeting o) {
  buildCounterScreenDensityTargeting++;
  if (buildCounterScreenDensityTargeting < 3) {
    checkUnnamed76(o.alternatives!);
    checkUnnamed77(o.value!);
  }
  buildCounterScreenDensityTargeting--;
}

core.int buildCounterSdkVersion = 0;
api.SdkVersion buildSdkVersion() {
  final o = api.SdkVersion();
  buildCounterSdkVersion++;
  if (buildCounterSdkVersion < 3) {
    o.min = 42;
  }
  buildCounterSdkVersion--;
  return o;
}

void checkSdkVersion(api.SdkVersion o) {
  buildCounterSdkVersion++;
  if (buildCounterSdkVersion < 3) {
    unittest.expect(
      o.min!,
      unittest.equals(42),
    );
  }
  buildCounterSdkVersion--;
}

core.List<api.SdkVersion> buildUnnamed78() => [
      buildSdkVersion(),
      buildSdkVersion(),
    ];

void checkUnnamed78(core.List<api.SdkVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSdkVersion(o[0]);
  checkSdkVersion(o[1]);
}

core.List<api.SdkVersion> buildUnnamed79() => [
      buildSdkVersion(),
      buildSdkVersion(),
    ];

void checkUnnamed79(core.List<api.SdkVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSdkVersion(o[0]);
  checkSdkVersion(o[1]);
}

core.int buildCounterSdkVersionTargeting = 0;
api.SdkVersionTargeting buildSdkVersionTargeting() {
  final o = api.SdkVersionTargeting();
  buildCounterSdkVersionTargeting++;
  if (buildCounterSdkVersionTargeting < 3) {
    o.alternatives = buildUnnamed78();
    o.value = buildUnnamed79();
  }
  buildCounterSdkVersionTargeting--;
  return o;
}

void checkSdkVersionTargeting(api.SdkVersionTargeting o) {
  buildCounterSdkVersionTargeting++;
  if (buildCounterSdkVersionTargeting < 3) {
    checkUnnamed78(o.alternatives!);
    checkUnnamed79(o.value!);
  }
  buildCounterSdkVersionTargeting--;
}

core.int buildCounterSplitApkMetadata = 0;
api.SplitApkMetadata buildSplitApkMetadata() {
  final o = api.SplitApkMetadata();
  buildCounterSplitApkMetadata++;
  if (buildCounterSplitApkMetadata < 3) {
    o.isMasterSplit = true;
    o.splitId = 'foo';
  }
  buildCounterSplitApkMetadata--;
  return o;
}

void checkSplitApkMetadata(api.SplitApkMetadata o) {
  buildCounterSplitApkMetadata++;
  if (buildCounterSplitApkMetadata < 3) {
    unittest.expect(o.isMasterSplit!, unittest.isTrue);
    unittest.expect(
      o.splitId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSplitApkMetadata--;
}

core.List<api.ApkSet> buildUnnamed80() => [
      buildApkSet(),
      buildApkSet(),
    ];

void checkUnnamed80(core.List<api.ApkSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApkSet(o[0]);
  checkApkSet(o[1]);
}

core.int buildCounterSplitApkVariant = 0;
api.SplitApkVariant buildSplitApkVariant() {
  final o = api.SplitApkVariant();
  buildCounterSplitApkVariant++;
  if (buildCounterSplitApkVariant < 3) {
    o.apkSet = buildUnnamed80();
    o.targeting = buildVariantTargeting();
    o.variantNumber = 42;
  }
  buildCounterSplitApkVariant--;
  return o;
}

void checkSplitApkVariant(api.SplitApkVariant o) {
  buildCounterSplitApkVariant++;
  if (buildCounterSplitApkVariant < 3) {
    checkUnnamed80(o.apkSet!);
    checkVariantTargeting(o.targeting!);
    unittest.expect(
      o.variantNumber!,
      unittest.equals(42),
    );
  }
  buildCounterSplitApkVariant--;
}

core.List<core.String> buildUnnamed81() => [
      'foo',
      'foo',
    ];

void checkUnnamed81(core.List<core.String> o) {
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

core.int buildCounterStandaloneApkMetadata = 0;
api.StandaloneApkMetadata buildStandaloneApkMetadata() {
  final o = api.StandaloneApkMetadata();
  buildCounterStandaloneApkMetadata++;
  if (buildCounterStandaloneApkMetadata < 3) {
    o.fusedModuleName = buildUnnamed81();
  }
  buildCounterStandaloneApkMetadata--;
  return o;
}

void checkStandaloneApkMetadata(api.StandaloneApkMetadata o) {
  buildCounterStandaloneApkMetadata++;
  if (buildCounterStandaloneApkMetadata < 3) {
    checkUnnamed81(o.fusedModuleName!);
  }
  buildCounterStandaloneApkMetadata--;
}

core.int buildCounterSubscribeWithGoogleInfo = 0;
api.SubscribeWithGoogleInfo buildSubscribeWithGoogleInfo() {
  final o = api.SubscribeWithGoogleInfo();
  buildCounterSubscribeWithGoogleInfo++;
  if (buildCounterSubscribeWithGoogleInfo < 3) {
    o.emailAddress = 'foo';
    o.familyName = 'foo';
    o.givenName = 'foo';
    o.profileId = 'foo';
    o.profileName = 'foo';
  }
  buildCounterSubscribeWithGoogleInfo--;
  return o;
}

void checkSubscribeWithGoogleInfo(api.SubscribeWithGoogleInfo o) {
  buildCounterSubscribeWithGoogleInfo++;
  if (buildCounterSubscribeWithGoogleInfo < 3) {
    unittest.expect(
      o.emailAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.familyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.givenName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.profileId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.profileName!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubscribeWithGoogleInfo--;
}

core.List<api.BasePlan> buildUnnamed82() => [
      buildBasePlan(),
      buildBasePlan(),
    ];

void checkUnnamed82(core.List<api.BasePlan> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBasePlan(o[0]);
  checkBasePlan(o[1]);
}

core.List<api.SubscriptionListing> buildUnnamed83() => [
      buildSubscriptionListing(),
      buildSubscriptionListing(),
    ];

void checkUnnamed83(core.List<api.SubscriptionListing> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubscriptionListing(o[0]);
  checkSubscriptionListing(o[1]);
}

core.int buildCounterSubscription = 0;
api.Subscription buildSubscription() {
  final o = api.Subscription();
  buildCounterSubscription++;
  if (buildCounterSubscription < 3) {
    o.archived = true;
    o.basePlans = buildUnnamed82();
    o.listings = buildUnnamed83();
    o.packageName = 'foo';
    o.productId = 'foo';
    o.taxAndComplianceSettings = buildSubscriptionTaxAndComplianceSettings();
  }
  buildCounterSubscription--;
  return o;
}

void checkSubscription(api.Subscription o) {
  buildCounterSubscription++;
  if (buildCounterSubscription < 3) {
    unittest.expect(o.archived!, unittest.isTrue);
    checkUnnamed82(o.basePlans!);
    checkUnnamed83(o.listings!);
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    checkSubscriptionTaxAndComplianceSettings(o.taxAndComplianceSettings!);
  }
  buildCounterSubscription--;
}

core.int buildCounterSubscriptionCancelSurveyResult = 0;
api.SubscriptionCancelSurveyResult buildSubscriptionCancelSurveyResult() {
  final o = api.SubscriptionCancelSurveyResult();
  buildCounterSubscriptionCancelSurveyResult++;
  if (buildCounterSubscriptionCancelSurveyResult < 3) {
    o.cancelSurveyReason = 42;
    o.userInputCancelReason = 'foo';
  }
  buildCounterSubscriptionCancelSurveyResult--;
  return o;
}

void checkSubscriptionCancelSurveyResult(api.SubscriptionCancelSurveyResult o) {
  buildCounterSubscriptionCancelSurveyResult++;
  if (buildCounterSubscriptionCancelSurveyResult < 3) {
    unittest.expect(
      o.cancelSurveyReason!,
      unittest.equals(42),
    );
    unittest.expect(
      o.userInputCancelReason!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubscriptionCancelSurveyResult--;
}

core.int buildCounterSubscriptionDeferralInfo = 0;
api.SubscriptionDeferralInfo buildSubscriptionDeferralInfo() {
  final o = api.SubscriptionDeferralInfo();
  buildCounterSubscriptionDeferralInfo++;
  if (buildCounterSubscriptionDeferralInfo < 3) {
    o.desiredExpiryTimeMillis = 'foo';
    o.expectedExpiryTimeMillis = 'foo';
  }
  buildCounterSubscriptionDeferralInfo--;
  return o;
}

void checkSubscriptionDeferralInfo(api.SubscriptionDeferralInfo o) {
  buildCounterSubscriptionDeferralInfo++;
  if (buildCounterSubscriptionDeferralInfo < 3) {
    unittest.expect(
      o.desiredExpiryTimeMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expectedExpiryTimeMillis!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubscriptionDeferralInfo--;
}

core.int buildCounterSubscriptionItemPriceChangeDetails = 0;
api.SubscriptionItemPriceChangeDetails
    buildSubscriptionItemPriceChangeDetails() {
  final o = api.SubscriptionItemPriceChangeDetails();
  buildCounterSubscriptionItemPriceChangeDetails++;
  if (buildCounterSubscriptionItemPriceChangeDetails < 3) {
    o.expectedNewPriceChargeTime = 'foo';
    o.newPrice = buildMoney();
    o.priceChangeMode = 'foo';
    o.priceChangeState = 'foo';
  }
  buildCounterSubscriptionItemPriceChangeDetails--;
  return o;
}

void checkSubscriptionItemPriceChangeDetails(
    api.SubscriptionItemPriceChangeDetails o) {
  buildCounterSubscriptionItemPriceChangeDetails++;
  if (buildCounterSubscriptionItemPriceChangeDetails < 3) {
    unittest.expect(
      o.expectedNewPriceChargeTime!,
      unittest.equals('foo'),
    );
    checkMoney(o.newPrice!);
    unittest.expect(
      o.priceChangeMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.priceChangeState!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubscriptionItemPriceChangeDetails--;
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

core.int buildCounterSubscriptionListing = 0;
api.SubscriptionListing buildSubscriptionListing() {
  final o = api.SubscriptionListing();
  buildCounterSubscriptionListing++;
  if (buildCounterSubscriptionListing < 3) {
    o.benefits = buildUnnamed84();
    o.description = 'foo';
    o.languageCode = 'foo';
    o.title = 'foo';
  }
  buildCounterSubscriptionListing--;
  return o;
}

void checkSubscriptionListing(api.SubscriptionListing o) {
  buildCounterSubscriptionListing++;
  if (buildCounterSubscriptionListing < 3) {
    checkUnnamed84(o.benefits!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubscriptionListing--;
}

core.List<api.OfferTag> buildUnnamed85() => [
      buildOfferTag(),
      buildOfferTag(),
    ];

void checkUnnamed85(core.List<api.OfferTag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOfferTag(o[0]);
  checkOfferTag(o[1]);
}

core.List<api.SubscriptionOfferPhase> buildUnnamed86() => [
      buildSubscriptionOfferPhase(),
      buildSubscriptionOfferPhase(),
    ];

void checkUnnamed86(core.List<api.SubscriptionOfferPhase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubscriptionOfferPhase(o[0]);
  checkSubscriptionOfferPhase(o[1]);
}

core.List<api.RegionalSubscriptionOfferConfig> buildUnnamed87() => [
      buildRegionalSubscriptionOfferConfig(),
      buildRegionalSubscriptionOfferConfig(),
    ];

void checkUnnamed87(core.List<api.RegionalSubscriptionOfferConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegionalSubscriptionOfferConfig(o[0]);
  checkRegionalSubscriptionOfferConfig(o[1]);
}

core.int buildCounterSubscriptionOffer = 0;
api.SubscriptionOffer buildSubscriptionOffer() {
  final o = api.SubscriptionOffer();
  buildCounterSubscriptionOffer++;
  if (buildCounterSubscriptionOffer < 3) {
    o.basePlanId = 'foo';
    o.offerId = 'foo';
    o.offerTags = buildUnnamed85();
    o.otherRegionsConfig = buildOtherRegionsSubscriptionOfferConfig();
    o.packageName = 'foo';
    o.phases = buildUnnamed86();
    o.productId = 'foo';
    o.regionalConfigs = buildUnnamed87();
    o.state = 'foo';
    o.targeting = buildSubscriptionOfferTargeting();
  }
  buildCounterSubscriptionOffer--;
  return o;
}

void checkSubscriptionOffer(api.SubscriptionOffer o) {
  buildCounterSubscriptionOffer++;
  if (buildCounterSubscriptionOffer < 3) {
    unittest.expect(
      o.basePlanId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.offerId!,
      unittest.equals('foo'),
    );
    checkUnnamed85(o.offerTags!);
    checkOtherRegionsSubscriptionOfferConfig(o.otherRegionsConfig!);
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    checkUnnamed86(o.phases!);
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    checkUnnamed87(o.regionalConfigs!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkSubscriptionOfferTargeting(o.targeting!);
  }
  buildCounterSubscriptionOffer--;
}

core.List<api.RegionalSubscriptionOfferPhaseConfig> buildUnnamed88() => [
      buildRegionalSubscriptionOfferPhaseConfig(),
      buildRegionalSubscriptionOfferPhaseConfig(),
    ];

void checkUnnamed88(core.List<api.RegionalSubscriptionOfferPhaseConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegionalSubscriptionOfferPhaseConfig(o[0]);
  checkRegionalSubscriptionOfferPhaseConfig(o[1]);
}

core.int buildCounterSubscriptionOfferPhase = 0;
api.SubscriptionOfferPhase buildSubscriptionOfferPhase() {
  final o = api.SubscriptionOfferPhase();
  buildCounterSubscriptionOfferPhase++;
  if (buildCounterSubscriptionOfferPhase < 3) {
    o.duration = 'foo';
    o.otherRegionsConfig = buildOtherRegionsSubscriptionOfferPhaseConfig();
    o.recurrenceCount = 42;
    o.regionalConfigs = buildUnnamed88();
  }
  buildCounterSubscriptionOfferPhase--;
  return o;
}

void checkSubscriptionOfferPhase(api.SubscriptionOfferPhase o) {
  buildCounterSubscriptionOfferPhase++;
  if (buildCounterSubscriptionOfferPhase < 3) {
    unittest.expect(
      o.duration!,
      unittest.equals('foo'),
    );
    checkOtherRegionsSubscriptionOfferPhaseConfig(o.otherRegionsConfig!);
    unittest.expect(
      o.recurrenceCount!,
      unittest.equals(42),
    );
    checkUnnamed88(o.regionalConfigs!);
  }
  buildCounterSubscriptionOfferPhase--;
}

core.int buildCounterSubscriptionOfferTargeting = 0;
api.SubscriptionOfferTargeting buildSubscriptionOfferTargeting() {
  final o = api.SubscriptionOfferTargeting();
  buildCounterSubscriptionOfferTargeting++;
  if (buildCounterSubscriptionOfferTargeting < 3) {
    o.acquisitionRule = buildAcquisitionTargetingRule();
    o.upgradeRule = buildUpgradeTargetingRule();
  }
  buildCounterSubscriptionOfferTargeting--;
  return o;
}

void checkSubscriptionOfferTargeting(api.SubscriptionOfferTargeting o) {
  buildCounterSubscriptionOfferTargeting++;
  if (buildCounterSubscriptionOfferTargeting < 3) {
    checkAcquisitionTargetingRule(o.acquisitionRule!);
    checkUpgradeTargetingRule(o.upgradeRule!);
  }
  buildCounterSubscriptionOfferTargeting--;
}

core.int buildCounterSubscriptionPriceChange = 0;
api.SubscriptionPriceChange buildSubscriptionPriceChange() {
  final o = api.SubscriptionPriceChange();
  buildCounterSubscriptionPriceChange++;
  if (buildCounterSubscriptionPriceChange < 3) {
    o.newPrice = buildPrice();
    o.state = 42;
  }
  buildCounterSubscriptionPriceChange--;
  return o;
}

void checkSubscriptionPriceChange(api.SubscriptionPriceChange o) {
  buildCounterSubscriptionPriceChange++;
  if (buildCounterSubscriptionPriceChange < 3) {
    checkPrice(o.newPrice!);
    unittest.expect(
      o.state!,
      unittest.equals(42),
    );
  }
  buildCounterSubscriptionPriceChange--;
}

core.int buildCounterSubscriptionPurchase = 0;
api.SubscriptionPurchase buildSubscriptionPurchase() {
  final o = api.SubscriptionPurchase();
  buildCounterSubscriptionPurchase++;
  if (buildCounterSubscriptionPurchase < 3) {
    o.acknowledgementState = 42;
    o.autoRenewing = true;
    o.autoResumeTimeMillis = 'foo';
    o.cancelReason = 42;
    o.cancelSurveyResult = buildSubscriptionCancelSurveyResult();
    o.countryCode = 'foo';
    o.developerPayload = 'foo';
    o.emailAddress = 'foo';
    o.expiryTimeMillis = 'foo';
    o.externalAccountId = 'foo';
    o.familyName = 'foo';
    o.givenName = 'foo';
    o.introductoryPriceInfo = buildIntroductoryPriceInfo();
    o.kind = 'foo';
    o.linkedPurchaseToken = 'foo';
    o.obfuscatedExternalAccountId = 'foo';
    o.obfuscatedExternalProfileId = 'foo';
    o.orderId = 'foo';
    o.paymentState = 42;
    o.priceAmountMicros = 'foo';
    o.priceChange = buildSubscriptionPriceChange();
    o.priceCurrencyCode = 'foo';
    o.profileId = 'foo';
    o.profileName = 'foo';
    o.promotionCode = 'foo';
    o.promotionType = 42;
    o.purchaseType = 42;
    o.startTimeMillis = 'foo';
    o.userCancellationTimeMillis = 'foo';
  }
  buildCounterSubscriptionPurchase--;
  return o;
}

void checkSubscriptionPurchase(api.SubscriptionPurchase o) {
  buildCounterSubscriptionPurchase++;
  if (buildCounterSubscriptionPurchase < 3) {
    unittest.expect(
      o.acknowledgementState!,
      unittest.equals(42),
    );
    unittest.expect(o.autoRenewing!, unittest.isTrue);
    unittest.expect(
      o.autoResumeTimeMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cancelReason!,
      unittest.equals(42),
    );
    checkSubscriptionCancelSurveyResult(o.cancelSurveyResult!);
    unittest.expect(
      o.countryCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.developerPayload!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.emailAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expiryTimeMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.externalAccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.familyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.givenName!,
      unittest.equals('foo'),
    );
    checkIntroductoryPriceInfo(o.introductoryPriceInfo!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.linkedPurchaseToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.obfuscatedExternalAccountId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.obfuscatedExternalProfileId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.paymentState!,
      unittest.equals(42),
    );
    unittest.expect(
      o.priceAmountMicros!,
      unittest.equals('foo'),
    );
    checkSubscriptionPriceChange(o.priceChange!);
    unittest.expect(
      o.priceCurrencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.profileId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.profileName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.promotionCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.promotionType!,
      unittest.equals(42),
    );
    unittest.expect(
      o.purchaseType!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startTimeMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userCancellationTimeMillis!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubscriptionPurchase--;
}

core.int buildCounterSubscriptionPurchaseLineItem = 0;
api.SubscriptionPurchaseLineItem buildSubscriptionPurchaseLineItem() {
  final o = api.SubscriptionPurchaseLineItem();
  buildCounterSubscriptionPurchaseLineItem++;
  if (buildCounterSubscriptionPurchaseLineItem < 3) {
    o.autoRenewingPlan = buildAutoRenewingPlan();
    o.deferredItemReplacement = buildDeferredItemReplacement();
    o.expiryTime = 'foo';
    o.offerDetails = buildOfferDetails();
    o.prepaidPlan = buildPrepaidPlan();
    o.productId = 'foo';
  }
  buildCounterSubscriptionPurchaseLineItem--;
  return o;
}

void checkSubscriptionPurchaseLineItem(api.SubscriptionPurchaseLineItem o) {
  buildCounterSubscriptionPurchaseLineItem++;
  if (buildCounterSubscriptionPurchaseLineItem < 3) {
    checkAutoRenewingPlan(o.autoRenewingPlan!);
    checkDeferredItemReplacement(o.deferredItemReplacement!);
    unittest.expect(
      o.expiryTime!,
      unittest.equals('foo'),
    );
    checkOfferDetails(o.offerDetails!);
    checkPrepaidPlan(o.prepaidPlan!);
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubscriptionPurchaseLineItem--;
}

core.List<api.SubscriptionPurchaseLineItem> buildUnnamed89() => [
      buildSubscriptionPurchaseLineItem(),
      buildSubscriptionPurchaseLineItem(),
    ];

void checkUnnamed89(core.List<api.SubscriptionPurchaseLineItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSubscriptionPurchaseLineItem(o[0]);
  checkSubscriptionPurchaseLineItem(o[1]);
}

core.int buildCounterSubscriptionPurchaseV2 = 0;
api.SubscriptionPurchaseV2 buildSubscriptionPurchaseV2() {
  final o = api.SubscriptionPurchaseV2();
  buildCounterSubscriptionPurchaseV2++;
  if (buildCounterSubscriptionPurchaseV2 < 3) {
    o.acknowledgementState = 'foo';
    o.canceledStateContext = buildCanceledStateContext();
    o.externalAccountIdentifiers = buildExternalAccountIdentifiers();
    o.kind = 'foo';
    o.latestOrderId = 'foo';
    o.lineItems = buildUnnamed89();
    o.linkedPurchaseToken = 'foo';
    o.pausedStateContext = buildPausedStateContext();
    o.regionCode = 'foo';
    o.startTime = 'foo';
    o.subscribeWithGoogleInfo = buildSubscribeWithGoogleInfo();
    o.subscriptionState = 'foo';
    o.testPurchase = buildTestPurchase();
  }
  buildCounterSubscriptionPurchaseV2--;
  return o;
}

void checkSubscriptionPurchaseV2(api.SubscriptionPurchaseV2 o) {
  buildCounterSubscriptionPurchaseV2++;
  if (buildCounterSubscriptionPurchaseV2 < 3) {
    unittest.expect(
      o.acknowledgementState!,
      unittest.equals('foo'),
    );
    checkCanceledStateContext(o.canceledStateContext!);
    checkExternalAccountIdentifiers(o.externalAccountIdentifiers!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.latestOrderId!,
      unittest.equals('foo'),
    );
    checkUnnamed89(o.lineItems!);
    unittest.expect(
      o.linkedPurchaseToken!,
      unittest.equals('foo'),
    );
    checkPausedStateContext(o.pausedStateContext!);
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    checkSubscribeWithGoogleInfo(o.subscribeWithGoogleInfo!);
    unittest.expect(
      o.subscriptionState!,
      unittest.equals('foo'),
    );
    checkTestPurchase(o.testPurchase!);
  }
  buildCounterSubscriptionPurchaseV2--;
}

core.int buildCounterSubscriptionPurchasesAcknowledgeRequest = 0;
api.SubscriptionPurchasesAcknowledgeRequest
    buildSubscriptionPurchasesAcknowledgeRequest() {
  final o = api.SubscriptionPurchasesAcknowledgeRequest();
  buildCounterSubscriptionPurchasesAcknowledgeRequest++;
  if (buildCounterSubscriptionPurchasesAcknowledgeRequest < 3) {
    o.developerPayload = 'foo';
  }
  buildCounterSubscriptionPurchasesAcknowledgeRequest--;
  return o;
}

void checkSubscriptionPurchasesAcknowledgeRequest(
    api.SubscriptionPurchasesAcknowledgeRequest o) {
  buildCounterSubscriptionPurchasesAcknowledgeRequest++;
  if (buildCounterSubscriptionPurchasesAcknowledgeRequest < 3) {
    unittest.expect(
      o.developerPayload!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubscriptionPurchasesAcknowledgeRequest--;
}

core.int buildCounterSubscriptionPurchasesDeferRequest = 0;
api.SubscriptionPurchasesDeferRequest buildSubscriptionPurchasesDeferRequest() {
  final o = api.SubscriptionPurchasesDeferRequest();
  buildCounterSubscriptionPurchasesDeferRequest++;
  if (buildCounterSubscriptionPurchasesDeferRequest < 3) {
    o.deferralInfo = buildSubscriptionDeferralInfo();
  }
  buildCounterSubscriptionPurchasesDeferRequest--;
  return o;
}

void checkSubscriptionPurchasesDeferRequest(
    api.SubscriptionPurchasesDeferRequest o) {
  buildCounterSubscriptionPurchasesDeferRequest++;
  if (buildCounterSubscriptionPurchasesDeferRequest < 3) {
    checkSubscriptionDeferralInfo(o.deferralInfo!);
  }
  buildCounterSubscriptionPurchasesDeferRequest--;
}

core.int buildCounterSubscriptionPurchasesDeferResponse = 0;
api.SubscriptionPurchasesDeferResponse
    buildSubscriptionPurchasesDeferResponse() {
  final o = api.SubscriptionPurchasesDeferResponse();
  buildCounterSubscriptionPurchasesDeferResponse++;
  if (buildCounterSubscriptionPurchasesDeferResponse < 3) {
    o.newExpiryTimeMillis = 'foo';
  }
  buildCounterSubscriptionPurchasesDeferResponse--;
  return o;
}

void checkSubscriptionPurchasesDeferResponse(
    api.SubscriptionPurchasesDeferResponse o) {
  buildCounterSubscriptionPurchasesDeferResponse++;
  if (buildCounterSubscriptionPurchasesDeferResponse < 3) {
    unittest.expect(
      o.newExpiryTimeMillis!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubscriptionPurchasesDeferResponse--;
}

core.Map<core.String, api.RegionalTaxRateInfo> buildUnnamed90() => {
      'x': buildRegionalTaxRateInfo(),
      'y': buildRegionalTaxRateInfo(),
    };

void checkUnnamed90(core.Map<core.String, api.RegionalTaxRateInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRegionalTaxRateInfo(o['x']!);
  checkRegionalTaxRateInfo(o['y']!);
}

core.int buildCounterSubscriptionTaxAndComplianceSettings = 0;
api.SubscriptionTaxAndComplianceSettings
    buildSubscriptionTaxAndComplianceSettings() {
  final o = api.SubscriptionTaxAndComplianceSettings();
  buildCounterSubscriptionTaxAndComplianceSettings++;
  if (buildCounterSubscriptionTaxAndComplianceSettings < 3) {
    o.eeaWithdrawalRightType = 'foo';
    o.isTokenizedDigitalAsset = true;
    o.taxRateInfoByRegionCode = buildUnnamed90();
  }
  buildCounterSubscriptionTaxAndComplianceSettings--;
  return o;
}

void checkSubscriptionTaxAndComplianceSettings(
    api.SubscriptionTaxAndComplianceSettings o) {
  buildCounterSubscriptionTaxAndComplianceSettings++;
  if (buildCounterSubscriptionTaxAndComplianceSettings < 3) {
    unittest.expect(
      o.eeaWithdrawalRightType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isTokenizedDigitalAsset!, unittest.isTrue);
    checkUnnamed90(o.taxRateInfoByRegionCode!);
  }
  buildCounterSubscriptionTaxAndComplianceSettings--;
}

core.int buildCounterSystemApkOptions = 0;
api.SystemApkOptions buildSystemApkOptions() {
  final o = api.SystemApkOptions();
  buildCounterSystemApkOptions++;
  if (buildCounterSystemApkOptions < 3) {
    o.rotated = true;
    o.uncompressedDexFiles = true;
    o.uncompressedNativeLibraries = true;
  }
  buildCounterSystemApkOptions--;
  return o;
}

void checkSystemApkOptions(api.SystemApkOptions o) {
  buildCounterSystemApkOptions++;
  if (buildCounterSystemApkOptions < 3) {
    unittest.expect(o.rotated!, unittest.isTrue);
    unittest.expect(o.uncompressedDexFiles!, unittest.isTrue);
    unittest.expect(o.uncompressedNativeLibraries!, unittest.isTrue);
  }
  buildCounterSystemApkOptions--;
}

core.List<api.Variant> buildUnnamed91() => [
      buildVariant(),
      buildVariant(),
    ];

void checkUnnamed91(core.List<api.Variant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVariant(o[0]);
  checkVariant(o[1]);
}

core.int buildCounterSystemApksListResponse = 0;
api.SystemApksListResponse buildSystemApksListResponse() {
  final o = api.SystemApksListResponse();
  buildCounterSystemApksListResponse++;
  if (buildCounterSystemApksListResponse < 3) {
    o.variants = buildUnnamed91();
  }
  buildCounterSystemApksListResponse--;
  return o;
}

void checkSystemApksListResponse(api.SystemApksListResponse o) {
  buildCounterSystemApksListResponse++;
  if (buildCounterSystemApksListResponse < 3) {
    checkUnnamed91(o.variants!);
  }
  buildCounterSystemApksListResponse--;
}

core.int buildCounterSystemFeature = 0;
api.SystemFeature buildSystemFeature() {
  final o = api.SystemFeature();
  buildCounterSystemFeature++;
  if (buildCounterSystemFeature < 3) {
    o.name = 'foo';
  }
  buildCounterSystemFeature--;
  return o;
}

void checkSystemFeature(api.SystemFeature o) {
  buildCounterSystemFeature++;
  if (buildCounterSystemFeature < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterSystemFeature--;
}

core.int buildCounterSystemInitiatedCancellation = 0;
api.SystemInitiatedCancellation buildSystemInitiatedCancellation() {
  final o = api.SystemInitiatedCancellation();
  buildCounterSystemInitiatedCancellation++;
  if (buildCounterSystemInitiatedCancellation < 3) {}
  buildCounterSystemInitiatedCancellation--;
  return o;
}

void checkSystemInitiatedCancellation(api.SystemInitiatedCancellation o) {
  buildCounterSystemInitiatedCancellation++;
  if (buildCounterSystemInitiatedCancellation < 3) {}
  buildCounterSystemInitiatedCancellation--;
}

core.int buildCounterTargeting = 0;
api.Targeting buildTargeting() {
  final o = api.Targeting();
  buildCounterTargeting++;
  if (buildCounterTargeting < 3) {
    o.allUsers = buildAllUsers();
    o.androidSdks = buildAndroidSdks();
    o.regions = buildRegions();
    o.versionList = buildAppVersionList();
    o.versionRange = buildAppVersionRange();
  }
  buildCounterTargeting--;
  return o;
}

void checkTargeting(api.Targeting o) {
  buildCounterTargeting++;
  if (buildCounterTargeting < 3) {
    checkAllUsers(o.allUsers!);
    checkAndroidSdks(o.androidSdks!);
    checkRegions(o.regions!);
    checkAppVersionList(o.versionList!);
    checkAppVersionRange(o.versionRange!);
  }
  buildCounterTargeting--;
}

core.List<api.AssetSliceSet> buildUnnamed92() => [
      buildAssetSliceSet(),
      buildAssetSliceSet(),
    ];

void checkUnnamed92(core.List<api.AssetSliceSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssetSliceSet(o[0]);
  checkAssetSliceSet(o[1]);
}

core.List<api.SplitApkVariant> buildUnnamed93() => [
      buildSplitApkVariant(),
      buildSplitApkVariant(),
    ];

void checkUnnamed93(core.List<api.SplitApkVariant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSplitApkVariant(o[0]);
  checkSplitApkVariant(o[1]);
}

core.int buildCounterTargetingInfo = 0;
api.TargetingInfo buildTargetingInfo() {
  final o = api.TargetingInfo();
  buildCounterTargetingInfo++;
  if (buildCounterTargetingInfo < 3) {
    o.assetSliceSet = buildUnnamed92();
    o.packageName = 'foo';
    o.variant = buildUnnamed93();
  }
  buildCounterTargetingInfo--;
  return o;
}

void checkTargetingInfo(api.TargetingInfo o) {
  buildCounterTargetingInfo++;
  if (buildCounterTargetingInfo < 3) {
    checkUnnamed92(o.assetSliceSet!);
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    checkUnnamed93(o.variant!);
  }
  buildCounterTargetingInfo--;
}

core.int buildCounterTargetingRuleScope = 0;
api.TargetingRuleScope buildTargetingRuleScope() {
  final o = api.TargetingRuleScope();
  buildCounterTargetingRuleScope++;
  if (buildCounterTargetingRuleScope < 3) {
    o.anySubscriptionInApp = buildTargetingRuleScopeAnySubscriptionInApp();
    o.specificSubscriptionInApp = 'foo';
    o.thisSubscription = buildTargetingRuleScopeThisSubscription();
  }
  buildCounterTargetingRuleScope--;
  return o;
}

void checkTargetingRuleScope(api.TargetingRuleScope o) {
  buildCounterTargetingRuleScope++;
  if (buildCounterTargetingRuleScope < 3) {
    checkTargetingRuleScopeAnySubscriptionInApp(o.anySubscriptionInApp!);
    unittest.expect(
      o.specificSubscriptionInApp!,
      unittest.equals('foo'),
    );
    checkTargetingRuleScopeThisSubscription(o.thisSubscription!);
  }
  buildCounterTargetingRuleScope--;
}

core.int buildCounterTargetingRuleScopeAnySubscriptionInApp = 0;
api.TargetingRuleScopeAnySubscriptionInApp
    buildTargetingRuleScopeAnySubscriptionInApp() {
  final o = api.TargetingRuleScopeAnySubscriptionInApp();
  buildCounterTargetingRuleScopeAnySubscriptionInApp++;
  if (buildCounterTargetingRuleScopeAnySubscriptionInApp < 3) {}
  buildCounterTargetingRuleScopeAnySubscriptionInApp--;
  return o;
}

void checkTargetingRuleScopeAnySubscriptionInApp(
    api.TargetingRuleScopeAnySubscriptionInApp o) {
  buildCounterTargetingRuleScopeAnySubscriptionInApp++;
  if (buildCounterTargetingRuleScopeAnySubscriptionInApp < 3) {}
  buildCounterTargetingRuleScopeAnySubscriptionInApp--;
}

core.int buildCounterTargetingRuleScopeThisSubscription = 0;
api.TargetingRuleScopeThisSubscription
    buildTargetingRuleScopeThisSubscription() {
  final o = api.TargetingRuleScopeThisSubscription();
  buildCounterTargetingRuleScopeThisSubscription++;
  if (buildCounterTargetingRuleScopeThisSubscription < 3) {}
  buildCounterTargetingRuleScopeThisSubscription--;
  return o;
}

void checkTargetingRuleScopeThisSubscription(
    api.TargetingRuleScopeThisSubscription o) {
  buildCounterTargetingRuleScopeThisSubscription++;
  if (buildCounterTargetingRuleScopeThisSubscription < 3) {}
  buildCounterTargetingRuleScopeThisSubscription--;
}

core.int buildCounterTargetingUpdate = 0;
api.TargetingUpdate buildTargetingUpdate() {
  final o = api.TargetingUpdate();
  buildCounterTargetingUpdate++;
  if (buildCounterTargetingUpdate < 3) {
    o.allUsers = buildAllUsers();
    o.androidSdks = buildAndroidSdks();
    o.regions = buildRegions();
  }
  buildCounterTargetingUpdate--;
  return o;
}

void checkTargetingUpdate(api.TargetingUpdate o) {
  buildCounterTargetingUpdate++;
  if (buildCounterTargetingUpdate < 3) {
    checkAllUsers(o.allUsers!);
    checkAndroidSdks(o.androidSdks!);
    checkRegions(o.regions!);
  }
  buildCounterTargetingUpdate--;
}

core.int buildCounterTestPurchase = 0;
api.TestPurchase buildTestPurchase() {
  final o = api.TestPurchase();
  buildCounterTestPurchase++;
  if (buildCounterTestPurchase < 3) {}
  buildCounterTestPurchase--;
  return o;
}

void checkTestPurchase(api.TestPurchase o) {
  buildCounterTestPurchase++;
  if (buildCounterTestPurchase < 3) {}
  buildCounterTestPurchase--;
}

core.List<core.String> buildUnnamed94() => [
      'foo',
      'foo',
    ];

void checkUnnamed94(core.List<core.String> o) {
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

core.int buildCounterTesters = 0;
api.Testers buildTesters() {
  final o = api.Testers();
  buildCounterTesters++;
  if (buildCounterTesters < 3) {
    o.googleGroups = buildUnnamed94();
  }
  buildCounterTesters--;
  return o;
}

void checkTesters(api.Testers o) {
  buildCounterTesters++;
  if (buildCounterTesters < 3) {
    checkUnnamed94(o.googleGroups!);
  }
  buildCounterTesters--;
}

core.int buildCounterTextureCompressionFormat = 0;
api.TextureCompressionFormat buildTextureCompressionFormat() {
  final o = api.TextureCompressionFormat();
  buildCounterTextureCompressionFormat++;
  if (buildCounterTextureCompressionFormat < 3) {
    o.alias = 'foo';
  }
  buildCounterTextureCompressionFormat--;
  return o;
}

void checkTextureCompressionFormat(api.TextureCompressionFormat o) {
  buildCounterTextureCompressionFormat++;
  if (buildCounterTextureCompressionFormat < 3) {
    unittest.expect(
      o.alias!,
      unittest.equals('foo'),
    );
  }
  buildCounterTextureCompressionFormat--;
}

core.List<api.TextureCompressionFormat> buildUnnamed95() => [
      buildTextureCompressionFormat(),
      buildTextureCompressionFormat(),
    ];

void checkUnnamed95(core.List<api.TextureCompressionFormat> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTextureCompressionFormat(o[0]);
  checkTextureCompressionFormat(o[1]);
}

core.List<api.TextureCompressionFormat> buildUnnamed96() => [
      buildTextureCompressionFormat(),
      buildTextureCompressionFormat(),
    ];

void checkUnnamed96(core.List<api.TextureCompressionFormat> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTextureCompressionFormat(o[0]);
  checkTextureCompressionFormat(o[1]);
}

core.int buildCounterTextureCompressionFormatTargeting = 0;
api.TextureCompressionFormatTargeting buildTextureCompressionFormatTargeting() {
  final o = api.TextureCompressionFormatTargeting();
  buildCounterTextureCompressionFormatTargeting++;
  if (buildCounterTextureCompressionFormatTargeting < 3) {
    o.alternatives = buildUnnamed95();
    o.value = buildUnnamed96();
  }
  buildCounterTextureCompressionFormatTargeting--;
  return o;
}

void checkTextureCompressionFormatTargeting(
    api.TextureCompressionFormatTargeting o) {
  buildCounterTextureCompressionFormatTargeting++;
  if (buildCounterTextureCompressionFormatTargeting < 3) {
    checkUnnamed95(o.alternatives!);
    checkUnnamed96(o.value!);
  }
  buildCounterTextureCompressionFormatTargeting--;
}

core.int buildCounterTimestamp = 0;
api.Timestamp buildTimestamp() {
  final o = api.Timestamp();
  buildCounterTimestamp++;
  if (buildCounterTimestamp < 3) {
    o.nanos = 42;
    o.seconds = 'foo';
  }
  buildCounterTimestamp--;
  return o;
}

void checkTimestamp(api.Timestamp o) {
  buildCounterTimestamp++;
  if (buildCounterTimestamp < 3) {
    unittest.expect(
      o.nanos!,
      unittest.equals(42),
    );
    unittest.expect(
      o.seconds!,
      unittest.equals('foo'),
    );
  }
  buildCounterTimestamp--;
}

core.int buildCounterTokenPagination = 0;
api.TokenPagination buildTokenPagination() {
  final o = api.TokenPagination();
  buildCounterTokenPagination++;
  if (buildCounterTokenPagination < 3) {
    o.nextPageToken = 'foo';
    o.previousPageToken = 'foo';
  }
  buildCounterTokenPagination--;
  return o;
}

void checkTokenPagination(api.TokenPagination o) {
  buildCounterTokenPagination++;
  if (buildCounterTokenPagination < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.previousPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterTokenPagination--;
}

core.List<api.TrackRelease> buildUnnamed97() => [
      buildTrackRelease(),
      buildTrackRelease(),
    ];

void checkUnnamed97(core.List<api.TrackRelease> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrackRelease(o[0]);
  checkTrackRelease(o[1]);
}

core.int buildCounterTrack = 0;
api.Track buildTrack() {
  final o = api.Track();
  buildCounterTrack++;
  if (buildCounterTrack < 3) {
    o.releases = buildUnnamed97();
    o.track = 'foo';
  }
  buildCounterTrack--;
  return o;
}

void checkTrack(api.Track o) {
  buildCounterTrack++;
  if (buildCounterTrack < 3) {
    checkUnnamed97(o.releases!);
    unittest.expect(
      o.track!,
      unittest.equals('foo'),
    );
  }
  buildCounterTrack--;
}

core.int buildCounterTrackConfig = 0;
api.TrackConfig buildTrackConfig() {
  final o = api.TrackConfig();
  buildCounterTrackConfig++;
  if (buildCounterTrackConfig < 3) {
    o.formFactor = 'foo';
    o.track = 'foo';
    o.type = 'foo';
  }
  buildCounterTrackConfig--;
  return o;
}

void checkTrackConfig(api.TrackConfig o) {
  buildCounterTrackConfig++;
  if (buildCounterTrackConfig < 3) {
    unittest.expect(
      o.formFactor!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.track!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterTrackConfig--;
}

core.List<api.TrackTargetedCountry> buildUnnamed98() => [
      buildTrackTargetedCountry(),
      buildTrackTargetedCountry(),
    ];

void checkUnnamed98(core.List<api.TrackTargetedCountry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrackTargetedCountry(o[0]);
  checkTrackTargetedCountry(o[1]);
}

core.int buildCounterTrackCountryAvailability = 0;
api.TrackCountryAvailability buildTrackCountryAvailability() {
  final o = api.TrackCountryAvailability();
  buildCounterTrackCountryAvailability++;
  if (buildCounterTrackCountryAvailability < 3) {
    o.countries = buildUnnamed98();
    o.restOfWorld = true;
    o.syncWithProduction = true;
  }
  buildCounterTrackCountryAvailability--;
  return o;
}

void checkTrackCountryAvailability(api.TrackCountryAvailability o) {
  buildCounterTrackCountryAvailability++;
  if (buildCounterTrackCountryAvailability < 3) {
    checkUnnamed98(o.countries!);
    unittest.expect(o.restOfWorld!, unittest.isTrue);
    unittest.expect(o.syncWithProduction!, unittest.isTrue);
  }
  buildCounterTrackCountryAvailability--;
}

core.List<api.LocalizedText> buildUnnamed99() => [
      buildLocalizedText(),
      buildLocalizedText(),
    ];

void checkUnnamed99(core.List<api.LocalizedText> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocalizedText(o[0]);
  checkLocalizedText(o[1]);
}

core.List<core.String> buildUnnamed100() => [
      'foo',
      'foo',
    ];

void checkUnnamed100(core.List<core.String> o) {
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

core.int buildCounterTrackRelease = 0;
api.TrackRelease buildTrackRelease() {
  final o = api.TrackRelease();
  buildCounterTrackRelease++;
  if (buildCounterTrackRelease < 3) {
    o.countryTargeting = buildCountryTargeting();
    o.inAppUpdatePriority = 42;
    o.name = 'foo';
    o.releaseNotes = buildUnnamed99();
    o.status = 'foo';
    o.userFraction = 42.0;
    o.versionCodes = buildUnnamed100();
  }
  buildCounterTrackRelease--;
  return o;
}

void checkTrackRelease(api.TrackRelease o) {
  buildCounterTrackRelease++;
  if (buildCounterTrackRelease < 3) {
    checkCountryTargeting(o.countryTargeting!);
    unittest.expect(
      o.inAppUpdatePriority!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed99(o.releaseNotes!);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userFraction!,
      unittest.equals(42.0),
    );
    checkUnnamed100(o.versionCodes!);
  }
  buildCounterTrackRelease--;
}

core.int buildCounterTrackTargetedCountry = 0;
api.TrackTargetedCountry buildTrackTargetedCountry() {
  final o = api.TrackTargetedCountry();
  buildCounterTrackTargetedCountry++;
  if (buildCounterTrackTargetedCountry < 3) {
    o.countryCode = 'foo';
  }
  buildCounterTrackTargetedCountry--;
  return o;
}

void checkTrackTargetedCountry(api.TrackTargetedCountry o) {
  buildCounterTrackTargetedCountry++;
  if (buildCounterTrackTargetedCountry < 3) {
    unittest.expect(
      o.countryCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterTrackTargetedCountry--;
}

core.List<api.Track> buildUnnamed101() => [
      buildTrack(),
      buildTrack(),
    ];

void checkUnnamed101(core.List<api.Track> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTrack(o[0]);
  checkTrack(o[1]);
}

core.int buildCounterTracksListResponse = 0;
api.TracksListResponse buildTracksListResponse() {
  final o = api.TracksListResponse();
  buildCounterTracksListResponse++;
  if (buildCounterTracksListResponse < 3) {
    o.kind = 'foo';
    o.tracks = buildUnnamed101();
  }
  buildCounterTracksListResponse--;
  return o;
}

void checkTracksListResponse(api.TracksListResponse o) {
  buildCounterTracksListResponse++;
  if (buildCounterTracksListResponse < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    checkUnnamed101(o.tracks!);
  }
  buildCounterTracksListResponse--;
}

core.int buildCounterUpdateBasePlanStateRequest = 0;
api.UpdateBasePlanStateRequest buildUpdateBasePlanStateRequest() {
  final o = api.UpdateBasePlanStateRequest();
  buildCounterUpdateBasePlanStateRequest++;
  if (buildCounterUpdateBasePlanStateRequest < 3) {
    o.activateBasePlanRequest = buildActivateBasePlanRequest();
    o.deactivateBasePlanRequest = buildDeactivateBasePlanRequest();
  }
  buildCounterUpdateBasePlanStateRequest--;
  return o;
}

void checkUpdateBasePlanStateRequest(api.UpdateBasePlanStateRequest o) {
  buildCounterUpdateBasePlanStateRequest++;
  if (buildCounterUpdateBasePlanStateRequest < 3) {
    checkActivateBasePlanRequest(o.activateBasePlanRequest!);
    checkDeactivateBasePlanRequest(o.deactivateBasePlanRequest!);
  }
  buildCounterUpdateBasePlanStateRequest--;
}

core.int buildCounterUpdateSubscriptionOfferRequest = 0;
api.UpdateSubscriptionOfferRequest buildUpdateSubscriptionOfferRequest() {
  final o = api.UpdateSubscriptionOfferRequest();
  buildCounterUpdateSubscriptionOfferRequest++;
  if (buildCounterUpdateSubscriptionOfferRequest < 3) {
    o.allowMissing = true;
    o.latencyTolerance = 'foo';
    o.regionsVersion = buildRegionsVersion();
    o.subscriptionOffer = buildSubscriptionOffer();
    o.updateMask = 'foo';
  }
  buildCounterUpdateSubscriptionOfferRequest--;
  return o;
}

void checkUpdateSubscriptionOfferRequest(api.UpdateSubscriptionOfferRequest o) {
  buildCounterUpdateSubscriptionOfferRequest++;
  if (buildCounterUpdateSubscriptionOfferRequest < 3) {
    unittest.expect(o.allowMissing!, unittest.isTrue);
    unittest.expect(
      o.latencyTolerance!,
      unittest.equals('foo'),
    );
    checkRegionsVersion(o.regionsVersion!);
    checkSubscriptionOffer(o.subscriptionOffer!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateSubscriptionOfferRequest--;
}

core.int buildCounterUpdateSubscriptionOfferStateRequest = 0;
api.UpdateSubscriptionOfferStateRequest
    buildUpdateSubscriptionOfferStateRequest() {
  final o = api.UpdateSubscriptionOfferStateRequest();
  buildCounterUpdateSubscriptionOfferStateRequest++;
  if (buildCounterUpdateSubscriptionOfferStateRequest < 3) {
    o.activateSubscriptionOfferRequest =
        buildActivateSubscriptionOfferRequest();
    o.deactivateSubscriptionOfferRequest =
        buildDeactivateSubscriptionOfferRequest();
  }
  buildCounterUpdateSubscriptionOfferStateRequest--;
  return o;
}

void checkUpdateSubscriptionOfferStateRequest(
    api.UpdateSubscriptionOfferStateRequest o) {
  buildCounterUpdateSubscriptionOfferStateRequest++;
  if (buildCounterUpdateSubscriptionOfferStateRequest < 3) {
    checkActivateSubscriptionOfferRequest(o.activateSubscriptionOfferRequest!);
    checkDeactivateSubscriptionOfferRequest(
        o.deactivateSubscriptionOfferRequest!);
  }
  buildCounterUpdateSubscriptionOfferStateRequest--;
}

core.int buildCounterUpdateSubscriptionRequest = 0;
api.UpdateSubscriptionRequest buildUpdateSubscriptionRequest() {
  final o = api.UpdateSubscriptionRequest();
  buildCounterUpdateSubscriptionRequest++;
  if (buildCounterUpdateSubscriptionRequest < 3) {
    o.allowMissing = true;
    o.latencyTolerance = 'foo';
    o.regionsVersion = buildRegionsVersion();
    o.subscription = buildSubscription();
    o.updateMask = 'foo';
  }
  buildCounterUpdateSubscriptionRequest--;
  return o;
}

void checkUpdateSubscriptionRequest(api.UpdateSubscriptionRequest o) {
  buildCounterUpdateSubscriptionRequest++;
  if (buildCounterUpdateSubscriptionRequest < 3) {
    unittest.expect(o.allowMissing!, unittest.isTrue);
    unittest.expect(
      o.latencyTolerance!,
      unittest.equals('foo'),
    );
    checkRegionsVersion(o.regionsVersion!);
    checkSubscription(o.subscription!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateSubscriptionRequest--;
}

core.int buildCounterUpgradeTargetingRule = 0;
api.UpgradeTargetingRule buildUpgradeTargetingRule() {
  final o = api.UpgradeTargetingRule();
  buildCounterUpgradeTargetingRule++;
  if (buildCounterUpgradeTargetingRule < 3) {
    o.billingPeriodDuration = 'foo';
    o.oncePerUser = true;
    o.scope = buildTargetingRuleScope();
  }
  buildCounterUpgradeTargetingRule--;
  return o;
}

void checkUpgradeTargetingRule(api.UpgradeTargetingRule o) {
  buildCounterUpgradeTargetingRule++;
  if (buildCounterUpgradeTargetingRule < 3) {
    unittest.expect(
      o.billingPeriodDuration!,
      unittest.equals('foo'),
    );
    unittest.expect(o.oncePerUser!, unittest.isTrue);
    checkTargetingRuleScope(o.scope!);
  }
  buildCounterUpgradeTargetingRule--;
}

core.List<core.String> buildUnnamed102() => [
      'foo',
      'foo',
    ];

void checkUnnamed102(core.List<core.String> o) {
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

core.List<api.Grant> buildUnnamed103() => [
      buildGrant(),
      buildGrant(),
    ];

void checkUnnamed103(core.List<api.Grant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGrant(o[0]);
  checkGrant(o[1]);
}

core.int buildCounterUser = 0;
api.User buildUser() {
  final o = api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.accessState = 'foo';
    o.developerAccountPermissions = buildUnnamed102();
    o.email = 'foo';
    o.expirationTime = 'foo';
    o.grants = buildUnnamed103();
    o.name = 'foo';
    o.partial = true;
  }
  buildCounterUser--;
  return o;
}

void checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    unittest.expect(
      o.accessState!,
      unittest.equals('foo'),
    );
    checkUnnamed102(o.developerAccountPermissions!);
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expirationTime!,
      unittest.equals('foo'),
    );
    checkUnnamed103(o.grants!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.partial!, unittest.isTrue);
  }
  buildCounterUser--;
}

core.int buildCounterUserComment = 0;
api.UserComment buildUserComment() {
  final o = api.UserComment();
  buildCounterUserComment++;
  if (buildCounterUserComment < 3) {
    o.androidOsVersion = 42;
    o.appVersionCode = 42;
    o.appVersionName = 'foo';
    o.device = 'foo';
    o.deviceMetadata = buildDeviceMetadata();
    o.lastModified = buildTimestamp();
    o.originalText = 'foo';
    o.reviewerLanguage = 'foo';
    o.starRating = 42;
    o.text = 'foo';
    o.thumbsDownCount = 42;
    o.thumbsUpCount = 42;
  }
  buildCounterUserComment--;
  return o;
}

void checkUserComment(api.UserComment o) {
  buildCounterUserComment++;
  if (buildCounterUserComment < 3) {
    unittest.expect(
      o.androidOsVersion!,
      unittest.equals(42),
    );
    unittest.expect(
      o.appVersionCode!,
      unittest.equals(42),
    );
    unittest.expect(
      o.appVersionName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.device!,
      unittest.equals('foo'),
    );
    checkDeviceMetadata(o.deviceMetadata!);
    checkTimestamp(o.lastModified!);
    unittest.expect(
      o.originalText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reviewerLanguage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.starRating!,
      unittest.equals(42),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.thumbsDownCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.thumbsUpCount!,
      unittest.equals(42),
    );
  }
  buildCounterUserComment--;
}

core.List<core.String> buildUnnamed104() => [
      'foo',
      'foo',
    ];

void checkUnnamed104(core.List<core.String> o) {
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

core.int buildCounterUserCountriesTargeting = 0;
api.UserCountriesTargeting buildUserCountriesTargeting() {
  final o = api.UserCountriesTargeting();
  buildCounterUserCountriesTargeting++;
  if (buildCounterUserCountriesTargeting < 3) {
    o.countryCodes = buildUnnamed104();
    o.exclude = true;
  }
  buildCounterUserCountriesTargeting--;
  return o;
}

void checkUserCountriesTargeting(api.UserCountriesTargeting o) {
  buildCounterUserCountriesTargeting++;
  if (buildCounterUserCountriesTargeting < 3) {
    checkUnnamed104(o.countryCodes!);
    unittest.expect(o.exclude!, unittest.isTrue);
  }
  buildCounterUserCountriesTargeting--;
}

core.List<core.String> buildUnnamed105() => [
      'foo',
      'foo',
    ];

void checkUnnamed105(core.List<core.String> o) {
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

core.int buildCounterUserCountrySet = 0;
api.UserCountrySet buildUserCountrySet() {
  final o = api.UserCountrySet();
  buildCounterUserCountrySet++;
  if (buildCounterUserCountrySet < 3) {
    o.countryCodes = buildUnnamed105();
    o.name = 'foo';
  }
  buildCounterUserCountrySet--;
  return o;
}

void checkUserCountrySet(api.UserCountrySet o) {
  buildCounterUserCountrySet++;
  if (buildCounterUserCountrySet < 3) {
    checkUnnamed105(o.countryCodes!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserCountrySet--;
}

core.int buildCounterUserInitiatedCancellation = 0;
api.UserInitiatedCancellation buildUserInitiatedCancellation() {
  final o = api.UserInitiatedCancellation();
  buildCounterUserInitiatedCancellation++;
  if (buildCounterUserInitiatedCancellation < 3) {
    o.cancelSurveyResult = buildCancelSurveyResult();
    o.cancelTime = 'foo';
  }
  buildCounterUserInitiatedCancellation--;
  return o;
}

void checkUserInitiatedCancellation(api.UserInitiatedCancellation o) {
  buildCounterUserInitiatedCancellation++;
  if (buildCounterUserInitiatedCancellation < 3) {
    checkCancelSurveyResult(o.cancelSurveyResult!);
    unittest.expect(
      o.cancelTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserInitiatedCancellation--;
}

core.int buildCounterUsesPermission = 0;
api.UsesPermission buildUsesPermission() {
  final o = api.UsesPermission();
  buildCounterUsesPermission++;
  if (buildCounterUsesPermission < 3) {
    o.maxSdkVersion = 42;
    o.name = 'foo';
  }
  buildCounterUsesPermission--;
  return o;
}

void checkUsesPermission(api.UsesPermission o) {
  buildCounterUsesPermission++;
  if (buildCounterUsesPermission < 3) {
    unittest.expect(
      o.maxSdkVersion!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterUsesPermission--;
}

core.int buildCounterVariant = 0;
api.Variant buildVariant() {
  final o = api.Variant();
  buildCounterVariant++;
  if (buildCounterVariant < 3) {
    o.deviceSpec = buildDeviceSpec();
    o.options = buildSystemApkOptions();
    o.variantId = 42;
  }
  buildCounterVariant--;
  return o;
}

void checkVariant(api.Variant o) {
  buildCounterVariant++;
  if (buildCounterVariant < 3) {
    checkDeviceSpec(o.deviceSpec!);
    checkSystemApkOptions(o.options!);
    unittest.expect(
      o.variantId!,
      unittest.equals(42),
    );
  }
  buildCounterVariant--;
}

core.int buildCounterVariantTargeting = 0;
api.VariantTargeting buildVariantTargeting() {
  final o = api.VariantTargeting();
  buildCounterVariantTargeting++;
  if (buildCounterVariantTargeting < 3) {
    o.abiTargeting = buildAbiTargeting();
    o.multiAbiTargeting = buildMultiAbiTargeting();
    o.screenDensityTargeting = buildScreenDensityTargeting();
    o.sdkVersionTargeting = buildSdkVersionTargeting();
    o.textureCompressionFormatTargeting =
        buildTextureCompressionFormatTargeting();
  }
  buildCounterVariantTargeting--;
  return o;
}

void checkVariantTargeting(api.VariantTargeting o) {
  buildCounterVariantTargeting++;
  if (buildCounterVariantTargeting < 3) {
    checkAbiTargeting(o.abiTargeting!);
    checkMultiAbiTargeting(o.multiAbiTargeting!);
    checkScreenDensityTargeting(o.screenDensityTargeting!);
    checkSdkVersionTargeting(o.sdkVersionTargeting!);
    checkTextureCompressionFormatTargeting(
        o.textureCompressionFormatTargeting!);
  }
  buildCounterVariantTargeting--;
}

core.int buildCounterVoidedPurchase = 0;
api.VoidedPurchase buildVoidedPurchase() {
  final o = api.VoidedPurchase();
  buildCounterVoidedPurchase++;
  if (buildCounterVoidedPurchase < 3) {
    o.kind = 'foo';
    o.orderId = 'foo';
    o.purchaseTimeMillis = 'foo';
    o.purchaseToken = 'foo';
    o.voidedQuantity = 42;
    o.voidedReason = 42;
    o.voidedSource = 42;
    o.voidedTimeMillis = 'foo';
  }
  buildCounterVoidedPurchase--;
  return o;
}

void checkVoidedPurchase(api.VoidedPurchase o) {
  buildCounterVoidedPurchase++;
  if (buildCounterVoidedPurchase < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.orderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.purchaseTimeMillis!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.purchaseToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.voidedQuantity!,
      unittest.equals(42),
    );
    unittest.expect(
      o.voidedReason!,
      unittest.equals(42),
    );
    unittest.expect(
      o.voidedSource!,
      unittest.equals(42),
    );
    unittest.expect(
      o.voidedTimeMillis!,
      unittest.equals('foo'),
    );
  }
  buildCounterVoidedPurchase--;
}

core.List<api.VoidedPurchase> buildUnnamed106() => [
      buildVoidedPurchase(),
      buildVoidedPurchase(),
    ];

void checkUnnamed106(core.List<api.VoidedPurchase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVoidedPurchase(o[0]);
  checkVoidedPurchase(o[1]);
}

core.int buildCounterVoidedPurchasesListResponse = 0;
api.VoidedPurchasesListResponse buildVoidedPurchasesListResponse() {
  final o = api.VoidedPurchasesListResponse();
  buildCounterVoidedPurchasesListResponse++;
  if (buildCounterVoidedPurchasesListResponse < 3) {
    o.pageInfo = buildPageInfo();
    o.tokenPagination = buildTokenPagination();
    o.voidedPurchases = buildUnnamed106();
  }
  buildCounterVoidedPurchasesListResponse--;
  return o;
}

void checkVoidedPurchasesListResponse(api.VoidedPurchasesListResponse o) {
  buildCounterVoidedPurchasesListResponse++;
  if (buildCounterVoidedPurchasesListResponse < 3) {
    checkPageInfo(o.pageInfo!);
    checkTokenPagination(o.tokenPagination!);
    checkUnnamed106(o.voidedPurchases!);
  }
  buildCounterVoidedPurchasesListResponse--;
}

core.List<core.String> buildUnnamed107() => [
      'foo',
      'foo',
    ];

void checkUnnamed107(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed108() => [
      'foo',
      'foo',
    ];

void checkUnnamed108(core.List<core.String> o) {
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
  unittest.group('obj-schema-Abi', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAbi();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Abi.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAbi(od);
    });
  });

  unittest.group('obj-schema-AbiTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAbiTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AbiTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAbiTargeting(od);
    });
  });

  unittest.group('obj-schema-AcquisitionTargetingRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAcquisitionTargetingRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AcquisitionTargetingRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAcquisitionTargetingRule(od);
    });
  });

  unittest.group('obj-schema-ActivateBasePlanRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivateBasePlanRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivateBasePlanRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActivateBasePlanRequest(od);
    });
  });

  unittest.group('obj-schema-ActivateSubscriptionOfferRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActivateSubscriptionOfferRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ActivateSubscriptionOfferRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkActivateSubscriptionOfferRequest(od);
    });
  });

  unittest.group('obj-schema-AddTargetingRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddTargetingRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddTargetingRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddTargetingRequest(od);
    });
  });

  unittest.group('obj-schema-AddTargetingResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddTargetingResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddTargetingResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddTargetingResponse(od);
    });
  });

  unittest.group('obj-schema-AllUsers', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAllUsers();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AllUsers.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAllUsers(od);
    });
  });

  unittest.group('obj-schema-AndroidSdks', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAndroidSdks();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AndroidSdks.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAndroidSdks(od);
    });
  });

  unittest.group('obj-schema-Apk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Apk.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkApk(od);
    });
  });

  unittest.group('obj-schema-ApkBinary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApkBinary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ApkBinary.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkApkBinary(od);
    });
  });

  unittest.group('obj-schema-ApkDescription', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApkDescription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApkDescription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApkDescription(od);
    });
  });

  unittest.group('obj-schema-ApkSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApkSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ApkSet.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkApkSet(od);
    });
  });

  unittest.group('obj-schema-ApkTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApkTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApkTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApkTargeting(od);
    });
  });

  unittest.group('obj-schema-ApksAddExternallyHostedRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApksAddExternallyHostedRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApksAddExternallyHostedRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApksAddExternallyHostedRequest(od);
    });
  });

  unittest.group('obj-schema-ApksAddExternallyHostedResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApksAddExternallyHostedResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApksAddExternallyHostedResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApksAddExternallyHostedResponse(od);
    });
  });

  unittest.group('obj-schema-ApksListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApksListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApksListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApksListResponse(od);
    });
  });

  unittest.group('obj-schema-AppDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AppDetails.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAppDetails(od);
    });
  });

  unittest.group('obj-schema-AppEdit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppEdit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AppEdit.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAppEdit(od);
    });
  });

  unittest.group('obj-schema-AppRecoveryAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppRecoveryAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppRecoveryAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppRecoveryAction(od);
    });
  });

  unittest.group('obj-schema-AppVersionList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppVersionList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppVersionList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppVersionList(od);
    });
  });

  unittest.group('obj-schema-AppVersionRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppVersionRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppVersionRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppVersionRange(od);
    });
  });

  unittest.group('obj-schema-ArchiveSubscriptionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArchiveSubscriptionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ArchiveSubscriptionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkArchiveSubscriptionRequest(od);
    });
  });

  unittest.group('obj-schema-AssetModuleMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssetModuleMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AssetModuleMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAssetModuleMetadata(od);
    });
  });

  unittest.group('obj-schema-AssetSliceSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssetSliceSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AssetSliceSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAssetSliceSet(od);
    });
  });

  unittest.group('obj-schema-AutoRenewingBasePlanType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutoRenewingBasePlanType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutoRenewingBasePlanType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAutoRenewingBasePlanType(od);
    });
  });

  unittest.group('obj-schema-AutoRenewingPlan', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutoRenewingPlan();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutoRenewingPlan.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAutoRenewingPlan(od);
    });
  });

  unittest.group('obj-schema-BasePlan', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBasePlan();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.BasePlan.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBasePlan(od);
    });
  });

  unittest.group('obj-schema-BatchGetSubscriptionOffersRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchGetSubscriptionOffersRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchGetSubscriptionOffersRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchGetSubscriptionOffersRequest(od);
    });
  });

  unittest.group('obj-schema-BatchGetSubscriptionOffersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchGetSubscriptionOffersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchGetSubscriptionOffersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchGetSubscriptionOffersResponse(od);
    });
  });

  unittest.group('obj-schema-BatchGetSubscriptionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchGetSubscriptionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchGetSubscriptionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchGetSubscriptionsResponse(od);
    });
  });

  unittest.group('obj-schema-BatchMigrateBasePlanPricesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchMigrateBasePlanPricesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchMigrateBasePlanPricesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchMigrateBasePlanPricesRequest(od);
    });
  });

  unittest.group('obj-schema-BatchMigrateBasePlanPricesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchMigrateBasePlanPricesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchMigrateBasePlanPricesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchMigrateBasePlanPricesResponse(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateBasePlanStatesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateBasePlanStatesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateBasePlanStatesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateBasePlanStatesRequest(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateBasePlanStatesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateBasePlanStatesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateBasePlanStatesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateBasePlanStatesResponse(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateSubscriptionOfferStatesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateSubscriptionOfferStatesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateSubscriptionOfferStatesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateSubscriptionOfferStatesRequest(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateSubscriptionOfferStatesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateSubscriptionOfferStatesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateSubscriptionOfferStatesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateSubscriptionOfferStatesResponse(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateSubscriptionOffersRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateSubscriptionOffersRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateSubscriptionOffersRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateSubscriptionOffersRequest(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateSubscriptionOffersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateSubscriptionOffersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateSubscriptionOffersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateSubscriptionOffersResponse(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateSubscriptionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateSubscriptionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateSubscriptionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateSubscriptionsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateSubscriptionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateSubscriptionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateSubscriptionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateSubscriptionsResponse(od);
    });
  });

  unittest.group('obj-schema-Bundle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBundle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Bundle.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBundle(od);
    });
  });

  unittest.group('obj-schema-BundlesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBundlesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BundlesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBundlesListResponse(od);
    });
  });

  unittest.group('obj-schema-CancelAppRecoveryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelAppRecoveryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelAppRecoveryRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelAppRecoveryRequest(od);
    });
  });

  unittest.group('obj-schema-CancelAppRecoveryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelAppRecoveryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelAppRecoveryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelAppRecoveryResponse(od);
    });
  });

  unittest.group('obj-schema-CancelSurveyResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelSurveyResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelSurveyResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelSurveyResult(od);
    });
  });

  unittest.group('obj-schema-CanceledStateContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCanceledStateContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CanceledStateContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCanceledStateContext(od);
    });
  });

  unittest.group('obj-schema-Comment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Comment.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkComment(od);
    });
  });

  unittest.group('obj-schema-ConvertRegionPricesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConvertRegionPricesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConvertRegionPricesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConvertRegionPricesRequest(od);
    });
  });

  unittest.group('obj-schema-ConvertRegionPricesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConvertRegionPricesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConvertRegionPricesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConvertRegionPricesResponse(od);
    });
  });

  unittest.group('obj-schema-ConvertedOtherRegionsPrice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConvertedOtherRegionsPrice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConvertedOtherRegionsPrice.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConvertedOtherRegionsPrice(od);
    });
  });

  unittest.group('obj-schema-ConvertedRegionPrice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConvertedRegionPrice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConvertedRegionPrice.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConvertedRegionPrice(od);
    });
  });

  unittest.group('obj-schema-CountryTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCountryTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CountryTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCountryTargeting(od);
    });
  });

  unittest.group('obj-schema-CreateDraftAppRecoveryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateDraftAppRecoveryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateDraftAppRecoveryRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateDraftAppRecoveryRequest(od);
    });
  });

  unittest.group('obj-schema-DeactivateBasePlanRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeactivateBasePlanRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeactivateBasePlanRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeactivateBasePlanRequest(od);
    });
  });

  unittest.group('obj-schema-DeactivateSubscriptionOfferRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeactivateSubscriptionOfferRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeactivateSubscriptionOfferRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeactivateSubscriptionOfferRequest(od);
    });
  });

  unittest.group('obj-schema-DeferredItemReplacement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeferredItemReplacement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeferredItemReplacement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeferredItemReplacement(od);
    });
  });

  unittest.group('obj-schema-DeobfuscationFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeobfuscationFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeobfuscationFile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeobfuscationFile(od);
    });
  });

  unittest.group('obj-schema-DeobfuscationFilesUploadResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeobfuscationFilesUploadResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeobfuscationFilesUploadResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeobfuscationFilesUploadResponse(od);
    });
  });

  unittest.group('obj-schema-DeployAppRecoveryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeployAppRecoveryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeployAppRecoveryRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeployAppRecoveryRequest(od);
    });
  });

  unittest.group('obj-schema-DeployAppRecoveryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeployAppRecoveryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeployAppRecoveryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeployAppRecoveryResponse(od);
    });
  });

  unittest.group('obj-schema-DeveloperComment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeveloperComment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeveloperComment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeveloperComment(od);
    });
  });

  unittest.group('obj-schema-DeveloperInitiatedCancellation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeveloperInitiatedCancellation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeveloperInitiatedCancellation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeveloperInitiatedCancellation(od);
    });
  });

  unittest.group('obj-schema-DeviceFeature', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceFeature();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceFeature.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeviceFeature(od);
    });
  });

  unittest.group('obj-schema-DeviceFeatureTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceFeatureTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceFeatureTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeviceFeatureTargeting(od);
    });
  });

  unittest.group('obj-schema-DeviceGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeviceGroup(od);
    });
  });

  unittest.group('obj-schema-DeviceId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DeviceId.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDeviceId(od);
    });
  });

  unittest.group('obj-schema-DeviceMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeviceMetadata(od);
    });
  });

  unittest.group('obj-schema-DeviceRam', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceRam();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DeviceRam.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDeviceRam(od);
    });
  });

  unittest.group('obj-schema-DeviceSelector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceSelector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceSelector.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeviceSelector(od);
    });
  });

  unittest.group('obj-schema-DeviceSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DeviceSpec.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDeviceSpec(od);
    });
  });

  unittest.group('obj-schema-DeviceTier', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceTier();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DeviceTier.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDeviceTier(od);
    });
  });

  unittest.group('obj-schema-DeviceTierConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceTierConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceTierConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeviceTierConfig(od);
    });
  });

  unittest.group('obj-schema-DeviceTierSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceTierSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceTierSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeviceTierSet(od);
    });
  });

  unittest.group('obj-schema-ExpansionFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpansionFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExpansionFile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExpansionFile(od);
    });
  });

  unittest.group('obj-schema-ExpansionFilesUploadResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpansionFilesUploadResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExpansionFilesUploadResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExpansionFilesUploadResponse(od);
    });
  });

  unittest.group('obj-schema-ExternalAccountIdentifiers', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExternalAccountIdentifiers();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExternalAccountIdentifiers.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExternalAccountIdentifiers(od);
    });
  });

  unittest.group('obj-schema-ExternalSubscription', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExternalSubscription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExternalSubscription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExternalSubscription(od);
    });
  });

  unittest.group('obj-schema-ExternalTransaction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExternalTransaction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExternalTransaction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExternalTransaction(od);
    });
  });

  unittest.group('obj-schema-ExternalTransactionAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExternalTransactionAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExternalTransactionAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExternalTransactionAddress(od);
    });
  });

  unittest.group('obj-schema-ExternalTransactionTestPurchase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExternalTransactionTestPurchase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExternalTransactionTestPurchase.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExternalTransactionTestPurchase(od);
    });
  });

  unittest.group('obj-schema-ExternallyHostedApk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExternallyHostedApk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExternallyHostedApk.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExternallyHostedApk(od);
    });
  });

  unittest.group('obj-schema-FullRefund', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFullRefund();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.FullRefund.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFullRefund(od);
    });
  });

  unittest.group('obj-schema-GeneratedApksListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeneratedApksListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GeneratedApksListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGeneratedApksListResponse(od);
    });
  });

  unittest.group('obj-schema-GeneratedApksPerSigningKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeneratedApksPerSigningKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GeneratedApksPerSigningKey.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGeneratedApksPerSigningKey(od);
    });
  });

  unittest.group('obj-schema-GeneratedAssetPackSlice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeneratedAssetPackSlice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GeneratedAssetPackSlice.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGeneratedAssetPackSlice(od);
    });
  });

  unittest.group('obj-schema-GeneratedRecoveryApk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeneratedRecoveryApk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GeneratedRecoveryApk.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGeneratedRecoveryApk(od);
    });
  });

  unittest.group('obj-schema-GeneratedSplitApk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeneratedSplitApk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GeneratedSplitApk.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGeneratedSplitApk(od);
    });
  });

  unittest.group('obj-schema-GeneratedStandaloneApk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeneratedStandaloneApk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GeneratedStandaloneApk.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGeneratedStandaloneApk(od);
    });
  });

  unittest.group('obj-schema-GeneratedUniversalApk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeneratedUniversalApk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GeneratedUniversalApk.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGeneratedUniversalApk(od);
    });
  });

  unittest.group('obj-schema-GetSubscriptionOfferRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetSubscriptionOfferRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetSubscriptionOfferRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetSubscriptionOfferRequest(od);
    });
  });

  unittest.group('obj-schema-Grant', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGrant();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Grant.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGrant(od);
    });
  });

  unittest.group('obj-schema-Image', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Image.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkImage(od);
    });
  });

  unittest.group('obj-schema-ImagesDeleteAllResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImagesDeleteAllResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImagesDeleteAllResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImagesDeleteAllResponse(od);
    });
  });

  unittest.group('obj-schema-ImagesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImagesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImagesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImagesListResponse(od);
    });
  });

  unittest.group('obj-schema-ImagesUploadResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImagesUploadResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImagesUploadResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImagesUploadResponse(od);
    });
  });

  unittest.group('obj-schema-InAppProduct', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInAppProduct();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InAppProduct.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInAppProduct(od);
    });
  });

  unittest.group('obj-schema-InAppProductListing', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInAppProductListing();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InAppProductListing.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInAppProductListing(od);
    });
  });

  unittest.group('obj-schema-InappproductsBatchDeleteRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInappproductsBatchDeleteRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InappproductsBatchDeleteRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInappproductsBatchDeleteRequest(od);
    });
  });

  unittest.group('obj-schema-InappproductsBatchGetResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInappproductsBatchGetResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InappproductsBatchGetResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInappproductsBatchGetResponse(od);
    });
  });

  unittest.group('obj-schema-InappproductsBatchUpdateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInappproductsBatchUpdateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InappproductsBatchUpdateRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInappproductsBatchUpdateRequest(od);
    });
  });

  unittest.group('obj-schema-InappproductsBatchUpdateResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInappproductsBatchUpdateResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InappproductsBatchUpdateResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInappproductsBatchUpdateResponse(od);
    });
  });

  unittest.group('obj-schema-InappproductsDeleteRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInappproductsDeleteRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InappproductsDeleteRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInappproductsDeleteRequest(od);
    });
  });

  unittest.group('obj-schema-InappproductsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInappproductsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InappproductsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInappproductsListResponse(od);
    });
  });

  unittest.group('obj-schema-InappproductsUpdateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInappproductsUpdateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InappproductsUpdateRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInappproductsUpdateRequest(od);
    });
  });

  unittest.group('obj-schema-InternalAppSharingArtifact', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInternalAppSharingArtifact();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InternalAppSharingArtifact.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInternalAppSharingArtifact(od);
    });
  });

  unittest.group('obj-schema-IntroductoryPriceInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIntroductoryPriceInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IntroductoryPriceInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIntroductoryPriceInfo(od);
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

  unittest.group('obj-schema-ListAppRecoveriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAppRecoveriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAppRecoveriesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAppRecoveriesResponse(od);
    });
  });

  unittest.group('obj-schema-ListDeviceTierConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDeviceTierConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDeviceTierConfigsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDeviceTierConfigsResponse(od);
    });
  });

  unittest.group('obj-schema-ListSubscriptionOffersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSubscriptionOffersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSubscriptionOffersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListSubscriptionOffersResponse(od);
    });
  });

  unittest.group('obj-schema-ListSubscriptionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSubscriptionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSubscriptionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListSubscriptionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListUsersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUsersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUsersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListUsersResponse(od);
    });
  });

  unittest.group('obj-schema-Listing', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListing();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Listing.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkListing(od);
    });
  });

  unittest.group('obj-schema-ListingsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListingsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListingsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListingsListResponse(od);
    });
  });

  unittest.group('obj-schema-LocalizedText', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocalizedText();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocalizedText.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLocalizedText(od);
    });
  });

  unittest.group('obj-schema-ManagedProductTaxAndComplianceSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedProductTaxAndComplianceSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedProductTaxAndComplianceSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedProductTaxAndComplianceSettings(od);
    });
  });

  unittest.group('obj-schema-MigrateBasePlanPricesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMigrateBasePlanPricesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MigrateBasePlanPricesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMigrateBasePlanPricesRequest(od);
    });
  });

  unittest.group('obj-schema-MigrateBasePlanPricesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMigrateBasePlanPricesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MigrateBasePlanPricesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMigrateBasePlanPricesResponse(od);
    });
  });

  unittest.group('obj-schema-ModuleMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModuleMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModuleMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkModuleMetadata(od);
    });
  });

  unittest.group('obj-schema-ModuleTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModuleTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModuleTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkModuleTargeting(od);
    });
  });

  unittest.group('obj-schema-Money', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMoney();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Money.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMoney(od);
    });
  });

  unittest.group('obj-schema-MultiAbi', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMultiAbi();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.MultiAbi.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMultiAbi(od);
    });
  });

  unittest.group('obj-schema-MultiAbiTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMultiAbiTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MultiAbiTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMultiAbiTargeting(od);
    });
  });

  unittest.group('obj-schema-OfferDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOfferDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OfferDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOfferDetails(od);
    });
  });

  unittest.group('obj-schema-OfferTag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOfferTag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.OfferTag.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOfferTag(od);
    });
  });

  unittest.group('obj-schema-OneTimeExternalTransaction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOneTimeExternalTransaction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OneTimeExternalTransaction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOneTimeExternalTransaction(od);
    });
  });

  unittest.group('obj-schema-OtherRegionsBasePlanConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOtherRegionsBasePlanConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OtherRegionsBasePlanConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOtherRegionsBasePlanConfig(od);
    });
  });

  unittest.group('obj-schema-OtherRegionsSubscriptionOfferConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOtherRegionsSubscriptionOfferConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OtherRegionsSubscriptionOfferConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOtherRegionsSubscriptionOfferConfig(od);
    });
  });

  unittest.group('obj-schema-OtherRegionsSubscriptionOfferPhaseConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOtherRegionsSubscriptionOfferPhaseConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OtherRegionsSubscriptionOfferPhaseConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOtherRegionsSubscriptionOfferPhaseConfig(od);
    });
  });

  unittest.group('obj-schema-OtherRegionsSubscriptionOfferPhasePrices', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOtherRegionsSubscriptionOfferPhasePrices();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OtherRegionsSubscriptionOfferPhasePrices.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOtherRegionsSubscriptionOfferPhasePrices(od);
    });
  });

  unittest.group('obj-schema-PageInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPageInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PageInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPageInfo(od);
    });
  });

  unittest.group('obj-schema-PartialRefund', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartialRefund();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartialRefund.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPartialRefund(od);
    });
  });

  unittest.group('obj-schema-PausedStateContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPausedStateContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PausedStateContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPausedStateContext(od);
    });
  });

  unittest.group('obj-schema-PrepaidBasePlanType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrepaidBasePlanType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrepaidBasePlanType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPrepaidBasePlanType(od);
    });
  });

  unittest.group('obj-schema-PrepaidPlan', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrepaidPlan();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrepaidPlan.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPrepaidPlan(od);
    });
  });

  unittest.group('obj-schema-Price', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Price.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPrice(od);
    });
  });

  unittest.group('obj-schema-ProductPurchase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductPurchase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductPurchase.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductPurchase(od);
    });
  });

  unittest.group('obj-schema-ProductPurchasesAcknowledgeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductPurchasesAcknowledgeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductPurchasesAcknowledgeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProductPurchasesAcknowledgeRequest(od);
    });
  });

  unittest.group('obj-schema-RecurringExternalTransaction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRecurringExternalTransaction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RecurringExternalTransaction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRecurringExternalTransaction(od);
    });
  });

  unittest.group('obj-schema-RefundExternalTransactionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRefundExternalTransactionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RefundExternalTransactionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRefundExternalTransactionRequest(od);
    });
  });

  unittest.group('obj-schema-RegionalBasePlanConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegionalBasePlanConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegionalBasePlanConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegionalBasePlanConfig(od);
    });
  });

  unittest.group('obj-schema-RegionalPriceMigrationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegionalPriceMigrationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegionalPriceMigrationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegionalPriceMigrationConfig(od);
    });
  });

  unittest.group('obj-schema-RegionalSubscriptionOfferConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegionalSubscriptionOfferConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegionalSubscriptionOfferConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegionalSubscriptionOfferConfig(od);
    });
  });

  unittest.group('obj-schema-RegionalSubscriptionOfferPhaseConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegionalSubscriptionOfferPhaseConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegionalSubscriptionOfferPhaseConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegionalSubscriptionOfferPhaseConfig(od);
    });
  });

  unittest.group('obj-schema-RegionalTaxRateInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegionalTaxRateInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegionalTaxRateInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegionalTaxRateInfo(od);
    });
  });

  unittest.group('obj-schema-Regions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Regions.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRegions(od);
    });
  });

  unittest.group('obj-schema-RegionsVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegionsVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegionsVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegionsVersion(od);
    });
  });

  unittest.group('obj-schema-RemoteInAppUpdate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoteInAppUpdate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoteInAppUpdate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoteInAppUpdate(od);
    });
  });

  unittest.group('obj-schema-RemoteInAppUpdateData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoteInAppUpdateData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoteInAppUpdateData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoteInAppUpdateData(od);
    });
  });

  unittest.group('obj-schema-RemoteInAppUpdateDataPerBundle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoteInAppUpdateDataPerBundle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoteInAppUpdateDataPerBundle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoteInAppUpdateDataPerBundle(od);
    });
  });

  unittest.group('obj-schema-ReplacementCancellation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplacementCancellation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplacementCancellation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReplacementCancellation(od);
    });
  });

  unittest.group('obj-schema-Review', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReview();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Review.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkReview(od);
    });
  });

  unittest.group('obj-schema-ReviewReplyResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReviewReplyResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReviewReplyResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReviewReplyResult(od);
    });
  });

  unittest.group('obj-schema-ReviewsListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReviewsListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReviewsListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReviewsListResponse(od);
    });
  });

  unittest.group('obj-schema-ReviewsReplyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReviewsReplyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReviewsReplyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReviewsReplyRequest(od);
    });
  });

  unittest.group('obj-schema-ReviewsReplyResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReviewsReplyResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReviewsReplyResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReviewsReplyResponse(od);
    });
  });

  unittest.group('obj-schema-RevocationContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRevocationContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RevocationContext.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRevocationContext(od);
    });
  });

  unittest.group('obj-schema-RevocationContextProratedRefund', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRevocationContextProratedRefund();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RevocationContextProratedRefund.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRevocationContextProratedRefund(od);
    });
  });

  unittest.group('obj-schema-RevokeSubscriptionPurchaseRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRevokeSubscriptionPurchaseRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RevokeSubscriptionPurchaseRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRevokeSubscriptionPurchaseRequest(od);
    });
  });

  unittest.group('obj-schema-RevokeSubscriptionPurchaseResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRevokeSubscriptionPurchaseResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RevokeSubscriptionPurchaseResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRevokeSubscriptionPurchaseResponse(od);
    });
  });

  unittest.group('obj-schema-SafetyLabelsUpdateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSafetyLabelsUpdateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SafetyLabelsUpdateRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSafetyLabelsUpdateRequest(od);
    });
  });

  unittest.group('obj-schema-SafetyLabelsUpdateResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSafetyLabelsUpdateResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SafetyLabelsUpdateResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSafetyLabelsUpdateResponse(od);
    });
  });

  unittest.group('obj-schema-ScreenDensity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScreenDensity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScreenDensity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkScreenDensity(od);
    });
  });

  unittest.group('obj-schema-ScreenDensityTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScreenDensityTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScreenDensityTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkScreenDensityTargeting(od);
    });
  });

  unittest.group('obj-schema-SdkVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSdkVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SdkVersion.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSdkVersion(od);
    });
  });

  unittest.group('obj-schema-SdkVersionTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSdkVersionTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SdkVersionTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSdkVersionTargeting(od);
    });
  });

  unittest.group('obj-schema-SplitApkMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSplitApkMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SplitApkMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSplitApkMetadata(od);
    });
  });

  unittest.group('obj-schema-SplitApkVariant', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSplitApkVariant();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SplitApkVariant.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSplitApkVariant(od);
    });
  });

  unittest.group('obj-schema-StandaloneApkMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStandaloneApkMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StandaloneApkMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStandaloneApkMetadata(od);
    });
  });

  unittest.group('obj-schema-SubscribeWithGoogleInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscribeWithGoogleInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscribeWithGoogleInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscribeWithGoogleInfo(od);
    });
  });

  unittest.group('obj-schema-Subscription', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Subscription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscription(od);
    });
  });

  unittest.group('obj-schema-SubscriptionCancelSurveyResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionCancelSurveyResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionCancelSurveyResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscriptionCancelSurveyResult(od);
    });
  });

  unittest.group('obj-schema-SubscriptionDeferralInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionDeferralInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionDeferralInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscriptionDeferralInfo(od);
    });
  });

  unittest.group('obj-schema-SubscriptionItemPriceChangeDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionItemPriceChangeDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionItemPriceChangeDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscriptionItemPriceChangeDetails(od);
    });
  });

  unittest.group('obj-schema-SubscriptionListing', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionListing();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionListing.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscriptionListing(od);
    });
  });

  unittest.group('obj-schema-SubscriptionOffer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionOffer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionOffer.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscriptionOffer(od);
    });
  });

  unittest.group('obj-schema-SubscriptionOfferPhase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionOfferPhase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionOfferPhase.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscriptionOfferPhase(od);
    });
  });

  unittest.group('obj-schema-SubscriptionOfferTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionOfferTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionOfferTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscriptionOfferTargeting(od);
    });
  });

  unittest.group('obj-schema-SubscriptionPriceChange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionPriceChange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionPriceChange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscriptionPriceChange(od);
    });
  });

  unittest.group('obj-schema-SubscriptionPurchase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionPurchase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionPurchase.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscriptionPurchase(od);
    });
  });

  unittest.group('obj-schema-SubscriptionPurchaseLineItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionPurchaseLineItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionPurchaseLineItem.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscriptionPurchaseLineItem(od);
    });
  });

  unittest.group('obj-schema-SubscriptionPurchaseV2', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionPurchaseV2();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionPurchaseV2.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscriptionPurchaseV2(od);
    });
  });

  unittest.group('obj-schema-SubscriptionPurchasesAcknowledgeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionPurchasesAcknowledgeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionPurchasesAcknowledgeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscriptionPurchasesAcknowledgeRequest(od);
    });
  });

  unittest.group('obj-schema-SubscriptionPurchasesDeferRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionPurchasesDeferRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionPurchasesDeferRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscriptionPurchasesDeferRequest(od);
    });
  });

  unittest.group('obj-schema-SubscriptionPurchasesDeferResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionPurchasesDeferResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionPurchasesDeferResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscriptionPurchasesDeferResponse(od);
    });
  });

  unittest.group('obj-schema-SubscriptionTaxAndComplianceSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubscriptionTaxAndComplianceSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubscriptionTaxAndComplianceSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubscriptionTaxAndComplianceSettings(od);
    });
  });

  unittest.group('obj-schema-SystemApkOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSystemApkOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SystemApkOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSystemApkOptions(od);
    });
  });

  unittest.group('obj-schema-SystemApksListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSystemApksListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SystemApksListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSystemApksListResponse(od);
    });
  });

  unittest.group('obj-schema-SystemFeature', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSystemFeature();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SystemFeature.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSystemFeature(od);
    });
  });

  unittest.group('obj-schema-SystemInitiatedCancellation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSystemInitiatedCancellation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SystemInitiatedCancellation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSystemInitiatedCancellation(od);
    });
  });

  unittest.group('obj-schema-Targeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Targeting.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTargeting(od);
    });
  });

  unittest.group('obj-schema-TargetingInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetingInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetingInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetingInfo(od);
    });
  });

  unittest.group('obj-schema-TargetingRuleScope', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetingRuleScope();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetingRuleScope.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetingRuleScope(od);
    });
  });

  unittest.group('obj-schema-TargetingRuleScopeAnySubscriptionInApp', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetingRuleScopeAnySubscriptionInApp();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetingRuleScopeAnySubscriptionInApp.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetingRuleScopeAnySubscriptionInApp(od);
    });
  });

  unittest.group('obj-schema-TargetingRuleScopeThisSubscription', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetingRuleScopeThisSubscription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetingRuleScopeThisSubscription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetingRuleScopeThisSubscription(od);
    });
  });

  unittest.group('obj-schema-TargetingUpdate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTargetingUpdate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TargetingUpdate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTargetingUpdate(od);
    });
  });

  unittest.group('obj-schema-TestPurchase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestPurchase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestPurchase.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTestPurchase(od);
    });
  });

  unittest.group('obj-schema-Testers', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTesters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Testers.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTesters(od);
    });
  });

  unittest.group('obj-schema-TextureCompressionFormat', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextureCompressionFormat();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextureCompressionFormat.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTextureCompressionFormat(od);
    });
  });

  unittest.group('obj-schema-TextureCompressionFormatTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextureCompressionFormatTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextureCompressionFormatTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTextureCompressionFormatTargeting(od);
    });
  });

  unittest.group('obj-schema-Timestamp', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimestamp();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Timestamp.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTimestamp(od);
    });
  });

  unittest.group('obj-schema-TokenPagination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTokenPagination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TokenPagination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTokenPagination(od);
    });
  });

  unittest.group('obj-schema-Track', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrack();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Track.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTrack(od);
    });
  });

  unittest.group('obj-schema-TrackConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrackConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TrackConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTrackConfig(od);
    });
  });

  unittest.group('obj-schema-TrackCountryAvailability', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrackCountryAvailability();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TrackCountryAvailability.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTrackCountryAvailability(od);
    });
  });

  unittest.group('obj-schema-TrackRelease', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrackRelease();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TrackRelease.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTrackRelease(od);
    });
  });

  unittest.group('obj-schema-TrackTargetedCountry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrackTargetedCountry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TrackTargetedCountry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTrackTargetedCountry(od);
    });
  });

  unittest.group('obj-schema-TracksListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTracksListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TracksListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTracksListResponse(od);
    });
  });

  unittest.group('obj-schema-UpdateBasePlanStateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateBasePlanStateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateBasePlanStateRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateBasePlanStateRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateSubscriptionOfferRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateSubscriptionOfferRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateSubscriptionOfferRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateSubscriptionOfferRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateSubscriptionOfferStateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateSubscriptionOfferStateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateSubscriptionOfferStateRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateSubscriptionOfferStateRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateSubscriptionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateSubscriptionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateSubscriptionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateSubscriptionRequest(od);
    });
  });

  unittest.group('obj-schema-UpgradeTargetingRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpgradeTargetingRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpgradeTargetingRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpgradeTargetingRule(od);
    });
  });

  unittest.group('obj-schema-User', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.User.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkUser(od);
    });
  });

  unittest.group('obj-schema-UserComment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserComment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserComment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserComment(od);
    });
  });

  unittest.group('obj-schema-UserCountriesTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserCountriesTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserCountriesTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserCountriesTargeting(od);
    });
  });

  unittest.group('obj-schema-UserCountrySet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserCountrySet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserCountrySet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserCountrySet(od);
    });
  });

  unittest.group('obj-schema-UserInitiatedCancellation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserInitiatedCancellation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserInitiatedCancellation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserInitiatedCancellation(od);
    });
  });

  unittest.group('obj-schema-UsesPermission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsesPermission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsesPermission.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUsesPermission(od);
    });
  });

  unittest.group('obj-schema-Variant', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVariant();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Variant.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVariant(od);
    });
  });

  unittest.group('obj-schema-VariantTargeting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVariantTargeting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VariantTargeting.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVariantTargeting(od);
    });
  });

  unittest.group('obj-schema-VoidedPurchase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVoidedPurchase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VoidedPurchase.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVoidedPurchase(od);
    });
  });

  unittest.group('obj-schema-VoidedPurchasesListResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVoidedPurchasesListResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VoidedPurchasesListResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVoidedPurchasesListResponse(od);
    });
  });

  unittest.group('resource-ApplicationsResource', () {
    unittest.test('method--dataSafety', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).applications;
      final arg_request = buildSafetyLabelsUpdateRequest();
      final arg_packageName = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SafetyLabelsUpdateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSafetyLabelsUpdateRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/dataSafety', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/dataSafety'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSafetyLabelsUpdateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.dataSafety(arg_request, arg_packageName,
          $fields: arg_$fields);
      checkSafetyLabelsUpdateResponse(
          response as api.SafetyLabelsUpdateResponse);
    });
  });

  unittest.group('resource-ApplicationsDeviceTierConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).applications.deviceTierConfigs;
      final arg_request = buildDeviceTierConfig();
      final arg_packageName = 'foo';
      final arg_allowUnknownDevices = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DeviceTierConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeviceTierConfig(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/deviceTierConfigs', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/deviceTierConfigs'),
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
          queryMap['allowUnknownDevices']!.first,
          unittest.equals('$arg_allowUnknownDevices'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDeviceTierConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_packageName,
          allowUnknownDevices: arg_allowUnknownDevices, $fields: arg_$fields);
      checkDeviceTierConfig(response as api.DeviceTierConfig);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).applications.deviceTierConfigs;
      final arg_packageName = 'foo';
      final arg_deviceTierConfigId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/deviceTierConfigs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/deviceTierConfigs/'),
        );
        pathOffset += 19;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_deviceTierConfigId'),
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
        final resp = convert.json.encode(buildDeviceTierConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_packageName, arg_deviceTierConfigId,
          $fields: arg_$fields);
      checkDeviceTierConfig(response as api.DeviceTierConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).applications.deviceTierConfigs;
      final arg_packageName = 'foo';
      final arg_pageSize = 42;
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/deviceTierConfigs', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/deviceTierConfigs'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListDeviceTierConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_packageName,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListDeviceTierConfigsResponse(
          response as api.ListDeviceTierConfigsResponse);
    });
  });

  unittest.group('resource-ApprecoveryResource', () {
    unittest.test('method--addTargeting', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).apprecovery;
      final arg_request = buildAddTargetingRequest();
      final arg_packageName = 'foo';
      final arg_appRecoveryId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AddTargetingRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAddTargetingRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/appRecoveries/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/appRecoveries/'),
        );
        pathOffset += 15;
        index = path.indexOf(':addTargeting', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_appRecoveryId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals(':addTargeting'),
        );
        pathOffset += 13;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final resp = convert.json.encode(buildAddTargetingResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.addTargeting(
          arg_request, arg_packageName, arg_appRecoveryId,
          $fields: arg_$fields);
      checkAddTargetingResponse(response as api.AddTargetingResponse);
    });

    unittest.test('method--appRecoveries', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).apprecovery;
      final arg_packageName = 'foo';
      final arg_versionCode = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/appRecoveries', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/appRecoveries'),
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
          queryMap['versionCode']!.first,
          unittest.equals(arg_versionCode),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListAppRecoveriesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.appRecoveries(arg_packageName,
          versionCode: arg_versionCode, $fields: arg_$fields);
      checkListAppRecoveriesResponse(response as api.ListAppRecoveriesResponse);
    });

    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).apprecovery;
      final arg_request = buildCancelAppRecoveryRequest();
      final arg_packageName = 'foo';
      final arg_appRecoveryId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelAppRecoveryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCancelAppRecoveryRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/appRecoveries/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/appRecoveries/'),
        );
        pathOffset += 15;
        index = path.indexOf(':cancel', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_appRecoveryId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':cancel'),
        );
        pathOffset += 7;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final resp = convert.json.encode(buildCancelAppRecoveryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.cancel(
          arg_request, arg_packageName, arg_appRecoveryId,
          $fields: arg_$fields);
      checkCancelAppRecoveryResponse(response as api.CancelAppRecoveryResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).apprecovery;
      final arg_request = buildCreateDraftAppRecoveryRequest();
      final arg_packageName = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateDraftAppRecoveryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateDraftAppRecoveryRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/appRecoveries', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/appRecoveries'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAppRecoveryAction());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_packageName, $fields: arg_$fields);
      checkAppRecoveryAction(response as api.AppRecoveryAction);
    });

    unittest.test('method--deploy', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).apprecovery;
      final arg_request = buildDeployAppRecoveryRequest();
      final arg_packageName = 'foo';
      final arg_appRecoveryId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DeployAppRecoveryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeployAppRecoveryRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/appRecoveries/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/appRecoveries/'),
        );
        pathOffset += 15;
        index = path.indexOf(':deploy', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_appRecoveryId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':deploy'),
        );
        pathOffset += 7;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final resp = convert.json.encode(buildDeployAppRecoveryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.deploy(
          arg_request, arg_packageName, arg_appRecoveryId,
          $fields: arg_$fields);
      checkDeployAppRecoveryResponse(response as api.DeployAppRecoveryResponse);
    });
  });

  unittest.group('resource-EditsResource', () {
    unittest.test('method--commit', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_changesNotSentForReview = true;
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf(':commit', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':commit'),
        );
        pathOffset += 7;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['changesNotSentForReview']!.first,
          unittest.equals('$arg_changesNotSentForReview'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAppEdit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.commit(arg_packageName, arg_editId,
          changesNotSentForReview: arg_changesNotSentForReview,
          $fields: arg_$fields);
      checkAppEdit(response as api.AppEdit);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
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
      await res.delete(arg_packageName, arg_editId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
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
        final resp = convert.json.encode(buildAppEdit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_packageName, arg_editId, $fields: arg_$fields);
      checkAppEdit(response as api.AppEdit);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits;
      final arg_request = buildAppEdit();
      final arg_packageName = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.AppEdit.fromJson(json as core.Map<core.String, core.dynamic>);
        checkAppEdit(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/edits'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAppEdit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.insert(arg_request, arg_packageName, $fields: arg_$fields);
      checkAppEdit(response as api.AppEdit);
    });

    unittest.test('method--validate', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf(':validate', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals(':validate'),
        );
        pathOffset += 9;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final resp = convert.json.encode(buildAppEdit());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.validate(arg_packageName, arg_editId, $fields: arg_$fields);
      checkAppEdit(response as api.AppEdit);
    });
  });

  unittest.group('resource-EditsApksResource', () {
    unittest.test('method--addexternallyhosted', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.apks;
      final arg_request = buildApksAddExternallyHostedRequest();
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ApksAddExternallyHostedRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkApksAddExternallyHostedRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/apks/externallyHosted', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 22),
          unittest.equals('/apks/externallyHosted'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildApksAddExternallyHostedResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.addexternallyhosted(
          arg_request, arg_packageName, arg_editId,
          $fields: arg_$fields);
      checkApksAddExternallyHostedResponse(
          response as api.ApksAddExternallyHostedResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.apks;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/apks', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/apks'),
        );
        pathOffset += 5;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final resp = convert.json.encode(buildApksListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_packageName, arg_editId, $fields: arg_$fields);
      checkApksListResponse(response as api.ApksListResponse);
    });

    unittest.test('method--upload', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.apks;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/apks', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/apks'),
        );
        pathOffset += 5;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final resp = convert.json.encode(buildApk());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.upload(arg_packageName, arg_editId, $fields: arg_$fields);
      checkApk(response as api.Apk);
    });
  });

  unittest.group('resource-EditsBundlesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.bundles;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/bundles', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/bundles'),
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
        final resp = convert.json.encode(buildBundlesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_packageName, arg_editId, $fields: arg_$fields);
      checkBundlesListResponse(response as api.BundlesListResponse);
    });

    unittest.test('method--upload', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.bundles;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_ackBundleInstallationWarning = true;
      final arg_deviceTierConfigId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/bundles', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/bundles'),
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
          queryMap['ackBundleInstallationWarning']!.first,
          unittest.equals('$arg_ackBundleInstallationWarning'),
        );
        unittest.expect(
          queryMap['deviceTierConfigId']!.first,
          unittest.equals(arg_deviceTierConfigId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBundle());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.upload(arg_packageName, arg_editId,
          ackBundleInstallationWarning: arg_ackBundleInstallationWarning,
          deviceTierConfigId: arg_deviceTierConfigId,
          $fields: arg_$fields);
      checkBundle(response as api.Bundle);
    });
  });

  unittest.group('resource-EditsCountryavailabilityResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.countryavailability;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_track = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/countryAvailability/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('/countryAvailability/'),
        );
        pathOffset += 21;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_track'),
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
        final resp = convert.json.encode(buildTrackCountryAvailability());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_packageName, arg_editId, arg_track,
          $fields: arg_$fields);
      checkTrackCountryAvailability(response as api.TrackCountryAvailability);
    });
  });

  unittest.group('resource-EditsDeobfuscationfilesResource', () {
    unittest.test('method--upload', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.deobfuscationfiles;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_apkVersionCode = 42;
      final arg_deobfuscationFileType = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/apks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/apks/'),
        );
        pathOffset += 6;
        index = path.indexOf('/deobfuscationFiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_apkVersionCode'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/deobfuscationFiles/'),
        );
        pathOffset += 20;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_deobfuscationFileType'),
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
        final resp =
            convert.json.encode(buildDeobfuscationFilesUploadResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.upload(arg_packageName, arg_editId,
          arg_apkVersionCode, arg_deobfuscationFileType,
          $fields: arg_$fields);
      checkDeobfuscationFilesUploadResponse(
          response as api.DeobfuscationFilesUploadResponse);
    });
  });

  unittest.group('resource-EditsDetailsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.details;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/details', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/details'),
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
        final resp = convert.json.encode(buildAppDetails());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_packageName, arg_editId, $fields: arg_$fields);
      checkAppDetails(response as api.AppDetails);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.details;
      final arg_request = buildAppDetails();
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AppDetails.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAppDetails(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/details', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/details'),
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
        final resp = convert.json.encode(buildAppDetails());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_packageName, arg_editId,
          $fields: arg_$fields);
      checkAppDetails(response as api.AppDetails);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.details;
      final arg_request = buildAppDetails();
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AppDetails.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkAppDetails(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/details', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/details'),
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
        final resp = convert.json.encode(buildAppDetails());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_packageName, arg_editId,
          $fields: arg_$fields);
      checkAppDetails(response as api.AppDetails);
    });
  });

  unittest.group('resource-EditsExpansionfilesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.expansionfiles;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_apkVersionCode = 42;
      final arg_expansionFileType = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/apks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/apks/'),
        );
        pathOffset += 6;
        index = path.indexOf('/expansionFiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_apkVersionCode'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/expansionFiles/'),
        );
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_expansionFileType'),
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
        final resp = convert.json.encode(buildExpansionFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_packageName, arg_editId,
          arg_apkVersionCode, arg_expansionFileType,
          $fields: arg_$fields);
      checkExpansionFile(response as api.ExpansionFile);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.expansionfiles;
      final arg_request = buildExpansionFile();
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_apkVersionCode = 42;
      final arg_expansionFileType = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ExpansionFile.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkExpansionFile(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/apks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/apks/'),
        );
        pathOffset += 6;
        index = path.indexOf('/expansionFiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_apkVersionCode'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/expansionFiles/'),
        );
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_expansionFileType'),
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
        final resp = convert.json.encode(buildExpansionFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_packageName, arg_editId,
          arg_apkVersionCode, arg_expansionFileType,
          $fields: arg_$fields);
      checkExpansionFile(response as api.ExpansionFile);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.expansionfiles;
      final arg_request = buildExpansionFile();
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_apkVersionCode = 42;
      final arg_expansionFileType = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ExpansionFile.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkExpansionFile(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/apks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/apks/'),
        );
        pathOffset += 6;
        index = path.indexOf('/expansionFiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_apkVersionCode'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/expansionFiles/'),
        );
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_expansionFileType'),
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
        final resp = convert.json.encode(buildExpansionFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_packageName,
          arg_editId, arg_apkVersionCode, arg_expansionFileType,
          $fields: arg_$fields);
      checkExpansionFile(response as api.ExpansionFile);
    });

    unittest.test('method--upload', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.expansionfiles;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_apkVersionCode = 42;
      final arg_expansionFileType = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/apks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/apks/'),
        );
        pathOffset += 6;
        index = path.indexOf('/expansionFiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_apkVersionCode'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/expansionFiles/'),
        );
        pathOffset += 16;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_expansionFileType'),
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
        final resp = convert.json.encode(buildExpansionFilesUploadResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.upload(arg_packageName, arg_editId,
          arg_apkVersionCode, arg_expansionFileType,
          $fields: arg_$fields);
      checkExpansionFilesUploadResponse(
          response as api.ExpansionFilesUploadResponse);
    });
  });

  unittest.group('resource-EditsImagesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.images;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_language = 'foo';
      final arg_imageType = 'foo';
      final arg_imageId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/listings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/listings/'),
        );
        pathOffset += 10;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_language'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_imageType'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_imageId'),
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
      await res.delete(
          arg_packageName, arg_editId, arg_language, arg_imageType, arg_imageId,
          $fields: arg_$fields);
    });

    unittest.test('method--deleteall', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.images;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_language = 'foo';
      final arg_imageType = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/listings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/listings/'),
        );
        pathOffset += 10;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_language'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_imageType'),
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
        final resp = convert.json.encode(buildImagesDeleteAllResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.deleteall(
          arg_packageName, arg_editId, arg_language, arg_imageType,
          $fields: arg_$fields);
      checkImagesDeleteAllResponse(response as api.ImagesDeleteAllResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.images;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_language = 'foo';
      final arg_imageType = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/listings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/listings/'),
        );
        pathOffset += 10;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_language'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_imageType'),
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
        final resp = convert.json.encode(buildImagesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          arg_packageName, arg_editId, arg_language, arg_imageType,
          $fields: arg_$fields);
      checkImagesListResponse(response as api.ImagesListResponse);
    });

    unittest.test('method--upload', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.images;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_language = 'foo';
      final arg_imageType = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/listings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/listings/'),
        );
        pathOffset += 10;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_language'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_imageType'),
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
        final resp = convert.json.encode(buildImagesUploadResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.upload(
          arg_packageName, arg_editId, arg_language, arg_imageType,
          $fields: arg_$fields);
      checkImagesUploadResponse(response as api.ImagesUploadResponse);
    });
  });

  unittest.group('resource-EditsListingsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.listings;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_language = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/listings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/listings/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_language'),
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
      await res.delete(arg_packageName, arg_editId, arg_language,
          $fields: arg_$fields);
    });

    unittest.test('method--deleteall', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.listings;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/listings', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/listings'),
        );
        pathOffset += 9;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
      await res.deleteall(arg_packageName, arg_editId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.listings;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_language = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/listings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/listings/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_language'),
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
        final resp = convert.json.encode(buildListing());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_packageName, arg_editId, arg_language,
          $fields: arg_$fields);
      checkListing(response as api.Listing);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.listings;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/listings', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/listings'),
        );
        pathOffset += 9;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final resp = convert.json.encode(buildListingsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_packageName, arg_editId, $fields: arg_$fields);
      checkListingsListResponse(response as api.ListingsListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.listings;
      final arg_request = buildListing();
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_language = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Listing.fromJson(json as core.Map<core.String, core.dynamic>);
        checkListing(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/listings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/listings/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_language'),
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
        final resp = convert.json.encode(buildListing());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_packageName, arg_editId, arg_language,
          $fields: arg_$fields);
      checkListing(response as api.Listing);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.listings;
      final arg_request = buildListing();
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_language = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Listing.fromJson(json as core.Map<core.String, core.dynamic>);
        checkListing(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/listings/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/listings/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_language'),
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
        final resp = convert.json.encode(buildListing());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_packageName, arg_editId, arg_language,
          $fields: arg_$fields);
      checkListing(response as api.Listing);
    });
  });

  unittest.group('resource-EditsTestersResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.testers;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_track = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/testers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/testers/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_track'),
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
        final resp = convert.json.encode(buildTesters());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_packageName, arg_editId, arg_track,
          $fields: arg_$fields);
      checkTesters(response as api.Testers);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.testers;
      final arg_request = buildTesters();
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_track = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Testers.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTesters(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/testers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/testers/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_track'),
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
        final resp = convert.json.encode(buildTesters());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_packageName, arg_editId, arg_track,
          $fields: arg_$fields);
      checkTesters(response as api.Testers);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.testers;
      final arg_request = buildTesters();
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_track = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Testers.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTesters(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/testers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/testers/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_track'),
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
        final resp = convert.json.encode(buildTesters());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_packageName, arg_editId, arg_track,
          $fields: arg_$fields);
      checkTesters(response as api.Testers);
    });
  });

  unittest.group('resource-EditsTracksResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.tracks;
      final arg_request = buildTrackConfig();
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.TrackConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkTrackConfig(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/tracks', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/tracks'),
        );
        pathOffset += 7;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final resp = convert.json.encode(buildTrack());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(
          arg_request, arg_packageName, arg_editId,
          $fields: arg_$fields);
      checkTrack(response as api.Track);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.tracks;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_track = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/tracks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/tracks/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_track'),
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
        final resp = convert.json.encode(buildTrack());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_packageName, arg_editId, arg_track,
          $fields: arg_$fields);
      checkTrack(response as api.Track);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.tracks;
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/tracks', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/tracks'),
        );
        pathOffset += 7;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final resp = convert.json.encode(buildTracksListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.list(arg_packageName, arg_editId, $fields: arg_$fields);
      checkTracksListResponse(response as api.TracksListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.tracks;
      final arg_request = buildTrack();
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_track = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Track.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTrack(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/tracks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/tracks/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_track'),
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
        final resp = convert.json.encode(buildTrack());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_packageName, arg_editId, arg_track,
          $fields: arg_$fields);
      checkTrack(response as api.Track);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).edits.tracks;
      final arg_request = buildTrack();
      final arg_packageName = 'foo';
      final arg_editId = 'foo';
      final arg_track = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Track.fromJson(json as core.Map<core.String, core.dynamic>);
        checkTrack(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/edits/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/edits/'),
        );
        pathOffset += 7;
        index = path.indexOf('/tracks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_editId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/tracks/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_track'),
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
        final resp = convert.json.encode(buildTrack());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_packageName, arg_editId, arg_track,
          $fields: arg_$fields);
      checkTrack(response as api.Track);
    });
  });

  unittest.group('resource-ExternaltransactionsResource', () {
    unittest.test('method--createexternaltransaction', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).externaltransactions;
      final arg_request = buildExternalTransaction();
      final arg_parent = 'foo';
      final arg_externalTransactionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ExternalTransaction.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkExternalTransaction(obj);

        final path = req.url.path;
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
          unittest.equals('androidpublisher/v3/'),
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
          queryMap['externalTransactionId']!.first,
          unittest.equals(arg_externalTransactionId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildExternalTransaction());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.createexternaltransaction(
          arg_request, arg_parent,
          externalTransactionId: arg_externalTransactionId,
          $fields: arg_$fields);
      checkExternalTransaction(response as api.ExternalTransaction);
    });

    unittest.test('method--getexternaltransaction', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).externaltransactions;
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
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('androidpublisher/v3/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildExternalTransaction());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.getexternaltransaction(arg_name, $fields: arg_$fields);
      checkExternalTransaction(response as api.ExternalTransaction);
    });

    unittest.test('method--refundexternaltransaction', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).externaltransactions;
      final arg_request = buildRefundExternalTransactionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RefundExternalTransactionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRefundExternalTransactionRequest(obj);

        final path = req.url.path;
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
          unittest.equals('androidpublisher/v3/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildExternalTransaction());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.refundexternaltransaction(
          arg_request, arg_name,
          $fields: arg_$fields);
      checkExternalTransaction(response as api.ExternalTransaction);
    });
  });

  unittest.group('resource-GeneratedapksResource', () {
    unittest.test('method--download', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).generatedapks;
      final arg_packageName = 'foo';
      final arg_versionCode = 42;
      final arg_downloadId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/generatedApks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/generatedApks/'),
        );
        pathOffset += 15;
        index = path.indexOf('/downloads/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_versionCode'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/downloads/'),
        );
        pathOffset += 11;
        index = path.indexOf(':download', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_downloadId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals(':download'),
        );
        pathOffset += 9;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
      await res.download(arg_packageName, arg_versionCode, arg_downloadId,
          $fields: arg_$fields);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).generatedapks;
      final arg_packageName = 'foo';
      final arg_versionCode = 42;
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/generatedApks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/generatedApks/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_versionCode'),
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
        final resp = convert.json.encode(buildGeneratedApksListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_packageName, arg_versionCode,
          $fields: arg_$fields);
      checkGeneratedApksListResponse(response as api.GeneratedApksListResponse);
    });
  });

  unittest.group('resource-GrantsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).grants;
      final arg_request = buildGrant();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Grant.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGrant(obj);

        final path = req.url.path;
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
          unittest.equals('androidpublisher/v3/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGrant());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGrant(response as api.Grant);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).grants;
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
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('androidpublisher/v3/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_name, $fields: arg_$fields);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).grants;
      final arg_request = buildGrant();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Grant.fromJson(json as core.Map<core.String, core.dynamic>);
        checkGrant(obj);

        final path = req.url.path;
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
          unittest.equals('androidpublisher/v3/'),
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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGrant());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGrant(response as api.Grant);
    });
  });

  unittest.group('resource-InappproductsResource', () {
    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).inappproducts;
      final arg_request = buildInappproductsBatchDeleteRequest();
      final arg_packageName = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InappproductsBatchDeleteRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInappproductsBatchDeleteRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/inappproducts:batchDelete', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('/inappproducts:batchDelete'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.batchDelete(arg_request, arg_packageName, $fields: arg_$fields);
    });

    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).inappproducts;
      final arg_packageName = 'foo';
      final arg_sku = buildUnnamed107();
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/inappproducts:batchGet', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('/inappproducts:batchGet'),
        );
        pathOffset += 23;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['sku']!,
          unittest.equals(arg_sku),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildInappproductsBatchGetResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGet(arg_packageName,
          sku: arg_sku, $fields: arg_$fields);
      checkInappproductsBatchGetResponse(
          response as api.InappproductsBatchGetResponse);
    });

    unittest.test('method--batchUpdate', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).inappproducts;
      final arg_request = buildInappproductsBatchUpdateRequest();
      final arg_packageName = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InappproductsBatchUpdateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInappproductsBatchUpdateRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/inappproducts:batchUpdate', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('/inappproducts:batchUpdate'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildInappproductsBatchUpdateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchUpdate(arg_request, arg_packageName,
          $fields: arg_$fields);
      checkInappproductsBatchUpdateResponse(
          response as api.InappproductsBatchUpdateResponse);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).inappproducts;
      final arg_packageName = 'foo';
      final arg_sku = 'foo';
      final arg_latencyTolerance = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/inappproducts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/inappproducts/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sku'),
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
          queryMap['latencyTolerance']!.first,
          unittest.equals(arg_latencyTolerance),
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
      await res.delete(arg_packageName, arg_sku,
          latencyTolerance: arg_latencyTolerance, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).inappproducts;
      final arg_packageName = 'foo';
      final arg_sku = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/inappproducts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/inappproducts/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sku'),
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
        final resp = convert.json.encode(buildInAppProduct());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_packageName, arg_sku, $fields: arg_$fields);
      checkInAppProduct(response as api.InAppProduct);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).inappproducts;
      final arg_request = buildInAppProduct();
      final arg_packageName = 'foo';
      final arg_autoConvertMissingPrices = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InAppProduct.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInAppProduct(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/inappproducts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/inappproducts'),
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
          queryMap['autoConvertMissingPrices']!.first,
          unittest.equals('$arg_autoConvertMissingPrices'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildInAppProduct());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.insert(arg_request, arg_packageName,
          autoConvertMissingPrices: arg_autoConvertMissingPrices,
          $fields: arg_$fields);
      checkInAppProduct(response as api.InAppProduct);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).inappproducts;
      final arg_packageName = 'foo';
      final arg_maxResults = 42;
      final arg_startIndex = 42;
      final arg_token = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/inappproducts', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/inappproducts'),
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
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          core.int.parse(queryMap['startIndex']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['token']!.first,
          unittest.equals(arg_token),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildInappproductsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_packageName,
          maxResults: arg_maxResults,
          startIndex: arg_startIndex,
          token: arg_token,
          $fields: arg_$fields);
      checkInappproductsListResponse(response as api.InappproductsListResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).inappproducts;
      final arg_request = buildInAppProduct();
      final arg_packageName = 'foo';
      final arg_sku = 'foo';
      final arg_autoConvertMissingPrices = true;
      final arg_latencyTolerance = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InAppProduct.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInAppProduct(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/inappproducts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/inappproducts/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sku'),
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
          queryMap['autoConvertMissingPrices']!.first,
          unittest.equals('$arg_autoConvertMissingPrices'),
        );
        unittest.expect(
          queryMap['latencyTolerance']!.first,
          unittest.equals(arg_latencyTolerance),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildInAppProduct());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_packageName, arg_sku,
          autoConvertMissingPrices: arg_autoConvertMissingPrices,
          latencyTolerance: arg_latencyTolerance,
          $fields: arg_$fields);
      checkInAppProduct(response as api.InAppProduct);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).inappproducts;
      final arg_request = buildInAppProduct();
      final arg_packageName = 'foo';
      final arg_sku = 'foo';
      final arg_allowMissing = true;
      final arg_autoConvertMissingPrices = true;
      final arg_latencyTolerance = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InAppProduct.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkInAppProduct(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/inappproducts/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/inappproducts/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_sku'),
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
          queryMap['allowMissing']!.first,
          unittest.equals('$arg_allowMissing'),
        );
        unittest.expect(
          queryMap['autoConvertMissingPrices']!.first,
          unittest.equals('$arg_autoConvertMissingPrices'),
        );
        unittest.expect(
          queryMap['latencyTolerance']!.first,
          unittest.equals(arg_latencyTolerance),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildInAppProduct());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_packageName, arg_sku,
          allowMissing: arg_allowMissing,
          autoConvertMissingPrices: arg_autoConvertMissingPrices,
          latencyTolerance: arg_latencyTolerance,
          $fields: arg_$fields);
      checkInAppProduct(response as api.InAppProduct);
    });
  });

  unittest.group('resource-InternalappsharingartifactsResource', () {
    unittest.test('method--uploadapk', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).internalappsharingartifacts;
      final arg_packageName = 'foo';
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
          path.substring(pathOffset, pathOffset + 52),
          unittest
              .equals('androidpublisher/v3/applications/internalappsharing/'),
        );
        pathOffset += 52;
        index = path.indexOf('/artifacts/apk', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/artifacts/apk'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildInternalAppSharingArtifact());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.uploadapk(arg_packageName, $fields: arg_$fields);
      checkInternalAppSharingArtifact(
          response as api.InternalAppSharingArtifact);
    });

    unittest.test('method--uploadbundle', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).internalappsharingartifacts;
      final arg_packageName = 'foo';
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
          path.substring(pathOffset, pathOffset + 52),
          unittest
              .equals('androidpublisher/v3/applications/internalappsharing/'),
        );
        pathOffset += 52;
        index = path.indexOf('/artifacts/bundle', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/artifacts/bundle'),
        );
        pathOffset += 17;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final resp = convert.json.encode(buildInternalAppSharingArtifact());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.uploadbundle(arg_packageName, $fields: arg_$fields);
      checkInternalAppSharingArtifact(
          response as api.InternalAppSharingArtifact);
    });
  });

  unittest.group('resource-MonetizationResource', () {
    unittest.test('method--convertRegionPrices', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).monetization;
      final arg_request = buildConvertRegionPricesRequest();
      final arg_packageName = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ConvertRegionPricesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkConvertRegionPricesRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/pricing:convertRegionPrices', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('/pricing:convertRegionPrices'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildConvertRegionPricesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.convertRegionPrices(
          arg_request, arg_packageName,
          $fields: arg_$fields);
      checkConvertRegionPricesResponse(
          response as api.ConvertRegionPricesResponse);
    });
  });

  unittest.group('resource-MonetizationSubscriptionsResource', () {
    unittest.test('method--archive', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).monetization.subscriptions;
      final arg_request = buildArchiveSubscriptionRequest();
      final arg_packageName = 'foo';
      final arg_productId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ArchiveSubscriptionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkArchiveSubscriptionRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/subscriptions/'),
        );
        pathOffset += 15;
        index = path.indexOf(':archive', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals(':archive'),
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
        final resp = convert.json.encode(buildSubscription());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.archive(
          arg_request, arg_packageName, arg_productId,
          $fields: arg_$fields);
      checkSubscription(response as api.Subscription);
    });

    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).monetization.subscriptions;
      final arg_packageName = 'foo';
      final arg_productIds = buildUnnamed108();
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/subscriptions:batchGet', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('/subscriptions:batchGet'),
        );
        pathOffset += 23;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['productIds']!,
          unittest.equals(arg_productIds),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBatchGetSubscriptionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGet(arg_packageName,
          productIds: arg_productIds, $fields: arg_$fields);
      checkBatchGetSubscriptionsResponse(
          response as api.BatchGetSubscriptionsResponse);
    });

    unittest.test('method--batchUpdate', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).monetization.subscriptions;
      final arg_request = buildBatchUpdateSubscriptionsRequest();
      final arg_packageName = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchUpdateSubscriptionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchUpdateSubscriptionsRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/subscriptions:batchUpdate', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('/subscriptions:batchUpdate'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildBatchUpdateSubscriptionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchUpdate(arg_request, arg_packageName,
          $fields: arg_$fields);
      checkBatchUpdateSubscriptionsResponse(
          response as api.BatchUpdateSubscriptionsResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).monetization.subscriptions;
      final arg_request = buildSubscription();
      final arg_packageName = 'foo';
      final arg_productId = 'foo';
      final arg_regionsVersion_version = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Subscription.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSubscription(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/subscriptions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/subscriptions'),
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
          queryMap['productId']!.first,
          unittest.equals(arg_productId),
        );
        unittest.expect(
          queryMap['regionsVersion.version']!.first,
          unittest.equals(arg_regionsVersion_version),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSubscription());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_packageName,
          productId: arg_productId,
          regionsVersion_version: arg_regionsVersion_version,
          $fields: arg_$fields);
      checkSubscription(response as api.Subscription);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).monetization.subscriptions;
      final arg_packageName = 'foo';
      final arg_productId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/subscriptions/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
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
      await res.delete(arg_packageName, arg_productId, $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).monetization.subscriptions;
      final arg_packageName = 'foo';
      final arg_productId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/subscriptions/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
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
        final resp = convert.json.encode(buildSubscription());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_packageName, arg_productId, $fields: arg_$fields);
      checkSubscription(response as api.Subscription);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).monetization.subscriptions;
      final arg_packageName = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_showArchived = true;
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/subscriptions', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/subscriptions'),
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['showArchived']!.first,
          unittest.equals('$arg_showArchived'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListSubscriptionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_packageName,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          showArchived: arg_showArchived,
          $fields: arg_$fields);
      checkListSubscriptionsResponse(response as api.ListSubscriptionsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).monetization.subscriptions;
      final arg_request = buildSubscription();
      final arg_packageName = 'foo';
      final arg_productId = 'foo';
      final arg_allowMissing = true;
      final arg_latencyTolerance = 'foo';
      final arg_regionsVersion_version = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Subscription.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSubscription(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/subscriptions/'),
        );
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
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
          queryMap['allowMissing']!.first,
          unittest.equals('$arg_allowMissing'),
        );
        unittest.expect(
          queryMap['latencyTolerance']!.first,
          unittest.equals(arg_latencyTolerance),
        );
        unittest.expect(
          queryMap['regionsVersion.version']!.first,
          unittest.equals(arg_regionsVersion_version),
        );
        unittest.expect(
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSubscription());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(
          arg_request, arg_packageName, arg_productId,
          allowMissing: arg_allowMissing,
          latencyTolerance: arg_latencyTolerance,
          regionsVersion_version: arg_regionsVersion_version,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkSubscription(response as api.Subscription);
    });
  });

  unittest.group('resource-MonetizationSubscriptionsBasePlansResource', () {
    unittest.test('method--activate', () async {
      final mock = HttpServerMock();
      final res =
          api.AndroidPublisherApi(mock).monetization.subscriptions.basePlans;
      final arg_request = buildActivateBasePlanRequest();
      final arg_packageName = 'foo';
      final arg_productId = 'foo';
      final arg_basePlanId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ActivateBasePlanRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkActivateBasePlanRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/subscriptions/'),
        );
        pathOffset += 15;
        index = path.indexOf('/basePlans/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/basePlans/'),
        );
        pathOffset += 11;
        index = path.indexOf(':activate', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_basePlanId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals(':activate'),
        );
        pathOffset += 9;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final resp = convert.json.encode(buildSubscription());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.activate(
          arg_request, arg_packageName, arg_productId, arg_basePlanId,
          $fields: arg_$fields);
      checkSubscription(response as api.Subscription);
    });

    unittest.test('method--batchMigratePrices', () async {
      final mock = HttpServerMock();
      final res =
          api.AndroidPublisherApi(mock).monetization.subscriptions.basePlans;
      final arg_request = buildBatchMigrateBasePlanPricesRequest();
      final arg_packageName = 'foo';
      final arg_productId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchMigrateBasePlanPricesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchMigrateBasePlanPricesRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/subscriptions/'),
        );
        pathOffset += 15;
        index = path.indexOf('/basePlans:batchMigratePrices', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 29),
          unittest.equals('/basePlans:batchMigratePrices'),
        );
        pathOffset += 29;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
            convert.json.encode(buildBatchMigrateBasePlanPricesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchMigratePrices(
          arg_request, arg_packageName, arg_productId,
          $fields: arg_$fields);
      checkBatchMigrateBasePlanPricesResponse(
          response as api.BatchMigrateBasePlanPricesResponse);
    });

    unittest.test('method--batchUpdateStates', () async {
      final mock = HttpServerMock();
      final res =
          api.AndroidPublisherApi(mock).monetization.subscriptions.basePlans;
      final arg_request = buildBatchUpdateBasePlanStatesRequest();
      final arg_packageName = 'foo';
      final arg_productId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchUpdateBasePlanStatesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchUpdateBasePlanStatesRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/subscriptions/'),
        );
        pathOffset += 15;
        index = path.indexOf('/basePlans:batchUpdateStates', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('/basePlans:batchUpdateStates'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildBatchUpdateBasePlanStatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchUpdateStates(
          arg_request, arg_packageName, arg_productId,
          $fields: arg_$fields);
      checkBatchUpdateBasePlanStatesResponse(
          response as api.BatchUpdateBasePlanStatesResponse);
    });

    unittest.test('method--deactivate', () async {
      final mock = HttpServerMock();
      final res =
          api.AndroidPublisherApi(mock).monetization.subscriptions.basePlans;
      final arg_request = buildDeactivateBasePlanRequest();
      final arg_packageName = 'foo';
      final arg_productId = 'foo';
      final arg_basePlanId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DeactivateBasePlanRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeactivateBasePlanRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/subscriptions/'),
        );
        pathOffset += 15;
        index = path.indexOf('/basePlans/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/basePlans/'),
        );
        pathOffset += 11;
        index = path.indexOf(':deactivate', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_basePlanId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals(':deactivate'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSubscription());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.deactivate(
          arg_request, arg_packageName, arg_productId, arg_basePlanId,
          $fields: arg_$fields);
      checkSubscription(response as api.Subscription);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.AndroidPublisherApi(mock).monetization.subscriptions.basePlans;
      final arg_packageName = 'foo';
      final arg_productId = 'foo';
      final arg_basePlanId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/subscriptions/'),
        );
        pathOffset += 15;
        index = path.indexOf('/basePlans/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/basePlans/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_basePlanId'),
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
      await res.delete(arg_packageName, arg_productId, arg_basePlanId,
          $fields: arg_$fields);
    });

    unittest.test('method--migratePrices', () async {
      final mock = HttpServerMock();
      final res =
          api.AndroidPublisherApi(mock).monetization.subscriptions.basePlans;
      final arg_request = buildMigrateBasePlanPricesRequest();
      final arg_packageName = 'foo';
      final arg_productId = 'foo';
      final arg_basePlanId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.MigrateBasePlanPricesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkMigrateBasePlanPricesRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/subscriptions/'),
        );
        pathOffset += 15;
        index = path.indexOf('/basePlans/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/basePlans/'),
        );
        pathOffset += 11;
        index = path.indexOf(':migratePrices', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_basePlanId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals(':migratePrices'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMigrateBasePlanPricesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.migratePrices(
          arg_request, arg_packageName, arg_productId, arg_basePlanId,
          $fields: arg_$fields);
      checkMigrateBasePlanPricesResponse(
          response as api.MigrateBasePlanPricesResponse);
    });
  });

  unittest.group('resource-MonetizationSubscriptionsBasePlansOffersResource',
      () {
    unittest.test('method--activate', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock)
          .monetization
          .subscriptions
          .basePlans
          .offers;
      final arg_request = buildActivateSubscriptionOfferRequest();
      final arg_packageName = 'foo';
      final arg_productId = 'foo';
      final arg_basePlanId = 'foo';
      final arg_offerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ActivateSubscriptionOfferRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkActivateSubscriptionOfferRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/subscriptions/'),
        );
        pathOffset += 15;
        index = path.indexOf('/basePlans/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/basePlans/'),
        );
        pathOffset += 11;
        index = path.indexOf('/offers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_basePlanId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/offers/'),
        );
        pathOffset += 8;
        index = path.indexOf(':activate', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_offerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals(':activate'),
        );
        pathOffset += 9;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final resp = convert.json.encode(buildSubscriptionOffer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.activate(arg_request, arg_packageName,
          arg_productId, arg_basePlanId, arg_offerId,
          $fields: arg_$fields);
      checkSubscriptionOffer(response as api.SubscriptionOffer);
    });

    unittest.test('method--batchGet', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock)
          .monetization
          .subscriptions
          .basePlans
          .offers;
      final arg_request = buildBatchGetSubscriptionOffersRequest();
      final arg_packageName = 'foo';
      final arg_productId = 'foo';
      final arg_basePlanId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchGetSubscriptionOffersRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchGetSubscriptionOffersRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/subscriptions/'),
        );
        pathOffset += 15;
        index = path.indexOf('/basePlans/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/basePlans/'),
        );
        pathOffset += 11;
        index = path.indexOf('/offers:batchGet', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_basePlanId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/offers:batchGet'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildBatchGetSubscriptionOffersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchGet(
          arg_request, arg_packageName, arg_productId, arg_basePlanId,
          $fields: arg_$fields);
      checkBatchGetSubscriptionOffersResponse(
          response as api.BatchGetSubscriptionOffersResponse);
    });

    unittest.test('method--batchUpdate', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock)
          .monetization
          .subscriptions
          .basePlans
          .offers;
      final arg_request = buildBatchUpdateSubscriptionOffersRequest();
      final arg_packageName = 'foo';
      final arg_productId = 'foo';
      final arg_basePlanId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchUpdateSubscriptionOffersRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchUpdateSubscriptionOffersRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/subscriptions/'),
        );
        pathOffset += 15;
        index = path.indexOf('/basePlans/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/basePlans/'),
        );
        pathOffset += 11;
        index = path.indexOf('/offers:batchUpdate', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_basePlanId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('/offers:batchUpdate'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildBatchUpdateSubscriptionOffersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchUpdate(
          arg_request, arg_packageName, arg_productId, arg_basePlanId,
          $fields: arg_$fields);
      checkBatchUpdateSubscriptionOffersResponse(
          response as api.BatchUpdateSubscriptionOffersResponse);
    });

    unittest.test('method--batchUpdateStates', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock)
          .monetization
          .subscriptions
          .basePlans
          .offers;
      final arg_request = buildBatchUpdateSubscriptionOfferStatesRequest();
      final arg_packageName = 'foo';
      final arg_productId = 'foo';
      final arg_basePlanId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchUpdateSubscriptionOfferStatesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchUpdateSubscriptionOfferStatesRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/subscriptions/'),
        );
        pathOffset += 15;
        index = path.indexOf('/basePlans/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/basePlans/'),
        );
        pathOffset += 11;
        index = path.indexOf('/offers:batchUpdateStates', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_basePlanId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('/offers:batchUpdateStates'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildBatchUpdateSubscriptionOfferStatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchUpdateStates(
          arg_request, arg_packageName, arg_productId, arg_basePlanId,
          $fields: arg_$fields);
      checkBatchUpdateSubscriptionOfferStatesResponse(
          response as api.BatchUpdateSubscriptionOfferStatesResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock)
          .monetization
          .subscriptions
          .basePlans
          .offers;
      final arg_request = buildSubscriptionOffer();
      final arg_packageName = 'foo';
      final arg_productId = 'foo';
      final arg_basePlanId = 'foo';
      final arg_offerId = 'foo';
      final arg_regionsVersion_version = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SubscriptionOffer.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSubscriptionOffer(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/subscriptions/'),
        );
        pathOffset += 15;
        index = path.indexOf('/basePlans/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/basePlans/'),
        );
        pathOffset += 11;
        index = path.indexOf('/offers', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_basePlanId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/offers'),
        );
        pathOffset += 7;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['offerId']!.first,
          unittest.equals(arg_offerId),
        );
        unittest.expect(
          queryMap['regionsVersion.version']!.first,
          unittest.equals(arg_regionsVersion_version),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSubscriptionOffer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(
          arg_request, arg_packageName, arg_productId, arg_basePlanId,
          offerId: arg_offerId,
          regionsVersion_version: arg_regionsVersion_version,
          $fields: arg_$fields);
      checkSubscriptionOffer(response as api.SubscriptionOffer);
    });

    unittest.test('method--deactivate', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock)
          .monetization
          .subscriptions
          .basePlans
          .offers;
      final arg_request = buildDeactivateSubscriptionOfferRequest();
      final arg_packageName = 'foo';
      final arg_productId = 'foo';
      final arg_basePlanId = 'foo';
      final arg_offerId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DeactivateSubscriptionOfferRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkDeactivateSubscriptionOfferRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/subscriptions/'),
        );
        pathOffset += 15;
        index = path.indexOf('/basePlans/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/basePlans/'),
        );
        pathOffset += 11;
        index = path.indexOf('/offers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_basePlanId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/offers/'),
        );
        pathOffset += 8;
        index = path.indexOf(':deactivate', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_offerId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals(':deactivate'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSubscriptionOffer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.deactivate(arg_request, arg_packageName,
          arg_productId, arg_basePlanId, arg_offerId,
          $fields: arg_$fields);
      checkSubscriptionOffer(response as api.SubscriptionOffer);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock)
          .monetization
          .subscriptions
          .basePlans
          .offers;
      final arg_packageName = 'foo';
      final arg_productId = 'foo';
      final arg_basePlanId = 'foo';
      final arg_offerId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/subscriptions/'),
        );
        pathOffset += 15;
        index = path.indexOf('/basePlans/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/basePlans/'),
        );
        pathOffset += 11;
        index = path.indexOf('/offers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_basePlanId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/offers/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_offerId'),
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
      await res.delete(
          arg_packageName, arg_productId, arg_basePlanId, arg_offerId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock)
          .monetization
          .subscriptions
          .basePlans
          .offers;
      final arg_packageName = 'foo';
      final arg_productId = 'foo';
      final arg_basePlanId = 'foo';
      final arg_offerId = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/subscriptions/'),
        );
        pathOffset += 15;
        index = path.indexOf('/basePlans/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/basePlans/'),
        );
        pathOffset += 11;
        index = path.indexOf('/offers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_basePlanId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/offers/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_offerId'),
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
        final resp = convert.json.encode(buildSubscriptionOffer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_packageName, arg_productId, arg_basePlanId, arg_offerId,
          $fields: arg_$fields);
      checkSubscriptionOffer(response as api.SubscriptionOffer);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock)
          .monetization
          .subscriptions
          .basePlans
          .offers;
      final arg_packageName = 'foo';
      final arg_productId = 'foo';
      final arg_basePlanId = 'foo';
      final arg_pageSize = 42;
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/subscriptions/'),
        );
        pathOffset += 15;
        index = path.indexOf('/basePlans/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/basePlans/'),
        );
        pathOffset += 11;
        index = path.indexOf('/offers', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_basePlanId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/offers'),
        );
        pathOffset += 7;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListSubscriptionOffersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          arg_packageName, arg_productId, arg_basePlanId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListSubscriptionOffersResponse(
          response as api.ListSubscriptionOffersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock)
          .monetization
          .subscriptions
          .basePlans
          .offers;
      final arg_request = buildSubscriptionOffer();
      final arg_packageName = 'foo';
      final arg_productId = 'foo';
      final arg_basePlanId = 'foo';
      final arg_offerId = 'foo';
      final arg_allowMissing = true;
      final arg_latencyTolerance = 'foo';
      final arg_regionsVersion_version = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SubscriptionOffer.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSubscriptionOffer(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/subscriptions/'),
        );
        pathOffset += 15;
        index = path.indexOf('/basePlans/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/basePlans/'),
        );
        pathOffset += 11;
        index = path.indexOf('/offers/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_basePlanId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/offers/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_offerId'),
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
          queryMap['allowMissing']!.first,
          unittest.equals('$arg_allowMissing'),
        );
        unittest.expect(
          queryMap['latencyTolerance']!.first,
          unittest.equals(arg_latencyTolerance),
        );
        unittest.expect(
          queryMap['regionsVersion.version']!.first,
          unittest.equals(arg_regionsVersion_version),
        );
        unittest.expect(
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSubscriptionOffer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_packageName,
          arg_productId, arg_basePlanId, arg_offerId,
          allowMissing: arg_allowMissing,
          latencyTolerance: arg_latencyTolerance,
          regionsVersion_version: arg_regionsVersion_version,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkSubscriptionOffer(response as api.SubscriptionOffer);
    });
  });

  unittest.group('resource-OrdersResource', () {
    unittest.test('method--refund', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).orders;
      final arg_packageName = 'foo';
      final arg_orderId = 'foo';
      final arg_revoke = true;
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/orders/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/orders/'),
        );
        pathOffset += 8;
        index = path.indexOf(':refund', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_orderId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':refund'),
        );
        pathOffset += 7;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            final keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
          queryMap['revoke']!.first,
          unittest.equals('$arg_revoke'),
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
      await res.refund(arg_packageName, arg_orderId,
          revoke: arg_revoke, $fields: arg_$fields);
    });
  });

  unittest.group('resource-PurchasesProductsResource', () {
    unittest.test('method--acknowledge', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).purchases.products;
      final arg_request = buildProductPurchasesAcknowledgeRequest();
      final arg_packageName = 'foo';
      final arg_productId = 'foo';
      final arg_token = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ProductPurchasesAcknowledgeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkProductPurchasesAcknowledgeRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/purchases/products/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/purchases/products/'),
        );
        pathOffset += 20;
        index = path.indexOf('/tokens/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/tokens/'),
        );
        pathOffset += 8;
        index = path.indexOf(':acknowledge', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_token'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals(':acknowledge'),
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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.acknowledge(
          arg_request, arg_packageName, arg_productId, arg_token,
          $fields: arg_$fields);
    });

    unittest.test('method--consume', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).purchases.products;
      final arg_packageName = 'foo';
      final arg_productId = 'foo';
      final arg_token = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/purchases/products/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/purchases/products/'),
        );
        pathOffset += 20;
        index = path.indexOf('/tokens/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/tokens/'),
        );
        pathOffset += 8;
        index = path.indexOf(':consume', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_token'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals(':consume'),
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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.consume(arg_packageName, arg_productId, arg_token,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).purchases.products;
      final arg_packageName = 'foo';
      final arg_productId = 'foo';
      final arg_token = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/purchases/products/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('/purchases/products/'),
        );
        pathOffset += 20;
        index = path.indexOf('/tokens/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_productId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/tokens/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_token'),
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
        final resp = convert.json.encode(buildProductPurchase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_packageName, arg_productId, arg_token,
          $fields: arg_$fields);
      checkProductPurchase(response as api.ProductPurchase);
    });
  });

  unittest.group('resource-PurchasesSubscriptionsResource', () {
    unittest.test('method--acknowledge', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).purchases.subscriptions;
      final arg_request = buildSubscriptionPurchasesAcknowledgeRequest();
      final arg_packageName = 'foo';
      final arg_subscriptionId = 'foo';
      final arg_token = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SubscriptionPurchasesAcknowledgeRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSubscriptionPurchasesAcknowledgeRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/purchases/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('/purchases/subscriptions/'),
        );
        pathOffset += 25;
        index = path.indexOf('/tokens/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_subscriptionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/tokens/'),
        );
        pathOffset += 8;
        index = path.indexOf(':acknowledge', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_token'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals(':acknowledge'),
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
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.acknowledge(
          arg_request, arg_packageName, arg_subscriptionId, arg_token,
          $fields: arg_$fields);
    });

    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).purchases.subscriptions;
      final arg_packageName = 'foo';
      final arg_subscriptionId = 'foo';
      final arg_token = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/purchases/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('/purchases/subscriptions/'),
        );
        pathOffset += 25;
        index = path.indexOf('/tokens/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_subscriptionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/tokens/'),
        );
        pathOffset += 8;
        index = path.indexOf(':cancel', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_token'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':cancel'),
        );
        pathOffset += 7;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
      await res.cancel(arg_packageName, arg_subscriptionId, arg_token,
          $fields: arg_$fields);
    });

    unittest.test('method--defer', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).purchases.subscriptions;
      final arg_request = buildSubscriptionPurchasesDeferRequest();
      final arg_packageName = 'foo';
      final arg_subscriptionId = 'foo';
      final arg_token = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SubscriptionPurchasesDeferRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSubscriptionPurchasesDeferRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/purchases/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('/purchases/subscriptions/'),
        );
        pathOffset += 25;
        index = path.indexOf('/tokens/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_subscriptionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/tokens/'),
        );
        pathOffset += 8;
        index = path.indexOf(':defer', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_token'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals(':defer'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildSubscriptionPurchasesDeferResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.defer(
          arg_request, arg_packageName, arg_subscriptionId, arg_token,
          $fields: arg_$fields);
      checkSubscriptionPurchasesDeferResponse(
          response as api.SubscriptionPurchasesDeferResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).purchases.subscriptions;
      final arg_packageName = 'foo';
      final arg_subscriptionId = 'foo';
      final arg_token = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/purchases/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('/purchases/subscriptions/'),
        );
        pathOffset += 25;
        index = path.indexOf('/tokens/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_subscriptionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/tokens/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_token'),
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
        final resp = convert.json.encode(buildSubscriptionPurchase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_packageName, arg_subscriptionId, arg_token,
          $fields: arg_$fields);
      checkSubscriptionPurchase(response as api.SubscriptionPurchase);
    });

    unittest.test('method--refund', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).purchases.subscriptions;
      final arg_packageName = 'foo';
      final arg_subscriptionId = 'foo';
      final arg_token = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/purchases/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('/purchases/subscriptions/'),
        );
        pathOffset += 25;
        index = path.indexOf('/tokens/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_subscriptionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/tokens/'),
        );
        pathOffset += 8;
        index = path.indexOf(':refund', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_token'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':refund'),
        );
        pathOffset += 7;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
      await res.refund(arg_packageName, arg_subscriptionId, arg_token,
          $fields: arg_$fields);
    });

    unittest.test('method--revoke', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).purchases.subscriptions;
      final arg_packageName = 'foo';
      final arg_subscriptionId = 'foo';
      final arg_token = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/purchases/subscriptions/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('/purchases/subscriptions/'),
        );
        pathOffset += 25;
        index = path.indexOf('/tokens/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_subscriptionId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/tokens/'),
        );
        pathOffset += 8;
        index = path.indexOf(':revoke', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_token'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':revoke'),
        );
        pathOffset += 7;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
      await res.revoke(arg_packageName, arg_subscriptionId, arg_token,
          $fields: arg_$fields);
    });
  });

  unittest.group('resource-PurchasesSubscriptionsv2Resource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).purchases.subscriptionsv2;
      final arg_packageName = 'foo';
      final arg_token = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/purchases/subscriptionsv2/tokens/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 34),
          unittest.equals('/purchases/subscriptionsv2/tokens/'),
        );
        pathOffset += 34;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_token'),
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
        final resp = convert.json.encode(buildSubscriptionPurchaseV2());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_packageName, arg_token, $fields: arg_$fields);
      checkSubscriptionPurchaseV2(response as api.SubscriptionPurchaseV2);
    });

    unittest.test('method--revoke', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).purchases.subscriptionsv2;
      final arg_request = buildRevokeSubscriptionPurchaseRequest();
      final arg_packageName = 'foo';
      final arg_token = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RevokeSubscriptionPurchaseRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkRevokeSubscriptionPurchaseRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/purchases/subscriptionsv2/tokens/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 34),
          unittest.equals('/purchases/subscriptionsv2/tokens/'),
        );
        pathOffset += 34;
        index = path.indexOf(':revoke', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_token'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals(':revoke'),
        );
        pathOffset += 7;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
            convert.json.encode(buildRevokeSubscriptionPurchaseResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.revoke(arg_request, arg_packageName, arg_token,
          $fields: arg_$fields);
      checkRevokeSubscriptionPurchaseResponse(
          response as api.RevokeSubscriptionPurchaseResponse);
    });
  });

  unittest.group('resource-PurchasesVoidedpurchasesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).purchases.voidedpurchases;
      final arg_packageName = 'foo';
      final arg_endTime = 'foo';
      final arg_includeQuantityBasedPartialRefund = true;
      final arg_maxResults = 42;
      final arg_startIndex = 42;
      final arg_startTime = 'foo';
      final arg_token = 'foo';
      final arg_type = 42;
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/purchases/voidedpurchases', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('/purchases/voidedpurchases'),
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
          queryMap['endTime']!.first,
          unittest.equals(arg_endTime),
        );
        unittest.expect(
          queryMap['includeQuantityBasedPartialRefund']!.first,
          unittest.equals('$arg_includeQuantityBasedPartialRefund'),
        );
        unittest.expect(
          core.int.parse(queryMap['maxResults']!.first),
          unittest.equals(arg_maxResults),
        );
        unittest.expect(
          core.int.parse(queryMap['startIndex']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['startTime']!.first,
          unittest.equals(arg_startTime),
        );
        unittest.expect(
          queryMap['token']!.first,
          unittest.equals(arg_token),
        );
        unittest.expect(
          core.int.parse(queryMap['type']!.first),
          unittest.equals(arg_type),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildVoidedPurchasesListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_packageName,
          endTime: arg_endTime,
          includeQuantityBasedPartialRefund:
              arg_includeQuantityBasedPartialRefund,
          maxResults: arg_maxResults,
          startIndex: arg_startIndex,
          startTime: arg_startTime,
          token: arg_token,
          type: arg_type,
          $fields: arg_$fields);
      checkVoidedPurchasesListResponse(
          response as api.VoidedPurchasesListResponse);
    });
  });

  unittest.group('resource-ReviewsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).reviews;
      final arg_packageName = 'foo';
      final arg_reviewId = 'foo';
      final arg_translationLanguage = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/reviews/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/reviews/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_reviewId'),
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
          queryMap['translationLanguage']!.first,
          unittest.equals(arg_translationLanguage),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildReview());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_packageName, arg_reviewId,
          translationLanguage: arg_translationLanguage, $fields: arg_$fields);
      checkReview(response as api.Review);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).reviews;
      final arg_packageName = 'foo';
      final arg_maxResults = 42;
      final arg_startIndex = 42;
      final arg_token = 'foo';
      final arg_translationLanguage = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/reviews', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/reviews'),
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
          core.int.parse(queryMap['startIndex']!.first),
          unittest.equals(arg_startIndex),
        );
        unittest.expect(
          queryMap['token']!.first,
          unittest.equals(arg_token),
        );
        unittest.expect(
          queryMap['translationLanguage']!.first,
          unittest.equals(arg_translationLanguage),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildReviewsListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_packageName,
          maxResults: arg_maxResults,
          startIndex: arg_startIndex,
          token: arg_token,
          translationLanguage: arg_translationLanguage,
          $fields: arg_$fields);
      checkReviewsListResponse(response as api.ReviewsListResponse);
    });

    unittest.test('method--reply', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).reviews;
      final arg_request = buildReviewsReplyRequest();
      final arg_packageName = 'foo';
      final arg_reviewId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReviewsReplyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReviewsReplyRequest(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/reviews/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/reviews/'),
        );
        pathOffset += 9;
        index = path.indexOf(':reply', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_reviewId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals(':reply'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildReviewsReplyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.reply(
          arg_request, arg_packageName, arg_reviewId,
          $fields: arg_$fields);
      checkReviewsReplyResponse(response as api.ReviewsReplyResponse);
    });
  });

  unittest.group('resource-SystemapksVariantsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).systemapks.variants;
      final arg_request = buildVariant();
      final arg_packageName = 'foo';
      final arg_versionCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Variant.fromJson(json as core.Map<core.String, core.dynamic>);
        checkVariant(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/systemApks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/systemApks/'),
        );
        pathOffset += 12;
        index = path.indexOf('/variants', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_versionCode'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/variants'),
        );
        pathOffset += 9;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final resp = convert.json.encode(buildVariant());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(
          arg_request, arg_packageName, arg_versionCode,
          $fields: arg_$fields);
      checkVariant(response as api.Variant);
    });

    unittest.test('method--download', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).systemapks.variants;
      final arg_packageName = 'foo';
      final arg_versionCode = 'foo';
      final arg_variantId = 42;
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/systemApks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/systemApks/'),
        );
        pathOffset += 12;
        index = path.indexOf('/variants/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_versionCode'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/variants/'),
        );
        pathOffset += 10;
        index = path.indexOf(':download', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_variantId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals(':download'),
        );
        pathOffset += 9;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
      await res.download(arg_packageName, arg_versionCode, arg_variantId,
          $fields: arg_$fields);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).systemapks.variants;
      final arg_packageName = 'foo';
      final arg_versionCode = 'foo';
      final arg_variantId = 42;
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/systemApks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/systemApks/'),
        );
        pathOffset += 12;
        index = path.indexOf('/variants/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_versionCode'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/variants/'),
        );
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_variantId'),
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
        final resp = convert.json.encode(buildVariant());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_packageName, arg_versionCode, arg_variantId,
          $fields: arg_$fields);
      checkVariant(response as api.Variant);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).systemapks.variants;
      final arg_packageName = 'foo';
      final arg_versionCode = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('androidpublisher/v3/applications/'),
        );
        pathOffset += 33;
        index = path.indexOf('/systemApks/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_packageName'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('/systemApks/'),
        );
        pathOffset += 12;
        index = path.indexOf('/variants', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_versionCode'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/variants'),
        );
        pathOffset += 9;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final resp = convert.json.encode(buildSystemApksListResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_packageName, arg_versionCode,
          $fields: arg_$fields);
      checkSystemApksListResponse(response as api.SystemApksListResponse);
    });
  });

  unittest.group('resource-UsersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).users;
      final arg_request = buildUser();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.User.fromJson(json as core.Map<core.String, core.dynamic>);
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
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('androidpublisher/v3/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkUser(response as api.User);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).users;
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
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('androidpublisher/v3/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = '';
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      await res.delete(arg_name, $fields: arg_$fields);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).users;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
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
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('androidpublisher/v3/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListUsersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListUsersResponse(response as api.ListUsersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AndroidPublisherApi(mock).users;
      final arg_request = buildUser();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.User.fromJson(json as core.Map<core.String, core.dynamic>);
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
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('androidpublisher/v3/'),
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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkUser(response as api.User);
    });
  });
}
