library googleapis.androidmanagement.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/androidmanagement/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterAdvancedSecurityOverrides = 0;
buildAdvancedSecurityOverrides() {
  var o = new api.AdvancedSecurityOverrides();
  buildCounterAdvancedSecurityOverrides++;
  if (buildCounterAdvancedSecurityOverrides < 3) {
    o.untrustedAppsPolicy = "foo";
  }
  buildCounterAdvancedSecurityOverrides--;
  return o;
}

checkAdvancedSecurityOverrides(api.AdvancedSecurityOverrides o) {
  buildCounterAdvancedSecurityOverrides++;
  if (buildCounterAdvancedSecurityOverrides < 3) {
    unittest.expect(o.untrustedAppsPolicy, unittest.equals('foo'));
  }
  buildCounterAdvancedSecurityOverrides--;
}

core.int buildCounterAlwaysOnVpnPackage = 0;
buildAlwaysOnVpnPackage() {
  var o = new api.AlwaysOnVpnPackage();
  buildCounterAlwaysOnVpnPackage++;
  if (buildCounterAlwaysOnVpnPackage < 3) {
    o.lockdownEnabled = true;
    o.packageName = "foo";
  }
  buildCounterAlwaysOnVpnPackage--;
  return o;
}

checkAlwaysOnVpnPackage(api.AlwaysOnVpnPackage o) {
  buildCounterAlwaysOnVpnPackage++;
  if (buildCounterAlwaysOnVpnPackage < 3) {
    unittest.expect(o.lockdownEnabled, unittest.isTrue);
    unittest.expect(o.packageName, unittest.equals('foo'));
  }
  buildCounterAlwaysOnVpnPackage--;
}

core.int buildCounterApiLevelCondition = 0;
buildApiLevelCondition() {
  var o = new api.ApiLevelCondition();
  buildCounterApiLevelCondition++;
  if (buildCounterApiLevelCondition < 3) {
    o.minApiLevel = 42;
  }
  buildCounterApiLevelCondition--;
  return o;
}

checkApiLevelCondition(api.ApiLevelCondition o) {
  buildCounterApiLevelCondition++;
  if (buildCounterApiLevelCondition < 3) {
    unittest.expect(o.minApiLevel, unittest.equals(42));
  }
  buildCounterApiLevelCondition--;
}

core.int buildCounterAppTrackInfo = 0;
buildAppTrackInfo() {
  var o = new api.AppTrackInfo();
  buildCounterAppTrackInfo++;
  if (buildCounterAppTrackInfo < 3) {
    o.trackAlias = "foo";
    o.trackId = "foo";
  }
  buildCounterAppTrackInfo--;
  return o;
}

checkAppTrackInfo(api.AppTrackInfo o) {
  buildCounterAppTrackInfo++;
  if (buildCounterAppTrackInfo < 3) {
    unittest.expect(o.trackAlias, unittest.equals('foo'));
    unittest.expect(o.trackId, unittest.equals('foo'));
  }
  buildCounterAppTrackInfo--;
}

buildUnnamed1123() {
  var o = new core.List<api.AppTrackInfo>();
  o.add(buildAppTrackInfo());
  o.add(buildAppTrackInfo());
  return o;
}

checkUnnamed1123(core.List<api.AppTrackInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAppTrackInfo(o[0]);
  checkAppTrackInfo(o[1]);
}

buildUnnamed1124() {
  var o = new core.List<api.ManagedProperty>();
  o.add(buildManagedProperty());
  o.add(buildManagedProperty());
  return o;
}

checkUnnamed1124(core.List<api.ManagedProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedProperty(o[0]);
  checkManagedProperty(o[1]);
}

buildUnnamed1125() {
  var o = new core.List<api.ApplicationPermission>();
  o.add(buildApplicationPermission());
  o.add(buildApplicationPermission());
  return o;
}

checkUnnamed1125(core.List<api.ApplicationPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationPermission(o[0]);
  checkApplicationPermission(o[1]);
}

core.int buildCounterApplication = 0;
buildApplication() {
  var o = new api.Application();
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    o.appTracks = buildUnnamed1123();
    o.managedProperties = buildUnnamed1124();
    o.name = "foo";
    o.permissions = buildUnnamed1125();
    o.title = "foo";
  }
  buildCounterApplication--;
  return o;
}

checkApplication(api.Application o) {
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    checkUnnamed1123(o.appTracks);
    checkUnnamed1124(o.managedProperties);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed1125(o.permissions);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterApplication--;
}

core.int buildCounterApplicationEvent = 0;
buildApplicationEvent() {
  var o = new api.ApplicationEvent();
  buildCounterApplicationEvent++;
  if (buildCounterApplicationEvent < 3) {
    o.createTime = "foo";
    o.eventType = "foo";
  }
  buildCounterApplicationEvent--;
  return o;
}

checkApplicationEvent(api.ApplicationEvent o) {
  buildCounterApplicationEvent++;
  if (buildCounterApplicationEvent < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.eventType, unittest.equals('foo'));
  }
  buildCounterApplicationEvent--;
}

core.int buildCounterApplicationPermission = 0;
buildApplicationPermission() {
  var o = new api.ApplicationPermission();
  buildCounterApplicationPermission++;
  if (buildCounterApplicationPermission < 3) {
    o.description = "foo";
    o.name = "foo";
    o.permissionId = "foo";
  }
  buildCounterApplicationPermission--;
  return o;
}

checkApplicationPermission(api.ApplicationPermission o) {
  buildCounterApplicationPermission++;
  if (buildCounterApplicationPermission < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.permissionId, unittest.equals('foo'));
  }
  buildCounterApplicationPermission--;
}

