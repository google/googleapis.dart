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

buildUnnamed2028() {
  var o = new core.List<api.ManagedProperty>();
  o.add(buildManagedProperty());
  o.add(buildManagedProperty());
  return o;
}

checkUnnamed2028(core.List<api.ManagedProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedProperty(o[0]);
  checkManagedProperty(o[1]);
}

buildUnnamed2029() {
  var o = new core.List<api.ApplicationPermission>();
  o.add(buildApplicationPermission());
  o.add(buildApplicationPermission());
  return o;
}

checkUnnamed2029(core.List<api.ApplicationPermission> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationPermission(o[0]);
  checkApplicationPermission(o[1]);
}

core.int buildCounterApplication = 0;
buildApplication() {
  var o = new api.Application();
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    o.managedProperties = buildUnnamed2028();
    o.name = "foo";
    o.permissions = buildUnnamed2029();
    o.title = "foo";
  }
  buildCounterApplication--;
  return o;
}

checkApplication(api.Application o) {
  buildCounterApplication++;
  if (buildCounterApplication < 3) {
    checkUnnamed2028(o.managedProperties);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2029(o.permissions);
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

buildUnnamed2030() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2030(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2031() {
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

checkUnnamed2031(core.Map<core.String, core.Object> o) {
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

buildUnnamed2032() {
  var o = new core.List<api.PermissionGrant>();
  o.add(buildPermissionGrant());
  o.add(buildPermissionGrant());
  return o;
}

checkUnnamed2032(core.List<api.PermissionGrant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermissionGrant(o[0]);
  checkPermissionGrant(o[1]);
}

core.int buildCounterApplicationPolicy = 0;
buildApplicationPolicy() {
  var o = new api.ApplicationPolicy();
  buildCounterApplicationPolicy++;
  if (buildCounterApplicationPolicy < 3) {
    o.defaultPermissionPolicy = "foo";
    o.delegatedScopes = buildUnnamed2030();
    o.disabled = true;
    o.installType = "foo";
    o.lockTaskAllowed = true;
    o.managedConfiguration = buildUnnamed2031();
    o.managedConfigurationTemplate = buildManagedConfigurationTemplate();
    o.minimumVersionCode = 42;
    o.packageName = "foo";
    o.permissionGrants = buildUnnamed2032();
  }
  buildCounterApplicationPolicy--;
  return o;
}

checkApplicationPolicy(api.ApplicationPolicy o) {
  buildCounterApplicationPolicy++;
  if (buildCounterApplicationPolicy < 3) {
    unittest.expect(o.defaultPermissionPolicy, unittest.equals('foo'));
    checkUnnamed2030(o.delegatedScopes);
    unittest.expect(o.disabled, unittest.isTrue);
    unittest.expect(o.installType, unittest.equals('foo'));
    unittest.expect(o.lockTaskAllowed, unittest.isTrue);
    checkUnnamed2031(o.managedConfiguration);
    checkManagedConfigurationTemplate(o.managedConfigurationTemplate);
    unittest.expect(o.minimumVersionCode, unittest.equals(42));
    unittest.expect(o.packageName, unittest.equals('foo'));
    checkUnnamed2032(o.permissionGrants);
  }
  buildCounterApplicationPolicy--;
}

buildUnnamed2033() {
  var o = new core.List<api.ApplicationEvent>();
  o.add(buildApplicationEvent());
  o.add(buildApplicationEvent());
  return o;
}

checkUnnamed2033(core.List<api.ApplicationEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationEvent(o[0]);
  checkApplicationEvent(o[1]);
}

buildUnnamed2034() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2034(core.List<core.String> o) {
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
    o.events = buildUnnamed2033();
    o.installerPackageName = "foo";
    o.packageName = "foo";
    o.packageSha256Hash = "foo";
    o.signingKeyCertFingerprints = buildUnnamed2034();
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
    checkUnnamed2033(o.events);
    unittest.expect(o.installerPackageName, unittest.equals('foo'));
    unittest.expect(o.packageName, unittest.equals('foo'));
    unittest.expect(o.packageSha256Hash, unittest.equals('foo'));
    checkUnnamed2034(o.signingKeyCertFingerprints);
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.versionCode, unittest.equals(42));
    unittest.expect(o.versionName, unittest.equals('foo'));
  }
  buildCounterApplicationReport--;
}

buildUnnamed2035() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2035(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterChoosePrivateKeyRule = 0;
buildChoosePrivateKeyRule() {
  var o = new api.ChoosePrivateKeyRule();
  buildCounterChoosePrivateKeyRule++;
  if (buildCounterChoosePrivateKeyRule < 3) {
    o.packageNames = buildUnnamed2035();
    o.privateKeyAlias = "foo";
    o.urlPattern = "foo";
  }
  buildCounterChoosePrivateKeyRule--;
  return o;
}

checkChoosePrivateKeyRule(api.ChoosePrivateKeyRule o) {
  buildCounterChoosePrivateKeyRule++;
  if (buildCounterChoosePrivateKeyRule < 3) {
    checkUnnamed2035(o.packageNames);
    unittest.expect(o.privateKeyAlias, unittest.equals('foo'));
    unittest.expect(o.urlPattern, unittest.equals('foo'));
  }
  buildCounterChoosePrivateKeyRule--;
}

buildUnnamed2036() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2036(core.List<core.String> o) {
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
    o.resetPasswordFlags = buildUnnamed2036();
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
    checkUnnamed2036(o.resetPasswordFlags);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.userName, unittest.equals('foo'));
  }
  buildCounterCommand--;
}

buildUnnamed2037() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2037(core.List<core.String> o) {
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
    o.packageNamesToDisable = buildUnnamed2037();
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
    checkUnnamed2037(o.packageNamesToDisable);
  }
  buildCounterComplianceRule--;
}

buildUnnamed2038() {
  var o = new core.List<api.ApplicationReport>();
  o.add(buildApplicationReport());
  o.add(buildApplicationReport());
  return o;
}

checkUnnamed2038(core.List<api.ApplicationReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationReport(o[0]);
  checkApplicationReport(o[1]);
}

buildUnnamed2039() {
  var o = new core.List<api.Display>();
  o.add(buildDisplay());
  o.add(buildDisplay());
  return o;
}

checkUnnamed2039(core.List<api.Display> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisplay(o[0]);
  checkDisplay(o[1]);
}

buildUnnamed2040() {
  var o = new core.List<api.HardwareStatus>();
  o.add(buildHardwareStatus());
  o.add(buildHardwareStatus());
  return o;
}

checkUnnamed2040(core.List<api.HardwareStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHardwareStatus(o[0]);
  checkHardwareStatus(o[1]);
}

buildUnnamed2041() {
  var o = new core.List<api.MemoryEvent>();
  o.add(buildMemoryEvent());
  o.add(buildMemoryEvent());
  return o;
}

checkUnnamed2041(core.List<api.MemoryEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMemoryEvent(o[0]);
  checkMemoryEvent(o[1]);
}

buildUnnamed2042() {
  var o = new core.List<api.NonComplianceDetail>();
  o.add(buildNonComplianceDetail());
  o.add(buildNonComplianceDetail());
  return o;
}

checkUnnamed2042(core.List<api.NonComplianceDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNonComplianceDetail(o[0]);
  checkNonComplianceDetail(o[1]);
}

buildUnnamed2043() {
  var o = new core.List<api.PowerManagementEvent>();
  o.add(buildPowerManagementEvent());
  o.add(buildPowerManagementEvent());
  return o;
}

checkUnnamed2043(core.List<api.PowerManagementEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPowerManagementEvent(o[0]);
  checkPowerManagementEvent(o[1]);
}

buildUnnamed2044() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2044(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDevice = 0;
buildDevice() {
  var o = new api.Device();
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    o.apiLevel = 42;
    o.applicationReports = buildUnnamed2038();
    o.appliedPolicyName = "foo";
    o.appliedPolicyVersion = "foo";
    o.appliedState = "foo";
    o.deviceSettings = buildDeviceSettings();
    o.disabledReason = buildUserFacingMessage();
    o.displays = buildUnnamed2039();
    o.enrollmentTime = "foo";
    o.enrollmentTokenData = "foo";
    o.enrollmentTokenName = "foo";
    o.hardwareInfo = buildHardwareInfo();
    o.hardwareStatusSamples = buildUnnamed2040();
    o.lastPolicyComplianceReportTime = "foo";
    o.lastPolicySyncTime = "foo";
    o.lastStatusReportTime = "foo";
    o.managementMode = "foo";
    o.memoryEvents = buildUnnamed2041();
    o.memoryInfo = buildMemoryInfo();
    o.name = "foo";
    o.networkInfo = buildNetworkInfo();
    o.nonComplianceDetails = buildUnnamed2042();
    o.policyCompliant = true;
    o.policyName = "foo";
    o.powerManagementEvents = buildUnnamed2043();
    o.previousDeviceNames = buildUnnamed2044();
    o.softwareInfo = buildSoftwareInfo();
    o.state = "foo";
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
    checkUnnamed2038(o.applicationReports);
    unittest.expect(o.appliedPolicyName, unittest.equals('foo'));
    unittest.expect(o.appliedPolicyVersion, unittest.equals('foo'));
    unittest.expect(o.appliedState, unittest.equals('foo'));
    checkDeviceSettings(o.deviceSettings);
    checkUserFacingMessage(o.disabledReason);
    checkUnnamed2039(o.displays);
    unittest.expect(o.enrollmentTime, unittest.equals('foo'));
    unittest.expect(o.enrollmentTokenData, unittest.equals('foo'));
    unittest.expect(o.enrollmentTokenName, unittest.equals('foo'));
    checkHardwareInfo(o.hardwareInfo);
    checkUnnamed2040(o.hardwareStatusSamples);
    unittest.expect(o.lastPolicyComplianceReportTime, unittest.equals('foo'));
    unittest.expect(o.lastPolicySyncTime, unittest.equals('foo'));
    unittest.expect(o.lastStatusReportTime, unittest.equals('foo'));
    unittest.expect(o.managementMode, unittest.equals('foo'));
    checkUnnamed2041(o.memoryEvents);
    checkMemoryInfo(o.memoryInfo);
    unittest.expect(o.name, unittest.equals('foo'));
    checkNetworkInfo(o.networkInfo);
    checkUnnamed2042(o.nonComplianceDetails);
    unittest.expect(o.policyCompliant, unittest.isTrue);
    unittest.expect(o.policyName, unittest.equals('foo'));
    checkUnnamed2043(o.powerManagementEvents);
    checkUnnamed2044(o.previousDeviceNames);
    checkSoftwareInfo(o.softwareInfo);
    unittest.expect(o.state, unittest.equals('foo'));
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

buildUnnamed2045() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2045(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2046() {
  var o = new core.List<api.SigninDetail>();
  o.add(buildSigninDetail());
  o.add(buildSigninDetail());
  return o;
}

checkUnnamed2046(core.List<api.SigninDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSigninDetail(o[0]);
  checkSigninDetail(o[1]);
}

buildUnnamed2047() {
  var o = new core.List<api.TermsAndConditions>();
  o.add(buildTermsAndConditions());
  o.add(buildTermsAndConditions());
  return o;
}

checkUnnamed2047(core.List<api.TermsAndConditions> o) {
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
    o.enabledNotificationTypes = buildUnnamed2045();
    o.enterpriseDisplayName = "foo";
    o.logo = buildExternalData();
    o.name = "foo";
    o.primaryColor = 42;
    o.pubsubTopic = "foo";
    o.signinDetails = buildUnnamed2046();
    o.termsAndConditions = buildUnnamed2047();
  }
  buildCounterEnterprise--;
  return o;
}

checkEnterprise(api.Enterprise o) {
  buildCounterEnterprise++;
  if (buildCounterEnterprise < 3) {
    unittest.expect(o.appAutoApprovalEnabled, unittest.isTrue);
    checkUnnamed2045(o.enabledNotificationTypes);
    unittest.expect(o.enterpriseDisplayName, unittest.equals('foo'));
    checkExternalData(o.logo);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.primaryColor, unittest.equals(42));
    unittest.expect(o.pubsubTopic, unittest.equals('foo'));
    checkUnnamed2046(o.signinDetails);
    checkUnnamed2047(o.termsAndConditions);
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

buildUnnamed2048() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed2048(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed2049() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed2049(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed2050() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed2050(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed2051() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed2051(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed2052() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed2052(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed2053() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed2053(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed2054() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed2054(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed2055() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed2055(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterHardwareInfo = 0;
buildHardwareInfo() {
  var o = new api.HardwareInfo();
  buildCounterHardwareInfo++;
  if (buildCounterHardwareInfo < 3) {
    o.batteryShutdownTemperatures = buildUnnamed2048();
    o.batteryThrottlingTemperatures = buildUnnamed2049();
    o.brand = "foo";
    o.cpuShutdownTemperatures = buildUnnamed2050();
    o.cpuThrottlingTemperatures = buildUnnamed2051();
    o.deviceBasebandVersion = "foo";
    o.gpuShutdownTemperatures = buildUnnamed2052();
    o.gpuThrottlingTemperatures = buildUnnamed2053();
    o.hardware = "foo";
    o.manufacturer = "foo";
    o.model = "foo";
    o.serialNumber = "foo";
    o.skinShutdownTemperatures = buildUnnamed2054();
    o.skinThrottlingTemperatures = buildUnnamed2055();
  }
  buildCounterHardwareInfo--;
  return o;
}

checkHardwareInfo(api.HardwareInfo o) {
  buildCounterHardwareInfo++;
  if (buildCounterHardwareInfo < 3) {
    checkUnnamed2048(o.batteryShutdownTemperatures);
    checkUnnamed2049(o.batteryThrottlingTemperatures);
    unittest.expect(o.brand, unittest.equals('foo'));
    checkUnnamed2050(o.cpuShutdownTemperatures);
    checkUnnamed2051(o.cpuThrottlingTemperatures);
    unittest.expect(o.deviceBasebandVersion, unittest.equals('foo'));
    checkUnnamed2052(o.gpuShutdownTemperatures);
    checkUnnamed2053(o.gpuThrottlingTemperatures);
    unittest.expect(o.hardware, unittest.equals('foo'));
    unittest.expect(o.manufacturer, unittest.equals('foo'));
    unittest.expect(o.model, unittest.equals('foo'));
    unittest.expect(o.serialNumber, unittest.equals('foo'));
    checkUnnamed2054(o.skinShutdownTemperatures);
    checkUnnamed2055(o.skinThrottlingTemperatures);
  }
  buildCounterHardwareInfo--;
}

buildUnnamed2056() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed2056(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed2057() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed2057(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed2058() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed2058(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed2059() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed2059(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed2060() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed2060(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed2061() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed2061(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterHardwareStatus = 0;
buildHardwareStatus() {
  var o = new api.HardwareStatus();
  buildCounterHardwareStatus++;
  if (buildCounterHardwareStatus < 3) {
    o.batteryTemperatures = buildUnnamed2056();
    o.cpuTemperatures = buildUnnamed2057();
    o.cpuUsages = buildUnnamed2058();
    o.createTime = "foo";
    o.fanSpeeds = buildUnnamed2059();
    o.gpuTemperatures = buildUnnamed2060();
    o.skinTemperatures = buildUnnamed2061();
  }
  buildCounterHardwareStatus--;
  return o;
}

checkHardwareStatus(api.HardwareStatus o) {
  buildCounterHardwareStatus++;
  if (buildCounterHardwareStatus < 3) {
    checkUnnamed2056(o.batteryTemperatures);
    checkUnnamed2057(o.cpuTemperatures);
    checkUnnamed2058(o.cpuUsages);
    unittest.expect(o.createTime, unittest.equals('foo'));
    checkUnnamed2059(o.fanSpeeds);
    checkUnnamed2060(o.gpuTemperatures);
    checkUnnamed2061(o.skinTemperatures);
  }
  buildCounterHardwareStatus--;
}

buildUnnamed2062() {
  var o = new core.List<api.Device>();
  o.add(buildDevice());
  o.add(buildDevice());
  return o;
}

checkUnnamed2062(core.List<api.Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDevice(o[0]);
  checkDevice(o[1]);
}

core.int buildCounterListDevicesResponse = 0;
buildListDevicesResponse() {
  var o = new api.ListDevicesResponse();
  buildCounterListDevicesResponse++;
  if (buildCounterListDevicesResponse < 3) {
    o.devices = buildUnnamed2062();
    o.nextPageToken = "foo";
  }
  buildCounterListDevicesResponse--;
  return o;
}

checkListDevicesResponse(api.ListDevicesResponse o) {
  buildCounterListDevicesResponse++;
  if (buildCounterListDevicesResponse < 3) {
    checkUnnamed2062(o.devices);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListDevicesResponse--;
}

buildUnnamed2063() {
  var o = new core.List<api.Operation>();
  o.add(buildOperation());
  o.add(buildOperation());
  return o;
}

checkUnnamed2063(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed2063();
  }
  buildCounterListOperationsResponse--;
  return o;
}

checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2063(o.operations);
  }
  buildCounterListOperationsResponse--;
}

buildUnnamed2064() {
  var o = new core.List<api.Policy>();
  o.add(buildPolicy());
  o.add(buildPolicy());
  return o;
}

checkUnnamed2064(core.List<api.Policy> o) {
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
    o.policies = buildUnnamed2064();
  }
  buildCounterListPoliciesResponse--;
  return o;
}

checkListPoliciesResponse(api.ListPoliciesResponse o) {
  buildCounterListPoliciesResponse++;
  if (buildCounterListPoliciesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed2064(o.policies);
  }
  buildCounterListPoliciesResponse--;
}

buildUnnamed2065() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2065(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterManagedConfigurationTemplate = 0;
buildManagedConfigurationTemplate() {
  var o = new api.ManagedConfigurationTemplate();
  buildCounterManagedConfigurationTemplate++;
  if (buildCounterManagedConfigurationTemplate < 3) {
    o.configurationVariables = buildUnnamed2065();
    o.templateId = "foo";
  }
  buildCounterManagedConfigurationTemplate--;
  return o;
}

checkManagedConfigurationTemplate(api.ManagedConfigurationTemplate o) {
  buildCounterManagedConfigurationTemplate++;
  if (buildCounterManagedConfigurationTemplate < 3) {
    checkUnnamed2065(o.configurationVariables);
    unittest.expect(o.templateId, unittest.equals('foo'));
  }
  buildCounterManagedConfigurationTemplate--;
}

buildUnnamed2066() {
  var o = new core.List<api.ManagedPropertyEntry>();
  o.add(buildManagedPropertyEntry());
  o.add(buildManagedPropertyEntry());
  return o;
}

checkUnnamed2066(core.List<api.ManagedPropertyEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkManagedPropertyEntry(o[0]);
  checkManagedPropertyEntry(o[1]);
}

buildUnnamed2067() {
  var o = new core.List<api.ManagedProperty>();
  o.add(buildManagedProperty());
  o.add(buildManagedProperty());
  return o;
}

checkUnnamed2067(core.List<api.ManagedProperty> o) {
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
    o.entries = buildUnnamed2066();
    o.key = "foo";
    o.nestedProperties = buildUnnamed2067();
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
    checkUnnamed2066(o.entries);
    unittest.expect(o.key, unittest.equals('foo'));
    checkUnnamed2067(o.nestedProperties);
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

buildUnnamed2068() {
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

checkUnnamed2068(core.Map<core.String, core.Object> o) {
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

buildUnnamed2069() {
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

checkUnnamed2069(core.Map<core.String, core.Object> o) {
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
    o.metadata = buildUnnamed2068();
    o.name = "foo";
    o.response = buildUnnamed2069();
  }
  buildCounterOperation--;
  return o;
}

checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done, unittest.isTrue);
    checkStatus(o.error);
    checkUnnamed2068(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed2069(o.response);
  }
  buildCounterOperation--;
}

buildUnnamed2070() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2070(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPackageNameList = 0;
buildPackageNameList() {
  var o = new api.PackageNameList();
  buildCounterPackageNameList++;
  if (buildCounterPackageNameList < 3) {
    o.packageNames = buildUnnamed2070();
  }
  buildCounterPackageNameList--;
  return o;
}

checkPackageNameList(api.PackageNameList o) {
  buildCounterPackageNameList++;
  if (buildCounterPackageNameList < 3) {
    checkUnnamed2070(o.packageNames);
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

buildUnnamed2071() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2071(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2072() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2072(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPersistentPreferredActivity = 0;
buildPersistentPreferredActivity() {
  var o = new api.PersistentPreferredActivity();
  buildCounterPersistentPreferredActivity++;
  if (buildCounterPersistentPreferredActivity < 3) {
    o.actions = buildUnnamed2071();
    o.categories = buildUnnamed2072();
    o.receiverActivity = "foo";
  }
  buildCounterPersistentPreferredActivity--;
  return o;
}

checkPersistentPreferredActivity(api.PersistentPreferredActivity o) {
  buildCounterPersistentPreferredActivity++;
  if (buildCounterPersistentPreferredActivity < 3) {
    checkUnnamed2071(o.actions);
    checkUnnamed2072(o.categories);
    unittest.expect(o.receiverActivity, unittest.equals('foo'));
  }
  buildCounterPersistentPreferredActivity--;
}

buildUnnamed2073() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2073(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2074() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2074(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2075() {
  var o = new core.List<api.ApplicationPolicy>();
  o.add(buildApplicationPolicy());
  o.add(buildApplicationPolicy());
  return o;
}

checkUnnamed2075(core.List<api.ApplicationPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationPolicy(o[0]);
  checkApplicationPolicy(o[1]);
}

buildUnnamed2076() {
  var o = new core.List<api.ChoosePrivateKeyRule>();
  o.add(buildChoosePrivateKeyRule());
  o.add(buildChoosePrivateKeyRule());
  return o;
}

checkUnnamed2076(core.List<api.ChoosePrivateKeyRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkChoosePrivateKeyRule(o[0]);
  checkChoosePrivateKeyRule(o[1]);
}

buildUnnamed2077() {
  var o = new core.List<api.ComplianceRule>();
  o.add(buildComplianceRule());
  o.add(buildComplianceRule());
  return o;
}

checkUnnamed2077(core.List<api.ComplianceRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComplianceRule(o[0]);
  checkComplianceRule(o[1]);
}

buildUnnamed2078() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2078(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2079() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2079(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed2080() {
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

checkUnnamed2080(core.Map<core.String, core.Object> o) {
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

buildUnnamed2081() {
  var o = new core.List<api.PasswordRequirements>();
  o.add(buildPasswordRequirements());
  o.add(buildPasswordRequirements());
  return o;
}

checkUnnamed2081(core.List<api.PasswordRequirements> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPasswordRequirements(o[0]);
  checkPasswordRequirements(o[1]);
}

buildUnnamed2082() {
  var o = new core.List<api.PermissionGrant>();
  o.add(buildPermissionGrant());
  o.add(buildPermissionGrant());
  return o;
}

checkUnnamed2082(core.List<api.PermissionGrant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPermissionGrant(o[0]);
  checkPermissionGrant(o[1]);
}

buildUnnamed2083() {
  var o = new core.List<api.PersistentPreferredActivity>();
  o.add(buildPersistentPreferredActivity());
  o.add(buildPersistentPreferredActivity());
  return o;
}

checkUnnamed2083(core.List<api.PersistentPreferredActivity> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPersistentPreferredActivity(o[0]);
  checkPersistentPreferredActivity(o[1]);
}

buildUnnamed2084() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2084(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPolicy = 0;
buildPolicy() {
  var o = new api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.accountTypesWithManagementDisabled = buildUnnamed2073();
    o.addUserDisabled = true;
    o.adjustVolumeDisabled = true;
    o.alwaysOnVpnPackage = buildAlwaysOnVpnPackage();
    o.androidDevicePolicyTracks = buildUnnamed2074();
    o.appAutoUpdatePolicy = "foo";
    o.applications = buildUnnamed2075();
    o.autoTimeRequired = true;
    o.blockApplicationsEnabled = true;
    o.bluetoothConfigDisabled = true;
    o.bluetoothContactSharingDisabled = true;
    o.bluetoothDisabled = true;
    o.cameraDisabled = true;
    o.cellBroadcastsConfigDisabled = true;
    o.choosePrivateKeyRules = buildUnnamed2076();
    o.complianceRules = buildUnnamed2077();
    o.createWindowsDisabled = true;
    o.credentialsConfigDisabled = true;
    o.dataRoamingDisabled = true;
    o.debuggingFeaturesAllowed = true;
    o.defaultPermissionPolicy = "foo";
    o.deviceOwnerLockScreenInfo = buildUserFacingMessage();
    o.encryptionPolicy = "foo";
    o.ensureVerifyAppsEnabled = true;
    o.factoryResetDisabled = true;
    o.frpAdminEmails = buildUnnamed2078();
    o.funDisabled = true;
    o.installAppsDisabled = true;
    o.installUnknownSourcesAllowed = true;
    o.keyguardDisabled = true;
    o.keyguardDisabledFeatures = buildUnnamed2079();
    o.kioskCustomLauncherEnabled = true;
    o.locationMode = "foo";
    o.longSupportMessage = buildUserFacingMessage();
    o.maximumTimeToLock = "foo";
    o.mobileNetworksConfigDisabled = true;
    o.modifyAccountsDisabled = true;
    o.mountPhysicalMediaDisabled = true;
    o.name = "foo";
    o.networkEscapeHatchEnabled = true;
    o.networkResetDisabled = true;
    o.openNetworkConfiguration = buildUnnamed2080();
    o.outgoingBeamDisabled = true;
    o.outgoingCallsDisabled = true;
    o.passwordPolicies = buildUnnamed2081();
    o.passwordRequirements = buildPasswordRequirements();
    o.permissionGrants = buildUnnamed2082();
    o.permittedInputMethods = buildPackageNameList();
    o.persistentPreferredActivities = buildUnnamed2083();
    o.playStoreMode = "foo";
    o.privateKeySelectionEnabled = true;
    o.recommendedGlobalProxy = buildProxyInfo();
    o.removeUserDisabled = true;
    o.safeBootDisabled = true;
    o.screenCaptureDisabled = true;
    o.setUserIconDisabled = true;
    o.setWallpaperDisabled = true;
    o.shareLocationDisabled = true;
    o.shortSupportMessage = buildUserFacingMessage();
    o.skipFirstUseHintsEnabled = true;
    o.smsDisabled = true;
    o.statusBarDisabled = true;
    o.statusReportingSettings = buildStatusReportingSettings();
    o.stayOnPluggedModes = buildUnnamed2084();
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
    checkUnnamed2073(o.accountTypesWithManagementDisabled);
    unittest.expect(o.addUserDisabled, unittest.isTrue);
    unittest.expect(o.adjustVolumeDisabled, unittest.isTrue);
    checkAlwaysOnVpnPackage(o.alwaysOnVpnPackage);
    checkUnnamed2074(o.androidDevicePolicyTracks);
    unittest.expect(o.appAutoUpdatePolicy, unittest.equals('foo'));
    checkUnnamed2075(o.applications);
    unittest.expect(o.autoTimeRequired, unittest.isTrue);
    unittest.expect(o.blockApplicationsEnabled, unittest.isTrue);
    unittest.expect(o.bluetoothConfigDisabled, unittest.isTrue);
    unittest.expect(o.bluetoothContactSharingDisabled, unittest.isTrue);
    unittest.expect(o.bluetoothDisabled, unittest.isTrue);
    unittest.expect(o.cameraDisabled, unittest.isTrue);
    unittest.expect(o.cellBroadcastsConfigDisabled, unittest.isTrue);
    checkUnnamed2076(o.choosePrivateKeyRules);
    checkUnnamed2077(o.complianceRules);
    unittest.expect(o.createWindowsDisabled, unittest.isTrue);
    unittest.expect(o.credentialsConfigDisabled, unittest.isTrue);
    unittest.expect(o.dataRoamingDisabled, unittest.isTrue);
    unittest.expect(o.debuggingFeaturesAllowed, unittest.isTrue);
    unittest.expect(o.defaultPermissionPolicy, unittest.equals('foo'));
    checkUserFacingMessage(o.deviceOwnerLockScreenInfo);
    unittest.expect(o.encryptionPolicy, unittest.equals('foo'));
    unittest.expect(o.ensureVerifyAppsEnabled, unittest.isTrue);
    unittest.expect(o.factoryResetDisabled, unittest.isTrue);
    checkUnnamed2078(o.frpAdminEmails);
    unittest.expect(o.funDisabled, unittest.isTrue);
    unittest.expect(o.installAppsDisabled, unittest.isTrue);
    unittest.expect(o.installUnknownSourcesAllowed, unittest.isTrue);
    unittest.expect(o.keyguardDisabled, unittest.isTrue);
    checkUnnamed2079(o.keyguardDisabledFeatures);
    unittest.expect(o.kioskCustomLauncherEnabled, unittest.isTrue);
    unittest.expect(o.locationMode, unittest.equals('foo'));
    checkUserFacingMessage(o.longSupportMessage);
    unittest.expect(o.maximumTimeToLock, unittest.equals('foo'));
    unittest.expect(o.mobileNetworksConfigDisabled, unittest.isTrue);
    unittest.expect(o.modifyAccountsDisabled, unittest.isTrue);
    unittest.expect(o.mountPhysicalMediaDisabled, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.networkEscapeHatchEnabled, unittest.isTrue);
    unittest.expect(o.networkResetDisabled, unittest.isTrue);
    checkUnnamed2080(o.openNetworkConfiguration);
    unittest.expect(o.outgoingBeamDisabled, unittest.isTrue);
    unittest.expect(o.outgoingCallsDisabled, unittest.isTrue);
    checkUnnamed2081(o.passwordPolicies);
    checkPasswordRequirements(o.passwordRequirements);
    checkUnnamed2082(o.permissionGrants);
    checkPackageNameList(o.permittedInputMethods);
    checkUnnamed2083(o.persistentPreferredActivities);
    unittest.expect(o.playStoreMode, unittest.equals('foo'));
    unittest.expect(o.privateKeySelectionEnabled, unittest.isTrue);
    checkProxyInfo(o.recommendedGlobalProxy);
    unittest.expect(o.removeUserDisabled, unittest.isTrue);
    unittest.expect(o.safeBootDisabled, unittest.isTrue);
    unittest.expect(o.screenCaptureDisabled, unittest.isTrue);
    unittest.expect(o.setUserIconDisabled, unittest.isTrue);
    unittest.expect(o.setWallpaperDisabled, unittest.isTrue);
    unittest.expect(o.shareLocationDisabled, unittest.isTrue);
    checkUserFacingMessage(o.shortSupportMessage);
    unittest.expect(o.skipFirstUseHintsEnabled, unittest.isTrue);
    unittest.expect(o.smsDisabled, unittest.isTrue);
    unittest.expect(o.statusBarDisabled, unittest.isTrue);
    checkStatusReportingSettings(o.statusReportingSettings);
    checkUnnamed2084(o.stayOnPluggedModes);
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

buildUnnamed2085() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2085(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterProxyInfo = 0;
buildProxyInfo() {
  var o = new api.ProxyInfo();
  buildCounterProxyInfo++;
  if (buildCounterProxyInfo < 3) {
    o.excludedHosts = buildUnnamed2085();
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
    checkUnnamed2085(o.excludedHosts);
    unittest.expect(o.host, unittest.equals('foo'));
    unittest.expect(o.pacUri, unittest.equals('foo'));
    unittest.expect(o.port, unittest.equals(42));
  }
  buildCounterProxyInfo--;
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

buildUnnamed2086() {
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

checkUnnamed2086(core.Map<core.String, core.Object> o) {
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

buildUnnamed2087() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed2086());
  o.add(buildUnnamed2086());
  return o;
}

checkUnnamed2087(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2086(o[0]);
  checkUnnamed2086(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2087();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed2087(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterStatusReportingSettings = 0;
buildStatusReportingSettings() {
  var o = new api.StatusReportingSettings();
  buildCounterStatusReportingSettings++;
  if (buildCounterStatusReportingSettings < 3) {
    o.applicationReportsEnabled = true;
    o.deviceSettingsEnabled = true;
    o.displayInfoEnabled = true;
    o.hardwareStatusEnabled = true;
    o.memoryInfoEnabled = true;
    o.networkInfoEnabled = true;
    o.powerManagementEventsEnabled = true;
    o.softwareInfoEnabled = true;
  }
  buildCounterStatusReportingSettings--;
  return o;
}

checkStatusReportingSettings(api.StatusReportingSettings o) {
  buildCounterStatusReportingSettings++;
  if (buildCounterStatusReportingSettings < 3) {
    unittest.expect(o.applicationReportsEnabled, unittest.isTrue);
    unittest.expect(o.deviceSettingsEnabled, unittest.isTrue);
    unittest.expect(o.displayInfoEnabled, unittest.isTrue);
    unittest.expect(o.hardwareStatusEnabled, unittest.isTrue);
    unittest.expect(o.memoryInfoEnabled, unittest.isTrue);
    unittest.expect(o.networkInfoEnabled, unittest.isTrue);
    unittest.expect(o.powerManagementEventsEnabled, unittest.isTrue);
    unittest.expect(o.softwareInfoEnabled, unittest.isTrue);
  }
  buildCounterStatusReportingSettings--;
}

core.int buildCounterSystemUpdate = 0;
buildSystemUpdate() {
  var o = new api.SystemUpdate();
  buildCounterSystemUpdate++;
  if (buildCounterSystemUpdate < 3) {
    o.endMinutes = 42;
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

buildUnnamed2088() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed2088(core.Map<core.String, core.String> o) {
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
    o.localizedMessages = buildUnnamed2088();
  }
  buildCounterUserFacingMessage--;
  return o;
}

checkUserFacingMessage(api.UserFacingMessage o) {
  buildCounterUserFacingMessage++;
  if (buildCounterUserFacingMessage < 3) {
    unittest.expect(o.defaultMessage, unittest.equals('foo'));
    checkUnnamed2088(o.localizedMessages);
  }
  buildCounterUserFacingMessage--;
}

buildUnnamed2089() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2089(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterWebToken = 0;
buildWebToken() {
  var o = new api.WebToken();
  buildCounterWebToken++;
  if (buildCounterWebToken < 3) {
    o.name = "foo";
    o.parentFrameUrl = "foo";
    o.permissions = buildUnnamed2089();
    o.value = "foo";
  }
  buildCounterWebToken--;
  return o;
}

checkWebToken(api.WebToken o) {
  buildCounterWebToken++;
  if (buildCounterWebToken < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.parentFrameUrl, unittest.equals('foo'));
    checkUnnamed2089(o.permissions);
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterWebToken--;
}

buildUnnamed2090() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed2090(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

main() {
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

  unittest.group("obj-schema-WebToken", () {
    unittest.test("to-json--from-json", () {
      var o = buildWebToken();
      var od = new api.WebToken.fromJson(o.toJson());
      checkWebToken(od);
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
      var arg_wipeDataFlags = buildUnnamed2090();
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
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name,
              wipeDataFlags: arg_wipeDataFlags, $fields: arg_$fields)
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
      var arg_callbackUrl = "foo";
      var arg_projectId = "foo";
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
            queryMap["callbackUrl"].first, unittest.equals(arg_callbackUrl));
        unittest.expect(
            queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSignupUrl());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(
              callbackUrl: arg_callbackUrl,
              projectId: arg_projectId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSignupUrl(response);
      })));
    });
  });
}
