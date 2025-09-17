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

import 'package:googleapis/cloudidentity/v1beta1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAddIdpCredentialRequest = 0;
api.AddIdpCredentialRequest buildAddIdpCredentialRequest() {
  final o = api.AddIdpCredentialRequest();
  buildCounterAddIdpCredentialRequest++;
  if (buildCounterAddIdpCredentialRequest < 3) {
    o.pemData = 'foo';
  }
  buildCounterAddIdpCredentialRequest--;
  return o;
}

void checkAddIdpCredentialRequest(api.AddIdpCredentialRequest o) {
  buildCounterAddIdpCredentialRequest++;
  if (buildCounterAddIdpCredentialRequest < 3) {
    unittest.expect(o.pemData!, unittest.equals('foo'));
  }
  buildCounterAddIdpCredentialRequest--;
}

core.int buildCounterAndroidAttributes = 0;
api.AndroidAttributes buildAndroidAttributes() {
  final o = api.AndroidAttributes();
  buildCounterAndroidAttributes++;
  if (buildCounterAndroidAttributes < 3) {
    o.ctsProfileMatch = true;
    o.enabledUnknownSources = true;
    o.hasPotentiallyHarmfulApps = true;
    o.ownerProfileAccount = true;
    o.ownershipPrivilege = 'foo';
    o.supportsWorkProfile = true;
    o.verifiedBoot = true;
    o.verifyAppsEnabled = true;
  }
  buildCounterAndroidAttributes--;
  return o;
}

void checkAndroidAttributes(api.AndroidAttributes o) {
  buildCounterAndroidAttributes++;
  if (buildCounterAndroidAttributes < 3) {
    unittest.expect(o.ctsProfileMatch!, unittest.isTrue);
    unittest.expect(o.enabledUnknownSources!, unittest.isTrue);
    unittest.expect(o.hasPotentiallyHarmfulApps!, unittest.isTrue);
    unittest.expect(o.ownerProfileAccount!, unittest.isTrue);
    unittest.expect(o.ownershipPrivilege!, unittest.equals('foo'));
    unittest.expect(o.supportsWorkProfile!, unittest.isTrue);
    unittest.expect(o.verifiedBoot!, unittest.isTrue);
    unittest.expect(o.verifyAppsEnabled!, unittest.isTrue);
  }
  buildCounterAndroidAttributes--;
}

core.int buildCounterApproveDeviceUserRequest = 0;
api.ApproveDeviceUserRequest buildApproveDeviceUserRequest() {
  final o = api.ApproveDeviceUserRequest();
  buildCounterApproveDeviceUserRequest++;
  if (buildCounterApproveDeviceUserRequest < 3) {
    o.customer = 'foo';
  }
  buildCounterApproveDeviceUserRequest--;
  return o;
}

void checkApproveDeviceUserRequest(api.ApproveDeviceUserRequest o) {
  buildCounterApproveDeviceUserRequest++;
  if (buildCounterApproveDeviceUserRequest < 3) {
    unittest.expect(o.customer!, unittest.equals('foo'));
  }
  buildCounterApproveDeviceUserRequest--;
}

core.int buildCounterBlockDeviceUserRequest = 0;
api.BlockDeviceUserRequest buildBlockDeviceUserRequest() {
  final o = api.BlockDeviceUserRequest();
  buildCounterBlockDeviceUserRequest++;
  if (buildCounterBlockDeviceUserRequest < 3) {
    o.customer = 'foo';
  }
  buildCounterBlockDeviceUserRequest--;
  return o;
}

void checkBlockDeviceUserRequest(api.BlockDeviceUserRequest o) {
  buildCounterBlockDeviceUserRequest++;
  if (buildCounterBlockDeviceUserRequest < 3) {
    unittest.expect(o.customer!, unittest.equals('foo'));
  }
  buildCounterBlockDeviceUserRequest--;
}

core.int buildCounterBrowserAttributes = 0;
api.BrowserAttributes buildBrowserAttributes() {
  final o = api.BrowserAttributes();
  buildCounterBrowserAttributes++;
  if (buildCounterBrowserAttributes < 3) {
    o.chromeBrowserInfo = buildBrowserInfo();
    o.chromeProfileId = 'foo';
    o.lastProfileSyncTime = 'foo';
  }
  buildCounterBrowserAttributes--;
  return o;
}

void checkBrowserAttributes(api.BrowserAttributes o) {
  buildCounterBrowserAttributes++;
  if (buildCounterBrowserAttributes < 3) {
    checkBrowserInfo(o.chromeBrowserInfo!);
    unittest.expect(o.chromeProfileId!, unittest.equals('foo'));
    unittest.expect(o.lastProfileSyncTime!, unittest.equals('foo'));
  }
  buildCounterBrowserAttributes--;
}

core.int buildCounterBrowserInfo = 0;
api.BrowserInfo buildBrowserInfo() {
  final o = api.BrowserInfo();
  buildCounterBrowserInfo++;
  if (buildCounterBrowserInfo < 3) {
    o.browserManagementState = 'foo';
    o.browserVersion = 'foo';
    o.isBuiltInDnsClientEnabled = true;
    o.isBulkDataEntryAnalysisEnabled = true;
    o.isChromeCleanupEnabled = true;
    o.isChromeRemoteDesktopAppBlocked = true;
    o.isFileDownloadAnalysisEnabled = true;
    o.isFileUploadAnalysisEnabled = true;
    o.isRealtimeUrlCheckEnabled = true;
    o.isSecurityEventAnalysisEnabled = true;
    o.isSiteIsolationEnabled = true;
    o.isThirdPartyBlockingEnabled = true;
    o.passwordProtectionWarningTrigger = 'foo';
    o.safeBrowsingProtectionLevel = 'foo';
  }
  buildCounterBrowserInfo--;
  return o;
}

void checkBrowserInfo(api.BrowserInfo o) {
  buildCounterBrowserInfo++;
  if (buildCounterBrowserInfo < 3) {
    unittest.expect(o.browserManagementState!, unittest.equals('foo'));
    unittest.expect(o.browserVersion!, unittest.equals('foo'));
    unittest.expect(o.isBuiltInDnsClientEnabled!, unittest.isTrue);
    unittest.expect(o.isBulkDataEntryAnalysisEnabled!, unittest.isTrue);
    unittest.expect(o.isChromeCleanupEnabled!, unittest.isTrue);
    unittest.expect(o.isChromeRemoteDesktopAppBlocked!, unittest.isTrue);
    unittest.expect(o.isFileDownloadAnalysisEnabled!, unittest.isTrue);
    unittest.expect(o.isFileUploadAnalysisEnabled!, unittest.isTrue);
    unittest.expect(o.isRealtimeUrlCheckEnabled!, unittest.isTrue);
    unittest.expect(o.isSecurityEventAnalysisEnabled!, unittest.isTrue);
    unittest.expect(o.isSiteIsolationEnabled!, unittest.isTrue);
    unittest.expect(o.isThirdPartyBlockingEnabled!, unittest.isTrue);
    unittest.expect(
      o.passwordProtectionWarningTrigger!,
      unittest.equals('foo'),
    );
    unittest.expect(o.safeBrowsingProtectionLevel!, unittest.equals('foo'));
  }
  buildCounterBrowserInfo--;
}

core.int buildCounterCancelUserInvitationRequest = 0;
api.CancelUserInvitationRequest buildCancelUserInvitationRequest() {
  final o = api.CancelUserInvitationRequest();
  buildCounterCancelUserInvitationRequest++;
  if (buildCounterCancelUserInvitationRequest < 3) {}
  buildCounterCancelUserInvitationRequest--;
  return o;
}

void checkCancelUserInvitationRequest(api.CancelUserInvitationRequest o) {
  buildCounterCancelUserInvitationRequest++;
  if (buildCounterCancelUserInvitationRequest < 3) {}
  buildCounterCancelUserInvitationRequest--;
}

core.int buildCounterCancelWipeDeviceRequest = 0;
api.CancelWipeDeviceRequest buildCancelWipeDeviceRequest() {
  final o = api.CancelWipeDeviceRequest();
  buildCounterCancelWipeDeviceRequest++;
  if (buildCounterCancelWipeDeviceRequest < 3) {
    o.customer = 'foo';
  }
  buildCounterCancelWipeDeviceRequest--;
  return o;
}

void checkCancelWipeDeviceRequest(api.CancelWipeDeviceRequest o) {
  buildCounterCancelWipeDeviceRequest++;
  if (buildCounterCancelWipeDeviceRequest < 3) {
    unittest.expect(o.customer!, unittest.equals('foo'));
  }
  buildCounterCancelWipeDeviceRequest--;
}

core.int buildCounterCancelWipeDeviceUserRequest = 0;
api.CancelWipeDeviceUserRequest buildCancelWipeDeviceUserRequest() {
  final o = api.CancelWipeDeviceUserRequest();
  buildCounterCancelWipeDeviceUserRequest++;
  if (buildCounterCancelWipeDeviceUserRequest < 3) {
    o.customer = 'foo';
  }
  buildCounterCancelWipeDeviceUserRequest--;
  return o;
}

void checkCancelWipeDeviceUserRequest(api.CancelWipeDeviceUserRequest o) {
  buildCounterCancelWipeDeviceUserRequest++;
  if (buildCounterCancelWipeDeviceUserRequest < 3) {
    unittest.expect(o.customer!, unittest.equals('foo'));
  }
  buildCounterCancelWipeDeviceUserRequest--;
}

core.int buildCounterCertificateAttributes = 0;
api.CertificateAttributes buildCertificateAttributes() {
  final o = api.CertificateAttributes();
  buildCounterCertificateAttributes++;
  if (buildCounterCertificateAttributes < 3) {
    o.certificateTemplate = buildCertificateTemplate();
    o.fingerprint = 'foo';
    o.issuer = 'foo';
    o.serialNumber = 'foo';
    o.subject = 'foo';
    o.thumbprint = 'foo';
    o.validationState = 'foo';
    o.validityExpirationTime = 'foo';
    o.validityStartTime = 'foo';
  }
  buildCounterCertificateAttributes--;
  return o;
}

void checkCertificateAttributes(api.CertificateAttributes o) {
  buildCounterCertificateAttributes++;
  if (buildCounterCertificateAttributes < 3) {
    checkCertificateTemplate(o.certificateTemplate!);
    unittest.expect(o.fingerprint!, unittest.equals('foo'));
    unittest.expect(o.issuer!, unittest.equals('foo'));
    unittest.expect(o.serialNumber!, unittest.equals('foo'));
    unittest.expect(o.subject!, unittest.equals('foo'));
    unittest.expect(o.thumbprint!, unittest.equals('foo'));
    unittest.expect(o.validationState!, unittest.equals('foo'));
    unittest.expect(o.validityExpirationTime!, unittest.equals('foo'));
    unittest.expect(o.validityStartTime!, unittest.equals('foo'));
  }
  buildCounterCertificateAttributes--;
}

core.int buildCounterCertificateTemplate = 0;
api.CertificateTemplate buildCertificateTemplate() {
  final o = api.CertificateTemplate();
  buildCounterCertificateTemplate++;
  if (buildCounterCertificateTemplate < 3) {
    o.id = 'foo';
    o.majorVersion = 42;
    o.minorVersion = 42;
  }
  buildCounterCertificateTemplate--;
  return o;
}

void checkCertificateTemplate(api.CertificateTemplate o) {
  buildCounterCertificateTemplate++;
  if (buildCounterCertificateTemplate < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.majorVersion!, unittest.equals(42));
    unittest.expect(o.minorVersion!, unittest.equals(42));
  }
  buildCounterCertificateTemplate--;
}

core.int buildCounterCheckTransitiveMembershipResponse = 0;
api.CheckTransitiveMembershipResponse buildCheckTransitiveMembershipResponse() {
  final o = api.CheckTransitiveMembershipResponse();
  buildCounterCheckTransitiveMembershipResponse++;
  if (buildCounterCheckTransitiveMembershipResponse < 3) {
    o.hasMembership = true;
  }
  buildCounterCheckTransitiveMembershipResponse--;
  return o;
}

