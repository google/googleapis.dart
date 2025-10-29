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

import 'package:googleapis/androidmanagement/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAddEsimParams = 0;
api.AddEsimParams buildAddEsimParams() {
  final o = api.AddEsimParams();
  buildCounterAddEsimParams++;
  if (buildCounterAddEsimParams < 3) {
    o.activationCode = 'foo';
    o.activationState = 'foo';
  }
  buildCounterAddEsimParams--;
  return o;
}

void checkAddEsimParams(api.AddEsimParams o) {
  buildCounterAddEsimParams++;
  if (buildCounterAddEsimParams < 3) {
    unittest.expect(o.activationCode!, unittest.equals('foo'));
    unittest.expect(o.activationState!, unittest.equals('foo'));
  }
  buildCounterAddEsimParams--;
}

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAdvancedSecurityOverrides = 0;
api.AdvancedSecurityOverrides buildAdvancedSecurityOverrides() {
  final o = api.AdvancedSecurityOverrides();
  buildCounterAdvancedSecurityOverrides++;
  if (buildCounterAdvancedSecurityOverrides < 3) {
    o.commonCriteriaMode = 'foo';
    o.contentProtectionPolicy = 'foo';
    o.developerSettings = 'foo';
    o.googlePlayProtectVerifyApps = 'foo';
    o.mtePolicy = 'foo';
    o.personalAppsThatCanReadWorkNotifications = buildUnnamed0();
    o.untrustedAppsPolicy = 'foo';
  }
  buildCounterAdvancedSecurityOverrides--;
  return o;
}

void checkAdvancedSecurityOverrides(api.AdvancedSecurityOverrides o) {
  buildCounterAdvancedSecurityOverrides++;
  if (buildCounterAdvancedSecurityOverrides < 3) {
    unittest.expect(o.commonCriteriaMode!, unittest.equals('foo'));
    unittest.expect(o.contentProtectionPolicy!, unittest.equals('foo'));
    unittest.expect(o.developerSettings!, unittest.equals('foo'));
    unittest.expect(o.googlePlayProtectVerifyApps!, unittest.equals('foo'));
    unittest.expect(o.mtePolicy!, unittest.equals('foo'));
    checkUnnamed0(o.personalAppsThatCanReadWorkNotifications!);
    unittest.expect(o.untrustedAppsPolicy!, unittest.equals('foo'));
  }
  buildCounterAdvancedSecurityOverrides--;
}

core.int buildCounterAlwaysOnVpnPackage = 0;
api.AlwaysOnVpnPackage buildAlwaysOnVpnPackage() {
  final o = api.AlwaysOnVpnPackage();
  buildCounterAlwaysOnVpnPackage++;
  if (buildCounterAlwaysOnVpnPackage < 3) {
    o.lockdownEnabled = true;
    o.packageName = 'foo';
  }
  buildCounterAlwaysOnVpnPackage--;
  return o;
}

void checkAlwaysOnVpnPackage(api.AlwaysOnVpnPackage o) {
  buildCounterAlwaysOnVpnPackage++;
  if (buildCounterAlwaysOnVpnPackage < 3) {
    unittest.expect(o.lockdownEnabled!, unittest.isTrue);
    unittest.expect(o.packageName!, unittest.equals('foo'));
  }
  buildCounterAlwaysOnVpnPackage--;
}

core.int buildCounterApiLevelCondition = 0;
api.ApiLevelCondition buildApiLevelCondition() {
  final o = api.ApiLevelCondition();
  buildCounterApiLevelCondition++;
  if (buildCounterApiLevelCondition < 3) {
    o.minApiLevel = 42;
  }
  buildCounterApiLevelCondition--;
  return o;
}

void checkApiLevelCondition(api.ApiLevelCondition o) {
  buildCounterApiLevelCondition++;
  if (buildCounterApiLevelCondition < 3) {
    unittest.expect(o.minApiLevel!, unittest.equals(42));
  }
  buildCounterApiLevelCondition--;
}

core.List<api.ApnSetting> buildUnnamed1() => [
  buildApnSetting(),
  buildApnSetting(),
];

void checkUnnamed1(core.List<api.ApnSetting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApnSetting(o[0]);
  checkApnSetting(o[1]);
}

core.int buildCounterApnPolicy = 0;
api.ApnPolicy buildApnPolicy() {
  final o = api.ApnPolicy();
  buildCounterApnPolicy++;
  if (buildCounterApnPolicy < 3) {
    o.apnSettings = buildUnnamed1();
    o.overrideApns = 'foo';
  }
  buildCounterApnPolicy--;
  return o;
}

