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

import 'package:googleapis/androidmanagement/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAdvancedSecurityOverrides = 0;
api.AdvancedSecurityOverrides buildAdvancedSecurityOverrides() {
  final o = api.AdvancedSecurityOverrides();
  buildCounterAdvancedSecurityOverrides++;
  if (buildCounterAdvancedSecurityOverrides < 3) {
    o.commonCriteriaMode = 'foo';
    o.developerSettings = 'foo';
    o.googlePlayProtectVerifyApps = 'foo';
    o.untrustedAppsPolicy = 'foo';
  }
  buildCounterAdvancedSecurityOverrides--;
  return o;
}

void checkAdvancedSecurityOverrides(api.AdvancedSecurityOverrides o) {
  buildCounterAdvancedSecurityOverrides++;
  if (buildCounterAdvancedSecurityOverrides < 3) {
    unittest.expect(
      o.commonCriteriaMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.developerSettings!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.googlePlayProtectVerifyApps!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.untrustedAppsPolicy!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.minApiLevel!,
      unittest.equals(42),
    );
  }
  buildCounterApiLevelCondition--;
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
    unittest.expect(
      o.trackAlias!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trackId!,
      unittest.equals('foo'),
    );
  }
  buildCounterAppTrackInfo--;
}

core.List<api.AppTrackInfo> buildUnnamed6928() => [
      buildAppTrackInfo(),
      buildAppTrackInfo(),
    ];

void checkUnnamed6928(core.List<api.AppTrackInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAppTrackInfo(o[0]);
  checkAppTrackInfo(o[1]);
}

core.List<api.ManagedProperty> buildUnnamed6929() => [
      buildManagedProperty(),
      buildManagedProperty(),
    ];

void checkUnnamed6929(core.List<api.ManagedProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedProperty(o[0]);
  checkManagedProperty(o[1]);
}

core.List<api.ApplicationPermission> buildUnnamed6930() => [
      buildApplicationPermission(),
      buildApplicationPermission(),
    ];

void checkUnnamed6930(core.List<api.ApplicationPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationPermission(o[0]);
  checkApplicationPermission(o[1]);
}

core.int buildCounterApplication = 0;
api.Application buildApplication() {
  final o = api.Application();
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    o.appTracks = buildUnnamed6928();
    o.managedProperties = buildUnnamed6929();
    o.name = 'foo';
    o.permissions = buildUnnamed6930();
    o.title = 'foo';
  }
  buildCounterApplication--;
  return o;
}

