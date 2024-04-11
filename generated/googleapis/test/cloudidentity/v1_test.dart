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

import 'package:googleapis/cloudidentity/v1.dart' as api;
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
    unittest.expect(
      o.pemData!,
      unittest.equals('foo'),
    );
  }
  buildCounterAddIdpCredentialRequest--;
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
    api.CheckTransitiveMembershipResponse o) {
  buildCounterCheckTransitiveMembershipResponse++;
  if (buildCounterCheckTransitiveMembershipResponse < 3) {
    unittest.expect(o.hasMembership!, unittest.isTrue);
  }
  buildCounterCheckTransitiveMembershipResponse--;
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
    unittest.expect(
      o.keySize!,
      unittest.equals(42),
    );
  }
  buildCounterDsaPublicKeyInfo--;
}

core.List<api.DynamicGroupQuery> buildUnnamed0() => [
      buildDynamicGroupQuery(),
      buildDynamicGroupQuery(),
    ];

void checkUnnamed0(core.List<api.DynamicGroupQuery> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDynamicGroupQuery(o[0]);
  checkDynamicGroupQuery(o[1]);
}

core.int buildCounterDynamicGroupMetadata = 0;
api.DynamicGroupMetadata buildDynamicGroupMetadata() {
  final o = api.DynamicGroupMetadata();
  buildCounterDynamicGroupMetadata++;
  if (buildCounterDynamicGroupMetadata < 3) {
    o.queries = buildUnnamed0();
    o.status = buildDynamicGroupStatus();
  }
  buildCounterDynamicGroupMetadata--;
  return o;
}