void checkApnPolicy(api.ApnPolicy o) {
  buildCounterApnPolicy++;
  if (buildCounterApnPolicy < 3) {
    checkUnnamed1(o.apnSettings!);
    unittest.expect(o.overrideApns!, unittest.equals('foo'));
  }
  buildCounterApnPolicy--;
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed3() => ['foo', 'foo'];

void checkUnnamed3(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterApnSetting = 0;
api.ApnSetting buildApnSetting() {
  final o = api.ApnSetting();
  buildCounterApnSetting++;
  if (buildCounterApnSetting < 3) {
    o.alwaysOnSetting = 'foo';
    o.apn = 'foo';
    o.apnTypes = buildUnnamed2();
    o.authType = 'foo';
    o.carrierId = 42;
    o.displayName = 'foo';
    o.mmsProxyAddress = 'foo';
    o.mmsProxyPort = 42;
    o.mmsc = 'foo';
    o.mtuV4 = 42;
    o.mtuV6 = 42;
    o.mvnoType = 'foo';
    o.networkTypes = buildUnnamed3();
    o.numericOperatorId = 'foo';
    o.password = 'foo';
    o.protocol = 'foo';
    o.proxyAddress = 'foo';
    o.proxyPort = 42;
    o.roamingProtocol = 'foo';
    o.username = 'foo';
  }
  buildCounterApnSetting--;
  return o;
}

void checkApnSetting(api.ApnSetting o) {
  buildCounterApnSetting++;
  if (buildCounterApnSetting < 3) {
    unittest.expect(o.alwaysOnSetting!, unittest.equals('foo'));
    unittest.expect(o.apn!, unittest.equals('foo'));
    checkUnnamed2(o.apnTypes!);
    unittest.expect(o.authType!, unittest.equals('foo'));
    unittest.expect(o.carrierId!, unittest.equals(42));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.mmsProxyAddress!, unittest.equals('foo'));
    unittest.expect(o.mmsProxyPort!, unittest.equals(42));
    unittest.expect(o.mmsc!, unittest.equals('foo'));
    unittest.expect(o.mtuV4!, unittest.equals(42));
    unittest.expect(o.mtuV6!, unittest.equals(42));
    unittest.expect(o.mvnoType!, unittest.equals('foo'));
    checkUnnamed3(o.networkTypes!);
    unittest.expect(o.numericOperatorId!, unittest.equals('foo'));
    unittest.expect(o.password!, unittest.equals('foo'));
    unittest.expect(o.protocol!, unittest.equals('foo'));
    unittest.expect(o.proxyAddress!, unittest.equals('foo'));
    unittest.expect(o.proxyPort!, unittest.equals(42));
    unittest.expect(o.roamingProtocol!, unittest.equals('foo'));
    unittest.expect(o.username!, unittest.equals('foo'));
  }
  buildCounterApnSetting--;
}

core.int buildCounterAppTrackInfo = 0;
api.AppTrackInfo buildAppTrackInfo() {
  final o = api.AppTrackInfo();
  buildCounterAppTrackInfo++;
  if (buildCounterAppTrackInfo < 3) {
    o.trackAlias = 'foo';
    o.trackId = 'foo';
  }
  buildCounterAppTrackInfo--;
  return o;
}

void checkAppTrackInfo(api.AppTrackInfo o) {
  buildCounterAppTrackInfo++;
  if (buildCounterAppTrackInfo < 3) {
    unittest.expect(o.trackAlias!, unittest.equals('foo'));
    unittest.expect(o.trackId!, unittest.equals('foo'));
  }
  buildCounterAppTrackInfo--;
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAppVersion = 0;
api.AppVersion buildAppVersion() {
  final o = api.AppVersion();
  buildCounterAppVersion++;
  if (buildCounterAppVersion < 3) {
    o.production = true;
    o.trackIds = buildUnnamed4();
    o.versionCode = 42;
    o.versionString = 'foo';
  }
  buildCounterAppVersion--;
  return o;
}

void checkAppVersion(api.AppVersion o) {
  buildCounterAppVersion++;
  if (buildCounterAppVersion < 3) {
    unittest.expect(o.production!, unittest.isTrue);
    checkUnnamed4(o.trackIds!);
    unittest.expect(o.versionCode!, unittest.equals(42));
    unittest.expect(o.versionString!, unittest.equals('foo'));
  }
  buildCounterAppVersion--;
}

core.List<api.AppTrackInfo> buildUnnamed5() => [
  buildAppTrackInfo(),
  buildAppTrackInfo(),
];

void checkUnnamed5(core.List<api.AppTrackInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAppTrackInfo(o[0]);
  checkAppTrackInfo(o[1]);
}

core.List<api.AppVersion> buildUnnamed6() => [
  buildAppVersion(),
  buildAppVersion(),
];

void checkUnnamed6(core.List<api.AppVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAppVersion(o[0]);
  checkAppVersion(o[1]);
}

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ManagedProperty> buildUnnamed9() => [
  buildManagedProperty(),
  buildManagedProperty(),
];

void checkUnnamed9(core.List<api.ManagedProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedProperty(o[0]);
  checkManagedProperty(o[1]);
}

core.List<api.ApplicationPermission> buildUnnamed10() => [
  buildApplicationPermission(),
  buildApplicationPermission(),
];

void checkUnnamed10(core.List<api.ApplicationPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationPermission(o[0]);
  checkApplicationPermission(o[1]);
}

core.List<core.String> buildUnnamed11() => ['foo', 'foo'];

void checkUnnamed11(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterApplication = 0;
api.Application buildApplication() {
  final o = api.Application();
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    o.appPricing = 'foo';
    o.appTracks = buildUnnamed5();
    o.appVersions = buildUnnamed6();
    o.author = 'foo';
    o.availableCountries = buildUnnamed7();
    o.category = 'foo';
    o.contentRating = 'foo';
    o.description = 'foo';
    o.distributionChannel = 'foo';
    o.features = buildUnnamed8();
    o.fullDescription = 'foo';
    o.iconUrl = 'foo';
    o.managedProperties = buildUnnamed9();
    o.minAndroidSdkVersion = 42;
    o.name = 'foo';
    o.permissions = buildUnnamed10();
    o.playStoreUrl = 'foo';
    o.recentChanges = 'foo';
    o.screenshotUrls = buildUnnamed11();
    o.smallIconUrl = 'foo';
    o.title = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterApplication--;
  return o;
}

void checkApplication(api.Application o) {
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    unittest.expect(o.appPricing!, unittest.equals('foo'));
    checkUnnamed5(o.appTracks!);
    checkUnnamed6(o.appVersions!);
    unittest.expect(o.author!, unittest.equals('foo'));
    checkUnnamed7(o.availableCountries!);
    unittest.expect(o.category!, unittest.equals('foo'));
    unittest.expect(o.contentRating!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.distributionChannel!, unittest.equals('foo'));
    checkUnnamed8(o.features!);
    unittest.expect(o.fullDescription!, unittest.equals('foo'));
    unittest.expect(o.iconUrl!, unittest.equals('foo'));
    checkUnnamed9(o.managedProperties!);
    unittest.expect(o.minAndroidSdkVersion!, unittest.equals(42));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed10(o.permissions!);
    unittest.expect(o.playStoreUrl!, unittest.equals('foo'));
    unittest.expect(o.recentChanges!, unittest.equals('foo'));
    checkUnnamed11(o.screenshotUrls!);
    unittest.expect(o.smallIconUrl!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterApplication--;
}

core.int buildCounterApplicationEvent = 0;
api.ApplicationEvent buildApplicationEvent() {
  final o = api.ApplicationEvent();
  buildCounterApplicationEvent++;
  if (buildCounterApplicationEvent < 3) {
    o.createTime = 'foo';
    o.eventType = 'foo';
  }
  buildCounterApplicationEvent--;
  return o;
}

void checkApplicationEvent(api.ApplicationEvent o) {
  buildCounterApplicationEvent++;
  if (buildCounterApplicationEvent < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.eventType!, unittest.equals('foo'));
  }
  buildCounterApplicationEvent--;
}

core.int buildCounterApplicationPermission = 0;
api.ApplicationPermission buildApplicationPermission() {
  final o = api.ApplicationPermission();
  buildCounterApplicationPermission++;
  if (buildCounterApplicationPermission < 3) {
    o.description = 'foo';
    o.name = 'foo';
    o.permissionId = 'foo';
  }
  buildCounterApplicationPermission--;
  return o;
}

void checkApplicationPermission(api.ApplicationPermission o) {
  buildCounterApplicationPermission++;
  if (buildCounterApplicationPermission < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.permissionId!, unittest.equals('foo'));
  }
  buildCounterApplicationPermission--;
}

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed13() => ['foo', 'foo'];

void checkUnnamed13(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.InstallConstraint> buildUnnamed14() => [
  buildInstallConstraint(),
  buildInstallConstraint(),
];

void checkUnnamed14(core.List<api.InstallConstraint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstallConstraint(o[0]);
  checkInstallConstraint(o[1]);
}

core.Map<core.String, core.Object?> buildUnnamed15() => {
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

void checkUnnamed15(core.Map<core.String, core.Object?> o) {
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

core.List<api.PermissionGrant> buildUnnamed16() => [
  buildPermissionGrant(),
  buildPermissionGrant(),
];

void checkUnnamed16(core.List<api.PermissionGrant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermissionGrant(o[0]);
  checkPermissionGrant(o[1]);
}

core.List<api.Role> buildUnnamed17() => [buildRole(), buildRole()];

void checkUnnamed17(core.List<api.Role> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRole(o[0]);
  checkRole(o[1]);
}

core.List<api.ApplicationSigningKeyCert> buildUnnamed18() => [
  buildApplicationSigningKeyCert(),
  buildApplicationSigningKeyCert(),
];

void checkUnnamed18(core.List<api.ApplicationSigningKeyCert> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationSigningKeyCert(o[0]);
  checkApplicationSigningKeyCert(o[1]);
}

core.int buildCounterApplicationPolicy = 0;
api.ApplicationPolicy buildApplicationPolicy() {
  final o = api.ApplicationPolicy();
  buildCounterApplicationPolicy++;
  if (buildCounterApplicationPolicy < 3) {
    o.accessibleTrackIds = buildUnnamed12();
    o.alwaysOnVpnLockdownExemption = 'foo';
    o.autoUpdateMode = 'foo';
    o.connectedWorkAndPersonalApp = 'foo';
    o.credentialProviderPolicy = 'foo';
    o.customAppConfig = buildCustomAppConfig();
    o.defaultPermissionPolicy = 'foo';
    o.delegatedScopes = buildUnnamed13();
    o.disabled = true;
    o.extensionConfig = buildExtensionConfig();
    o.installConstraint = buildUnnamed14();
    o.installPriority = 42;
    o.installType = 'foo';
    o.lockTaskAllowed = true;
    o.managedConfiguration = buildUnnamed15();
    o.managedConfigurationTemplate = buildManagedConfigurationTemplate();
    o.minimumVersionCode = 42;
    o.packageName = 'foo';
    o.permissionGrants = buildUnnamed16();
    o.preferentialNetworkId = 'foo';
    o.roles = buildUnnamed17();
    o.signingKeyCerts = buildUnnamed18();
    o.userControlSettings = 'foo';
    o.workProfileWidgets = 'foo';
  }
  buildCounterApplicationPolicy--;
  return o;
}

void checkApplicationPolicy(api.ApplicationPolicy o) {
  buildCounterApplicationPolicy++;
  if (buildCounterApplicationPolicy < 3) {
    checkUnnamed12(o.accessibleTrackIds!);
    unittest.expect(o.alwaysOnVpnLockdownExemption!, unittest.equals('foo'));
    unittest.expect(o.autoUpdateMode!, unittest.equals('foo'));
    unittest.expect(o.connectedWorkAndPersonalApp!, unittest.equals('foo'));
    unittest.expect(o.credentialProviderPolicy!, unittest.equals('foo'));
    checkCustomAppConfig(o.customAppConfig!);
    unittest.expect(o.defaultPermissionPolicy!, unittest.equals('foo'));
    checkUnnamed13(o.delegatedScopes!);
    unittest.expect(o.disabled!, unittest.isTrue);
    checkExtensionConfig(o.extensionConfig!);
    checkUnnamed14(o.installConstraint!);
    unittest.expect(o.installPriority!, unittest.equals(42));
    unittest.expect(o.installType!, unittest.equals('foo'));
    unittest.expect(o.lockTaskAllowed!, unittest.isTrue);
    checkUnnamed15(o.managedConfiguration!);
    checkManagedConfigurationTemplate(o.managedConfigurationTemplate!);
    unittest.expect(o.minimumVersionCode!, unittest.equals(42));
    unittest.expect(o.packageName!, unittest.equals('foo'));
    checkUnnamed16(o.permissionGrants!);
    unittest.expect(o.preferentialNetworkId!, unittest.equals('foo'));
    checkUnnamed17(o.roles!);
    checkUnnamed18(o.signingKeyCerts!);
    unittest.expect(o.userControlSettings!, unittest.equals('foo'));
    unittest.expect(o.workProfileWidgets!, unittest.equals('foo'));
  }
  buildCounterApplicationPolicy--;
}

core.int buildCounterApplicationPolicyChange = 0;
api.ApplicationPolicyChange buildApplicationPolicyChange() {
  final o = api.ApplicationPolicyChange();
  buildCounterApplicationPolicyChange++;
  if (buildCounterApplicationPolicyChange < 3) {
    o.application = buildApplicationPolicy();
    o.updateMask = 'foo';
  }
  buildCounterApplicationPolicyChange--;
  return o;
}

void checkApplicationPolicyChange(api.ApplicationPolicyChange o) {
  buildCounterApplicationPolicyChange++;
  if (buildCounterApplicationPolicyChange < 3) {
    checkApplicationPolicy(o.application!);
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterApplicationPolicyChange--;
}

core.List<api.ApplicationEvent> buildUnnamed19() => [
  buildApplicationEvent(),
  buildApplicationEvent(),
];

void checkUnnamed19(core.List<api.ApplicationEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationEvent(o[0]);
  checkApplicationEvent(o[1]);
}

core.List<api.KeyedAppState> buildUnnamed20() => [
  buildKeyedAppState(),
  buildKeyedAppState(),
];

void checkUnnamed20(core.List<api.KeyedAppState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyedAppState(o[0]);
  checkKeyedAppState(o[1]);
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterApplicationReport = 0;
api.ApplicationReport buildApplicationReport() {
  final o = api.ApplicationReport();
  buildCounterApplicationReport++;
  if (buildCounterApplicationReport < 3) {
    o.applicationSource = 'foo';
    o.displayName = 'foo';
    o.events = buildUnnamed19();
    o.installerPackageName = 'foo';
    o.keyedAppStates = buildUnnamed20();
    o.packageName = 'foo';
    o.packageSha256Hash = 'foo';
    o.signingKeyCertFingerprints = buildUnnamed21();
    o.state = 'foo';
    o.userFacingType = 'foo';
    o.versionCode = 42;
    o.versionName = 'foo';
  }
  buildCounterApplicationReport--;
  return o;
}

void checkApplicationReport(api.ApplicationReport o) {
  buildCounterApplicationReport++;
  if (buildCounterApplicationReport < 3) {
    unittest.expect(o.applicationSource!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed19(o.events!);
    unittest.expect(o.installerPackageName!, unittest.equals('foo'));
    checkUnnamed20(o.keyedAppStates!);
    unittest.expect(o.packageName!, unittest.equals('foo'));
    unittest.expect(o.packageSha256Hash!, unittest.equals('foo'));
    checkUnnamed21(o.signingKeyCertFingerprints!);
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.userFacingType!, unittest.equals('foo'));
    unittest.expect(o.versionCode!, unittest.equals(42));
    unittest.expect(o.versionName!, unittest.equals('foo'));
  }
  buildCounterApplicationReport--;
}

core.int buildCounterApplicationReportingSettings = 0;
api.ApplicationReportingSettings buildApplicationReportingSettings() {
  final o = api.ApplicationReportingSettings();
  buildCounterApplicationReportingSettings++;
  if (buildCounterApplicationReportingSettings < 3) {
    o.includeRemovedApps = true;
  }
  buildCounterApplicationReportingSettings--;
  return o;
}

void checkApplicationReportingSettings(api.ApplicationReportingSettings o) {
  buildCounterApplicationReportingSettings++;
  if (buildCounterApplicationReportingSettings < 3) {
    unittest.expect(o.includeRemovedApps!, unittest.isTrue);
  }
  buildCounterApplicationReportingSettings--;
}

core.int buildCounterApplicationSigningKeyCert = 0;
api.ApplicationSigningKeyCert buildApplicationSigningKeyCert() {
  final o = api.ApplicationSigningKeyCert();
  buildCounterApplicationSigningKeyCert++;
  if (buildCounterApplicationSigningKeyCert < 3) {
    o.signingKeyCertFingerprintSha256 = 'foo';
  }
  buildCounterApplicationSigningKeyCert--;
  return o;
}

void checkApplicationSigningKeyCert(api.ApplicationSigningKeyCert o) {
  buildCounterApplicationSigningKeyCert++;
  if (buildCounterApplicationSigningKeyCert < 3) {
    unittest.expect(o.signingKeyCertFingerprintSha256!, unittest.equals('foo'));
  }
  buildCounterApplicationSigningKeyCert--;
}

core.int buildCounterBlockAction = 0;
api.BlockAction buildBlockAction() {
  final o = api.BlockAction();
  buildCounterBlockAction++;
  if (buildCounterBlockAction < 3) {
    o.blockAfterDays = 42;
    o.blockScope = 'foo';
  }
  buildCounterBlockAction--;
  return o;
}

void checkBlockAction(api.BlockAction o) {
  buildCounterBlockAction++;
  if (buildCounterBlockAction < 3) {
    unittest.expect(o.blockAfterDays!, unittest.equals(42));
    unittest.expect(o.blockScope!, unittest.equals('foo'));
  }
  buildCounterBlockAction--;
}

core.List<core.String> buildUnnamed22() => ['foo', 'foo'];

void checkUnnamed22(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterChoosePrivateKeyRule = 0;
api.ChoosePrivateKeyRule buildChoosePrivateKeyRule() {
  final o = api.ChoosePrivateKeyRule();
  buildCounterChoosePrivateKeyRule++;
  if (buildCounterChoosePrivateKeyRule < 3) {
    o.packageNames = buildUnnamed22();
    o.privateKeyAlias = 'foo';
    o.urlPattern = 'foo';
  }
  buildCounterChoosePrivateKeyRule--;
  return o;
}

void checkChoosePrivateKeyRule(api.ChoosePrivateKeyRule o) {
  buildCounterChoosePrivateKeyRule++;
  if (buildCounterChoosePrivateKeyRule < 3) {
    checkUnnamed22(o.packageNames!);
    unittest.expect(o.privateKeyAlias!, unittest.equals('foo'));
    unittest.expect(o.urlPattern!, unittest.equals('foo'));
  }
  buildCounterChoosePrivateKeyRule--;
}

core.List<core.String> buildUnnamed23() => ['foo', 'foo'];

void checkUnnamed23(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterClearAppsDataParams = 0;
api.ClearAppsDataParams buildClearAppsDataParams() {
  final o = api.ClearAppsDataParams();
  buildCounterClearAppsDataParams++;
  if (buildCounterClearAppsDataParams < 3) {
    o.packageNames = buildUnnamed23();
  }
  buildCounterClearAppsDataParams--;
  return o;
}

void checkClearAppsDataParams(api.ClearAppsDataParams o) {
  buildCounterClearAppsDataParams++;
  if (buildCounterClearAppsDataParams < 3) {
    checkUnnamed23(o.packageNames!);
  }
  buildCounterClearAppsDataParams--;
}

core.Map<core.String, api.PerAppResult> buildUnnamed24() => {
  'x': buildPerAppResult(),
  'y': buildPerAppResult(),
};

void checkUnnamed24(core.Map<core.String, api.PerAppResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerAppResult(o['x']!);
  checkPerAppResult(o['y']!);
}

core.int buildCounterClearAppsDataStatus = 0;
api.ClearAppsDataStatus buildClearAppsDataStatus() {
  final o = api.ClearAppsDataStatus();
  buildCounterClearAppsDataStatus++;
  if (buildCounterClearAppsDataStatus < 3) {
    o.results = buildUnnamed24();
  }
  buildCounterClearAppsDataStatus--;
  return o;
}

void checkClearAppsDataStatus(api.ClearAppsDataStatus o) {
  buildCounterClearAppsDataStatus++;
  if (buildCounterClearAppsDataStatus < 3) {
    checkUnnamed24(o.results!);
  }
  buildCounterClearAppsDataStatus--;
}

core.List<core.String> buildUnnamed25() => ['foo', 'foo'];

void checkUnnamed25(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCommand = 0;
api.Command buildCommand() {
  final o = api.Command();
  buildCounterCommand++;
  if (buildCounterCommand < 3) {
    o.addEsimParams = buildAddEsimParams();
    o.clearAppsDataParams = buildClearAppsDataParams();
    o.clearAppsDataStatus = buildClearAppsDataStatus();
    o.createTime = 'foo';
    o.duration = 'foo';
    o.errorCode = 'foo';
    o.esimStatus = buildEsimCommandStatus();
    o.newPassword = 'foo';
    o.removeEsimParams = buildRemoveEsimParams();
    o.requestDeviceInfoParams = buildRequestDeviceInfoParams();
    o.requestDeviceInfoStatus = buildRequestDeviceInfoStatus();
    o.resetPasswordFlags = buildUnnamed25();
    o.startLostModeParams = buildStartLostModeParams();
    o.startLostModeStatus = buildStartLostModeStatus();
    o.stopLostModeParams = buildStopLostModeParams();
    o.stopLostModeStatus = buildStopLostModeStatus();
    o.type = 'foo';
    o.userName = 'foo';
    o.wipeParams = buildWipeParams();
  }
  buildCounterCommand--;
  return o;
}

void checkCommand(api.Command o) {
  buildCounterCommand++;
  if (buildCounterCommand < 3) {
    checkAddEsimParams(o.addEsimParams!);
    checkClearAppsDataParams(o.clearAppsDataParams!);
    checkClearAppsDataStatus(o.clearAppsDataStatus!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.duration!, unittest.equals('foo'));
    unittest.expect(o.errorCode!, unittest.equals('foo'));
    checkEsimCommandStatus(o.esimStatus!);
    unittest.expect(o.newPassword!, unittest.equals('foo'));
    checkRemoveEsimParams(o.removeEsimParams!);
    checkRequestDeviceInfoParams(o.requestDeviceInfoParams!);
    checkRequestDeviceInfoStatus(o.requestDeviceInfoStatus!);
    checkUnnamed25(o.resetPasswordFlags!);
    checkStartLostModeParams(o.startLostModeParams!);
    checkStartLostModeStatus(o.startLostModeStatus!);
    checkStopLostModeParams(o.stopLostModeParams!);
    checkStopLostModeStatus(o.stopLostModeStatus!);
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.userName!, unittest.equals('foo'));
    checkWipeParams(o.wipeParams!);
  }
  buildCounterCommand--;
}

core.int buildCounterCommonCriteriaModeInfo = 0;
api.CommonCriteriaModeInfo buildCommonCriteriaModeInfo() {
  final o = api.CommonCriteriaModeInfo();
  buildCounterCommonCriteriaModeInfo++;
  if (buildCounterCommonCriteriaModeInfo < 3) {
    o.commonCriteriaModeStatus = 'foo';
    o.policySignatureVerificationStatus = 'foo';
  }
  buildCounterCommonCriteriaModeInfo--;
  return o;
}

void checkCommonCriteriaModeInfo(api.CommonCriteriaModeInfo o) {
  buildCounterCommonCriteriaModeInfo++;
  if (buildCounterCommonCriteriaModeInfo < 3) {
    unittest.expect(o.commonCriteriaModeStatus!, unittest.equals('foo'));
    unittest.expect(
      o.policySignatureVerificationStatus!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommonCriteriaModeInfo--;
}

core.List<core.String> buildUnnamed26() => ['foo', 'foo'];

void checkUnnamed26(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterComplianceRule = 0;
api.ComplianceRule buildComplianceRule() {
  final o = api.ComplianceRule();
  buildCounterComplianceRule++;
  if (buildCounterComplianceRule < 3) {
    o.apiLevelCondition = buildApiLevelCondition();
    o.disableApps = true;
    o.nonComplianceDetailCondition = buildNonComplianceDetailCondition();
    o.packageNamesToDisable = buildUnnamed26();
  }
  buildCounterComplianceRule--;
  return o;
}

void checkComplianceRule(api.ComplianceRule o) {
  buildCounterComplianceRule++;
  if (buildCounterComplianceRule < 3) {
    checkApiLevelCondition(o.apiLevelCondition!);
    unittest.expect(o.disableApps!, unittest.isTrue);
    checkNonComplianceDetailCondition(o.nonComplianceDetailCondition!);
    checkUnnamed26(o.packageNamesToDisable!);
  }
  buildCounterComplianceRule--;
}

core.int buildCounterContactInfo = 0;
api.ContactInfo buildContactInfo() {
  final o = api.ContactInfo();
  buildCounterContactInfo++;
  if (buildCounterContactInfo < 3) {
    o.contactEmail = 'foo';
    o.dataProtectionOfficerEmail = 'foo';
    o.dataProtectionOfficerName = 'foo';
    o.dataProtectionOfficerPhone = 'foo';
    o.euRepresentativeEmail = 'foo';
    o.euRepresentativeName = 'foo';
    o.euRepresentativePhone = 'foo';
  }
  buildCounterContactInfo--;
  return o;
}

void checkContactInfo(api.ContactInfo o) {
  buildCounterContactInfo++;
  if (buildCounterContactInfo < 3) {
    unittest.expect(o.contactEmail!, unittest.equals('foo'));
    unittest.expect(o.dataProtectionOfficerEmail!, unittest.equals('foo'));
    unittest.expect(o.dataProtectionOfficerName!, unittest.equals('foo'));
    unittest.expect(o.dataProtectionOfficerPhone!, unittest.equals('foo'));
    unittest.expect(o.euRepresentativeEmail!, unittest.equals('foo'));
    unittest.expect(o.euRepresentativeName!, unittest.equals('foo'));
    unittest.expect(o.euRepresentativePhone!, unittest.equals('foo'));
  }
  buildCounterContactInfo--;
}

core.List<core.String> buildUnnamed27() => ['foo', 'foo'];

void checkUnnamed27(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterContentProviderEndpoint = 0;
api.ContentProviderEndpoint buildContentProviderEndpoint() {
  final o = api.ContentProviderEndpoint();
  buildCounterContentProviderEndpoint++;
  if (buildCounterContentProviderEndpoint < 3) {
    o.packageName = 'foo';
    o.signingCertsSha256 = buildUnnamed27();
    o.uri = 'foo';
  }
  buildCounterContentProviderEndpoint--;
  return o;
}

void checkContentProviderEndpoint(api.ContentProviderEndpoint o) {
  buildCounterContentProviderEndpoint++;
  if (buildCounterContentProviderEndpoint < 3) {
    unittest.expect(o.packageName!, unittest.equals('foo'));
    checkUnnamed27(o.signingCertsSha256!);
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterContentProviderEndpoint--;
}

core.int buildCounterCrossProfilePolicies = 0;
api.CrossProfilePolicies buildCrossProfilePolicies() {
  final o = api.CrossProfilePolicies();
  buildCounterCrossProfilePolicies++;
  if (buildCounterCrossProfilePolicies < 3) {
    o.crossProfileAppFunctions = 'foo';
    o.crossProfileCopyPaste = 'foo';
    o.crossProfileDataSharing = 'foo';
    o.exemptionsToShowWorkContactsInPersonalProfile = buildPackageNameList();
    o.showWorkContactsInPersonalProfile = 'foo';
    o.workProfileWidgetsDefault = 'foo';
  }
  buildCounterCrossProfilePolicies--;
  return o;
}

void checkCrossProfilePolicies(api.CrossProfilePolicies o) {
  buildCounterCrossProfilePolicies++;
  if (buildCounterCrossProfilePolicies < 3) {
    unittest.expect(o.crossProfileAppFunctions!, unittest.equals('foo'));
    unittest.expect(o.crossProfileCopyPaste!, unittest.equals('foo'));
    unittest.expect(o.crossProfileDataSharing!, unittest.equals('foo'));
    checkPackageNameList(o.exemptionsToShowWorkContactsInPersonalProfile!);
    unittest.expect(
      o.showWorkContactsInPersonalProfile!,
      unittest.equals('foo'),
    );
    unittest.expect(o.workProfileWidgetsDefault!, unittest.equals('foo'));
  }
  buildCounterCrossProfilePolicies--;
}

core.int buildCounterCustomAppConfig = 0;
api.CustomAppConfig buildCustomAppConfig() {
  final o = api.CustomAppConfig();
  buildCounterCustomAppConfig++;
  if (buildCounterCustomAppConfig < 3) {
    o.userUninstallSettings = 'foo';
  }
  buildCounterCustomAppConfig--;
  return o;
}

void checkCustomAppConfig(api.CustomAppConfig o) {
  buildCounterCustomAppConfig++;
  if (buildCounterCustomAppConfig < 3) {
    unittest.expect(o.userUninstallSettings!, unittest.equals('foo'));
  }
  buildCounterCustomAppConfig--;
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

core.int buildCounterDefaultApplication = 0;
api.DefaultApplication buildDefaultApplication() {
  final o = api.DefaultApplication();
  buildCounterDefaultApplication++;
  if (buildCounterDefaultApplication < 3) {
    o.packageName = 'foo';
  }
  buildCounterDefaultApplication--;
  return o;
}

void checkDefaultApplication(api.DefaultApplication o) {
  buildCounterDefaultApplication++;
  if (buildCounterDefaultApplication < 3) {
    unittest.expect(o.packageName!, unittest.equals('foo'));
  }
  buildCounterDefaultApplication--;
}

core.int buildCounterDefaultApplicationContext = 0;
api.DefaultApplicationContext buildDefaultApplicationContext() {
  final o = api.DefaultApplicationContext();
  buildCounterDefaultApplicationContext++;
  if (buildCounterDefaultApplicationContext < 3) {
    o.defaultApplicationScope = 'foo';
  }
  buildCounterDefaultApplicationContext--;
  return o;
}

void checkDefaultApplicationContext(api.DefaultApplicationContext o) {
  buildCounterDefaultApplicationContext++;
  if (buildCounterDefaultApplicationContext < 3) {
    unittest.expect(o.defaultApplicationScope!, unittest.equals('foo'));
  }
  buildCounterDefaultApplicationContext--;
}

core.List<api.DefaultApplicationSettingAttempt> buildUnnamed28() => [
  buildDefaultApplicationSettingAttempt(),
  buildDefaultApplicationSettingAttempt(),
];

void checkUnnamed28(core.List<api.DefaultApplicationSettingAttempt> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDefaultApplicationSettingAttempt(o[0]);
  checkDefaultApplicationSettingAttempt(o[1]);
}

core.int buildCounterDefaultApplicationInfo = 0;
api.DefaultApplicationInfo buildDefaultApplicationInfo() {
  final o = api.DefaultApplicationInfo();
  buildCounterDefaultApplicationInfo++;
  if (buildCounterDefaultApplicationInfo < 3) {
    o.defaultApplicationSettingAttempts = buildUnnamed28();
    o.defaultApplicationType = 'foo';
    o.packageName = 'foo';
  }
  buildCounterDefaultApplicationInfo--;
  return o;
}

void checkDefaultApplicationInfo(api.DefaultApplicationInfo o) {
  buildCounterDefaultApplicationInfo++;
  if (buildCounterDefaultApplicationInfo < 3) {
    checkUnnamed28(o.defaultApplicationSettingAttempts!);
    unittest.expect(o.defaultApplicationType!, unittest.equals('foo'));
    unittest.expect(o.packageName!, unittest.equals('foo'));
  }
  buildCounterDefaultApplicationInfo--;
}

core.List<core.String> buildUnnamed29() => ['foo', 'foo'];

void checkUnnamed29(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.DefaultApplication> buildUnnamed30() => [
  buildDefaultApplication(),
  buildDefaultApplication(),
];

void checkUnnamed30(core.List<api.DefaultApplication> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDefaultApplication(o[0]);
  checkDefaultApplication(o[1]);
}

core.int buildCounterDefaultApplicationSetting = 0;
api.DefaultApplicationSetting buildDefaultApplicationSetting() {
  final o = api.DefaultApplicationSetting();
  buildCounterDefaultApplicationSetting++;
  if (buildCounterDefaultApplicationSetting < 3) {
    o.defaultApplicationScopes = buildUnnamed29();
    o.defaultApplicationType = 'foo';
    o.defaultApplications = buildUnnamed30();
  }
  buildCounterDefaultApplicationSetting--;
  return o;
}

void checkDefaultApplicationSetting(api.DefaultApplicationSetting o) {
  buildCounterDefaultApplicationSetting++;
  if (buildCounterDefaultApplicationSetting < 3) {
    checkUnnamed29(o.defaultApplicationScopes!);
    unittest.expect(o.defaultApplicationType!, unittest.equals('foo'));
    checkUnnamed30(o.defaultApplications!);
  }
  buildCounterDefaultApplicationSetting--;
}

core.int buildCounterDefaultApplicationSettingAttempt = 0;
api.DefaultApplicationSettingAttempt buildDefaultApplicationSettingAttempt() {
  final o = api.DefaultApplicationSettingAttempt();
  buildCounterDefaultApplicationSettingAttempt++;
  if (buildCounterDefaultApplicationSettingAttempt < 3) {
    o.attemptOutcome = 'foo';
    o.packageName = 'foo';
  }
  buildCounterDefaultApplicationSettingAttempt--;
  return o;
}

void checkDefaultApplicationSettingAttempt(
  api.DefaultApplicationSettingAttempt o,
) {
  buildCounterDefaultApplicationSettingAttempt++;
  if (buildCounterDefaultApplicationSettingAttempt < 3) {
    unittest.expect(o.attemptOutcome!, unittest.equals('foo'));
    unittest.expect(o.packageName!, unittest.equals('foo'));
  }
  buildCounterDefaultApplicationSettingAttempt--;
}

core.List<api.ApplicationReport> buildUnnamed31() => [
  buildApplicationReport(),
  buildApplicationReport(),
];

void checkUnnamed31(core.List<api.ApplicationReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationReport(o[0]);
  checkApplicationReport(o[1]);
}

core.List<api.PasswordRequirements> buildUnnamed32() => [
  buildPasswordRequirements(),
  buildPasswordRequirements(),
];

void checkUnnamed32(core.List<api.PasswordRequirements> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPasswordRequirements(o[0]);
  checkPasswordRequirements(o[1]);
}

core.List<api.DefaultApplicationInfo> buildUnnamed33() => [
  buildDefaultApplicationInfo(),
  buildDefaultApplicationInfo(),
];

void checkUnnamed33(core.List<api.DefaultApplicationInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDefaultApplicationInfo(o[0]);
  checkDefaultApplicationInfo(o[1]);
}

core.List<api.Display> buildUnnamed34() => [buildDisplay(), buildDisplay()];

void checkUnnamed34(core.List<api.Display> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisplay(o[0]);
  checkDisplay(o[1]);
}

core.List<api.HardwareStatus> buildUnnamed35() => [
  buildHardwareStatus(),
  buildHardwareStatus(),
];

void checkUnnamed35(core.List<api.HardwareStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHardwareStatus(o[0]);
  checkHardwareStatus(o[1]);
}

core.List<api.MemoryEvent> buildUnnamed36() => [
  buildMemoryEvent(),
  buildMemoryEvent(),
];

void checkUnnamed36(core.List<api.MemoryEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMemoryEvent(o[0]);
  checkMemoryEvent(o[1]);
}

core.List<api.NonComplianceDetail> buildUnnamed37() => [
  buildNonComplianceDetail(),
  buildNonComplianceDetail(),
];

void checkUnnamed37(core.List<api.NonComplianceDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNonComplianceDetail(o[0]);
  checkNonComplianceDetail(o[1]);
}

core.List<api.PowerManagementEvent> buildUnnamed38() => [
  buildPowerManagementEvent(),
  buildPowerManagementEvent(),
];

void checkUnnamed38(core.List<api.PowerManagementEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPowerManagementEvent(o[0]);
  checkPowerManagementEvent(o[1]);
}

core.List<core.String> buildUnnamed39() => ['foo', 'foo'];

void checkUnnamed39(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed40() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed40(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterDevice = 0;
api.Device buildDevice() {
  final o = api.Device();
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    o.apiLevel = 42;
    o.applicationReports = buildUnnamed31();
    o.appliedPasswordPolicies = buildUnnamed32();
    o.appliedPolicyName = 'foo';
    o.appliedPolicyVersion = 'foo';
    o.appliedState = 'foo';
    o.commonCriteriaModeInfo = buildCommonCriteriaModeInfo();
    o.defaultApplicationInfo = buildUnnamed33();
    o.deviceSettings = buildDeviceSettings();
    o.disabledReason = buildUserFacingMessage();
    o.displays = buildUnnamed34();
    o.dpcMigrationInfo = buildDpcMigrationInfo();
    o.enrollmentTime = 'foo';
    o.enrollmentTokenData = 'foo';
    o.enrollmentTokenName = 'foo';
    o.hardwareInfo = buildHardwareInfo();
    o.hardwareStatusSamples = buildUnnamed35();
    o.lastPolicyComplianceReportTime = 'foo';
    o.lastPolicySyncTime = 'foo';
    o.lastStatusReportTime = 'foo';
    o.managementMode = 'foo';
    o.memoryEvents = buildUnnamed36();
    o.memoryInfo = buildMemoryInfo();
    o.name = 'foo';
    o.networkInfo = buildNetworkInfo();
    o.nonComplianceDetails = buildUnnamed37();
    o.ownership = 'foo';
    o.policyCompliant = true;
    o.policyName = 'foo';
    o.powerManagementEvents = buildUnnamed38();
    o.previousDeviceNames = buildUnnamed39();
    o.securityPosture = buildSecurityPosture();
    o.softwareInfo = buildSoftwareInfo();
    o.state = 'foo';
    o.systemProperties = buildUnnamed40();
    o.user = buildUser();
    o.userName = 'foo';
  }
  buildCounterDevice--;
  return o;
}

void checkDevice(api.Device o) {
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    unittest.expect(o.apiLevel!, unittest.equals(42));
    checkUnnamed31(o.applicationReports!);
    checkUnnamed32(o.appliedPasswordPolicies!);
    unittest.expect(o.appliedPolicyName!, unittest.equals('foo'));
    unittest.expect(o.appliedPolicyVersion!, unittest.equals('foo'));
    unittest.expect(o.appliedState!, unittest.equals('foo'));
    checkCommonCriteriaModeInfo(o.commonCriteriaModeInfo!);
    checkUnnamed33(o.defaultApplicationInfo!);
    checkDeviceSettings(o.deviceSettings!);
    checkUserFacingMessage(o.disabledReason!);
    checkUnnamed34(o.displays!);
    checkDpcMigrationInfo(o.dpcMigrationInfo!);
    unittest.expect(o.enrollmentTime!, unittest.equals('foo'));
    unittest.expect(o.enrollmentTokenData!, unittest.equals('foo'));
    unittest.expect(o.enrollmentTokenName!, unittest.equals('foo'));
    checkHardwareInfo(o.hardwareInfo!);
    checkUnnamed35(o.hardwareStatusSamples!);
    unittest.expect(o.lastPolicyComplianceReportTime!, unittest.equals('foo'));
    unittest.expect(o.lastPolicySyncTime!, unittest.equals('foo'));
    unittest.expect(o.lastStatusReportTime!, unittest.equals('foo'));
    unittest.expect(o.managementMode!, unittest.equals('foo'));
    checkUnnamed36(o.memoryEvents!);
    checkMemoryInfo(o.memoryInfo!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkNetworkInfo(o.networkInfo!);
    checkUnnamed37(o.nonComplianceDetails!);
    unittest.expect(o.ownership!, unittest.equals('foo'));
    unittest.expect(o.policyCompliant!, unittest.isTrue);
    unittest.expect(o.policyName!, unittest.equals('foo'));
    checkUnnamed38(o.powerManagementEvents!);
    checkUnnamed39(o.previousDeviceNames!);
    checkSecurityPosture(o.securityPosture!);
    checkSoftwareInfo(o.softwareInfo!);
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed40(o.systemProperties!);
    checkUser(o.user!);
    unittest.expect(o.userName!, unittest.equals('foo'));
  }
  buildCounterDevice--;
}

core.int buildCounterDeviceConnectivityManagement = 0;
api.DeviceConnectivityManagement buildDeviceConnectivityManagement() {
  final o = api.DeviceConnectivityManagement();
  buildCounterDeviceConnectivityManagement++;
  if (buildCounterDeviceConnectivityManagement < 3) {
    o.apnPolicy = buildApnPolicy();
    o.bluetoothSharing = 'foo';
    o.configureWifi = 'foo';
    o.preferentialNetworkServiceSettings =
        buildPreferentialNetworkServiceSettings();
    o.tetheringSettings = 'foo';
    o.usbDataAccess = 'foo';
    o.wifiDirectSettings = 'foo';
    o.wifiRoamingPolicy = buildWifiRoamingPolicy();
    o.wifiSsidPolicy = buildWifiSsidPolicy();
  }
  buildCounterDeviceConnectivityManagement--;
  return o;
}

void checkDeviceConnectivityManagement(api.DeviceConnectivityManagement o) {
  buildCounterDeviceConnectivityManagement++;
  if (buildCounterDeviceConnectivityManagement < 3) {
    checkApnPolicy(o.apnPolicy!);
    unittest.expect(o.bluetoothSharing!, unittest.equals('foo'));
    unittest.expect(o.configureWifi!, unittest.equals('foo'));
    checkPreferentialNetworkServiceSettings(
      o.preferentialNetworkServiceSettings!,
    );
    unittest.expect(o.tetheringSettings!, unittest.equals('foo'));
    unittest.expect(o.usbDataAccess!, unittest.equals('foo'));
    unittest.expect(o.wifiDirectSettings!, unittest.equals('foo'));
    checkWifiRoamingPolicy(o.wifiRoamingPolicy!);
    checkWifiSsidPolicy(o.wifiSsidPolicy!);
  }
  buildCounterDeviceConnectivityManagement--;
}

core.int buildCounterDeviceRadioState = 0;
api.DeviceRadioState buildDeviceRadioState() {
  final o = api.DeviceRadioState();
  buildCounterDeviceRadioState++;
  if (buildCounterDeviceRadioState < 3) {
    o.airplaneModeState = 'foo';
    o.cellularTwoGState = 'foo';
    o.minimumWifiSecurityLevel = 'foo';
    o.ultraWidebandState = 'foo';
    o.userInitiatedAddEsimSettings = 'foo';
    o.wifiState = 'foo';
  }
  buildCounterDeviceRadioState--;
  return o;
}

void checkDeviceRadioState(api.DeviceRadioState o) {
  buildCounterDeviceRadioState++;
  if (buildCounterDeviceRadioState < 3) {
    unittest.expect(o.airplaneModeState!, unittest.equals('foo'));
    unittest.expect(o.cellularTwoGState!, unittest.equals('foo'));
    unittest.expect(o.minimumWifiSecurityLevel!, unittest.equals('foo'));
    unittest.expect(o.ultraWidebandState!, unittest.equals('foo'));
    unittest.expect(o.userInitiatedAddEsimSettings!, unittest.equals('foo'));
    unittest.expect(o.wifiState!, unittest.equals('foo'));
  }
  buildCounterDeviceRadioState--;
}

core.int buildCounterDeviceSettings = 0;
api.DeviceSettings buildDeviceSettings() {
  final o = api.DeviceSettings();
  buildCounterDeviceSettings++;
  if (buildCounterDeviceSettings < 3) {
    o.adbEnabled = true;
    o.developmentSettingsEnabled = true;
    o.encryptionStatus = 'foo';
    o.isDeviceSecure = true;
    o.isEncrypted = true;
    o.unknownSourcesEnabled = true;
    o.verifyAppsEnabled = true;
  }
  buildCounterDeviceSettings--;
  return o;
}

void checkDeviceSettings(api.DeviceSettings o) {
  buildCounterDeviceSettings++;
  if (buildCounterDeviceSettings < 3) {
    unittest.expect(o.adbEnabled!, unittest.isTrue);
    unittest.expect(o.developmentSettingsEnabled!, unittest.isTrue);
    unittest.expect(o.encryptionStatus!, unittest.equals('foo'));
    unittest.expect(o.isDeviceSecure!, unittest.isTrue);
    unittest.expect(o.isEncrypted!, unittest.isTrue);
    unittest.expect(o.unknownSourcesEnabled!, unittest.isTrue);
    unittest.expect(o.verifyAppsEnabled!, unittest.isTrue);
  }
  buildCounterDeviceSettings--;
}

core.int buildCounterDisplay = 0;
api.Display buildDisplay() {
  final o = api.Display();
  buildCounterDisplay++;
  if (buildCounterDisplay < 3) {
    o.density = 42;
    o.displayId = 42;
    o.height = 42;
    o.name = 'foo';
    o.refreshRate = 42;
    o.state = 'foo';
    o.width = 42;
  }
  buildCounterDisplay--;
  return o;
}

void checkDisplay(api.Display o) {
  buildCounterDisplay++;
  if (buildCounterDisplay < 3) {
    unittest.expect(o.density!, unittest.equals(42));
    unittest.expect(o.displayId!, unittest.equals(42));
    unittest.expect(o.height!, unittest.equals(42));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.refreshRate!, unittest.equals(42));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.width!, unittest.equals(42));
  }
  buildCounterDisplay--;
}

core.int buildCounterDisplaySettings = 0;
api.DisplaySettings buildDisplaySettings() {
  final o = api.DisplaySettings();
  buildCounterDisplaySettings++;
  if (buildCounterDisplaySettings < 3) {
    o.screenBrightnessSettings = buildScreenBrightnessSettings();
    o.screenTimeoutSettings = buildScreenTimeoutSettings();
  }
  buildCounterDisplaySettings--;
  return o;
}

void checkDisplaySettings(api.DisplaySettings o) {
  buildCounterDisplaySettings++;
  if (buildCounterDisplaySettings < 3) {
    checkScreenBrightnessSettings(o.screenBrightnessSettings!);
    checkScreenTimeoutSettings(o.screenTimeoutSettings!);
  }
  buildCounterDisplaySettings--;
}

core.int buildCounterDpcMigrationInfo = 0;
api.DpcMigrationInfo buildDpcMigrationInfo() {
  final o = api.DpcMigrationInfo();
  buildCounterDpcMigrationInfo++;
  if (buildCounterDpcMigrationInfo < 3) {
    o.additionalData = 'foo';
    o.previousDpc = 'foo';
  }
  buildCounterDpcMigrationInfo--;
  return o;
}

void checkDpcMigrationInfo(api.DpcMigrationInfo o) {
  buildCounterDpcMigrationInfo++;
  if (buildCounterDpcMigrationInfo < 3) {
    unittest.expect(o.additionalData!, unittest.equals('foo'));
    unittest.expect(o.previousDpc!, unittest.equals('foo'));
  }
  buildCounterDpcMigrationInfo--;
}

core.int buildCounterEid = 0;
api.Eid buildEid() {
  final o = api.Eid();
  buildCounterEid++;
  if (buildCounterEid < 3) {
    o.eid = 'foo';
  }
  buildCounterEid--;
  return o;
}

void checkEid(api.Eid o) {
  buildCounterEid++;
  if (buildCounterEid < 3) {
    unittest.expect(o.eid!, unittest.equals('foo'));
  }
  buildCounterEid--;
}

core.List<api.Eid> buildUnnamed41() => [buildEid(), buildEid()];

void checkUnnamed41(core.List<api.Eid> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEid(o[0]);
  checkEid(o[1]);
}

core.int buildCounterEidInfo = 0;
api.EidInfo buildEidInfo() {
  final o = api.EidInfo();
  buildCounterEidInfo++;
  if (buildCounterEidInfo < 3) {
    o.eids = buildUnnamed41();
  }
  buildCounterEidInfo--;
  return o;
}

void checkEidInfo(api.EidInfo o) {
  buildCounterEidInfo++;
  if (buildCounterEidInfo < 3) {
    checkUnnamed41(o.eids!);
  }
  buildCounterEidInfo--;
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

core.int buildCounterEnrollmentToken = 0;
api.EnrollmentToken buildEnrollmentToken() {
  final o = api.EnrollmentToken();
  buildCounterEnrollmentToken++;
  if (buildCounterEnrollmentToken < 3) {
    o.additionalData = 'foo';
    o.allowPersonalUsage = 'foo';
    o.duration = 'foo';
    o.expirationTimestamp = 'foo';
    o.name = 'foo';
    o.oneTimeOnly = true;
    o.policyName = 'foo';
    o.qrCode = 'foo';
    o.user = buildUser();
    o.value = 'foo';
  }
  buildCounterEnrollmentToken--;
  return o;
}

void checkEnrollmentToken(api.EnrollmentToken o) {
  buildCounterEnrollmentToken++;
  if (buildCounterEnrollmentToken < 3) {
    unittest.expect(o.additionalData!, unittest.equals('foo'));
    unittest.expect(o.allowPersonalUsage!, unittest.equals('foo'));
    unittest.expect(o.duration!, unittest.equals('foo'));
    unittest.expect(o.expirationTimestamp!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.oneTimeOnly!, unittest.isTrue);
    unittest.expect(o.policyName!, unittest.equals('foo'));
    unittest.expect(o.qrCode!, unittest.equals('foo'));
    checkUser(o.user!);
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterEnrollmentToken--;
}

core.List<core.String> buildUnnamed42() => ['foo', 'foo'];

void checkUnnamed42(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.SigninDetail> buildUnnamed43() => [
  buildSigninDetail(),
  buildSigninDetail(),
];

void checkUnnamed43(core.List<api.SigninDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSigninDetail(o[0]);
  checkSigninDetail(o[1]);
}

core.List<api.TermsAndConditions> buildUnnamed44() => [
  buildTermsAndConditions(),
  buildTermsAndConditions(),
];

void checkUnnamed44(core.List<api.TermsAndConditions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTermsAndConditions(o[0]);
  checkTermsAndConditions(o[1]);
}

core.int buildCounterEnterprise = 0;
api.Enterprise buildEnterprise() {
  final o = api.Enterprise();
  buildCounterEnterprise++;
  if (buildCounterEnterprise < 3) {
    o.appAutoApprovalEnabled = true;
    o.contactInfo = buildContactInfo();
    o.enabledNotificationTypes = buildUnnamed42();
    o.enterpriseDisplayName = 'foo';
    o.enterpriseType = 'foo';
    o.googleAuthenticationSettings = buildGoogleAuthenticationSettings();
    o.logo = buildExternalData();
    o.managedGoogleDomainType = 'foo';
    o.managedGooglePlayAccountsEnterpriseType = 'foo';
    o.name = 'foo';
    o.primaryColor = 42;
    o.pubsubTopic = 'foo';
    o.signinDetails = buildUnnamed43();
    o.termsAndConditions = buildUnnamed44();
  }
  buildCounterEnterprise--;
  return o;
}

void checkEnterprise(api.Enterprise o) {
  buildCounterEnterprise++;
  if (buildCounterEnterprise < 3) {
    unittest.expect(o.appAutoApprovalEnabled!, unittest.isTrue);
    checkContactInfo(o.contactInfo!);
    checkUnnamed42(o.enabledNotificationTypes!);
    unittest.expect(o.enterpriseDisplayName!, unittest.equals('foo'));
    unittest.expect(o.enterpriseType!, unittest.equals('foo'));
    checkGoogleAuthenticationSettings(o.googleAuthenticationSettings!);
    checkExternalData(o.logo!);
    unittest.expect(o.managedGoogleDomainType!, unittest.equals('foo'));
    unittest.expect(
      o.managedGooglePlayAccountsEnterpriseType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.primaryColor!, unittest.equals(42));
    unittest.expect(o.pubsubTopic!, unittest.equals('foo'));
    checkUnnamed43(o.signinDetails!);
    checkUnnamed44(o.termsAndConditions!);
  }
  buildCounterEnterprise--;
}

core.int buildCounterEsimCommandStatus = 0;
api.EsimCommandStatus buildEsimCommandStatus() {
  final o = api.EsimCommandStatus();
  buildCounterEsimCommandStatus++;
  if (buildCounterEsimCommandStatus < 3) {
    o.esimInfo = buildEsimInfo();
    o.internalErrorDetails = buildInternalErrorDetails();
    o.status = 'foo';
  }
  buildCounterEsimCommandStatus--;
  return o;
}

void checkEsimCommandStatus(api.EsimCommandStatus o) {
  buildCounterEsimCommandStatus++;
  if (buildCounterEsimCommandStatus < 3) {
    checkEsimInfo(o.esimInfo!);
    checkInternalErrorDetails(o.internalErrorDetails!);
    unittest.expect(o.status!, unittest.equals('foo'));
  }
  buildCounterEsimCommandStatus--;
}

core.int buildCounterEsimInfo = 0;
api.EsimInfo buildEsimInfo() {
  final o = api.EsimInfo();
  buildCounterEsimInfo++;
  if (buildCounterEsimInfo < 3) {
    o.iccId = 'foo';
  }
  buildCounterEsimInfo--;
  return o;
}

void checkEsimInfo(api.EsimInfo o) {
  buildCounterEsimInfo++;
  if (buildCounterEsimInfo < 3) {
    unittest.expect(o.iccId!, unittest.equals('foo'));
  }
  buildCounterEsimInfo--;
}

core.int buildCounterEuiccChipInfo = 0;
api.EuiccChipInfo buildEuiccChipInfo() {
  final o = api.EuiccChipInfo();
  buildCounterEuiccChipInfo++;
  if (buildCounterEuiccChipInfo < 3) {
    o.eid = 'foo';
  }
  buildCounterEuiccChipInfo--;
  return o;
}

void checkEuiccChipInfo(api.EuiccChipInfo o) {
  buildCounterEuiccChipInfo++;
  if (buildCounterEuiccChipInfo < 3) {
    unittest.expect(o.eid!, unittest.equals('foo'));
  }
  buildCounterEuiccChipInfo--;
}

core.List<core.String> buildUnnamed45() => ['foo', 'foo'];

void checkUnnamed45(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterExtensionConfig = 0;
api.ExtensionConfig buildExtensionConfig() {
  final o = api.ExtensionConfig();
  buildCounterExtensionConfig++;
  if (buildCounterExtensionConfig < 3) {
    o.notificationReceiver = 'foo';
    o.signingKeyFingerprintsSha256 = buildUnnamed45();
  }
  buildCounterExtensionConfig--;
  return o;
}

void checkExtensionConfig(api.ExtensionConfig o) {
  buildCounterExtensionConfig++;
  if (buildCounterExtensionConfig < 3) {
    unittest.expect(o.notificationReceiver!, unittest.equals('foo'));
    checkUnnamed45(o.signingKeyFingerprintsSha256!);
  }
  buildCounterExtensionConfig--;
}

core.int buildCounterExternalData = 0;
api.ExternalData buildExternalData() {
  final o = api.ExternalData();
  buildCounterExternalData++;
  if (buildCounterExternalData < 3) {
    o.sha256Hash = 'foo';
    o.url = 'foo';
  }
  buildCounterExternalData--;
  return o;
}

void checkExternalData(api.ExternalData o) {
  buildCounterExternalData++;
  if (buildCounterExternalData < 3) {
    unittest.expect(o.sha256Hash!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterExternalData--;
}

core.int buildCounterFreezePeriod = 0;
api.FreezePeriod buildFreezePeriod() {
  final o = api.FreezePeriod();
  buildCounterFreezePeriod++;
  if (buildCounterFreezePeriod < 3) {
    o.endDate = buildDate();
    o.startDate = buildDate();
  }
  buildCounterFreezePeriod--;
  return o;
}

void checkFreezePeriod(api.FreezePeriod o) {
  buildCounterFreezePeriod++;
  if (buildCounterFreezePeriod < 3) {
    checkDate(o.endDate!);
    checkDate(o.startDate!);
  }
  buildCounterFreezePeriod--;
}

core.List<core.String> buildUnnamed46() => ['foo', 'foo'];

void checkUnnamed46(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGenerateEnterpriseUpgradeUrlRequest = 0;
api.GenerateEnterpriseUpgradeUrlRequest
buildGenerateEnterpriseUpgradeUrlRequest() {
  final o = api.GenerateEnterpriseUpgradeUrlRequest();
  buildCounterGenerateEnterpriseUpgradeUrlRequest++;
  if (buildCounterGenerateEnterpriseUpgradeUrlRequest < 3) {
    o.adminEmail = 'foo';
    o.allowedDomains = buildUnnamed46();
  }
  buildCounterGenerateEnterpriseUpgradeUrlRequest--;
  return o;
}

void checkGenerateEnterpriseUpgradeUrlRequest(
  api.GenerateEnterpriseUpgradeUrlRequest o,
) {
  buildCounterGenerateEnterpriseUpgradeUrlRequest++;
  if (buildCounterGenerateEnterpriseUpgradeUrlRequest < 3) {
    unittest.expect(o.adminEmail!, unittest.equals('foo'));
    checkUnnamed46(o.allowedDomains!);
  }
  buildCounterGenerateEnterpriseUpgradeUrlRequest--;
}

core.int buildCounterGenerateEnterpriseUpgradeUrlResponse = 0;
api.GenerateEnterpriseUpgradeUrlResponse
buildGenerateEnterpriseUpgradeUrlResponse() {
  final o = api.GenerateEnterpriseUpgradeUrlResponse();
  buildCounterGenerateEnterpriseUpgradeUrlResponse++;
  if (buildCounterGenerateEnterpriseUpgradeUrlResponse < 3) {
    o.url = 'foo';
  }
  buildCounterGenerateEnterpriseUpgradeUrlResponse--;
  return o;
}

void checkGenerateEnterpriseUpgradeUrlResponse(
  api.GenerateEnterpriseUpgradeUrlResponse o,
) {
  buildCounterGenerateEnterpriseUpgradeUrlResponse++;
  if (buildCounterGenerateEnterpriseUpgradeUrlResponse < 3) {
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterGenerateEnterpriseUpgradeUrlResponse--;
}

core.int buildCounterGoogleAuthenticationSettings = 0;
api.GoogleAuthenticationSettings buildGoogleAuthenticationSettings() {
  final o = api.GoogleAuthenticationSettings();
  buildCounterGoogleAuthenticationSettings++;
  if (buildCounterGoogleAuthenticationSettings < 3) {
    o.googleAuthenticationRequired = 'foo';
  }
  buildCounterGoogleAuthenticationSettings--;
  return o;
}

void checkGoogleAuthenticationSettings(api.GoogleAuthenticationSettings o) {
  buildCounterGoogleAuthenticationSettings++;
  if (buildCounterGoogleAuthenticationSettings < 3) {
    unittest.expect(o.googleAuthenticationRequired!, unittest.equals('foo'));
  }
  buildCounterGoogleAuthenticationSettings--;
}

core.List<core.double> buildUnnamed47() => [42.0, 42.0];

void checkUnnamed47(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.List<core.double> buildUnnamed48() => [42.0, 42.0];

void checkUnnamed48(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.List<core.double> buildUnnamed49() => [42.0, 42.0];

void checkUnnamed49(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.List<core.double> buildUnnamed50() => [42.0, 42.0];

void checkUnnamed50(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.List<api.EuiccChipInfo> buildUnnamed51() => [
  buildEuiccChipInfo(),
  buildEuiccChipInfo(),
];

void checkUnnamed51(core.List<api.EuiccChipInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEuiccChipInfo(o[0]);
  checkEuiccChipInfo(o[1]);
}

core.List<core.double> buildUnnamed52() => [42.0, 42.0];

void checkUnnamed52(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.List<core.double> buildUnnamed53() => [42.0, 42.0];

void checkUnnamed53(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.List<core.double> buildUnnamed54() => [42.0, 42.0];

void checkUnnamed54(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.List<core.double> buildUnnamed55() => [42.0, 42.0];

void checkUnnamed55(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterHardwareInfo = 0;
api.HardwareInfo buildHardwareInfo() {
  final o = api.HardwareInfo();
  buildCounterHardwareInfo++;
  if (buildCounterHardwareInfo < 3) {
    o.batteryShutdownTemperatures = buildUnnamed47();
    o.batteryThrottlingTemperatures = buildUnnamed48();
    o.brand = 'foo';
    o.cpuShutdownTemperatures = buildUnnamed49();
    o.cpuThrottlingTemperatures = buildUnnamed50();
    o.deviceBasebandVersion = 'foo';
    o.enterpriseSpecificId = 'foo';
    o.euiccChipInfo = buildUnnamed51();
    o.gpuShutdownTemperatures = buildUnnamed52();
    o.gpuThrottlingTemperatures = buildUnnamed53();
    o.hardware = 'foo';
    o.manufacturer = 'foo';
    o.model = 'foo';
    o.serialNumber = 'foo';
    o.skinShutdownTemperatures = buildUnnamed54();
    o.skinThrottlingTemperatures = buildUnnamed55();
  }
  buildCounterHardwareInfo--;
  return o;
}

void checkHardwareInfo(api.HardwareInfo o) {
  buildCounterHardwareInfo++;
  if (buildCounterHardwareInfo < 3) {
    checkUnnamed47(o.batteryShutdownTemperatures!);
    checkUnnamed48(o.batteryThrottlingTemperatures!);
    unittest.expect(o.brand!, unittest.equals('foo'));
    checkUnnamed49(o.cpuShutdownTemperatures!);
    checkUnnamed50(o.cpuThrottlingTemperatures!);
    unittest.expect(o.deviceBasebandVersion!, unittest.equals('foo'));
    unittest.expect(o.enterpriseSpecificId!, unittest.equals('foo'));
    checkUnnamed51(o.euiccChipInfo!);
    checkUnnamed52(o.gpuShutdownTemperatures!);
    checkUnnamed53(o.gpuThrottlingTemperatures!);
    unittest.expect(o.hardware!, unittest.equals('foo'));
    unittest.expect(o.manufacturer!, unittest.equals('foo'));
    unittest.expect(o.model!, unittest.equals('foo'));
    unittest.expect(o.serialNumber!, unittest.equals('foo'));
    checkUnnamed54(o.skinShutdownTemperatures!);
    checkUnnamed55(o.skinThrottlingTemperatures!);
  }
  buildCounterHardwareInfo--;
}

core.List<core.double> buildUnnamed56() => [42.0, 42.0];

void checkUnnamed56(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.List<core.double> buildUnnamed57() => [42.0, 42.0];

void checkUnnamed57(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.List<core.double> buildUnnamed58() => [42.0, 42.0];

void checkUnnamed58(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.List<core.double> buildUnnamed59() => [42.0, 42.0];

void checkUnnamed59(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.List<core.double> buildUnnamed60() => [42.0, 42.0];

void checkUnnamed60(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.List<core.double> buildUnnamed61() => [42.0, 42.0];

void checkUnnamed61(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterHardwareStatus = 0;
api.HardwareStatus buildHardwareStatus() {
  final o = api.HardwareStatus();
  buildCounterHardwareStatus++;
  if (buildCounterHardwareStatus < 3) {
    o.batteryTemperatures = buildUnnamed56();
    o.cpuTemperatures = buildUnnamed57();
    o.cpuUsages = buildUnnamed58();
    o.createTime = 'foo';
    o.fanSpeeds = buildUnnamed59();
    o.gpuTemperatures = buildUnnamed60();
    o.skinTemperatures = buildUnnamed61();
  }
  buildCounterHardwareStatus--;
  return o;
}

void checkHardwareStatus(api.HardwareStatus o) {
  buildCounterHardwareStatus++;
  if (buildCounterHardwareStatus < 3) {
    checkUnnamed56(o.batteryTemperatures!);
    checkUnnamed57(o.cpuTemperatures!);
    checkUnnamed58(o.cpuUsages!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkUnnamed59(o.fanSpeeds!);
    checkUnnamed60(o.gpuTemperatures!);
    checkUnnamed61(o.skinTemperatures!);
  }
  buildCounterHardwareStatus--;
}

core.int buildCounterInstallConstraint = 0;
api.InstallConstraint buildInstallConstraint() {
  final o = api.InstallConstraint();
  buildCounterInstallConstraint++;
  if (buildCounterInstallConstraint < 3) {
    o.chargingConstraint = 'foo';
    o.deviceIdleConstraint = 'foo';
    o.networkTypeConstraint = 'foo';
  }
  buildCounterInstallConstraint--;
  return o;
}

void checkInstallConstraint(api.InstallConstraint o) {
  buildCounterInstallConstraint++;
  if (buildCounterInstallConstraint < 3) {
    unittest.expect(o.chargingConstraint!, unittest.equals('foo'));
    unittest.expect(o.deviceIdleConstraint!, unittest.equals('foo'));
    unittest.expect(o.networkTypeConstraint!, unittest.equals('foo'));
  }
  buildCounterInstallConstraint--;
}

core.int buildCounterInternalErrorDetails = 0;
api.InternalErrorDetails buildInternalErrorDetails() {
  final o = api.InternalErrorDetails();
  buildCounterInternalErrorDetails++;
  if (buildCounterInternalErrorDetails < 3) {
    o.errorCode = 'foo';
    o.errorCodeDetail = 'foo';
    o.operationCode = 'foo';
    o.operationCodeDetail = 'foo';
  }
  buildCounterInternalErrorDetails--;
  return o;
}

void checkInternalErrorDetails(api.InternalErrorDetails o) {
  buildCounterInternalErrorDetails++;
  if (buildCounterInternalErrorDetails < 3) {
    unittest.expect(o.errorCode!, unittest.equals('foo'));
    unittest.expect(o.errorCodeDetail!, unittest.equals('foo'));
    unittest.expect(o.operationCode!, unittest.equals('foo'));
    unittest.expect(o.operationCodeDetail!, unittest.equals('foo'));
  }
  buildCounterInternalErrorDetails--;
}

core.int buildCounterKeyedAppState = 0;
api.KeyedAppState buildKeyedAppState() {
  final o = api.KeyedAppState();
  buildCounterKeyedAppState++;
  if (buildCounterKeyedAppState < 3) {
    o.createTime = 'foo';
    o.data = 'foo';
    o.key = 'foo';
    o.lastUpdateTime = 'foo';
    o.message = 'foo';
    o.severity = 'foo';
  }
  buildCounterKeyedAppState--;
  return o;
}

void checkKeyedAppState(api.KeyedAppState o) {
  buildCounterKeyedAppState++;
  if (buildCounterKeyedAppState < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.data!, unittest.equals('foo'));
    unittest.expect(o.key!, unittest.equals('foo'));
    unittest.expect(o.lastUpdateTime!, unittest.equals('foo'));
    unittest.expect(o.message!, unittest.equals('foo'));
    unittest.expect(o.severity!, unittest.equals('foo'));
  }
  buildCounterKeyedAppState--;
}

core.int buildCounterKioskCustomization = 0;
api.KioskCustomization buildKioskCustomization() {
  final o = api.KioskCustomization();
  buildCounterKioskCustomization++;
  if (buildCounterKioskCustomization < 3) {
    o.deviceSettings = 'foo';
    o.powerButtonActions = 'foo';
    o.statusBar = 'foo';
    o.systemErrorWarnings = 'foo';
    o.systemNavigation = 'foo';
  }
  buildCounterKioskCustomization--;
  return o;
}

void checkKioskCustomization(api.KioskCustomization o) {
  buildCounterKioskCustomization++;
  if (buildCounterKioskCustomization < 3) {
    unittest.expect(o.deviceSettings!, unittest.equals('foo'));
    unittest.expect(o.powerButtonActions!, unittest.equals('foo'));
    unittest.expect(o.statusBar!, unittest.equals('foo'));
    unittest.expect(o.systemErrorWarnings!, unittest.equals('foo'));
    unittest.expect(o.systemNavigation!, unittest.equals('foo'));
  }
  buildCounterKioskCustomization--;
}

core.int buildCounterLaunchAppAction = 0;
api.LaunchAppAction buildLaunchAppAction() {
  final o = api.LaunchAppAction();
  buildCounterLaunchAppAction++;
  if (buildCounterLaunchAppAction < 3) {
    o.packageName = 'foo';
  }
  buildCounterLaunchAppAction--;
  return o;
}

void checkLaunchAppAction(api.LaunchAppAction o) {
  buildCounterLaunchAppAction++;
  if (buildCounterLaunchAppAction < 3) {
    unittest.expect(o.packageName!, unittest.equals('foo'));
  }
  buildCounterLaunchAppAction--;
}

core.List<api.Device> buildUnnamed62() => [buildDevice(), buildDevice()];

void checkUnnamed62(core.List<api.Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDevice(o[0]);
  checkDevice(o[1]);
}

core.int buildCounterListDevicesResponse = 0;
api.ListDevicesResponse buildListDevicesResponse() {
  final o = api.ListDevicesResponse();
  buildCounterListDevicesResponse++;
  if (buildCounterListDevicesResponse < 3) {
    o.devices = buildUnnamed62();
    o.nextPageToken = 'foo';
  }
  buildCounterListDevicesResponse--;
  return o;
}

void checkListDevicesResponse(api.ListDevicesResponse o) {
  buildCounterListDevicesResponse++;
  if (buildCounterListDevicesResponse < 3) {
    checkUnnamed62(o.devices!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListDevicesResponse--;
}

core.List<api.EnrollmentToken> buildUnnamed63() => [
  buildEnrollmentToken(),
  buildEnrollmentToken(),
];

void checkUnnamed63(core.List<api.EnrollmentToken> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnrollmentToken(o[0]);
  checkEnrollmentToken(o[1]);
}

core.int buildCounterListEnrollmentTokensResponse = 0;
api.ListEnrollmentTokensResponse buildListEnrollmentTokensResponse() {
  final o = api.ListEnrollmentTokensResponse();
  buildCounterListEnrollmentTokensResponse++;
  if (buildCounterListEnrollmentTokensResponse < 3) {
    o.enrollmentTokens = buildUnnamed63();
    o.nextPageToken = 'foo';
  }
  buildCounterListEnrollmentTokensResponse--;
  return o;
}

void checkListEnrollmentTokensResponse(api.ListEnrollmentTokensResponse o) {
  buildCounterListEnrollmentTokensResponse++;
  if (buildCounterListEnrollmentTokensResponse < 3) {
    checkUnnamed63(o.enrollmentTokens!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListEnrollmentTokensResponse--;
}

core.List<api.Enterprise> buildUnnamed64() => [
  buildEnterprise(),
  buildEnterprise(),
];

void checkUnnamed64(core.List<api.Enterprise> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterprise(o[0]);
  checkEnterprise(o[1]);
}

core.int buildCounterListEnterprisesResponse = 0;
api.ListEnterprisesResponse buildListEnterprisesResponse() {
  final o = api.ListEnterprisesResponse();
  buildCounterListEnterprisesResponse++;
  if (buildCounterListEnterprisesResponse < 3) {
    o.enterprises = buildUnnamed64();
    o.nextPageToken = 'foo';
  }
  buildCounterListEnterprisesResponse--;
  return o;
}

void checkListEnterprisesResponse(api.ListEnterprisesResponse o) {
  buildCounterListEnterprisesResponse++;
  if (buildCounterListEnterprisesResponse < 3) {
    checkUnnamed64(o.enterprises!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListEnterprisesResponse--;
}

core.List<api.MigrationToken> buildUnnamed65() => [
  buildMigrationToken(),
  buildMigrationToken(),
];

void checkUnnamed65(core.List<api.MigrationToken> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMigrationToken(o[0]);
  checkMigrationToken(o[1]);
}

core.int buildCounterListMigrationTokensResponse = 0;
api.ListMigrationTokensResponse buildListMigrationTokensResponse() {
  final o = api.ListMigrationTokensResponse();
  buildCounterListMigrationTokensResponse++;
  if (buildCounterListMigrationTokensResponse < 3) {
    o.migrationTokens = buildUnnamed65();
    o.nextPageToken = 'foo';
  }
  buildCounterListMigrationTokensResponse--;
  return o;
}

void checkListMigrationTokensResponse(api.ListMigrationTokensResponse o) {
  buildCounterListMigrationTokensResponse++;
  if (buildCounterListMigrationTokensResponse < 3) {
    checkUnnamed65(o.migrationTokens!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListMigrationTokensResponse--;
}

core.List<api.Operation> buildUnnamed66() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed66(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.List<core.String> buildUnnamed67() => ['foo', 'foo'];

void checkUnnamed67(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed66();
    o.unreachable = buildUnnamed67();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed66(o.operations!);
    checkUnnamed67(o.unreachable!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Policy> buildUnnamed68() => [buildPolicy(), buildPolicy()];

void checkUnnamed68(core.List<api.Policy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicy(o[0]);
  checkPolicy(o[1]);
}

core.int buildCounterListPoliciesResponse = 0;
api.ListPoliciesResponse buildListPoliciesResponse() {
  final o = api.ListPoliciesResponse();
  buildCounterListPoliciesResponse++;
  if (buildCounterListPoliciesResponse < 3) {
    o.nextPageToken = 'foo';
    o.policies = buildUnnamed68();
  }
  buildCounterListPoliciesResponse--;
  return o;
}

void checkListPoliciesResponse(api.ListPoliciesResponse o) {
  buildCounterListPoliciesResponse++;
  if (buildCounterListPoliciesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed68(o.policies!);
  }
  buildCounterListPoliciesResponse--;
}

core.List<api.WebApp> buildUnnamed69() => [buildWebApp(), buildWebApp()];

void checkUnnamed69(core.List<api.WebApp> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebApp(o[0]);
  checkWebApp(o[1]);
}

core.int buildCounterListWebAppsResponse = 0;
api.ListWebAppsResponse buildListWebAppsResponse() {
  final o = api.ListWebAppsResponse();
  buildCounterListWebAppsResponse++;
  if (buildCounterListWebAppsResponse < 3) {
    o.nextPageToken = 'foo';
    o.webApps = buildUnnamed69();
  }
  buildCounterListWebAppsResponse--;
  return o;
}

void checkListWebAppsResponse(api.ListWebAppsResponse o) {
  buildCounterListWebAppsResponse++;
  if (buildCounterListWebAppsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed69(o.webApps!);
  }
  buildCounterListWebAppsResponse--;
}

core.Map<core.String, core.String> buildUnnamed70() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed70(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterManagedConfigurationTemplate = 0;
api.ManagedConfigurationTemplate buildManagedConfigurationTemplate() {
  final o = api.ManagedConfigurationTemplate();
  buildCounterManagedConfigurationTemplate++;
  if (buildCounterManagedConfigurationTemplate < 3) {
    o.configurationVariables = buildUnnamed70();
    o.templateId = 'foo';
  }
  buildCounterManagedConfigurationTemplate--;
  return o;
}

void checkManagedConfigurationTemplate(api.ManagedConfigurationTemplate o) {
  buildCounterManagedConfigurationTemplate++;
  if (buildCounterManagedConfigurationTemplate < 3) {
    checkUnnamed70(o.configurationVariables!);
    unittest.expect(o.templateId!, unittest.equals('foo'));
  }
  buildCounterManagedConfigurationTemplate--;
}

core.List<api.ManagedPropertyEntry> buildUnnamed71() => [
  buildManagedPropertyEntry(),
  buildManagedPropertyEntry(),
];

void checkUnnamed71(core.List<api.ManagedPropertyEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedPropertyEntry(o[0]);
  checkManagedPropertyEntry(o[1]);
}

core.List<api.ManagedProperty> buildUnnamed72() => [
  buildManagedProperty(),
  buildManagedProperty(),
];

void checkUnnamed72(core.List<api.ManagedProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedProperty(o[0]);
  checkManagedProperty(o[1]);
}

core.int buildCounterManagedProperty = 0;
api.ManagedProperty buildManagedProperty() {
  final o = api.ManagedProperty();
  buildCounterManagedProperty++;
  if (buildCounterManagedProperty < 3) {
    o.defaultValue = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo',
    };
    o.description = 'foo';
    o.entries = buildUnnamed71();
    o.key = 'foo';
    o.nestedProperties = buildUnnamed72();
    o.title = 'foo';
    o.type = 'foo';
  }
  buildCounterManagedProperty--;
  return o;
}

void checkManagedProperty(api.ManagedProperty o) {
  buildCounterManagedProperty++;
  if (buildCounterManagedProperty < 3) {
    var casted3 = (o.defaultValue!) as core.Map;
    unittest.expect(casted3, unittest.hasLength(3));
    unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted3['bool'], unittest.equals(true));
    unittest.expect(casted3['string'], unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed71(o.entries!);
    unittest.expect(o.key!, unittest.equals('foo'));
    checkUnnamed72(o.nestedProperties!);
    unittest.expect(o.title!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterManagedProperty--;
}

core.int buildCounterManagedPropertyEntry = 0;
api.ManagedPropertyEntry buildManagedPropertyEntry() {
  final o = api.ManagedPropertyEntry();
  buildCounterManagedPropertyEntry++;
  if (buildCounterManagedPropertyEntry < 3) {
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterManagedPropertyEntry--;
  return o;
}

void checkManagedPropertyEntry(api.ManagedPropertyEntry o) {
  buildCounterManagedPropertyEntry++;
  if (buildCounterManagedPropertyEntry < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterManagedPropertyEntry--;
}

core.int buildCounterMemoryEvent = 0;
api.MemoryEvent buildMemoryEvent() {
  final o = api.MemoryEvent();
  buildCounterMemoryEvent++;
  if (buildCounterMemoryEvent < 3) {
    o.byteCount = 'foo';
    o.createTime = 'foo';
    o.eventType = 'foo';
  }
  buildCounterMemoryEvent--;
  return o;
}

void checkMemoryEvent(api.MemoryEvent o) {
  buildCounterMemoryEvent++;
  if (buildCounterMemoryEvent < 3) {
    unittest.expect(o.byteCount!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.eventType!, unittest.equals('foo'));
  }
  buildCounterMemoryEvent--;
}

core.int buildCounterMemoryInfo = 0;
api.MemoryInfo buildMemoryInfo() {
  final o = api.MemoryInfo();
  buildCounterMemoryInfo++;
  if (buildCounterMemoryInfo < 3) {
    o.totalInternalStorage = 'foo';
    o.totalRam = 'foo';
  }
  buildCounterMemoryInfo--;
  return o;
}

void checkMemoryInfo(api.MemoryInfo o) {
  buildCounterMemoryInfo++;
  if (buildCounterMemoryInfo < 3) {
    unittest.expect(o.totalInternalStorage!, unittest.equals('foo'));
    unittest.expect(o.totalRam!, unittest.equals('foo'));
  }
  buildCounterMemoryInfo--;
}

core.int buildCounterMigrationToken = 0;
api.MigrationToken buildMigrationToken() {
  final o = api.MigrationToken();
  buildCounterMigrationToken++;
  if (buildCounterMigrationToken < 3) {
    o.additionalData = 'foo';
    o.createTime = 'foo';
    o.device = 'foo';
    o.deviceId = 'foo';
    o.expireTime = 'foo';
    o.managementMode = 'foo';
    o.name = 'foo';
    o.policy = 'foo';
    o.ttl = 'foo';
    o.userId = 'foo';
    o.value = 'foo';
  }
  buildCounterMigrationToken--;
  return o;
}

void checkMigrationToken(api.MigrationToken o) {
  buildCounterMigrationToken++;
  if (buildCounterMigrationToken < 3) {
    unittest.expect(o.additionalData!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.device!, unittest.equals('foo'));
    unittest.expect(o.deviceId!, unittest.equals('foo'));
    unittest.expect(o.expireTime!, unittest.equals('foo'));
    unittest.expect(o.managementMode!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.policy!, unittest.equals('foo'));
    unittest.expect(o.ttl!, unittest.equals('foo'));
    unittest.expect(o.userId!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterMigrationToken--;
}

core.List<api.ApplicationPolicyChange> buildUnnamed73() => [
  buildApplicationPolicyChange(),
  buildApplicationPolicyChange(),
];

void checkUnnamed73(core.List<api.ApplicationPolicyChange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationPolicyChange(o[0]);
  checkApplicationPolicyChange(o[1]);
}

core.int buildCounterModifyPolicyApplicationsRequest = 0;
api.ModifyPolicyApplicationsRequest buildModifyPolicyApplicationsRequest() {
  final o = api.ModifyPolicyApplicationsRequest();
  buildCounterModifyPolicyApplicationsRequest++;
  if (buildCounterModifyPolicyApplicationsRequest < 3) {
    o.changes = buildUnnamed73();
  }
  buildCounterModifyPolicyApplicationsRequest--;
  return o;
}

void checkModifyPolicyApplicationsRequest(
  api.ModifyPolicyApplicationsRequest o,
) {
  buildCounterModifyPolicyApplicationsRequest++;
  if (buildCounterModifyPolicyApplicationsRequest < 3) {
    checkUnnamed73(o.changes!);
  }
  buildCounterModifyPolicyApplicationsRequest--;
}

core.int buildCounterModifyPolicyApplicationsResponse = 0;
api.ModifyPolicyApplicationsResponse buildModifyPolicyApplicationsResponse() {
  final o = api.ModifyPolicyApplicationsResponse();
  buildCounterModifyPolicyApplicationsResponse++;
  if (buildCounterModifyPolicyApplicationsResponse < 3) {
    o.policy = buildPolicy();
  }
  buildCounterModifyPolicyApplicationsResponse--;
  return o;
}

void checkModifyPolicyApplicationsResponse(
  api.ModifyPolicyApplicationsResponse o,
) {
  buildCounterModifyPolicyApplicationsResponse++;
  if (buildCounterModifyPolicyApplicationsResponse < 3) {
    checkPolicy(o.policy!);
  }
  buildCounterModifyPolicyApplicationsResponse--;
}

core.List<api.TelephonyInfo> buildUnnamed74() => [
  buildTelephonyInfo(),
  buildTelephonyInfo(),
];

void checkUnnamed74(core.List<api.TelephonyInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTelephonyInfo(o[0]);
  checkTelephonyInfo(o[1]);
}

core.int buildCounterNetworkInfo = 0;
api.NetworkInfo buildNetworkInfo() {
  final o = api.NetworkInfo();
  buildCounterNetworkInfo++;
  if (buildCounterNetworkInfo < 3) {
    o.imei = 'foo';
    o.meid = 'foo';
    o.networkOperatorName = 'foo';
    o.telephonyInfos = buildUnnamed74();
    o.wifiMacAddress = 'foo';
  }
  buildCounterNetworkInfo--;
  return o;
}

void checkNetworkInfo(api.NetworkInfo o) {
  buildCounterNetworkInfo++;
  if (buildCounterNetworkInfo < 3) {
    unittest.expect(o.imei!, unittest.equals('foo'));
    unittest.expect(o.meid!, unittest.equals('foo'));
    unittest.expect(o.networkOperatorName!, unittest.equals('foo'));
    checkUnnamed74(o.telephonyInfos!);
    unittest.expect(o.wifiMacAddress!, unittest.equals('foo'));
  }
  buildCounterNetworkInfo--;
}

core.int buildCounterNonComplianceDetail = 0;
api.NonComplianceDetail buildNonComplianceDetail() {
  final o = api.NonComplianceDetail();
  buildCounterNonComplianceDetail++;
  if (buildCounterNonComplianceDetail < 3) {
    o.currentValue = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo',
    };
    o.fieldPath = 'foo';
    o.installationFailureReason = 'foo';
    o.nonComplianceReason = 'foo';
    o.packageName = 'foo';
    o.settingName = 'foo';
    o.specificNonComplianceContext = buildSpecificNonComplianceContext();
    o.specificNonComplianceReason = 'foo';
  }
  buildCounterNonComplianceDetail--;
  return o;
}

void checkNonComplianceDetail(api.NonComplianceDetail o) {
  buildCounterNonComplianceDetail++;
  if (buildCounterNonComplianceDetail < 3) {
    var casted4 = (o.currentValue!) as core.Map;
    unittest.expect(casted4, unittest.hasLength(3));
    unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted4['bool'], unittest.equals(true));
    unittest.expect(casted4['string'], unittest.equals('foo'));
    unittest.expect(o.fieldPath!, unittest.equals('foo'));
    unittest.expect(o.installationFailureReason!, unittest.equals('foo'));
    unittest.expect(o.nonComplianceReason!, unittest.equals('foo'));
    unittest.expect(o.packageName!, unittest.equals('foo'));
    unittest.expect(o.settingName!, unittest.equals('foo'));
    checkSpecificNonComplianceContext(o.specificNonComplianceContext!);
    unittest.expect(o.specificNonComplianceReason!, unittest.equals('foo'));
  }
  buildCounterNonComplianceDetail--;
}

core.int buildCounterNonComplianceDetailCondition = 0;
api.NonComplianceDetailCondition buildNonComplianceDetailCondition() {
  final o = api.NonComplianceDetailCondition();
  buildCounterNonComplianceDetailCondition++;
  if (buildCounterNonComplianceDetailCondition < 3) {
    o.nonComplianceReason = 'foo';
    o.packageName = 'foo';
    o.settingName = 'foo';
  }
  buildCounterNonComplianceDetailCondition--;
  return o;
}

void checkNonComplianceDetailCondition(api.NonComplianceDetailCondition o) {
  buildCounterNonComplianceDetailCondition++;
  if (buildCounterNonComplianceDetailCondition < 3) {
    unittest.expect(o.nonComplianceReason!, unittest.equals('foo'));
    unittest.expect(o.packageName!, unittest.equals('foo'));
    unittest.expect(o.settingName!, unittest.equals('foo'));
  }
  buildCounterNonComplianceDetailCondition--;
}

core.List<core.String> buildUnnamed75() => ['foo', 'foo'];

void checkUnnamed75(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOncCertificateProvider = 0;
api.OncCertificateProvider buildOncCertificateProvider() {
  final o = api.OncCertificateProvider();
  buildCounterOncCertificateProvider++;
  if (buildCounterOncCertificateProvider < 3) {
    o.certificateReferences = buildUnnamed75();
    o.contentProviderEndpoint = buildContentProviderEndpoint();
  }
  buildCounterOncCertificateProvider--;
  return o;
}

void checkOncCertificateProvider(api.OncCertificateProvider o) {
  buildCounterOncCertificateProvider++;
  if (buildCounterOncCertificateProvider < 3) {
    checkUnnamed75(o.certificateReferences!);
    checkContentProviderEndpoint(o.contentProviderEndpoint!);
  }
  buildCounterOncCertificateProvider--;
}

core.int buildCounterOncWifiContext = 0;
api.OncWifiContext buildOncWifiContext() {
  final o = api.OncWifiContext();
  buildCounterOncWifiContext++;
  if (buildCounterOncWifiContext < 3) {
    o.wifiGuid = 'foo';
  }
  buildCounterOncWifiContext--;
  return o;
}

void checkOncWifiContext(api.OncWifiContext o) {
  buildCounterOncWifiContext++;
  if (buildCounterOncWifiContext < 3) {
    unittest.expect(o.wifiGuid!, unittest.equals('foo'));
  }
  buildCounterOncWifiContext--;
}

core.Map<core.String, core.Object?> buildUnnamed76() => {
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

void checkUnnamed76(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed77() => {
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

void checkUnnamed77(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed76();
    o.name = 'foo';
    o.response = buildUnnamed77();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed76(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed77(o.response!);
  }
  buildCounterOperation--;
}

core.List<core.String> buildUnnamed78() => ['foo', 'foo'];

void checkUnnamed78(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPackageNameList = 0;
api.PackageNameList buildPackageNameList() {
  final o = api.PackageNameList();
  buildCounterPackageNameList++;
  if (buildCounterPackageNameList < 3) {
    o.packageNames = buildUnnamed78();
  }
  buildCounterPackageNameList--;
  return o;
}

void checkPackageNameList(api.PackageNameList o) {
  buildCounterPackageNameList++;
  if (buildCounterPackageNameList < 3) {
    checkUnnamed78(o.packageNames!);
  }
  buildCounterPackageNameList--;
}

core.int buildCounterPasswordPoliciesContext = 0;
api.PasswordPoliciesContext buildPasswordPoliciesContext() {
  final o = api.PasswordPoliciesContext();
  buildCounterPasswordPoliciesContext++;
  if (buildCounterPasswordPoliciesContext < 3) {
    o.passwordPolicyScope = 'foo';
  }
  buildCounterPasswordPoliciesContext--;
  return o;
}

void checkPasswordPoliciesContext(api.PasswordPoliciesContext o) {
  buildCounterPasswordPoliciesContext++;
  if (buildCounterPasswordPoliciesContext < 3) {
    unittest.expect(o.passwordPolicyScope!, unittest.equals('foo'));
  }
  buildCounterPasswordPoliciesContext--;
}

core.int buildCounterPasswordRequirements = 0;
api.PasswordRequirements buildPasswordRequirements() {
  final o = api.PasswordRequirements();
  buildCounterPasswordRequirements++;
  if (buildCounterPasswordRequirements < 3) {
    o.maximumFailedPasswordsForWipe = 42;
    o.passwordExpirationTimeout = 'foo';
    o.passwordHistoryLength = 42;
    o.passwordMinimumLength = 42;
    o.passwordMinimumLetters = 42;
    o.passwordMinimumLowerCase = 42;
    o.passwordMinimumNonLetter = 42;
    o.passwordMinimumNumeric = 42;
    o.passwordMinimumSymbols = 42;
    o.passwordMinimumUpperCase = 42;
    o.passwordQuality = 'foo';
    o.passwordScope = 'foo';
    o.requirePasswordUnlock = 'foo';
    o.unifiedLockSettings = 'foo';
  }
  buildCounterPasswordRequirements--;
  return o;
}

void checkPasswordRequirements(api.PasswordRequirements o) {
  buildCounterPasswordRequirements++;
  if (buildCounterPasswordRequirements < 3) {
    unittest.expect(o.maximumFailedPasswordsForWipe!, unittest.equals(42));
    unittest.expect(o.passwordExpirationTimeout!, unittest.equals('foo'));
    unittest.expect(o.passwordHistoryLength!, unittest.equals(42));
    unittest.expect(o.passwordMinimumLength!, unittest.equals(42));
    unittest.expect(o.passwordMinimumLetters!, unittest.equals(42));
    unittest.expect(o.passwordMinimumLowerCase!, unittest.equals(42));
    unittest.expect(o.passwordMinimumNonLetter!, unittest.equals(42));
    unittest.expect(o.passwordMinimumNumeric!, unittest.equals(42));
    unittest.expect(o.passwordMinimumSymbols!, unittest.equals(42));
    unittest.expect(o.passwordMinimumUpperCase!, unittest.equals(42));
    unittest.expect(o.passwordQuality!, unittest.equals('foo'));
    unittest.expect(o.passwordScope!, unittest.equals('foo'));
    unittest.expect(o.requirePasswordUnlock!, unittest.equals('foo'));
    unittest.expect(o.unifiedLockSettings!, unittest.equals('foo'));
  }
  buildCounterPasswordRequirements--;
}

core.int buildCounterPerAppResult = 0;
api.PerAppResult buildPerAppResult() {
  final o = api.PerAppResult();
  buildCounterPerAppResult++;
  if (buildCounterPerAppResult < 3) {
    o.clearingResult = 'foo';
  }
  buildCounterPerAppResult--;
  return o;
}

void checkPerAppResult(api.PerAppResult o) {
  buildCounterPerAppResult++;
  if (buildCounterPerAppResult < 3) {
    unittest.expect(o.clearingResult!, unittest.equals('foo'));
  }
  buildCounterPerAppResult--;
}

core.int buildCounterPermissionGrant = 0;
api.PermissionGrant buildPermissionGrant() {
  final o = api.PermissionGrant();
  buildCounterPermissionGrant++;
  if (buildCounterPermissionGrant < 3) {
    o.permission = 'foo';
    o.policy = 'foo';
  }
  buildCounterPermissionGrant--;
  return o;
}

void checkPermissionGrant(api.PermissionGrant o) {
  buildCounterPermissionGrant++;
  if (buildCounterPermissionGrant < 3) {
    unittest.expect(o.permission!, unittest.equals('foo'));
    unittest.expect(o.policy!, unittest.equals('foo'));
  }
  buildCounterPermissionGrant--;
}

core.List<core.String> buildUnnamed79() => ['foo', 'foo'];

void checkUnnamed79(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed80() => ['foo', 'foo'];

void checkUnnamed80(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPersistentPreferredActivity = 0;
api.PersistentPreferredActivity buildPersistentPreferredActivity() {
  final o = api.PersistentPreferredActivity();
  buildCounterPersistentPreferredActivity++;
  if (buildCounterPersistentPreferredActivity < 3) {
    o.actions = buildUnnamed79();
    o.categories = buildUnnamed80();
    o.receiverActivity = 'foo';
  }
  buildCounterPersistentPreferredActivity--;
  return o;
}

void checkPersistentPreferredActivity(api.PersistentPreferredActivity o) {
  buildCounterPersistentPreferredActivity++;
  if (buildCounterPersistentPreferredActivity < 3) {
    checkUnnamed79(o.actions!);
    checkUnnamed80(o.categories!);
    unittest.expect(o.receiverActivity!, unittest.equals('foo'));
  }
  buildCounterPersistentPreferredActivity--;
}

core.int buildCounterPersonalApplicationPolicy = 0;
api.PersonalApplicationPolicy buildPersonalApplicationPolicy() {
  final o = api.PersonalApplicationPolicy();
  buildCounterPersonalApplicationPolicy++;
  if (buildCounterPersonalApplicationPolicy < 3) {
    o.installType = 'foo';
    o.packageName = 'foo';
  }
  buildCounterPersonalApplicationPolicy--;
  return o;
}

void checkPersonalApplicationPolicy(api.PersonalApplicationPolicy o) {
  buildCounterPersonalApplicationPolicy++;
  if (buildCounterPersonalApplicationPolicy < 3) {
    unittest.expect(o.installType!, unittest.equals('foo'));
    unittest.expect(o.packageName!, unittest.equals('foo'));
  }
  buildCounterPersonalApplicationPolicy--;
}

core.List<core.String> buildUnnamed81() => ['foo', 'foo'];

void checkUnnamed81(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.PersonalApplicationPolicy> buildUnnamed82() => [
  buildPersonalApplicationPolicy(),
  buildPersonalApplicationPolicy(),
];

void checkUnnamed82(core.List<api.PersonalApplicationPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPersonalApplicationPolicy(o[0]);
  checkPersonalApplicationPolicy(o[1]);
}

core.int buildCounterPersonalUsagePolicies = 0;
api.PersonalUsagePolicies buildPersonalUsagePolicies() {
  final o = api.PersonalUsagePolicies();
  buildCounterPersonalUsagePolicies++;
  if (buildCounterPersonalUsagePolicies < 3) {
    o.accountTypesWithManagementDisabled = buildUnnamed81();
    o.bluetoothSharing = 'foo';
    o.cameraDisabled = true;
    o.maxDaysWithWorkOff = 42;
    o.personalApplications = buildUnnamed82();
    o.personalPlayStoreMode = 'foo';
    o.privateSpacePolicy = 'foo';
    o.screenCaptureDisabled = true;
  }
  buildCounterPersonalUsagePolicies--;
  return o;
}

void checkPersonalUsagePolicies(api.PersonalUsagePolicies o) {
  buildCounterPersonalUsagePolicies++;
  if (buildCounterPersonalUsagePolicies < 3) {
    checkUnnamed81(o.accountTypesWithManagementDisabled!);
    unittest.expect(o.bluetoothSharing!, unittest.equals('foo'));
    unittest.expect(o.cameraDisabled!, unittest.isTrue);
    unittest.expect(o.maxDaysWithWorkOff!, unittest.equals(42));
    checkUnnamed82(o.personalApplications!);
    unittest.expect(o.personalPlayStoreMode!, unittest.equals('foo'));
    unittest.expect(o.privateSpacePolicy!, unittest.equals('foo'));
    unittest.expect(o.screenCaptureDisabled!, unittest.isTrue);
  }
  buildCounterPersonalUsagePolicies--;
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

core.List<api.ApplicationPolicy> buildUnnamed85() => [
  buildApplicationPolicy(),
  buildApplicationPolicy(),
];

void checkUnnamed85(core.List<api.ApplicationPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationPolicy(o[0]);
  checkApplicationPolicy(o[1]);
}

core.List<api.ChoosePrivateKeyRule> buildUnnamed86() => [
  buildChoosePrivateKeyRule(),
  buildChoosePrivateKeyRule(),
];

void checkUnnamed86(core.List<api.ChoosePrivateKeyRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChoosePrivateKeyRule(o[0]);
  checkChoosePrivateKeyRule(o[1]);
}

core.List<api.ComplianceRule> buildUnnamed87() => [
  buildComplianceRule(),
  buildComplianceRule(),
];

void checkUnnamed87(core.List<api.ComplianceRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComplianceRule(o[0]);
  checkComplianceRule(o[1]);
}

core.List<api.DefaultApplicationSetting> buildUnnamed88() => [
  buildDefaultApplicationSetting(),
  buildDefaultApplicationSetting(),
];

void checkUnnamed88(core.List<api.DefaultApplicationSetting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDefaultApplicationSetting(o[0]);
  checkDefaultApplicationSetting(o[1]);
}

core.List<core.String> buildUnnamed89() => ['foo', 'foo'];

void checkUnnamed89(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed90() => ['foo', 'foo'];

void checkUnnamed90(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.OncCertificateProvider> buildUnnamed91() => [
  buildOncCertificateProvider(),
  buildOncCertificateProvider(),
];

void checkUnnamed91(core.List<api.OncCertificateProvider> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOncCertificateProvider(o[0]);
  checkOncCertificateProvider(o[1]);
}

core.Map<core.String, core.Object?> buildUnnamed92() => {
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

void checkUnnamed92(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']!) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted9['bool'], unittest.equals(true));
  unittest.expect(casted9['string'], unittest.equals('foo'));
  var casted10 = (o['y']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted10['bool'], unittest.equals(true));
  unittest.expect(casted10['string'], unittest.equals('foo'));
}

core.List<api.PasswordRequirements> buildUnnamed93() => [
  buildPasswordRequirements(),
  buildPasswordRequirements(),
];

void checkUnnamed93(core.List<api.PasswordRequirements> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPasswordRequirements(o[0]);
  checkPasswordRequirements(o[1]);
}

core.List<api.PermissionGrant> buildUnnamed94() => [
  buildPermissionGrant(),
  buildPermissionGrant(),
];

void checkUnnamed94(core.List<api.PermissionGrant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermissionGrant(o[0]);
  checkPermissionGrant(o[1]);
}

core.List<api.PersistentPreferredActivity> buildUnnamed95() => [
  buildPersistentPreferredActivity(),
  buildPersistentPreferredActivity(),
];

void checkUnnamed95(core.List<api.PersistentPreferredActivity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPersistentPreferredActivity(o[0]);
  checkPersistentPreferredActivity(o[1]);
}

core.List<api.PolicyEnforcementRule> buildUnnamed96() => [
  buildPolicyEnforcementRule(),
  buildPolicyEnforcementRule(),
];

void checkUnnamed96(core.List<api.PolicyEnforcementRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyEnforcementRule(o[0]);
  checkPolicyEnforcementRule(o[1]);
}

core.List<api.SetupAction> buildUnnamed97() => [
  buildSetupAction(),
  buildSetupAction(),
];

void checkUnnamed97(core.List<api.SetupAction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSetupAction(o[0]);
  checkSetupAction(o[1]);
}

core.List<core.String> buildUnnamed98() => ['foo', 'foo'];

void checkUnnamed98(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed99() => ['foo', 'foo'];

void checkUnnamed99(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.accountTypesWithManagementDisabled = buildUnnamed83();
    o.addUserDisabled = true;
    o.adjustVolumeDisabled = true;
    o.advancedSecurityOverrides = buildAdvancedSecurityOverrides();
    o.alwaysOnVpnPackage = buildAlwaysOnVpnPackage();
    o.androidDevicePolicyTracks = buildUnnamed84();
    o.appAutoUpdatePolicy = 'foo';
    o.appFunctions = 'foo';
    o.applications = buildUnnamed85();
    o.assistContentPolicy = 'foo';
    o.autoDateAndTimeZone = 'foo';
    o.autoTimeRequired = true;
    o.blockApplicationsEnabled = true;
    o.bluetoothConfigDisabled = true;
    o.bluetoothContactSharingDisabled = true;
    o.bluetoothDisabled = true;
    o.cameraAccess = 'foo';
    o.cameraDisabled = true;
    o.cellBroadcastsConfigDisabled = true;
    o.choosePrivateKeyRules = buildUnnamed86();
    o.complianceRules = buildUnnamed87();
    o.createWindowsDisabled = true;
    o.credentialProviderPolicyDefault = 'foo';
    o.credentialsConfigDisabled = true;
    o.crossProfilePolicies = buildCrossProfilePolicies();
    o.dataRoamingDisabled = true;
    o.debuggingFeaturesAllowed = true;
    o.defaultApplicationSettings = buildUnnamed88();
    o.defaultPermissionPolicy = 'foo';
    o.deviceConnectivityManagement = buildDeviceConnectivityManagement();
    o.deviceOwnerLockScreenInfo = buildUserFacingMessage();
    o.deviceRadioState = buildDeviceRadioState();
    o.displaySettings = buildDisplaySettings();
    o.encryptionPolicy = 'foo';
    o.ensureVerifyAppsEnabled = true;
    o.enterpriseDisplayNameVisibility = 'foo';
    o.factoryResetDisabled = true;
    o.frpAdminEmails = buildUnnamed89();
    o.funDisabled = true;
    o.installAppsDisabled = true;
    o.installUnknownSourcesAllowed = true;
    o.keyguardDisabled = true;
    o.keyguardDisabledFeatures = buildUnnamed90();
    o.kioskCustomLauncherEnabled = true;
    o.kioskCustomization = buildKioskCustomization();
    o.locationMode = 'foo';
    o.longSupportMessage = buildUserFacingMessage();
    o.maximumTimeToLock = 'foo';
    o.microphoneAccess = 'foo';
    o.minimumApiLevel = 42;
    o.mobileNetworksConfigDisabled = true;
    o.modifyAccountsDisabled = true;
    o.mountPhysicalMediaDisabled = true;
    o.name = 'foo';
    o.networkEscapeHatchEnabled = true;
    o.networkResetDisabled = true;
    o.oncCertificateProviders = buildUnnamed91();
    o.openNetworkConfiguration = buildUnnamed92();
    o.outgoingBeamDisabled = true;
    o.outgoingCallsDisabled = true;
    o.passwordPolicies = buildUnnamed93();
    o.passwordRequirements = buildPasswordRequirements();
    o.permissionGrants = buildUnnamed94();
    o.permittedAccessibilityServices = buildPackageNameList();
    o.permittedInputMethods = buildPackageNameList();
    o.persistentPreferredActivities = buildUnnamed95();
    o.personalUsagePolicies = buildPersonalUsagePolicies();
    o.playStoreMode = 'foo';
    o.policyEnforcementRules = buildUnnamed96();
    o.preferentialNetworkService = 'foo';
    o.printingPolicy = 'foo';
    o.privateKeySelectionEnabled = true;
    o.recommendedGlobalProxy = buildProxyInfo();
    o.removeUserDisabled = true;
    o.safeBootDisabled = true;
    o.screenCaptureDisabled = true;
    o.setUserIconDisabled = true;
    o.setWallpaperDisabled = true;
    o.setupActions = buildUnnamed97();
    o.shareLocationDisabled = true;
    o.shortSupportMessage = buildUserFacingMessage();
    o.skipFirstUseHintsEnabled = true;
    o.smsDisabled = true;
    o.statusBarDisabled = true;
    o.statusReportingSettings = buildStatusReportingSettings();
    o.stayOnPluggedModes = buildUnnamed98();
    o.systemUpdate = buildSystemUpdate();
    o.tetheringConfigDisabled = true;
    o.uninstallAppsDisabled = true;
    o.unmuteMicrophoneDisabled = true;
    o.usageLog = buildUsageLog();
    o.usbFileTransferDisabled = true;
    o.usbMassStorageEnabled = true;
    o.version = 'foo';
    o.vpnConfigDisabled = true;
    o.wifiConfigDisabled = true;
    o.wifiConfigsLockdownEnabled = true;
    o.wipeDataFlags = buildUnnamed99();
    o.workAccountSetupConfig = buildWorkAccountSetupConfig();
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed83(o.accountTypesWithManagementDisabled!);
    unittest.expect(o.addUserDisabled!, unittest.isTrue);
    unittest.expect(o.adjustVolumeDisabled!, unittest.isTrue);
    checkAdvancedSecurityOverrides(o.advancedSecurityOverrides!);
    checkAlwaysOnVpnPackage(o.alwaysOnVpnPackage!);
    checkUnnamed84(o.androidDevicePolicyTracks!);
    unittest.expect(o.appAutoUpdatePolicy!, unittest.equals('foo'));
    unittest.expect(o.appFunctions!, unittest.equals('foo'));
    checkUnnamed85(o.applications!);
    unittest.expect(o.assistContentPolicy!, unittest.equals('foo'));
    unittest.expect(o.autoDateAndTimeZone!, unittest.equals('foo'));
    unittest.expect(o.autoTimeRequired!, unittest.isTrue);
    unittest.expect(o.blockApplicationsEnabled!, unittest.isTrue);
    unittest.expect(o.bluetoothConfigDisabled!, unittest.isTrue);
    unittest.expect(o.bluetoothContactSharingDisabled!, unittest.isTrue);
    unittest.expect(o.bluetoothDisabled!, unittest.isTrue);
    unittest.expect(o.cameraAccess!, unittest.equals('foo'));
    unittest.expect(o.cameraDisabled!, unittest.isTrue);
    unittest.expect(o.cellBroadcastsConfigDisabled!, unittest.isTrue);
    checkUnnamed86(o.choosePrivateKeyRules!);
    checkUnnamed87(o.complianceRules!);
    unittest.expect(o.createWindowsDisabled!, unittest.isTrue);
    unittest.expect(o.credentialProviderPolicyDefault!, unittest.equals('foo'));
    unittest.expect(o.credentialsConfigDisabled!, unittest.isTrue);
    checkCrossProfilePolicies(o.crossProfilePolicies!);
    unittest.expect(o.dataRoamingDisabled!, unittest.isTrue);
    unittest.expect(o.debuggingFeaturesAllowed!, unittest.isTrue);
    checkUnnamed88(o.defaultApplicationSettings!);
    unittest.expect(o.defaultPermissionPolicy!, unittest.equals('foo'));
    checkDeviceConnectivityManagement(o.deviceConnectivityManagement!);
    checkUserFacingMessage(o.deviceOwnerLockScreenInfo!);
    checkDeviceRadioState(o.deviceRadioState!);
    checkDisplaySettings(o.displaySettings!);
    unittest.expect(o.encryptionPolicy!, unittest.equals('foo'));
    unittest.expect(o.ensureVerifyAppsEnabled!, unittest.isTrue);
    unittest.expect(o.enterpriseDisplayNameVisibility!, unittest.equals('foo'));
    unittest.expect(o.factoryResetDisabled!, unittest.isTrue);
    checkUnnamed89(o.frpAdminEmails!);
    unittest.expect(o.funDisabled!, unittest.isTrue);
    unittest.expect(o.installAppsDisabled!, unittest.isTrue);
    unittest.expect(o.installUnknownSourcesAllowed!, unittest.isTrue);
    unittest.expect(o.keyguardDisabled!, unittest.isTrue);
    checkUnnamed90(o.keyguardDisabledFeatures!);
    unittest.expect(o.kioskCustomLauncherEnabled!, unittest.isTrue);
    checkKioskCustomization(o.kioskCustomization!);
    unittest.expect(o.locationMode!, unittest.equals('foo'));
    checkUserFacingMessage(o.longSupportMessage!);
    unittest.expect(o.maximumTimeToLock!, unittest.equals('foo'));
    unittest.expect(o.microphoneAccess!, unittest.equals('foo'));
    unittest.expect(o.minimumApiLevel!, unittest.equals(42));
    unittest.expect(o.mobileNetworksConfigDisabled!, unittest.isTrue);
    unittest.expect(o.modifyAccountsDisabled!, unittest.isTrue);
    unittest.expect(o.mountPhysicalMediaDisabled!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.networkEscapeHatchEnabled!, unittest.isTrue);
    unittest.expect(o.networkResetDisabled!, unittest.isTrue);
    checkUnnamed91(o.oncCertificateProviders!);
    checkUnnamed92(o.openNetworkConfiguration!);
    unittest.expect(o.outgoingBeamDisabled!, unittest.isTrue);
    unittest.expect(o.outgoingCallsDisabled!, unittest.isTrue);
    checkUnnamed93(o.passwordPolicies!);
    checkPasswordRequirements(o.passwordRequirements!);
    checkUnnamed94(o.permissionGrants!);
    checkPackageNameList(o.permittedAccessibilityServices!);
    checkPackageNameList(o.permittedInputMethods!);
    checkUnnamed95(o.persistentPreferredActivities!);
    checkPersonalUsagePolicies(o.personalUsagePolicies!);
    unittest.expect(o.playStoreMode!, unittest.equals('foo'));
    checkUnnamed96(o.policyEnforcementRules!);
    unittest.expect(o.preferentialNetworkService!, unittest.equals('foo'));
    unittest.expect(o.printingPolicy!, unittest.equals('foo'));
    unittest.expect(o.privateKeySelectionEnabled!, unittest.isTrue);
    checkProxyInfo(o.recommendedGlobalProxy!);
    unittest.expect(o.removeUserDisabled!, unittest.isTrue);
    unittest.expect(o.safeBootDisabled!, unittest.isTrue);
    unittest.expect(o.screenCaptureDisabled!, unittest.isTrue);
    unittest.expect(o.setUserIconDisabled!, unittest.isTrue);
    unittest.expect(o.setWallpaperDisabled!, unittest.isTrue);
    checkUnnamed97(o.setupActions!);
    unittest.expect(o.shareLocationDisabled!, unittest.isTrue);
    checkUserFacingMessage(o.shortSupportMessage!);
    unittest.expect(o.skipFirstUseHintsEnabled!, unittest.isTrue);
    unittest.expect(o.smsDisabled!, unittest.isTrue);
    unittest.expect(o.statusBarDisabled!, unittest.isTrue);
    checkStatusReportingSettings(o.statusReportingSettings!);
    checkUnnamed98(o.stayOnPluggedModes!);
    checkSystemUpdate(o.systemUpdate!);
    unittest.expect(o.tetheringConfigDisabled!, unittest.isTrue);
    unittest.expect(o.uninstallAppsDisabled!, unittest.isTrue);
    unittest.expect(o.unmuteMicrophoneDisabled!, unittest.isTrue);
    checkUsageLog(o.usageLog!);
    unittest.expect(o.usbFileTransferDisabled!, unittest.isTrue);
    unittest.expect(o.usbMassStorageEnabled!, unittest.isTrue);
    unittest.expect(o.version!, unittest.equals('foo'));
    unittest.expect(o.vpnConfigDisabled!, unittest.isTrue);
    unittest.expect(o.wifiConfigDisabled!, unittest.isTrue);
    unittest.expect(o.wifiConfigsLockdownEnabled!, unittest.isTrue);
    checkUnnamed99(o.wipeDataFlags!);
    checkWorkAccountSetupConfig(o.workAccountSetupConfig!);
  }
  buildCounterPolicy--;
}

core.int buildCounterPolicyEnforcementRule = 0;
api.PolicyEnforcementRule buildPolicyEnforcementRule() {
  final o = api.PolicyEnforcementRule();
  buildCounterPolicyEnforcementRule++;
  if (buildCounterPolicyEnforcementRule < 3) {
    o.blockAction = buildBlockAction();
    o.settingName = 'foo';
    o.wipeAction = buildWipeAction();
  }
  buildCounterPolicyEnforcementRule--;
  return o;
}

void checkPolicyEnforcementRule(api.PolicyEnforcementRule o) {
  buildCounterPolicyEnforcementRule++;
  if (buildCounterPolicyEnforcementRule < 3) {
    checkBlockAction(o.blockAction!);
    unittest.expect(o.settingName!, unittest.equals('foo'));
    checkWipeAction(o.wipeAction!);
  }
  buildCounterPolicyEnforcementRule--;
}

core.List<api.UserFacingMessage> buildUnnamed100() => [
  buildUserFacingMessage(),
  buildUserFacingMessage(),
];

void checkUnnamed100(core.List<api.UserFacingMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserFacingMessage(o[0]);
  checkUserFacingMessage(o[1]);
}

core.int buildCounterPostureDetail = 0;
api.PostureDetail buildPostureDetail() {
  final o = api.PostureDetail();
  buildCounterPostureDetail++;
  if (buildCounterPostureDetail < 3) {
    o.advice = buildUnnamed100();
    o.securityRisk = 'foo';
  }
  buildCounterPostureDetail--;
  return o;
}

void checkPostureDetail(api.PostureDetail o) {
  buildCounterPostureDetail++;
  if (buildCounterPostureDetail < 3) {
    checkUnnamed100(o.advice!);
    unittest.expect(o.securityRisk!, unittest.equals('foo'));
  }
  buildCounterPostureDetail--;
}

core.int buildCounterPowerManagementEvent = 0;
api.PowerManagementEvent buildPowerManagementEvent() {
  final o = api.PowerManagementEvent();
  buildCounterPowerManagementEvent++;
  if (buildCounterPowerManagementEvent < 3) {
    o.batteryLevel = 42.0;
    o.createTime = 'foo';
    o.eventType = 'foo';
  }
  buildCounterPowerManagementEvent--;
  return o;
}

void checkPowerManagementEvent(api.PowerManagementEvent o) {
  buildCounterPowerManagementEvent++;
  if (buildCounterPowerManagementEvent < 3) {
    unittest.expect(o.batteryLevel!, unittest.equals(42.0));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.eventType!, unittest.equals('foo'));
  }
  buildCounterPowerManagementEvent--;
}

core.int buildCounterPreferentialNetworkServiceConfig = 0;
api.PreferentialNetworkServiceConfig buildPreferentialNetworkServiceConfig() {
  final o = api.PreferentialNetworkServiceConfig();
  buildCounterPreferentialNetworkServiceConfig++;
  if (buildCounterPreferentialNetworkServiceConfig < 3) {
    o.fallbackToDefaultConnection = 'foo';
    o.nonMatchingNetworks = 'foo';
    o.preferentialNetworkId = 'foo';
  }
  buildCounterPreferentialNetworkServiceConfig--;
  return o;
}

void checkPreferentialNetworkServiceConfig(
  api.PreferentialNetworkServiceConfig o,
) {
  buildCounterPreferentialNetworkServiceConfig++;
  if (buildCounterPreferentialNetworkServiceConfig < 3) {
    unittest.expect(o.fallbackToDefaultConnection!, unittest.equals('foo'));
    unittest.expect(o.nonMatchingNetworks!, unittest.equals('foo'));
    unittest.expect(o.preferentialNetworkId!, unittest.equals('foo'));
  }
  buildCounterPreferentialNetworkServiceConfig--;
}

core.List<api.PreferentialNetworkServiceConfig> buildUnnamed101() => [
  buildPreferentialNetworkServiceConfig(),
  buildPreferentialNetworkServiceConfig(),
];

void checkUnnamed101(core.List<api.PreferentialNetworkServiceConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPreferentialNetworkServiceConfig(o[0]);
  checkPreferentialNetworkServiceConfig(o[1]);
}

core.int buildCounterPreferentialNetworkServiceSettings = 0;
api.PreferentialNetworkServiceSettings
buildPreferentialNetworkServiceSettings() {
  final o = api.PreferentialNetworkServiceSettings();
  buildCounterPreferentialNetworkServiceSettings++;
  if (buildCounterPreferentialNetworkServiceSettings < 3) {
    o.defaultPreferentialNetworkId = 'foo';
    o.preferentialNetworkServiceConfigs = buildUnnamed101();
  }
  buildCounterPreferentialNetworkServiceSettings--;
  return o;
}

void checkPreferentialNetworkServiceSettings(
  api.PreferentialNetworkServiceSettings o,
) {
  buildCounterPreferentialNetworkServiceSettings++;
  if (buildCounterPreferentialNetworkServiceSettings < 3) {
    unittest.expect(o.defaultPreferentialNetworkId!, unittest.equals('foo'));
    checkUnnamed101(o.preferentialNetworkServiceConfigs!);
  }
  buildCounterPreferentialNetworkServiceSettings--;
}

core.int buildCounterProvisioningInfo = 0;
api.ProvisioningInfo buildProvisioningInfo() {
  final o = api.ProvisioningInfo();
  buildCounterProvisioningInfo++;
  if (buildCounterProvisioningInfo < 3) {
    o.apiLevel = 42;
    o.authenticatedUserEmail = 'foo';
    o.brand = 'foo';
    o.enterprise = 'foo';
    o.imei = 'foo';
    o.managementMode = 'foo';
    o.meid = 'foo';
    o.model = 'foo';
    o.name = 'foo';
    o.ownership = 'foo';
    o.serialNumber = 'foo';
  }
  buildCounterProvisioningInfo--;
  return o;
}

void checkProvisioningInfo(api.ProvisioningInfo o) {
  buildCounterProvisioningInfo++;
  if (buildCounterProvisioningInfo < 3) {
    unittest.expect(o.apiLevel!, unittest.equals(42));
    unittest.expect(o.authenticatedUserEmail!, unittest.equals('foo'));
    unittest.expect(o.brand!, unittest.equals('foo'));
    unittest.expect(o.enterprise!, unittest.equals('foo'));
    unittest.expect(o.imei!, unittest.equals('foo'));
    unittest.expect(o.managementMode!, unittest.equals('foo'));
    unittest.expect(o.meid!, unittest.equals('foo'));
    unittest.expect(o.model!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.ownership!, unittest.equals('foo'));
    unittest.expect(o.serialNumber!, unittest.equals('foo'));
  }
  buildCounterProvisioningInfo--;
}

core.List<core.String> buildUnnamed102() => ['foo', 'foo'];

void checkUnnamed102(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterProxyInfo = 0;
api.ProxyInfo buildProxyInfo() {
  final o = api.ProxyInfo();
  buildCounterProxyInfo++;
  if (buildCounterProxyInfo < 3) {
    o.excludedHosts = buildUnnamed102();
    o.host = 'foo';
    o.pacUri = 'foo';
    o.port = 42;
  }
  buildCounterProxyInfo--;
  return o;
}

void checkProxyInfo(api.ProxyInfo o) {
  buildCounterProxyInfo++;
  if (buildCounterProxyInfo < 3) {
    checkUnnamed102(o.excludedHosts!);
    unittest.expect(o.host!, unittest.equals('foo'));
    unittest.expect(o.pacUri!, unittest.equals('foo'));
    unittest.expect(o.port!, unittest.equals(42));
  }
  buildCounterProxyInfo--;
}

core.int buildCounterRemoveEsimParams = 0;
api.RemoveEsimParams buildRemoveEsimParams() {
  final o = api.RemoveEsimParams();
  buildCounterRemoveEsimParams++;
  if (buildCounterRemoveEsimParams < 3) {
    o.iccId = 'foo';
  }
  buildCounterRemoveEsimParams--;
  return o;
}

void checkRemoveEsimParams(api.RemoveEsimParams o) {
  buildCounterRemoveEsimParams++;
  if (buildCounterRemoveEsimParams < 3) {
    unittest.expect(o.iccId!, unittest.equals('foo'));
  }
  buildCounterRemoveEsimParams--;
}

core.List<core.String> buildUnnamed103() => ['foo', 'foo'];

void checkUnnamed103(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRemovePolicyApplicationsRequest = 0;
api.RemovePolicyApplicationsRequest buildRemovePolicyApplicationsRequest() {
  final o = api.RemovePolicyApplicationsRequest();
  buildCounterRemovePolicyApplicationsRequest++;
  if (buildCounterRemovePolicyApplicationsRequest < 3) {
    o.packageNames = buildUnnamed103();
  }
  buildCounterRemovePolicyApplicationsRequest--;
  return o;
}

void checkRemovePolicyApplicationsRequest(
  api.RemovePolicyApplicationsRequest o,
) {
  buildCounterRemovePolicyApplicationsRequest++;
  if (buildCounterRemovePolicyApplicationsRequest < 3) {
    checkUnnamed103(o.packageNames!);
  }
  buildCounterRemovePolicyApplicationsRequest--;
}

core.int buildCounterRemovePolicyApplicationsResponse = 0;
api.RemovePolicyApplicationsResponse buildRemovePolicyApplicationsResponse() {
  final o = api.RemovePolicyApplicationsResponse();
  buildCounterRemovePolicyApplicationsResponse++;
  if (buildCounterRemovePolicyApplicationsResponse < 3) {
    o.policy = buildPolicy();
  }
  buildCounterRemovePolicyApplicationsResponse--;
  return o;
}

void checkRemovePolicyApplicationsResponse(
  api.RemovePolicyApplicationsResponse o,
) {
  buildCounterRemovePolicyApplicationsResponse++;
  if (buildCounterRemovePolicyApplicationsResponse < 3) {
    checkPolicy(o.policy!);
  }
  buildCounterRemovePolicyApplicationsResponse--;
}

core.int buildCounterRequestDeviceInfoParams = 0;
api.RequestDeviceInfoParams buildRequestDeviceInfoParams() {
  final o = api.RequestDeviceInfoParams();
  buildCounterRequestDeviceInfoParams++;
  if (buildCounterRequestDeviceInfoParams < 3) {
    o.deviceInfo = 'foo';
  }
  buildCounterRequestDeviceInfoParams--;
  return o;
}

void checkRequestDeviceInfoParams(api.RequestDeviceInfoParams o) {
  buildCounterRequestDeviceInfoParams++;
  if (buildCounterRequestDeviceInfoParams < 3) {
    unittest.expect(o.deviceInfo!, unittest.equals('foo'));
  }
  buildCounterRequestDeviceInfoParams--;
}

core.int buildCounterRequestDeviceInfoStatus = 0;
api.RequestDeviceInfoStatus buildRequestDeviceInfoStatus() {
  final o = api.RequestDeviceInfoStatus();
  buildCounterRequestDeviceInfoStatus++;
  if (buildCounterRequestDeviceInfoStatus < 3) {
    o.eidInfo = buildEidInfo();
    o.status = 'foo';
  }
  buildCounterRequestDeviceInfoStatus--;
  return o;
}

void checkRequestDeviceInfoStatus(api.RequestDeviceInfoStatus o) {
  buildCounterRequestDeviceInfoStatus++;
  if (buildCounterRequestDeviceInfoStatus < 3) {
    checkEidInfo(o.eidInfo!);
    unittest.expect(o.status!, unittest.equals('foo'));
  }
  buildCounterRequestDeviceInfoStatus--;
}

core.int buildCounterRole = 0;
api.Role buildRole() {
  final o = api.Role();
  buildCounterRole++;
  if (buildCounterRole < 3) {
    o.roleType = 'foo';
  }
  buildCounterRole--;
  return o;
}

void checkRole(api.Role o) {
  buildCounterRole++;
  if (buildCounterRole < 3) {
    unittest.expect(o.roleType!, unittest.equals('foo'));
  }
  buildCounterRole--;
}

core.int buildCounterScreenBrightnessSettings = 0;
api.ScreenBrightnessSettings buildScreenBrightnessSettings() {
  final o = api.ScreenBrightnessSettings();
  buildCounterScreenBrightnessSettings++;
  if (buildCounterScreenBrightnessSettings < 3) {
    o.screenBrightness = 42;
    o.screenBrightnessMode = 'foo';
  }
  buildCounterScreenBrightnessSettings--;
  return o;
}

void checkScreenBrightnessSettings(api.ScreenBrightnessSettings o) {
  buildCounterScreenBrightnessSettings++;
  if (buildCounterScreenBrightnessSettings < 3) {
    unittest.expect(o.screenBrightness!, unittest.equals(42));
    unittest.expect(o.screenBrightnessMode!, unittest.equals('foo'));
  }
  buildCounterScreenBrightnessSettings--;
}

core.int buildCounterScreenTimeoutSettings = 0;
api.ScreenTimeoutSettings buildScreenTimeoutSettings() {
  final o = api.ScreenTimeoutSettings();
  buildCounterScreenTimeoutSettings++;
  if (buildCounterScreenTimeoutSettings < 3) {
    o.screenTimeout = 'foo';
    o.screenTimeoutMode = 'foo';
  }
  buildCounterScreenTimeoutSettings--;
  return o;
}

void checkScreenTimeoutSettings(api.ScreenTimeoutSettings o) {
  buildCounterScreenTimeoutSettings++;
  if (buildCounterScreenTimeoutSettings < 3) {
    unittest.expect(o.screenTimeout!, unittest.equals('foo'));
    unittest.expect(o.screenTimeoutMode!, unittest.equals('foo'));
  }
  buildCounterScreenTimeoutSettings--;
}

core.List<api.PostureDetail> buildUnnamed104() => [
  buildPostureDetail(),
  buildPostureDetail(),
];

void checkUnnamed104(core.List<api.PostureDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPostureDetail(o[0]);
  checkPostureDetail(o[1]);
}

core.int buildCounterSecurityPosture = 0;
api.SecurityPosture buildSecurityPosture() {
  final o = api.SecurityPosture();
  buildCounterSecurityPosture++;
  if (buildCounterSecurityPosture < 3) {
    o.devicePosture = 'foo';
    o.postureDetails = buildUnnamed104();
  }
  buildCounterSecurityPosture--;
  return o;
}

void checkSecurityPosture(api.SecurityPosture o) {
  buildCounterSecurityPosture++;
  if (buildCounterSecurityPosture < 3) {
    unittest.expect(o.devicePosture!, unittest.equals('foo'));
    checkUnnamed104(o.postureDetails!);
  }
  buildCounterSecurityPosture--;
}

core.int buildCounterSetupAction = 0;
api.SetupAction buildSetupAction() {
  final o = api.SetupAction();
  buildCounterSetupAction++;
  if (buildCounterSetupAction < 3) {
    o.description = buildUserFacingMessage();
    o.launchApp = buildLaunchAppAction();
    o.title = buildUserFacingMessage();
  }
  buildCounterSetupAction--;
  return o;
}

void checkSetupAction(api.SetupAction o) {
  buildCounterSetupAction++;
  if (buildCounterSetupAction < 3) {
    checkUserFacingMessage(o.description!);
    checkLaunchAppAction(o.launchApp!);
    checkUserFacingMessage(o.title!);
  }
  buildCounterSetupAction--;
}

core.int buildCounterSigninDetail = 0;
api.SigninDetail buildSigninDetail() {
  final o = api.SigninDetail();
  buildCounterSigninDetail++;
  if (buildCounterSigninDetail < 3) {
    o.allowPersonalUsage = 'foo';
    o.defaultStatus = 'foo';
    o.qrCode = 'foo';
    o.signinEnrollmentToken = 'foo';
    o.signinUrl = 'foo';
    o.tokenTag = 'foo';
  }
  buildCounterSigninDetail--;
  return o;
}

void checkSigninDetail(api.SigninDetail o) {
  buildCounterSigninDetail++;
  if (buildCounterSigninDetail < 3) {
    unittest.expect(o.allowPersonalUsage!, unittest.equals('foo'));
    unittest.expect(o.defaultStatus!, unittest.equals('foo'));
    unittest.expect(o.qrCode!, unittest.equals('foo'));
    unittest.expect(o.signinEnrollmentToken!, unittest.equals('foo'));
    unittest.expect(o.signinUrl!, unittest.equals('foo'));
    unittest.expect(o.tokenTag!, unittest.equals('foo'));
  }
  buildCounterSigninDetail--;
}

core.int buildCounterSignupUrl = 0;
api.SignupUrl buildSignupUrl() {
  final o = api.SignupUrl();
  buildCounterSignupUrl++;
  if (buildCounterSignupUrl < 3) {
    o.name = 'foo';
    o.url = 'foo';
  }
  buildCounterSignupUrl--;
  return o;
}

void checkSignupUrl(api.SignupUrl o) {
  buildCounterSignupUrl++;
  if (buildCounterSignupUrl < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterSignupUrl--;
}

core.int buildCounterSoftwareInfo = 0;
api.SoftwareInfo buildSoftwareInfo() {
  final o = api.SoftwareInfo();
  buildCounterSoftwareInfo++;
  if (buildCounterSoftwareInfo < 3) {
    o.androidBuildNumber = 'foo';
    o.androidBuildTime = 'foo';
    o.androidDevicePolicyVersionCode = 42;
    o.androidDevicePolicyVersionName = 'foo';
    o.androidVersion = 'foo';
    o.bootloaderVersion = 'foo';
    o.deviceBuildSignature = 'foo';
    o.deviceKernelVersion = 'foo';
    o.primaryLanguageCode = 'foo';
    o.securityPatchLevel = 'foo';
    o.systemUpdateInfo = buildSystemUpdateInfo();
  }
  buildCounterSoftwareInfo--;
  return o;
}

void checkSoftwareInfo(api.SoftwareInfo o) {
  buildCounterSoftwareInfo++;
  if (buildCounterSoftwareInfo < 3) {
    unittest.expect(o.androidBuildNumber!, unittest.equals('foo'));
    unittest.expect(o.androidBuildTime!, unittest.equals('foo'));
    unittest.expect(o.androidDevicePolicyVersionCode!, unittest.equals(42));
    unittest.expect(o.androidDevicePolicyVersionName!, unittest.equals('foo'));
    unittest.expect(o.androidVersion!, unittest.equals('foo'));
    unittest.expect(o.bootloaderVersion!, unittest.equals('foo'));
    unittest.expect(o.deviceBuildSignature!, unittest.equals('foo'));
    unittest.expect(o.deviceKernelVersion!, unittest.equals('foo'));
    unittest.expect(o.primaryLanguageCode!, unittest.equals('foo'));
    unittest.expect(o.securityPatchLevel!, unittest.equals('foo'));
    checkSystemUpdateInfo(o.systemUpdateInfo!);
  }
  buildCounterSoftwareInfo--;
}

core.int buildCounterSpecificNonComplianceContext = 0;
api.SpecificNonComplianceContext buildSpecificNonComplianceContext() {
  final o = api.SpecificNonComplianceContext();
  buildCounterSpecificNonComplianceContext++;
  if (buildCounterSpecificNonComplianceContext < 3) {
    o.defaultApplicationContext = buildDefaultApplicationContext();
    o.oncWifiContext = buildOncWifiContext();
    o.passwordPoliciesContext = buildPasswordPoliciesContext();
  }
  buildCounterSpecificNonComplianceContext--;
  return o;
}

void checkSpecificNonComplianceContext(api.SpecificNonComplianceContext o) {
  buildCounterSpecificNonComplianceContext++;
  if (buildCounterSpecificNonComplianceContext < 3) {
    checkDefaultApplicationContext(o.defaultApplicationContext!);
    checkOncWifiContext(o.oncWifiContext!);
    checkPasswordPoliciesContext(o.passwordPoliciesContext!);
  }
  buildCounterSpecificNonComplianceContext--;
}

core.int buildCounterStartLostModeParams = 0;
api.StartLostModeParams buildStartLostModeParams() {
  final o = api.StartLostModeParams();
  buildCounterStartLostModeParams++;
  if (buildCounterStartLostModeParams < 3) {
    o.lostEmailAddress = 'foo';
    o.lostMessage = buildUserFacingMessage();
    o.lostOrganization = buildUserFacingMessage();
    o.lostPhoneNumber = buildUserFacingMessage();
    o.lostStreetAddress = buildUserFacingMessage();
  }
  buildCounterStartLostModeParams--;
  return o;
}

void checkStartLostModeParams(api.StartLostModeParams o) {
  buildCounterStartLostModeParams++;
  if (buildCounterStartLostModeParams < 3) {
    unittest.expect(o.lostEmailAddress!, unittest.equals('foo'));
    checkUserFacingMessage(o.lostMessage!);
    checkUserFacingMessage(o.lostOrganization!);
    checkUserFacingMessage(o.lostPhoneNumber!);
    checkUserFacingMessage(o.lostStreetAddress!);
  }
  buildCounterStartLostModeParams--;
}

core.int buildCounterStartLostModeStatus = 0;
api.StartLostModeStatus buildStartLostModeStatus() {
  final o = api.StartLostModeStatus();
  buildCounterStartLostModeStatus++;
  if (buildCounterStartLostModeStatus < 3) {
    o.status = 'foo';
  }
  buildCounterStartLostModeStatus--;
  return o;
}

void checkStartLostModeStatus(api.StartLostModeStatus o) {
  buildCounterStartLostModeStatus++;
  if (buildCounterStartLostModeStatus < 3) {
    unittest.expect(o.status!, unittest.equals('foo'));
  }
  buildCounterStartLostModeStatus--;
}

core.Map<core.String, core.Object?> buildUnnamed105() => {
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

void checkUnnamed105(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o['x']!) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(casted11['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted11['bool'], unittest.equals(true));
  unittest.expect(casted11['string'], unittest.equals('foo'));
  var casted12 = (o['y']!) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(casted12['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted12['bool'], unittest.equals(true));
  unittest.expect(casted12['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed106() => [
  buildUnnamed105(),
  buildUnnamed105(),
];

void checkUnnamed106(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed105(o[0]);
  checkUnnamed105(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed106();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed106(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterStatusReportingSettings = 0;
api.StatusReportingSettings buildStatusReportingSettings() {
  final o = api.StatusReportingSettings();
  buildCounterStatusReportingSettings++;
  if (buildCounterStatusReportingSettings < 3) {
    o.applicationReportingSettings = buildApplicationReportingSettings();
    o.applicationReportsEnabled = true;
    o.commonCriteriaModeEnabled = true;
    o.defaultApplicationInfoReportingEnabled = true;
    o.deviceSettingsEnabled = true;
    o.displayInfoEnabled = true;
    o.hardwareStatusEnabled = true;
    o.memoryInfoEnabled = true;
    o.networkInfoEnabled = true;
    o.powerManagementEventsEnabled = true;
    o.softwareInfoEnabled = true;
    o.systemPropertiesEnabled = true;
  }
  buildCounterStatusReportingSettings--;
  return o;
}

void checkStatusReportingSettings(api.StatusReportingSettings o) {
  buildCounterStatusReportingSettings++;
  if (buildCounterStatusReportingSettings < 3) {
    checkApplicationReportingSettings(o.applicationReportingSettings!);
    unittest.expect(o.applicationReportsEnabled!, unittest.isTrue);
    unittest.expect(o.commonCriteriaModeEnabled!, unittest.isTrue);
    unittest.expect(o.defaultApplicationInfoReportingEnabled!, unittest.isTrue);
    unittest.expect(o.deviceSettingsEnabled!, unittest.isTrue);
    unittest.expect(o.displayInfoEnabled!, unittest.isTrue);
    unittest.expect(o.hardwareStatusEnabled!, unittest.isTrue);
    unittest.expect(o.memoryInfoEnabled!, unittest.isTrue);
    unittest.expect(o.networkInfoEnabled!, unittest.isTrue);
    unittest.expect(o.powerManagementEventsEnabled!, unittest.isTrue);
    unittest.expect(o.softwareInfoEnabled!, unittest.isTrue);
    unittest.expect(o.systemPropertiesEnabled!, unittest.isTrue);
  }
  buildCounterStatusReportingSettings--;
}

core.int buildCounterStopLostModeParams = 0;
api.StopLostModeParams buildStopLostModeParams() {
  final o = api.StopLostModeParams();
  buildCounterStopLostModeParams++;
  if (buildCounterStopLostModeParams < 3) {}
  buildCounterStopLostModeParams--;
  return o;
}

void checkStopLostModeParams(api.StopLostModeParams o) {
  buildCounterStopLostModeParams++;
  if (buildCounterStopLostModeParams < 3) {}
  buildCounterStopLostModeParams--;
}

core.int buildCounterStopLostModeStatus = 0;
api.StopLostModeStatus buildStopLostModeStatus() {
  final o = api.StopLostModeStatus();
  buildCounterStopLostModeStatus++;
  if (buildCounterStopLostModeStatus < 3) {
    o.status = 'foo';
  }
  buildCounterStopLostModeStatus--;
  return o;
}

void checkStopLostModeStatus(api.StopLostModeStatus o) {
  buildCounterStopLostModeStatus++;
  if (buildCounterStopLostModeStatus < 3) {
    unittest.expect(o.status!, unittest.equals('foo'));
  }
  buildCounterStopLostModeStatus--;
}

core.List<api.FreezePeriod> buildUnnamed107() => [
  buildFreezePeriod(),
  buildFreezePeriod(),
];

void checkUnnamed107(core.List<api.FreezePeriod> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFreezePeriod(o[0]);
  checkFreezePeriod(o[1]);
}

core.int buildCounterSystemUpdate = 0;
api.SystemUpdate buildSystemUpdate() {
  final o = api.SystemUpdate();
  buildCounterSystemUpdate++;
  if (buildCounterSystemUpdate < 3) {
    o.allowedDaysWithoutUpdate = 42;
    o.endMinutes = 42;
    o.freezePeriods = buildUnnamed107();
    o.startMinutes = 42;
    o.type = 'foo';
  }
  buildCounterSystemUpdate--;
  return o;
}

void checkSystemUpdate(api.SystemUpdate o) {
  buildCounterSystemUpdate++;
  if (buildCounterSystemUpdate < 3) {
    unittest.expect(o.allowedDaysWithoutUpdate!, unittest.equals(42));
    unittest.expect(o.endMinutes!, unittest.equals(42));
    checkUnnamed107(o.freezePeriods!);
    unittest.expect(o.startMinutes!, unittest.equals(42));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterSystemUpdate--;
}

core.int buildCounterSystemUpdateInfo = 0;
api.SystemUpdateInfo buildSystemUpdateInfo() {
  final o = api.SystemUpdateInfo();
  buildCounterSystemUpdateInfo++;
  if (buildCounterSystemUpdateInfo < 3) {
    o.updateReceivedTime = 'foo';
    o.updateStatus = 'foo';
  }
  buildCounterSystemUpdateInfo--;
  return o;
}

void checkSystemUpdateInfo(api.SystemUpdateInfo o) {
  buildCounterSystemUpdateInfo++;
  if (buildCounterSystemUpdateInfo < 3) {
    unittest.expect(o.updateReceivedTime!, unittest.equals('foo'));
    unittest.expect(o.updateStatus!, unittest.equals('foo'));
  }
  buildCounterSystemUpdateInfo--;
}

core.int buildCounterTelephonyInfo = 0;
api.TelephonyInfo buildTelephonyInfo() {
  final o = api.TelephonyInfo();
  buildCounterTelephonyInfo++;
  if (buildCounterTelephonyInfo < 3) {
    o.activationState = 'foo';
    o.carrierName = 'foo';
    o.configMode = 'foo';
    o.iccId = 'foo';
    o.phoneNumber = 'foo';
  }
  buildCounterTelephonyInfo--;
  return o;
}

void checkTelephonyInfo(api.TelephonyInfo o) {
  buildCounterTelephonyInfo++;
  if (buildCounterTelephonyInfo < 3) {
    unittest.expect(o.activationState!, unittest.equals('foo'));
    unittest.expect(o.carrierName!, unittest.equals('foo'));
    unittest.expect(o.configMode!, unittest.equals('foo'));
    unittest.expect(o.iccId!, unittest.equals('foo'));
    unittest.expect(o.phoneNumber!, unittest.equals('foo'));
  }
  buildCounterTelephonyInfo--;
}

core.int buildCounterTermsAndConditions = 0;
api.TermsAndConditions buildTermsAndConditions() {
  final o = api.TermsAndConditions();
  buildCounterTermsAndConditions++;
  if (buildCounterTermsAndConditions < 3) {
    o.content = buildUserFacingMessage();
    o.header = buildUserFacingMessage();
  }
  buildCounterTermsAndConditions--;
  return o;
}

void checkTermsAndConditions(api.TermsAndConditions o) {
  buildCounterTermsAndConditions++;
  if (buildCounterTermsAndConditions < 3) {
    checkUserFacingMessage(o.content!);
    checkUserFacingMessage(o.header!);
  }
  buildCounterTermsAndConditions--;
}

core.List<core.String> buildUnnamed108() => ['foo', 'foo'];

void checkUnnamed108(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed109() => ['foo', 'foo'];

void checkUnnamed109(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterUsageLog = 0;
api.UsageLog buildUsageLog() {
  final o = api.UsageLog();
  buildCounterUsageLog++;
  if (buildCounterUsageLog < 3) {
    o.enabledLogTypes = buildUnnamed108();
    o.uploadOnCellularAllowed = buildUnnamed109();
  }
  buildCounterUsageLog--;
  return o;
}

void checkUsageLog(api.UsageLog o) {
  buildCounterUsageLog++;
  if (buildCounterUsageLog < 3) {
    checkUnnamed108(o.enabledLogTypes!);
    checkUnnamed109(o.uploadOnCellularAllowed!);
  }
  buildCounterUsageLog--;
}

core.int buildCounterUser = 0;
api.User buildUser() {
  final o = api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.accountIdentifier = 'foo';
  }
  buildCounterUser--;
  return o;
}

void checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    unittest.expect(o.accountIdentifier!, unittest.equals('foo'));
  }
  buildCounterUser--;
}

core.Map<core.String, core.String> buildUnnamed110() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed110(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterUserFacingMessage = 0;
api.UserFacingMessage buildUserFacingMessage() {
  final o = api.UserFacingMessage();
  buildCounterUserFacingMessage++;
  if (buildCounterUserFacingMessage < 3) {
    o.defaultMessage = 'foo';
    o.localizedMessages = buildUnnamed110();
  }
  buildCounterUserFacingMessage--;
  return o;
}

void checkUserFacingMessage(api.UserFacingMessage o) {
  buildCounterUserFacingMessage++;
  if (buildCounterUserFacingMessage < 3) {
    unittest.expect(o.defaultMessage!, unittest.equals('foo'));
    checkUnnamed110(o.localizedMessages!);
  }
  buildCounterUserFacingMessage--;
}

core.List<api.WebAppIcon> buildUnnamed111() => [
  buildWebAppIcon(),
  buildWebAppIcon(),
];

void checkUnnamed111(core.List<api.WebAppIcon> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebAppIcon(o[0]);
  checkWebAppIcon(o[1]);
}

core.int buildCounterWebApp = 0;
api.WebApp buildWebApp() {
  final o = api.WebApp();
  buildCounterWebApp++;
  if (buildCounterWebApp < 3) {
    o.displayMode = 'foo';
    o.icons = buildUnnamed111();
    o.name = 'foo';
    o.startUrl = 'foo';
    o.title = 'foo';
    o.versionCode = 'foo';
  }
  buildCounterWebApp--;
  return o;
}

void checkWebApp(api.WebApp o) {
  buildCounterWebApp++;
  if (buildCounterWebApp < 3) {
    unittest.expect(o.displayMode!, unittest.equals('foo'));
    checkUnnamed111(o.icons!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.startUrl!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
    unittest.expect(o.versionCode!, unittest.equals('foo'));
  }
  buildCounterWebApp--;
}

core.int buildCounterWebAppIcon = 0;
api.WebAppIcon buildWebAppIcon() {
  final o = api.WebAppIcon();
  buildCounterWebAppIcon++;
  if (buildCounterWebAppIcon < 3) {
    o.imageData = 'foo';
  }
  buildCounterWebAppIcon--;
  return o;
}

void checkWebAppIcon(api.WebAppIcon o) {
  buildCounterWebAppIcon++;
  if (buildCounterWebAppIcon < 3) {
    unittest.expect(o.imageData!, unittest.equals('foo'));
  }
  buildCounterWebAppIcon--;
}

core.List<core.String> buildUnnamed112() => ['foo', 'foo'];

void checkUnnamed112(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed113() => ['foo', 'foo'];

void checkUnnamed113(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterWebToken = 0;
api.WebToken buildWebToken() {
  final o = api.WebToken();
  buildCounterWebToken++;
  if (buildCounterWebToken < 3) {
    o.enabledFeatures = buildUnnamed112();
    o.name = 'foo';
    o.parentFrameUrl = 'foo';
    o.permissions = buildUnnamed113();
    o.value = 'foo';
  }
  buildCounterWebToken--;
  return o;
}

void checkWebToken(api.WebToken o) {
  buildCounterWebToken++;
  if (buildCounterWebToken < 3) {
    checkUnnamed112(o.enabledFeatures!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.parentFrameUrl!, unittest.equals('foo'));
    checkUnnamed113(o.permissions!);
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterWebToken--;
}

core.List<api.WifiRoamingSetting> buildUnnamed114() => [
  buildWifiRoamingSetting(),
  buildWifiRoamingSetting(),
];

void checkUnnamed114(core.List<api.WifiRoamingSetting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWifiRoamingSetting(o[0]);
  checkWifiRoamingSetting(o[1]);
}

core.int buildCounterWifiRoamingPolicy = 0;
api.WifiRoamingPolicy buildWifiRoamingPolicy() {
  final o = api.WifiRoamingPolicy();
  buildCounterWifiRoamingPolicy++;
  if (buildCounterWifiRoamingPolicy < 3) {
    o.wifiRoamingSettings = buildUnnamed114();
  }
  buildCounterWifiRoamingPolicy--;
  return o;
}

void checkWifiRoamingPolicy(api.WifiRoamingPolicy o) {
  buildCounterWifiRoamingPolicy++;
  if (buildCounterWifiRoamingPolicy < 3) {
    checkUnnamed114(o.wifiRoamingSettings!);
  }
  buildCounterWifiRoamingPolicy--;
}

core.int buildCounterWifiRoamingSetting = 0;
api.WifiRoamingSetting buildWifiRoamingSetting() {
  final o = api.WifiRoamingSetting();
  buildCounterWifiRoamingSetting++;
  if (buildCounterWifiRoamingSetting < 3) {
    o.wifiRoamingMode = 'foo';
    o.wifiSsid = 'foo';
  }
  buildCounterWifiRoamingSetting--;
  return o;
}

void checkWifiRoamingSetting(api.WifiRoamingSetting o) {
  buildCounterWifiRoamingSetting++;
  if (buildCounterWifiRoamingSetting < 3) {
    unittest.expect(o.wifiRoamingMode!, unittest.equals('foo'));
    unittest.expect(o.wifiSsid!, unittest.equals('foo'));
  }
  buildCounterWifiRoamingSetting--;
}

core.int buildCounterWifiSsid = 0;
api.WifiSsid buildWifiSsid() {
  final o = api.WifiSsid();
  buildCounterWifiSsid++;
  if (buildCounterWifiSsid < 3) {
    o.wifiSsid = 'foo';
  }
  buildCounterWifiSsid--;
  return o;
}

void checkWifiSsid(api.WifiSsid o) {
  buildCounterWifiSsid++;
  if (buildCounterWifiSsid < 3) {
    unittest.expect(o.wifiSsid!, unittest.equals('foo'));
  }
  buildCounterWifiSsid--;
}

core.List<api.WifiSsid> buildUnnamed115() => [buildWifiSsid(), buildWifiSsid()];

void checkUnnamed115(core.List<api.WifiSsid> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWifiSsid(o[0]);
  checkWifiSsid(o[1]);
}

core.int buildCounterWifiSsidPolicy = 0;
api.WifiSsidPolicy buildWifiSsidPolicy() {
  final o = api.WifiSsidPolicy();
  buildCounterWifiSsidPolicy++;
  if (buildCounterWifiSsidPolicy < 3) {
    o.wifiSsidPolicyType = 'foo';
    o.wifiSsids = buildUnnamed115();
  }
  buildCounterWifiSsidPolicy--;
  return o;
}

void checkWifiSsidPolicy(api.WifiSsidPolicy o) {
  buildCounterWifiSsidPolicy++;
  if (buildCounterWifiSsidPolicy < 3) {
    unittest.expect(o.wifiSsidPolicyType!, unittest.equals('foo'));
    checkUnnamed115(o.wifiSsids!);
  }
  buildCounterWifiSsidPolicy--;
}

core.int buildCounterWipeAction = 0;
api.WipeAction buildWipeAction() {
  final o = api.WipeAction();
  buildCounterWipeAction++;
  if (buildCounterWipeAction < 3) {
    o.preserveFrp = true;
    o.wipeAfterDays = 42;
  }
  buildCounterWipeAction--;
  return o;
}

void checkWipeAction(api.WipeAction o) {
  buildCounterWipeAction++;
  if (buildCounterWipeAction < 3) {
    unittest.expect(o.preserveFrp!, unittest.isTrue);
    unittest.expect(o.wipeAfterDays!, unittest.equals(42));
  }
  buildCounterWipeAction--;
}

core.List<core.String> buildUnnamed116() => ['foo', 'foo'];

void checkUnnamed116(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterWipeParams = 0;
api.WipeParams buildWipeParams() {
  final o = api.WipeParams();
  buildCounterWipeParams++;
  if (buildCounterWipeParams < 3) {
    o.wipeDataFlags = buildUnnamed116();
    o.wipeReason = buildUserFacingMessage();
  }
  buildCounterWipeParams--;
  return o;
}

void checkWipeParams(api.WipeParams o) {
  buildCounterWipeParams++;
  if (buildCounterWipeParams < 3) {
    checkUnnamed116(o.wipeDataFlags!);
    checkUserFacingMessage(o.wipeReason!);
  }
  buildCounterWipeParams--;
}

core.int buildCounterWorkAccountSetupConfig = 0;
api.WorkAccountSetupConfig buildWorkAccountSetupConfig() {
  final o = api.WorkAccountSetupConfig();
  buildCounterWorkAccountSetupConfig++;
  if (buildCounterWorkAccountSetupConfig < 3) {
    o.authenticationType = 'foo';
    o.requiredAccountEmail = 'foo';
  }
  buildCounterWorkAccountSetupConfig--;
  return o;
}

void checkWorkAccountSetupConfig(api.WorkAccountSetupConfig o) {
  buildCounterWorkAccountSetupConfig++;
  if (buildCounterWorkAccountSetupConfig < 3) {
    unittest.expect(o.authenticationType!, unittest.equals('foo'));
    unittest.expect(o.requiredAccountEmail!, unittest.equals('foo'));
  }
  buildCounterWorkAccountSetupConfig--;
}

core.List<core.String> buildUnnamed117() => ['foo', 'foo'];

void checkUnnamed117(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed118() => ['foo', 'foo'];

void checkUnnamed118(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-AddEsimParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddEsimParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddEsimParams.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAddEsimParams(od);
    });
  });

  unittest.group('obj-schema-AdvancedSecurityOverrides', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdvancedSecurityOverrides();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdvancedSecurityOverrides.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAdvancedSecurityOverrides(od);
    });
  });

  unittest.group('obj-schema-AlwaysOnVpnPackage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAlwaysOnVpnPackage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AlwaysOnVpnPackage.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAlwaysOnVpnPackage(od);
    });
  });

  unittest.group('obj-schema-ApiLevelCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApiLevelCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApiLevelCondition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApiLevelCondition(od);
    });
  });

  unittest.group('obj-schema-ApnPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApnPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApnPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApnPolicy(od);
    });
  });

  unittest.group('obj-schema-ApnSetting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApnSetting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApnSetting.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApnSetting(od);
    });
  });

  unittest.group('obj-schema-AppTrackInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppTrackInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppTrackInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAppTrackInfo(od);
    });
  });

  unittest.group('obj-schema-AppVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppVersion.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAppVersion(od);
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

  unittest.group('obj-schema-ApplicationEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplicationEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplicationEvent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApplicationEvent(od);
    });
  });

  unittest.group('obj-schema-ApplicationPermission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplicationPermission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplicationPermission.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApplicationPermission(od);
    });
  });

  unittest.group('obj-schema-ApplicationPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplicationPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplicationPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApplicationPolicy(od);
    });
  });

  unittest.group('obj-schema-ApplicationPolicyChange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplicationPolicyChange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplicationPolicyChange.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApplicationPolicyChange(od);
    });
  });

  unittest.group('obj-schema-ApplicationReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplicationReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplicationReport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApplicationReport(od);
    });
  });

  unittest.group('obj-schema-ApplicationReportingSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplicationReportingSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplicationReportingSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApplicationReportingSettings(od);
    });
  });

  unittest.group('obj-schema-ApplicationSigningKeyCert', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplicationSigningKeyCert();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplicationSigningKeyCert.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApplicationSigningKeyCert(od);
    });
  });

  unittest.group('obj-schema-BlockAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBlockAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BlockAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBlockAction(od);
    });
  });

  unittest.group('obj-schema-ChoosePrivateKeyRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChoosePrivateKeyRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChoosePrivateKeyRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkChoosePrivateKeyRule(od);
    });
  });

  unittest.group('obj-schema-ClearAppsDataParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClearAppsDataParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClearAppsDataParams.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkClearAppsDataParams(od);
    });
  });

  unittest.group('obj-schema-ClearAppsDataStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClearAppsDataStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClearAppsDataStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkClearAppsDataStatus(od);
    });
  });

  unittest.group('obj-schema-Command', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommand();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Command.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCommand(od);
    });
  });

  unittest.group('obj-schema-CommonCriteriaModeInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommonCriteriaModeInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommonCriteriaModeInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCommonCriteriaModeInfo(od);
    });
  });

  unittest.group('obj-schema-ComplianceRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComplianceRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComplianceRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkComplianceRule(od);
    });
  });

  unittest.group('obj-schema-ContactInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContactInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContactInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkContactInfo(od);
    });
  });

  unittest.group('obj-schema-ContentProviderEndpoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContentProviderEndpoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContentProviderEndpoint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkContentProviderEndpoint(od);
    });
  });

  unittest.group('obj-schema-CrossProfilePolicies', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCrossProfilePolicies();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CrossProfilePolicies.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCrossProfilePolicies(od);
    });
  });

  unittest.group('obj-schema-CustomAppConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomAppConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomAppConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomAppConfig(od);
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

  unittest.group('obj-schema-DefaultApplication', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDefaultApplication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DefaultApplication.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDefaultApplication(od);
    });
  });

  unittest.group('obj-schema-DefaultApplicationContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDefaultApplicationContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DefaultApplicationContext.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDefaultApplicationContext(od);
    });
  });

  unittest.group('obj-schema-DefaultApplicationInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDefaultApplicationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DefaultApplicationInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDefaultApplicationInfo(od);
    });
  });

  unittest.group('obj-schema-DefaultApplicationSetting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDefaultApplicationSetting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DefaultApplicationSetting.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDefaultApplicationSetting(od);
    });
  });

  unittest.group('obj-schema-DefaultApplicationSettingAttempt', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDefaultApplicationSettingAttempt();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DefaultApplicationSettingAttempt.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDefaultApplicationSettingAttempt(od);
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

  unittest.group('obj-schema-DeviceConnectivityManagement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceConnectivityManagement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceConnectivityManagement.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeviceConnectivityManagement(od);
    });
  });

  unittest.group('obj-schema-DeviceRadioState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceRadioState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceRadioState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeviceRadioState(od);
    });
  });

  unittest.group('obj-schema-DeviceSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeviceSettings(od);
    });
  });

  unittest.group('obj-schema-Display', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisplay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Display.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDisplay(od);
    });
  });

  unittest.group('obj-schema-DisplaySettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisplaySettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DisplaySettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDisplaySettings(od);
    });
  });

  unittest.group('obj-schema-DpcMigrationInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDpcMigrationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DpcMigrationInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDpcMigrationInfo(od);
    });
  });

  unittest.group('obj-schema-Eid', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEid();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Eid.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEid(od);
    });
  });

  unittest.group('obj-schema-EidInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEidInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EidInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEidInfo(od);
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

  unittest.group('obj-schema-EnrollmentToken', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnrollmentToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnrollmentToken.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEnrollmentToken(od);
    });
  });

  unittest.group('obj-schema-Enterprise', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterprise();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Enterprise.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEnterprise(od);
    });
  });

  unittest.group('obj-schema-EsimCommandStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEsimCommandStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EsimCommandStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEsimCommandStatus(od);
    });
  });

  unittest.group('obj-schema-EsimInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEsimInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EsimInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEsimInfo(od);
    });
  });

  unittest.group('obj-schema-EuiccChipInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEuiccChipInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EuiccChipInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEuiccChipInfo(od);
    });
  });

  unittest.group('obj-schema-ExtensionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExtensionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExtensionConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExtensionConfig(od);
    });
  });

  unittest.group('obj-schema-ExternalData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExternalData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExternalData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExternalData(od);
    });
  });

  unittest.group('obj-schema-FreezePeriod', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFreezePeriod();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FreezePeriod.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFreezePeriod(od);
    });
  });

  unittest.group('obj-schema-GenerateEnterpriseUpgradeUrlRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateEnterpriseUpgradeUrlRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateEnterpriseUpgradeUrlRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenerateEnterpriseUpgradeUrlRequest(od);
    });
  });

  unittest.group('obj-schema-GenerateEnterpriseUpgradeUrlResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenerateEnterpriseUpgradeUrlResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenerateEnterpriseUpgradeUrlResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenerateEnterpriseUpgradeUrlResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleAuthenticationSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAuthenticationSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAuthenticationSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleAuthenticationSettings(od);
    });
  });

  unittest.group('obj-schema-HardwareInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHardwareInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HardwareInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHardwareInfo(od);
    });
  });

  unittest.group('obj-schema-HardwareStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHardwareStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HardwareStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHardwareStatus(od);
    });
  });

  unittest.group('obj-schema-InstallConstraint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstallConstraint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstallConstraint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInstallConstraint(od);
    });
  });

  unittest.group('obj-schema-InternalErrorDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInternalErrorDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InternalErrorDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInternalErrorDetails(od);
    });
  });

  unittest.group('obj-schema-KeyedAppState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKeyedAppState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KeyedAppState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkKeyedAppState(od);
    });
  });

  unittest.group('obj-schema-KioskCustomization', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKioskCustomization();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KioskCustomization.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkKioskCustomization(od);
    });
  });

  unittest.group('obj-schema-LaunchAppAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLaunchAppAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LaunchAppAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLaunchAppAction(od);
    });
  });

  unittest.group('obj-schema-ListDevicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDevicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDevicesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDevicesResponse(od);
    });
  });

  unittest.group('obj-schema-ListEnrollmentTokensResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListEnrollmentTokensResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListEnrollmentTokensResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListEnrollmentTokensResponse(od);
    });
  });

  unittest.group('obj-schema-ListEnterprisesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListEnterprisesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListEnterprisesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListEnterprisesResponse(od);
    });
  });

  unittest.group('obj-schema-ListMigrationTokensResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMigrationTokensResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMigrationTokensResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListMigrationTokensResponse(od);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPoliciesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-ListWebAppsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListWebAppsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListWebAppsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListWebAppsResponse(od);
    });
  });

  unittest.group('obj-schema-ManagedConfigurationTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedConfigurationTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedConfigurationTemplate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkManagedConfigurationTemplate(od);
    });
  });

  unittest.group('obj-schema-ManagedProperty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedProperty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedProperty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkManagedProperty(od);
    });
  });

  unittest.group('obj-schema-ManagedPropertyEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedPropertyEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedPropertyEntry.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkManagedPropertyEntry(od);
    });
  });

  unittest.group('obj-schema-MemoryEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMemoryEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MemoryEvent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMemoryEvent(od);
    });
  });

  unittest.group('obj-schema-MemoryInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMemoryInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MemoryInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMemoryInfo(od);
    });
  });

  unittest.group('obj-schema-MigrationToken', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMigrationToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MigrationToken.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMigrationToken(od);
    });
  });

  unittest.group('obj-schema-ModifyPolicyApplicationsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModifyPolicyApplicationsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModifyPolicyApplicationsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkModifyPolicyApplicationsRequest(od);
    });
  });

  unittest.group('obj-schema-ModifyPolicyApplicationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModifyPolicyApplicationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModifyPolicyApplicationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkModifyPolicyApplicationsResponse(od);
    });
  });

  unittest.group('obj-schema-NetworkInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNetworkInfo(od);
    });
  });

  unittest.group('obj-schema-NonComplianceDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNonComplianceDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NonComplianceDetail.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNonComplianceDetail(od);
    });
  });

  unittest.group('obj-schema-NonComplianceDetailCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNonComplianceDetailCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NonComplianceDetailCondition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNonComplianceDetailCondition(od);
    });
  });

  unittest.group('obj-schema-OncCertificateProvider', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOncCertificateProvider();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OncCertificateProvider.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOncCertificateProvider(od);
    });
  });

  unittest.group('obj-schema-OncWifiContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOncWifiContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OncWifiContext.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOncWifiContext(od);
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

  unittest.group('obj-schema-PackageNameList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPackageNameList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PackageNameList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPackageNameList(od);
    });
  });

  unittest.group('obj-schema-PasswordPoliciesContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPasswordPoliciesContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PasswordPoliciesContext.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPasswordPoliciesContext(od);
    });
  });

  unittest.group('obj-schema-PasswordRequirements', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPasswordRequirements();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PasswordRequirements.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPasswordRequirements(od);
    });
  });

  unittest.group('obj-schema-PerAppResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPerAppResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PerAppResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPerAppResult(od);
    });
  });

  unittest.group('obj-schema-PermissionGrant', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPermissionGrant();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PermissionGrant.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPermissionGrant(od);
    });
  });

  unittest.group('obj-schema-PersistentPreferredActivity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPersistentPreferredActivity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PersistentPreferredActivity.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPersistentPreferredActivity(od);
    });
  });

  unittest.group('obj-schema-PersonalApplicationPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPersonalApplicationPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PersonalApplicationPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPersonalApplicationPolicy(od);
    });
  });

  unittest.group('obj-schema-PersonalUsagePolicies', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPersonalUsagePolicies();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PersonalUsagePolicies.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPersonalUsagePolicies(od);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Policy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-PolicyEnforcementRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyEnforcementRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyEnforcementRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPolicyEnforcementRule(od);
    });
  });

  unittest.group('obj-schema-PostureDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostureDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostureDetail.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPostureDetail(od);
    });
  });

  unittest.group('obj-schema-PowerManagementEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPowerManagementEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PowerManagementEvent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPowerManagementEvent(od);
    });
  });

  unittest.group('obj-schema-PreferentialNetworkServiceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPreferentialNetworkServiceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PreferentialNetworkServiceConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPreferentialNetworkServiceConfig(od);
    });
  });

  unittest.group('obj-schema-PreferentialNetworkServiceSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPreferentialNetworkServiceSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PreferentialNetworkServiceSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPreferentialNetworkServiceSettings(od);
    });
  });

  unittest.group('obj-schema-ProvisioningInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProvisioningInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProvisioningInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProvisioningInfo(od);
    });
  });

  unittest.group('obj-schema-ProxyInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProxyInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProxyInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProxyInfo(od);
    });
  });

  unittest.group('obj-schema-RemoveEsimParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveEsimParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveEsimParams.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRemoveEsimParams(od);
    });
  });

  unittest.group('obj-schema-RemovePolicyApplicationsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemovePolicyApplicationsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemovePolicyApplicationsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRemovePolicyApplicationsRequest(od);
    });
  });

  unittest.group('obj-schema-RemovePolicyApplicationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemovePolicyApplicationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemovePolicyApplicationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRemovePolicyApplicationsResponse(od);
    });
  });

  unittest.group('obj-schema-RequestDeviceInfoParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRequestDeviceInfoParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RequestDeviceInfoParams.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRequestDeviceInfoParams(od);
    });
  });

  unittest.group('obj-schema-RequestDeviceInfoStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRequestDeviceInfoStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RequestDeviceInfoStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRequestDeviceInfoStatus(od);
    });
  });

  unittest.group('obj-schema-Role', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRole();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Role.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRole(od);
    });
  });

  unittest.group('obj-schema-ScreenBrightnessSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScreenBrightnessSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScreenBrightnessSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkScreenBrightnessSettings(od);
    });
  });

  unittest.group('obj-schema-ScreenTimeoutSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildScreenTimeoutSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ScreenTimeoutSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkScreenTimeoutSettings(od);
    });
  });

  unittest.group('obj-schema-SecurityPosture', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecurityPosture();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecurityPosture.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSecurityPosture(od);
    });
  });

  unittest.group('obj-schema-SetupAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetupAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetupAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSetupAction(od);
    });
  });

  unittest.group('obj-schema-SigninDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSigninDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SigninDetail.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSigninDetail(od);
    });
  });

  unittest.group('obj-schema-SignupUrl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSignupUrl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SignupUrl.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSignupUrl(od);
    });
  });

  unittest.group('obj-schema-SoftwareInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSoftwareInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SoftwareInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSoftwareInfo(od);
    });
  });

  unittest.group('obj-schema-SpecificNonComplianceContext', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSpecificNonComplianceContext();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SpecificNonComplianceContext.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSpecificNonComplianceContext(od);
    });
  });

  unittest.group('obj-schema-StartLostModeParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartLostModeParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartLostModeParams.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStartLostModeParams(od);
    });
  });

  unittest.group('obj-schema-StartLostModeStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartLostModeStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartLostModeStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStartLostModeStatus(od);
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

  unittest.group('obj-schema-StatusReportingSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatusReportingSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StatusReportingSettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStatusReportingSettings(od);
    });
  });

  unittest.group('obj-schema-StopLostModeParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStopLostModeParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StopLostModeParams.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStopLostModeParams(od);
    });
  });

  unittest.group('obj-schema-StopLostModeStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStopLostModeStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StopLostModeStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStopLostModeStatus(od);
    });
  });

  unittest.group('obj-schema-SystemUpdate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSystemUpdate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SystemUpdate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSystemUpdate(od);
    });
  });

  unittest.group('obj-schema-SystemUpdateInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSystemUpdateInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SystemUpdateInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSystemUpdateInfo(od);
    });
  });

  unittest.group('obj-schema-TelephonyInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTelephonyInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TelephonyInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTelephonyInfo(od);
    });
  });

  unittest.group('obj-schema-TermsAndConditions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTermsAndConditions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TermsAndConditions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTermsAndConditions(od);
    });
  });

  unittest.group('obj-schema-UsageLog', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsageLog();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsageLog.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUsageLog(od);
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

  unittest.group('obj-schema-UserFacingMessage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserFacingMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserFacingMessage.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUserFacingMessage(od);
    });
  });

  unittest.group('obj-schema-WebApp', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebApp();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WebApp.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWebApp(od);
    });
  });

  unittest.group('obj-schema-WebAppIcon', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebAppIcon();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WebAppIcon.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWebAppIcon(od);
    });
  });

  unittest.group('obj-schema-WebToken', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WebToken.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWebToken(od);
    });
  });

  unittest.group('obj-schema-WifiRoamingPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWifiRoamingPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WifiRoamingPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWifiRoamingPolicy(od);
    });
  });

  unittest.group('obj-schema-WifiRoamingSetting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWifiRoamingSetting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WifiRoamingSetting.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWifiRoamingSetting(od);
    });
  });

  unittest.group('obj-schema-WifiSsid', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWifiSsid();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WifiSsid.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWifiSsid(od);
    });
  });

  unittest.group('obj-schema-WifiSsidPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWifiSsidPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WifiSsidPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWifiSsidPolicy(od);
    });
  });

  unittest.group('obj-schema-WipeAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWipeAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WipeAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWipeAction(od);
    });
  });

  unittest.group('obj-schema-WipeParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWipeParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WipeParams.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWipeParams(od);
    });
  });

  unittest.group('obj-schema-WorkAccountSetupConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkAccountSetupConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkAccountSetupConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWorkAccountSetupConfig(od);
    });
  });

  unittest.group('resource-EnterprisesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises;
      final arg_request = buildEnterprise();
      final arg_agreementAccepted = true;
      final arg_enterpriseToken = 'foo';
      final arg_projectId = 'foo';
      final arg_signupUrlName = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Enterprise.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEnterprise(obj);

          final path = req.url.path;
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
            unittest.equals('v1/enterprises'),
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
            queryMap['agreementAccepted']!.first,
            unittest.equals('$arg_agreementAccepted'),
          );
          unittest.expect(
            queryMap['enterpriseToken']!.first,
            unittest.equals(arg_enterpriseToken),
          );
          unittest.expect(
            queryMap['projectId']!.first,
            unittest.equals(arg_projectId),
          );
          unittest.expect(
            queryMap['signupUrlName']!.first,
            unittest.equals(arg_signupUrlName),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEnterprise());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        agreementAccepted: arg_agreementAccepted,
        enterpriseToken: arg_enterpriseToken,
        projectId: arg_projectId,
        signupUrlName: arg_signupUrlName,
        $fields: arg_$fields,
      );
      checkEnterprise(response as api.Enterprise);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises;
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

    unittest.test('method--generateEnterpriseUpgradeUrl', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises;
      final arg_request = buildGenerateEnterpriseUpgradeUrlRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GenerateEnterpriseUpgradeUrlRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGenerateEnterpriseUpgradeUrlRequest(obj);

          final path = req.url.path;
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
          final resp = convert.json.encode(
            buildGenerateEnterpriseUpgradeUrlResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.generateEnterpriseUpgradeUrl(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkGenerateEnterpriseUpgradeUrlResponse(
        response as api.GenerateEnterpriseUpgradeUrlResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises;
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
          final resp = convert.json.encode(buildEnterprise());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkEnterprise(response as api.Enterprise);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_projectId = 'foo';
      final arg_view = 'foo';
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
            unittest.equals('v1/enterprises'),
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
            queryMap['projectId']!.first,
            unittest.equals(arg_projectId),
          );
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListEnterprisesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        projectId: arg_projectId,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkListEnterprisesResponse(response as api.ListEnterprisesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises;
      final arg_request = buildEnterprise();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Enterprise.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEnterprise(obj);

          final path = req.url.path;
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
          final resp = convert.json.encode(buildEnterprise());
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
      checkEnterprise(response as api.Enterprise);
    });
  });

  unittest.group('resource-EnterprisesApplicationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.applications;
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildApplication());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        languageCode: arg_languageCode,
        $fields: arg_$fields,
      );
      checkApplication(response as api.Application);
    });
  });

  unittest.group('resource-EnterprisesDevicesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.devices;
      final arg_name = 'foo';
      final arg_wipeDataFlags = buildUnnamed117();
      final arg_wipeReasonMessage = 'foo';
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
            queryMap['wipeDataFlags']!,
            unittest.equals(arg_wipeDataFlags),
          );
          unittest.expect(
            queryMap['wipeReasonMessage']!.first,
            unittest.equals(arg_wipeReasonMessage),
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
        wipeDataFlags: arg_wipeDataFlags,
        wipeReasonMessage: arg_wipeReasonMessage,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.devices;
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
          final resp = convert.json.encode(buildDevice());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDevice(response as api.Device);
    });

    unittest.test('method--issueCommand', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.devices;
      final arg_request = buildCommand();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Command.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCommand(obj);

          final path = req.url.path;
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.issueCommand(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.devices;
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
          final resp = convert.json.encode(buildListDevicesResponse());
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
      checkListDevicesResponse(response as api.ListDevicesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.devices;
      final arg_request = buildDevice();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Device.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDevice(obj);

          final path = req.url.path;
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
          final resp = convert.json.encode(buildDevice());
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
      checkDevice(response as api.Device);
    });
  });

  unittest.group('resource-EnterprisesDevicesOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.devices.operations;
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
      final response = await res.cancel(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.devices.operations;
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.devices.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_returnPartialSuccess = true;
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
            queryMap['returnPartialSuccess']!.first,
            unittest.equals('$arg_returnPartialSuccess'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListOperationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        returnPartialSuccess: arg_returnPartialSuccess,
        $fields: arg_$fields,
      );
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });

  unittest.group('resource-EnterprisesEnrollmentTokensResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.enrollmentTokens;
      final arg_request = buildEnrollmentToken();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.EnrollmentToken.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEnrollmentToken(obj);

          final path = req.url.path;
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
          final resp = convert.json.encode(buildEnrollmentToken());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkEnrollmentToken(response as api.EnrollmentToken);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.enrollmentTokens;
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

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.enrollmentTokens;
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
          final resp = convert.json.encode(buildEnrollmentToken());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkEnrollmentToken(response as api.EnrollmentToken);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.enrollmentTokens;
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
          final resp = convert.json.encode(buildListEnrollmentTokensResponse());
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
      checkListEnrollmentTokensResponse(
        response as api.ListEnrollmentTokensResponse,
      );
    });
  });

  unittest.group('resource-EnterprisesMigrationTokensResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.migrationTokens;
      final arg_request = buildMigrationToken();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.MigrationToken.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMigrationToken(obj);

          final path = req.url.path;
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
          final resp = convert.json.encode(buildMigrationToken());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkMigrationToken(response as api.MigrationToken);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.migrationTokens;
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
          final resp = convert.json.encode(buildMigrationToken());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkMigrationToken(response as api.MigrationToken);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.migrationTokens;
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
          final resp = convert.json.encode(buildListMigrationTokensResponse());
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
      checkListMigrationTokensResponse(
        response as api.ListMigrationTokensResponse,
      );
    });
  });

  unittest.group('resource-EnterprisesPoliciesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.policies;
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

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.policies;
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
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.policies;
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
          final resp = convert.json.encode(buildListPoliciesResponse());
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
      checkListPoliciesResponse(response as api.ListPoliciesResponse);
    });

    unittest.test('method--modifyPolicyApplications', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.policies;
      final arg_request = buildModifyPolicyApplicationsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ModifyPolicyApplicationsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkModifyPolicyApplicationsRequest(obj);

          final path = req.url.path;
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
          final resp = convert.json.encode(
            buildModifyPolicyApplicationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.modifyPolicyApplications(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkModifyPolicyApplicationsResponse(
        response as api.ModifyPolicyApplicationsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.policies;
      final arg_request = buildPolicy();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Policy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPolicy(obj);

          final path = req.url.path;
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
          final resp = convert.json.encode(buildPolicy());
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
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--removePolicyApplications', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.policies;
      final arg_request = buildRemovePolicyApplicationsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RemovePolicyApplicationsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRemovePolicyApplicationsRequest(obj);

          final path = req.url.path;
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
          final resp = convert.json.encode(
            buildRemovePolicyApplicationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.removePolicyApplications(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkRemovePolicyApplicationsResponse(
        response as api.RemovePolicyApplicationsResponse,
      );
    });
  });

  unittest.group('resource-EnterprisesWebAppsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.webApps;
      final arg_request = buildWebApp();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.WebApp.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkWebApp(obj);

          final path = req.url.path;
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
          final resp = convert.json.encode(buildWebApp());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkWebApp(response as api.WebApp);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.webApps;
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

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.webApps;
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
          final resp = convert.json.encode(buildWebApp());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkWebApp(response as api.WebApp);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.webApps;
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
          final resp = convert.json.encode(buildListWebAppsResponse());
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
      checkListWebAppsResponse(response as api.ListWebAppsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.webApps;
      final arg_request = buildWebApp();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.WebApp.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkWebApp(obj);

          final path = req.url.path;
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
          final resp = convert.json.encode(buildWebApp());
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
      checkWebApp(response as api.WebApp);
    });
  });

  unittest.group('resource-EnterprisesWebTokensResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.webTokens;
      final arg_request = buildWebToken();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.WebToken.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkWebToken(obj);

          final path = req.url.path;
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
          final resp = convert.json.encode(buildWebToken());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkWebToken(response as api.WebToken);
    });
  });

  unittest.group('resource-ProvisioningInfoResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).provisioningInfo;
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
          final resp = convert.json.encode(buildProvisioningInfo());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkProvisioningInfo(response as api.ProvisioningInfo);
    });
  });

  unittest.group('resource-SignupUrlsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).signupUrls;
      final arg_adminEmail = 'foo';
      final arg_allowedDomains = buildUnnamed118();
      final arg_callbackUrl = 'foo';
      final arg_projectId = 'foo';
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
            unittest.equals('v1/signupUrls'),
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
            queryMap['adminEmail']!.first,
            unittest.equals(arg_adminEmail),
          );
          unittest.expect(
            queryMap['allowedDomains']!,
            unittest.equals(arg_allowedDomains),
          );
          unittest.expect(
            queryMap['callbackUrl']!.first,
            unittest.equals(arg_callbackUrl),
          );
          unittest.expect(
            queryMap['projectId']!.first,
            unittest.equals(arg_projectId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildSignupUrl());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        adminEmail: arg_adminEmail,
        allowedDomains: arg_allowedDomains,
        callbackUrl: arg_callbackUrl,
        projectId: arg_projectId,
        $fields: arg_$fields,
      );
      checkSignupUrl(response as api.SignupUrl);
    });
  });
}