void checkApplication(api.Application o) {
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    checkUnnamed6928(o.appTracks!);
    checkUnnamed6929(o.managedProperties!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed6930(o.permissions!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventType!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.permissionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterApplicationPermission--;
}

core.List<core.String> buildUnnamed6931() => [
      'foo',
      'foo',
    ];

void checkUnnamed6931(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6932() => [
      'foo',
      'foo',
    ];

void checkUnnamed6932(core.List<core.String> o) {
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

core.Map<core.String, core.Object> buildUnnamed6933() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed6933(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(
    casted1['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted1['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted1['string'],
    unittest.equals('foo'),
  );
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(
    casted2['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted2['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted2['string'],
    unittest.equals('foo'),
  );
}

core.List<api.PermissionGrant> buildUnnamed6934() => [
      buildPermissionGrant(),
      buildPermissionGrant(),
    ];

void checkUnnamed6934(core.List<api.PermissionGrant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermissionGrant(o[0]);
  checkPermissionGrant(o[1]);
}

core.int buildCounterApplicationPolicy = 0;
api.ApplicationPolicy buildApplicationPolicy() {
  final o = api.ApplicationPolicy();
  buildCounterApplicationPolicy++;
  if (buildCounterApplicationPolicy < 3) {
    o.accessibleTrackIds = buildUnnamed6931();
    o.autoUpdateMode = 'foo';
    o.connectedWorkAndPersonalApp = 'foo';
    o.defaultPermissionPolicy = 'foo';
    o.delegatedScopes = buildUnnamed6932();
    o.disabled = true;
    o.installType = 'foo';
    o.lockTaskAllowed = true;
    o.managedConfiguration = buildUnnamed6933();
    o.managedConfigurationTemplate = buildManagedConfigurationTemplate();
    o.minimumVersionCode = 42;
    o.packageName = 'foo';
    o.permissionGrants = buildUnnamed6934();
  }
  buildCounterApplicationPolicy--;
  return o;
}

void checkApplicationPolicy(api.ApplicationPolicy o) {
  buildCounterApplicationPolicy++;
  if (buildCounterApplicationPolicy < 3) {
    checkUnnamed6931(o.accessibleTrackIds!);
    unittest.expect(
      o.autoUpdateMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.connectedWorkAndPersonalApp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultPermissionPolicy!,
      unittest.equals('foo'),
    );
    checkUnnamed6932(o.delegatedScopes!);
    unittest.expect(o.disabled!, unittest.isTrue);
    unittest.expect(
      o.installType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.lockTaskAllowed!, unittest.isTrue);
    checkUnnamed6933(o.managedConfiguration!);
    checkManagedConfigurationTemplate(o.managedConfigurationTemplate!);
    unittest.expect(
      o.minimumVersionCode!,
      unittest.equals(42),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    checkUnnamed6934(o.permissionGrants!);
  }
  buildCounterApplicationPolicy--;
}

core.List<api.ApplicationEvent> buildUnnamed6935() => [
      buildApplicationEvent(),
      buildApplicationEvent(),
    ];

void checkUnnamed6935(core.List<api.ApplicationEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationEvent(o[0]);
  checkApplicationEvent(o[1]);
}

core.List<api.KeyedAppState> buildUnnamed6936() => [
      buildKeyedAppState(),
      buildKeyedAppState(),
    ];

void checkUnnamed6936(core.List<api.KeyedAppState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyedAppState(o[0]);
  checkKeyedAppState(o[1]);
}

core.List<core.String> buildUnnamed6937() => [
      'foo',
      'foo',
    ];

void checkUnnamed6937(core.List<core.String> o) {
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

core.int buildCounterApplicationReport = 0;
api.ApplicationReport buildApplicationReport() {
  final o = api.ApplicationReport();
  buildCounterApplicationReport++;
  if (buildCounterApplicationReport < 3) {
    o.applicationSource = 'foo';
    o.displayName = 'foo';
    o.events = buildUnnamed6935();
    o.installerPackageName = 'foo';
    o.keyedAppStates = buildUnnamed6936();
    o.packageName = 'foo';
    o.packageSha256Hash = 'foo';
    o.signingKeyCertFingerprints = buildUnnamed6937();
    o.state = 'foo';
    o.versionCode = 42;
    o.versionName = 'foo';
  }
  buildCounterApplicationReport--;
  return o;
}

void checkApplicationReport(api.ApplicationReport o) {
  buildCounterApplicationReport++;
  if (buildCounterApplicationReport < 3) {
    unittest.expect(
      o.applicationSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed6935(o.events!);
    unittest.expect(
      o.installerPackageName!,
      unittest.equals('foo'),
    );
    checkUnnamed6936(o.keyedAppStates!);
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageSha256Hash!,
      unittest.equals('foo'),
    );
    checkUnnamed6937(o.signingKeyCertFingerprints!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionCode!,
      unittest.equals(42),
    );
    unittest.expect(
      o.versionName!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.blockAfterDays!,
      unittest.equals(42),
    );
    unittest.expect(
      o.blockScope!,
      unittest.equals('foo'),
    );
  }
  buildCounterBlockAction--;
}

core.List<core.String> buildUnnamed6938() => [
      'foo',
      'foo',
    ];

void checkUnnamed6938(core.List<core.String> o) {
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

core.int buildCounterChoosePrivateKeyRule = 0;
api.ChoosePrivateKeyRule buildChoosePrivateKeyRule() {
  final o = api.ChoosePrivateKeyRule();
  buildCounterChoosePrivateKeyRule++;
  if (buildCounterChoosePrivateKeyRule < 3) {
    o.packageNames = buildUnnamed6938();
    o.privateKeyAlias = 'foo';
    o.urlPattern = 'foo';
  }
  buildCounterChoosePrivateKeyRule--;
  return o;
}

void checkChoosePrivateKeyRule(api.ChoosePrivateKeyRule o) {
  buildCounterChoosePrivateKeyRule++;
  if (buildCounterChoosePrivateKeyRule < 3) {
    checkUnnamed6938(o.packageNames!);
    unittest.expect(
      o.privateKeyAlias!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.urlPattern!,
      unittest.equals('foo'),
    );
  }
  buildCounterChoosePrivateKeyRule--;
}

core.List<core.String> buildUnnamed6939() => [
      'foo',
      'foo',
    ];

void checkUnnamed6939(core.List<core.String> o) {
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

core.int buildCounterCommand = 0;
api.Command buildCommand() {
  final o = api.Command();
  buildCounterCommand++;
  if (buildCounterCommand < 3) {
    o.createTime = 'foo';
    o.duration = 'foo';
    o.errorCode = 'foo';
    o.newPassword = 'foo';
    o.resetPasswordFlags = buildUnnamed6939();
    o.type = 'foo';
    o.userName = 'foo';
  }
  buildCounterCommand--;
  return o;
}

void checkCommand(api.Command o) {
  buildCounterCommand++;
  if (buildCounterCommand < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.duration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.errorCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.newPassword!,
      unittest.equals('foo'),
    );
    checkUnnamed6939(o.resetPasswordFlags!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userName!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommand--;
}

core.int buildCounterCommonCriteriaModeInfo = 0;
api.CommonCriteriaModeInfo buildCommonCriteriaModeInfo() {
  final o = api.CommonCriteriaModeInfo();
  buildCounterCommonCriteriaModeInfo++;
  if (buildCounterCommonCriteriaModeInfo < 3) {
    o.commonCriteriaModeStatus = 'foo';
  }
  buildCounterCommonCriteriaModeInfo--;
  return o;
}

void checkCommonCriteriaModeInfo(api.CommonCriteriaModeInfo o) {
  buildCounterCommonCriteriaModeInfo++;
  if (buildCounterCommonCriteriaModeInfo < 3) {
    unittest.expect(
      o.commonCriteriaModeStatus!,
      unittest.equals('foo'),
    );
  }
  buildCounterCommonCriteriaModeInfo--;
}

core.List<core.String> buildUnnamed6940() => [
      'foo',
      'foo',
    ];

void checkUnnamed6940(core.List<core.String> o) {
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

core.int buildCounterComplianceRule = 0;
api.ComplianceRule buildComplianceRule() {
  final o = api.ComplianceRule();
  buildCounterComplianceRule++;
  if (buildCounterComplianceRule < 3) {
    o.apiLevelCondition = buildApiLevelCondition();
    o.disableApps = true;
    o.nonComplianceDetailCondition = buildNonComplianceDetailCondition();
    o.packageNamesToDisable = buildUnnamed6940();
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
    checkUnnamed6940(o.packageNamesToDisable!);
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
    unittest.expect(
      o.contactEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataProtectionOfficerEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataProtectionOfficerName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataProtectionOfficerPhone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.euRepresentativeEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.euRepresentativeName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.euRepresentativePhone!,
      unittest.equals('foo'),
    );
  }
  buildCounterContactInfo--;
}

core.List<core.String> buildUnnamed6941() => [
      'foo',
      'foo',
    ];

void checkUnnamed6941(core.List<core.String> o) {
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

core.int buildCounterContentProviderEndpoint = 0;
api.ContentProviderEndpoint buildContentProviderEndpoint() {
  final o = api.ContentProviderEndpoint();
  buildCounterContentProviderEndpoint++;
  if (buildCounterContentProviderEndpoint < 3) {
    o.packageName = 'foo';
    o.signingCertsSha256 = buildUnnamed6941();
    o.uri = 'foo';
  }
  buildCounterContentProviderEndpoint--;
  return o;
}

void checkContentProviderEndpoint(api.ContentProviderEndpoint o) {
  buildCounterContentProviderEndpoint++;
  if (buildCounterContentProviderEndpoint < 3) {
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    checkUnnamed6941(o.signingCertsSha256!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterContentProviderEndpoint--;
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
    unittest.expect(
      o.day!,
      unittest.equals(42),
    );
    unittest.expect(
      o.month!,
      unittest.equals(42),
    );
    unittest.expect(
      o.year!,
      unittest.equals(42),
    );
  }
  buildCounterDate--;
}

core.List<api.ApplicationReport> buildUnnamed6942() => [
      buildApplicationReport(),
      buildApplicationReport(),
    ];

void checkUnnamed6942(core.List<api.ApplicationReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationReport(o[0]);
  checkApplicationReport(o[1]);
}

core.List<api.PasswordRequirements> buildUnnamed6943() => [
      buildPasswordRequirements(),
      buildPasswordRequirements(),
    ];

void checkUnnamed6943(core.List<api.PasswordRequirements> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPasswordRequirements(o[0]);
  checkPasswordRequirements(o[1]);
}

core.List<api.Display> buildUnnamed6944() => [
      buildDisplay(),
      buildDisplay(),
    ];

void checkUnnamed6944(core.List<api.Display> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisplay(o[0]);
  checkDisplay(o[1]);
}

core.List<api.HardwareStatus> buildUnnamed6945() => [
      buildHardwareStatus(),
      buildHardwareStatus(),
    ];

void checkUnnamed6945(core.List<api.HardwareStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHardwareStatus(o[0]);
  checkHardwareStatus(o[1]);
}

core.List<api.MemoryEvent> buildUnnamed6946() => [
      buildMemoryEvent(),
      buildMemoryEvent(),
    ];

void checkUnnamed6946(core.List<api.MemoryEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMemoryEvent(o[0]);
  checkMemoryEvent(o[1]);
}

core.List<api.NonComplianceDetail> buildUnnamed6947() => [
      buildNonComplianceDetail(),
      buildNonComplianceDetail(),
    ];

void checkUnnamed6947(core.List<api.NonComplianceDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNonComplianceDetail(o[0]);
  checkNonComplianceDetail(o[1]);
}

core.List<api.PowerManagementEvent> buildUnnamed6948() => [
      buildPowerManagementEvent(),
      buildPowerManagementEvent(),
    ];

void checkUnnamed6948(core.List<api.PowerManagementEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPowerManagementEvent(o[0]);
  checkPowerManagementEvent(o[1]);
}

core.List<core.String> buildUnnamed6949() => [
      'foo',
      'foo',
    ];

void checkUnnamed6949(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed6950() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed6950(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterDevice = 0;
api.Device buildDevice() {
  final o = api.Device();
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    o.apiLevel = 42;
    o.applicationReports = buildUnnamed6942();
    o.appliedPasswordPolicies = buildUnnamed6943();
    o.appliedPolicyName = 'foo';
    o.appliedPolicyVersion = 'foo';
    o.appliedState = 'foo';
    o.commonCriteriaModeInfo = buildCommonCriteriaModeInfo();
    o.deviceSettings = buildDeviceSettings();
    o.disabledReason = buildUserFacingMessage();
    o.displays = buildUnnamed6944();
    o.enrollmentTime = 'foo';
    o.enrollmentTokenData = 'foo';
    o.enrollmentTokenName = 'foo';
    o.hardwareInfo = buildHardwareInfo();
    o.hardwareStatusSamples = buildUnnamed6945();
    o.lastPolicyComplianceReportTime = 'foo';
    o.lastPolicySyncTime = 'foo';
    o.lastStatusReportTime = 'foo';
    o.managementMode = 'foo';
    o.memoryEvents = buildUnnamed6946();
    o.memoryInfo = buildMemoryInfo();
    o.name = 'foo';
    o.networkInfo = buildNetworkInfo();
    o.nonComplianceDetails = buildUnnamed6947();
    o.ownership = 'foo';
    o.policyCompliant = true;
    o.policyName = 'foo';
    o.powerManagementEvents = buildUnnamed6948();
    o.previousDeviceNames = buildUnnamed6949();
    o.securityPosture = buildSecurityPosture();
    o.softwareInfo = buildSoftwareInfo();
    o.state = 'foo';
    o.systemProperties = buildUnnamed6950();
    o.user = buildUser();
    o.userName = 'foo';
  }
  buildCounterDevice--;
  return o;
}

void checkDevice(api.Device o) {
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    unittest.expect(
      o.apiLevel!,
      unittest.equals(42),
    );
    checkUnnamed6942(o.applicationReports!);
    checkUnnamed6943(o.appliedPasswordPolicies!);
    unittest.expect(
      o.appliedPolicyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.appliedPolicyVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.appliedState!,
      unittest.equals('foo'),
    );
    checkCommonCriteriaModeInfo(o.commonCriteriaModeInfo!);
    checkDeviceSettings(o.deviceSettings!);
    checkUserFacingMessage(o.disabledReason!);
    checkUnnamed6944(o.displays!);
    unittest.expect(
      o.enrollmentTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.enrollmentTokenData!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.enrollmentTokenName!,
      unittest.equals('foo'),
    );
    checkHardwareInfo(o.hardwareInfo!);
    checkUnnamed6945(o.hardwareStatusSamples!);
    unittest.expect(
      o.lastPolicyComplianceReportTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastPolicySyncTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastStatusReportTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.managementMode!,
      unittest.equals('foo'),
    );
    checkUnnamed6946(o.memoryEvents!);
    checkMemoryInfo(o.memoryInfo!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkNetworkInfo(o.networkInfo!);
    checkUnnamed6947(o.nonComplianceDetails!);
    unittest.expect(
      o.ownership!,
      unittest.equals('foo'),
    );
    unittest.expect(o.policyCompliant!, unittest.isTrue);
    unittest.expect(
      o.policyName!,
      unittest.equals('foo'),
    );
    checkUnnamed6948(o.powerManagementEvents!);
    checkUnnamed6949(o.previousDeviceNames!);
    checkSecurityPosture(o.securityPosture!);
    checkSoftwareInfo(o.softwareInfo!);
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUnnamed6950(o.systemProperties!);
    checkUser(o.user!);
    unittest.expect(
      o.userName!,
      unittest.equals('foo'),
    );
  }
  buildCounterDevice--;
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
    unittest.expect(
      o.encryptionStatus!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.density!,
      unittest.equals(42),
    );
    unittest.expect(
      o.displayId!,
      unittest.equals(42),
    );
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.refreshRate!,
      unittest.equals(42),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterDisplay--;
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
    unittest.expect(
      o.additionalData!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.allowPersonalUsage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.duration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expirationTimestamp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.oneTimeOnly!, unittest.isTrue);
    unittest.expect(
      o.policyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.qrCode!,
      unittest.equals('foo'),
    );
    checkUser(o.user!);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnrollmentToken--;
}

core.List<core.String> buildUnnamed6951() => [
      'foo',
      'foo',
    ];

void checkUnnamed6951(core.List<core.String> o) {
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

core.List<api.SigninDetail> buildUnnamed6952() => [
      buildSigninDetail(),
      buildSigninDetail(),
    ];

void checkUnnamed6952(core.List<api.SigninDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSigninDetail(o[0]);
  checkSigninDetail(o[1]);
}

core.List<api.TermsAndConditions> buildUnnamed6953() => [
      buildTermsAndConditions(),
      buildTermsAndConditions(),
    ];

void checkUnnamed6953(core.List<api.TermsAndConditions> o) {
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
    o.enabledNotificationTypes = buildUnnamed6951();
    o.enterpriseDisplayName = 'foo';
    o.logo = buildExternalData();
    o.name = 'foo';
    o.primaryColor = 42;
    o.pubsubTopic = 'foo';
    o.signinDetails = buildUnnamed6952();
    o.termsAndConditions = buildUnnamed6953();
  }
  buildCounterEnterprise--;
  return o;
}

void checkEnterprise(api.Enterprise o) {
  buildCounterEnterprise++;
  if (buildCounterEnterprise < 3) {
    unittest.expect(o.appAutoApprovalEnabled!, unittest.isTrue);
    checkContactInfo(o.contactInfo!);
    checkUnnamed6951(o.enabledNotificationTypes!);
    unittest.expect(
      o.enterpriseDisplayName!,
      unittest.equals('foo'),
    );
    checkExternalData(o.logo!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.primaryColor!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pubsubTopic!,
      unittest.equals('foo'),
    );
    checkUnnamed6952(o.signinDetails!);
    checkUnnamed6953(o.termsAndConditions!);
  }
  buildCounterEnterprise--;
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
    unittest.expect(
      o.sha256Hash!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
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

core.List<core.double> buildUnnamed6954() => [
      42.0,
      42.0,
    ];

void checkUnnamed6954(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.List<core.double> buildUnnamed6955() => [
      42.0,
      42.0,
    ];

void checkUnnamed6955(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.List<core.double> buildUnnamed6956() => [
      42.0,
      42.0,
    ];

void checkUnnamed6956(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.List<core.double> buildUnnamed6957() => [
      42.0,
      42.0,
    ];

void checkUnnamed6957(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.List<core.double> buildUnnamed6958() => [
      42.0,
      42.0,
    ];

void checkUnnamed6958(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.List<core.double> buildUnnamed6959() => [
      42.0,
      42.0,
    ];

void checkUnnamed6959(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.List<core.double> buildUnnamed6960() => [
      42.0,
      42.0,
    ];

void checkUnnamed6960(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.List<core.double> buildUnnamed6961() => [
      42.0,
      42.0,
    ];

void checkUnnamed6961(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.int buildCounterHardwareInfo = 0;
api.HardwareInfo buildHardwareInfo() {
  final o = api.HardwareInfo();
  buildCounterHardwareInfo++;
  if (buildCounterHardwareInfo < 3) {
    o.batteryShutdownTemperatures = buildUnnamed6954();
    o.batteryThrottlingTemperatures = buildUnnamed6955();
    o.brand = 'foo';
    o.cpuShutdownTemperatures = buildUnnamed6956();
    o.cpuThrottlingTemperatures = buildUnnamed6957();
    o.deviceBasebandVersion = 'foo';
    o.gpuShutdownTemperatures = buildUnnamed6958();
    o.gpuThrottlingTemperatures = buildUnnamed6959();
    o.hardware = 'foo';
    o.manufacturer = 'foo';
    o.model = 'foo';
    o.serialNumber = 'foo';
    o.skinShutdownTemperatures = buildUnnamed6960();
    o.skinThrottlingTemperatures = buildUnnamed6961();
  }
  buildCounterHardwareInfo--;
  return o;
}

void checkHardwareInfo(api.HardwareInfo o) {
  buildCounterHardwareInfo++;
  if (buildCounterHardwareInfo < 3) {
    checkUnnamed6954(o.batteryShutdownTemperatures!);
    checkUnnamed6955(o.batteryThrottlingTemperatures!);
    unittest.expect(
      o.brand!,
      unittest.equals('foo'),
    );
    checkUnnamed6956(o.cpuShutdownTemperatures!);
    checkUnnamed6957(o.cpuThrottlingTemperatures!);
    unittest.expect(
      o.deviceBasebandVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed6958(o.gpuShutdownTemperatures!);
    checkUnnamed6959(o.gpuThrottlingTemperatures!);
    unittest.expect(
      o.hardware!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.manufacturer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serialNumber!,
      unittest.equals('foo'),
    );
    checkUnnamed6960(o.skinShutdownTemperatures!);
    checkUnnamed6961(o.skinThrottlingTemperatures!);
  }
  buildCounterHardwareInfo--;
}

core.List<core.double> buildUnnamed6962() => [
      42.0,
      42.0,
    ];

void checkUnnamed6962(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.List<core.double> buildUnnamed6963() => [
      42.0,
      42.0,
    ];

void checkUnnamed6963(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.List<core.double> buildUnnamed6964() => [
      42.0,
      42.0,
    ];

void checkUnnamed6964(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.List<core.double> buildUnnamed6965() => [
      42.0,
      42.0,
    ];

void checkUnnamed6965(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.List<core.double> buildUnnamed6966() => [
      42.0,
      42.0,
    ];

void checkUnnamed6966(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.List<core.double> buildUnnamed6967() => [
      42.0,
      42.0,
    ];

void checkUnnamed6967(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
}

core.int buildCounterHardwareStatus = 0;
api.HardwareStatus buildHardwareStatus() {
  final o = api.HardwareStatus();
  buildCounterHardwareStatus++;
  if (buildCounterHardwareStatus < 3) {
    o.batteryTemperatures = buildUnnamed6962();
    o.cpuTemperatures = buildUnnamed6963();
    o.cpuUsages = buildUnnamed6964();
    o.createTime = 'foo';
    o.fanSpeeds = buildUnnamed6965();
    o.gpuTemperatures = buildUnnamed6966();
    o.skinTemperatures = buildUnnamed6967();
  }
  buildCounterHardwareStatus--;
  return o;
}

void checkHardwareStatus(api.HardwareStatus o) {
  buildCounterHardwareStatus++;
  if (buildCounterHardwareStatus < 3) {
    checkUnnamed6962(o.batteryTemperatures!);
    checkUnnamed6963(o.cpuTemperatures!);
    checkUnnamed6964(o.cpuUsages!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkUnnamed6965(o.fanSpeeds!);
    checkUnnamed6966(o.gpuTemperatures!);
    checkUnnamed6967(o.skinTemperatures!);
  }
  buildCounterHardwareStatus--;
}

core.int buildCounterIssueCommandResponse = 0;
api.IssueCommandResponse buildIssueCommandResponse() {
  final o = api.IssueCommandResponse();
  buildCounterIssueCommandResponse++;
  if (buildCounterIssueCommandResponse < 3) {}
  buildCounterIssueCommandResponse--;
  return o;
}

void checkIssueCommandResponse(api.IssueCommandResponse o) {
  buildCounterIssueCommandResponse++;
  if (buildCounterIssueCommandResponse < 3) {}
  buildCounterIssueCommandResponse--;
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
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastUpdateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.deviceSettings!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.powerButtonActions!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.statusBar!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.systemErrorWarnings!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.systemNavigation!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
  }
  buildCounterLaunchAppAction--;
}

core.List<api.Device> buildUnnamed6968() => [
      buildDevice(),
      buildDevice(),
    ];

void checkUnnamed6968(core.List<api.Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDevice(o[0]);
  checkDevice(o[1]);
}

core.int buildCounterListDevicesResponse = 0;
api.ListDevicesResponse buildListDevicesResponse() {
  final o = api.ListDevicesResponse();
  buildCounterListDevicesResponse++;
  if (buildCounterListDevicesResponse < 3) {
    o.devices = buildUnnamed6968();
    o.nextPageToken = 'foo';
  }
  buildCounterListDevicesResponse--;
  return o;
}

void checkListDevicesResponse(api.ListDevicesResponse o) {
  buildCounterListDevicesResponse++;
  if (buildCounterListDevicesResponse < 3) {
    checkUnnamed6968(o.devices!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListDevicesResponse--;
}

core.List<api.Enterprise> buildUnnamed6969() => [
      buildEnterprise(),
      buildEnterprise(),
    ];

void checkUnnamed6969(core.List<api.Enterprise> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEnterprise(o[0]);
  checkEnterprise(o[1]);
}

core.int buildCounterListEnterprisesResponse = 0;
api.ListEnterprisesResponse buildListEnterprisesResponse() {
  final o = api.ListEnterprisesResponse();
  buildCounterListEnterprisesResponse++;
  if (buildCounterListEnterprisesResponse < 3) {
    o.enterprises = buildUnnamed6969();
    o.nextPageToken = 'foo';
  }
  buildCounterListEnterprisesResponse--;
  return o;
}

void checkListEnterprisesResponse(api.ListEnterprisesResponse o) {
  buildCounterListEnterprisesResponse++;
  if (buildCounterListEnterprisesResponse < 3) {
    checkUnnamed6969(o.enterprises!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListEnterprisesResponse--;
}

core.List<api.Operation> buildUnnamed6970() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed6970(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed6970();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed6970(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.Policy> buildUnnamed6971() => [
      buildPolicy(),
      buildPolicy(),
    ];

void checkUnnamed6971(core.List<api.Policy> o) {
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
    o.policies = buildUnnamed6971();
  }
  buildCounterListPoliciesResponse--;
  return o;
}

void checkListPoliciesResponse(api.ListPoliciesResponse o) {
  buildCounterListPoliciesResponse++;
  if (buildCounterListPoliciesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed6971(o.policies!);
  }
  buildCounterListPoliciesResponse--;
}

core.List<api.WebApp> buildUnnamed6972() => [
      buildWebApp(),
      buildWebApp(),
    ];

void checkUnnamed6972(core.List<api.WebApp> o) {
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
    o.webApps = buildUnnamed6972();
  }
  buildCounterListWebAppsResponse--;
  return o;
}

void checkListWebAppsResponse(api.ListWebAppsResponse o) {
  buildCounterListWebAppsResponse++;
  if (buildCounterListWebAppsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed6972(o.webApps!);
  }
  buildCounterListWebAppsResponse--;
}

core.Map<core.String, core.String> buildUnnamed6973() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed6973(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterManagedConfigurationTemplate = 0;
api.ManagedConfigurationTemplate buildManagedConfigurationTemplate() {
  final o = api.ManagedConfigurationTemplate();
  buildCounterManagedConfigurationTemplate++;
  if (buildCounterManagedConfigurationTemplate < 3) {
    o.configurationVariables = buildUnnamed6973();
    o.templateId = 'foo';
  }
  buildCounterManagedConfigurationTemplate--;
  return o;
}

void checkManagedConfigurationTemplate(api.ManagedConfigurationTemplate o) {
  buildCounterManagedConfigurationTemplate++;
  if (buildCounterManagedConfigurationTemplate < 3) {
    checkUnnamed6973(o.configurationVariables!);
    unittest.expect(
      o.templateId!,
      unittest.equals('foo'),
    );
  }
  buildCounterManagedConfigurationTemplate--;
}

core.List<api.ManagedPropertyEntry> buildUnnamed6974() => [
      buildManagedPropertyEntry(),
      buildManagedPropertyEntry(),
    ];

void checkUnnamed6974(core.List<api.ManagedPropertyEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedPropertyEntry(o[0]);
  checkManagedPropertyEntry(o[1]);
}

core.List<api.ManagedProperty> buildUnnamed6975() => [
      buildManagedProperty(),
      buildManagedProperty(),
    ];

void checkUnnamed6975(core.List<api.ManagedProperty> o) {
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
      'string': 'foo'
    };
    o.description = 'foo';
    o.entries = buildUnnamed6974();
    o.key = 'foo';
    o.nestedProperties = buildUnnamed6975();
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
    unittest.expect(
      casted3['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted3['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted3['string'],
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkUnnamed6974(o.entries!);
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    checkUnnamed6975(o.nestedProperties!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.byteCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventType!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.totalInternalStorage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalRam!,
      unittest.equals('foo'),
    );
  }
  buildCounterMemoryInfo--;
}

core.List<api.TelephonyInfo> buildUnnamed6976() => [
      buildTelephonyInfo(),
      buildTelephonyInfo(),
    ];

void checkUnnamed6976(core.List<api.TelephonyInfo> o) {
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
    o.telephonyInfos = buildUnnamed6976();
    o.wifiMacAddress = 'foo';
  }
  buildCounterNetworkInfo--;
  return o;
}

void checkNetworkInfo(api.NetworkInfo o) {
  buildCounterNetworkInfo++;
  if (buildCounterNetworkInfo < 3) {
    unittest.expect(
      o.imei!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.meid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkOperatorName!,
      unittest.equals('foo'),
    );
    checkUnnamed6976(o.telephonyInfos!);
    unittest.expect(
      o.wifiMacAddress!,
      unittest.equals('foo'),
    );
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
      'string': 'foo'
    };
    o.fieldPath = 'foo';
    o.installationFailureReason = 'foo';
    o.nonComplianceReason = 'foo';
    o.packageName = 'foo';
    o.settingName = 'foo';
  }
  buildCounterNonComplianceDetail--;
  return o;
}

void checkNonComplianceDetail(api.NonComplianceDetail o) {
  buildCounterNonComplianceDetail++;
  if (buildCounterNonComplianceDetail < 3) {
    var casted4 = (o.currentValue!) as core.Map;
    unittest.expect(casted4, unittest.hasLength(3));
    unittest.expect(
      casted4['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted4['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted4['string'],
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fieldPath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.installationFailureReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nonComplianceReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.settingName!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.nonComplianceReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.settingName!,
      unittest.equals('foo'),
    );
  }
  buildCounterNonComplianceDetailCondition--;
}

core.List<core.String> buildUnnamed6977() => [
      'foo',
      'foo',
    ];

void checkUnnamed6977(core.List<core.String> o) {
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

core.int buildCounterOncCertificateProvider = 0;
api.OncCertificateProvider buildOncCertificateProvider() {
  final o = api.OncCertificateProvider();
  buildCounterOncCertificateProvider++;
  if (buildCounterOncCertificateProvider < 3) {
    o.certificateReferences = buildUnnamed6977();
    o.contentProviderEndpoint = buildContentProviderEndpoint();
  }
  buildCounterOncCertificateProvider--;
  return o;
}

void checkOncCertificateProvider(api.OncCertificateProvider o) {
  buildCounterOncCertificateProvider++;
  if (buildCounterOncCertificateProvider < 3) {
    checkUnnamed6977(o.certificateReferences!);
    checkContentProviderEndpoint(o.contentProviderEndpoint!);
  }
  buildCounterOncCertificateProvider--;
}

core.Map<core.String, core.Object> buildUnnamed6978() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed6978(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(
    casted5['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted5['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted5['string'],
    unittest.equals('foo'),
  );
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(
    casted6['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted6['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted6['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object> buildUnnamed6979() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed6979(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(
    casted7['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted7['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted7['string'],
    unittest.equals('foo'),
  );
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(
    casted8['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted8['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted8['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed6978();
    o.name = 'foo';
    o.response = buildUnnamed6979();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed6978(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed6979(o.response!);
  }
  buildCounterOperation--;
}

core.List<core.String> buildUnnamed6980() => [
      'foo',
      'foo',
    ];

void checkUnnamed6980(core.List<core.String> o) {
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

core.int buildCounterPackageNameList = 0;
api.PackageNameList buildPackageNameList() {
  final o = api.PackageNameList();
  buildCounterPackageNameList++;
  if (buildCounterPackageNameList < 3) {
    o.packageNames = buildUnnamed6980();
  }
  buildCounterPackageNameList--;
  return o;
}

void checkPackageNameList(api.PackageNameList o) {
  buildCounterPackageNameList++;
  if (buildCounterPackageNameList < 3) {
    checkUnnamed6980(o.packageNames!);
  }
  buildCounterPackageNameList--;
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
  }
  buildCounterPasswordRequirements--;
  return o;
}

void checkPasswordRequirements(api.PasswordRequirements o) {
  buildCounterPasswordRequirements++;
  if (buildCounterPasswordRequirements < 3) {
    unittest.expect(
      o.maximumFailedPasswordsForWipe!,
      unittest.equals(42),
    );
    unittest.expect(
      o.passwordExpirationTimeout!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.passwordHistoryLength!,
      unittest.equals(42),
    );
    unittest.expect(
      o.passwordMinimumLength!,
      unittest.equals(42),
    );
    unittest.expect(
      o.passwordMinimumLetters!,
      unittest.equals(42),
    );
    unittest.expect(
      o.passwordMinimumLowerCase!,
      unittest.equals(42),
    );
    unittest.expect(
      o.passwordMinimumNonLetter!,
      unittest.equals(42),
    );
    unittest.expect(
      o.passwordMinimumNumeric!,
      unittest.equals(42),
    );
    unittest.expect(
      o.passwordMinimumSymbols!,
      unittest.equals(42),
    );
    unittest.expect(
      o.passwordMinimumUpperCase!,
      unittest.equals(42),
    );
    unittest.expect(
      o.passwordQuality!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.passwordScope!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requirePasswordUnlock!,
      unittest.equals('foo'),
    );
  }
  buildCounterPasswordRequirements--;
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
    unittest.expect(
      o.permission!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.policy!,
      unittest.equals('foo'),
    );
  }
  buildCounterPermissionGrant--;
}

core.List<core.String> buildUnnamed6981() => [
      'foo',
      'foo',
    ];

void checkUnnamed6981(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6982() => [
      'foo',
      'foo',
    ];

void checkUnnamed6982(core.List<core.String> o) {
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

core.int buildCounterPersistentPreferredActivity = 0;
api.PersistentPreferredActivity buildPersistentPreferredActivity() {
  final o = api.PersistentPreferredActivity();
  buildCounterPersistentPreferredActivity++;
  if (buildCounterPersistentPreferredActivity < 3) {
    o.actions = buildUnnamed6981();
    o.categories = buildUnnamed6982();
    o.receiverActivity = 'foo';
  }
  buildCounterPersistentPreferredActivity--;
  return o;
}

void checkPersistentPreferredActivity(api.PersistentPreferredActivity o) {
  buildCounterPersistentPreferredActivity++;
  if (buildCounterPersistentPreferredActivity < 3) {
    checkUnnamed6981(o.actions!);
    checkUnnamed6982(o.categories!);
    unittest.expect(
      o.receiverActivity!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.installType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.packageName!,
      unittest.equals('foo'),
    );
  }
  buildCounterPersonalApplicationPolicy--;
}

core.List<core.String> buildUnnamed6983() => [
      'foo',
      'foo',
    ];

void checkUnnamed6983(core.List<core.String> o) {
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

core.List<api.PersonalApplicationPolicy> buildUnnamed6984() => [
      buildPersonalApplicationPolicy(),
      buildPersonalApplicationPolicy(),
    ];

void checkUnnamed6984(core.List<api.PersonalApplicationPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPersonalApplicationPolicy(o[0]);
  checkPersonalApplicationPolicy(o[1]);
}

core.int buildCounterPersonalUsagePolicies = 0;
api.PersonalUsagePolicies buildPersonalUsagePolicies() {
  final o = api.PersonalUsagePolicies();
  buildCounterPersonalUsagePolicies++;
  if (buildCounterPersonalUsagePolicies < 3) {
    o.accountTypesWithManagementDisabled = buildUnnamed6983();
    o.cameraDisabled = true;
    o.maxDaysWithWorkOff = 42;
    o.personalApplications = buildUnnamed6984();
    o.personalPlayStoreMode = 'foo';
    o.screenCaptureDisabled = true;
  }
  buildCounterPersonalUsagePolicies--;
  return o;
}

void checkPersonalUsagePolicies(api.PersonalUsagePolicies o) {
  buildCounterPersonalUsagePolicies++;
  if (buildCounterPersonalUsagePolicies < 3) {
    checkUnnamed6983(o.accountTypesWithManagementDisabled!);
    unittest.expect(o.cameraDisabled!, unittest.isTrue);
    unittest.expect(
      o.maxDaysWithWorkOff!,
      unittest.equals(42),
    );
    checkUnnamed6984(o.personalApplications!);
    unittest.expect(
      o.personalPlayStoreMode!,
      unittest.equals('foo'),
    );
    unittest.expect(o.screenCaptureDisabled!, unittest.isTrue);
  }
  buildCounterPersonalUsagePolicies--;
}

core.List<core.String> buildUnnamed6985() => [
      'foo',
      'foo',
    ];

void checkUnnamed6985(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6986() => [
      'foo',
      'foo',
    ];

void checkUnnamed6986(core.List<core.String> o) {
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

core.List<api.ApplicationPolicy> buildUnnamed6987() => [
      buildApplicationPolicy(),
      buildApplicationPolicy(),
    ];

void checkUnnamed6987(core.List<api.ApplicationPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationPolicy(o[0]);
  checkApplicationPolicy(o[1]);
}

core.List<api.ChoosePrivateKeyRule> buildUnnamed6988() => [
      buildChoosePrivateKeyRule(),
      buildChoosePrivateKeyRule(),
    ];

void checkUnnamed6988(core.List<api.ChoosePrivateKeyRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChoosePrivateKeyRule(o[0]);
  checkChoosePrivateKeyRule(o[1]);
}

core.List<api.ComplianceRule> buildUnnamed6989() => [
      buildComplianceRule(),
      buildComplianceRule(),
    ];

void checkUnnamed6989(core.List<api.ComplianceRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComplianceRule(o[0]);
  checkComplianceRule(o[1]);
}

core.List<core.String> buildUnnamed6990() => [
      'foo',
      'foo',
    ];

void checkUnnamed6990(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed6991() => [
      'foo',
      'foo',
    ];

void checkUnnamed6991(core.List<core.String> o) {
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

core.List<api.OncCertificateProvider> buildUnnamed6992() => [
      buildOncCertificateProvider(),
      buildOncCertificateProvider(),
    ];

void checkUnnamed6992(core.List<api.OncCertificateProvider> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOncCertificateProvider(o[0]);
  checkOncCertificateProvider(o[1]);
}

core.Map<core.String, core.Object> buildUnnamed6993() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed6993(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o['x']!) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(
    casted9['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted9['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted9['string'],
    unittest.equals('foo'),
  );
  var casted10 = (o['y']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(
    casted10['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted10['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted10['string'],
    unittest.equals('foo'),
  );
}

core.List<api.PasswordRequirements> buildUnnamed6994() => [
      buildPasswordRequirements(),
      buildPasswordRequirements(),
    ];

void checkUnnamed6994(core.List<api.PasswordRequirements> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPasswordRequirements(o[0]);
  checkPasswordRequirements(o[1]);
}

core.List<api.PermissionGrant> buildUnnamed6995() => [
      buildPermissionGrant(),
      buildPermissionGrant(),
    ];

void checkUnnamed6995(core.List<api.PermissionGrant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermissionGrant(o[0]);
  checkPermissionGrant(o[1]);
}

core.List<api.PersistentPreferredActivity> buildUnnamed6996() => [
      buildPersistentPreferredActivity(),
      buildPersistentPreferredActivity(),
    ];

void checkUnnamed6996(core.List<api.PersistentPreferredActivity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPersistentPreferredActivity(o[0]);
  checkPersistentPreferredActivity(o[1]);
}

core.List<api.PolicyEnforcementRule> buildUnnamed6997() => [
      buildPolicyEnforcementRule(),
      buildPolicyEnforcementRule(),
    ];

void checkUnnamed6997(core.List<api.PolicyEnforcementRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyEnforcementRule(o[0]);
  checkPolicyEnforcementRule(o[1]);
}

core.List<api.SetupAction> buildUnnamed6998() => [
      buildSetupAction(),
      buildSetupAction(),
    ];

void checkUnnamed6998(core.List<api.SetupAction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSetupAction(o[0]);
  checkSetupAction(o[1]);
}

core.List<core.String> buildUnnamed6999() => [
      'foo',
      'foo',
    ];

void checkUnnamed6999(core.List<core.String> o) {
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

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.accountTypesWithManagementDisabled = buildUnnamed6985();
    o.addUserDisabled = true;
    o.adjustVolumeDisabled = true;
    o.advancedSecurityOverrides = buildAdvancedSecurityOverrides();
    o.alwaysOnVpnPackage = buildAlwaysOnVpnPackage();
    o.androidDevicePolicyTracks = buildUnnamed6986();
    o.appAutoUpdatePolicy = 'foo';
    o.applications = buildUnnamed6987();
    o.autoDateAndTimeZone = 'foo';
    o.autoTimeRequired = true;
    o.blockApplicationsEnabled = true;
    o.bluetoothConfigDisabled = true;
    o.bluetoothContactSharingDisabled = true;
    o.bluetoothDisabled = true;
    o.cameraDisabled = true;
    o.cellBroadcastsConfigDisabled = true;
    o.choosePrivateKeyRules = buildUnnamed6988();
    o.complianceRules = buildUnnamed6989();
    o.createWindowsDisabled = true;
    o.credentialsConfigDisabled = true;
    o.dataRoamingDisabled = true;
    o.debuggingFeaturesAllowed = true;
    o.defaultPermissionPolicy = 'foo';
    o.deviceOwnerLockScreenInfo = buildUserFacingMessage();
    o.encryptionPolicy = 'foo';
    o.ensureVerifyAppsEnabled = true;
    o.factoryResetDisabled = true;
    o.frpAdminEmails = buildUnnamed6990();
    o.funDisabled = true;
    o.installAppsDisabled = true;
    o.installUnknownSourcesAllowed = true;
    o.keyguardDisabled = true;
    o.keyguardDisabledFeatures = buildUnnamed6991();
    o.kioskCustomLauncherEnabled = true;
    o.kioskCustomization = buildKioskCustomization();
    o.locationMode = 'foo';
    o.longSupportMessage = buildUserFacingMessage();
    o.maximumTimeToLock = 'foo';
    o.minimumApiLevel = 42;
    o.mobileNetworksConfigDisabled = true;
    o.modifyAccountsDisabled = true;
    o.mountPhysicalMediaDisabled = true;
    o.name = 'foo';
    o.networkEscapeHatchEnabled = true;
    o.networkResetDisabled = true;
    o.oncCertificateProviders = buildUnnamed6992();
    o.openNetworkConfiguration = buildUnnamed6993();
    o.outgoingBeamDisabled = true;
    o.outgoingCallsDisabled = true;
    o.passwordPolicies = buildUnnamed6994();
    o.passwordRequirements = buildPasswordRequirements();
    o.permissionGrants = buildUnnamed6995();
    o.permittedAccessibilityServices = buildPackageNameList();
    o.permittedInputMethods = buildPackageNameList();
    o.persistentPreferredActivities = buildUnnamed6996();
    o.personalUsagePolicies = buildPersonalUsagePolicies();
    o.playStoreMode = 'foo';
    o.policyEnforcementRules = buildUnnamed6997();
    o.privateKeySelectionEnabled = true;
    o.recommendedGlobalProxy = buildProxyInfo();
    o.removeUserDisabled = true;
    o.safeBootDisabled = true;
    o.screenCaptureDisabled = true;
    o.setUserIconDisabled = true;
    o.setWallpaperDisabled = true;
    o.setupActions = buildUnnamed6998();
    o.shareLocationDisabled = true;
    o.shortSupportMessage = buildUserFacingMessage();
    o.skipFirstUseHintsEnabled = true;
    o.smsDisabled = true;
    o.statusBarDisabled = true;
    o.statusReportingSettings = buildStatusReportingSettings();
    o.stayOnPluggedModes = buildUnnamed6999();
    o.systemUpdate = buildSystemUpdate();
    o.tetheringConfigDisabled = true;
    o.uninstallAppsDisabled = true;
    o.unmuteMicrophoneDisabled = true;
    o.usbFileTransferDisabled = true;
    o.usbMassStorageEnabled = true;
    o.version = 'foo';
    o.vpnConfigDisabled = true;
    o.wifiConfigDisabled = true;
    o.wifiConfigsLockdownEnabled = true;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed6985(o.accountTypesWithManagementDisabled!);
    unittest.expect(o.addUserDisabled!, unittest.isTrue);
    unittest.expect(o.adjustVolumeDisabled!, unittest.isTrue);
    checkAdvancedSecurityOverrides(o.advancedSecurityOverrides!);
    checkAlwaysOnVpnPackage(o.alwaysOnVpnPackage!);
    checkUnnamed6986(o.androidDevicePolicyTracks!);
    unittest.expect(
      o.appAutoUpdatePolicy!,
      unittest.equals('foo'),
    );
    checkUnnamed6987(o.applications!);
    unittest.expect(
      o.autoDateAndTimeZone!,
      unittest.equals('foo'),
    );
    unittest.expect(o.autoTimeRequired!, unittest.isTrue);
    unittest.expect(o.blockApplicationsEnabled!, unittest.isTrue);
    unittest.expect(o.bluetoothConfigDisabled!, unittest.isTrue);
    unittest.expect(o.bluetoothContactSharingDisabled!, unittest.isTrue);
    unittest.expect(o.bluetoothDisabled!, unittest.isTrue);
    unittest.expect(o.cameraDisabled!, unittest.isTrue);
    unittest.expect(o.cellBroadcastsConfigDisabled!, unittest.isTrue);
    checkUnnamed6988(o.choosePrivateKeyRules!);
    checkUnnamed6989(o.complianceRules!);
    unittest.expect(o.createWindowsDisabled!, unittest.isTrue);
    unittest.expect(o.credentialsConfigDisabled!, unittest.isTrue);
    unittest.expect(o.dataRoamingDisabled!, unittest.isTrue);
    unittest.expect(o.debuggingFeaturesAllowed!, unittest.isTrue);
    unittest.expect(
      o.defaultPermissionPolicy!,
      unittest.equals('foo'),
    );
    checkUserFacingMessage(o.deviceOwnerLockScreenInfo!);
    unittest.expect(
      o.encryptionPolicy!,
      unittest.equals('foo'),
    );
    unittest.expect(o.ensureVerifyAppsEnabled!, unittest.isTrue);
    unittest.expect(o.factoryResetDisabled!, unittest.isTrue);
    checkUnnamed6990(o.frpAdminEmails!);
    unittest.expect(o.funDisabled!, unittest.isTrue);
    unittest.expect(o.installAppsDisabled!, unittest.isTrue);
    unittest.expect(o.installUnknownSourcesAllowed!, unittest.isTrue);
    unittest.expect(o.keyguardDisabled!, unittest.isTrue);
    checkUnnamed6991(o.keyguardDisabledFeatures!);
    unittest.expect(o.kioskCustomLauncherEnabled!, unittest.isTrue);
    checkKioskCustomization(o.kioskCustomization!);
    unittest.expect(
      o.locationMode!,
      unittest.equals('foo'),
    );
    checkUserFacingMessage(o.longSupportMessage!);
    unittest.expect(
      o.maximumTimeToLock!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.minimumApiLevel!,
      unittest.equals(42),
    );
    unittest.expect(o.mobileNetworksConfigDisabled!, unittest.isTrue);
    unittest.expect(o.modifyAccountsDisabled!, unittest.isTrue);
    unittest.expect(o.mountPhysicalMediaDisabled!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.networkEscapeHatchEnabled!, unittest.isTrue);
    unittest.expect(o.networkResetDisabled!, unittest.isTrue);
    checkUnnamed6992(o.oncCertificateProviders!);
    checkUnnamed6993(o.openNetworkConfiguration!);
    unittest.expect(o.outgoingBeamDisabled!, unittest.isTrue);
    unittest.expect(o.outgoingCallsDisabled!, unittest.isTrue);
    checkUnnamed6994(o.passwordPolicies!);
    checkPasswordRequirements(o.passwordRequirements!);
    checkUnnamed6995(o.permissionGrants!);
    checkPackageNameList(o.permittedAccessibilityServices!);
    checkPackageNameList(o.permittedInputMethods!);
    checkUnnamed6996(o.persistentPreferredActivities!);
    checkPersonalUsagePolicies(o.personalUsagePolicies!);
    unittest.expect(
      o.playStoreMode!,
      unittest.equals('foo'),
    );
    checkUnnamed6997(o.policyEnforcementRules!);
    unittest.expect(o.privateKeySelectionEnabled!, unittest.isTrue);
    checkProxyInfo(o.recommendedGlobalProxy!);
    unittest.expect(o.removeUserDisabled!, unittest.isTrue);
    unittest.expect(o.safeBootDisabled!, unittest.isTrue);
    unittest.expect(o.screenCaptureDisabled!, unittest.isTrue);
    unittest.expect(o.setUserIconDisabled!, unittest.isTrue);
    unittest.expect(o.setWallpaperDisabled!, unittest.isTrue);
    checkUnnamed6998(o.setupActions!);
    unittest.expect(o.shareLocationDisabled!, unittest.isTrue);
    checkUserFacingMessage(o.shortSupportMessage!);
    unittest.expect(o.skipFirstUseHintsEnabled!, unittest.isTrue);
    unittest.expect(o.smsDisabled!, unittest.isTrue);
    unittest.expect(o.statusBarDisabled!, unittest.isTrue);
    checkStatusReportingSettings(o.statusReportingSettings!);
    checkUnnamed6999(o.stayOnPluggedModes!);
    checkSystemUpdate(o.systemUpdate!);
    unittest.expect(o.tetheringConfigDisabled!, unittest.isTrue);
    unittest.expect(o.uninstallAppsDisabled!, unittest.isTrue);
    unittest.expect(o.unmuteMicrophoneDisabled!, unittest.isTrue);
    unittest.expect(o.usbFileTransferDisabled!, unittest.isTrue);
    unittest.expect(o.usbMassStorageEnabled!, unittest.isTrue);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
    unittest.expect(o.vpnConfigDisabled!, unittest.isTrue);
    unittest.expect(o.wifiConfigDisabled!, unittest.isTrue);
    unittest.expect(o.wifiConfigsLockdownEnabled!, unittest.isTrue);
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
    unittest.expect(
      o.settingName!,
      unittest.equals('foo'),
    );
    checkWipeAction(o.wipeAction!);
  }
  buildCounterPolicyEnforcementRule--;
}

core.List<api.UserFacingMessage> buildUnnamed7000() => [
      buildUserFacingMessage(),
      buildUserFacingMessage(),
    ];

void checkUnnamed7000(core.List<api.UserFacingMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserFacingMessage(o[0]);
  checkUserFacingMessage(o[1]);
}

core.int buildCounterPostureDetail = 0;
api.PostureDetail buildPostureDetail() {
  final o = api.PostureDetail();
  buildCounterPostureDetail++;
  if (buildCounterPostureDetail < 3) {
    o.advice = buildUnnamed7000();
    o.securityRisk = 'foo';
  }
  buildCounterPostureDetail--;
  return o;
}

void checkPostureDetail(api.PostureDetail o) {
  buildCounterPostureDetail++;
  if (buildCounterPostureDetail < 3) {
    checkUnnamed7000(o.advice!);
    unittest.expect(
      o.securityRisk!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.batteryLevel!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventType!,
      unittest.equals('foo'),
    );
  }
  buildCounterPowerManagementEvent--;
}

core.List<core.String> buildUnnamed7001() => [
      'foo',
      'foo',
    ];

void checkUnnamed7001(core.List<core.String> o) {
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

core.int buildCounterProxyInfo = 0;
api.ProxyInfo buildProxyInfo() {
  final o = api.ProxyInfo();
  buildCounterProxyInfo++;
  if (buildCounterProxyInfo < 3) {
    o.excludedHosts = buildUnnamed7001();
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
    checkUnnamed7001(o.excludedHosts!);
    unittest.expect(
      o.host!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pacUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.port!,
      unittest.equals(42),
    );
  }
  buildCounterProxyInfo--;
}

core.List<api.PostureDetail> buildUnnamed7002() => [
      buildPostureDetail(),
      buildPostureDetail(),
    ];

void checkUnnamed7002(core.List<api.PostureDetail> o) {
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
    o.postureDetails = buildUnnamed7002();
  }
  buildCounterSecurityPosture--;
  return o;
}

void checkSecurityPosture(api.SecurityPosture o) {
  buildCounterSecurityPosture++;
  if (buildCounterSecurityPosture < 3) {
    unittest.expect(
      o.devicePosture!,
      unittest.equals('foo'),
    );
    checkUnnamed7002(o.postureDetails!);
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
    o.qrCode = 'foo';
    o.signinEnrollmentToken = 'foo';
    o.signinUrl = 'foo';
  }
  buildCounterSigninDetail--;
  return o;
}

void checkSigninDetail(api.SigninDetail o) {
  buildCounterSigninDetail++;
  if (buildCounterSigninDetail < 3) {
    unittest.expect(
      o.allowPersonalUsage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.qrCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.signinEnrollmentToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.signinUrl!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.androidBuildNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.androidBuildTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.androidDevicePolicyVersionCode!,
      unittest.equals(42),
    );
    unittest.expect(
      o.androidDevicePolicyVersionName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.androidVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bootloaderVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceBuildSignature!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceKernelVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.primaryLanguageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.securityPatchLevel!,
      unittest.equals('foo'),
    );
    checkSystemUpdateInfo(o.systemUpdateInfo!);
  }
  buildCounterSoftwareInfo--;
}

core.Map<core.String, core.Object> buildUnnamed7003() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed7003(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o['x']!) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(
    casted11['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted11['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted11['string'],
    unittest.equals('foo'),
  );
  var casted12 = (o['y']!) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(
    casted12['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted12['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted12['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object>> buildUnnamed7004() => [
      buildUnnamed7003(),
      buildUnnamed7003(),
    ];

void checkUnnamed7004(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed7003(o[0]);
  checkUnnamed7003(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed7004();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed7004(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
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

core.List<api.FreezePeriod> buildUnnamed7005() => [
      buildFreezePeriod(),
      buildFreezePeriod(),
    ];

void checkUnnamed7005(core.List<api.FreezePeriod> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFreezePeriod(o[0]);
  checkFreezePeriod(o[1]);
}

core.int buildCounterSystemUpdate = 0;
api.SystemUpdate buildSystemUpdate() {
  final o = api.SystemUpdate();
  buildCounterSystemUpdate++;
  if (buildCounterSystemUpdate < 3) {
    o.endMinutes = 42;
    o.freezePeriods = buildUnnamed7005();
    o.startMinutes = 42;
    o.type = 'foo';
  }
  buildCounterSystemUpdate--;
  return o;
}

void checkSystemUpdate(api.SystemUpdate o) {
  buildCounterSystemUpdate++;
  if (buildCounterSystemUpdate < 3) {
    unittest.expect(
      o.endMinutes!,
      unittest.equals(42),
    );
    checkUnnamed7005(o.freezePeriods!);
    unittest.expect(
      o.startMinutes!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.updateReceivedTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateStatus!,
      unittest.equals('foo'),
    );
  }
  buildCounterSystemUpdateInfo--;
}

core.int buildCounterTelephonyInfo = 0;
api.TelephonyInfo buildTelephonyInfo() {
  final o = api.TelephonyInfo();
  buildCounterTelephonyInfo++;
  if (buildCounterTelephonyInfo < 3) {
    o.carrierName = 'foo';
    o.phoneNumber = 'foo';
  }
  buildCounterTelephonyInfo--;
  return o;
}

void checkTelephonyInfo(api.TelephonyInfo o) {
  buildCounterTelephonyInfo++;
  if (buildCounterTelephonyInfo < 3) {
    unittest.expect(
      o.carrierName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.accountIdentifier!,
      unittest.equals('foo'),
    );
  }
  buildCounterUser--;
}

core.Map<core.String, core.String> buildUnnamed7006() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed7006(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterUserFacingMessage = 0;
api.UserFacingMessage buildUserFacingMessage() {
  final o = api.UserFacingMessage();
  buildCounterUserFacingMessage++;
  if (buildCounterUserFacingMessage < 3) {
    o.defaultMessage = 'foo';
    o.localizedMessages = buildUnnamed7006();
  }
  buildCounterUserFacingMessage--;
  return o;
}

void checkUserFacingMessage(api.UserFacingMessage o) {
  buildCounterUserFacingMessage++;
  if (buildCounterUserFacingMessage < 3) {
    unittest.expect(
      o.defaultMessage!,
      unittest.equals('foo'),
    );
    checkUnnamed7006(o.localizedMessages!);
  }
  buildCounterUserFacingMessage--;
}

core.List<api.WebAppIcon> buildUnnamed7007() => [
      buildWebAppIcon(),
      buildWebAppIcon(),
    ];

void checkUnnamed7007(core.List<api.WebAppIcon> o) {
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
    o.icons = buildUnnamed7007();
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
    unittest.expect(
      o.displayMode!,
      unittest.equals('foo'),
    );
    checkUnnamed7007(o.icons!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionCode!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.imageData!,
      unittest.equals('foo'),
    );
  }
  buildCounterWebAppIcon--;
}

core.List<core.String> buildUnnamed7008() => [
      'foo',
      'foo',
    ];

void checkUnnamed7008(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7009() => [
      'foo',
      'foo',
    ];

void checkUnnamed7009(core.List<core.String> o) {
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

core.int buildCounterWebToken = 0;
api.WebToken buildWebToken() {
  final o = api.WebToken();
  buildCounterWebToken++;
  if (buildCounterWebToken < 3) {
    o.enabledFeatures = buildUnnamed7008();
    o.name = 'foo';
    o.parentFrameUrl = 'foo';
    o.permissions = buildUnnamed7009();
    o.value = 'foo';
  }
  buildCounterWebToken--;
  return o;
}

void checkWebToken(api.WebToken o) {
  buildCounterWebToken++;
  if (buildCounterWebToken < 3) {
    checkUnnamed7008(o.enabledFeatures!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parentFrameUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed7009(o.permissions!);
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterWebToken--;
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
    unittest.expect(
      o.wipeAfterDays!,
      unittest.equals(42),
    );
  }
  buildCounterWipeAction--;
}

core.List<core.String> buildUnnamed7010() => [
      'foo',
      'foo',
    ];

void checkUnnamed7010(core.List<core.String> o) {
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
  unittest.group('obj-schema-AdvancedSecurityOverrides', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdvancedSecurityOverrides();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdvancedSecurityOverrides.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdvancedSecurityOverrides(od);
    });
  });

  unittest.group('obj-schema-AlwaysOnVpnPackage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAlwaysOnVpnPackage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AlwaysOnVpnPackage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAlwaysOnVpnPackage(od);
    });
  });

  unittest.group('obj-schema-ApiLevelCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApiLevelCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApiLevelCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApiLevelCondition(od);
    });
  });

  unittest.group('obj-schema-AppTrackInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppTrackInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppTrackInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAppTrackInfo(od);
    });
  });

  unittest.group('obj-schema-Application', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Application.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApplication(od);
    });
  });

  unittest.group('obj-schema-ApplicationEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplicationEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplicationEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApplicationEvent(od);
    });
  });

  unittest.group('obj-schema-ApplicationPermission', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplicationPermission();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplicationPermission.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApplicationPermission(od);
    });
  });

  unittest.group('obj-schema-ApplicationPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplicationPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplicationPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApplicationPolicy(od);
    });
  });

  unittest.group('obj-schema-ApplicationReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplicationReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplicationReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApplicationReport(od);
    });
  });

  unittest.group('obj-schema-ApplicationReportingSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplicationReportingSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplicationReportingSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApplicationReportingSettings(od);
    });
  });

  unittest.group('obj-schema-BlockAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBlockAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BlockAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBlockAction(od);
    });
  });

  unittest.group('obj-schema-ChoosePrivateKeyRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildChoosePrivateKeyRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ChoosePrivateKeyRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkChoosePrivateKeyRule(od);
    });
  });

  unittest.group('obj-schema-Command', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommand();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Command.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCommand(od);
    });
  });

  unittest.group('obj-schema-CommonCriteriaModeInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommonCriteriaModeInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommonCriteriaModeInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCommonCriteriaModeInfo(od);
    });
  });

  unittest.group('obj-schema-ComplianceRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComplianceRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComplianceRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComplianceRule(od);
    });
  });

  unittest.group('obj-schema-ContactInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContactInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContactInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContactInfo(od);
    });
  });

  unittest.group('obj-schema-ContentProviderEndpoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContentProviderEndpoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContentProviderEndpoint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContentProviderEndpoint(od);
    });
  });

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Date.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDate(od);
    });
  });

  unittest.group('obj-schema-Device', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDevice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Device.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDevice(od);
    });
  });

  unittest.group('obj-schema-DeviceSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeviceSettings(od);
    });
  });

  unittest.group('obj-schema-Display', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisplay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Display.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDisplay(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-EnrollmentToken', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnrollmentToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnrollmentToken.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnrollmentToken(od);
    });
  });

  unittest.group('obj-schema-Enterprise', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnterprise();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Enterprise.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEnterprise(od);
    });
  });

  unittest.group('obj-schema-ExternalData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExternalData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExternalData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExternalData(od);
    });
  });

  unittest.group('obj-schema-FreezePeriod', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFreezePeriod();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FreezePeriod.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFreezePeriod(od);
    });
  });

  unittest.group('obj-schema-HardwareInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHardwareInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HardwareInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHardwareInfo(od);
    });
  });

  unittest.group('obj-schema-HardwareStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHardwareStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HardwareStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHardwareStatus(od);
    });
  });

  unittest.group('obj-schema-IssueCommandResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIssueCommandResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IssueCommandResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIssueCommandResponse(od);
    });
  });

  unittest.group('obj-schema-KeyedAppState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKeyedAppState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KeyedAppState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkKeyedAppState(od);
    });
  });

  unittest.group('obj-schema-KioskCustomization', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKioskCustomization();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KioskCustomization.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkKioskCustomization(od);
    });
  });

  unittest.group('obj-schema-LaunchAppAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLaunchAppAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LaunchAppAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLaunchAppAction(od);
    });
  });

  unittest.group('obj-schema-ListDevicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDevicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDevicesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDevicesResponse(od);
    });
  });

  unittest.group('obj-schema-ListEnterprisesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListEnterprisesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListEnterprisesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListEnterprisesResponse(od);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPoliciesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-ListWebAppsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListWebAppsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListWebAppsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListWebAppsResponse(od);
    });
  });

  unittest.group('obj-schema-ManagedConfigurationTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedConfigurationTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedConfigurationTemplate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedConfigurationTemplate(od);
    });
  });

  unittest.group('obj-schema-ManagedProperty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedProperty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedProperty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedProperty(od);
    });
  });

  unittest.group('obj-schema-ManagedPropertyEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedPropertyEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedPropertyEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkManagedPropertyEntry(od);
    });
  });

  unittest.group('obj-schema-MemoryEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMemoryEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MemoryEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMemoryEvent(od);
    });
  });

  unittest.group('obj-schema-MemoryInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMemoryInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.MemoryInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMemoryInfo(od);
    });
  });

  unittest.group('obj-schema-NetworkInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkInfo(od);
    });
  });

  unittest.group('obj-schema-NonComplianceDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNonComplianceDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NonComplianceDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNonComplianceDetail(od);
    });
  });

  unittest.group('obj-schema-NonComplianceDetailCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNonComplianceDetailCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NonComplianceDetailCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNonComplianceDetailCondition(od);
    });
  });

  unittest.group('obj-schema-OncCertificateProvider', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOncCertificateProvider();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OncCertificateProvider.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOncCertificateProvider(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-PackageNameList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPackageNameList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PackageNameList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPackageNameList(od);
    });
  });

  unittest.group('obj-schema-PasswordRequirements', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPasswordRequirements();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PasswordRequirements.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPasswordRequirements(od);
    });
  });

  unittest.group('obj-schema-PermissionGrant', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPermissionGrant();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PermissionGrant.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPermissionGrant(od);
    });
  });

  unittest.group('obj-schema-PersistentPreferredActivity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPersistentPreferredActivity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PersistentPreferredActivity.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPersistentPreferredActivity(od);
    });
  });

  unittest.group('obj-schema-PersonalApplicationPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPersonalApplicationPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PersonalApplicationPolicy.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPersonalApplicationPolicy(od);
    });
  });

  unittest.group('obj-schema-PersonalUsagePolicies', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPersonalUsagePolicies();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PersonalUsagePolicies.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPersonalUsagePolicies(od);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Policy.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-PolicyEnforcementRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyEnforcementRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyEnforcementRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPolicyEnforcementRule(od);
    });
  });

  unittest.group('obj-schema-PostureDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostureDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostureDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPostureDetail(od);
    });
  });

  unittest.group('obj-schema-PowerManagementEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPowerManagementEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PowerManagementEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPowerManagementEvent(od);
    });
  });

  unittest.group('obj-schema-ProxyInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProxyInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ProxyInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkProxyInfo(od);
    });
  });

  unittest.group('obj-schema-SecurityPosture', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecurityPosture();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecurityPosture.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSecurityPosture(od);
    });
  });

  unittest.group('obj-schema-SetupAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetupAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetupAction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSetupAction(od);
    });
  });

  unittest.group('obj-schema-SigninDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSigninDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SigninDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSigninDetail(od);
    });
  });

  unittest.group('obj-schema-SignupUrl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSignupUrl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SignupUrl.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSignupUrl(od);
    });
  });

  unittest.group('obj-schema-SoftwareInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSoftwareInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SoftwareInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSoftwareInfo(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-StatusReportingSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatusReportingSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StatusReportingSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStatusReportingSettings(od);
    });
  });

  unittest.group('obj-schema-SystemUpdate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSystemUpdate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SystemUpdate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSystemUpdate(od);
    });
  });

  unittest.group('obj-schema-SystemUpdateInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSystemUpdateInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SystemUpdateInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSystemUpdateInfo(od);
    });
  });

  unittest.group('obj-schema-TelephonyInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTelephonyInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TelephonyInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTelephonyInfo(od);
    });
  });

  unittest.group('obj-schema-TermsAndConditions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTermsAndConditions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TermsAndConditions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTermsAndConditions(od);
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

  unittest.group('obj-schema-UserFacingMessage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserFacingMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserFacingMessage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserFacingMessage(od);
    });
  });

  unittest.group('obj-schema-WebApp', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebApp();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.WebApp.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWebApp(od);
    });
  });

  unittest.group('obj-schema-WebAppIcon', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebAppIcon();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.WebAppIcon.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWebAppIcon(od);
    });
  });

  unittest.group('obj-schema-WebToken', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWebToken();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.WebToken.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWebToken(od);
    });
  });

  unittest.group('obj-schema-WipeAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWipeAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.WipeAction.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWipeAction(od);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Enterprise.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnterprise(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1/enterprises'),
        );
        pathOffset += 14;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEnterprise());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request,
          agreementAccepted: arg_agreementAccepted,
          enterpriseToken: arg_enterpriseToken,
          projectId: arg_projectId,
          signupUrlName: arg_signupUrlName,
          $fields: arg_$fields);
      checkEnterprise(response as api.Enterprise);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises;
      final arg_name = 'foo';
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises;
      final arg_name = 'foo';
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildEnterprise());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1/enterprises'),
        );
        pathOffset += 14;

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
        unittest.expect(
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListEnterprisesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          projectId: arg_projectId,
          view: arg_view,
          $fields: arg_$fields);
      checkListEnterprisesResponse(response as api.ListEnterprisesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises;
      final arg_request = buildEnterprise();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Enterprise.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnterprise(obj);

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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildEnterprise());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
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
          unittest.equals('v1/'),
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildApplication());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          languageCode: arg_languageCode, $fields: arg_$fields);
      checkApplication(response as api.Application);
    });
  });

  unittest.group('resource-EnterprisesDevicesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.devices;
      final arg_name = 'foo';
      final arg_wipeDataFlags = buildUnnamed7010();
      final arg_wipeReasonMessage = 'foo';
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
          unittest.equals('v1/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          wipeDataFlags: arg_wipeDataFlags,
          wipeReasonMessage: arg_wipeReasonMessage,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.devices;
      final arg_name = 'foo';
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDevice(response as api.Device);
    });

    unittest.test('method--issueCommand', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.devices;
      final arg_request = buildCommand();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Command.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCommand(obj);

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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.issueCommand(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.devices;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildListDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListDevicesResponse(response as api.ListDevicesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.devices;
      final arg_request = buildDevice();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Device.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDevice(obj);

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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildDevice());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkDevice(response as api.Device);
    });
  });

  unittest.group('resource-EnterprisesDevicesOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.devices.operations;
      final arg_name = 'foo';
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.cancel(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.devices.operations;
      final arg_name = 'foo';
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.devices.operations;
      final arg_name = 'foo';
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
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
          unittest.equals('v1/'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EnrollmentToken.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEnrollmentToken(obj);

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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildEnrollmentToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkEnrollmentToken(response as api.EnrollmentToken);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.enrollmentTokens;
      final arg_name = 'foo';
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });
  });

  unittest.group('resource-EnterprisesPoliciesResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.policies;
      final arg_name = 'foo';
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.policies;
      final arg_name = 'foo';
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildListPoliciesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListPoliciesResponse(response as api.ListPoliciesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.policies;
      final arg_request = buildPolicy();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Policy.fromJson(json as core.Map<core.String, core.dynamic>);
        checkPolicy(obj);

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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildPolicy());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkPolicy(response as api.Policy);
    });
  });

  unittest.group('resource-EnterprisesWebAppsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.webApps;
      final arg_request = buildWebApp();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.WebApp.fromJson(json as core.Map<core.String, core.dynamic>);
        checkWebApp(obj);

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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildWebApp());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkWebApp(response as api.WebApp);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.webApps;
      final arg_name = 'foo';
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.webApps;
      final arg_name = 'foo';
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildWebApp());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildListWebAppsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListWebAppsResponse(response as api.ListWebAppsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).enterprises.webApps;
      final arg_request = buildWebApp();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.WebApp.fromJson(json as core.Map<core.String, core.dynamic>);
        checkWebApp(obj);

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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildWebApp());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.WebToken.fromJson(json as core.Map<core.String, core.dynamic>);
        checkWebToken(obj);

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
          unittest.equals('v1/'),
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
        final resp = convert.json.encode(buildWebToken());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkWebToken(response as api.WebToken);
    });
  });

  unittest.group('resource-SignupUrlsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.AndroidManagementApi(mock).signupUrls;
      final arg_callbackUrl = 'foo';
      final arg_projectId = 'foo';
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
          unittest.equals('v1/signupUrls'),
        );
        pathOffset += 13;

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSignupUrl());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(
          callbackUrl: arg_callbackUrl,
          projectId: arg_projectId,
          $fields: arg_$fields);
      checkSignupUrl(response as api.SignupUrl);
    });
  });
}