buildUnnamed1126() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1126(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1127() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1127(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1128() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed1128(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted1["bool"], unittest.equals(true));
  unittest.expect(casted1["string"], unittest.equals('foo'));
  var casted2 = (o["y"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
}

buildUnnamed1129() {
  var o = new core.List<api.PermissionGrant>();
  o.add(buildPermissionGrant());
  o.add(buildPermissionGrant());
  return o;
}

checkUnnamed1129(core.List<api.PermissionGrant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermissionGrant(o[0]);
  checkPermissionGrant(o[1]);
}

core.int buildCounterApplicationPolicy = 0;
buildApplicationPolicy() {
  var o = new api.ApplicationPolicy();
  buildCounterApplicationPolicy++;
  if (buildCounterApplicationPolicy < 3) {
    o.accessibleTrackIds = buildUnnamed1126();
    o.defaultPermissionPolicy = "foo";
    o.delegatedScopes = buildUnnamed1127();
    o.disabled = true;
    o.installType = "foo";
    o.lockTaskAllowed = true;
    o.managedConfiguration = buildUnnamed1128();
    o.managedConfigurationTemplate = buildManagedConfigurationTemplate();
    o.minimumVersionCode = 42;
    o.packageName = "foo";
    o.permissionGrants = buildUnnamed1129();
  }
  buildCounterApplicationPolicy--;
  return o;
}

checkApplicationPolicy(api.ApplicationPolicy o) {
  buildCounterApplicationPolicy++;
  if (buildCounterApplicationPolicy < 3) {
    checkUnnamed1126(o.accessibleTrackIds);
    unittest.expect(o.defaultPermissionPolicy, unittest.equals('foo'));
    checkUnnamed1127(o.delegatedScopes);
    unittest.expect(o.disabled, unittest.isTrue);
    unittest.expect(o.installType, unittest.equals('foo'));
    unittest.expect(o.lockTaskAllowed, unittest.isTrue);
    checkUnnamed1128(o.managedConfiguration);
    checkManagedConfigurationTemplate(o.managedConfigurationTemplate);
    unittest.expect(o.minimumVersionCode, unittest.equals(42));
    unittest.expect(o.packageName, unittest.equals('foo'));
    checkUnnamed1129(o.permissionGrants);
  }
  buildCounterApplicationPolicy--;
}

buildUnnamed1130() {
  var o = new core.List<api.ApplicationEvent>();
  o.add(buildApplicationEvent());
  o.add(buildApplicationEvent());
  return o;
}

checkUnnamed1130(core.List<api.ApplicationEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationEvent(o[0]);
  checkApplicationEvent(o[1]);
}

buildUnnamed1131() {
  var o = new core.List<api.KeyedAppState>();
  o.add(buildKeyedAppState());
  o.add(buildKeyedAppState());
  return o;
}

checkUnnamed1131(core.List<api.KeyedAppState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyedAppState(o[0]);
  checkKeyedAppState(o[1]);
}

buildUnnamed1132() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1132(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterApplicationReport = 0;
buildApplicationReport() {
  var o = new api.ApplicationReport();
  buildCounterApplicationReport++;
  if (buildCounterApplicationReport < 3) {
    o.applicationSource = "foo";
    o.displayName = "foo";
    o.events = buildUnnamed1130();
    o.installerPackageName = "foo";
    o.keyedAppStates = buildUnnamed1131();
    o.packageName = "foo";
    o.packageSha256Hash = "foo";
    o.signingKeyCertFingerprints = buildUnnamed1132();
    o.state = "foo";
    o.versionCode = 42;
    o.versionName = "foo";
  }
  buildCounterApplicationReport--;
  return o;
}

checkApplicationReport(api.ApplicationReport o) {
  buildCounterApplicationReport++;
  if (buildCounterApplicationReport < 3) {
    unittest.expect(o.applicationSource, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed1130(o.events);
    unittest.expect(o.installerPackageName, unittest.equals('foo'));
    checkUnnamed1131(o.keyedAppStates);
    unittest.expect(o.packageName, unittest.equals('foo'));
    unittest.expect(o.packageSha256Hash, unittest.equals('foo'));
    checkUnnamed1132(o.signingKeyCertFingerprints);
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.versionCode, unittest.equals(42));
    unittest.expect(o.versionName, unittest.equals('foo'));
  }
  buildCounterApplicationReport--;
}

core.int buildCounterApplicationReportingSettings = 0;
buildApplicationReportingSettings() {
  var o = new api.ApplicationReportingSettings();
  buildCounterApplicationReportingSettings++;
  if (buildCounterApplicationReportingSettings < 3) {
    o.includeRemovedApps = true;
  }
  buildCounterApplicationReportingSettings--;
  return o;
}

checkApplicationReportingSettings(api.ApplicationReportingSettings o) {
  buildCounterApplicationReportingSettings++;
  if (buildCounterApplicationReportingSettings < 3) {
    unittest.expect(o.includeRemovedApps, unittest.isTrue);
  }
  buildCounterApplicationReportingSettings--;
}

core.int buildCounterBlockAction = 0;
buildBlockAction() {
  var o = new api.BlockAction();
  buildCounterBlockAction++;
  if (buildCounterBlockAction < 3) {
    o.blockAfterDays = 42;
  }
  buildCounterBlockAction--;
  return o;
}

checkBlockAction(api.BlockAction o) {
  buildCounterBlockAction++;
  if (buildCounterBlockAction < 3) {
    unittest.expect(o.blockAfterDays, unittest.equals(42));
  }
  buildCounterBlockAction--;
}

buildUnnamed1133() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1133(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterChoosePrivateKeyRule = 0;
buildChoosePrivateKeyRule() {
  var o = new api.ChoosePrivateKeyRule();
  buildCounterChoosePrivateKeyRule++;
  if (buildCounterChoosePrivateKeyRule < 3) {
    o.packageNames = buildUnnamed1133();
    o.privateKeyAlias = "foo";
    o.urlPattern = "foo";
  }
  buildCounterChoosePrivateKeyRule--;
  return o;
}

checkChoosePrivateKeyRule(api.ChoosePrivateKeyRule o) {
  buildCounterChoosePrivateKeyRule++;
  if (buildCounterChoosePrivateKeyRule < 3) {
    checkUnnamed1133(o.packageNames);
    unittest.expect(o.privateKeyAlias, unittest.equals('foo'));
    unittest.expect(o.urlPattern, unittest.equals('foo'));
  }
  buildCounterChoosePrivateKeyRule--;
}

buildUnnamed1134() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1134(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCommand = 0;
buildCommand() {
  var o = new api.Command();
  buildCounterCommand++;
  if (buildCounterCommand < 3) {
    o.createTime = "foo";
    o.duration = "foo";
    o.errorCode = "foo";
    o.newPassword = "foo";
    o.resetPasswordFlags = buildUnnamed1134();
    o.type = "foo";
    o.userName = "foo";
  }
  buildCounterCommand--;
  return o;
}

checkCommand(api.Command o) {
  buildCounterCommand++;
  if (buildCounterCommand < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.duration, unittest.equals('foo'));
    unittest.expect(o.errorCode, unittest.equals('foo'));
    unittest.expect(o.newPassword, unittest.equals('foo'));
    checkUnnamed1134(o.resetPasswordFlags);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.userName, unittest.equals('foo'));
  }
  buildCounterCommand--;
}

buildUnnamed1135() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1135(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterComplianceRule = 0;
buildComplianceRule() {
  var o = new api.ComplianceRule();
  buildCounterComplianceRule++;
  if (buildCounterComplianceRule < 3) {
    o.apiLevelCondition = buildApiLevelCondition();
    o.disableApps = true;
    o.nonComplianceDetailCondition = buildNonComplianceDetailCondition();
    o.packageNamesToDisable = buildUnnamed1135();
  }
  buildCounterComplianceRule--;
  return o;
}

checkComplianceRule(api.ComplianceRule o) {
  buildCounterComplianceRule++;
  if (buildCounterComplianceRule < 3) {
    checkApiLevelCondition(o.apiLevelCondition);
    unittest.expect(o.disableApps, unittest.isTrue);
    checkNonComplianceDetailCondition(o.nonComplianceDetailCondition);
    checkUnnamed1135(o.packageNamesToDisable);
  }
  buildCounterComplianceRule--;
}

core.int buildCounterDate = 0;
buildDate() {
  var o = new api.Date();
  buildCounterDate++;
  if (buildCounterDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterDate--;
  return o;
}

checkDate(api.Date o) {
  buildCounterDate++;
  if (buildCounterDate < 3) {
    unittest.expect(o.day, unittest.equals(42));
    unittest.expect(o.month, unittest.equals(42));
    unittest.expect(o.year, unittest.equals(42));
  }
  buildCounterDate--;
}

buildUnnamed1136() {
  var o = new core.List<api.ApplicationReport>();
  o.add(buildApplicationReport());
  o.add(buildApplicationReport());
  return o;
}

checkUnnamed1136(core.List<api.ApplicationReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationReport(o[0]);
  checkApplicationReport(o[1]);
}

buildUnnamed1137() {
  var o = new core.List<api.Display>();
  o.add(buildDisplay());
  o.add(buildDisplay());
  return o;
}

checkUnnamed1137(core.List<api.Display> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisplay(o[0]);
  checkDisplay(o[1]);
}

buildUnnamed1138() {
  var o = new core.List<api.HardwareStatus>();
  o.add(buildHardwareStatus());
  o.add(buildHardwareStatus());
  return o;
}

checkUnnamed1138(core.List<api.HardwareStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHardwareStatus(o[0]);
  checkHardwareStatus(o[1]);
}

buildUnnamed1139() {
  var o = new core.List<api.MemoryEvent>();
  o.add(buildMemoryEvent());
  o.add(buildMemoryEvent());
  return o;
}

checkUnnamed1139(core.List<api.MemoryEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMemoryEvent(o[0]);
  checkMemoryEvent(o[1]);
}

buildUnnamed1140() {
  var o = new core.List<api.NonComplianceDetail>();
  o.add(buildNonComplianceDetail());
  o.add(buildNonComplianceDetail());
  return o;
}

checkUnnamed1140(core.List<api.NonComplianceDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNonComplianceDetail(o[0]);
  checkNonComplianceDetail(o[1]);
}

buildUnnamed1141() {
  var o = new core.List<api.PowerManagementEvent>();
  o.add(buildPowerManagementEvent());
  o.add(buildPowerManagementEvent());
  return o;
}

checkUnnamed1141(core.List<api.PowerManagementEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPowerManagementEvent(o[0]);
  checkPowerManagementEvent(o[1]);
}

buildUnnamed1142() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1142(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1143() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1143(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterDevice = 0;
buildDevice() {
  var o = new api.Device();
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    o.apiLevel = 42;
    o.applicationReports = buildUnnamed1136();
    o.appliedPolicyName = "foo";
    o.appliedPolicyVersion = "foo";
    o.appliedState = "foo";
    o.deviceSettings = buildDeviceSettings();
    o.disabledReason = buildUserFacingMessage();
    o.displays = buildUnnamed1137();
    o.enrollmentTime = "foo";
    o.enrollmentTokenData = "foo";
    o.enrollmentTokenName = "foo";
    o.hardwareInfo = buildHardwareInfo();
    o.hardwareStatusSamples = buildUnnamed1138();
    o.lastPolicyComplianceReportTime = "foo";
    o.lastPolicySyncTime = "foo";
    o.lastStatusReportTime = "foo";
    o.managementMode = "foo";
    o.memoryEvents = buildUnnamed1139();
    o.memoryInfo = buildMemoryInfo();
    o.name = "foo";
    o.networkInfo = buildNetworkInfo();
    o.nonComplianceDetails = buildUnnamed1140();
    o.policyCompliant = true;
    o.policyName = "foo";
    o.powerManagementEvents = buildUnnamed1141();
    o.previousDeviceNames = buildUnnamed1142();
    o.securityPosture = buildSecurityPosture();
    o.softwareInfo = buildSoftwareInfo();
    o.state = "foo";
    o.systemProperties = buildUnnamed1143();
    o.user = buildUser();
    o.userName = "foo";
  }
  buildCounterDevice--;
  return o;
}

checkDevice(api.Device o) {
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    unittest.expect(o.apiLevel, unittest.equals(42));
    checkUnnamed1136(o.applicationReports);
    unittest.expect(o.appliedPolicyName, unittest.equals('foo'));
    unittest.expect(o.appliedPolicyVersion, unittest.equals('foo'));
    unittest.expect(o.appliedState, unittest.equals('foo'));
    checkDeviceSettings(o.deviceSettings);
    checkUserFacingMessage(o.disabledReason);
    checkUnnamed1137(o.displays);
    unittest.expect(o.enrollmentTime, unittest.equals('foo'));
    unittest.expect(o.enrollmentTokenData, unittest.equals('foo'));
    unittest.expect(o.enrollmentTokenName, unittest.equals('foo'));
    checkHardwareInfo(o.hardwareInfo);
    checkUnnamed1138(o.hardwareStatusSamples);
    unittest.expect(o.lastPolicyComplianceReportTime, unittest.equals('foo'));
    unittest.expect(o.lastPolicySyncTime, unittest.equals('foo'));
    unittest.expect(o.lastStatusReportTime, unittest.equals('foo'));
    unittest.expect(o.managementMode, unittest.equals('foo'));
    checkUnnamed1139(o.memoryEvents);
    checkMemoryInfo(o.memoryInfo);
    unittest.expect(o.name, unittest.equals('foo'));
    checkNetworkInfo(o.networkInfo);
    checkUnnamed1140(o.nonComplianceDetails);
    unittest.expect(o.policyCompliant, unittest.isTrue);
    unittest.expect(o.policyName, unittest.equals('foo'));
    checkUnnamed1141(o.powerManagementEvents);
    checkUnnamed1142(o.previousDeviceNames);
    checkSecurityPosture(o.securityPosture);
    checkSoftwareInfo(o.softwareInfo);
    unittest.expect(o.state, unittest.equals('foo'));
    checkUnnamed1143(o.systemProperties);
    checkUser(o.user);
    unittest.expect(o.userName, unittest.equals('foo'));
  }
  buildCounterDevice--;
}

core.int buildCounterDeviceSettings = 0;
buildDeviceSettings() {
  var o = new api.DeviceSettings();
  buildCounterDeviceSettings++;
  if (buildCounterDeviceSettings < 3) {
    o.adbEnabled = true;
    o.developmentSettingsEnabled = true;
    o.encryptionStatus = "foo";
    o.isDeviceSecure = true;
    o.isEncrypted = true;
    o.unknownSourcesEnabled = true;
    o.verifyAppsEnabled = true;
  }
  buildCounterDeviceSettings--;
  return o;
}

checkDeviceSettings(api.DeviceSettings o) {
  buildCounterDeviceSettings++;
  if (buildCounterDeviceSettings < 3) {
    unittest.expect(o.adbEnabled, unittest.isTrue);
    unittest.expect(o.developmentSettingsEnabled, unittest.isTrue);
    unittest.expect(o.encryptionStatus, unittest.equals('foo'));
    unittest.expect(o.isDeviceSecure, unittest.isTrue);
    unittest.expect(o.isEncrypted, unittest.isTrue);
    unittest.expect(o.unknownSourcesEnabled, unittest.isTrue);
    unittest.expect(o.verifyAppsEnabled, unittest.isTrue);
  }
  buildCounterDeviceSettings--;
}

core.int buildCounterDisplay = 0;
buildDisplay() {
  var o = new api.Display();
  buildCounterDisplay++;
  if (buildCounterDisplay < 3) {
    o.density = 42;
    o.displayId = 42;
    o.height = 42;
    o.name = "foo";
    o.refreshRate = 42;
    o.state = "foo";
    o.width = 42;
  }
  buildCounterDisplay--;
  return o;
}

checkDisplay(api.Display o) {
  buildCounterDisplay++;
  if (buildCounterDisplay < 3) {
    unittest.expect(o.density, unittest.equals(42));
    unittest.expect(o.displayId, unittest.equals(42));
    unittest.expect(o.height, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.refreshRate, unittest.equals(42));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.width, unittest.equals(42));
  }
  buildCounterDisplay--;
}

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterEnrollmentToken = 0;
buildEnrollmentToken() {
  var o = new api.EnrollmentToken();
  buildCounterEnrollmentToken++;
  if (buildCounterEnrollmentToken < 3) {
    o.additionalData = "foo";
    o.duration = "foo";
    o.expirationTimestamp = "foo";
    o.name = "foo";
    o.oneTimeOnly = true;
    o.policyName = "foo";
    o.qrCode = "foo";
    o.user = buildUser();
    o.value = "foo";
  }
  buildCounterEnrollmentToken--;
  return o;
}

checkEnrollmentToken(api.EnrollmentToken o) {
  buildCounterEnrollmentToken++;
  if (buildCounterEnrollmentToken < 3) {
    unittest.expect(o.additionalData, unittest.equals('foo'));
    unittest.expect(o.duration, unittest.equals('foo'));
    unittest.expect(o.expirationTimestamp, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.oneTimeOnly, unittest.isTrue);
    unittest.expect(o.policyName, unittest.equals('foo'));
    unittest.expect(o.qrCode, unittest.equals('foo'));
    checkUser(o.user);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterEnrollmentToken--;
}

buildUnnamed1144() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1144(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1145() {
  var o = new core.List<api.SigninDetail>();
  o.add(buildSigninDetail());
  o.add(buildSigninDetail());
  return o;
}

checkUnnamed1145(core.List<api.SigninDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSigninDetail(o[0]);
  checkSigninDetail(o[1]);
}

buildUnnamed1146() {
  var o = new core.List<api.TermsAndConditions>();
  o.add(buildTermsAndConditions());
  o.add(buildTermsAndConditions());
  return o;
}

checkUnnamed1146(core.List<api.TermsAndConditions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTermsAndConditions(o[0]);
  checkTermsAndConditions(o[1]);
}

core.int buildCounterEnterprise = 0;
buildEnterprise() {
  var o = new api.Enterprise();
  buildCounterEnterprise++;
  if (buildCounterEnterprise < 3) {
    o.appAutoApprovalEnabled = true;
    o.enabledNotificationTypes = buildUnnamed1144();
    o.enterpriseDisplayName = "foo";
    o.logo = buildExternalData();
    o.name = "foo";
    o.primaryColor = 42;
    o.pubsubTopic = "foo";
    o.signinDetails = buildUnnamed1145();
    o.termsAndConditions = buildUnnamed1146();
  }
  buildCounterEnterprise--;
  return o;
}

checkEnterprise(api.Enterprise o) {
  buildCounterEnterprise++;
  if (buildCounterEnterprise < 3) {
    unittest.expect(o.appAutoApprovalEnabled, unittest.isTrue);
    checkUnnamed1144(o.enabledNotificationTypes);
    unittest.expect(o.enterpriseDisplayName, unittest.equals('foo'));
    checkExternalData(o.logo);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.primaryColor, unittest.equals(42));
    unittest.expect(o.pubsubTopic, unittest.equals('foo'));
    checkUnnamed1145(o.signinDetails);
    checkUnnamed1146(o.termsAndConditions);
  }
  buildCounterEnterprise--;
}

core.int buildCounterExternalData = 0;
buildExternalData() {
  var o = new api.ExternalData();
  buildCounterExternalData++;
  if (buildCounterExternalData < 3) {
    o.sha256Hash = "foo";
    o.url = "foo";
  }
  buildCounterExternalData--;
  return o;
}

checkExternalData(api.ExternalData o) {
  buildCounterExternalData++;
  if (buildCounterExternalData < 3) {
    unittest.expect(o.sha256Hash, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterExternalData--;
}

core.int buildCounterFreezePeriod = 0;
buildFreezePeriod() {
  var o = new api.FreezePeriod();
  buildCounterFreezePeriod++;
  if (buildCounterFreezePeriod < 3) {
    o.endDate = buildDate();
    o.startDate = buildDate();
  }
  buildCounterFreezePeriod--;
  return o;
}

checkFreezePeriod(api.FreezePeriod o) {
  buildCounterFreezePeriod++;
  if (buildCounterFreezePeriod < 3) {
    checkDate(o.endDate);
    checkDate(o.startDate);
  }
  buildCounterFreezePeriod--;
}

buildUnnamed1147() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed1147(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed1148() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed1148(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed1149() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed1149(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed1150() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed1150(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed1151() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed1151(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed1152() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed1152(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed1153() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed1153(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed1154() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed1154(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterHardwareInfo = 0;
buildHardwareInfo() {
  var o = new api.HardwareInfo();
  buildCounterHardwareInfo++;
  if (buildCounterHardwareInfo < 3) {
    o.batteryShutdownTemperatures = buildUnnamed1147();
    o.batteryThrottlingTemperatures = buildUnnamed1148();
    o.brand = "foo";
    o.cpuShutdownTemperatures = buildUnnamed1149();
    o.cpuThrottlingTemperatures = buildUnnamed1150();
    o.deviceBasebandVersion = "foo";
    o.gpuShutdownTemperatures = buildUnnamed1151();
    o.gpuThrottlingTemperatures = buildUnnamed1152();
    o.hardware = "foo";
    o.manufacturer = "foo";
    o.model = "foo";
    o.serialNumber = "foo";
    o.skinShutdownTemperatures = buildUnnamed1153();
    o.skinThrottlingTemperatures = buildUnnamed1154();
  }
  buildCounterHardwareInfo--;
  return o;
}

checkHardwareInfo(api.HardwareInfo o) {
  buildCounterHardwareInfo++;
  if (buildCounterHardwareInfo < 3) {
    checkUnnamed1147(o.batteryShutdownTemperatures);
    checkUnnamed1148(o.batteryThrottlingTemperatures);
    unittest.expect(o.brand, unittest.equals('foo'));
    checkUnnamed1149(o.cpuShutdownTemperatures);
    checkUnnamed1150(o.cpuThrottlingTemperatures);
    unittest.expect(o.deviceBasebandVersion, unittest.equals('foo'));
    checkUnnamed1151(o.gpuShutdownTemperatures);
    checkUnnamed1152(o.gpuThrottlingTemperatures);
    unittest.expect(o.hardware, unittest.equals('foo'));
    unittest.expect(o.manufacturer, unittest.equals('foo'));
    unittest.expect(o.model, unittest.equals('foo'));
    unittest.expect(o.serialNumber, unittest.equals('foo'));
    checkUnnamed1153(o.skinShutdownTemperatures);
    checkUnnamed1154(o.skinThrottlingTemperatures);
  }
  buildCounterHardwareInfo--;
}

buildUnnamed1155() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed1155(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed1156() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed1156(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed1157() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed1157(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed1158() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed1158(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed1159() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed1159(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed1160() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed1160(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterHardwareStatus = 0;
buildHardwareStatus() {
  var o = new api.HardwareStatus();
  buildCounterHardwareStatus++;
  if (buildCounterHardwareStatus < 3) {
    o.batteryTemperatures = buildUnnamed1155();
    o.cpuTemperatures = buildUnnamed1156();
    o.cpuUsages = buildUnnamed1157();
    o.createTime = "foo";
    o.fanSpeeds = buildUnnamed1158();
    o.gpuTemperatures = buildUnnamed1159();
    o.skinTemperatures = buildUnnamed1160();
  }
  buildCounterHardwareStatus--;
  return o;
}

checkHardwareStatus(api.HardwareStatus o) {
  buildCounterHardwareStatus++;
  if (buildCounterHardwareStatus < 3) {
    checkUnnamed1155(o.batteryTemperatures);
    checkUnnamed1156(o.cpuTemperatures);
    checkUnnamed1157(o.cpuUsages);
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkUnnamed1158(o.fanSpeeds);
    checkUnnamed1159(o.gpuTemperatures);
    checkUnnamed1160(o.skinTemperatures);
  }
  buildCounterHardwareStatus--;
}

core.int buildCounterKeyedAppState = 0;
buildKeyedAppState() {
  var o = new api.KeyedAppState();
  buildCounterKeyedAppState++;
  if (buildCounterKeyedAppState < 3) {
    o.createTime = "foo";
    o.data = "foo";
    o.key = "foo";
    o.lastUpdateTime = "foo";
    o.message = "foo";
    o.severity = "foo";
  }
  buildCounterKeyedAppState--;
  return o;
}

checkKeyedAppState(api.KeyedAppState o) {
  buildCounterKeyedAppState++;
  if (buildCounterKeyedAppState < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.data, unittest.equals('foo'));
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.lastUpdateTime, unittest.equals('foo'));
    unittest.expect(o.message, unittest.equals('foo'));
    unittest.expect(o.severity, unittest.equals('foo'));
  }
  buildCounterKeyedAppState--;
}

core.int buildCounterKioskCustomization = 0;
buildKioskCustomization() {
  var o = new api.KioskCustomization();
  buildCounterKioskCustomization++;
  if (buildCounterKioskCustomization < 3) {
    o.deviceSettings = "foo";
    o.powerButtonActions = "foo";
    o.statusBar = "foo";
    o.systemErrorWarnings = "foo";
    o.systemNavigation = "foo";
  }
  buildCounterKioskCustomization--;
  return o;
}

checkKioskCustomization(api.KioskCustomization o) {
  buildCounterKioskCustomization++;
  if (buildCounterKioskCustomization < 3) {
    unittest.expect(o.deviceSettings, unittest.equals('foo'));
    unittest.expect(o.powerButtonActions, unittest.equals('foo'));
    unittest.expect(o.statusBar, unittest.equals('foo'));
    unittest.expect(o.systemErrorWarnings, unittest.equals('foo'));
    unittest.expect(o.systemNavigation, unittest.equals('foo'));
  }
  buildCounterKioskCustomization--;
}

core.int buildCounterLaunchAppAction = 0;
buildLaunchAppAction() {
  var o = new api.LaunchAppAction();
  buildCounterLaunchAppAction++;
  if (buildCounterLaunchAppAction < 3) {
    o.packageName = "foo";
  }
  buildCounterLaunchAppAction--;
  return o;
}

checkLaunchAppAction(api.LaunchAppAction o) {
  buildCounterLaunchAppAction++;
  if (buildCounterLaunchAppAction < 3) {
    unittest.expect(o.packageName, unittest.equals('foo'));
  }
  buildCounterLaunchAppAction--;
}

buildUnnamed1161() {
  var o = new core.List<api.Device>();
  o.add(buildDevice());
  o.add(buildDevice());
  return o;
}

checkUnnamed1161(core.List<api.Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDevice(o[0]);
  checkDevice(o[1]);
}

core.int buildCounterListDevicesResponse = 0;
buildListDevicesResponse() {
  var o = new api.ListDevicesResponse();
  buildCounterListDevicesResponse++;
  if (buildCounterListDevicesResponse < 3) {
    o.devices = buildUnnamed1161();
    o.nextPageToken = "foo";
  }
  buildCounterListDevicesResponse--;
  return o;
}

checkListDevicesResponse(api.ListDevicesResponse o) {
  buildCounterListDevicesResponse++;
  if (buildCounterListDevicesResponse < 3) {
    checkUnnamed1161(o.devices);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListDevicesResponse--;
}

buildUnnamed1162() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed1162(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
buildListOperationsResponse() {
  var o = new api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = "foo";
    o.operations = buildUnnamed1162();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1162(o.operations);
  }
  buildCounterListOperationsResponse--;
}

buildUnnamed1163() {
  var o = new core.List<api.Policy>();
  o.add(buildPolicy());
  o.add(buildPolicy());
  return o;
}

checkUnnamed1163(core.List<api.Policy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicy(o[0]);
  checkPolicy(o[1]);
}

core.int buildCounterListPoliciesResponse = 0;
buildListPoliciesResponse() {
  var o = new api.ListPoliciesResponse();
  buildCounterListPoliciesResponse++;
  if (buildCounterListPoliciesResponse < 3) {
    o.nextPageToken = "foo";
    o.policies = buildUnnamed1163();
  }
  buildCounterListPoliciesResponse--;
  return o;
}

checkListPoliciesResponse(api.ListPoliciesResponse o) {
  buildCounterListPoliciesResponse++;
  if (buildCounterListPoliciesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1163(o.policies);
  }
  buildCounterListPoliciesResponse--;
}

buildUnnamed1164() {
  var o = new core.List<api.WebApp>();
  o.add(buildWebApp());
  o.add(buildWebApp());
  return o;
}

checkUnnamed1164(core.List<api.WebApp> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebApp(o[0]);
  checkWebApp(o[1]);
}

core.int buildCounterListWebAppsResponse = 0;
buildListWebAppsResponse() {
  var o = new api.ListWebAppsResponse();
  buildCounterListWebAppsResponse++;
  if (buildCounterListWebAppsResponse < 3) {
    o.nextPageToken = "foo";
    o.webApps = buildUnnamed1164();
  }
  buildCounterListWebAppsResponse--;
  return o;
}

checkListWebAppsResponse(api.ListWebAppsResponse o) {
  buildCounterListWebAppsResponse++;
  if (buildCounterListWebAppsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1164(o.webApps);
  }
  buildCounterListWebAppsResponse--;
}

buildUnnamed1165() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1165(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterManagedConfigurationTemplate = 0;
buildManagedConfigurationTemplate() {
  var o = new api.ManagedConfigurationTemplate();
  buildCounterManagedConfigurationTemplate++;
  if (buildCounterManagedConfigurationTemplate < 3) {
    o.configurationVariables = buildUnnamed1165();
    o.templateId = "foo";
  }
  buildCounterManagedConfigurationTemplate--;
  return o;
}

checkManagedConfigurationTemplate(api.ManagedConfigurationTemplate o) {
  buildCounterManagedConfigurationTemplate++;
  if (buildCounterManagedConfigurationTemplate < 3) {
    checkUnnamed1165(o.configurationVariables);
    unittest.expect(o.templateId, unittest.equals('foo'));
  }
  buildCounterManagedConfigurationTemplate--;
}

buildUnnamed1166() {
  var o = new core.List<api.ManagedPropertyEntry>();
  o.add(buildManagedPropertyEntry());
  o.add(buildManagedPropertyEntry());
  return o;
}

checkUnnamed1166(core.List<api.ManagedPropertyEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedPropertyEntry(o[0]);
  checkManagedPropertyEntry(o[1]);
}

buildUnnamed1167() {
  var o = new core.List<api.ManagedProperty>();
  o.add(buildManagedProperty());
  o.add(buildManagedProperty());
  return o;
}

checkUnnamed1167(core.List<api.ManagedProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedProperty(o[0]);
  checkManagedProperty(o[1]);
}

core.int buildCounterManagedProperty = 0;
buildManagedProperty() {
  var o = new api.ManagedProperty();
  buildCounterManagedProperty++;
  if (buildCounterManagedProperty < 3) {
    o.defaultValue = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.description = "foo";
    o.entries = buildUnnamed1166();
    o.key = "foo";
    o.nestedProperties = buildUnnamed1167();
    o.title = "foo";
    o.type = "foo";
  }
  buildCounterManagedProperty--;
  return o;
}

checkManagedProperty(api.ManagedProperty o) {
  buildCounterManagedProperty++;
  if (buildCounterManagedProperty < 3) {
    var casted3 = (o.defaultValue) as core.Map;
    unittest.expect(casted3, unittest.hasLength(3));
    unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted3["bool"], unittest.equals(true));
    unittest.expect(casted3["string"], unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed1166(o.entries);
    unittest.expect(o.key, unittest.equals('foo'));
    checkUnnamed1167(o.nestedProperties);
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterManagedProperty--;
}

core.int buildCounterManagedPropertyEntry = 0;
buildManagedPropertyEntry() {
  var o = new api.ManagedPropertyEntry();
  buildCounterManagedPropertyEntry++;
  if (buildCounterManagedPropertyEntry < 3) {
    o.name = "foo";
    o.value = "foo";
  }
  buildCounterManagedPropertyEntry--;
  return o;
}

checkManagedPropertyEntry(api.ManagedPropertyEntry o) {
  buildCounterManagedPropertyEntry++;
  if (buildCounterManagedPropertyEntry < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterManagedPropertyEntry--;
}

core.int buildCounterMemoryEvent = 0;
buildMemoryEvent() {
  var o = new api.MemoryEvent();
  buildCounterMemoryEvent++;
  if (buildCounterMemoryEvent < 3) {
    o.byteCount = "foo";
    o.createTime = "foo";
    o.eventType = "foo";
  }
  buildCounterMemoryEvent--;
  return o;
}

checkMemoryEvent(api.MemoryEvent o) {
  buildCounterMemoryEvent++;
  if (buildCounterMemoryEvent < 3) {
    unittest.expect(o.byteCount, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.eventType, unittest.equals('foo'));
  }
  buildCounterMemoryEvent--;
}

core.int buildCounterMemoryInfo = 0;
buildMemoryInfo() {
  var o = new api.MemoryInfo();
  buildCounterMemoryInfo++;
  if (buildCounterMemoryInfo < 3) {
    o.totalInternalStorage = "foo";
    o.totalRam = "foo";
  }
  buildCounterMemoryInfo--;
  return o;
}

checkMemoryInfo(api.MemoryInfo o) {
  buildCounterMemoryInfo++;
  if (buildCounterMemoryInfo < 3) {
    unittest.expect(o.totalInternalStorage, unittest.equals('foo'));
    unittest.expect(o.totalRam, unittest.equals('foo'));
  }
  buildCounterMemoryInfo--;
}

core.int buildCounterNetworkInfo = 0;
buildNetworkInfo() {
  var o = new api.NetworkInfo();
  buildCounterNetworkInfo++;
  if (buildCounterNetworkInfo < 3) {
    o.imei = "foo";
    o.meid = "foo";
    o.networkOperatorName = "foo";
    o.wifiMacAddress = "foo";
  }
  buildCounterNetworkInfo--;
  return o;
}

checkNetworkInfo(api.NetworkInfo o) {
  buildCounterNetworkInfo++;
  if (buildCounterNetworkInfo < 3) {
    unittest.expect(o.imei, unittest.equals('foo'));
    unittest.expect(o.meid, unittest.equals('foo'));
    unittest.expect(o.networkOperatorName, unittest.equals('foo'));
    unittest.expect(o.wifiMacAddress, unittest.equals('foo'));
  }
  buildCounterNetworkInfo--;
}

core.int buildCounterNonComplianceDetail = 0;
buildNonComplianceDetail() {
  var o = new api.NonComplianceDetail();
  buildCounterNonComplianceDetail++;
  if (buildCounterNonComplianceDetail < 3) {
    o.currentValue = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.fieldPath = "foo";
    o.installationFailureReason = "foo";
    o.nonComplianceReason = "foo";
    o.packageName = "foo";
    o.settingName = "foo";
  }
  buildCounterNonComplianceDetail--;
  return o;
}

checkNonComplianceDetail(api.NonComplianceDetail o) {
  buildCounterNonComplianceDetail++;
  if (buildCounterNonComplianceDetail < 3) {
    var casted4 = (o.currentValue) as core.Map;
    unittest.expect(casted4, unittest.hasLength(3));
    unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted4["bool"], unittest.equals(true));
    unittest.expect(casted4["string"], unittest.equals('foo'));
    unittest.expect(o.fieldPath, unittest.equals('foo'));
    unittest.expect(o.installationFailureReason, unittest.equals('foo'));
    unittest.expect(o.nonComplianceReason, unittest.equals('foo'));
    unittest.expect(o.packageName, unittest.equals('foo'));
    unittest.expect(o.settingName, unittest.equals('foo'));
  }
  buildCounterNonComplianceDetail--;
}

core.int buildCounterNonComplianceDetailCondition = 0;
buildNonComplianceDetailCondition() {
  var o = new api.NonComplianceDetailCondition();
  buildCounterNonComplianceDetailCondition++;
  if (buildCounterNonComplianceDetailCondition < 3) {
    o.nonComplianceReason = "foo";
    o.packageName = "foo";
    o.settingName = "foo";
  }
  buildCounterNonComplianceDetailCondition--;
  return o;
}

checkNonComplianceDetailCondition(api.NonComplianceDetailCondition o) {
  buildCounterNonComplianceDetailCondition++;
  if (buildCounterNonComplianceDetailCondition < 3) {
    unittest.expect(o.nonComplianceReason, unittest.equals('foo'));
    unittest.expect(o.packageName, unittest.equals('foo'));
    unittest.expect(o.settingName, unittest.equals('foo'));
  }
  buildCounterNonComplianceDetailCondition--;
}

buildUnnamed1168() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed1168(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted5["bool"], unittest.equals(true));
  unittest.expect(casted5["string"], unittest.equals('foo'));
  var casted6 = (o["y"]) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted6["bool"], unittest.equals(true));
  unittest.expect(casted6["string"], unittest.equals('foo'));
}

buildUnnamed1169() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed1169(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o["x"]) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted7["bool"], unittest.equals(true));
  unittest.expect(casted7["string"], unittest.equals('foo'));
  var casted8 = (o["y"]) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted8["bool"], unittest.equals(true));
  unittest.expect(casted8["string"], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
buildOperation() {
  var o = new api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed1168();
    o.name = "foo";
    o.response = buildUnnamed1169();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed1168(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed1169(o.response);
  }
  buildCounterOperation--;
}

buildUnnamed1170() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1170(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPackageNameList = 0;
buildPackageNameList() {
  var o = new api.PackageNameList();
  buildCounterPackageNameList++;
  if (buildCounterPackageNameList < 3) {
    o.packageNames = buildUnnamed1170();
  }
  buildCounterPackageNameList--;
  return o;
}

checkPackageNameList(api.PackageNameList o) {
  buildCounterPackageNameList++;
  if (buildCounterPackageNameList < 3) {
    checkUnnamed1170(o.packageNames);
  }
  buildCounterPackageNameList--;
}

core.int buildCounterPasswordRequirements = 0;
buildPasswordRequirements() {
  var o = new api.PasswordRequirements();
  buildCounterPasswordRequirements++;
  if (buildCounterPasswordRequirements < 3) {
    o.maximumFailedPasswordsForWipe = 42;
    o.passwordExpirationTimeout = "foo";
    o.passwordHistoryLength = 42;
    o.passwordMinimumLength = 42;
    o.passwordMinimumLetters = 42;
    o.passwordMinimumLowerCase = 42;
    o.passwordMinimumNonLetter = 42;
    o.passwordMinimumNumeric = 42;
    o.passwordMinimumSymbols = 42;
    o.passwordMinimumUpperCase = 42;
    o.passwordQuality = "foo";
    o.passwordScope = "foo";
    o.requirePasswordUnlock = "foo";
  }
  buildCounterPasswordRequirements--;
  return o;
}

checkPasswordRequirements(api.PasswordRequirements o) {
  buildCounterPasswordRequirements++;
  if (buildCounterPasswordRequirements < 3) {
    unittest.expect(o.maximumFailedPasswordsForWipe, unittest.equals(42));
    unittest.expect(o.passwordExpirationTimeout, unittest.equals('foo'));
    unittest.expect(o.passwordHistoryLength, unittest.equals(42));
    unittest.expect(o.passwordMinimumLength, unittest.equals(42));
    unittest.expect(o.passwordMinimumLetters, unittest.equals(42));
    unittest.expect(o.passwordMinimumLowerCase, unittest.equals(42));
    unittest.expect(o.passwordMinimumNonLetter, unittest.equals(42));
    unittest.expect(o.passwordMinimumNumeric, unittest.equals(42));
    unittest.expect(o.passwordMinimumSymbols, unittest.equals(42));
    unittest.expect(o.passwordMinimumUpperCase, unittest.equals(42));
    unittest.expect(o.passwordQuality, unittest.equals('foo'));
    unittest.expect(o.passwordScope, unittest.equals('foo'));
    unittest.expect(o.requirePasswordUnlock, unittest.equals('foo'));
  }
  buildCounterPasswordRequirements--;
}

core.int buildCounterPermissionGrant = 0;
buildPermissionGrant() {
  var o = new api.PermissionGrant();
  buildCounterPermissionGrant++;
  if (buildCounterPermissionGrant < 3) {
    o.permission = "foo";
    o.policy = "foo";
  }
  buildCounterPermissionGrant--;
  return o;
}

checkPermissionGrant(api.PermissionGrant o) {
  buildCounterPermissionGrant++;
  if (buildCounterPermissionGrant < 3) {
    unittest.expect(o.permission, unittest.equals('foo'));
    unittest.expect(o.policy, unittest.equals('foo'));
  }
  buildCounterPermissionGrant--;
}

buildUnnamed1171() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1171(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1172() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1172(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPersistentPreferredActivity = 0;
buildPersistentPreferredActivity() {
  var o = new api.PersistentPreferredActivity();
  buildCounterPersistentPreferredActivity++;
  if (buildCounterPersistentPreferredActivity < 3) {
    o.actions = buildUnnamed1171();
    o.categories = buildUnnamed1172();
    o.receiverActivity = "foo";
  }
  buildCounterPersistentPreferredActivity--;
  return o;
}

checkPersistentPreferredActivity(api.PersistentPreferredActivity o) {
  buildCounterPersistentPreferredActivity++;
  if (buildCounterPersistentPreferredActivity < 3) {
    checkUnnamed1171(o.actions);
    checkUnnamed1172(o.categories);
    unittest.expect(o.receiverActivity, unittest.equals('foo'));
  }
  buildCounterPersistentPreferredActivity--;
}

buildUnnamed1173() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1173(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1174() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1174(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1175() {
  var o = new core.List<api.ApplicationPolicy>();
  o.add(buildApplicationPolicy());
  o.add(buildApplicationPolicy());
  return o;
}

checkUnnamed1175(core.List<api.ApplicationPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationPolicy(o[0]);
  checkApplicationPolicy(o[1]);
}

buildUnnamed1176() {
  var o = new core.List<api.ChoosePrivateKeyRule>();
  o.add(buildChoosePrivateKeyRule());
  o.add(buildChoosePrivateKeyRule());
  return o;
}

checkUnnamed1176(core.List<api.ChoosePrivateKeyRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChoosePrivateKeyRule(o[0]);
  checkChoosePrivateKeyRule(o[1]);
}

buildUnnamed1177() {
  var o = new core.List<api.ComplianceRule>();
  o.add(buildComplianceRule());
  o.add(buildComplianceRule());
  return o;
}

checkUnnamed1177(core.List<api.ComplianceRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComplianceRule(o[0]);
  checkComplianceRule(o[1]);
}

buildUnnamed1178() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1178(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1179() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1179(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1180() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed1180(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted9 = (o["x"]) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted9["bool"], unittest.equals(true));
  unittest.expect(casted9["string"], unittest.equals('foo'));
  var casted10 = (o["y"]) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted10["bool"], unittest.equals(true));
  unittest.expect(casted10["string"], unittest.equals('foo'));
}

buildUnnamed1181() {
  var o = new core.List<api.PasswordRequirements>();
  o.add(buildPasswordRequirements());
  o.add(buildPasswordRequirements());
  return o;
}

checkUnnamed1181(core.List<api.PasswordRequirements> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPasswordRequirements(o[0]);
  checkPasswordRequirements(o[1]);
}

buildUnnamed1182() {
  var o = new core.List<api.PermissionGrant>();
  o.add(buildPermissionGrant());
  o.add(buildPermissionGrant());
  return o;
}

checkUnnamed1182(core.List<api.PermissionGrant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermissionGrant(o[0]);
  checkPermissionGrant(o[1]);
}

buildUnnamed1183() {
  var o = new core.List<api.PersistentPreferredActivity>();
  o.add(buildPersistentPreferredActivity());
  o.add(buildPersistentPreferredActivity());
  return o;
}

checkUnnamed1183(core.List<api.PersistentPreferredActivity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPersistentPreferredActivity(o[0]);
  checkPersistentPreferredActivity(o[1]);
}

buildUnnamed1184() {
  var o = new core.List<api.PolicyEnforcementRule>();
  o.add(buildPolicyEnforcementRule());
  o.add(buildPolicyEnforcementRule());
  return o;
}

checkUnnamed1184(core.List<api.PolicyEnforcementRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPolicyEnforcementRule(o[0]);
  checkPolicyEnforcementRule(o[1]);
}

buildUnnamed1185() {
  var o = new core.List<api.SetupAction>();
  o.add(buildSetupAction());
  o.add(buildSetupAction());
  return o;
}

checkUnnamed1185(core.List<api.SetupAction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSetupAction(o[0]);
  checkSetupAction(o[1]);
}

buildUnnamed1186() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1186(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.accountTypesWithManagementDisabled = buildUnnamed1173();
    o.addUserDisabled = true;
    o.adjustVolumeDisabled = true;
    o.advancedSecurityOverrides = buildAdvancedSecurityOverrides();
    o.alwaysOnVpnPackage = buildAlwaysOnVpnPackage();
    o.androidDevicePolicyTracks = buildUnnamed1174();
    o.appAutoUpdatePolicy = "foo";
    o.applications = buildUnnamed1175();
    o.autoTimeRequired = true;
    o.blockApplicationsEnabled = true;
    o.bluetoothConfigDisabled = true;
    o.bluetoothContactSharingDisabled = true;
    o.bluetoothDisabled = true;
    o.cameraDisabled = true;
    o.cellBroadcastsConfigDisabled = true;
    o.choosePrivateKeyRules = buildUnnamed1176();
    o.complianceRules = buildUnnamed1177();
    o.createWindowsDisabled = true;
    o.credentialsConfigDisabled = true;
    o.dataRoamingDisabled = true;
    o.debuggingFeaturesAllowed = true;
    o.defaultPermissionPolicy = "foo";
    o.deviceOwnerLockScreenInfo = buildUserFacingMessage();
    o.encryptionPolicy = "foo";
    o.ensureVerifyAppsEnabled = true;
    o.factoryResetDisabled = true;
    o.frpAdminEmails = buildUnnamed1178();
    o.funDisabled = true;
    o.installAppsDisabled = true;
    o.installUnknownSourcesAllowed = true;
    o.keyguardDisabled = true;
    o.keyguardDisabledFeatures = buildUnnamed1179();
    o.kioskCustomLauncherEnabled = true;
    o.kioskCustomization = buildKioskCustomization();
    o.locationMode = "foo";
    o.longSupportMessage = buildUserFacingMessage();
    o.maximumTimeToLock = "foo";
    o.minimumApiLevel = 42;
    o.mobileNetworksConfigDisabled = true;
    o.modifyAccountsDisabled = true;
    o.mountPhysicalMediaDisabled = true;
    o.name = "foo";
    o.networkEscapeHatchEnabled = true;
    o.networkResetDisabled = true;
    o.openNetworkConfiguration = buildUnnamed1180();
    o.outgoingBeamDisabled = true;
    o.outgoingCallsDisabled = true;
    o.passwordPolicies = buildUnnamed1181();
    o.passwordRequirements = buildPasswordRequirements();
    o.permissionGrants = buildUnnamed1182();
    o.permittedAccessibilityServices = buildPackageNameList();
    o.permittedInputMethods = buildPackageNameList();
    o.persistentPreferredActivities = buildUnnamed1183();
    o.playStoreMode = "foo";
    o.policyEnforcementRules = buildUnnamed1184();
    o.privateKeySelectionEnabled = true;
    o.recommendedGlobalProxy = buildProxyInfo();
    o.removeUserDisabled = true;
    o.safeBootDisabled = true;
    o.screenCaptureDisabled = true;
    o.setUserIconDisabled = true;
    o.setWallpaperDisabled = true;
    o.setupActions = buildUnnamed1185();
    o.shareLocationDisabled = true;
    o.shortSupportMessage = buildUserFacingMessage();
    o.skipFirstUseHintsEnabled = true;
    o.smsDisabled = true;
    o.statusBarDisabled = true;
    o.statusReportingSettings = buildStatusReportingSettings();
    o.stayOnPluggedModes = buildUnnamed1186();
    o.systemUpdate = buildSystemUpdate();
    o.tetheringConfigDisabled = true;
    o.uninstallAppsDisabled = true;
    o.unmuteMicrophoneDisabled = true;
    o.usbFileTransferDisabled = true;
    o.usbMassStorageEnabled = true;
    o.version = "foo";
    o.vpnConfigDisabled = true;
    o.wifiConfigDisabled = true;
    o.wifiConfigsLockdownEnabled = true;
  }
  buildCounterPolicy--;
  return o;
}

checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed1173(o.accountTypesWithManagementDisabled);
    unittest.expect(o.addUserDisabled, unittest.isTrue);
    unittest.expect(o.adjustVolumeDisabled, unittest.isTrue);
    checkAdvancedSecurityOverrides(o.advancedSecurityOverrides);
    checkAlwaysOnVpnPackage(o.alwaysOnVpnPackage);
    checkUnnamed1174(o.androidDevicePolicyTracks);
    unittest.expect(o.appAutoUpdatePolicy, unittest.equals('foo'));
    checkUnnamed1175(o.applications);
    unittest.expect(o.autoTimeRequired, unittest.isTrue);
    unittest.expect(o.blockApplicationsEnabled, unittest.isTrue);
    unittest.expect(o.bluetoothConfigDisabled, unittest.isTrue);
    unittest.expect(o.bluetoothContactSharingDisabled, unittest.isTrue);
    unittest.expect(o.bluetoothDisabled, unittest.isTrue);
    unittest.expect(o.cameraDisabled, unittest.isTrue);
    unittest.expect(o.cellBroadcastsConfigDisabled, unittest.isTrue);
    checkUnnamed1176(o.choosePrivateKeyRules);
    checkUnnamed1177(o.complianceRules);
    unittest.expect(o.createWindowsDisabled, unittest.isTrue);
    unittest.expect(o.credentialsConfigDisabled, unittest.isTrue);
    unittest.expect(o.dataRoamingDisabled, unittest.isTrue);
    unittest.expect(o.debuggingFeaturesAllowed, unittest.isTrue);
    unittest.expect(o.defaultPermissionPolicy, unittest.equals('foo'));
    checkUserFacingMessage(o.deviceOwnerLockScreenInfo);
    unittest.expect(o.encryptionPolicy, unittest.equals('foo'));
    unittest.expect(o.ensureVerifyAppsEnabled, unittest.isTrue);
    unittest.expect(o.factoryResetDisabled, unittest.isTrue);
    checkUnnamed1178(o.frpAdminEmails);
    unittest.expect(o.funDisabled, unittest.isTrue);
    unittest.expect(o.installAppsDisabled, unittest.isTrue);
    unittest.expect(o.installUnknownSourcesAllowed, unittest.isTrue);
    unittest.expect(o.keyguardDisabled, unittest.isTrue);
    checkUnnamed1179(o.keyguardDisabledFeatures);
    unittest.expect(o.kioskCustomLauncherEnabled, unittest.isTrue);
    checkKioskCustomization(o.kioskCustomization);
    unittest.expect(o.locationMode, unittest.equals('foo'));
    checkUserFacingMessage(o.longSupportMessage);
    unittest.expect(o.maximumTimeToLock, unittest.equals('foo'));
    unittest.expect(o.minimumApiLevel, unittest.equals(42));
    unittest.expect(o.mobileNetworksConfigDisabled, unittest.isTrue);
    unittest.expect(o.modifyAccountsDisabled, unittest.isTrue);
    unittest.expect(o.mountPhysicalMediaDisabled, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.networkEscapeHatchEnabled, unittest.isTrue);
    unittest.expect(o.networkResetDisabled, unittest.isTrue);
    checkUnnamed1180(o.openNetworkConfiguration);
    unittest.expect(o.outgoingBeamDisabled, unittest.isTrue);
    unittest.expect(o.outgoingCallsDisabled, unittest.isTrue);
    checkUnnamed1181(o.passwordPolicies);
    checkPasswordRequirements(o.passwordRequirements);
    checkUnnamed1182(o.permissionGrants);
    checkPackageNameList(o.permittedAccessibilityServices);
    checkPackageNameList(o.permittedInputMethods);
    checkUnnamed1183(o.persistentPreferredActivities);
    unittest.expect(o.playStoreMode, unittest.equals('foo'));
    checkUnnamed1184(o.policyEnforcementRules);
    unittest.expect(o.privateKeySelectionEnabled, unittest.isTrue);
    checkProxyInfo(o.recommendedGlobalProxy);
    unittest.expect(o.removeUserDisabled, unittest.isTrue);
    unittest.expect(o.safeBootDisabled, unittest.isTrue);
    unittest.expect(o.screenCaptureDisabled, unittest.isTrue);
    unittest.expect(o.setUserIconDisabled, unittest.isTrue);
    unittest.expect(o.setWallpaperDisabled, unittest.isTrue);
    checkUnnamed1185(o.setupActions);
    unittest.expect(o.shareLocationDisabled, unittest.isTrue);
    checkUserFacingMessage(o.shortSupportMessage);
    unittest.expect(o.skipFirstUseHintsEnabled, unittest.isTrue);
    unittest.expect(o.smsDisabled, unittest.isTrue);
    unittest.expect(o.statusBarDisabled, unittest.isTrue);
    checkStatusReportingSettings(o.statusReportingSettings);
    checkUnnamed1186(o.stayOnPluggedModes);
    checkSystemUpdate(o.systemUpdate);
    unittest.expect(o.tetheringConfigDisabled, unittest.isTrue);
    unittest.expect(o.uninstallAppsDisabled, unittest.isTrue);
    unittest.expect(o.unmuteMicrophoneDisabled, unittest.isTrue);
    unittest.expect(o.usbFileTransferDisabled, unittest.isTrue);
    unittest.expect(o.usbMassStorageEnabled, unittest.isTrue);
    unittest.expect(o.version, unittest.equals('foo'));
    unittest.expect(o.vpnConfigDisabled, unittest.isTrue);
    unittest.expect(o.wifiConfigDisabled, unittest.isTrue);
    unittest.expect(o.wifiConfigsLockdownEnabled, unittest.isTrue);
  }
  buildCounterPolicy--;
}

core.int buildCounterPolicyEnforcementRule = 0;
buildPolicyEnforcementRule() {
  var o = new api.PolicyEnforcementRule();
  buildCounterPolicyEnforcementRule++;
  if (buildCounterPolicyEnforcementRule < 3) {
    o.blockAction = buildBlockAction();
    o.settingName = "foo";
    o.wipeAction = buildWipeAction();
  }
  buildCounterPolicyEnforcementRule--;
  return o;
}

checkPolicyEnforcementRule(api.PolicyEnforcementRule o) {
  buildCounterPolicyEnforcementRule++;
  if (buildCounterPolicyEnforcementRule < 3) {
    checkBlockAction(o.blockAction);
    unittest.expect(o.settingName, unittest.equals('foo'));
    checkWipeAction(o.wipeAction);
  }
  buildCounterPolicyEnforcementRule--;
}

buildUnnamed1187() {
  var o = new core.List<api.UserFacingMessage>();
  o.add(buildUserFacingMessage());
  o.add(buildUserFacingMessage());
  return o;
}

checkUnnamed1187(core.List<api.UserFacingMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserFacingMessage(o[0]);
  checkUserFacingMessage(o[1]);
}

core.int buildCounterPostureDetail = 0;
buildPostureDetail() {
  var o = new api.PostureDetail();
  buildCounterPostureDetail++;
  if (buildCounterPostureDetail < 3) {
    o.advice = buildUnnamed1187();
    o.securityRisk = "foo";
  }
  buildCounterPostureDetail--;
  return o;
}

checkPostureDetail(api.PostureDetail o) {
  buildCounterPostureDetail++;
  if (buildCounterPostureDetail < 3) {
    checkUnnamed1187(o.advice);
    unittest.expect(o.securityRisk, unittest.equals('foo'));
  }
  buildCounterPostureDetail--;
}

core.int buildCounterPowerManagementEvent = 0;
buildPowerManagementEvent() {
  var o = new api.PowerManagementEvent();
  buildCounterPowerManagementEvent++;
  if (buildCounterPowerManagementEvent < 3) {
    o.batteryLevel = 42.0;
    o.createTime = "foo";
    o.eventType = "foo";
  }
  buildCounterPowerManagementEvent--;
  return o;
}

checkPowerManagementEvent(api.PowerManagementEvent o) {
  buildCounterPowerManagementEvent++;
  if (buildCounterPowerManagementEvent < 3) {
    unittest.expect(o.batteryLevel, unittest.equals(42.0));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.eventType, unittest.equals('foo'));
  }
  buildCounterPowerManagementEvent--;
}

buildUnnamed1188() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1188(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterProxyInfo = 0;
buildProxyInfo() {
  var o = new api.ProxyInfo();
  buildCounterProxyInfo++;
  if (buildCounterProxyInfo < 3) {
    o.excludedHosts = buildUnnamed1188();
    o.host = "foo";
    o.pacUri = "foo";
    o.port = 42;
  }
  buildCounterProxyInfo--;
  return o;
}

checkProxyInfo(api.ProxyInfo o) {
  buildCounterProxyInfo++;
  if (buildCounterProxyInfo < 3) {
    checkUnnamed1188(o.excludedHosts);
    unittest.expect(o.host, unittest.equals('foo'));
    unittest.expect(o.pacUri, unittest.equals('foo'));
    unittest.expect(o.port, unittest.equals(42));
  }
  buildCounterProxyInfo--;
}

buildUnnamed1189() {
  var o = new core.List<api.PostureDetail>();
  o.add(buildPostureDetail());
  o.add(buildPostureDetail());
  return o;
}

checkUnnamed1189(core.List<api.PostureDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPostureDetail(o[0]);
  checkPostureDetail(o[1]);
}

core.int buildCounterSecurityPosture = 0;
buildSecurityPosture() {
  var o = new api.SecurityPosture();
  buildCounterSecurityPosture++;
  if (buildCounterSecurityPosture < 3) {
    o.devicePosture = "foo";
    o.postureDetails = buildUnnamed1189();
  }
  buildCounterSecurityPosture--;
  return o;
}

checkSecurityPosture(api.SecurityPosture o) {
  buildCounterSecurityPosture++;
  if (buildCounterSecurityPosture < 3) {
    unittest.expect(o.devicePosture, unittest.equals('foo'));
    checkUnnamed1189(o.postureDetails);
  }
  buildCounterSecurityPosture--;
}

core.int buildCounterSetupAction = 0;
buildSetupAction() {
  var o = new api.SetupAction();
  buildCounterSetupAction++;
  if (buildCounterSetupAction < 3) {
    o.description = buildUserFacingMessage();
    o.launchApp = buildLaunchAppAction();
    o.title = buildUserFacingMessage();
  }
  buildCounterSetupAction--;
  return o;
}

checkSetupAction(api.SetupAction o) {
  buildCounterSetupAction++;
  if (buildCounterSetupAction < 3) {
    checkUserFacingMessage(o.description);
    checkLaunchAppAction(o.launchApp);
    checkUserFacingMessage(o.title);
  }
  buildCounterSetupAction--;
}

core.int buildCounterSigninDetail = 0;
buildSigninDetail() {
  var o = new api.SigninDetail();
  buildCounterSigninDetail++;
  if (buildCounterSigninDetail < 3) {
    o.qrCode = "foo";
    o.signinEnrollmentToken = "foo";
    o.signinUrl = "foo";
  }
  buildCounterSigninDetail--;
  return o;
}

checkSigninDetail(api.SigninDetail o) {
  buildCounterSigninDetail++;
  if (buildCounterSigninDetail < 3) {
    unittest.expect(o.qrCode, unittest.equals('foo'));
    unittest.expect(o.signinEnrollmentToken, unittest.equals('foo'));
    unittest.expect(o.signinUrl, unittest.equals('foo'));
  }
  buildCounterSigninDetail--;
}

core.int buildCounterSignupUrl = 0;
buildSignupUrl() {
  var o = new api.SignupUrl();
  buildCounterSignupUrl++;
  if (buildCounterSignupUrl < 3) {
    o.name = "foo";
    o.url = "foo";
  }
  buildCounterSignupUrl--;
  return o;
}

checkSignupUrl(api.SignupUrl o) {
  buildCounterSignupUrl++;
  if (buildCounterSignupUrl < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterSignupUrl--;
}

core.int buildCounterSoftwareInfo = 0;
buildSoftwareInfo() {
  var o = new api.SoftwareInfo();
  buildCounterSoftwareInfo++;
  if (buildCounterSoftwareInfo < 3) {
    o.androidBuildNumber = "foo";
    o.androidBuildTime = "foo";
    o.androidDevicePolicyVersionCode = 42;
    o.androidDevicePolicyVersionName = "foo";
    o.androidVersion = "foo";
    o.bootloaderVersion = "foo";
    o.deviceBuildSignature = "foo";
    o.deviceKernelVersion = "foo";
    o.primaryLanguageCode = "foo";
    o.securityPatchLevel = "foo";
  }
  buildCounterSoftwareInfo--;
  return o;
}

checkSoftwareInfo(api.SoftwareInfo o) {
  buildCounterSoftwareInfo++;
  if (buildCounterSoftwareInfo < 3) {
    unittest.expect(o.androidBuildNumber, unittest.equals('foo'));
    unittest.expect(o.androidBuildTime, unittest.equals('foo'));
    unittest.expect(o.androidDevicePolicyVersionCode, unittest.equals(42));
    unittest.expect(o.androidDevicePolicyVersionName, unittest.equals('foo'));
    unittest.expect(o.androidVersion, unittest.equals('foo'));
    unittest.expect(o.bootloaderVersion, unittest.equals('foo'));
    unittest.expect(o.deviceBuildSignature, unittest.equals('foo'));
    unittest.expect(o.deviceKernelVersion, unittest.equals('foo'));
    unittest.expect(o.primaryLanguageCode, unittest.equals('foo'));
    unittest.expect(o.securityPatchLevel, unittest.equals('foo'));
  }
  buildCounterSoftwareInfo--;
}

buildUnnamed1190() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed1190(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted11 = (o["x"]) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(casted11["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted11["bool"], unittest.equals(true));
  unittest.expect(casted11["string"], unittest.equals('foo'));
  var casted12 = (o["y"]) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(casted12["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted12["bool"], unittest.equals(true));
  unittest.expect(casted12["string"], unittest.equals('foo'));
}

buildUnnamed1191() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed1190());
  o.add(buildUnnamed1190());
  return o;
}

checkUnnamed1191(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1190(o[0]);
  checkUnnamed1190(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed1191();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed1191(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterStatusReportingSettings = 0;
buildStatusReportingSettings() {
  var o = new api.StatusReportingSettings();
  buildCounterStatusReportingSettings++;
  if (buildCounterStatusReportingSettings < 3) {
    o.applicationReportingSettings = buildApplicationReportingSettings();
    o.applicationReportsEnabled = true;
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

checkStatusReportingSettings(api.StatusReportingSettings o) {
  buildCounterStatusReportingSettings++;
  if (buildCounterStatusReportingSettings < 3) {
    checkApplicationReportingSettings(o.applicationReportingSettings);
    unittest.expect(o.applicationReportsEnabled, unittest.isTrue);
    unittest.expect(o.deviceSettingsEnabled, unittest.isTrue);
    unittest.expect(o.displayInfoEnabled, unittest.isTrue);
    unittest.expect(o.hardwareStatusEnabled, unittest.isTrue);
    unittest.expect(o.memoryInfoEnabled, unittest.isTrue);
    unittest.expect(o.networkInfoEnabled, unittest.isTrue);
    unittest.expect(o.powerManagementEventsEnabled, unittest.isTrue);
    unittest.expect(o.softwareInfoEnabled, unittest.isTrue);
    unittest.expect(o.systemPropertiesEnabled, unittest.isTrue);
  }
  buildCounterStatusReportingSettings--;
}

buildUnnamed1192() {
  var o = new core.List<api.FreezePeriod>();
  o.add(buildFreezePeriod());
  o.add(buildFreezePeriod());
  return o;
}

checkUnnamed1192(core.List<api.FreezePeriod> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFreezePeriod(o[0]);
  checkFreezePeriod(o[1]);
}

core.int buildCounterSystemUpdate = 0;
buildSystemUpdate() {
  var o = new api.SystemUpdate();
  buildCounterSystemUpdate++;
  if (buildCounterSystemUpdate < 3) {
    o.endMinutes = 42;
    o.freezePeriods = buildUnnamed1192();
    o.startMinutes = 42;
    o.type = "foo";
  }
  buildCounterSystemUpdate--;
  return o;
}

checkSystemUpdate(api.SystemUpdate o) {
  buildCounterSystemUpdate++;
  if (buildCounterSystemUpdate < 3) {
    unittest.expect(o.endMinutes, unittest.equals(42));
    checkUnnamed1192(o.freezePeriods);
    unittest.expect(o.startMinutes, unittest.equals(42));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterSystemUpdate--;
}

core.int buildCounterTermsAndConditions = 0;
buildTermsAndConditions() {
  var o = new api.TermsAndConditions();
  buildCounterTermsAndConditions++;
  if (buildCounterTermsAndConditions < 3) {
    o.content = buildUserFacingMessage();
    o.header = buildUserFacingMessage();
  }
  buildCounterTermsAndConditions--;
  return o;
}

checkTermsAndConditions(api.TermsAndConditions o) {
  buildCounterTermsAndConditions++;
  if (buildCounterTermsAndConditions < 3) {
    checkUserFacingMessage(o.content);
    checkUserFacingMessage(o.header);
  }
  buildCounterTermsAndConditions--;
}

core.int buildCounterUser = 0;
buildUser() {
  var o = new api.User();
  buildCounterUser++;
  if (buildCounterUser < 3) {
    o.accountIdentifier = "foo";
  }
  buildCounterUser--;
  return o;
}

checkUser(api.User o) {
  buildCounterUser++;
  if (buildCounterUser < 3) {
    unittest.expect(o.accountIdentifier, unittest.equals('foo'));
  }
  buildCounterUser--;
}

buildUnnamed1193() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1193(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterUserFacingMessage = 0;
buildUserFacingMessage() {
  var o = new api.UserFacingMessage();
  buildCounterUserFacingMessage++;
  if (buildCounterUserFacingMessage < 3) {
    o.defaultMessage = "foo";
    o.localizedMessages = buildUnnamed1193();
  }
  buildCounterUserFacingMessage--;
  return o;
}

checkUserFacingMessage(api.UserFacingMessage o) {
  buildCounterUserFacingMessage++;
  if (buildCounterUserFacingMessage < 3) {
    unittest.expect(o.defaultMessage, unittest.equals('foo'));
    checkUnnamed1193(o.localizedMessages);
  }
  buildCounterUserFacingMessage--;
}

buildUnnamed1194() {
  var o = new core.List<api.WebAppIcon>();
  o.add(buildWebAppIcon());
  o.add(buildWebAppIcon());
  return o;
}

checkUnnamed1194(core.List<api.WebAppIcon> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWebAppIcon(o[0]);
  checkWebAppIcon(o[1]);
}

core.int buildCounterWebApp = 0;
buildWebApp() {
  var o = new api.WebApp();
  buildCounterWebApp++;
  if (buildCounterWebApp < 3) {
    o.displayMode = "foo";
    o.icons = buildUnnamed1194();
    o.name = "foo";
    o.startUrl = "foo";
    o.title = "foo";
    o.versionCode = "foo";
  }
  buildCounterWebApp--;
  return o;
}

checkWebApp(api.WebApp o) {
  buildCounterWebApp++;
  if (buildCounterWebApp < 3) {
    unittest.expect(o.displayMode, unittest.equals('foo'));
    checkUnnamed1194(o.icons);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.startUrl, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
    unittest.expect(o.versionCode, unittest.equals('foo'));
  }
  buildCounterWebApp--;
}

core.int buildCounterWebAppIcon = 0;
buildWebAppIcon() {
  var o = new api.WebAppIcon();
  buildCounterWebAppIcon++;
  if (buildCounterWebAppIcon < 3) {
    o.imageData = "foo";
  }
  buildCounterWebAppIcon--;
  return o;
}

checkWebAppIcon(api.WebAppIcon o) {
  buildCounterWebAppIcon++;
  if (buildCounterWebAppIcon < 3) {
    unittest.expect(o.imageData, unittest.equals('foo'));
  }
  buildCounterWebAppIcon--;
}

buildUnnamed1195() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1195(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1196() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1196(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterWebToken = 0;
buildWebToken() {
  var o = new api.WebToken();
  buildCounterWebToken++;
  if (buildCounterWebToken < 3) {
    o.enabledFeatures = buildUnnamed1195();
    o.name = "foo";
    o.parentFrameUrl = "foo";
    o.permissions = buildUnnamed1196();
    o.value = "foo";
  }
  buildCounterWebToken--;
  return o;
}

checkWebToken(api.WebToken o) {
  buildCounterWebToken++;
  if (buildCounterWebToken < 3) {
    checkUnnamed1195(o.enabledFeatures);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.parentFrameUrl, unittest.equals('foo'));
    checkUnnamed1196(o.permissions);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterWebToken--;
}

core.int buildCounterWipeAction = 0;
buildWipeAction() {
  var o = new api.WipeAction();
  buildCounterWipeAction++;
  if (buildCounterWipeAction < 3) {
    o.preserveFrp = true;
    o.wipeAfterDays = 42;
  }
  buildCounterWipeAction--;
  return o;
}

checkWipeAction(api.WipeAction o) {
  buildCounterWipeAction++;
  if (buildCounterWipeAction < 3) {
    unittest.expect(o.preserveFrp, unittest.isTrue);
    unittest.expect(o.wipeAfterDays, unittest.equals(42));
  }
  buildCounterWipeAction--;
}

buildUnnamed1197() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1197(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
  unittest.group("obj-schema-AdvancedSecurityOverrides", () {
    unittest.test("to-json--from-json", () {
      var o = buildAdvancedSecurityOverrides();
      var od = new api.AdvancedSecurityOverrides.fromJson(o.toJson());
      checkAdvancedSecurityOverrides(od);
    });
  });

  unittest.group("obj-schema-AlwaysOnVpnPackage", () {
    unittest.test("to-json--from-json", () {
      var o = buildAlwaysOnVpnPackage();
      var od = new api.AlwaysOnVpnPackage.fromJson(o.toJson());
      checkAlwaysOnVpnPackage(od);
    });
  });

  unittest.group("obj-schema-ApiLevelCondition", () {
    unittest.test("to-json--from-json", () {
      var o = buildApiLevelCondition();
      var od = new api.ApiLevelCondition.fromJson(o.toJson());
      checkApiLevelCondition(od);
    });
  });

  unittest.group("obj-schema-AppTrackInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildAppTrackInfo();
      var od = new api.AppTrackInfo.fromJson(o.toJson());
      checkAppTrackInfo(od);
    });
  });

  unittest.group("obj-schema-Application", () {
    unittest.test("to-json--from-json", () {
      var o = buildApplication();
      var od = new api.Application.fromJson(o.toJson());
      checkApplication(od);
    });
  });

  unittest.group("obj-schema-ApplicationEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildApplicationEvent();
      var od = new api.ApplicationEvent.fromJson(o.toJson());
      checkApplicationEvent(od);
    });
  });

  unittest.group("obj-schema-ApplicationPermission", () {
    unittest.test("to-json--from-json", () {
      var o = buildApplicationPermission();
      var od = new api.ApplicationPermission.fromJson(o.toJson());
      checkApplicationPermission(od);
    });
  });

  unittest.group("obj-schema-ApplicationPolicy", () {
    unittest.test("to-json--from-json", () {
      var o = buildApplicationPolicy();
      var od = new api.ApplicationPolicy.fromJson(o.toJson());
      checkApplicationPolicy(od);
    });
  });

  unittest.group("obj-schema-ApplicationReport", () {
    unittest.test("to-json--from-json", () {
      var o = buildApplicationReport();
      var od = new api.ApplicationReport.fromJson(o.toJson());
      checkApplicationReport(od);
    });
  });

  unittest.group("obj-schema-ApplicationReportingSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildApplicationReportingSettings();
      var od = new api.ApplicationReportingSettings.fromJson(o.toJson());
      checkApplicationReportingSettings(od);
    });
  });

  unittest.group("obj-schema-BlockAction", () {
    unittest.test("to-json--from-json", () {
      var o = buildBlockAction();
      var od = new api.BlockAction.fromJson(o.toJson());
      checkBlockAction(od);
    });
  });

  unittest.group("obj-schema-ChoosePrivateKeyRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildChoosePrivateKeyRule();
      var od = new api.ChoosePrivateKeyRule.fromJson(o.toJson());
      checkChoosePrivateKeyRule(od);
    });
  });

  unittest.group("obj-schema-Command", () {
    unittest.test("to-json--from-json", () {
      var o = buildCommand();
      var od = new api.Command.fromJson(o.toJson());
      checkCommand(od);
    });
  });

  unittest.group("obj-schema-ComplianceRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildComplianceRule();
      var od = new api.ComplianceRule.fromJson(o.toJson());
      checkComplianceRule(od);
    });
  });

  unittest.group("obj-schema-Date", () {
    unittest.test("to-json--from-json", () {
      var o = buildDate();
      var od = new api.Date.fromJson(o.toJson());
      checkDate(od);
    });
  });

  unittest.group("obj-schema-Device", () {
    unittest.test("to-json--from-json", () {
      var o = buildDevice();
      var od = new api.Device.fromJson(o.toJson());
      checkDevice(od);
    });
  });

  unittest.group("obj-schema-DeviceSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeviceSettings();
      var od = new api.DeviceSettings.fromJson(o.toJson());
      checkDeviceSettings(od);
    });
  });

  unittest.group("obj-schema-Display", () {
    unittest.test("to-json--from-json", () {
      var o = buildDisplay();
      var od = new api.Display.fromJson(o.toJson());
      checkDisplay(od);
    });
  });

  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-EnrollmentToken", () {
    unittest.test("to-json--from-json", () {
      var o = buildEnrollmentToken();
      var od = new api.EnrollmentToken.fromJson(o.toJson());
      checkEnrollmentToken(od);
    });
  });

  unittest.group("obj-schema-Enterprise", () {
    unittest.test("to-json--from-json", () {
      var o = buildEnterprise();
      var od = new api.Enterprise.fromJson(o.toJson());
      checkEnterprise(od);
    });
  });

  unittest.group("obj-schema-ExternalData", () {
    unittest.test("to-json--from-json", () {
      var o = buildExternalData();
      var od = new api.ExternalData.fromJson(o.toJson());
      checkExternalData(od);
    });
  });

  unittest.group("obj-schema-FreezePeriod", () {
    unittest.test("to-json--from-json", () {
      var o = buildFreezePeriod();
      var od = new api.FreezePeriod.fromJson(o.toJson());
      checkFreezePeriod(od);
    });
  });

  unittest.group("obj-schema-HardwareInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildHardwareInfo();
      var od = new api.HardwareInfo.fromJson(o.toJson());
      checkHardwareInfo(od);
    });
  });

  unittest.group("obj-schema-HardwareStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildHardwareStatus();
      var od = new api.HardwareStatus.fromJson(o.toJson());
      checkHardwareStatus(od);
    });
  });

  unittest.group("obj-schema-KeyedAppState", () {
    unittest.test("to-json--from-json", () {
      var o = buildKeyedAppState();
      var od = new api.KeyedAppState.fromJson(o.toJson());
      checkKeyedAppState(od);
    });
  });

  unittest.group("obj-schema-KioskCustomization", () {
    unittest.test("to-json--from-json", () {
      var o = buildKioskCustomization();
      var od = new api.KioskCustomization.fromJson(o.toJson());
      checkKioskCustomization(od);
    });
  });

  unittest.group("obj-schema-LaunchAppAction", () {
    unittest.test("to-json--from-json", () {
      var o = buildLaunchAppAction();
      var od = new api.LaunchAppAction.fromJson(o.toJson());
      checkLaunchAppAction(od);
    });
  });

  unittest.group("obj-schema-ListDevicesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListDevicesResponse();
      var od = new api.ListDevicesResponse.fromJson(o.toJson());
      checkListDevicesResponse(od);
    });
  });

  unittest.group("obj-schema-ListOperationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListOperationsResponse();
      var od = new api.ListOperationsResponse.fromJson(o.toJson());
      checkListOperationsResponse(od);
    });
  });

  unittest.group("obj-schema-ListPoliciesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListPoliciesResponse();
      var od = new api.ListPoliciesResponse.fromJson(o.toJson());
      checkListPoliciesResponse(od);
    });
  });

  unittest.group("obj-schema-ListWebAppsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListWebAppsResponse();
      var od = new api.ListWebAppsResponse.fromJson(o.toJson());
      checkListWebAppsResponse(od);
    });
  });

  unittest.group("obj-schema-ManagedConfigurationTemplate", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedConfigurationTemplate();
      var od = new api.ManagedConfigurationTemplate.fromJson(o.toJson());
      checkManagedConfigurationTemplate(od);
    });
  });

  unittest.group("obj-schema-ManagedProperty", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedProperty();
      var od = new api.ManagedProperty.fromJson(o.toJson());
      checkManagedProperty(od);
    });
  });

  unittest.group("obj-schema-ManagedPropertyEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildManagedPropertyEntry();
      var od = new api.ManagedPropertyEntry.fromJson(o.toJson());
      checkManagedPropertyEntry(od);
    });
  });

  unittest.group("obj-schema-MemoryEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildMemoryEvent();
      var od = new api.MemoryEvent.fromJson(o.toJson());
      checkMemoryEvent(od);
    });
  });

  unittest.group("obj-schema-MemoryInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildMemoryInfo();
      var od = new api.MemoryInfo.fromJson(o.toJson());
      checkMemoryInfo(od);
    });
  });

  unittest.group("obj-schema-NetworkInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildNetworkInfo();
      var od = new api.NetworkInfo.fromJson(o.toJson());
      checkNetworkInfo(od);
    });
  });

  unittest.group("obj-schema-NonComplianceDetail", () {
    unittest.test("to-json--from-json", () {
      var o = buildNonComplianceDetail();
      var od = new api.NonComplianceDetail.fromJson(o.toJson());
      checkNonComplianceDetail(od);
    });
  });

  unittest.group("obj-schema-NonComplianceDetailCondition", () {
    unittest.test("to-json--from-json", () {
      var o = buildNonComplianceDetailCondition();
      var od = new api.NonComplianceDetailCondition.fromJson(o.toJson());
      checkNonComplianceDetailCondition(od);
    });
  });

  unittest.group("obj-schema-Operation", () {
    unittest.test("to-json--from-json", () {
      var o = buildOperation();
      var od = new api.Operation.fromJson(o.toJson());
      checkOperation(od);
    });
  });

  unittest.group("obj-schema-PackageNameList", () {
    unittest.test("to-json--from-json", () {
      var o = buildPackageNameList();
      var od = new api.PackageNameList.fromJson(o.toJson());
      checkPackageNameList(od);
    });
  });

  unittest.group("obj-schema-PasswordRequirements", () {
    unittest.test("to-json--from-json", () {
      var o = buildPasswordRequirements();
      var od = new api.PasswordRequirements.fromJson(o.toJson());
      checkPasswordRequirements(od);
    });
  });

  unittest.group("obj-schema-PermissionGrant", () {
    unittest.test("to-json--from-json", () {
      var o = buildPermissionGrant();
      var od = new api.PermissionGrant.fromJson(o.toJson());
      checkPermissionGrant(od);
    });
  });

  unittest.group("obj-schema-PersistentPreferredActivity", () {
    unittest.test("to-json--from-json", () {
      var o = buildPersistentPreferredActivity();
      var od = new api.PersistentPreferredActivity.fromJson(o.toJson());
      checkPersistentPreferredActivity(od);
    });
  });

  unittest.group("obj-schema-Policy", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicy();
      var od = new api.Policy.fromJson(o.toJson());
      checkPolicy(od);
    });
  });

  unittest.group("obj-schema-PolicyEnforcementRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolicyEnforcementRule();
      var od = new api.PolicyEnforcementRule.fromJson(o.toJson());
      checkPolicyEnforcementRule(od);
    });
  });

  unittest.group("obj-schema-PostureDetail", () {
    unittest.test("to-json--from-json", () {
      var o = buildPostureDetail();
      var od = new api.PostureDetail.fromJson(o.toJson());
      checkPostureDetail(od);
    });
  });

  unittest.group("obj-schema-PowerManagementEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildPowerManagementEvent();
      var od = new api.PowerManagementEvent.fromJson(o.toJson());
      checkPowerManagementEvent(od);
    });
  });

  unittest.group("obj-schema-ProxyInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildProxyInfo();
      var od = new api.ProxyInfo.fromJson(o.toJson());
      checkProxyInfo(od);
    });
  });

  unittest.group("obj-schema-SecurityPosture", () {
    unittest.test("to-json--from-json", () {
      var o = buildSecurityPosture();
      var od = new api.SecurityPosture.fromJson(o.toJson());
      checkSecurityPosture(od);
    });
  });

  unittest.group("obj-schema-SetupAction", () {
    unittest.test("to-json--from-json", () {
      var o = buildSetupAction();
      var od = new api.SetupAction.fromJson(o.toJson());
      checkSetupAction(od);
    });
  });

  unittest.group("obj-schema-SigninDetail", () {
    unittest.test("to-json--from-json", () {
      var o = buildSigninDetail();
      var od = new api.SigninDetail.fromJson(o.toJson());
      checkSigninDetail(od);
    });
  });

  unittest.group("obj-schema-SignupUrl", () {
    unittest.test("to-json--from-json", () {
      var o = buildSignupUrl();
      var od = new api.SignupUrl.fromJson(o.toJson());
      checkSignupUrl(od);
    });
  });

  unittest.group("obj-schema-SoftwareInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildSoftwareInfo();
      var od = new api.SoftwareInfo.fromJson(o.toJson());
      checkSoftwareInfo(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-StatusReportingSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatusReportingSettings();
      var od = new api.StatusReportingSettings.fromJson(o.toJson());
      checkStatusReportingSettings(od);
    });
  });

  unittest.group("obj-schema-SystemUpdate", () {
    unittest.test("to-json--from-json", () {
      var o = buildSystemUpdate();
      var od = new api.SystemUpdate.fromJson(o.toJson());
      checkSystemUpdate(od);
    });
  });

  unittest.group("obj-schema-TermsAndConditions", () {
    unittest.test("to-json--from-json", () {
      var o = buildTermsAndConditions();
      var od = new api.TermsAndConditions.fromJson(o.toJson());
      checkTermsAndConditions(od);
    });
  });

  unittest.group("obj-schema-User", () {
    unittest.test("to-json--from-json", () {
      var o = buildUser();
      var od = new api.User.fromJson(o.toJson());
      checkUser(od);
    });
  });

  unittest.group("obj-schema-UserFacingMessage", () {
    unittest.test("to-json--from-json", () {
      var o = buildUserFacingMessage();
      var od = new api.UserFacingMessage.fromJson(o.toJson());
      checkUserFacingMessage(od);
    });
  });

  unittest.group("obj-schema-WebApp", () {
    unittest.test("to-json--from-json", () {
      var o = buildWebApp();
      var od = new api.WebApp.fromJson(o.toJson());
      checkWebApp(od);
    });
  });

  unittest.group("obj-schema-WebAppIcon", () {
    unittest.test("to-json--from-json", () {
      var o = buildWebAppIcon();
      var od = new api.WebAppIcon.fromJson(o.toJson());
      checkWebAppIcon(od);
    });
  });

  unittest.group("obj-schema-WebToken", () {
    unittest.test("to-json--from-json", () {
      var o = buildWebToken();
      var od = new api.WebToken.fromJson(o.toJson());
      checkWebToken(od);
    });
  });

  unittest.group("obj-schema-WipeAction", () {
    unittest.test("to-json--from-json", () {
      var o = buildWipeAction();
      var od = new api.WipeAction.fromJson(o.toJson());
      checkWipeAction(od);
    });
  });

  unittest.group("resource-EnterprisesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.EnterprisesResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises;
      var arg_request = buildEnterprise();
      var arg_signupUrlName = "foo";
      var arg_projectId = "foo";
      var arg_enterpriseToken = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Enterprise.fromJson(json);
        checkEnterprise(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1/enterprises"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["signupUrlName"].first,
            unittest.equals(arg_signupUrlName));
        unittest.expect(
            queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(queryMap["enterpriseToken"].first,
            unittest.equals(arg_enterpriseToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEnterprise());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request,
              signupUrlName: arg_signupUrlName,
              projectId: arg_projectId,
              enterpriseToken: arg_enterpriseToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEnterprise(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.EnterprisesResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEnterprise());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEnterprise(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.EnterprisesResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises;
      var arg_request = buildEnterprise();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Enterprise.fromJson(json);
        checkEnterprise(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEnterprise());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEnterprise(response);
      })));
    });
  });

  unittest.group("resource-EnterprisesApplicationsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.EnterprisesApplicationsResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.applications;
      var arg_name = "foo";
      var arg_languageCode = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["languageCode"].first, unittest.equals(arg_languageCode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildApplication());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, languageCode: arg_languageCode, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkApplication(response);
      })));
    });
  });

  unittest.group("resource-EnterprisesDevicesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.EnterprisesDevicesResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.devices;
      var arg_name = "foo";
      var arg_wipeDataFlags = buildUnnamed1197();
      var arg_wipeReasonMessage = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["wipeDataFlags"], unittest.equals(arg_wipeDataFlags));
        unittest.expect(queryMap["wipeReasonMessage"].first,
            unittest.equals(arg_wipeReasonMessage));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name,
              wipeDataFlags: arg_wipeDataFlags,
              wipeReasonMessage: arg_wipeReasonMessage,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.EnterprisesDevicesResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.devices;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDevice(response);
      })));
    });

    unittest.test("method--issueCommand", () {
      var mock = new HttpServerMock();
      api.EnterprisesDevicesResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.devices;
      var arg_request = buildCommand();
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Command.fromJson(json);
        checkCommand(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .issueCommand(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.EnterprisesDevicesResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.devices;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListDevicesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListDevicesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.EnterprisesDevicesResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.devices;
      var arg_request = buildDevice();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Device.fromJson(json);
        checkDevice(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDevice());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDevice(response);
      })));
    });
  });

  unittest.group("resource-EnterprisesDevicesOperationsResourceApi", () {
    unittest.test("method--cancel", () {
      var mock = new HttpServerMock();
      api.EnterprisesDevicesOperationsResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.devices.operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.EnterprisesDevicesOperationsResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.devices.operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.EnterprisesDevicesOperationsResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.devices.operations;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildOperation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkOperation(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.EnterprisesDevicesOperationsResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.devices.operations;
      var arg_name = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_filter = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListOperationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListOperationsResponse(response);
      })));
    });
  });

  unittest.group("resource-EnterprisesEnrollmentTokensResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.EnterprisesEnrollmentTokensResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.enrollmentTokens;
      var arg_request = buildEnrollmentToken();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.EnrollmentToken.fromJson(json);
        checkEnrollmentToken(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEnrollmentToken());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEnrollmentToken(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.EnterprisesEnrollmentTokensResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.enrollmentTokens;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });
  });

  unittest.group("resource-EnterprisesPoliciesResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.EnterprisesPoliciesResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.policies;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.EnterprisesPoliciesResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.policies;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.EnterprisesPoliciesResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.policies;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListPoliciesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListPoliciesResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.EnterprisesPoliciesResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.policies;
      var arg_request = buildPolicy();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Policy.fromJson(json);
        checkPolicy(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildPolicy());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkPolicy(response);
      })));
    });
  });

  unittest.group("resource-EnterprisesWebAppsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.EnterprisesWebAppsResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.webApps;
      var arg_request = buildWebApp();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.WebApp.fromJson(json);
        checkWebApp(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildWebApp());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWebApp(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.EnterprisesWebAppsResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.webApps;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.EnterprisesWebAppsResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.webApps;
      var arg_name = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildWebApp());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWebApp(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.EnterprisesWebAppsResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.webApps;
      var arg_parent = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListWebAppsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListWebAppsResponse(response);
      })));
    });

    unittest.test("method--patch", () {
      var mock = new HttpServerMock();
      api.EnterprisesWebAppsResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.webApps;
      var arg_request = buildWebApp();
      var arg_name = "foo";
      var arg_updateMask = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.WebApp.fromJson(json);
        checkWebApp(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["updateMask"].first, unittest.equals(arg_updateMask));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildWebApp());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWebApp(response);
      })));
    });
  });

  unittest.group("resource-EnterprisesWebTokensResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.EnterprisesWebTokensResourceApi res =
          new api.AndroidmanagementApi(mock).enterprises.webTokens;
      var arg_request = buildWebToken();
      var arg_parent = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.WebToken.fromJson(json);
        checkWebToken(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
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
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildWebToken());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkWebToken(response);
      })));
    });
  });

  unittest.group("resource-SignupUrlsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.SignupUrlsResourceApi res =
          new api.AndroidmanagementApi(mock).signupUrls;
      var arg_projectId = "foo";
      var arg_callbackUrl = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v1/signupUrls"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }

        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(
            queryMap["callbackUrl"].first, unittest.equals(arg_callbackUrl));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSignupUrl());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(
              projectId: arg_projectId,
              callbackUrl: arg_callbackUrl,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSignupUrl(response);
      })));
    });
  });
}