void checkCheckTransitiveMembershipResponse(
  api.CheckTransitiveMembershipResponse o,
) {
  buildCounterCheckTransitiveMembershipResponse++;
  if (buildCounterCheckTransitiveMembershipResponse < 3) {
    unittest.expect(o.hasMembership!, unittest.isTrue);
  }
  buildCounterCheckTransitiveMembershipResponse--;
}

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.CustomAttributeValue> buildUnnamed1() => {
  'x': buildCustomAttributeValue(),
  'y': buildCustomAttributeValue(),
};

void checkUnnamed1(core.Map<core.String, api.CustomAttributeValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttributeValue(o['x']!);
  checkCustomAttributeValue(o['y']!);
}

core.int buildCounterClientState = 0;
api.ClientState buildClientState() {
  final o = api.ClientState();
  buildCounterClientState++;
  if (buildCounterClientState < 3) {
    o.assetTags = buildUnnamed0();
    o.complianceState = 'foo';
    o.createTime = 'foo';
    o.customId = 'foo';
    o.etag = 'foo';
    o.healthScore = 'foo';
    o.keyValuePairs = buildUnnamed1();
    o.lastUpdateTime = 'foo';
    o.managed = 'foo';
    o.name = 'foo';
    o.ownerType = 'foo';
    o.scoreReason = 'foo';
  }
  buildCounterClientState--;
  return o;
}

void checkClientState(api.ClientState o) {
  buildCounterClientState++;
  if (buildCounterClientState < 3) {
    checkUnnamed0(o.assetTags!);
    unittest.expect(o.complianceState!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.customId!, unittest.equals('foo'));
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.healthScore!, unittest.equals('foo'));
    checkUnnamed1(o.keyValuePairs!);
    unittest.expect(o.lastUpdateTime!, unittest.equals('foo'));
    unittest.expect(o.managed!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.ownerType!, unittest.equals('foo'));
    unittest.expect(o.scoreReason!, unittest.equals('foo'));
  }
  buildCounterClientState--;
}

core.int buildCounterCreateDeviceRequest = 0;
api.CreateDeviceRequest buildCreateDeviceRequest() {
  final o = api.CreateDeviceRequest();
  buildCounterCreateDeviceRequest++;
  if (buildCounterCreateDeviceRequest < 3) {
    o.customer = 'foo';
    o.device = buildDevice();
  }
  buildCounterCreateDeviceRequest--;
  return o;
}

void checkCreateDeviceRequest(api.CreateDeviceRequest o) {
  buildCounterCreateDeviceRequest++;
  if (buildCounterCreateDeviceRequest < 3) {
    unittest.expect(o.customer!, unittest.equals('foo'));
    checkDevice(o.device!);
  }
  buildCounterCreateDeviceRequest--;
}

core.int buildCounterCustomAttributeValue = 0;
api.CustomAttributeValue buildCustomAttributeValue() {
  final o = api.CustomAttributeValue();
  buildCounterCustomAttributeValue++;
  if (buildCounterCustomAttributeValue < 3) {
    o.boolValue = true;
    o.numberValue = 42.0;
    o.stringValue = 'foo';
  }
  buildCounterCustomAttributeValue--;
  return o;
}

void checkCustomAttributeValue(api.CustomAttributeValue o) {
  buildCounterCustomAttributeValue++;
  if (buildCounterCustomAttributeValue < 3) {
    unittest.expect(o.boolValue!, unittest.isTrue);
    unittest.expect(o.numberValue!, unittest.equals(42.0));
    unittest.expect(o.stringValue!, unittest.equals('foo'));
  }
  buildCounterCustomAttributeValue--;
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

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDevice = 0;
api.Device buildDevice() {
  final o = api.Device();
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    o.androidSpecificAttributes = buildAndroidAttributes();
    o.assetTag = 'foo';
    o.basebandVersion = 'foo';
    o.bootloaderVersion = 'foo';
    o.brand = 'foo';
    o.buildNumber = 'foo';
    o.clientTypes = buildUnnamed2();
    o.compromisedState = 'foo';
    o.createTime = 'foo';
    o.deviceId = 'foo';
    o.deviceType = 'foo';
    o.enabledDeveloperOptions = true;
    o.enabledUsbDebugging = true;
    o.encryptionState = 'foo';
    o.endpointVerificationSpecificAttributes =
        buildEndpointVerificationSpecificAttributes();
    o.hostname = 'foo';
    o.imei = 'foo';
    o.kernelVersion = 'foo';
    o.lastSyncTime = 'foo';
    o.managementState = 'foo';
    o.manufacturer = 'foo';
    o.meid = 'foo';
    o.model = 'foo';
    o.name = 'foo';
    o.networkOperator = 'foo';
    o.osVersion = 'foo';
    o.otherAccounts = buildUnnamed3();
    o.ownerType = 'foo';
    o.releaseVersion = 'foo';
    o.securityPatchTime = 'foo';
    o.serialNumber = 'foo';
    o.unifiedDeviceId = 'foo';
    o.wifiMacAddresses = buildUnnamed4();
  }
  buildCounterDevice--;
  return o;
}

void checkDevice(api.Device o) {
  buildCounterDevice++;
  if (buildCounterDevice < 3) {
    checkAndroidAttributes(o.androidSpecificAttributes!);
    unittest.expect(o.assetTag!, unittest.equals('foo'));
    unittest.expect(o.basebandVersion!, unittest.equals('foo'));
    unittest.expect(o.bootloaderVersion!, unittest.equals('foo'));
    unittest.expect(o.brand!, unittest.equals('foo'));
    unittest.expect(o.buildNumber!, unittest.equals('foo'));
    checkUnnamed2(o.clientTypes!);
    unittest.expect(o.compromisedState!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.deviceId!, unittest.equals('foo'));
    unittest.expect(o.deviceType!, unittest.equals('foo'));
    unittest.expect(o.enabledDeveloperOptions!, unittest.isTrue);
    unittest.expect(o.enabledUsbDebugging!, unittest.isTrue);
    unittest.expect(o.encryptionState!, unittest.equals('foo'));
    checkEndpointVerificationSpecificAttributes(
      o.endpointVerificationSpecificAttributes!,
    );
    unittest.expect(o.hostname!, unittest.equals('foo'));
    unittest.expect(o.imei!, unittest.equals('foo'));
    unittest.expect(o.kernelVersion!, unittest.equals('foo'));
    unittest.expect(o.lastSyncTime!, unittest.equals('foo'));
    unittest.expect(o.managementState!, unittest.equals('foo'));
    unittest.expect(o.manufacturer!, unittest.equals('foo'));
    unittest.expect(o.meid!, unittest.equals('foo'));
    unittest.expect(o.model!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.networkOperator!, unittest.equals('foo'));
    unittest.expect(o.osVersion!, unittest.equals('foo'));
    checkUnnamed3(o.otherAccounts!);
    unittest.expect(o.ownerType!, unittest.equals('foo'));
    unittest.expect(o.releaseVersion!, unittest.equals('foo'));
    unittest.expect(o.securityPatchTime!, unittest.equals('foo'));
    unittest.expect(o.serialNumber!, unittest.equals('foo'));
    unittest.expect(o.unifiedDeviceId!, unittest.equals('foo'));
    checkUnnamed4(o.wifiMacAddresses!);
  }
  buildCounterDevice--;
}

core.int buildCounterDeviceUser = 0;
api.DeviceUser buildDeviceUser() {
  final o = api.DeviceUser();
  buildCounterDeviceUser++;
  if (buildCounterDeviceUser < 3) {
    o.compromisedState = 'foo';
    o.createTime = 'foo';
    o.firstSyncTime = 'foo';
    o.languageCode = 'foo';
    o.lastSyncTime = 'foo';
    o.managementState = 'foo';
    o.name = 'foo';
    o.passwordState = 'foo';
    o.userAgent = 'foo';
    o.userEmail = 'foo';
  }
  buildCounterDeviceUser--;
  return o;
}

void checkDeviceUser(api.DeviceUser o) {
  buildCounterDeviceUser++;
  if (buildCounterDeviceUser < 3) {
    unittest.expect(o.compromisedState!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.firstSyncTime!, unittest.equals('foo'));
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.lastSyncTime!, unittest.equals('foo'));
    unittest.expect(o.managementState!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.passwordState!, unittest.equals('foo'));
    unittest.expect(o.userAgent!, unittest.equals('foo'));
    unittest.expect(o.userEmail!, unittest.equals('foo'));
  }
  buildCounterDeviceUser--;
}

core.int buildCounterDsaPublicKeyInfo = 0;
api.DsaPublicKeyInfo buildDsaPublicKeyInfo() {
  final o = api.DsaPublicKeyInfo();
  buildCounterDsaPublicKeyInfo++;
  if (buildCounterDsaPublicKeyInfo < 3) {
    o.keySize = 42;
  }
  buildCounterDsaPublicKeyInfo--;
  return o;
}

void checkDsaPublicKeyInfo(api.DsaPublicKeyInfo o) {
  buildCounterDsaPublicKeyInfo++;
  if (buildCounterDsaPublicKeyInfo < 3) {
    unittest.expect(o.keySize!, unittest.equals(42));
  }
  buildCounterDsaPublicKeyInfo--;
}

core.List<api.DynamicGroupQuery> buildUnnamed5() => [
  buildDynamicGroupQuery(),
  buildDynamicGroupQuery(),
];

void checkUnnamed5(core.List<api.DynamicGroupQuery> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDynamicGroupQuery(o[0]);
  checkDynamicGroupQuery(o[1]);
}

core.int buildCounterDynamicGroupMetadata = 0;
api.DynamicGroupMetadata buildDynamicGroupMetadata() {
  final o = api.DynamicGroupMetadata();
  buildCounterDynamicGroupMetadata++;
  if (buildCounterDynamicGroupMetadata < 3) {
    o.queries = buildUnnamed5();
    o.status = buildDynamicGroupStatus();
  }
  buildCounterDynamicGroupMetadata--;
  return o;
}

void checkDynamicGroupMetadata(api.DynamicGroupMetadata o) {
  buildCounterDynamicGroupMetadata++;
  if (buildCounterDynamicGroupMetadata < 3) {
    checkUnnamed5(o.queries!);
    checkDynamicGroupStatus(o.status!);
  }
  buildCounterDynamicGroupMetadata--;
}

core.int buildCounterDynamicGroupQuery = 0;
api.DynamicGroupQuery buildDynamicGroupQuery() {
  final o = api.DynamicGroupQuery();
  buildCounterDynamicGroupQuery++;
  if (buildCounterDynamicGroupQuery < 3) {
    o.query = 'foo';
    o.resourceType = 'foo';
  }
  buildCounterDynamicGroupQuery--;
  return o;
}

void checkDynamicGroupQuery(api.DynamicGroupQuery o) {
  buildCounterDynamicGroupQuery++;
  if (buildCounterDynamicGroupQuery < 3) {
    unittest.expect(o.query!, unittest.equals('foo'));
    unittest.expect(o.resourceType!, unittest.equals('foo'));
  }
  buildCounterDynamicGroupQuery--;
}

core.int buildCounterDynamicGroupStatus = 0;
api.DynamicGroupStatus buildDynamicGroupStatus() {
  final o = api.DynamicGroupStatus();
  buildCounterDynamicGroupStatus++;
  if (buildCounterDynamicGroupStatus < 3) {
    o.status = 'foo';
    o.statusTime = 'foo';
  }
  buildCounterDynamicGroupStatus--;
  return o;
}

void checkDynamicGroupStatus(api.DynamicGroupStatus o) {
  buildCounterDynamicGroupStatus++;
  if (buildCounterDynamicGroupStatus < 3) {
    unittest.expect(o.status!, unittest.equals('foo'));
    unittest.expect(o.statusTime!, unittest.equals('foo'));
  }
  buildCounterDynamicGroupStatus--;
}