void checkDynamicGroupMetadata(api.DynamicGroupMetadata o) {
  buildCounterDynamicGroupMetadata++;
  if (buildCounterDynamicGroupMetadata < 3) {
    checkUnnamed0(o.queries!);
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
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resourceType!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.statusTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterDynamicGroupStatus--;
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
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.namespace!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterExpiryDetail--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1AndroidAttributes = 0;
api.GoogleAppsCloudidentityDevicesV1AndroidAttributes
    buildGoogleAppsCloudidentityDevicesV1AndroidAttributes() {
  final o = api.GoogleAppsCloudidentityDevicesV1AndroidAttributes();
  buildCounterGoogleAppsCloudidentityDevicesV1AndroidAttributes++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1AndroidAttributes < 3) {
    o.ctsProfileMatch = true;
    o.enabledUnknownSources = true;
    o.hasPotentiallyHarmfulApps = true;
    o.ownerProfileAccount = true;
    o.ownershipPrivilege = 'foo';
    o.supportsWorkProfile = true;
    o.verifiedBoot = true;
    o.verifyAppsEnabled = true;
  }
  buildCounterGoogleAppsCloudidentityDevicesV1AndroidAttributes--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1AndroidAttributes(
    api.GoogleAppsCloudidentityDevicesV1AndroidAttributes o) {
  buildCounterGoogleAppsCloudidentityDevicesV1AndroidAttributes++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1AndroidAttributes < 3) {
    unittest.expect(o.ctsProfileMatch!, unittest.isTrue);
    unittest.expect(o.enabledUnknownSources!, unittest.isTrue);
    unittest.expect(o.hasPotentiallyHarmfulApps!, unittest.isTrue);
    unittest.expect(o.ownerProfileAccount!, unittest.isTrue);
    unittest.expect(
      o.ownershipPrivilege!,
      unittest.equals('foo'),
    );
    unittest.expect(o.supportsWorkProfile!, unittest.isTrue);
    unittest.expect(o.verifiedBoot!, unittest.isTrue);
    unittest.expect(o.verifyAppsEnabled!, unittest.isTrue);
  }
  buildCounterGoogleAppsCloudidentityDevicesV1AndroidAttributes--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest =
    0;
api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
    buildGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest() {
  final o = api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest();
  buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest <
      3) {
    o.customer = 'foo';
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest(
    api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest o) {
  buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest <
      3) {
    unittest.expect(
      o.customer!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest = 0;
api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest
    buildGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest() {
  final o = api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest();
  buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest < 3) {
    o.customer = 'foo';
  }
  buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest(
    api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest o) {
  buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest < 3) {
    unittest.expect(
      o.customer!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1BrowserAttributes = 0;
api.GoogleAppsCloudidentityDevicesV1BrowserAttributes
    buildGoogleAppsCloudidentityDevicesV1BrowserAttributes() {
  final o = api.GoogleAppsCloudidentityDevicesV1BrowserAttributes();
  buildCounterGoogleAppsCloudidentityDevicesV1BrowserAttributes++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1BrowserAttributes < 3) {
    o.chromeBrowserInfo = buildGoogleAppsCloudidentityDevicesV1BrowserInfo();
    o.chromeProfileId = 'foo';
    o.lastProfileSyncTime = 'foo';
  }
  buildCounterGoogleAppsCloudidentityDevicesV1BrowserAttributes--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1BrowserAttributes(
    api.GoogleAppsCloudidentityDevicesV1BrowserAttributes o) {
  buildCounterGoogleAppsCloudidentityDevicesV1BrowserAttributes++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1BrowserAttributes < 3) {
    checkGoogleAppsCloudidentityDevicesV1BrowserInfo(o.chromeBrowserInfo!);
    unittest.expect(
      o.chromeProfileId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastProfileSyncTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCloudidentityDevicesV1BrowserAttributes--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1BrowserInfo = 0;
api.GoogleAppsCloudidentityDevicesV1BrowserInfo
    buildGoogleAppsCloudidentityDevicesV1BrowserInfo() {
  final o = api.GoogleAppsCloudidentityDevicesV1BrowserInfo();
  buildCounterGoogleAppsCloudidentityDevicesV1BrowserInfo++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1BrowserInfo < 3) {
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
  buildCounterGoogleAppsCloudidentityDevicesV1BrowserInfo--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1BrowserInfo(
    api.GoogleAppsCloudidentityDevicesV1BrowserInfo o) {
  buildCounterGoogleAppsCloudidentityDevicesV1BrowserInfo++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1BrowserInfo < 3) {
    unittest.expect(
      o.browserManagementState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.browserVersion!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.safeBrowsingProtectionLevel!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCloudidentityDevicesV1BrowserInfo--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest =
    0;
api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
    buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest() {
  final o = api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest();
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest < 3) {
    o.customer = 'foo';
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest(
    api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest o) {
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest < 3) {
    unittest.expect(
      o.customer!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest--;
}

core.int
    buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest = 0;
api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
    buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest() {
  final o = api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest();
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest <
      3) {
    o.customer = 'foo';
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest(
    api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest o) {
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest <
      3) {
    unittest.expect(
      o.customer!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1CertificateAttributes = 0;
api.GoogleAppsCloudidentityDevicesV1CertificateAttributes
    buildGoogleAppsCloudidentityDevicesV1CertificateAttributes() {
  final o = api.GoogleAppsCloudidentityDevicesV1CertificateAttributes();
  buildCounterGoogleAppsCloudidentityDevicesV1CertificateAttributes++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CertificateAttributes < 3) {
    o.certificateTemplate =
        buildGoogleAppsCloudidentityDevicesV1CertificateTemplate();
    o.fingerprint = 'foo';
    o.issuer = 'foo';
    o.serialNumber = 'foo';
    o.subject = 'foo';
    o.thumbprint = 'foo';
    o.validationState = 'foo';
    o.validityExpirationTime = 'foo';
    o.validityStartTime = 'foo';
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CertificateAttributes--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1CertificateAttributes(
    api.GoogleAppsCloudidentityDevicesV1CertificateAttributes o) {
  buildCounterGoogleAppsCloudidentityDevicesV1CertificateAttributes++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CertificateAttributes < 3) {
    checkGoogleAppsCloudidentityDevicesV1CertificateTemplate(
        o.certificateTemplate!);
    unittest.expect(
      o.fingerprint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.issuer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serialNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subject!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.thumbprint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.validationState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.validityExpirationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.validityStartTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CertificateAttributes--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1CertificateTemplate = 0;
api.GoogleAppsCloudidentityDevicesV1CertificateTemplate
    buildGoogleAppsCloudidentityDevicesV1CertificateTemplate() {
  final o = api.GoogleAppsCloudidentityDevicesV1CertificateTemplate();
  buildCounterGoogleAppsCloudidentityDevicesV1CertificateTemplate++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CertificateTemplate < 3) {
    o.id = 'foo';
    o.majorVersion = 42;
    o.minorVersion = 42;
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CertificateTemplate--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1CertificateTemplate(
    api.GoogleAppsCloudidentityDevicesV1CertificateTemplate o) {
  buildCounterGoogleAppsCloudidentityDevicesV1CertificateTemplate++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CertificateTemplate < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.majorVersion!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minorVersion!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CertificateTemplate--;
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

core.Map<core.String, api.GoogleAppsCloudidentityDevicesV1CustomAttributeValue>
    buildUnnamed2() => {
          'x': buildGoogleAppsCloudidentityDevicesV1CustomAttributeValue(),
          'y': buildGoogleAppsCloudidentityDevicesV1CustomAttributeValue(),
        };

void checkUnnamed2(
    core.Map<core.String,
            api.GoogleAppsCloudidentityDevicesV1CustomAttributeValue>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsCloudidentityDevicesV1CustomAttributeValue(o['x']!);
  checkGoogleAppsCloudidentityDevicesV1CustomAttributeValue(o['y']!);
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1ClientState = 0;
api.GoogleAppsCloudidentityDevicesV1ClientState
    buildGoogleAppsCloudidentityDevicesV1ClientState() {
  final o = api.GoogleAppsCloudidentityDevicesV1ClientState();
  buildCounterGoogleAppsCloudidentityDevicesV1ClientState++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ClientState < 3) {
    o.assetTags = buildUnnamed1();
    o.complianceState = 'foo';
    o.createTime = 'foo';
    o.customId = 'foo';
    o.etag = 'foo';
    o.healthScore = 'foo';
    o.keyValuePairs = buildUnnamed2();
    o.lastUpdateTime = 'foo';
    o.managed = 'foo';
    o.name = 'foo';
    o.ownerType = 'foo';
    o.scoreReason = 'foo';
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ClientState--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1ClientState(
    api.GoogleAppsCloudidentityDevicesV1ClientState o) {
  buildCounterGoogleAppsCloudidentityDevicesV1ClientState++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ClientState < 3) {
    checkUnnamed1(o.assetTags!);
    unittest.expect(
      o.complianceState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.etag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.healthScore!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.keyValuePairs!);
    unittest.expect(
      o.lastUpdateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.managed!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ownerType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.scoreReason!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ClientState--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1CustomAttributeValue = 0;
api.GoogleAppsCloudidentityDevicesV1CustomAttributeValue
    buildGoogleAppsCloudidentityDevicesV1CustomAttributeValue() {
  final o = api.GoogleAppsCloudidentityDevicesV1CustomAttributeValue();
  buildCounterGoogleAppsCloudidentityDevicesV1CustomAttributeValue++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CustomAttributeValue < 3) {
    o.boolValue = true;
    o.numberValue = 42.0;
    o.stringValue = 'foo';
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CustomAttributeValue--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1CustomAttributeValue(
    api.GoogleAppsCloudidentityDevicesV1CustomAttributeValue o) {
  buildCounterGoogleAppsCloudidentityDevicesV1CustomAttributeValue++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1CustomAttributeValue < 3) {
    unittest.expect(o.boolValue!, unittest.isTrue);
    unittest.expect(
      o.numberValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCloudidentityDevicesV1CustomAttributeValue--;
}

core.List<core.String> buildUnnamed3() => [
      'foo',
      'foo',
    ];

void checkUnnamed3(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed4() => [
      'foo',
      'foo',
    ];

void checkUnnamed4(core.List<core.String> o) {
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

core.int buildCounterGoogleAppsCloudidentityDevicesV1Device = 0;
api.GoogleAppsCloudidentityDevicesV1Device
    buildGoogleAppsCloudidentityDevicesV1Device() {
  final o = api.GoogleAppsCloudidentityDevicesV1Device();
  buildCounterGoogleAppsCloudidentityDevicesV1Device++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1Device < 3) {
    o.androidSpecificAttributes =
        buildGoogleAppsCloudidentityDevicesV1AndroidAttributes();
    o.assetTag = 'foo';
    o.basebandVersion = 'foo';
    o.bootloaderVersion = 'foo';
    o.brand = 'foo';
    o.buildNumber = 'foo';
    o.compromisedState = 'foo';
    o.createTime = 'foo';
    o.deviceId = 'foo';
    o.deviceType = 'foo';
    o.enabledDeveloperOptions = true;
    o.enabledUsbDebugging = true;
    o.encryptionState = 'foo';
    o.endpointVerificationSpecificAttributes =
        buildGoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes();
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
    o.wifiMacAddresses = buildUnnamed4();
  }
  buildCounterGoogleAppsCloudidentityDevicesV1Device--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1Device(
    api.GoogleAppsCloudidentityDevicesV1Device o) {
  buildCounterGoogleAppsCloudidentityDevicesV1Device++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1Device < 3) {
    checkGoogleAppsCloudidentityDevicesV1AndroidAttributes(
        o.androidSpecificAttributes!);
    unittest.expect(
      o.assetTag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.basebandVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bootloaderVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.brand!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.buildNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.compromisedState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enabledDeveloperOptions!, unittest.isTrue);
    unittest.expect(o.enabledUsbDebugging!, unittest.isTrue);
    unittest.expect(
      o.encryptionState!,
      unittest.equals('foo'),
    );
    checkGoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes(
        o.endpointVerificationSpecificAttributes!);
    unittest.expect(
      o.hostname!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imei!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kernelVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastSyncTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.managementState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.manufacturer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.meid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.model!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.networkOperator!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.osVersion!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.otherAccounts!);
    unittest.expect(
      o.ownerType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.releaseVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.securityPatchTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serialNumber!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.wifiMacAddresses!);
  }
  buildCounterGoogleAppsCloudidentityDevicesV1Device--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1DeviceUser = 0;
api.GoogleAppsCloudidentityDevicesV1DeviceUser
    buildGoogleAppsCloudidentityDevicesV1DeviceUser() {
  final o = api.GoogleAppsCloudidentityDevicesV1DeviceUser();
  buildCounterGoogleAppsCloudidentityDevicesV1DeviceUser++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1DeviceUser < 3) {
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
  buildCounterGoogleAppsCloudidentityDevicesV1DeviceUser--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1DeviceUser(
    api.GoogleAppsCloudidentityDevicesV1DeviceUser o) {
  buildCounterGoogleAppsCloudidentityDevicesV1DeviceUser++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1DeviceUser < 3) {
    unittest.expect(
      o.compromisedState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firstSyncTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lastSyncTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.managementState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.passwordState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userAgent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCloudidentityDevicesV1DeviceUser--;
}

core.Map<core.String, core.Object?> buildUnnamed5() => {
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

void checkUnnamed5(core.Map<core.String, core.Object?> o) {
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

core.List<api.GoogleAppsCloudidentityDevicesV1BrowserAttributes>
    buildUnnamed6() => [
          buildGoogleAppsCloudidentityDevicesV1BrowserAttributes(),
          buildGoogleAppsCloudidentityDevicesV1BrowserAttributes(),
        ];

void checkUnnamed6(
    core.List<api.GoogleAppsCloudidentityDevicesV1BrowserAttributes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsCloudidentityDevicesV1BrowserAttributes(o[0]);
  checkGoogleAppsCloudidentityDevicesV1BrowserAttributes(o[1]);
}

core.List<api.GoogleAppsCloudidentityDevicesV1CertificateAttributes>
    buildUnnamed7() => [
          buildGoogleAppsCloudidentityDevicesV1CertificateAttributes(),
          buildGoogleAppsCloudidentityDevicesV1CertificateAttributes(),
        ];

void checkUnnamed7(
    core.List<api.GoogleAppsCloudidentityDevicesV1CertificateAttributes> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsCloudidentityDevicesV1CertificateAttributes(o[0]);
  checkGoogleAppsCloudidentityDevicesV1CertificateAttributes(o[1]);
}

core.int
    buildCounterGoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes =
    0;
api.GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes
    buildGoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes() {
  final o = api
      .GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes();
  buildCounterGoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes <
      3) {
    o.additionalSignals = buildUnnamed5();
    o.browserAttributes = buildUnnamed6();
    o.certificateAttributes = buildUnnamed7();
  }
  buildCounterGoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes(
    api.GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes
        o) {
  buildCounterGoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes <
      3) {
    checkUnnamed5(o.additionalSignals!);
    checkUnnamed6(o.browserAttributes!);
    checkUnnamed7(o.certificateAttributes!);
  }
  buildCounterGoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes--;
}

core.List<api.GoogleAppsCloudidentityDevicesV1ClientState> buildUnnamed8() => [
      buildGoogleAppsCloudidentityDevicesV1ClientState(),
      buildGoogleAppsCloudidentityDevicesV1ClientState(),
    ];

void checkUnnamed8(
    core.List<api.GoogleAppsCloudidentityDevicesV1ClientState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsCloudidentityDevicesV1ClientState(o[0]);
  checkGoogleAppsCloudidentityDevicesV1ClientState(o[1]);
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1ListClientStatesResponse =
    0;
api.GoogleAppsCloudidentityDevicesV1ListClientStatesResponse
    buildGoogleAppsCloudidentityDevicesV1ListClientStatesResponse() {
  final o = api.GoogleAppsCloudidentityDevicesV1ListClientStatesResponse();
  buildCounterGoogleAppsCloudidentityDevicesV1ListClientStatesResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ListClientStatesResponse <
      3) {
    o.clientStates = buildUnnamed8();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ListClientStatesResponse--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1ListClientStatesResponse(
    api.GoogleAppsCloudidentityDevicesV1ListClientStatesResponse o) {
  buildCounterGoogleAppsCloudidentityDevicesV1ListClientStatesResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ListClientStatesResponse <
      3) {
    checkUnnamed8(o.clientStates!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ListClientStatesResponse--;
}

core.List<api.GoogleAppsCloudidentityDevicesV1DeviceUser> buildUnnamed9() => [
      buildGoogleAppsCloudidentityDevicesV1DeviceUser(),
      buildGoogleAppsCloudidentityDevicesV1DeviceUser(),
    ];

void checkUnnamed9(
    core.List<api.GoogleAppsCloudidentityDevicesV1DeviceUser> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsCloudidentityDevicesV1DeviceUser(o[0]);
  checkGoogleAppsCloudidentityDevicesV1DeviceUser(o[1]);
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse =
    0;
api.GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse
    buildGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse() {
  final o = api.GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse();
  buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse < 3) {
    o.deviceUsers = buildUnnamed9();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse(
    api.GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse o) {
  buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse < 3) {
    checkUnnamed9(o.deviceUsers!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse--;
}

core.List<api.GoogleAppsCloudidentityDevicesV1Device> buildUnnamed10() => [
      buildGoogleAppsCloudidentityDevicesV1Device(),
      buildGoogleAppsCloudidentityDevicesV1Device(),
    ];

void checkUnnamed10(core.List<api.GoogleAppsCloudidentityDevicesV1Device> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleAppsCloudidentityDevicesV1Device(o[0]);
  checkGoogleAppsCloudidentityDevicesV1Device(o[1]);
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse = 0;
api.GoogleAppsCloudidentityDevicesV1ListDevicesResponse
    buildGoogleAppsCloudidentityDevicesV1ListDevicesResponse() {
  final o = api.GoogleAppsCloudidentityDevicesV1ListDevicesResponse();
  buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse < 3) {
    o.devices = buildUnnamed10();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1ListDevicesResponse(
    api.GoogleAppsCloudidentityDevicesV1ListDevicesResponse o) {
  buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse < 3) {
    checkUnnamed10(o.devices!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCloudidentityDevicesV1ListDevicesResponse--;
}

core.List<core.String> buildUnnamed11() => [
      'foo',
      'foo',
    ];

void checkUnnamed11(core.List<core.String> o) {
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

core.int
    buildCounterGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse =
    0;
api.GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
    buildGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse() {
  final o = api.GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse();
  buildCounterGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse <
      3) {
    o.customer = 'foo';
    o.names = buildUnnamed11();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse(
    api.GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse o) {
  buildCounterGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse <
      3) {
    unittest.expect(
      o.customer!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.names!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceRequest = 0;
api.GoogleAppsCloudidentityDevicesV1WipeDeviceRequest
    buildGoogleAppsCloudidentityDevicesV1WipeDeviceRequest() {
  final o = api.GoogleAppsCloudidentityDevicesV1WipeDeviceRequest();
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceRequest < 3) {
    o.customer = 'foo';
    o.removeResetLock = true;
  }
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceRequest--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1WipeDeviceRequest(
    api.GoogleAppsCloudidentityDevicesV1WipeDeviceRequest o) {
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceRequest < 3) {
    unittest.expect(
      o.customer!,
      unittest.equals('foo'),
    );
    unittest.expect(o.removeResetLock!, unittest.isTrue);
  }
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceRequest--;
}

core.int buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest = 0;
api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest
    buildGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest() {
  final o = api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest();
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest < 3) {
    o.customer = 'foo';
  }
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest--;
  return o;
}

void checkGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest(
    api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest o) {
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest++;
  if (buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest < 3) {
    unittest.expect(
      o.customer!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest--;
}

core.List<api.EntityKey> buildUnnamed12() => [
      buildEntityKey(),
      buildEntityKey(),
    ];

void checkUnnamed12(core.List<api.EntityKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityKey(o[0]);
  checkEntityKey(o[1]);
}

core.Map<core.String, core.String> buildUnnamed13() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed13(core.Map<core.String, core.String> o) {
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

core.int buildCounterGroup = 0;
api.Group buildGroup() {
  final o = api.Group();
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    o.additionalGroupKeys = buildUnnamed12();
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.dynamicGroupMetadata = buildDynamicGroupMetadata();
    o.groupKey = buildEntityKey();
    o.labels = buildUnnamed13();
    o.name = 'foo';
    o.parent = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGroup--;
  return o;
}

void checkGroup(api.Group o) {
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    checkUnnamed12(o.additionalGroupKeys!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkDynamicGroupMetadata(o.dynamicGroupMetadata!);
    checkEntityKey(o.groupKey!);
    checkUnnamed13(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parent!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGroup--;
}

core.Map<core.String, core.String> buildUnnamed14() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed14(core.Map<core.String, core.String> o) {
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

core.List<api.TransitiveMembershipRole> buildUnnamed15() => [
      buildTransitiveMembershipRole(),
      buildTransitiveMembershipRole(),
    ];

void checkUnnamed15(core.List<api.TransitiveMembershipRole> o) {
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
    o.labels = buildUnnamed14();
    o.relationType = 'foo';
    o.roles = buildUnnamed15();
  }
  buildCounterGroupRelation--;
  return o;
}

void checkGroupRelation(api.GroupRelation o) {
  buildCounterGroupRelation++;
  if (buildCounterGroupRelation < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.group!,
      unittest.equals('foo'),
    );
    checkEntityKey(o.groupKey!);
    checkUnnamed14(o.labels!);
    unittest.expect(
      o.relationType!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.roles!);
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkRsaPublicKeyInfo(o.rsaKeyInfo!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.customer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkSamlIdpConfig(o.idpConfig!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.customer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rank!,
      unittest.equals(42),
    );
    checkSamlSsoInfo(o.samlSsoInfo!);
    checkSignInBehavior(o.signInBehavior!);
    unittest.expect(
      o.ssoMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetGroup!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetOrgUnit!,
      unittest.equals('foo'),
    );
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

core.List<api.Group> buildUnnamed16() => [
      buildGroup(),
      buildGroup(),
    ];

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
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
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
    api.ListInboundSamlSsoProfilesResponse o) {
  buildCounterListInboundSamlSsoProfilesResponse++;
  if (buildCounterListInboundSamlSsoProfilesResponse < 3) {
    checkUnnamed18(o.inboundSamlSsoProfiles!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
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
    api.ListInboundSsoAssignmentsResponse o) {
  buildCounterListInboundSsoAssignmentsResponse++;
  if (buildCounterListInboundSsoAssignmentsResponse < 3) {
    checkUnnamed19(o.inboundSsoAssignments!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListMembershipsResponse--;
}

core.List<api.UserInvitation> buildUnnamed21() => [
      buildUserInvitation(),
      buildUserInvitation(),
    ];

void checkUnnamed21(core.List<api.UserInvitation> o) {
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
    o.userInvitations = buildUnnamed21();
  }
  buildCounterListUserInvitationsResponse--;
  return o;
}

void checkListUserInvitationsResponse(api.ListUserInvitationsResponse o) {
  buildCounterListUserInvitationsResponse++;
  if (buildCounterListUserInvitationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.userInvitations!);
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLookupMembershipNameResponse--;
}

core.List<api.EntityKey> buildUnnamed22() => [
      buildEntityKey(),
      buildEntityKey(),
    ];

void checkUnnamed22(core.List<api.EntityKey> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkEntityKey(o[0]);
  checkEntityKey(o[1]);
}

core.List<api.TransitiveMembershipRole> buildUnnamed23() => [
      buildTransitiveMembershipRole(),
      buildTransitiveMembershipRole(),
    ];

void checkUnnamed23(core.List<api.TransitiveMembershipRole> o) {
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
    o.preferredMemberKey = buildUnnamed22();
    o.relationType = 'foo';
    o.roles = buildUnnamed23();
  }
  buildCounterMemberRelation--;
  return o;
}

void checkMemberRelation(api.MemberRelation o) {
  buildCounterMemberRelation++;
  if (buildCounterMemberRelation < 3) {
    unittest.expect(
      o.member!,
      unittest.equals('foo'),
    );
    checkUnnamed22(o.preferredMemberKey!);
    unittest.expect(
      o.relationType!,
      unittest.equals('foo'),
    );
    checkUnnamed23(o.roles!);
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
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
  }
  buildCounterMemberRestriction--;
}

core.List<api.MembershipRole> buildUnnamed24() => [
      buildMembershipRole(),
      buildMembershipRole(),
    ];

void checkUnnamed24(core.List<api.MembershipRole> o) {
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
    o.name = 'foo';
    o.preferredMemberKey = buildEntityKey();
    o.roles = buildUnnamed24();
    o.type = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterMembership--;
  return o;
}

void checkMembership(api.Membership o) {
  buildCounterMembership++;
  if (buildCounterMembership < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deliverySetting!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkEntityKey(o.preferredMemberKey!);
    checkUnnamed24(o.roles!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterMembership--;
}

core.Map<core.String, core.String> buildUnnamed25() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed25(core.Map<core.String, core.String> o) {
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

core.List<api.MembershipRole> buildUnnamed26() => [
      buildMembershipRole(),
      buildMembershipRole(),
    ];

void checkUnnamed26(core.List<api.MembershipRole> o) {
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
    o.labels = buildUnnamed25();
    o.membership = 'foo';
    o.roles = buildUnnamed26();
  }
  buildCounterMembershipRelation--;
  return o;
}

void checkMembershipRelation(api.MembershipRelation o) {
  buildCounterMembershipRelation++;
  if (buildCounterMembershipRelation < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.group!,
      unittest.equals('foo'),
    );
    checkEntityKey(o.groupKey!);
    checkUnnamed25(o.labels!);
    unittest.expect(
      o.membership!,
      unittest.equals('foo'),
    );
    checkUnnamed26(o.roles!);
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
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
    api.MembershipRoleRestrictionEvaluation o) {
  buildCounterMembershipRoleRestrictionEvaluation++;
  if (buildCounterMembershipRoleRestrictionEvaluation < 3) {
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterMembershipRoleRestrictionEvaluation--;
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

core.List<core.String> buildUnnamed28() => [
      'foo',
      'foo',
    ];

void checkUnnamed28(core.List<core.String> o) {
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

core.List<api.UpdateMembershipRolesParams> buildUnnamed29() => [
      buildUpdateMembershipRolesParams(),
      buildUpdateMembershipRolesParams(),
    ];

void checkUnnamed29(core.List<api.UpdateMembershipRolesParams> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpdateMembershipRolesParams(o[0]);
  checkUpdateMembershipRolesParams(o[1]);
}

core.int buildCounterModifyMembershipRolesRequest = 0;
api.ModifyMembershipRolesRequest buildModifyMembershipRolesRequest() {
  final o = api.ModifyMembershipRolesRequest();
  buildCounterModifyMembershipRolesRequest++;
  if (buildCounterModifyMembershipRolesRequest < 3) {
    o.addRoles = buildUnnamed27();
    o.removeRoles = buildUnnamed28();
    o.updateRolesParams = buildUnnamed29();
  }
  buildCounterModifyMembershipRolesRequest--;
  return o;
}

void checkModifyMembershipRolesRequest(api.ModifyMembershipRolesRequest o) {
  buildCounterModifyMembershipRolesRequest++;
  if (buildCounterModifyMembershipRolesRequest < 3) {
    checkUnnamed27(o.addRoles!);
    checkUnnamed28(o.removeRoles!);
    checkUnnamed29(o.updateRolesParams!);
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

core.Map<core.String, core.Object?> buildUnnamed30() => {
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

void checkUnnamed30(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
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
  var casted4 = (o['y']!) as core.Map;
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
}

core.Map<core.String, core.Object?> buildUnnamed31() => {
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

void checkUnnamed31(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed30();
    o.name = 'foo';
    o.response = buildUnnamed31();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed30(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed31(o.response!);
  }
  buildCounterOperation--;
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
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.keySize!,
      unittest.equals(42),
    );
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
    unittest.expect(
      o.changePasswordUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entityId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.logoutRedirectUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.singleSignOnServiceUri!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.assertionConsumerServiceUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entityId!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.inboundSamlSsoProfile!,
      unittest.equals('foo'),
    );
  }
  buildCounterSamlSsoInfo--;
}

core.List<api.MembershipRelation> buildUnnamed32() => [
      buildMembershipRelation(),
      buildMembershipRelation(),
    ];

void checkUnnamed32(core.List<api.MembershipRelation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMembershipRelation(o[0]);
  checkMembershipRelation(o[1]);
}

core.int buildCounterSearchDirectGroupsResponse = 0;
api.SearchDirectGroupsResponse buildSearchDirectGroupsResponse() {
  final o = api.SearchDirectGroupsResponse();
  buildCounterSearchDirectGroupsResponse++;
  if (buildCounterSearchDirectGroupsResponse < 3) {
    o.memberships = buildUnnamed32();
    o.nextPageToken = 'foo';
  }
  buildCounterSearchDirectGroupsResponse--;
  return o;
}

void checkSearchDirectGroupsResponse(api.SearchDirectGroupsResponse o) {
  buildCounterSearchDirectGroupsResponse++;
  if (buildCounterSearchDirectGroupsResponse < 3) {
    checkUnnamed32(o.memberships!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchDirectGroupsResponse--;
}

core.List<api.Group> buildUnnamed33() => [
      buildGroup(),
      buildGroup(),
    ];

void checkUnnamed33(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0]);
  checkGroup(o[1]);
}

core.int buildCounterSearchGroupsResponse = 0;
api.SearchGroupsResponse buildSearchGroupsResponse() {
  final o = api.SearchGroupsResponse();
  buildCounterSearchGroupsResponse++;
  if (buildCounterSearchGroupsResponse < 3) {
    o.groups = buildUnnamed33();
    o.nextPageToken = 'foo';
  }
  buildCounterSearchGroupsResponse--;
  return o;
}

void checkSearchGroupsResponse(api.SearchGroupsResponse o) {
  buildCounterSearchGroupsResponse++;
  if (buildCounterSearchGroupsResponse < 3) {
    checkUnnamed33(o.groups!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchGroupsResponse--;
}

core.List<api.GroupRelation> buildUnnamed34() => [
      buildGroupRelation(),
      buildGroupRelation(),
    ];

void checkUnnamed34(core.List<api.GroupRelation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroupRelation(o[0]);
  checkGroupRelation(o[1]);
}

core.int buildCounterSearchTransitiveGroupsResponse = 0;
api.SearchTransitiveGroupsResponse buildSearchTransitiveGroupsResponse() {
  final o = api.SearchTransitiveGroupsResponse();
  buildCounterSearchTransitiveGroupsResponse++;
  if (buildCounterSearchTransitiveGroupsResponse < 3) {
    o.memberships = buildUnnamed34();
    o.nextPageToken = 'foo';
  }
  buildCounterSearchTransitiveGroupsResponse--;
  return o;
}

void checkSearchTransitiveGroupsResponse(api.SearchTransitiveGroupsResponse o) {
  buildCounterSearchTransitiveGroupsResponse++;
  if (buildCounterSearchTransitiveGroupsResponse < 3) {
    checkUnnamed34(o.memberships!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchTransitiveGroupsResponse--;
}

core.List<api.MemberRelation> buildUnnamed35() => [
      buildMemberRelation(),
      buildMemberRelation(),
    ];

void checkUnnamed35(core.List<api.MemberRelation> o) {
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
    o.memberships = buildUnnamed35();
    o.nextPageToken = 'foo';
  }
  buildCounterSearchTransitiveMembershipsResponse--;
  return o;
}

void checkSearchTransitiveMembershipsResponse(
    api.SearchTransitiveMembershipsResponse o) {
  buildCounterSearchTransitiveMembershipsResponse++;
  if (buildCounterSearchTransitiveMembershipsResponse < 3) {
    checkUnnamed35(o.memberships!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.redirectCondition!,
      unittest.equals('foo'),
    );
  }
  buildCounterSignInBehavior--;
}

core.Map<core.String, core.Object?> buildUnnamed36() => {
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

void checkUnnamed36(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed37() => [
      buildUnnamed36(),
      buildUnnamed36(),
    ];

void checkUnnamed37(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed36(o[0]);
  checkUnnamed36(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed37();
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
    checkUnnamed37(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.role!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.fieldMask!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.mailsSentCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterUserInvitation--;
}

void main() {
  unittest.group('obj-schema-AddIdpCredentialRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddIdpCredentialRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddIdpCredentialRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddIdpCredentialRequest(od);
    });
  });

  unittest.group('obj-schema-CancelUserInvitationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelUserInvitationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelUserInvitationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelUserInvitationRequest(od);
    });
  });

  unittest.group('obj-schema-CheckTransitiveMembershipResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCheckTransitiveMembershipResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CheckTransitiveMembershipResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCheckTransitiveMembershipResponse(od);
    });
  });

  unittest.group('obj-schema-DsaPublicKeyInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDsaPublicKeyInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DsaPublicKeyInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDsaPublicKeyInfo(od);
    });
  });

  unittest.group('obj-schema-DynamicGroupMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDynamicGroupMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DynamicGroupMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDynamicGroupMetadata(od);
    });
  });

  unittest.group('obj-schema-DynamicGroupQuery', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDynamicGroupQuery();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DynamicGroupQuery.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDynamicGroupQuery(od);
    });
  });

  unittest.group('obj-schema-DynamicGroupStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDynamicGroupStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DynamicGroupStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDynamicGroupStatus(od);
    });
  });

  unittest.group('obj-schema-EntityKey', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEntityKey();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.EntityKey.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEntityKey(od);
    });
  });

  unittest.group('obj-schema-ExpiryDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpiryDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExpiryDetail.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExpiryDetail(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsCloudidentityDevicesV1AndroidAttributes',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1AndroidAttributes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsCloudidentityDevicesV1AndroidAttributes.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1AndroidAttributes(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsCloudidentityDevicesV1BrowserAttributes',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1BrowserAttributes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsCloudidentityDevicesV1BrowserAttributes.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1BrowserAttributes(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsCloudidentityDevicesV1BrowserInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1BrowserInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsCloudidentityDevicesV1BrowserInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1BrowserInfo(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1CertificateAttributes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1CertificateAttributes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1CertificateAttributes.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1CertificateAttributes(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1CertificateTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1CertificateTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1CertificateTemplate.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1CertificateTemplate(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsCloudidentityDevicesV1ClientState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1ClientState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsCloudidentityDevicesV1ClientState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1ClientState(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1CustomAttributeValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1CustomAttributeValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1CustomAttributeValue.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1CustomAttributeValue(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsCloudidentityDevicesV1Device', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1Device();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsCloudidentityDevicesV1Device.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1Device(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsCloudidentityDevicesV1DeviceUser', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1DeviceUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsCloudidentityDevicesV1DeviceUser.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1DeviceUser(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1EndpointVerificationSpecificAttributes(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1ListClientStatesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1ListClientStatesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1ListClientStatesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1ListClientStatesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1ListDevicesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1ListDevicesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1ListDevicesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1ListDevicesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleAppsCloudidentityDevicesV1WipeDeviceRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1WipeDeviceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleAppsCloudidentityDevicesV1WipeDeviceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1WipeDeviceRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest(od);
    });
  });

  unittest.group('obj-schema-Group', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Group.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGroup(od);
    });
  });

  unittest.group('obj-schema-GroupRelation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroupRelation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GroupRelation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGroupRelation(od);
    });
  });

  unittest.group('obj-schema-IdpCredential', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdpCredential();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdpCredential.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIdpCredential(od);
    });
  });

  unittest.group('obj-schema-InboundSamlSsoProfile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInboundSamlSsoProfile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InboundSamlSsoProfile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInboundSamlSsoProfile(od);
    });
  });

  unittest.group('obj-schema-InboundSsoAssignment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInboundSsoAssignment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InboundSsoAssignment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInboundSsoAssignment(od);
    });
  });

  unittest.group('obj-schema-IsInvitableUserResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIsInvitableUserResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IsInvitableUserResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIsInvitableUserResponse(od);
    });
  });

  unittest.group('obj-schema-ListGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGroupsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-ListIdpCredentialsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListIdpCredentialsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListIdpCredentialsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListIdpCredentialsResponse(od);
    });
  });

  unittest.group('obj-schema-ListInboundSamlSsoProfilesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListInboundSamlSsoProfilesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListInboundSamlSsoProfilesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListInboundSamlSsoProfilesResponse(od);
    });
  });

  unittest.group('obj-schema-ListInboundSsoAssignmentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListInboundSsoAssignmentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListInboundSsoAssignmentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListInboundSsoAssignmentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListMembershipsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListMembershipsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListMembershipsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListMembershipsResponse(od);
    });
  });

  unittest.group('obj-schema-ListUserInvitationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListUserInvitationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListUserInvitationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListUserInvitationsResponse(od);
    });
  });

  unittest.group('obj-schema-LookupGroupNameResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLookupGroupNameResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LookupGroupNameResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLookupGroupNameResponse(od);
    });
  });

  unittest.group('obj-schema-LookupMembershipNameResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLookupMembershipNameResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LookupMembershipNameResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLookupMembershipNameResponse(od);
    });
  });

  unittest.group('obj-schema-MemberRelation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMemberRelation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MemberRelation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMemberRelation(od);
    });
  });

  unittest.group('obj-schema-MemberRestriction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMemberRestriction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MemberRestriction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMemberRestriction(od);
    });
  });

  unittest.group('obj-schema-Membership', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembership();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Membership.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMembership(od);
    });
  });

  unittest.group('obj-schema-MembershipRelation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembershipRelation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MembershipRelation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMembershipRelation(od);
    });
  });

  unittest.group('obj-schema-MembershipRole', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembershipRole();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MembershipRole.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMembershipRole(od);
    });
  });

  unittest.group('obj-schema-MembershipRoleRestrictionEvaluation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMembershipRoleRestrictionEvaluation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MembershipRoleRestrictionEvaluation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMembershipRoleRestrictionEvaluation(od);
    });
  });

  unittest.group('obj-schema-ModifyMembershipRolesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModifyMembershipRolesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModifyMembershipRolesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkModifyMembershipRolesRequest(od);
    });
  });

  unittest.group('obj-schema-ModifyMembershipRolesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModifyMembershipRolesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModifyMembershipRolesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkModifyMembershipRolesResponse(od);
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

  unittest.group('obj-schema-RestrictionEvaluation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestrictionEvaluation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestrictionEvaluation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRestrictionEvaluation(od);
    });
  });

  unittest.group('obj-schema-RestrictionEvaluations', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRestrictionEvaluations();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RestrictionEvaluations.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRestrictionEvaluations(od);
    });
  });

  unittest.group('obj-schema-RsaPublicKeyInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRsaPublicKeyInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RsaPublicKeyInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRsaPublicKeyInfo(od);
    });
  });

  unittest.group('obj-schema-SamlIdpConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSamlIdpConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SamlIdpConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSamlIdpConfig(od);
    });
  });

  unittest.group('obj-schema-SamlSpConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSamlSpConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SamlSpConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSamlSpConfig(od);
    });
  });

  unittest.group('obj-schema-SamlSsoInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSamlSsoInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SamlSsoInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSamlSsoInfo(od);
    });
  });

  unittest.group('obj-schema-SearchDirectGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchDirectGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchDirectGroupsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchDirectGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-SearchGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchGroupsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-SearchTransitiveGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchTransitiveGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchTransitiveGroupsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchTransitiveGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-SearchTransitiveMembershipsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchTransitiveMembershipsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchTransitiveMembershipsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchTransitiveMembershipsResponse(od);
    });
  });

  unittest.group('obj-schema-SecuritySettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecuritySettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecuritySettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSecuritySettings(od);
    });
  });

  unittest.group('obj-schema-SendUserInvitationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSendUserInvitationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SendUserInvitationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSendUserInvitationRequest(od);
    });
  });

  unittest.group('obj-schema-SignInBehavior', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSignInBehavior();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SignInBehavior.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSignInBehavior(od);
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

  unittest.group('obj-schema-TransitiveMembershipRole', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransitiveMembershipRole();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransitiveMembershipRole.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTransitiveMembershipRole(od);
    });
  });

  unittest.group('obj-schema-UpdateMembershipRolesParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateMembershipRolesParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateMembershipRolesParams.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateMembershipRolesParams(od);
    });
  });

  unittest.group('obj-schema-UserInvitation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserInvitation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserInvitation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUserInvitation(od);
    });
  });

  unittest.group('resource-CustomersUserinvitationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).customers.userinvitations;
      final arg_request = buildCancelUserInvitationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelUserInvitationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).customers.userinvitations;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildUserInvitation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkUserInvitation(response as api.UserInvitation);
    });

    unittest.test('method--isInvitableUser', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).customers.userinvitations;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildIsInvitableUserResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.isInvitableUser(arg_name, $fields: arg_$fields);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListUserInvitationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListUserInvitationsResponse(
          response as api.ListUserInvitationsResponse);
    });

    unittest.test('method--send', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).customers.userinvitations;
      final arg_request = buildSendUserInvitationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SendUserInvitationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.send(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-DevicesResource', () {
    unittest.test('method--cancelWipe', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices;
      final arg_request =
          buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceRequest(obj);

        final path = req.url.path;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancelWipe(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices;
      final arg_request = buildGoogleAppsCloudidentityDevicesV1Device();
      final arg_customer = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAppsCloudidentityDevicesV1Device.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAppsCloudidentityDevicesV1Device(obj);

        final path = req.url.path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('v1/devices'),
        );
        pathOffset += 10;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request,
          customer: arg_customer, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices;
      final arg_name = 'foo';
      final arg_customer = 'foo';
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
          queryMap['customer']!.first,
          unittest.equals(arg_customer),
        );
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
      final response = await res.delete(arg_name,
          customer: arg_customer, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices;
      final arg_name = 'foo';
      final arg_customer = 'foo';
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
          queryMap['customer']!.first,
          unittest.equals(arg_customer),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleAppsCloudidentityDevicesV1Device());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, customer: arg_customer, $fields: arg_$fields);
      checkGoogleAppsCloudidentityDevicesV1Device(
          response as api.GoogleAppsCloudidentityDevicesV1Device);
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
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('v1/devices'),
        );
        pathOffset += 10;

        final query = req.url.query;
        var queryOffset = 0;
        final queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
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
        final resp = convert.json
            .encode(buildGoogleAppsCloudidentityDevicesV1ListDevicesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          customer: arg_customer,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkGoogleAppsCloudidentityDevicesV1ListDevicesResponse(
          response as api.GoogleAppsCloudidentityDevicesV1ListDevicesResponse);
    });

    unittest.test('method--wipe', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices;
      final arg_request =
          buildGoogleAppsCloudidentityDevicesV1WipeDeviceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAppsCloudidentityDevicesV1WipeDeviceRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAppsCloudidentityDevicesV1WipeDeviceRequest(obj);

        final path = req.url.path;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.wipe(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-DevicesDeviceUsersResource', () {
    unittest.test('method--approve', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices.deviceUsers;
      final arg_request =
          buildGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAppsCloudidentityDevicesV1ApproveDeviceUserRequest(obj);

        final path = req.url.path;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.approve(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--block', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices.deviceUsers;
      final arg_request =
          buildGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAppsCloudidentityDevicesV1BlockDeviceUserRequest(obj);

        final path = req.url.path;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.block(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--cancelWipe', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices.deviceUsers;
      final arg_request =
          buildGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleAppsCloudidentityDevicesV1CancelWipeDeviceUserRequest(obj);

        final path = req.url.path;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancelWipe(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices.deviceUsers;
      final arg_name = 'foo';
      final arg_customer = 'foo';
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
          queryMap['customer']!.first,
          unittest.equals(arg_customer),
        );
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
      final response = await res.delete(arg_name,
          customer: arg_customer, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices.deviceUsers;
      final arg_name = 'foo';
      final arg_customer = 'foo';
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
          queryMap['customer']!.first,
          unittest.equals(arg_customer),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAppsCloudidentityDevicesV1DeviceUser());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, customer: arg_customer, $fields: arg_$fields);
      checkGoogleAppsCloudidentityDevicesV1DeviceUser(
          response as api.GoogleAppsCloudidentityDevicesV1DeviceUser);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          customer: arg_customer,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse(response
          as api.GoogleAppsCloudidentityDevicesV1ListDeviceUsersResponse);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.lookup(arg_parent,
          androidId: arg_androidId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          rawResourceId: arg_rawResourceId,
          userId: arg_userId,
          $fields: arg_$fields);
      checkGoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse(
          response as api
              .GoogleAppsCloudidentityDevicesV1LookupSelfDeviceUsersResponse);
    });

    unittest.test('method--wipe', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices.deviceUsers;
      final arg_request =
          buildGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleAppsCloudidentityDevicesV1WipeDeviceUserRequest(obj);

        final path = req.url.path;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.wipe(arg_request, arg_name, $fields: arg_$fields);
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
          queryMap['customer']!.first,
          unittest.equals(arg_customer),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleAppsCloudidentityDevicesV1ClientState());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, customer: arg_customer, $fields: arg_$fields);
      checkGoogleAppsCloudidentityDevicesV1ClientState(
          response as api.GoogleAppsCloudidentityDevicesV1ClientState);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices.deviceUsers.clientStates;
      final arg_parent = 'foo';
      final arg_customer = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
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
        final resp = convert.json.encode(
            buildGoogleAppsCloudidentityDevicesV1ListClientStatesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          customer: arg_customer,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleAppsCloudidentityDevicesV1ListClientStatesResponse(response
          as api.GoogleAppsCloudidentityDevicesV1ListClientStatesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).devices.deviceUsers.clientStates;
      final arg_request = buildGoogleAppsCloudidentityDevicesV1ClientState();
      final arg_name = 'foo';
      final arg_customer = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleAppsCloudidentityDevicesV1ClientState.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleAppsCloudidentityDevicesV1ClientState(obj);

        final path = req.url.path;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          customer: arg_customer,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Group.fromJson(json as core.Map<core.String, core.dynamic>);
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/groups'),
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
          queryMap['initialGroupConfig']!.first,
          unittest.equals(arg_initialGroupConfig),
        );
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
      final response = await res.create(arg_request,
          initialGroupConfig: arg_initialGroupConfig, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGroup(response as api.Group);
    });

    unittest.test('method--getSecuritySettings', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups;
      final arg_name = 'foo';
      final arg_readMask = 'foo';
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
          queryMap['readMask']!.first,
          unittest.equals(arg_readMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSecuritySettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getSecuritySettings(arg_name,
          readMask: arg_readMask, $fields: arg_$fields);
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/groups'),
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
        final resp = convert.json.encode(buildListGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          parent: arg_parent,
          view: arg_view,
          $fields: arg_$fields);
      checkListGroupsResponse(response as api.ListGroupsResponse);
    });

    unittest.test('method--lookup', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups;
      final arg_groupKey_id = 'foo';
      final arg_groupKey_namespace = 'foo';
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
          unittest.equals('v1/groups:lookup'),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLookupGroupNameResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.lookup(
          groupKey_id: arg_groupKey_id,
          groupKey_namespace: arg_groupKey_namespace,
          $fields: arg_$fields);
      checkLookupGroupNameResponse(response as api.LookupGroupNameResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups;
      final arg_request = buildGroup();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Group.fromJson(json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_query = 'foo';
      final arg_view = 'foo';
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
          unittest.equals('v1/groups:search'),
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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['query']!.first,
          unittest.equals(arg_query),
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
        final resp = convert.json.encode(buildSearchGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          query: arg_query,
          view: arg_view,
          $fields: arg_$fields);
      checkSearchGroupsResponse(response as api.SearchGroupsResponse);
    });

    unittest.test('method--updateSecuritySettings', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups;
      final arg_request = buildSecuritySettings();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SecuritySettings.fromJson(
            json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateSecuritySettings(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
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
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildCheckTransitiveMembershipResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.checkTransitiveMembership(arg_parent,
          query: arg_query, $fields: arg_$fields);
      checkCheckTransitiveMembershipResponse(
          response as api.CheckTransitiveMembershipResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups.memberships;
      final arg_request = buildMembership();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Membership.fromJson(
            json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups.memberships;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups.memberships;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildMembership());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkMembership(response as api.Membership);
    });

    unittest.test('method--getMembershipGraph', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups.memberships;
      final arg_parent = 'foo';
      final arg_query = 'foo';
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
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
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
      final response = await res.getMembershipGraph(arg_parent,
          query: arg_query, $fields: arg_$fields);
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
        final resp = convert.json.encode(buildListMembershipsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListMembershipsResponse(response as api.ListMembershipsResponse);
    });

    unittest.test('method--lookup', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups.memberships;
      final arg_parent = 'foo';
      final arg_memberKey_id = 'foo';
      final arg_memberKey_namespace = 'foo';
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLookupMembershipNameResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.lookup(arg_parent,
          memberKey_id: arg_memberKey_id,
          memberKey_namespace: arg_memberKey_namespace,
          $fields: arg_$fields);
      checkLookupMembershipNameResponse(
          response as api.LookupMembershipNameResponse);
    });

    unittest.test('method--modifyMembershipRoles', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups.memberships;
      final arg_request = buildModifyMembershipRolesRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ModifyMembershipRolesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildModifyMembershipRolesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.modifyMembershipRoles(arg_request, arg_name,
          $fields: arg_$fields);
      checkModifyMembershipRolesResponse(
          response as api.ModifyMembershipRolesResponse);
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
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSearchDirectGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchDirectGroups(arg_parent,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          query: arg_query,
          $fields: arg_$fields);
      checkSearchDirectGroupsResponse(
          response as api.SearchDirectGroupsResponse);
    });

    unittest.test('method--searchTransitiveGroups', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups.memberships;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_query = 'foo';
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
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSearchTransitiveGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchTransitiveGroups(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          query: arg_query,
          $fields: arg_$fields);
      checkSearchTransitiveGroupsResponse(
          response as api.SearchTransitiveGroupsResponse);
    });

    unittest.test('method--searchTransitiveMemberships', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).groups.memberships;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildSearchTransitiveMembershipsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchTransitiveMemberships(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkSearchTransitiveMembershipsResponse(
          response as api.SearchTransitiveMembershipsResponse);
    });
  });

  unittest.group('resource-InboundSamlSsoProfilesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).inboundSamlSsoProfiles;
      final arg_request = buildInboundSamlSsoProfile();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InboundSamlSsoProfile.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('v1/inboundSamlSsoProfiles'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).inboundSamlSsoProfiles;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).inboundSamlSsoProfiles;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildInboundSamlSsoProfile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
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
          path.substring(pathOffset, pathOffset + 25),
          unittest.equals('v1/inboundSamlSsoProfiles'),
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
        final resp =
            convert.json.encode(buildListInboundSamlSsoProfilesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListInboundSamlSsoProfilesResponse(
          response as api.ListInboundSamlSsoProfilesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).inboundSamlSsoProfiles;
      final arg_request = buildInboundSamlSsoProfile();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InboundSamlSsoProfile.fromJson(
            json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AddIdpCredentialRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.add(arg_request, arg_parent, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudIdentityApi(mock).inboundSamlSsoProfiles.idpCredentials;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudIdentityApi(mock).inboundSamlSsoProfiles.idpCredentials;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildIdpCredential());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListIdpCredentialsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListIdpCredentialsResponse(
          response as api.ListIdpCredentialsResponse);
    });
  });

  unittest.group('resource-InboundSsoAssignmentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).inboundSsoAssignments;
      final arg_request = buildInboundSsoAssignment();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InboundSsoAssignment.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
          path.substring(pathOffset, pathOffset + 24),
          unittest.equals('v1/inboundSsoAssignments'),
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).inboundSsoAssignments;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).inboundSsoAssignments;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildInboundSsoAssignment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
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
          path.substring(pathOffset, pathOffset + 24),
          unittest.equals('v1/inboundSsoAssignments'),
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
        final resp =
            convert.json.encode(buildListInboundSsoAssignmentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListInboundSsoAssignmentsResponse(
          response as api.ListInboundSsoAssignmentsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudIdentityApi(mock).inboundSsoAssignments;
      final arg_request = buildInboundSsoAssignment();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.InboundSsoAssignment.fromJson(
            json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });
}