core.Map<core.String, core.Object?> buildUnnamed6() => {
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

void checkUnnamed6(core.Map<core.String, core.Object?> o) {
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

core.List<api.BrowserAttributes> buildUnnamed7() => [
  buildBrowserAttributes(),
  buildBrowserAttributes(),
];

void checkUnnamed7(core.List<api.BrowserAttributes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBrowserAttributes(o[0]);
  checkBrowserAttributes(o[1]);
}

core.List<api.CertificateAttributes> buildUnnamed8() => [
  buildCertificateAttributes(),
  buildCertificateAttributes(),
];

void checkUnnamed8(core.List<api.CertificateAttributes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCertificateAttributes(o[0]);
  checkCertificateAttributes(o[1]);
}

core.int buildCounterEndpointVerificationSpecificAttributes = 0;
api.EndpointVerificationSpecificAttributes
buildEndpointVerificationSpecificAttributes() {
  final o = api.EndpointVerificationSpecificAttributes();
  buildCounterEndpointVerificationSpecificAttributes++;
  if (buildCounterEndpointVerificationSpecificAttributes < 3) {
    o.additionalSignals = buildUnnamed6();
    o.browserAttributes = buildUnnamed7();
    o.certificateAttributes = buildUnnamed8();
  }
  buildCounterEndpointVerificationSpecificAttributes--;
  return o;
}

void checkEndpointVerificationSpecificAttributes(
  api.EndpointVerificationSpecificAttributes o,
) {
  buildCounterEndpointVerificationSpecificAttributes++;
  if (buildCounterEndpointVerificationSpecificAttributes < 3) {
    checkUnnamed6(o.additionalSignals!);
    checkUnnamed7(o.browserAttributes!);
    checkUnnamed8(o.certificateAttributes!);
  }
  buildCounterEndpointVerificationSpecificAttributes--;
}

core.int buildCounterEntityKey = 0;
api.EntityKey buildEntityKey() {
  final o = api.EntityKey();
  buildCounterEntityKey++;
  if (buildCounterEntityKey < 3) {
    o.id = 'foo';
    o.namespace = 'foo';
  }
  buildCounterEntityKey--;
  return o;
}

void checkEntityKey(api.EntityKey o) {
  buildCounterEntityKey++;
  if (buildCounterEntityKey < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.namespace!, unittest.equals('foo'));
  }
  buildCounterEntityKey--;
}

core.int buildCounterExpiryDetail = 0;
api.ExpiryDetail buildExpiryDetail() {
  final o = api.ExpiryDetail();
  buildCounterExpiryDetail++;
  if (buildCounterExpiryDetail < 3) {
    o.expireTime = 'foo';
  }
  buildCounterExpiryDetail--;
  return o;
}

void checkExpiryDetail(api.ExpiryDetail o) {
  buildCounterExpiryDetail++;
  if (buildCounterExpiryDetail < 3) {
    unittest.expect(o.expireTime!, unittest.equals('foo'));
  }
  buildCounterExpiryDetail--;
}

core.List<api.EntityKey> buildUnnamed9() => [
  buildEntityKey(),
  buildEntityKey(),
];

void checkUnnamed9(core.List<api.EntityKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityKey(o[0]);
  checkEntityKey(o[1]);
}

core.Map<core.String, core.String> buildUnnamed10() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed10(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.PosixGroup> buildUnnamed11() => [
  buildPosixGroup(),
  buildPosixGroup(),
];

void checkUnnamed11(core.List<api.PosixGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPosixGroup(o[0]);
  checkPosixGroup(o[1]);
}

core.int buildCounterGroup = 0;
api.Group buildGroup() {
  final o = api.Group();
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    o.additionalGroupKeys = buildUnnamed9();
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.dynamicGroupMetadata = buildDynamicGroupMetadata();
    o.groupKey = buildEntityKey();
    o.labels = buildUnnamed10();
    o.name = 'foo';
    o.parent = 'foo';
    o.posixGroups = buildUnnamed11();
    o.updateTime = 'foo';
  }
  buildCounterGroup--;
  return o;
}

void checkGroup(api.Group o) {
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    checkUnnamed9(o.additionalGroupKeys!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkDynamicGroupMetadata(o.dynamicGroupMetadata!);
    checkEntityKey(o.groupKey!);
    checkUnnamed10(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.parent!, unittest.equals('foo'));
    checkUnnamed11(o.posixGroups!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGroup--;
}

core.Map<core.String, core.String> buildUnnamed12() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed12(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.TransitiveMembershipRole> buildUnnamed13() => [
  buildTransitiveMembershipRole(),
  buildTransitiveMembershipRole(),
];

void checkUnnamed13(core.List<api.TransitiveMembershipRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransitiveMembershipRole(o[0]);
  checkTransitiveMembershipRole(o[1]);
}

core.int buildCounterGroupRelation = 0;
api.GroupRelation buildGroupRelation() {
  final o = api.GroupRelation();
  buildCounterGroupRelation++;
  if (buildCounterGroupRelation < 3) {
    o.displayName = 'foo';
    o.group = 'foo';
    o.groupKey = buildEntityKey();
    o.labels = buildUnnamed12();
    o.relationType = 'foo';
    o.roles = buildUnnamed13();
  }
  buildCounterGroupRelation--;
  return o;
}

void checkGroupRelation(api.GroupRelation o) {
  buildCounterGroupRelation++;
  if (buildCounterGroupRelation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.group!, unittest.equals('foo'));
    checkEntityKey(o.groupKey!);
    checkUnnamed12(o.labels!);
    unittest.expect(o.relationType!, unittest.equals('foo'));
    checkUnnamed13(o.roles!);
  }
  buildCounterGroupRelation--;
}

core.int buildCounterIdpCredential = 0;
api.IdpCredential buildIdpCredential() {
  final o = api.IdpCredential();
  buildCounterIdpCredential++;
  if (buildCounterIdpCredential < 3) {
    o.dsaKeyInfo = buildDsaPublicKeyInfo();
    o.name = 'foo';
    o.rsaKeyInfo = buildRsaPublicKeyInfo();
    o.updateTime = 'foo';
  }
  buildCounterIdpCredential--;
  return o;
}

void checkIdpCredential(api.IdpCredential o) {
  buildCounterIdpCredential++;
  if (buildCounterIdpCredential < 3) {
    checkDsaPublicKeyInfo(o.dsaKeyInfo!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkRsaPublicKeyInfo(o.rsaKeyInfo!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterIdpCredential--;
}

core.int buildCounterInboundSamlSsoProfile = 0;
api.InboundSamlSsoProfile buildInboundSamlSsoProfile() {
  final o = api.InboundSamlSsoProfile();
  buildCounterInboundSamlSsoProfile++;
  if (buildCounterInboundSamlSsoProfile < 3) {
    o.customer = 'foo';
    o.displayName = 'foo';
    o.idpConfig = buildSamlIdpConfig();
    o.name = 'foo';
    o.spConfig = buildSamlSpConfig();
  }
  buildCounterInboundSamlSsoProfile--;
  return o;
}

void checkInboundSamlSsoProfile(api.InboundSamlSsoProfile o) {
  buildCounterInboundSamlSsoProfile++;
  if (buildCounterInboundSamlSsoProfile < 3) {
    unittest.expect(o.customer!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkSamlIdpConfig(o.idpConfig!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkSamlSpConfig(o.spConfig!);
  }
  buildCounterInboundSamlSsoProfile--;
}

core.int buildCounterInboundSsoAssignment = 0;
api.InboundSsoAssignment buildInboundSsoAssignment() {
  final o = api.InboundSsoAssignment();
  buildCounterInboundSsoAssignment++;
  if (buildCounterInboundSsoAssignment < 3) {
    o.customer = 'foo';
    o.name = 'foo';
    o.rank = 42;
    o.samlSsoInfo = buildSamlSsoInfo();
    o.signInBehavior = buildSignInBehavior();
    o.ssoMode = 'foo';
    o.targetGroup = 'foo';
    o.targetOrgUnit = 'foo';
  }
  buildCounterInboundSsoAssignment--;
  return o;
}

void checkInboundSsoAssignment(api.InboundSsoAssignment o) {
  buildCounterInboundSsoAssignment++;
  if (buildCounterInboundSsoAssignment < 3) {
    unittest.expect(o.customer!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.rank!, unittest.equals(42));
    checkSamlSsoInfo(o.samlSsoInfo!);
    checkSignInBehavior(o.signInBehavior!);
    unittest.expect(o.ssoMode!, unittest.equals('foo'));
    unittest.expect(o.targetGroup!, unittest.equals('foo'));
    unittest.expect(o.targetOrgUnit!, unittest.equals('foo'));
  }
  buildCounterInboundSsoAssignment--;
}

core.int buildCounterIsInvitableUserResponse = 0;
api.IsInvitableUserResponse buildIsInvitableUserResponse() {
  final o = api.IsInvitableUserResponse();
  buildCounterIsInvitableUserResponse++;
  if (buildCounterIsInvitableUserResponse < 3) {
    o.isInvitableUser = true;
  }
  buildCounterIsInvitableUserResponse--;
  return o;
}

void checkIsInvitableUserResponse(api.IsInvitableUserResponse o) {
  buildCounterIsInvitableUserResponse++;
  if (buildCounterIsInvitableUserResponse < 3) {
    unittest.expect(o.isInvitableUser!, unittest.isTrue);
  }
  buildCounterIsInvitableUserResponse--;
}

core.List<api.DeviceUser> buildUnnamed14() => [
  buildDeviceUser(),
  buildDeviceUser(),
];

void checkUnnamed14(core.List<api.DeviceUser> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDeviceUser(o[0]);
  checkDeviceUser(o[1]);
}

core.int buildCounterListDeviceUsersResponse = 0;
api.ListDeviceUsersResponse buildListDeviceUsersResponse() {
  final o = api.ListDeviceUsersResponse();
  buildCounterListDeviceUsersResponse++;
  if (buildCounterListDeviceUsersResponse < 3) {
    o.deviceUsers = buildUnnamed14();
    o.nextPageToken = 'foo';
  }
  buildCounterListDeviceUsersResponse--;
  return o;
}

void checkListDeviceUsersResponse(api.ListDeviceUsersResponse o) {
  buildCounterListDeviceUsersResponse++;
  if (buildCounterListDeviceUsersResponse < 3) {
    checkUnnamed14(o.deviceUsers!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListDeviceUsersResponse--;
}

core.List<api.Device> buildUnnamed15() => [buildDevice(), buildDevice()];

void checkUnnamed15(core.List<api.Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDevice(o[0]);
  checkDevice(o[1]);
}

core.int buildCounterListDevicesResponse = 0;
api.ListDevicesResponse buildListDevicesResponse() {
  final o = api.ListDevicesResponse();
  buildCounterListDevicesResponse++;
  if (buildCounterListDevicesResponse < 3) {
    o.devices = buildUnnamed15();
    o.nextPageToken = 'foo';
  }
  buildCounterListDevicesResponse--;
  return o;
}

void checkListDevicesResponse(api.ListDevicesResponse o) {
  buildCounterListDevicesResponse++;
  if (buildCounterListDevicesResponse < 3) {
    checkUnnamed15(o.devices!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListDevicesResponse--;
}

core.List<api.Group> buildUnnamed16() => [buildGroup(), buildGroup()];

void checkUnnamed16(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0]);
  checkGroup(o[1]);
}

core.int buildCounterListGroupsResponse = 0;
api.ListGroupsResponse buildListGroupsResponse() {
  final o = api.ListGroupsResponse();
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    o.groups = buildUnnamed16();
    o.nextPageToken = 'foo';
  }
  buildCounterListGroupsResponse--;
  return o;
}

void checkListGroupsResponse(api.ListGroupsResponse o) {
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    checkUnnamed16(o.groups!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListGroupsResponse--;
}

core.List<api.IdpCredential> buildUnnamed17() => [
  buildIdpCredential(),
  buildIdpCredential(),
];

void checkUnnamed17(core.List<api.IdpCredential> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIdpCredential(o[0]);
  checkIdpCredential(o[1]);
}

core.int buildCounterListIdpCredentialsResponse = 0;
api.ListIdpCredentialsResponse buildListIdpCredentialsResponse() {
  final o = api.ListIdpCredentialsResponse();
  buildCounterListIdpCredentialsResponse++;
  if (buildCounterListIdpCredentialsResponse < 3) {
    o.idpCredentials = buildUnnamed17();
    o.nextPageToken = 'foo';
  }
  buildCounterListIdpCredentialsResponse--;
  return o;
}

void checkListIdpCredentialsResponse(api.ListIdpCredentialsResponse o) {
  buildCounterListIdpCredentialsResponse++;
  if (buildCounterListIdpCredentialsResponse < 3) {
    checkUnnamed17(o.idpCredentials!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListIdpCredentialsResponse--;
}

core.List<api.InboundSamlSsoProfile> buildUnnamed18() => [
  buildInboundSamlSsoProfile(),
  buildInboundSamlSsoProfile(),
];

void checkUnnamed18(core.List<api.InboundSamlSsoProfile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInboundSamlSsoProfile(o[0]);
  checkInboundSamlSsoProfile(o[1]);
}

core.int buildCounterListInboundSamlSsoProfilesResponse = 0;
api.ListInboundSamlSsoProfilesResponse
buildListInboundSamlSsoProfilesResponse() {
  final o = api.ListInboundSamlSsoProfilesResponse();
  buildCounterListInboundSamlSsoProfilesResponse++;
  if (buildCounterListInboundSamlSsoProfilesResponse < 3) {
    o.inboundSamlSsoProfiles = buildUnnamed18();
    o.nextPageToken = 'foo';
  }
  buildCounterListInboundSamlSsoProfilesResponse--;
  return o;
}

void checkListInboundSamlSsoProfilesResponse(
  api.ListInboundSamlSsoProfilesResponse o,
) {
  buildCounterListInboundSamlSsoProfilesResponse++;
  if (buildCounterListInboundSamlSsoProfilesResponse < 3) {
    checkUnnamed18(o.inboundSamlSsoProfiles!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListInboundSamlSsoProfilesResponse--;
}

core.List<api.InboundSsoAssignment> buildUnnamed19() => [
  buildInboundSsoAssignment(),
  buildInboundSsoAssignment(),
];

void checkUnnamed19(core.List<api.InboundSsoAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInboundSsoAssignment(o[0]);
  checkInboundSsoAssignment(o[1]);
}

core.int buildCounterListInboundSsoAssignmentsResponse = 0;
api.ListInboundSsoAssignmentsResponse buildListInboundSsoAssignmentsResponse() {
  final o = api.ListInboundSsoAssignmentsResponse();
  buildCounterListInboundSsoAssignmentsResponse++;
  if (buildCounterListInboundSsoAssignmentsResponse < 3) {
    o.inboundSsoAssignments = buildUnnamed19();
    o.nextPageToken = 'foo';
  }
  buildCounterListInboundSsoAssignmentsResponse--;
  return o;
}

void checkListInboundSsoAssignmentsResponse(
  api.ListInboundSsoAssignmentsResponse o,
) {
  buildCounterListInboundSsoAssignmentsResponse++;
  if (buildCounterListInboundSsoAssignmentsResponse < 3) {
    checkUnnamed19(o.inboundSsoAssignments!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListInboundSsoAssignmentsResponse--;
}

core.List<api.Membership> buildUnnamed20() => [
  buildMembership(),
  buildMembership(),
];

void checkUnnamed20(core.List<api.Membership> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembership(o[0]);
  checkMembership(o[1]);
}

core.int buildCounterListMembershipsResponse = 0;
api.ListMembershipsResponse buildListMembershipsResponse() {
  final o = api.ListMembershipsResponse();
  buildCounterListMembershipsResponse++;
  if (buildCounterListMembershipsResponse < 3) {
    o.memberships = buildUnnamed20();
    o.nextPageToken = 'foo';
  }
  buildCounterListMembershipsResponse--;
  return o;
}

void checkListMembershipsResponse(api.ListMembershipsResponse o) {
  buildCounterListMembershipsResponse++;
  if (buildCounterListMembershipsResponse < 3) {
    checkUnnamed20(o.memberships!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListMembershipsResponse--;
}

core.List<api.OrgMembership> buildUnnamed21() => [
  buildOrgMembership(),
  buildOrgMembership(),
];

void checkUnnamed21(core.List<api.OrgMembership> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrgMembership(o[0]);
  checkOrgMembership(o[1]);
}

core.int buildCounterListOrgMembershipsResponse = 0;
api.ListOrgMembershipsResponse buildListOrgMembershipsResponse() {
  final o = api.ListOrgMembershipsResponse();
  buildCounterListOrgMembershipsResponse++;
  if (buildCounterListOrgMembershipsResponse < 3) {
    o.nextPageToken = 'foo';
    o.orgMemberships = buildUnnamed21();
  }
  buildCounterListOrgMembershipsResponse--;
  return o;
}

void checkListOrgMembershipsResponse(api.ListOrgMembershipsResponse o) {
  buildCounterListOrgMembershipsResponse++;
  if (buildCounterListOrgMembershipsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed21(o.orgMemberships!);
  }
  buildCounterListOrgMembershipsResponse--;
}

core.List<api.Policy> buildUnnamed22() => [buildPolicy(), buildPolicy()];

void checkUnnamed22(core.List<api.Policy> o) {
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
    o.policies = buildUnnamed22();
  }
  buildCounterListPoliciesResponse--;
  return o;
}

void checkListPoliciesResponse(api.ListPoliciesResponse o) {
  buildCounterListPoliciesResponse++;
  if (buildCounterListPoliciesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed22(o.policies!);
  }
  buildCounterListPoliciesResponse--;
}

core.List<api.UserInvitation> buildUnnamed23() => [
  buildUserInvitation(),
  buildUserInvitation(),
];

void checkUnnamed23(core.List<api.UserInvitation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUserInvitation(o[0]);
  checkUserInvitation(o[1]);
}

core.int buildCounterListUserInvitationsResponse = 0;
api.ListUserInvitationsResponse buildListUserInvitationsResponse() {
  final o = api.ListUserInvitationsResponse();
  buildCounterListUserInvitationsResponse++;
  if (buildCounterListUserInvitationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.userInvitations = buildUnnamed23();
  }
  buildCounterListUserInvitationsResponse--;
  return o;
}

void checkListUserInvitationsResponse(api.ListUserInvitationsResponse o) {
  buildCounterListUserInvitationsResponse++;
  if (buildCounterListUserInvitationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed23(o.userInvitations!);
  }
  buildCounterListUserInvitationsResponse--;
}

core.int buildCounterLookupGroupNameResponse = 0;
api.LookupGroupNameResponse buildLookupGroupNameResponse() {
  final o = api.LookupGroupNameResponse();
  buildCounterLookupGroupNameResponse++;
  if (buildCounterLookupGroupNameResponse < 3) {
    o.name = 'foo';
  }
  buildCounterLookupGroupNameResponse--;
  return o;
}

void checkLookupGroupNameResponse(api.LookupGroupNameResponse o) {
  buildCounterLookupGroupNameResponse++;
  if (buildCounterLookupGroupNameResponse < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLookupGroupNameResponse--;
}

core.int buildCounterLookupMembershipNameResponse = 0;
api.LookupMembershipNameResponse buildLookupMembershipNameResponse() {
  final o = api.LookupMembershipNameResponse();
  buildCounterLookupMembershipNameResponse++;
  if (buildCounterLookupMembershipNameResponse < 3) {
    o.name = 'foo';
  }
  buildCounterLookupMembershipNameResponse--;
  return o;
}

void checkLookupMembershipNameResponse(api.LookupMembershipNameResponse o) {
  buildCounterLookupMembershipNameResponse++;
  if (buildCounterLookupMembershipNameResponse < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLookupMembershipNameResponse--;
}

core.List<core.String> buildUnnamed24() => ['foo', 'foo'];

void checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLookupSelfDeviceUsersResponse = 0;
api.LookupSelfDeviceUsersResponse buildLookupSelfDeviceUsersResponse() {
  final o = api.LookupSelfDeviceUsersResponse();
  buildCounterLookupSelfDeviceUsersResponse++;
  if (buildCounterLookupSelfDeviceUsersResponse < 3) {
    o.customer = 'foo';
    o.names = buildUnnamed24();
    o.nextPageToken = 'foo';
  }
  buildCounterLookupSelfDeviceUsersResponse--;
  return o;
}

void checkLookupSelfDeviceUsersResponse(api.LookupSelfDeviceUsersResponse o) {
  buildCounterLookupSelfDeviceUsersResponse++;
  if (buildCounterLookupSelfDeviceUsersResponse < 3) {
    unittest.expect(o.customer!, unittest.equals('foo'));
    checkUnnamed24(o.names!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterLookupSelfDeviceUsersResponse--;
}

core.List<api.EntityKey> buildUnnamed25() => [
  buildEntityKey(),
  buildEntityKey(),
];

void checkUnnamed25(core.List<api.EntityKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityKey(o[0]);
  checkEntityKey(o[1]);
}

core.List<api.TransitiveMembershipRole> buildUnnamed26() => [
  buildTransitiveMembershipRole(),
  buildTransitiveMembershipRole(),
];

void checkUnnamed26(core.List<api.TransitiveMembershipRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransitiveMembershipRole(o[0]);
  checkTransitiveMembershipRole(o[1]);
}

core.int buildCounterMemberRelation = 0;
api.MemberRelation buildMemberRelation() {
  final o = api.MemberRelation();
  buildCounterMemberRelation++;
  if (buildCounterMemberRelation < 3) {
    o.member = 'foo';
    o.preferredMemberKey = buildUnnamed25();
    o.relationType = 'foo';
    o.roles = buildUnnamed26();
  }
  buildCounterMemberRelation--;
  return o;
}

void checkMemberRelation(api.MemberRelation o) {
  buildCounterMemberRelation++;
  if (buildCounterMemberRelation < 3) {
    unittest.expect(o.member!, unittest.equals('foo'));
    checkUnnamed25(o.preferredMemberKey!);
    unittest.expect(o.relationType!, unittest.equals('foo'));
    checkUnnamed26(o.roles!);
  }
  buildCounterMemberRelation--;
}

core.int buildCounterMemberRestriction = 0;
api.MemberRestriction buildMemberRestriction() {
  final o = api.MemberRestriction();
  buildCounterMemberRestriction++;
  if (buildCounterMemberRestriction < 3) {
    o.evaluation = buildRestrictionEvaluation();
    o.query = 'foo';
  }
  buildCounterMemberRestriction--;
  return o;
}

void checkMemberRestriction(api.MemberRestriction o) {
  buildCounterMemberRestriction++;
  if (buildCounterMemberRestriction < 3) {
    checkRestrictionEvaluation(o.evaluation!);
    unittest.expect(o.query!, unittest.equals('foo'));
  }
  buildCounterMemberRestriction--;
}

core.List<api.MembershipRole> buildUnnamed27() => [
  buildMembershipRole(),
  buildMembershipRole(),
];

void checkUnnamed27(core.List<api.MembershipRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembershipRole(o[0]);
  checkMembershipRole(o[1]);
}

core.int buildCounterMembership = 0;
api.Membership buildMembership() {
  final o = api.Membership();
  buildCounterMembership++;
  if (buildCounterMembership < 3) {
    o.createTime = 'foo';
    o.deliverySetting = 'foo';
    o.memberKey = buildEntityKey();
    o.name = 'foo';
    o.preferredMemberKey = buildEntityKey();
    o.roles = buildUnnamed27();
    o.type = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterMembership--;
  return o;
}

void checkMembership(api.Membership o) {
  buildCounterMembership++;
  if (buildCounterMembership < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.deliverySetting!, unittest.equals('foo'));
    checkEntityKey(o.memberKey!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkEntityKey(o.preferredMemberKey!);
    checkUnnamed27(o.roles!);
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterMembership--;
}

core.Map<core.String, core.String> buildUnnamed28() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed28(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.MembershipRole> buildUnnamed29() => [
  buildMembershipRole(),
  buildMembershipRole(),
];

void checkUnnamed29(core.List<api.MembershipRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembershipRole(o[0]);
  checkMembershipRole(o[1]);
}

core.int buildCounterMembershipRelation = 0;
api.MembershipRelation buildMembershipRelation() {
  final o = api.MembershipRelation();
  buildCounterMembershipRelation++;
  if (buildCounterMembershipRelation < 3) {
    o.description = 'foo';
    o.displayName = 'foo';
    o.group = 'foo';
    o.groupKey = buildEntityKey();
    o.labels = buildUnnamed28();
    o.membership = 'foo';
    o.roles = buildUnnamed29();
  }
  buildCounterMembershipRelation--;
  return o;
}

void checkMembershipRelation(api.MembershipRelation o) {
  buildCounterMembershipRelation++;
  if (buildCounterMembershipRelation < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.group!, unittest.equals('foo'));
    checkEntityKey(o.groupKey!);
    checkUnnamed28(o.labels!);
    unittest.expect(o.membership!, unittest.equals('foo'));
    checkUnnamed29(o.roles!);
  }
  buildCounterMembershipRelation--;
}

core.int buildCounterMembershipRole = 0;
api.MembershipRole buildMembershipRole() {
  final o = api.MembershipRole();
  buildCounterMembershipRole++;
  if (buildCounterMembershipRole < 3) {
    o.expiryDetail = buildExpiryDetail();
    o.name = 'foo';
    o.restrictionEvaluations = buildRestrictionEvaluations();
  }
  buildCounterMembershipRole--;
  return o;
}

void checkMembershipRole(api.MembershipRole o) {
  buildCounterMembershipRole++;
  if (buildCounterMembershipRole < 3) {
    checkExpiryDetail(o.expiryDetail!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkRestrictionEvaluations(o.restrictionEvaluations!);
  }
  buildCounterMembershipRole--;
}

core.int buildCounterMembershipRoleRestrictionEvaluation = 0;
api.MembershipRoleRestrictionEvaluation
buildMembershipRoleRestrictionEvaluation() {
  final o = api.MembershipRoleRestrictionEvaluation();
  buildCounterMembershipRoleRestrictionEvaluation++;
  if (buildCounterMembershipRoleRestrictionEvaluation < 3) {
    o.state = 'foo';
  }
  buildCounterMembershipRoleRestrictionEvaluation--;
  return o;
}

void checkMembershipRoleRestrictionEvaluation(
  api.MembershipRoleRestrictionEvaluation o,
) {
  buildCounterMembershipRoleRestrictionEvaluation++;
  if (buildCounterMembershipRoleRestrictionEvaluation < 3) {
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterMembershipRoleRestrictionEvaluation--;
}

core.List<api.MembershipRole> buildUnnamed30() => [
  buildMembershipRole(),
  buildMembershipRole(),
];

void checkUnnamed30(core.List<api.MembershipRole> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembershipRole(o[0]);
  checkMembershipRole(o[1]);
}

core.List<core.String> buildUnnamed31() => ['foo', 'foo'];

void checkUnnamed31(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.UpdateMembershipRolesParams> buildUnnamed32() => [
  buildUpdateMembershipRolesParams(),
  buildUpdateMembershipRolesParams(),
];

void checkUnnamed32(core.List<api.UpdateMembershipRolesParams> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpdateMembershipRolesParams(o[0]);
  checkUpdateMembershipRolesParams(o[1]);
}

core.int buildCounterModifyMembershipRolesRequest = 0;
api.ModifyMembershipRolesRequest buildModifyMembershipRolesRequest() {
  final o = api.ModifyMembershipRolesRequest();
  buildCounterModifyMembershipRolesRequest++;
  if (buildCounterModifyMembershipRolesRequest < 3) {
    o.addRoles = buildUnnamed30();
    o.removeRoles = buildUnnamed31();
    o.updateRolesParams = buildUnnamed32();
  }
  buildCounterModifyMembershipRolesRequest--;
  return o;
}

void checkModifyMembershipRolesRequest(api.ModifyMembershipRolesRequest o) {
  buildCounterModifyMembershipRolesRequest++;
  if (buildCounterModifyMembershipRolesRequest < 3) {
    checkUnnamed30(o.addRoles!);
    checkUnnamed31(o.removeRoles!);
    checkUnnamed32(o.updateRolesParams!);
  }
  buildCounterModifyMembershipRolesRequest--;
}

core.int buildCounterModifyMembershipRolesResponse = 0;
api.ModifyMembershipRolesResponse buildModifyMembershipRolesResponse() {
  final o = api.ModifyMembershipRolesResponse();
  buildCounterModifyMembershipRolesResponse++;
  if (buildCounterModifyMembershipRolesResponse < 3) {
    o.membership = buildMembership();
  }
  buildCounterModifyMembershipRolesResponse--;
  return o;
}

void checkModifyMembershipRolesResponse(api.ModifyMembershipRolesResponse o) {
  buildCounterModifyMembershipRolesResponse++;
  if (buildCounterModifyMembershipRolesResponse < 3) {
    checkMembership(o.membership!);
  }
  buildCounterModifyMembershipRolesResponse--;
}

core.int buildCounterMoveOrgMembershipRequest = 0;
api.MoveOrgMembershipRequest buildMoveOrgMembershipRequest() {
  final o = api.MoveOrgMembershipRequest();
  buildCounterMoveOrgMembershipRequest++;
  if (buildCounterMoveOrgMembershipRequest < 3) {
    o.customer = 'foo';
    o.destinationOrgUnit = 'foo';
  }
  buildCounterMoveOrgMembershipRequest--;
  return o;
}

void checkMoveOrgMembershipRequest(api.MoveOrgMembershipRequest o) {
  buildCounterMoveOrgMembershipRequest++;
  if (buildCounterMoveOrgMembershipRequest < 3) {
    unittest.expect(o.customer!, unittest.equals('foo'));
    unittest.expect(o.destinationOrgUnit!, unittest.equals('foo'));
  }
  buildCounterMoveOrgMembershipRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed33() => {
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

void checkUnnamed33(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed34() => {
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

void checkUnnamed34(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed33();
    o.name = 'foo';
    o.response = buildUnnamed34();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed33(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed34(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterOrgMembership = 0;
api.OrgMembership buildOrgMembership() {
  final o = api.OrgMembership();
  buildCounterOrgMembership++;
  if (buildCounterOrgMembership < 3) {
    o.member = 'foo';
    o.memberUri = 'foo';
    o.name = 'foo';
    o.type = 'foo';
  }
  buildCounterOrgMembership--;
  return o;
}

void checkOrgMembership(api.OrgMembership o) {
  buildCounterOrgMembership++;
  if (buildCounterOrgMembership < 3) {
    unittest.expect(o.member!, unittest.equals('foo'));
    unittest.expect(o.memberUri!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterOrgMembership--;
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.customer = 'foo';
    o.name = 'foo';
    o.policyQuery = buildPolicyQuery();
    o.setting = buildSetting();
    o.type = 'foo';
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    unittest.expect(o.customer!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkPolicyQuery(o.policyQuery!);
    checkSetting(o.setting!);
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterPolicy--;
}

core.int buildCounterPolicyQuery = 0;
api.PolicyQuery buildPolicyQuery() {
  final o = api.PolicyQuery();
  buildCounterPolicyQuery++;
  if (buildCounterPolicyQuery < 3) {
    o.group = 'foo';
    o.orgUnit = 'foo';
    o.query = 'foo';
    o.sortOrder = 42.0;
  }
  buildCounterPolicyQuery--;
  return o;
}

void checkPolicyQuery(api.PolicyQuery o) {
  buildCounterPolicyQuery++;
  if (buildCounterPolicyQuery < 3) {
    unittest.expect(o.group!, unittest.equals('foo'));
    unittest.expect(o.orgUnit!, unittest.equals('foo'));
    unittest.expect(o.query!, unittest.equals('foo'));
    unittest.expect(o.sortOrder!, unittest.equals(42.0));
  }
  buildCounterPolicyQuery--;
}

core.int buildCounterPosixGroup = 0;
api.PosixGroup buildPosixGroup() {
  final o = api.PosixGroup();
  buildCounterPosixGroup++;
  if (buildCounterPosixGroup < 3) {
    o.gid = 'foo';
    o.name = 'foo';
    o.systemId = 'foo';
  }
  buildCounterPosixGroup--;
  return o;
}

void checkPosixGroup(api.PosixGroup o) {
  buildCounterPosixGroup++;
  if (buildCounterPosixGroup < 3) {
    unittest.expect(o.gid!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.systemId!, unittest.equals('foo'));
  }
  buildCounterPosixGroup--;
}

core.int buildCounterRestrictionEvaluation = 0;
api.RestrictionEvaluation buildRestrictionEvaluation() {
  final o = api.RestrictionEvaluation();
  buildCounterRestrictionEvaluation++;
  if (buildCounterRestrictionEvaluation < 3) {
    o.state = 'foo';
  }
  buildCounterRestrictionEvaluation--;
  return o;
}

void checkRestrictionEvaluation(api.RestrictionEvaluation o) {
  buildCounterRestrictionEvaluation++;
  if (buildCounterRestrictionEvaluation < 3) {
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterRestrictionEvaluation--;
}

core.int buildCounterRestrictionEvaluations = 0;
api.RestrictionEvaluations buildRestrictionEvaluations() {
  final o = api.RestrictionEvaluations();
  buildCounterRestrictionEvaluations++;
  if (buildCounterRestrictionEvaluations < 3) {
    o.memberRestrictionEvaluation = buildMembershipRoleRestrictionEvaluation();
  }
  buildCounterRestrictionEvaluations--;
  return o;
}

void checkRestrictionEvaluations(api.RestrictionEvaluations o) {
  buildCounterRestrictionEvaluations++;
  if (buildCounterRestrictionEvaluations < 3) {
    checkMembershipRoleRestrictionEvaluation(o.memberRestrictionEvaluation!);
  }
  buildCounterRestrictionEvaluations--;
}

core.int buildCounterRsaPublicKeyInfo = 0;
api.RsaPublicKeyInfo buildRsaPublicKeyInfo() {
  final o = api.RsaPublicKeyInfo();
  buildCounterRsaPublicKeyInfo++;
  if (buildCounterRsaPublicKeyInfo < 3) {
    o.keySize = 42;
  }
  buildCounterRsaPublicKeyInfo--;
  return o;
}

void checkRsaPublicKeyInfo(api.RsaPublicKeyInfo o) {
  buildCounterRsaPublicKeyInfo++;
  if (buildCounterRsaPublicKeyInfo < 3) {
    unittest.expect(o.keySize!, unittest.equals(42));
  }
  buildCounterRsaPublicKeyInfo--;
}

core.int buildCounterSamlIdpConfig = 0;
api.SamlIdpConfig buildSamlIdpConfig() {
  final o = api.SamlIdpConfig();
  buildCounterSamlIdpConfig++;
  if (buildCounterSamlIdpConfig < 3) {
    o.changePasswordUri = 'foo';
    o.entityId = 'foo';
    o.logoutRedirectUri = 'foo';
    o.singleSignOnServiceUri = 'foo';
  }
  buildCounterSamlIdpConfig--;
  return o;
}

void checkSamlIdpConfig(api.SamlIdpConfig o) {
  buildCounterSamlIdpConfig++;
  if (buildCounterSamlIdpConfig < 3) {
    unittest.expect(o.changePasswordUri!, unittest.equals('foo'));
    unittest.expect(o.entityId!, unittest.equals('foo'));
    unittest.expect(o.logoutRedirectUri!, unittest.equals('foo'));
    unittest.expect(o.singleSignOnServiceUri!, unittest.equals('foo'));
  }
  buildCounterSamlIdpConfig--;
}

core.int buildCounterSamlSpConfig = 0;
api.SamlSpConfig buildSamlSpConfig() {
  final o = api.SamlSpConfig();
  buildCounterSamlSpConfig++;
  if (buildCounterSamlSpConfig < 3) {
    o.assertionConsumerServiceUri = 'foo';
    o.entityId = 'foo';
  }
  buildCounterSamlSpConfig--;
  return o;
}

void checkSamlSpConfig(api.SamlSpConfig o) {
  buildCounterSamlSpConfig++;
  if (buildCounterSamlSpConfig < 3) {
    unittest.expect(o.assertionConsumerServiceUri!, unittest.equals('foo'));
    unittest.expect(o.entityId!, unittest.equals('foo'));
  }
  buildCounterSamlSpConfig--;
}

core.int buildCounterSamlSsoInfo = 0;
api.SamlSsoInfo buildSamlSsoInfo() {
  final o = api.SamlSsoInfo();
  buildCounterSamlSsoInfo++;
  if (buildCounterSamlSsoInfo < 3) {
    o.inboundSamlSsoProfile = 'foo';
  }
  buildCounterSamlSsoInfo--;
  return o;
}

void checkSamlSsoInfo(api.SamlSsoInfo o) {
  buildCounterSamlSsoInfo++;
  if (buildCounterSamlSsoInfo < 3) {
    unittest.expect(o.inboundSamlSsoProfile!, unittest.equals('foo'));
  }
  buildCounterSamlSsoInfo--;
}

core.List<api.MembershipRelation> buildUnnamed35() => [
  buildMembershipRelation(),
  buildMembershipRelation(),
];

void checkUnnamed35(core.List<api.MembershipRelation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembershipRelation(o[0]);
  checkMembershipRelation(o[1]);
}

core.int buildCounterSearchDirectGroupsResponse = 0;
api.SearchDirectGroupsResponse buildSearchDirectGroupsResponse() {
  final o = api.SearchDirectGroupsResponse();
  buildCounterSearchDirectGroupsResponse++;
  if (buildCounterSearchDirectGroupsResponse < 3) {
    o.memberships = buildUnnamed35();
    o.nextPageToken = 'foo';
  }
  buildCounterSearchDirectGroupsResponse--;
  return o;
}

void checkSearchDirectGroupsResponse(api.SearchDirectGroupsResponse o) {
  buildCounterSearchDirectGroupsResponse++;
  if (buildCounterSearchDirectGroupsResponse < 3) {
    checkUnnamed35(o.memberships!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterSearchDirectGroupsResponse--;
}

core.List<api.Group> buildUnnamed36() => [buildGroup(), buildGroup()];

void checkUnnamed36(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0]);
  checkGroup(o[1]);
}

core.int buildCounterSearchGroupsResponse = 0;
api.SearchGroupsResponse buildSearchGroupsResponse() {
  final o = api.SearchGroupsResponse();
  buildCounterSearchGroupsResponse++;
  if (buildCounterSearchGroupsResponse < 3) {
    o.groups = buildUnnamed36();
    o.nextPageToken = 'foo';
  }
  buildCounterSearchGroupsResponse--;
  return o;
}

void checkSearchGroupsResponse(api.SearchGroupsResponse o) {
  buildCounterSearchGroupsResponse++;
  if (buildCounterSearchGroupsResponse < 3) {
    checkUnnamed36(o.groups!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterSearchGroupsResponse--;
}

core.List<api.GroupRelation> buildUnnamed37() => [
  buildGroupRelation(),
  buildGroupRelation(),
];

void checkUnnamed37(core.List<api.GroupRelation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroupRelation(o[0]);
  checkGroupRelation(o[1]);
}

core.int buildCounterSearchTransitiveGroupsResponse = 0;
api.SearchTransitiveGroupsResponse buildSearchTransitiveGroupsResponse() {
  final o = api.SearchTransitiveGroupsResponse();
  buildCounterSearchTransitiveGroupsResponse++;
  if (buildCounterSearchTransitiveGroupsResponse < 3) {
    o.memberships = buildUnnamed37();
    o.nextPageToken = 'foo';
  }
  buildCounterSearchTransitiveGroupsResponse--;
  return o;
}

void checkSearchTransitiveGroupsResponse(api.SearchTransitiveGroupsResponse o) {
  buildCounterSearchTransitiveGroupsResponse++;
  if (buildCounterSearchTransitiveGroupsResponse < 3) {
    checkUnnamed37(o.memberships!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterSearchTransitiveGroupsResponse--;
}

core.List<api.MemberRelation> buildUnnamed38() => [
  buildMemberRelation(),
  buildMemberRelation(),
];

void checkUnnamed38(core.List<api.MemberRelation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMemberRelation(o[0]);
  checkMemberRelation(o[1]);
}

core.int buildCounterSearchTransitiveMembershipsResponse = 0;
api.SearchTransitiveMembershipsResponse
buildSearchTransitiveMembershipsResponse() {
  final o = api.SearchTransitiveMembershipsResponse();
  buildCounterSearchTransitiveMembershipsResponse++;
  if (buildCounterSearchTransitiveMembershipsResponse < 3) {
    o.memberships = buildUnnamed38();
    o.nextPageToken = 'foo';
  }
  buildCounterSearchTransitiveMembershipsResponse--;
  return o;
}

void checkSearchTransitiveMembershipsResponse(
  api.SearchTransitiveMembershipsResponse o,
) {
  buildCounterSearchTransitiveMembershipsResponse++;
  if (buildCounterSearchTransitiveMembershipsResponse < 3) {
    checkUnnamed38(o.memberships!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterSearchTransitiveMembershipsResponse--;
}

core.int buildCounterSecuritySettings = 0;
api.SecuritySettings buildSecuritySettings() {
  final o = api.SecuritySettings();
  buildCounterSecuritySettings++;
  if (buildCounterSecuritySettings < 3) {
    o.memberRestriction = buildMemberRestriction();
    o.name = 'foo';
  }
  buildCounterSecuritySettings--;
  return o;
}

void checkSecuritySettings(api.SecuritySettings o) {
  buildCounterSecuritySettings++;
  if (buildCounterSecuritySettings < 3) {
    checkMemberRestriction(o.memberRestriction!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterSecuritySettings--;
}

core.int buildCounterSendUserInvitationRequest = 0;
api.SendUserInvitationRequest buildSendUserInvitationRequest() {
  final o = api.SendUserInvitationRequest();
  buildCounterSendUserInvitationRequest++;
  if (buildCounterSendUserInvitationRequest < 3) {}
  buildCounterSendUserInvitationRequest--;
  return o;
}

void checkSendUserInvitationRequest(api.SendUserInvitationRequest o) {
  buildCounterSendUserInvitationRequest++;
  if (buildCounterSendUserInvitationRequest < 3) {}
  buildCounterSendUserInvitationRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed39() => {
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

void checkUnnamed39(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterSetting = 0;
api.Setting buildSetting() {
  final o = api.Setting();
  buildCounterSetting++;
  if (buildCounterSetting < 3) {
    o.type = 'foo';
    o.value = buildUnnamed39();
  }
  buildCounterSetting--;
  return o;
}

void checkSetting(api.Setting o) {
  buildCounterSetting++;
  if (buildCounterSetting < 3) {
    unittest.expect(o.type!, unittest.equals('foo'));
    checkUnnamed39(o.value!);
  }
  buildCounterSetting--;
}

core.int buildCounterSignInBehavior = 0;
api.SignInBehavior buildSignInBehavior() {
  final o = api.SignInBehavior();
  buildCounterSignInBehavior++;
  if (buildCounterSignInBehavior < 3) {
    o.redirectCondition = 'foo';
  }
  buildCounterSignInBehavior--;
  return o;
}

void checkSignInBehavior(api.SignInBehavior o) {
  buildCounterSignInBehavior++;
  if (buildCounterSignInBehavior < 3) {
    unittest.expect(o.redirectCondition!, unittest.equals('foo'));
  }
  buildCounterSignInBehavior--;
}

core.Map<core.String, core.Object?> buildUnnamed40() => {
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

void checkUnnamed40(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed41() => [
  buildUnnamed40(),
  buildUnnamed40(),
];

void checkUnnamed41(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed40(o[0]);
  checkUnnamed40(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed41();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed41(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterTransitiveMembershipRole = 0;
api.TransitiveMembershipRole buildTransitiveMembershipRole() {
  final o = api.TransitiveMembershipRole();
  buildCounterTransitiveMembershipRole++;
  if (buildCounterTransitiveMembershipRole < 3) {
    o.role = 'foo';
  }
  buildCounterTransitiveMembershipRole--;
  return o;
}

void checkTransitiveMembershipRole(api.TransitiveMembershipRole o) {
  buildCounterTransitiveMembershipRole++;
  if (buildCounterTransitiveMembershipRole < 3) {
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterTransitiveMembershipRole--;
}

core.int buildCounterUpdateMembershipRolesParams = 0;
api.UpdateMembershipRolesParams buildUpdateMembershipRolesParams() {
  final o = api.UpdateMembershipRolesParams();
  buildCounterUpdateMembershipRolesParams++;
  if (buildCounterUpdateMembershipRolesParams < 3) {
    o.fieldMask = 'foo';
    o.membershipRole = buildMembershipRole();
  }
  buildCounterUpdateMembershipRolesParams--;
  return o;
}

void checkUpdateMembershipRolesParams(api.UpdateMembershipRolesParams o) {
  buildCounterUpdateMembershipRolesParams++;
  if (buildCounterUpdateMembershipRolesParams < 3) {
    unittest.expect(o.fieldMask!, unittest.equals('foo'));
    checkMembershipRole(o.membershipRole!);
  }
  buildCounterUpdateMembershipRolesParams--;
}

core.int buildCounterUserInvitation = 0;
api.UserInvitation buildUserInvitation() {
  final o = api.UserInvitation();
  buildCounterUserInvitation++;
  if (buildCounterUserInvitation < 3) {
    o.mailsSentCount = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterUserInvitation--;
  return o;
}

void checkUserInvitation(api.UserInvitation o) {
  buildCounterUserInvitation++;
  if (buildCounterUserInvitation < 3) {
    unittest.expect(o.mailsSentCount!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterUserInvitation--;
}

core.int buildCounterWipeDeviceRequest = 0;
api.WipeDeviceRequest buildWipeDeviceRequest() {
  final o = api.WipeDeviceRequest();
  buildCounterWipeDeviceRequest++;
  if (buildCounterWipeDeviceRequest < 3) {
    o.customer = 'foo';
    o.removeResetLock = true;
  }
  buildCounterWipeDeviceRequest--;
  return o;
}

void checkWipeDeviceRequest(api.WipeDeviceRequest o) {
  buildCounterWipeDeviceRequest++;
  if (buildCounterWipeDeviceRequest < 3) {
    unittest.expect(o.customer!, unittest.equals('foo'));
    unittest.expect(o.removeResetLock!, unittest.isTrue);
  }
  buildCounterWipeDeviceRequest--;
}

core.int buildCounterWipeDeviceUserRequest = 0;
api.WipeDeviceUserRequest buildWipeDeviceUserRequest() {
  final o = api.WipeDeviceUserRequest();
  buildCounterWipeDeviceUserRequest++;
  if (buildCounterWipeDeviceUserRequest < 3) {
    o.customer = 'foo';
  }
  buildCounterWipeDeviceUserRequest--;
  return o;
}

void checkWipeDeviceUserRequest(api.WipeDeviceUserRequest o) {
  buildCounterWipeDeviceUserRequest++;
  if (buildCounterWipeDeviceUserRequest < 3) {
    unittest.expect(o.customer!, unittest.equals('foo'));
  }
  buildCounterWipeDeviceUserRequest--;
}

void main() {
  unittest.group('obj-schema-AddIdpCredentialRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddIdpCredentialRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddIdpCredentialRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAddIdpCredentialRequest(od);
    });
  });

  unittest.group('obj-schema-AndroidAttributes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAndroidAttributes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AndroidAttributes.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAndroidAttributes(od);
    });
  });

  unittest.group('obj-schema-ApproveDeviceUserRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApproveDeviceUserRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApproveDeviceUserRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApproveDeviceUserRequest(od);
    });
  });

  unittest.group('obj-schema-BlockDeviceUserRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBlockDeviceUserRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BlockDeviceUserRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBlockDeviceUserRequest(od);
    });
  });

  unittest.group('obj-schema-BrowserAttributes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBrowserAttributes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BrowserAttributes.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBrowserAttributes(od);
    });
  });

  unittest.group('obj-schema-BrowserInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBrowserInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BrowserInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBrowserInfo(od);
    });
  });

  unittest.group('obj-schema-CancelUserInvitationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelUserInvitationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelUserInvitationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelUserInvitationRequest(od);
    });
  });

  unittest.group('obj-schema-CancelWipeDeviceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelWipeDeviceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelWipeDeviceRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelWipeDeviceRequest(od);
    });
  });

  unittest.group('obj-schema-CancelWipeDeviceUserRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelWipeDeviceUserRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelWipeDeviceUserRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelWipeDeviceUserRequest(od);
    });
  });

  unittest.group('obj-schema-CertificateAttributes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCertificateAttributes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CertificateAttributes.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCertificateAttributes(od);
    });
  });

  unittest.group('obj-schema-CertificateTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCertificateTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CertificateTemplate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCertificateTemplate(od);
    });
  });

  unittest.group('obj-schema-CheckTransitiveMembershipResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckTransitiveMembershipResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckTransitiveMembershipResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCheckTransitiveMembershipResponse(od);
    });
  });

  unittest.group('obj-schema-ClientState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClientState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClientState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkClientState(od);
    });
  });

  unittest.group('obj-schema-CreateDeviceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateDeviceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateDeviceRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateDeviceRequest(od);
    });
  });

  unittest.group('obj-schema-CustomAttributeValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomAttributeValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomAttributeValue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomAttributeValue(od);
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

  unittest.group('obj-schema-DeviceUser', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeviceUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeviceUser.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeviceUser(od);
    });
  });

  unittest.group('obj-schema-DsaPublicKeyInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDsaPublicKeyInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DsaPublicKeyInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDsaPublicKeyInfo(od);
    });
  });

  unittest.group('obj-schema-DynamicGroupMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDynamicGroupMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DynamicGroupMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDynamicGroupMetadata(od);
    });
  });

  unittest.group('obj-schema-DynamicGroupQuery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDynamicGroupQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DynamicGroupQuery.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDynamicGroupQuery(od);
    });
  });

  unittest.group('obj-schema-DynamicGroupStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDynamicGroupStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DynamicGroupStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDynamicGroupStatus(od);
    });
  });

  unittest.group('obj-schema-EndpointVerificationSpecificAttributes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEndpointVerificationSpecificAttributes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EndpointVerificationSpecificAttributes.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEndpointVerificationSpecificAttributes(od);
    });
  });

  unittest.group('obj-schema-EntityKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntityKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EntityKey.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEntityKey(od);
    });
  });

  unittest.group('obj-schema-ExpiryDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpiryDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExpiryDetail.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExpiryDetail(od);
    });
  });

  unittest.group('obj-schema-Group', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Group.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGroup(od);
    });
  });

  unittest.group('obj-schema-GroupRelation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroupRelation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GroupRelation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGroupRelation(od);
    });
  });

  unittest.group('obj-schema-IdpCredential', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdpCredential();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdpCredential.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIdpCredential(od);
    });
  });

  unittest.group('obj-schema-InboundSamlSsoProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInboundSamlSsoProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InboundSamlSsoProfile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInboundSamlSsoProfile(od);
    });
  });

  unittest.group('obj-schema-InboundSsoAssignment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInboundSsoAssignment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InboundSsoAssignment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInboundSsoAssignment(od);
    });
  });

  unittest.group('obj-schema-IsInvitableUserResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIsInvitableUserResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IsInvitableUserResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIsInvitableUserResponse(od);
    });
  });

  unittest.group('obj-schema-ListDeviceUsersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDeviceUsersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDeviceUsersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDeviceUsersResponse(od);
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

  unittest.group('obj-schema-ListGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGroupsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-ListIdpCredentialsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListIdpCredentialsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListIdpCredentialsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListIdpCredentialsResponse(od);
    });
  });

  unittest.group('obj-schema-ListInboundSamlSsoProfilesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListInboundSamlSsoProfilesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListInboundSamlSsoProfilesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListInboundSamlSsoProfilesResponse(od);
    });
  });

  unittest.group('obj-schema-ListInboundSsoAssignmentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListInboundSsoAssignmentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListInboundSsoAssignmentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListInboundSsoAssignmentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListMembershipsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMembershipsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMembershipsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListMembershipsResponse(od);
    });
  });

  unittest.group('obj-schema-ListOrgMembershipsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOrgMembershipsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOrgMembershipsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListOrgMembershipsResponse(od);
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

  unittest.group('obj-schema-ListUserInvitationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUserInvitationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUserInvitationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListUserInvitationsResponse(od);
    });
  });

  unittest.group('obj-schema-LookupGroupNameResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLookupGroupNameResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LookupGroupNameResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLookupGroupNameResponse(od);
    });
  });

  unittest.group('obj-schema-LookupMembershipNameResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLookupMembershipNameResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LookupMembershipNameResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLookupMembershipNameResponse(od);
    });
  });

  unittest.group('obj-schema-LookupSelfDeviceUsersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLookupSelfDeviceUsersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LookupSelfDeviceUsersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLookupSelfDeviceUsersResponse(od);
    });
  });

  unittest.group('obj-schema-MemberRelation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMemberRelation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MemberRelation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMemberRelation(od);
    });
  });

  unittest.group('obj-schema-MemberRestriction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMemberRestriction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MemberRestriction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMemberRestriction(od);
    });
  });

  unittest.group('obj-schema-Membership', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembership();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Membership.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMembership(od);
    });
  });

  unittest.group('obj-schema-MembershipRelation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembershipRelation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MembershipRelation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMembershipRelation(od);
    });
  });

  unittest.group('obj-schema-MembershipRole', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembershipRole();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MembershipRole.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMembershipRole(od);
    });
  });

  unittest.group('obj-schema-MembershipRoleRestrictionEvaluation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembershipRoleRestrictionEvaluation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MembershipRoleRestrictionEvaluation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMembershipRoleRestrictionEvaluation(od);
    });
  });

  unittest.group('obj-schema-ModifyMembershipRolesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModifyMembershipRolesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModifyMembershipRolesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkModifyMembershipRolesRequest(od);
    });
  });

  unittest.group('obj-schema-ModifyMembershipRolesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModifyMembershipRolesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModifyMembershipRolesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkModifyMembershipRolesResponse(od);
    });
  });

  unittest.group('obj-schema-MoveOrgMembershipRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMoveOrgMembershipRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MoveOrgMembershipRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMoveOrgMembershipRequest(od);
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

  unittest.group('obj-schema-OrgMembership', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrgMembership();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrgMembership.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOrgMembership(od);
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

  unittest.group('obj-schema-PolicyQuery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicyQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PolicyQuery.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPolicyQuery(od);
    });
  });

  unittest.group('obj-schema-PosixGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPosixGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PosixGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPosixGroup(od);
    });
  });

  unittest.group('obj-schema-RestrictionEvaluation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestrictionEvaluation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestrictionEvaluation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRestrictionEvaluation(od);
    });
  });

  unittest.group('obj-schema-RestrictionEvaluations', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestrictionEvaluations();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestrictionEvaluations.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRestrictionEvaluations(od);
    });
  });

  unittest.group('obj-schema-RsaPublicKeyInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRsaPublicKeyInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RsaPublicKeyInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRsaPublicKeyInfo(od);
    });
  });

  unittest.group('obj-schema-SamlIdpConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSamlIdpConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SamlIdpConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSamlIdpConfig(od);
    });
  });

  unittest.group('obj-schema-SamlSpConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSamlSpConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SamlSpConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSamlSpConfig(od);
    });
  });

  unittest.group('obj-schema-SamlSsoInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSamlSsoInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SamlSsoInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSamlSsoInfo(od);
    });
  });

  unittest.group('obj-schema-SearchDirectGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchDirectGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchDirectGroupsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSearchDirectGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-SearchGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchGroupsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSearchGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-SearchTransitiveGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchTransitiveGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchTransitiveGroupsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSearchTransitiveGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-SearchTransitiveMembershipsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchTransitiveMembershipsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchTransitiveMembershipsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSearchTransitiveMembershipsResponse(od);
    });
  });

  unittest.group('obj-schema-SecuritySettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecuritySettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecuritySettings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSecuritySettings(od);
    });
  });

  unittest.group('obj-schema-SendUserInvitationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSendUserInvitationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SendUserInvitationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSendUserInvitationRequest(od);
    });
  });

  unittest.group('obj-schema-Setting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Setting.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSetting(od);
    });
  });

  unittest.group('obj-schema-SignInBehavior', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSignInBehavior();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SignInBehavior.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSignInBehavior(od);
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

  unittest.group('obj-schema-TransitiveMembershipRole', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransitiveMembershipRole();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransitiveMembershipRole.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTransitiveMembershipRole(od);
    });
  });

  unittest.group('obj-schema-UpdateMembershipRolesParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateMembershipRolesParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateMembershipRolesParams.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpdateMembershipRolesParams(od);
    });
  });

  unittest.group('obj-schema-UserInvitation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserInvitation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserInvitation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUserInvitation(od);
    });
  });

  unittest.group('obj-schema-WipeDeviceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWipeDeviceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WipeDeviceRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWipeDeviceRequest(od);
    });
  });

  unittest.group('obj-schema-WipeDeviceUserRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWipeDeviceUserRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WipeDeviceUserRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWipeDeviceUserRequest(od);
    });
  });

  unittest.group('resource-CustomersUserinvitationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).customers.userinvitations;
      final arg_request = buildCancelUserInvitationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelUserInvitationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCancelUserInvitationRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
      final response = await res.cancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).customers.userinvitations;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildUserInvitation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkUserInvitation(response as api.UserInvitation);
    });

    unittest.test('method--isInvitableUser', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).customers.userinvitations;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildIsInvitableUserResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.isInvitableUser(
        arg_name,
        $fields: arg_$fields,
      );
      checkIsInvitableUserResponse(response as api.IsInvitableUserResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).customers.userinvitations;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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
          final resp = convert.json.encode(buildListUserInvitationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListUserInvitationsResponse(
        response as api.ListUserInvitationsResponse,
      );
    });

    unittest.test('method--send', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).customers.userinvitations;
      final arg_request = buildSendUserInvitationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SendUserInvitationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSendUserInvitationRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
      final response = await res.send(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-DevicesResource', () {
    unittest.test('method--cancelWipe', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices;
      final arg_request = buildCancelWipeDeviceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelWipeDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCancelWipeDeviceRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
      final response = await res.cancelWipe(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices;
      final arg_request = buildCreateDeviceRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CreateDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCreateDeviceRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v1beta1/devices'),
          );
          pathOffset += 15;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices;
      final arg_name = 'foo';
      final arg_customer = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
            queryMap['customer']!.first,
            unittest.equals(arg_customer),
          );
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
      final response = await res.delete(
        arg_name,
        customer: arg_customer,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices;
      final arg_name = 'foo';
      final arg_customer = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
            queryMap['customer']!.first,
            unittest.equals(arg_customer),
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
      final response = await res.get(
        arg_name,
        customer: arg_customer,
        $fields: arg_$fields,
      );
      checkDevice(response as api.Device);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices;
      final arg_customer = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
            path.substring(pathOffset, pathOffset + 15),
            unittest.equals('v1beta1/devices'),
          );
          pathOffset += 15;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['customer']!.first,
            unittest.equals(arg_customer),
          );
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
          );
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
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
        customer: arg_customer,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkListDevicesResponse(response as api.ListDevicesResponse);
    });

    unittest.test('method--wipe', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices;
      final arg_request = buildWipeDeviceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.WipeDeviceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkWipeDeviceRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
      final response = await res.wipe(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-DevicesDeviceUsersResource', () {
    unittest.test('method--approve', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices.deviceUsers;
      final arg_request = buildApproveDeviceUserRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ApproveDeviceUserRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkApproveDeviceUserRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
      final response = await res.approve(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--block', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices.deviceUsers;
      final arg_request = buildBlockDeviceUserRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BlockDeviceUserRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBlockDeviceUserRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
      final response = await res.block(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--cancelWipe', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices.deviceUsers;
      final arg_request = buildCancelWipeDeviceUserRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelWipeDeviceUserRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCancelWipeDeviceUserRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
      final response = await res.cancelWipe(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices.deviceUsers;
      final arg_name = 'foo';
      final arg_customer = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
            queryMap['customer']!.first,
            unittest.equals(arg_customer),
          );
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
      final response = await res.delete(
        arg_name,
        customer: arg_customer,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices.deviceUsers;
      final arg_name = 'foo';
      final arg_customer = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
            queryMap['customer']!.first,
            unittest.equals(arg_customer),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildDeviceUser());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        customer: arg_customer,
        $fields: arg_$fields,
      );
      checkDeviceUser(response as api.DeviceUser);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices.deviceUsers;
      final arg_parent = 'foo';
      final arg_customer = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
            queryMap['customer']!.first,
            unittest.equals(arg_customer),
          );
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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
          final resp = convert.json.encode(buildListDeviceUsersResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        customer: arg_customer,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListDeviceUsersResponse(response as api.ListDeviceUsersResponse);
    });

    unittest.test('method--lookup', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices.deviceUsers;
      final arg_parent = 'foo';
      final arg_androidId = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_rawResourceId = 'foo';
      final arg_userId = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
            queryMap['androidId']!.first,
            unittest.equals(arg_androidId),
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
            queryMap['rawResourceId']!.first,
            unittest.equals(arg_rawResourceId),
          );
          unittest.expect(
            queryMap['userId']!.first,
            unittest.equals(arg_userId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildLookupSelfDeviceUsersResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.lookup(
        arg_parent,
        androidId: arg_androidId,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        rawResourceId: arg_rawResourceId,
        userId: arg_userId,
        $fields: arg_$fields,
      );
      checkLookupSelfDeviceUsersResponse(
        response as api.LookupSelfDeviceUsersResponse,
      );
    });

    unittest.test('method--wipe', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices.deviceUsers;
      final arg_request = buildWipeDeviceUserRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.WipeDeviceUserRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkWipeDeviceUserRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
      final response = await res.wipe(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-DevicesDeviceUsersClientStatesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices.deviceUsers.clientStates;
      final arg_name = 'foo';
      final arg_customer = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
            queryMap['customer']!.first,
            unittest.equals(arg_customer),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildClientState());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        customer: arg_customer,
        $fields: arg_$fields,
      );
      checkClientState(response as api.ClientState);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices.deviceUsers.clientStates;
      final arg_request = buildClientState();
      final arg_name = 'foo';
      final arg_customer = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ClientState.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkClientState(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
            queryMap['customer']!.first,
            unittest.equals(arg_customer),
          );
          unittest.expect(
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
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
      final response = await res.patch(
        arg_request,
        arg_name,
        customer: arg_customer,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-GroupsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups;
      final arg_request = buildGroup();
      final arg_initialGroupConfig = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Group.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGroup(obj);

          final path = req.url.path;
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
            unittest.equals('v1beta1/groups'),
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
            queryMap['initialGroupConfig']!.first,
            unittest.equals(arg_initialGroupConfig),
          );
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
      final response = await res.create(
        arg_request,
        initialGroupConfig: arg_initialGroupConfig,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildGroup());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGroup(response as api.Group);
    });

    unittest.test('method--getSecuritySettings', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups;
      final arg_name = 'foo';
      final arg_readMask = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
            queryMap['readMask']!.first,
            unittest.equals(arg_readMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildSecuritySettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getSecuritySettings(
        arg_name,
        readMask: arg_readMask,
        $fields: arg_$fields,
      );
      checkSecuritySettings(response as api.SecuritySettings);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_parent = 'foo';
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
            unittest.equals('v1beta1/groups'),
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListGroupsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        parent: arg_parent,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkListGroupsResponse(response as api.ListGroupsResponse);
    });

    unittest.test('method--lookup', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups;
      final arg_groupKey_id = 'foo';
      final arg_groupKey_namespace = 'foo';
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
            path.substring(pathOffset, pathOffset + 21),
            unittest.equals('v1beta1/groups:lookup'),
          );
          pathOffset += 21;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['groupKey.id']!.first,
            unittest.equals(arg_groupKey_id),
          );
          unittest.expect(
            queryMap['groupKey.namespace']!.first,
            unittest.equals(arg_groupKey_namespace),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildLookupGroupNameResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.lookup(
        groupKey_id: arg_groupKey_id,
        groupKey_namespace: arg_groupKey_namespace,
        $fields: arg_$fields,
      );
      checkLookupGroupNameResponse(response as api.LookupGroupNameResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups;
      final arg_request = buildGroup();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Group.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGroup(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildOperation());
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
      checkOperation(response as api.Operation);
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups;
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_query = 'foo';
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
            path.substring(pathOffset, pathOffset + 21),
            unittest.equals('v1beta1/groups:search'),
          );
          pathOffset += 21;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
                core.Uri.decodeQueryComponent(keyValue[0]),
                core.Uri.decodeQueryComponent(keyValue[1]),
              );
            }
          }
          unittest.expect(
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
          );
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(queryMap['query']!.first, unittest.equals(arg_query));
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildSearchGroupsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.search(
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        query: arg_query,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkSearchGroupsResponse(response as api.SearchGroupsResponse);
    });

    unittest.test('method--updateSecuritySettings', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups;
      final arg_request = buildSecuritySettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SecuritySettings.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSecuritySettings(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateSecuritySettings(
        arg_request,
        arg_name,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-GroupsMembershipsResource', () {
    unittest.test('method--checkTransitiveMembership', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups.memberships;
      final arg_parent = 'foo';
      final arg_query = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
          unittest.expect(queryMap['query']!.first, unittest.equals(arg_query));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildCheckTransitiveMembershipResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.checkTransitiveMembership(
        arg_parent,
        query: arg_query,
        $fields: arg_$fields,
      );
      checkCheckTransitiveMembershipResponse(
        response as api.CheckTransitiveMembershipResponse,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups.memberships;
      final arg_request = buildMembership();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Membership.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMembership(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups.memberships;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups.memberships;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildMembership());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkMembership(response as api.Membership);
    });

    unittest.test('method--getMembershipGraph', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups.memberships;
      final arg_parent = 'foo';
      final arg_query = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
          unittest.expect(queryMap['query']!.first, unittest.equals(arg_query));
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
      final response = await res.getMembershipGraph(
        arg_parent,
        query: arg_query,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups.memberships;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListMembershipsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkListMembershipsResponse(response as api.ListMembershipsResponse);
    });

    unittest.test('method--lookup', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups.memberships;
      final arg_parent = 'foo';
      final arg_memberKey_id = 'foo';
      final arg_memberKey_namespace = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
            queryMap['memberKey.id']!.first,
            unittest.equals(arg_memberKey_id),
          );
          unittest.expect(
            queryMap['memberKey.namespace']!.first,
            unittest.equals(arg_memberKey_namespace),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildLookupMembershipNameResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.lookup(
        arg_parent,
        memberKey_id: arg_memberKey_id,
        memberKey_namespace: arg_memberKey_namespace,
        $fields: arg_$fields,
      );
      checkLookupMembershipNameResponse(
        response as api.LookupMembershipNameResponse,
      );
    });

    unittest.test('method--modifyMembershipRoles', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups.memberships;
      final arg_request = buildModifyMembershipRolesRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ModifyMembershipRolesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkModifyMembershipRolesRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
            buildModifyMembershipRolesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.modifyMembershipRoles(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkModifyMembershipRolesResponse(
        response as api.ModifyMembershipRolesResponse,
      );
    });

    unittest.test('method--searchDirectGroups', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups.memberships;
      final arg_parent = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_query = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
          );
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(queryMap['query']!.first, unittest.equals(arg_query));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildSearchDirectGroupsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.searchDirectGroups(
        arg_parent,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        query: arg_query,
        $fields: arg_$fields,
      );
      checkSearchDirectGroupsResponse(
        response as api.SearchDirectGroupsResponse,
      );
    });

    unittest.test('method--searchTransitiveGroups', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups.memberships;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_query = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
          unittest.expect(queryMap['query']!.first, unittest.equals(arg_query));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildSearchTransitiveGroupsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.searchTransitiveGroups(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        query: arg_query,
        $fields: arg_$fields,
      );
      checkSearchTransitiveGroupsResponse(
        response as api.SearchTransitiveGroupsResponse,
      );
    });

    unittest.test('method--searchTransitiveMemberships', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups.memberships;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(
            buildSearchTransitiveMembershipsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.searchTransitiveMemberships(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkSearchTransitiveMembershipsResponse(
        response as api.SearchTransitiveMembershipsResponse,
      );
    });
  });

  unittest.group('resource-InboundSamlSsoProfilesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).inboundSamlSsoProfiles;
      final arg_request = buildInboundSamlSsoProfile();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.InboundSamlSsoProfile.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkInboundSamlSsoProfile(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 30),
            unittest.equals('v1beta1/inboundSamlSsoProfiles'),
          );
          pathOffset += 30;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
            for (var part in query.split('&')) {
              final keyValue = part.split('=');
              addQueryParam(
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
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).inboundSamlSsoProfiles;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).inboundSamlSsoProfiles;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildInboundSamlSsoProfile());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkInboundSamlSsoProfile(response as api.InboundSamlSsoProfile);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).inboundSamlSsoProfiles;
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
            path.substring(pathOffset, pathOffset + 30),
            unittest.equals('v1beta1/inboundSamlSsoProfiles'),
          );
          pathOffset += 30;

          final query = req.url.query;
          var queryOffset = 0;
          final queryMap = <core.String, core.List<core.String>>{};
          void addQueryParam(core.String n, core.String v) =>
              queryMap.putIfAbsent(n, () => []).add(v);

          if (query.isNotEmpty) {
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
            buildListInboundSamlSsoProfilesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListInboundSamlSsoProfilesResponse(
        response as api.ListInboundSamlSsoProfilesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).inboundSamlSsoProfiles;
      final arg_request = buildInboundSamlSsoProfile();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.InboundSamlSsoProfile.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkInboundSamlSsoProfile(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildOperation());
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
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-InboundSamlSsoProfilesIdpCredentialsResource', () {
    unittest.test('method--add', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudIdentityApi(mock).inboundSamlSsoProfiles.idpCredentials;
      final arg_request = buildAddIdpCredentialRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AddIdpCredentialRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAddIdpCredentialRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
      final response = await res.add(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudIdentityApi(mock).inboundSamlSsoProfiles.idpCredentials;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudIdentityApi(mock).inboundSamlSsoProfiles.idpCredentials;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildIdpCredential());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkIdpCredential(response as api.IdpCredential);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudIdentityApi(mock).inboundSamlSsoProfiles.idpCredentials;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildListIdpCredentialsResponse());
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
      checkListIdpCredentialsResponse(
        response as api.ListIdpCredentialsResponse,
      );
    });
  });

  unittest.group('resource-InboundSsoAssignmentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).inboundSsoAssignments;
      final arg_request = buildInboundSsoAssignment();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.InboundSsoAssignment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkInboundSsoAssignment(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 29),
            unittest.equals('v1beta1/inboundSsoAssignments'),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).inboundSsoAssignments;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).inboundSsoAssignments;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildInboundSsoAssignment());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkInboundSsoAssignment(response as api.InboundSsoAssignment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).inboundSsoAssignments;
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
            path.substring(pathOffset, pathOffset + 29),
            unittest.equals('v1beta1/inboundSsoAssignments'),
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
            buildListInboundSsoAssignmentsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListInboundSsoAssignmentsResponse(
        response as api.ListInboundSsoAssignmentsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).inboundSsoAssignments;
      final arg_request = buildInboundSsoAssignment();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.InboundSsoAssignment.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkInboundSsoAssignment(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
          final resp = convert.json.encode(buildOperation());
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
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-OrgUnitsMembershipsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).orgUnits.memberships;
      final arg_parent = 'foo';
      final arg_customer = 'foo';
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
            queryMap['customer']!.first,
            unittest.equals(arg_customer),
          );
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
          final resp = convert.json.encode(buildListOrgMembershipsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        customer: arg_customer,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListOrgMembershipsResponse(
        response as api.ListOrgMembershipsResponse,
      );
    });

    unittest.test('method--move', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).orgUnits.memberships;
      final arg_request = buildMoveOrgMembershipRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.MoveOrgMembershipRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkMoveOrgMembershipRequest(obj);

          final path = req.url.path;
          var pathOffset = 0;
          core.int index;
          core.String subPart;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          unittest.expect(
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
      final response = await res.move(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-PoliciesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).policies;
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
            path.substring(pathOffset, pathOffset + 8),
            unittest.equals('v1beta1/'),
          );
          pathOffset += 8;
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
      final res = api.CloudIdentityApi(mock).policies;
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
            path.substring(pathOffset, pathOffset + 16),
            unittest.equals('v1beta1/policies'),
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
          final resp = convert.json.encode(buildListPoliciesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListPoliciesResponse(response as api.ListPoliciesResponse);
    });
  });
}
