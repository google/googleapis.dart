// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis/cloudchannel/v1.dart' as api;

import '../test_shared.dart';

core.int buildCounterGoogleCloudChannelV1ActivateEntitlementRequest = 0;
api.GoogleCloudChannelV1ActivateEntitlementRequest
    buildGoogleCloudChannelV1ActivateEntitlementRequest() {
  var o = api.GoogleCloudChannelV1ActivateEntitlementRequest();
  buildCounterGoogleCloudChannelV1ActivateEntitlementRequest++;
  if (buildCounterGoogleCloudChannelV1ActivateEntitlementRequest < 3) {
    o.requestId = 'foo';
  }
  buildCounterGoogleCloudChannelV1ActivateEntitlementRequest--;
  return o;
}

void checkGoogleCloudChannelV1ActivateEntitlementRequest(
    api.GoogleCloudChannelV1ActivateEntitlementRequest o) {
  buildCounterGoogleCloudChannelV1ActivateEntitlementRequest++;
  if (buildCounterGoogleCloudChannelV1ActivateEntitlementRequest < 3) {
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1ActivateEntitlementRequest--;
}

core.int buildCounterGoogleCloudChannelV1AdminUser = 0;
api.GoogleCloudChannelV1AdminUser buildGoogleCloudChannelV1AdminUser() {
  var o = api.GoogleCloudChannelV1AdminUser();
  buildCounterGoogleCloudChannelV1AdminUser++;
  if (buildCounterGoogleCloudChannelV1AdminUser < 3) {
    o.email = 'foo';
    o.familyName = 'foo';
    o.givenName = 'foo';
  }
  buildCounterGoogleCloudChannelV1AdminUser--;
  return o;
}

void checkGoogleCloudChannelV1AdminUser(api.GoogleCloudChannelV1AdminUser o) {
  buildCounterGoogleCloudChannelV1AdminUser++;
  if (buildCounterGoogleCloudChannelV1AdminUser < 3) {
    unittest.expect(
      o.email!,
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
  }
  buildCounterGoogleCloudChannelV1AdminUser--;
}

core.int buildCounterGoogleCloudChannelV1AssociationInfo = 0;
api.GoogleCloudChannelV1AssociationInfo
    buildGoogleCloudChannelV1AssociationInfo() {
  var o = api.GoogleCloudChannelV1AssociationInfo();
  buildCounterGoogleCloudChannelV1AssociationInfo++;
  if (buildCounterGoogleCloudChannelV1AssociationInfo < 3) {
    o.baseEntitlement = 'foo';
  }
  buildCounterGoogleCloudChannelV1AssociationInfo--;
  return o;
}

void checkGoogleCloudChannelV1AssociationInfo(
    api.GoogleCloudChannelV1AssociationInfo o) {
  buildCounterGoogleCloudChannelV1AssociationInfo++;
  if (buildCounterGoogleCloudChannelV1AssociationInfo < 3) {
    unittest.expect(
      o.baseEntitlement!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1AssociationInfo--;
}

core.int buildCounterGoogleCloudChannelV1CancelEntitlementRequest = 0;
api.GoogleCloudChannelV1CancelEntitlementRequest
    buildGoogleCloudChannelV1CancelEntitlementRequest() {
  var o = api.GoogleCloudChannelV1CancelEntitlementRequest();
  buildCounterGoogleCloudChannelV1CancelEntitlementRequest++;
  if (buildCounterGoogleCloudChannelV1CancelEntitlementRequest < 3) {
    o.requestId = 'foo';
  }
  buildCounterGoogleCloudChannelV1CancelEntitlementRequest--;
  return o;
}

void checkGoogleCloudChannelV1CancelEntitlementRequest(
    api.GoogleCloudChannelV1CancelEntitlementRequest o) {
  buildCounterGoogleCloudChannelV1CancelEntitlementRequest++;
  if (buildCounterGoogleCloudChannelV1CancelEntitlementRequest < 3) {
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1CancelEntitlementRequest--;
}

core.List<api.GoogleCloudChannelV1Parameter> buildUnnamed2819() {
  var o = <api.GoogleCloudChannelV1Parameter>[];
  o.add(buildGoogleCloudChannelV1Parameter());
  o.add(buildGoogleCloudChannelV1Parameter());
  return o;
}

void checkUnnamed2819(core.List<api.GoogleCloudChannelV1Parameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1Parameter(o[0] as api.GoogleCloudChannelV1Parameter);
  checkGoogleCloudChannelV1Parameter(o[1] as api.GoogleCloudChannelV1Parameter);
}

core.int buildCounterGoogleCloudChannelV1ChangeOfferRequest = 0;
api.GoogleCloudChannelV1ChangeOfferRequest
    buildGoogleCloudChannelV1ChangeOfferRequest() {
  var o = api.GoogleCloudChannelV1ChangeOfferRequest();
  buildCounterGoogleCloudChannelV1ChangeOfferRequest++;
  if (buildCounterGoogleCloudChannelV1ChangeOfferRequest < 3) {
    o.offer = 'foo';
    o.parameters = buildUnnamed2819();
    o.purchaseOrderId = 'foo';
    o.requestId = 'foo';
  }
  buildCounterGoogleCloudChannelV1ChangeOfferRequest--;
  return o;
}

void checkGoogleCloudChannelV1ChangeOfferRequest(
    api.GoogleCloudChannelV1ChangeOfferRequest o) {
  buildCounterGoogleCloudChannelV1ChangeOfferRequest++;
  if (buildCounterGoogleCloudChannelV1ChangeOfferRequest < 3) {
    unittest.expect(
      o.offer!,
      unittest.equals('foo'),
    );
    checkUnnamed2819(o.parameters!);
    unittest.expect(
      o.purchaseOrderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1ChangeOfferRequest--;
}

core.List<api.GoogleCloudChannelV1Parameter> buildUnnamed2820() {
  var o = <api.GoogleCloudChannelV1Parameter>[];
  o.add(buildGoogleCloudChannelV1Parameter());
  o.add(buildGoogleCloudChannelV1Parameter());
  return o;
}

void checkUnnamed2820(core.List<api.GoogleCloudChannelV1Parameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1Parameter(o[0] as api.GoogleCloudChannelV1Parameter);
  checkGoogleCloudChannelV1Parameter(o[1] as api.GoogleCloudChannelV1Parameter);
}

core.int buildCounterGoogleCloudChannelV1ChangeParametersRequest = 0;
api.GoogleCloudChannelV1ChangeParametersRequest
    buildGoogleCloudChannelV1ChangeParametersRequest() {
  var o = api.GoogleCloudChannelV1ChangeParametersRequest();
  buildCounterGoogleCloudChannelV1ChangeParametersRequest++;
  if (buildCounterGoogleCloudChannelV1ChangeParametersRequest < 3) {
    o.parameters = buildUnnamed2820();
    o.purchaseOrderId = 'foo';
    o.requestId = 'foo';
  }
  buildCounterGoogleCloudChannelV1ChangeParametersRequest--;
  return o;
}

void checkGoogleCloudChannelV1ChangeParametersRequest(
    api.GoogleCloudChannelV1ChangeParametersRequest o) {
  buildCounterGoogleCloudChannelV1ChangeParametersRequest++;
  if (buildCounterGoogleCloudChannelV1ChangeParametersRequest < 3) {
    checkUnnamed2820(o.parameters!);
    unittest.expect(
      o.purchaseOrderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1ChangeParametersRequest--;
}

core.int buildCounterGoogleCloudChannelV1ChangeRenewalSettingsRequest = 0;
api.GoogleCloudChannelV1ChangeRenewalSettingsRequest
    buildGoogleCloudChannelV1ChangeRenewalSettingsRequest() {
  var o = api.GoogleCloudChannelV1ChangeRenewalSettingsRequest();
  buildCounterGoogleCloudChannelV1ChangeRenewalSettingsRequest++;
  if (buildCounterGoogleCloudChannelV1ChangeRenewalSettingsRequest < 3) {
    o.renewalSettings = buildGoogleCloudChannelV1RenewalSettings();
    o.requestId = 'foo';
  }
  buildCounterGoogleCloudChannelV1ChangeRenewalSettingsRequest--;
  return o;
}

void checkGoogleCloudChannelV1ChangeRenewalSettingsRequest(
    api.GoogleCloudChannelV1ChangeRenewalSettingsRequest o) {
  buildCounterGoogleCloudChannelV1ChangeRenewalSettingsRequest++;
  if (buildCounterGoogleCloudChannelV1ChangeRenewalSettingsRequest < 3) {
    checkGoogleCloudChannelV1RenewalSettings(
        o.renewalSettings! as api.GoogleCloudChannelV1RenewalSettings);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1ChangeRenewalSettingsRequest--;
}

core.int buildCounterGoogleCloudChannelV1ChannelPartnerLink = 0;
api.GoogleCloudChannelV1ChannelPartnerLink
    buildGoogleCloudChannelV1ChannelPartnerLink() {
  var o = api.GoogleCloudChannelV1ChannelPartnerLink();
  buildCounterGoogleCloudChannelV1ChannelPartnerLink++;
  if (buildCounterGoogleCloudChannelV1ChannelPartnerLink < 3) {
    o.channelPartnerCloudIdentityInfo =
        buildGoogleCloudChannelV1CloudIdentityInfo();
    o.createTime = 'foo';
    o.inviteLinkUri = 'foo';
    o.linkState = 'foo';
    o.name = 'foo';
    o.publicId = 'foo';
    o.resellerCloudIdentityId = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudChannelV1ChannelPartnerLink--;
  return o;
}

void checkGoogleCloudChannelV1ChannelPartnerLink(
    api.GoogleCloudChannelV1ChannelPartnerLink o) {
  buildCounterGoogleCloudChannelV1ChannelPartnerLink++;
  if (buildCounterGoogleCloudChannelV1ChannelPartnerLink < 3) {
    checkGoogleCloudChannelV1CloudIdentityInfo(
        o.channelPartnerCloudIdentityInfo!
            as api.GoogleCloudChannelV1CloudIdentityInfo);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inviteLinkUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.linkState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publicId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.resellerCloudIdentityId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1ChannelPartnerLink--;
}

core.int
    buildCounterGoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest = 0;
api.GoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest
    buildGoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest() {
  var o = api.GoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest();
  buildCounterGoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest++;
  if (buildCounterGoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest <
      3) {
    o.domain = 'foo';
  }
  buildCounterGoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest--;
  return o;
}

void checkGoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest(
    api.GoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest o) {
  buildCounterGoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest++;
  if (buildCounterGoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest <
      3) {
    unittest.expect(
      o.domain!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest--;
}

core.List<api.GoogleCloudChannelV1CloudIdentityCustomerAccount>
    buildUnnamed2821() {
  var o = <api.GoogleCloudChannelV1CloudIdentityCustomerAccount>[];
  o.add(buildGoogleCloudChannelV1CloudIdentityCustomerAccount());
  o.add(buildGoogleCloudChannelV1CloudIdentityCustomerAccount());
  return o;
}

void checkUnnamed2821(
    core.List<api.GoogleCloudChannelV1CloudIdentityCustomerAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1CloudIdentityCustomerAccount(
      o[0] as api.GoogleCloudChannelV1CloudIdentityCustomerAccount);
  checkGoogleCloudChannelV1CloudIdentityCustomerAccount(
      o[1] as api.GoogleCloudChannelV1CloudIdentityCustomerAccount);
}

core.int
    buildCounterGoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse = 0;
api.GoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse
    buildGoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse() {
  var o = api.GoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse();
  buildCounterGoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse++;
  if (buildCounterGoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse <
      3) {
    o.cloudIdentityAccounts = buildUnnamed2821();
  }
  buildCounterGoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse--;
  return o;
}

void checkGoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse(
    api.GoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse o) {
  buildCounterGoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse++;
  if (buildCounterGoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse <
      3) {
    checkUnnamed2821(o.cloudIdentityAccounts!);
  }
  buildCounterGoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse--;
}

core.int buildCounterGoogleCloudChannelV1CloudIdentityCustomerAccount = 0;
api.GoogleCloudChannelV1CloudIdentityCustomerAccount
    buildGoogleCloudChannelV1CloudIdentityCustomerAccount() {
  var o = api.GoogleCloudChannelV1CloudIdentityCustomerAccount();
  buildCounterGoogleCloudChannelV1CloudIdentityCustomerAccount++;
  if (buildCounterGoogleCloudChannelV1CloudIdentityCustomerAccount < 3) {
    o.customerCloudIdentityId = 'foo';
    o.customerName = 'foo';
    o.existing = true;
    o.owned = true;
  }
  buildCounterGoogleCloudChannelV1CloudIdentityCustomerAccount--;
  return o;
}

void checkGoogleCloudChannelV1CloudIdentityCustomerAccount(
    api.GoogleCloudChannelV1CloudIdentityCustomerAccount o) {
  buildCounterGoogleCloudChannelV1CloudIdentityCustomerAccount++;
  if (buildCounterGoogleCloudChannelV1CloudIdentityCustomerAccount < 3) {
    unittest.expect(
      o.customerCloudIdentityId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.existing!, unittest.isTrue);
    unittest.expect(o.owned!, unittest.isTrue);
  }
  buildCounterGoogleCloudChannelV1CloudIdentityCustomerAccount--;
}

core.int buildCounterGoogleCloudChannelV1CloudIdentityInfo = 0;
api.GoogleCloudChannelV1CloudIdentityInfo
    buildGoogleCloudChannelV1CloudIdentityInfo() {
  var o = api.GoogleCloudChannelV1CloudIdentityInfo();
  buildCounterGoogleCloudChannelV1CloudIdentityInfo++;
  if (buildCounterGoogleCloudChannelV1CloudIdentityInfo < 3) {
    o.adminConsoleUri = 'foo';
    o.alternateEmail = 'foo';
    o.customerType = 'foo';
    o.eduData = buildGoogleCloudChannelV1EduData();
    o.isDomainVerified = true;
    o.languageCode = 'foo';
    o.phoneNumber = 'foo';
    o.primaryDomain = 'foo';
  }
  buildCounterGoogleCloudChannelV1CloudIdentityInfo--;
  return o;
}

void checkGoogleCloudChannelV1CloudIdentityInfo(
    api.GoogleCloudChannelV1CloudIdentityInfo o) {
  buildCounterGoogleCloudChannelV1CloudIdentityInfo++;
  if (buildCounterGoogleCloudChannelV1CloudIdentityInfo < 3) {
    unittest.expect(
      o.adminConsoleUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.alternateEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerType!,
      unittest.equals('foo'),
    );
    checkGoogleCloudChannelV1EduData(
        o.eduData! as api.GoogleCloudChannelV1EduData);
    unittest.expect(o.isDomainVerified!, unittest.isTrue);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.phoneNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.primaryDomain!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1CloudIdentityInfo--;
}

core.int buildCounterGoogleCloudChannelV1CommitmentSettings = 0;
api.GoogleCloudChannelV1CommitmentSettings
    buildGoogleCloudChannelV1CommitmentSettings() {
  var o = api.GoogleCloudChannelV1CommitmentSettings();
  buildCounterGoogleCloudChannelV1CommitmentSettings++;
  if (buildCounterGoogleCloudChannelV1CommitmentSettings < 3) {
    o.endTime = 'foo';
    o.renewalSettings = buildGoogleCloudChannelV1RenewalSettings();
    o.startTime = 'foo';
  }
  buildCounterGoogleCloudChannelV1CommitmentSettings--;
  return o;
}

void checkGoogleCloudChannelV1CommitmentSettings(
    api.GoogleCloudChannelV1CommitmentSettings o) {
  buildCounterGoogleCloudChannelV1CommitmentSettings++;
  if (buildCounterGoogleCloudChannelV1CommitmentSettings < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudChannelV1RenewalSettings(
        o.renewalSettings! as api.GoogleCloudChannelV1RenewalSettings);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1CommitmentSettings--;
}

core.int buildCounterGoogleCloudChannelV1Constraints = 0;
api.GoogleCloudChannelV1Constraints buildGoogleCloudChannelV1Constraints() {
  var o = api.GoogleCloudChannelV1Constraints();
  buildCounterGoogleCloudChannelV1Constraints++;
  if (buildCounterGoogleCloudChannelV1Constraints < 3) {
    o.customerConstraints = buildGoogleCloudChannelV1CustomerConstraints();
  }
  buildCounterGoogleCloudChannelV1Constraints--;
  return o;
}

void checkGoogleCloudChannelV1Constraints(
    api.GoogleCloudChannelV1Constraints o) {
  buildCounterGoogleCloudChannelV1Constraints++;
  if (buildCounterGoogleCloudChannelV1Constraints < 3) {
    checkGoogleCloudChannelV1CustomerConstraints(
        o.customerConstraints! as api.GoogleCloudChannelV1CustomerConstraints);
  }
  buildCounterGoogleCloudChannelV1Constraints--;
}

core.int buildCounterGoogleCloudChannelV1ContactInfo = 0;
api.GoogleCloudChannelV1ContactInfo buildGoogleCloudChannelV1ContactInfo() {
  var o = api.GoogleCloudChannelV1ContactInfo();
  buildCounterGoogleCloudChannelV1ContactInfo++;
  if (buildCounterGoogleCloudChannelV1ContactInfo < 3) {
    o.displayName = 'foo';
    o.email = 'foo';
    o.firstName = 'foo';
    o.lastName = 'foo';
    o.phone = 'foo';
    o.title = 'foo';
  }
  buildCounterGoogleCloudChannelV1ContactInfo--;
  return o;
}

void checkGoogleCloudChannelV1ContactInfo(
    api.GoogleCloudChannelV1ContactInfo o) {
  buildCounterGoogleCloudChannelV1ContactInfo++;
  if (buildCounterGoogleCloudChannelV1ContactInfo < 3) {
    unittest.expect(
      o.displayName!,
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
  buildCounterGoogleCloudChannelV1ContactInfo--;
}

core.int buildCounterGoogleCloudChannelV1CreateEntitlementRequest = 0;
api.GoogleCloudChannelV1CreateEntitlementRequest
    buildGoogleCloudChannelV1CreateEntitlementRequest() {
  var o = api.GoogleCloudChannelV1CreateEntitlementRequest();
  buildCounterGoogleCloudChannelV1CreateEntitlementRequest++;
  if (buildCounterGoogleCloudChannelV1CreateEntitlementRequest < 3) {
    o.entitlement = buildGoogleCloudChannelV1Entitlement();
    o.requestId = 'foo';
  }
  buildCounterGoogleCloudChannelV1CreateEntitlementRequest--;
  return o;
}

void checkGoogleCloudChannelV1CreateEntitlementRequest(
    api.GoogleCloudChannelV1CreateEntitlementRequest o) {
  buildCounterGoogleCloudChannelV1CreateEntitlementRequest++;
  if (buildCounterGoogleCloudChannelV1CreateEntitlementRequest < 3) {
    checkGoogleCloudChannelV1Entitlement(
        o.entitlement! as api.GoogleCloudChannelV1Entitlement);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1CreateEntitlementRequest--;
}

core.int buildCounterGoogleCloudChannelV1Customer = 0;
api.GoogleCloudChannelV1Customer buildGoogleCloudChannelV1Customer() {
  var o = api.GoogleCloudChannelV1Customer();
  buildCounterGoogleCloudChannelV1Customer++;
  if (buildCounterGoogleCloudChannelV1Customer < 3) {
    o.alternateEmail = 'foo';
    o.channelPartnerId = 'foo';
    o.cloudIdentityId = 'foo';
    o.cloudIdentityInfo = buildGoogleCloudChannelV1CloudIdentityInfo();
    o.createTime = 'foo';
    o.domain = 'foo';
    o.languageCode = 'foo';
    o.name = 'foo';
    o.orgDisplayName = 'foo';
    o.orgPostalAddress = buildGoogleTypePostalAddress();
    o.primaryContactInfo = buildGoogleCloudChannelV1ContactInfo();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudChannelV1Customer--;
  return o;
}

void checkGoogleCloudChannelV1Customer(api.GoogleCloudChannelV1Customer o) {
  buildCounterGoogleCloudChannelV1Customer++;
  if (buildCounterGoogleCloudChannelV1Customer < 3) {
    unittest.expect(
      o.alternateEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.channelPartnerId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cloudIdentityId!,
      unittest.equals('foo'),
    );
    checkGoogleCloudChannelV1CloudIdentityInfo(
        o.cloudIdentityInfo! as api.GoogleCloudChannelV1CloudIdentityInfo);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.domain!,
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
    unittest.expect(
      o.orgDisplayName!,
      unittest.equals('foo'),
    );
    checkGoogleTypePostalAddress(
        o.orgPostalAddress! as api.GoogleTypePostalAddress);
    checkGoogleCloudChannelV1ContactInfo(
        o.primaryContactInfo! as api.GoogleCloudChannelV1ContactInfo);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1Customer--;
}

core.List<core.String> buildUnnamed2822() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2822(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2823() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2823(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2824() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2824(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudChannelV1CustomerConstraints = 0;
api.GoogleCloudChannelV1CustomerConstraints
    buildGoogleCloudChannelV1CustomerConstraints() {
  var o = api.GoogleCloudChannelV1CustomerConstraints();
  buildCounterGoogleCloudChannelV1CustomerConstraints++;
  if (buildCounterGoogleCloudChannelV1CustomerConstraints < 3) {
    o.allowedCustomerTypes = buildUnnamed2822();
    o.allowedRegions = buildUnnamed2823();
    o.promotionalOrderTypes = buildUnnamed2824();
  }
  buildCounterGoogleCloudChannelV1CustomerConstraints--;
  return o;
}

void checkGoogleCloudChannelV1CustomerConstraints(
    api.GoogleCloudChannelV1CustomerConstraints o) {
  buildCounterGoogleCloudChannelV1CustomerConstraints++;
  if (buildCounterGoogleCloudChannelV1CustomerConstraints < 3) {
    checkUnnamed2822(o.allowedCustomerTypes!);
    checkUnnamed2823(o.allowedRegions!);
    checkUnnamed2824(o.promotionalOrderTypes!);
  }
  buildCounterGoogleCloudChannelV1CustomerConstraints--;
}

core.int buildCounterGoogleCloudChannelV1CustomerEvent = 0;
api.GoogleCloudChannelV1CustomerEvent buildGoogleCloudChannelV1CustomerEvent() {
  var o = api.GoogleCloudChannelV1CustomerEvent();
  buildCounterGoogleCloudChannelV1CustomerEvent++;
  if (buildCounterGoogleCloudChannelV1CustomerEvent < 3) {
    o.customer = 'foo';
    o.eventType = 'foo';
  }
  buildCounterGoogleCloudChannelV1CustomerEvent--;
  return o;
}

void checkGoogleCloudChannelV1CustomerEvent(
    api.GoogleCloudChannelV1CustomerEvent o) {
  buildCounterGoogleCloudChannelV1CustomerEvent++;
  if (buildCounterGoogleCloudChannelV1CustomerEvent < 3) {
    unittest.expect(
      o.customer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1CustomerEvent--;
}

core.int buildCounterGoogleCloudChannelV1EduData = 0;
api.GoogleCloudChannelV1EduData buildGoogleCloudChannelV1EduData() {
  var o = api.GoogleCloudChannelV1EduData();
  buildCounterGoogleCloudChannelV1EduData++;
  if (buildCounterGoogleCloudChannelV1EduData < 3) {
    o.instituteSize = 'foo';
    o.instituteType = 'foo';
    o.website = 'foo';
  }
  buildCounterGoogleCloudChannelV1EduData--;
  return o;
}

void checkGoogleCloudChannelV1EduData(api.GoogleCloudChannelV1EduData o) {
  buildCounterGoogleCloudChannelV1EduData++;
  if (buildCounterGoogleCloudChannelV1EduData < 3) {
    unittest.expect(
      o.instituteSize!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instituteType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.website!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1EduData--;
}

core.List<api.GoogleCloudChannelV1Parameter> buildUnnamed2825() {
  var o = <api.GoogleCloudChannelV1Parameter>[];
  o.add(buildGoogleCloudChannelV1Parameter());
  o.add(buildGoogleCloudChannelV1Parameter());
  return o;
}

void checkUnnamed2825(core.List<api.GoogleCloudChannelV1Parameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1Parameter(o[0] as api.GoogleCloudChannelV1Parameter);
  checkGoogleCloudChannelV1Parameter(o[1] as api.GoogleCloudChannelV1Parameter);
}

core.List<core.String> buildUnnamed2826() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2826(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudChannelV1Entitlement = 0;
api.GoogleCloudChannelV1Entitlement buildGoogleCloudChannelV1Entitlement() {
  var o = api.GoogleCloudChannelV1Entitlement();
  buildCounterGoogleCloudChannelV1Entitlement++;
  if (buildCounterGoogleCloudChannelV1Entitlement < 3) {
    o.associationInfo = buildGoogleCloudChannelV1AssociationInfo();
    o.commitmentSettings = buildGoogleCloudChannelV1CommitmentSettings();
    o.createTime = 'foo';
    o.name = 'foo';
    o.offer = 'foo';
    o.parameters = buildUnnamed2825();
    o.provisionedService = buildGoogleCloudChannelV1ProvisionedService();
    o.provisioningState = 'foo';
    o.purchaseOrderId = 'foo';
    o.suspensionReasons = buildUnnamed2826();
    o.trialSettings = buildGoogleCloudChannelV1TrialSettings();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudChannelV1Entitlement--;
  return o;
}

void checkGoogleCloudChannelV1Entitlement(
    api.GoogleCloudChannelV1Entitlement o) {
  buildCounterGoogleCloudChannelV1Entitlement++;
  if (buildCounterGoogleCloudChannelV1Entitlement < 3) {
    checkGoogleCloudChannelV1AssociationInfo(
        o.associationInfo! as api.GoogleCloudChannelV1AssociationInfo);
    checkGoogleCloudChannelV1CommitmentSettings(
        o.commitmentSettings! as api.GoogleCloudChannelV1CommitmentSettings);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.offer!,
      unittest.equals('foo'),
    );
    checkUnnamed2825(o.parameters!);
    checkGoogleCloudChannelV1ProvisionedService(
        o.provisionedService! as api.GoogleCloudChannelV1ProvisionedService);
    unittest.expect(
      o.provisioningState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.purchaseOrderId!,
      unittest.equals('foo'),
    );
    checkUnnamed2826(o.suspensionReasons!);
    checkGoogleCloudChannelV1TrialSettings(
        o.trialSettings! as api.GoogleCloudChannelV1TrialSettings);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1Entitlement--;
}

core.int buildCounterGoogleCloudChannelV1EntitlementEvent = 0;
api.GoogleCloudChannelV1EntitlementEvent
    buildGoogleCloudChannelV1EntitlementEvent() {
  var o = api.GoogleCloudChannelV1EntitlementEvent();
  buildCounterGoogleCloudChannelV1EntitlementEvent++;
  if (buildCounterGoogleCloudChannelV1EntitlementEvent < 3) {
    o.entitlement = 'foo';
    o.eventType = 'foo';
  }
  buildCounterGoogleCloudChannelV1EntitlementEvent--;
  return o;
}

void checkGoogleCloudChannelV1EntitlementEvent(
    api.GoogleCloudChannelV1EntitlementEvent o) {
  buildCounterGoogleCloudChannelV1EntitlementEvent++;
  if (buildCounterGoogleCloudChannelV1EntitlementEvent < 3) {
    unittest.expect(
      o.entitlement!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1EntitlementEvent--;
}

core.List<api.GoogleCloudChannelV1ChannelPartnerLink> buildUnnamed2827() {
  var o = <api.GoogleCloudChannelV1ChannelPartnerLink>[];
  o.add(buildGoogleCloudChannelV1ChannelPartnerLink());
  o.add(buildGoogleCloudChannelV1ChannelPartnerLink());
  return o;
}

void checkUnnamed2827(core.List<api.GoogleCloudChannelV1ChannelPartnerLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1ChannelPartnerLink(
      o[0] as api.GoogleCloudChannelV1ChannelPartnerLink);
  checkGoogleCloudChannelV1ChannelPartnerLink(
      o[1] as api.GoogleCloudChannelV1ChannelPartnerLink);
}

core.int buildCounterGoogleCloudChannelV1ListChannelPartnerLinksResponse = 0;
api.GoogleCloudChannelV1ListChannelPartnerLinksResponse
    buildGoogleCloudChannelV1ListChannelPartnerLinksResponse() {
  var o = api.GoogleCloudChannelV1ListChannelPartnerLinksResponse();
  buildCounterGoogleCloudChannelV1ListChannelPartnerLinksResponse++;
  if (buildCounterGoogleCloudChannelV1ListChannelPartnerLinksResponse < 3) {
    o.channelPartnerLinks = buildUnnamed2827();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudChannelV1ListChannelPartnerLinksResponse--;
  return o;
}

void checkGoogleCloudChannelV1ListChannelPartnerLinksResponse(
    api.GoogleCloudChannelV1ListChannelPartnerLinksResponse o) {
  buildCounterGoogleCloudChannelV1ListChannelPartnerLinksResponse++;
  if (buildCounterGoogleCloudChannelV1ListChannelPartnerLinksResponse < 3) {
    checkUnnamed2827(o.channelPartnerLinks!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1ListChannelPartnerLinksResponse--;
}

core.List<api.GoogleCloudChannelV1Customer> buildUnnamed2828() {
  var o = <api.GoogleCloudChannelV1Customer>[];
  o.add(buildGoogleCloudChannelV1Customer());
  o.add(buildGoogleCloudChannelV1Customer());
  return o;
}

void checkUnnamed2828(core.List<api.GoogleCloudChannelV1Customer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1Customer(o[0] as api.GoogleCloudChannelV1Customer);
  checkGoogleCloudChannelV1Customer(o[1] as api.GoogleCloudChannelV1Customer);
}

core.int buildCounterGoogleCloudChannelV1ListCustomersResponse = 0;
api.GoogleCloudChannelV1ListCustomersResponse
    buildGoogleCloudChannelV1ListCustomersResponse() {
  var o = api.GoogleCloudChannelV1ListCustomersResponse();
  buildCounterGoogleCloudChannelV1ListCustomersResponse++;
  if (buildCounterGoogleCloudChannelV1ListCustomersResponse < 3) {
    o.customers = buildUnnamed2828();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudChannelV1ListCustomersResponse--;
  return o;
}

void checkGoogleCloudChannelV1ListCustomersResponse(
    api.GoogleCloudChannelV1ListCustomersResponse o) {
  buildCounterGoogleCloudChannelV1ListCustomersResponse++;
  if (buildCounterGoogleCloudChannelV1ListCustomersResponse < 3) {
    checkUnnamed2828(o.customers!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1ListCustomersResponse--;
}

core.List<api.GoogleCloudChannelV1Entitlement> buildUnnamed2829() {
  var o = <api.GoogleCloudChannelV1Entitlement>[];
  o.add(buildGoogleCloudChannelV1Entitlement());
  o.add(buildGoogleCloudChannelV1Entitlement());
  return o;
}

void checkUnnamed2829(core.List<api.GoogleCloudChannelV1Entitlement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1Entitlement(
      o[0] as api.GoogleCloudChannelV1Entitlement);
  checkGoogleCloudChannelV1Entitlement(
      o[1] as api.GoogleCloudChannelV1Entitlement);
}

core.int buildCounterGoogleCloudChannelV1ListEntitlementsResponse = 0;
api.GoogleCloudChannelV1ListEntitlementsResponse
    buildGoogleCloudChannelV1ListEntitlementsResponse() {
  var o = api.GoogleCloudChannelV1ListEntitlementsResponse();
  buildCounterGoogleCloudChannelV1ListEntitlementsResponse++;
  if (buildCounterGoogleCloudChannelV1ListEntitlementsResponse < 3) {
    o.entitlements = buildUnnamed2829();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudChannelV1ListEntitlementsResponse--;
  return o;
}

void checkGoogleCloudChannelV1ListEntitlementsResponse(
    api.GoogleCloudChannelV1ListEntitlementsResponse o) {
  buildCounterGoogleCloudChannelV1ListEntitlementsResponse++;
  if (buildCounterGoogleCloudChannelV1ListEntitlementsResponse < 3) {
    checkUnnamed2829(o.entitlements!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1ListEntitlementsResponse--;
}

core.List<api.GoogleCloudChannelV1Offer> buildUnnamed2830() {
  var o = <api.GoogleCloudChannelV1Offer>[];
  o.add(buildGoogleCloudChannelV1Offer());
  o.add(buildGoogleCloudChannelV1Offer());
  return o;
}

void checkUnnamed2830(core.List<api.GoogleCloudChannelV1Offer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1Offer(o[0] as api.GoogleCloudChannelV1Offer);
  checkGoogleCloudChannelV1Offer(o[1] as api.GoogleCloudChannelV1Offer);
}

core.int buildCounterGoogleCloudChannelV1ListOffersResponse = 0;
api.GoogleCloudChannelV1ListOffersResponse
    buildGoogleCloudChannelV1ListOffersResponse() {
  var o = api.GoogleCloudChannelV1ListOffersResponse();
  buildCounterGoogleCloudChannelV1ListOffersResponse++;
  if (buildCounterGoogleCloudChannelV1ListOffersResponse < 3) {
    o.nextPageToken = 'foo';
    o.offers = buildUnnamed2830();
  }
  buildCounterGoogleCloudChannelV1ListOffersResponse--;
  return o;
}

void checkGoogleCloudChannelV1ListOffersResponse(
    api.GoogleCloudChannelV1ListOffersResponse o) {
  buildCounterGoogleCloudChannelV1ListOffersResponse++;
  if (buildCounterGoogleCloudChannelV1ListOffersResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed2830(o.offers!);
  }
  buildCounterGoogleCloudChannelV1ListOffersResponse--;
}

core.List<api.GoogleCloudChannelV1Product> buildUnnamed2831() {
  var o = <api.GoogleCloudChannelV1Product>[];
  o.add(buildGoogleCloudChannelV1Product());
  o.add(buildGoogleCloudChannelV1Product());
  return o;
}

void checkUnnamed2831(core.List<api.GoogleCloudChannelV1Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1Product(o[0] as api.GoogleCloudChannelV1Product);
  checkGoogleCloudChannelV1Product(o[1] as api.GoogleCloudChannelV1Product);
}

core.int buildCounterGoogleCloudChannelV1ListProductsResponse = 0;
api.GoogleCloudChannelV1ListProductsResponse
    buildGoogleCloudChannelV1ListProductsResponse() {
  var o = api.GoogleCloudChannelV1ListProductsResponse();
  buildCounterGoogleCloudChannelV1ListProductsResponse++;
  if (buildCounterGoogleCloudChannelV1ListProductsResponse < 3) {
    o.nextPageToken = 'foo';
    o.products = buildUnnamed2831();
  }
  buildCounterGoogleCloudChannelV1ListProductsResponse--;
  return o;
}

void checkGoogleCloudChannelV1ListProductsResponse(
    api.GoogleCloudChannelV1ListProductsResponse o) {
  buildCounterGoogleCloudChannelV1ListProductsResponse++;
  if (buildCounterGoogleCloudChannelV1ListProductsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed2831(o.products!);
  }
  buildCounterGoogleCloudChannelV1ListProductsResponse--;
}

core.List<api.GoogleCloudChannelV1PurchasableOffer> buildUnnamed2832() {
  var o = <api.GoogleCloudChannelV1PurchasableOffer>[];
  o.add(buildGoogleCloudChannelV1PurchasableOffer());
  o.add(buildGoogleCloudChannelV1PurchasableOffer());
  return o;
}

void checkUnnamed2832(core.List<api.GoogleCloudChannelV1PurchasableOffer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1PurchasableOffer(
      o[0] as api.GoogleCloudChannelV1PurchasableOffer);
  checkGoogleCloudChannelV1PurchasableOffer(
      o[1] as api.GoogleCloudChannelV1PurchasableOffer);
}

core.int buildCounterGoogleCloudChannelV1ListPurchasableOffersResponse = 0;
api.GoogleCloudChannelV1ListPurchasableOffersResponse
    buildGoogleCloudChannelV1ListPurchasableOffersResponse() {
  var o = api.GoogleCloudChannelV1ListPurchasableOffersResponse();
  buildCounterGoogleCloudChannelV1ListPurchasableOffersResponse++;
  if (buildCounterGoogleCloudChannelV1ListPurchasableOffersResponse < 3) {
    o.nextPageToken = 'foo';
    o.purchasableOffers = buildUnnamed2832();
  }
  buildCounterGoogleCloudChannelV1ListPurchasableOffersResponse--;
  return o;
}

void checkGoogleCloudChannelV1ListPurchasableOffersResponse(
    api.GoogleCloudChannelV1ListPurchasableOffersResponse o) {
  buildCounterGoogleCloudChannelV1ListPurchasableOffersResponse++;
  if (buildCounterGoogleCloudChannelV1ListPurchasableOffersResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed2832(o.purchasableOffers!);
  }
  buildCounterGoogleCloudChannelV1ListPurchasableOffersResponse--;
}

core.List<api.GoogleCloudChannelV1PurchasableSku> buildUnnamed2833() {
  var o = <api.GoogleCloudChannelV1PurchasableSku>[];
  o.add(buildGoogleCloudChannelV1PurchasableSku());
  o.add(buildGoogleCloudChannelV1PurchasableSku());
  return o;
}

void checkUnnamed2833(core.List<api.GoogleCloudChannelV1PurchasableSku> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1PurchasableSku(
      o[0] as api.GoogleCloudChannelV1PurchasableSku);
  checkGoogleCloudChannelV1PurchasableSku(
      o[1] as api.GoogleCloudChannelV1PurchasableSku);
}

core.int buildCounterGoogleCloudChannelV1ListPurchasableSkusResponse = 0;
api.GoogleCloudChannelV1ListPurchasableSkusResponse
    buildGoogleCloudChannelV1ListPurchasableSkusResponse() {
  var o = api.GoogleCloudChannelV1ListPurchasableSkusResponse();
  buildCounterGoogleCloudChannelV1ListPurchasableSkusResponse++;
  if (buildCounterGoogleCloudChannelV1ListPurchasableSkusResponse < 3) {
    o.nextPageToken = 'foo';
    o.purchasableSkus = buildUnnamed2833();
  }
  buildCounterGoogleCloudChannelV1ListPurchasableSkusResponse--;
  return o;
}

void checkGoogleCloudChannelV1ListPurchasableSkusResponse(
    api.GoogleCloudChannelV1ListPurchasableSkusResponse o) {
  buildCounterGoogleCloudChannelV1ListPurchasableSkusResponse++;
  if (buildCounterGoogleCloudChannelV1ListPurchasableSkusResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed2833(o.purchasableSkus!);
  }
  buildCounterGoogleCloudChannelV1ListPurchasableSkusResponse--;
}

core.List<api.GoogleCloudChannelV1Sku> buildUnnamed2834() {
  var o = <api.GoogleCloudChannelV1Sku>[];
  o.add(buildGoogleCloudChannelV1Sku());
  o.add(buildGoogleCloudChannelV1Sku());
  return o;
}

void checkUnnamed2834(core.List<api.GoogleCloudChannelV1Sku> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1Sku(o[0] as api.GoogleCloudChannelV1Sku);
  checkGoogleCloudChannelV1Sku(o[1] as api.GoogleCloudChannelV1Sku);
}

core.int buildCounterGoogleCloudChannelV1ListSkusResponse = 0;
api.GoogleCloudChannelV1ListSkusResponse
    buildGoogleCloudChannelV1ListSkusResponse() {
  var o = api.GoogleCloudChannelV1ListSkusResponse();
  buildCounterGoogleCloudChannelV1ListSkusResponse++;
  if (buildCounterGoogleCloudChannelV1ListSkusResponse < 3) {
    o.nextPageToken = 'foo';
    o.skus = buildUnnamed2834();
  }
  buildCounterGoogleCloudChannelV1ListSkusResponse--;
  return o;
}

void checkGoogleCloudChannelV1ListSkusResponse(
    api.GoogleCloudChannelV1ListSkusResponse o) {
  buildCounterGoogleCloudChannelV1ListSkusResponse++;
  if (buildCounterGoogleCloudChannelV1ListSkusResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed2834(o.skus!);
  }
  buildCounterGoogleCloudChannelV1ListSkusResponse--;
}

core.List<core.String> buildUnnamed2835() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2835(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudChannelV1ListSubscribersResponse = 0;
api.GoogleCloudChannelV1ListSubscribersResponse
    buildGoogleCloudChannelV1ListSubscribersResponse() {
  var o = api.GoogleCloudChannelV1ListSubscribersResponse();
  buildCounterGoogleCloudChannelV1ListSubscribersResponse++;
  if (buildCounterGoogleCloudChannelV1ListSubscribersResponse < 3) {
    o.nextPageToken = 'foo';
    o.serviceAccounts = buildUnnamed2835();
    o.topic = 'foo';
  }
  buildCounterGoogleCloudChannelV1ListSubscribersResponse--;
  return o;
}

void checkGoogleCloudChannelV1ListSubscribersResponse(
    api.GoogleCloudChannelV1ListSubscribersResponse o) {
  buildCounterGoogleCloudChannelV1ListSubscribersResponse++;
  if (buildCounterGoogleCloudChannelV1ListSubscribersResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed2835(o.serviceAccounts!);
    unittest.expect(
      o.topic!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1ListSubscribersResponse--;
}

core.int buildCounterGoogleCloudChannelV1ListTransferableOffersRequest = 0;
api.GoogleCloudChannelV1ListTransferableOffersRequest
    buildGoogleCloudChannelV1ListTransferableOffersRequest() {
  var o = api.GoogleCloudChannelV1ListTransferableOffersRequest();
  buildCounterGoogleCloudChannelV1ListTransferableOffersRequest++;
  if (buildCounterGoogleCloudChannelV1ListTransferableOffersRequest < 3) {
    o.cloudIdentityId = 'foo';
    o.customerName = 'foo';
    o.languageCode = 'foo';
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.sku = 'foo';
  }
  buildCounterGoogleCloudChannelV1ListTransferableOffersRequest--;
  return o;
}

void checkGoogleCloudChannelV1ListTransferableOffersRequest(
    api.GoogleCloudChannelV1ListTransferableOffersRequest o) {
  buildCounterGoogleCloudChannelV1ListTransferableOffersRequest++;
  if (buildCounterGoogleCloudChannelV1ListTransferableOffersRequest < 3) {
    unittest.expect(
      o.cloudIdentityId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sku!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1ListTransferableOffersRequest--;
}

core.List<api.GoogleCloudChannelV1TransferableOffer> buildUnnamed2836() {
  var o = <api.GoogleCloudChannelV1TransferableOffer>[];
  o.add(buildGoogleCloudChannelV1TransferableOffer());
  o.add(buildGoogleCloudChannelV1TransferableOffer());
  return o;
}

void checkUnnamed2836(core.List<api.GoogleCloudChannelV1TransferableOffer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1TransferableOffer(
      o[0] as api.GoogleCloudChannelV1TransferableOffer);
  checkGoogleCloudChannelV1TransferableOffer(
      o[1] as api.GoogleCloudChannelV1TransferableOffer);
}

core.int buildCounterGoogleCloudChannelV1ListTransferableOffersResponse = 0;
api.GoogleCloudChannelV1ListTransferableOffersResponse
    buildGoogleCloudChannelV1ListTransferableOffersResponse() {
  var o = api.GoogleCloudChannelV1ListTransferableOffersResponse();
  buildCounterGoogleCloudChannelV1ListTransferableOffersResponse++;
  if (buildCounterGoogleCloudChannelV1ListTransferableOffersResponse < 3) {
    o.nextPageToken = 'foo';
    o.transferableOffers = buildUnnamed2836();
  }
  buildCounterGoogleCloudChannelV1ListTransferableOffersResponse--;
  return o;
}

void checkGoogleCloudChannelV1ListTransferableOffersResponse(
    api.GoogleCloudChannelV1ListTransferableOffersResponse o) {
  buildCounterGoogleCloudChannelV1ListTransferableOffersResponse++;
  if (buildCounterGoogleCloudChannelV1ListTransferableOffersResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed2836(o.transferableOffers!);
  }
  buildCounterGoogleCloudChannelV1ListTransferableOffersResponse--;
}

core.int buildCounterGoogleCloudChannelV1ListTransferableSkusRequest = 0;
api.GoogleCloudChannelV1ListTransferableSkusRequest
    buildGoogleCloudChannelV1ListTransferableSkusRequest() {
  var o = api.GoogleCloudChannelV1ListTransferableSkusRequest();
  buildCounterGoogleCloudChannelV1ListTransferableSkusRequest++;
  if (buildCounterGoogleCloudChannelV1ListTransferableSkusRequest < 3) {
    o.authToken = 'foo';
    o.cloudIdentityId = 'foo';
    o.customerName = 'foo';
    o.languageCode = 'foo';
    o.pageSize = 42;
    o.pageToken = 'foo';
  }
  buildCounterGoogleCloudChannelV1ListTransferableSkusRequest--;
  return o;
}

void checkGoogleCloudChannelV1ListTransferableSkusRequest(
    api.GoogleCloudChannelV1ListTransferableSkusRequest o) {
  buildCounterGoogleCloudChannelV1ListTransferableSkusRequest++;
  if (buildCounterGoogleCloudChannelV1ListTransferableSkusRequest < 3) {
    unittest.expect(
      o.authToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cloudIdentityId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1ListTransferableSkusRequest--;
}

core.List<api.GoogleCloudChannelV1TransferableSku> buildUnnamed2837() {
  var o = <api.GoogleCloudChannelV1TransferableSku>[];
  o.add(buildGoogleCloudChannelV1TransferableSku());
  o.add(buildGoogleCloudChannelV1TransferableSku());
  return o;
}

void checkUnnamed2837(core.List<api.GoogleCloudChannelV1TransferableSku> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1TransferableSku(
      o[0] as api.GoogleCloudChannelV1TransferableSku);
  checkGoogleCloudChannelV1TransferableSku(
      o[1] as api.GoogleCloudChannelV1TransferableSku);
}

core.int buildCounterGoogleCloudChannelV1ListTransferableSkusResponse = 0;
api.GoogleCloudChannelV1ListTransferableSkusResponse
    buildGoogleCloudChannelV1ListTransferableSkusResponse() {
  var o = api.GoogleCloudChannelV1ListTransferableSkusResponse();
  buildCounterGoogleCloudChannelV1ListTransferableSkusResponse++;
  if (buildCounterGoogleCloudChannelV1ListTransferableSkusResponse < 3) {
    o.nextPageToken = 'foo';
    o.transferableSkus = buildUnnamed2837();
  }
  buildCounterGoogleCloudChannelV1ListTransferableSkusResponse--;
  return o;
}

void checkGoogleCloudChannelV1ListTransferableSkusResponse(
    api.GoogleCloudChannelV1ListTransferableSkusResponse o) {
  buildCounterGoogleCloudChannelV1ListTransferableSkusResponse++;
  if (buildCounterGoogleCloudChannelV1ListTransferableSkusResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed2837(o.transferableSkus!);
  }
  buildCounterGoogleCloudChannelV1ListTransferableSkusResponse--;
}

core.int buildCounterGoogleCloudChannelV1MarketingInfo = 0;
api.GoogleCloudChannelV1MarketingInfo buildGoogleCloudChannelV1MarketingInfo() {
  var o = api.GoogleCloudChannelV1MarketingInfo();
  buildCounterGoogleCloudChannelV1MarketingInfo++;
  if (buildCounterGoogleCloudChannelV1MarketingInfo < 3) {
    o.defaultLogo = buildGoogleCloudChannelV1Media();
    o.description = 'foo';
    o.displayName = 'foo';
  }
  buildCounterGoogleCloudChannelV1MarketingInfo--;
  return o;
}

void checkGoogleCloudChannelV1MarketingInfo(
    api.GoogleCloudChannelV1MarketingInfo o) {
  buildCounterGoogleCloudChannelV1MarketingInfo++;
  if (buildCounterGoogleCloudChannelV1MarketingInfo < 3) {
    checkGoogleCloudChannelV1Media(
        o.defaultLogo! as api.GoogleCloudChannelV1Media);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1MarketingInfo--;
}

core.int buildCounterGoogleCloudChannelV1Media = 0;
api.GoogleCloudChannelV1Media buildGoogleCloudChannelV1Media() {
  var o = api.GoogleCloudChannelV1Media();
  buildCounterGoogleCloudChannelV1Media++;
  if (buildCounterGoogleCloudChannelV1Media < 3) {
    o.content = 'foo';
    o.title = 'foo';
    o.type = 'foo';
  }
  buildCounterGoogleCloudChannelV1Media--;
  return o;
}

void checkGoogleCloudChannelV1Media(api.GoogleCloudChannelV1Media o) {
  buildCounterGoogleCloudChannelV1Media++;
  if (buildCounterGoogleCloudChannelV1Media < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1Media--;
}

core.List<api.GoogleCloudChannelV1ParameterDefinition> buildUnnamed2838() {
  var o = <api.GoogleCloudChannelV1ParameterDefinition>[];
  o.add(buildGoogleCloudChannelV1ParameterDefinition());
  o.add(buildGoogleCloudChannelV1ParameterDefinition());
  return o;
}

void checkUnnamed2838(
    core.List<api.GoogleCloudChannelV1ParameterDefinition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1ParameterDefinition(
      o[0] as api.GoogleCloudChannelV1ParameterDefinition);
  checkGoogleCloudChannelV1ParameterDefinition(
      o[1] as api.GoogleCloudChannelV1ParameterDefinition);
}

core.List<api.GoogleCloudChannelV1PriceByResource> buildUnnamed2839() {
  var o = <api.GoogleCloudChannelV1PriceByResource>[];
  o.add(buildGoogleCloudChannelV1PriceByResource());
  o.add(buildGoogleCloudChannelV1PriceByResource());
  return o;
}

void checkUnnamed2839(core.List<api.GoogleCloudChannelV1PriceByResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1PriceByResource(
      o[0] as api.GoogleCloudChannelV1PriceByResource);
  checkGoogleCloudChannelV1PriceByResource(
      o[1] as api.GoogleCloudChannelV1PriceByResource);
}

core.int buildCounterGoogleCloudChannelV1Offer = 0;
api.GoogleCloudChannelV1Offer buildGoogleCloudChannelV1Offer() {
  var o = api.GoogleCloudChannelV1Offer();
  buildCounterGoogleCloudChannelV1Offer++;
  if (buildCounterGoogleCloudChannelV1Offer < 3) {
    o.constraints = buildGoogleCloudChannelV1Constraints();
    o.endTime = 'foo';
    o.marketingInfo = buildGoogleCloudChannelV1MarketingInfo();
    o.name = 'foo';
    o.parameterDefinitions = buildUnnamed2838();
    o.plan = buildGoogleCloudChannelV1Plan();
    o.priceByResources = buildUnnamed2839();
    o.sku = buildGoogleCloudChannelV1Sku();
    o.startTime = 'foo';
  }
  buildCounterGoogleCloudChannelV1Offer--;
  return o;
}

void checkGoogleCloudChannelV1Offer(api.GoogleCloudChannelV1Offer o) {
  buildCounterGoogleCloudChannelV1Offer++;
  if (buildCounterGoogleCloudChannelV1Offer < 3) {
    checkGoogleCloudChannelV1Constraints(
        o.constraints! as api.GoogleCloudChannelV1Constraints);
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudChannelV1MarketingInfo(
        o.marketingInfo! as api.GoogleCloudChannelV1MarketingInfo);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed2838(o.parameterDefinitions!);
    checkGoogleCloudChannelV1Plan(o.plan! as api.GoogleCloudChannelV1Plan);
    checkUnnamed2839(o.priceByResources!);
    checkGoogleCloudChannelV1Sku(o.sku! as api.GoogleCloudChannelV1Sku);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1Offer--;
}

core.int buildCounterGoogleCloudChannelV1OperationMetadata = 0;
api.GoogleCloudChannelV1OperationMetadata
    buildGoogleCloudChannelV1OperationMetadata() {
  var o = api.GoogleCloudChannelV1OperationMetadata();
  buildCounterGoogleCloudChannelV1OperationMetadata++;
  if (buildCounterGoogleCloudChannelV1OperationMetadata < 3) {
    o.operationType = 'foo';
  }
  buildCounterGoogleCloudChannelV1OperationMetadata--;
  return o;
}

void checkGoogleCloudChannelV1OperationMetadata(
    api.GoogleCloudChannelV1OperationMetadata o) {
  buildCounterGoogleCloudChannelV1OperationMetadata++;
  if (buildCounterGoogleCloudChannelV1OperationMetadata < 3) {
    unittest.expect(
      o.operationType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1OperationMetadata--;
}

core.int buildCounterGoogleCloudChannelV1Parameter = 0;
api.GoogleCloudChannelV1Parameter buildGoogleCloudChannelV1Parameter() {
  var o = api.GoogleCloudChannelV1Parameter();
  buildCounterGoogleCloudChannelV1Parameter++;
  if (buildCounterGoogleCloudChannelV1Parameter < 3) {
    o.editable = true;
    o.name = 'foo';
    o.value = buildGoogleCloudChannelV1Value();
  }
  buildCounterGoogleCloudChannelV1Parameter--;
  return o;
}

void checkGoogleCloudChannelV1Parameter(api.GoogleCloudChannelV1Parameter o) {
  buildCounterGoogleCloudChannelV1Parameter++;
  if (buildCounterGoogleCloudChannelV1Parameter < 3) {
    unittest.expect(o.editable!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudChannelV1Value(o.value! as api.GoogleCloudChannelV1Value);
  }
  buildCounterGoogleCloudChannelV1Parameter--;
}

core.List<api.GoogleCloudChannelV1Value> buildUnnamed2840() {
  var o = <api.GoogleCloudChannelV1Value>[];
  o.add(buildGoogleCloudChannelV1Value());
  o.add(buildGoogleCloudChannelV1Value());
  return o;
}

void checkUnnamed2840(core.List<api.GoogleCloudChannelV1Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1Value(o[0] as api.GoogleCloudChannelV1Value);
  checkGoogleCloudChannelV1Value(o[1] as api.GoogleCloudChannelV1Value);
}

core.int buildCounterGoogleCloudChannelV1ParameterDefinition = 0;
api.GoogleCloudChannelV1ParameterDefinition
    buildGoogleCloudChannelV1ParameterDefinition() {
  var o = api.GoogleCloudChannelV1ParameterDefinition();
  buildCounterGoogleCloudChannelV1ParameterDefinition++;
  if (buildCounterGoogleCloudChannelV1ParameterDefinition < 3) {
    o.allowedValues = buildUnnamed2840();
    o.maxValue = buildGoogleCloudChannelV1Value();
    o.minValue = buildGoogleCloudChannelV1Value();
    o.name = 'foo';
    o.optional = true;
    o.parameterType = 'foo';
  }
  buildCounterGoogleCloudChannelV1ParameterDefinition--;
  return o;
}

void checkGoogleCloudChannelV1ParameterDefinition(
    api.GoogleCloudChannelV1ParameterDefinition o) {
  buildCounterGoogleCloudChannelV1ParameterDefinition++;
  if (buildCounterGoogleCloudChannelV1ParameterDefinition < 3) {
    checkUnnamed2840(o.allowedValues!);
    checkGoogleCloudChannelV1Value(
        o.maxValue! as api.GoogleCloudChannelV1Value);
    checkGoogleCloudChannelV1Value(
        o.minValue! as api.GoogleCloudChannelV1Value);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.optional!, unittest.isTrue);
    unittest.expect(
      o.parameterType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1ParameterDefinition--;
}

core.int buildCounterGoogleCloudChannelV1Period = 0;
api.GoogleCloudChannelV1Period buildGoogleCloudChannelV1Period() {
  var o = api.GoogleCloudChannelV1Period();
  buildCounterGoogleCloudChannelV1Period++;
  if (buildCounterGoogleCloudChannelV1Period < 3) {
    o.duration = 42;
    o.periodType = 'foo';
  }
  buildCounterGoogleCloudChannelV1Period--;
  return o;
}

void checkGoogleCloudChannelV1Period(api.GoogleCloudChannelV1Period o) {
  buildCounterGoogleCloudChannelV1Period++;
  if (buildCounterGoogleCloudChannelV1Period < 3) {
    unittest.expect(
      o.duration!,
      unittest.equals(42),
    );
    unittest.expect(
      o.periodType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1Period--;
}

core.int buildCounterGoogleCloudChannelV1Plan = 0;
api.GoogleCloudChannelV1Plan buildGoogleCloudChannelV1Plan() {
  var o = api.GoogleCloudChannelV1Plan();
  buildCounterGoogleCloudChannelV1Plan++;
  if (buildCounterGoogleCloudChannelV1Plan < 3) {
    o.billingAccount = 'foo';
    o.paymentCycle = buildGoogleCloudChannelV1Period();
    o.paymentPlan = 'foo';
    o.paymentType = 'foo';
    o.trialPeriod = buildGoogleCloudChannelV1Period();
  }
  buildCounterGoogleCloudChannelV1Plan--;
  return o;
}

void checkGoogleCloudChannelV1Plan(api.GoogleCloudChannelV1Plan o) {
  buildCounterGoogleCloudChannelV1Plan++;
  if (buildCounterGoogleCloudChannelV1Plan < 3) {
    unittest.expect(
      o.billingAccount!,
      unittest.equals('foo'),
    );
    checkGoogleCloudChannelV1Period(
        o.paymentCycle! as api.GoogleCloudChannelV1Period);
    unittest.expect(
      o.paymentPlan!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.paymentType!,
      unittest.equals('foo'),
    );
    checkGoogleCloudChannelV1Period(
        o.trialPeriod! as api.GoogleCloudChannelV1Period);
  }
  buildCounterGoogleCloudChannelV1Plan--;
}

core.int buildCounterGoogleCloudChannelV1Price = 0;
api.GoogleCloudChannelV1Price buildGoogleCloudChannelV1Price() {
  var o = api.GoogleCloudChannelV1Price();
  buildCounterGoogleCloudChannelV1Price++;
  if (buildCounterGoogleCloudChannelV1Price < 3) {
    o.basePrice = buildGoogleTypeMoney();
    o.discount = 42.0;
    o.effectivePrice = buildGoogleTypeMoney();
    o.externalPriceUri = 'foo';
  }
  buildCounterGoogleCloudChannelV1Price--;
  return o;
}

void checkGoogleCloudChannelV1Price(api.GoogleCloudChannelV1Price o) {
  buildCounterGoogleCloudChannelV1Price++;
  if (buildCounterGoogleCloudChannelV1Price < 3) {
    checkGoogleTypeMoney(o.basePrice! as api.GoogleTypeMoney);
    unittest.expect(
      o.discount!,
      unittest.equals(42.0),
    );
    checkGoogleTypeMoney(o.effectivePrice! as api.GoogleTypeMoney);
    unittest.expect(
      o.externalPriceUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1Price--;
}

core.List<api.GoogleCloudChannelV1PricePhase> buildUnnamed2841() {
  var o = <api.GoogleCloudChannelV1PricePhase>[];
  o.add(buildGoogleCloudChannelV1PricePhase());
  o.add(buildGoogleCloudChannelV1PricePhase());
  return o;
}

void checkUnnamed2841(core.List<api.GoogleCloudChannelV1PricePhase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1PricePhase(
      o[0] as api.GoogleCloudChannelV1PricePhase);
  checkGoogleCloudChannelV1PricePhase(
      o[1] as api.GoogleCloudChannelV1PricePhase);
}

core.int buildCounterGoogleCloudChannelV1PriceByResource = 0;
api.GoogleCloudChannelV1PriceByResource
    buildGoogleCloudChannelV1PriceByResource() {
  var o = api.GoogleCloudChannelV1PriceByResource();
  buildCounterGoogleCloudChannelV1PriceByResource++;
  if (buildCounterGoogleCloudChannelV1PriceByResource < 3) {
    o.price = buildGoogleCloudChannelV1Price();
    o.pricePhases = buildUnnamed2841();
    o.resourceType = 'foo';
  }
  buildCounterGoogleCloudChannelV1PriceByResource--;
  return o;
}

void checkGoogleCloudChannelV1PriceByResource(
    api.GoogleCloudChannelV1PriceByResource o) {
  buildCounterGoogleCloudChannelV1PriceByResource++;
  if (buildCounterGoogleCloudChannelV1PriceByResource < 3) {
    checkGoogleCloudChannelV1Price(o.price! as api.GoogleCloudChannelV1Price);
    checkUnnamed2841(o.pricePhases!);
    unittest.expect(
      o.resourceType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1PriceByResource--;
}

core.List<api.GoogleCloudChannelV1PriceTier> buildUnnamed2842() {
  var o = <api.GoogleCloudChannelV1PriceTier>[];
  o.add(buildGoogleCloudChannelV1PriceTier());
  o.add(buildGoogleCloudChannelV1PriceTier());
  return o;
}

void checkUnnamed2842(core.List<api.GoogleCloudChannelV1PriceTier> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1PriceTier(o[0] as api.GoogleCloudChannelV1PriceTier);
  checkGoogleCloudChannelV1PriceTier(o[1] as api.GoogleCloudChannelV1PriceTier);
}

core.int buildCounterGoogleCloudChannelV1PricePhase = 0;
api.GoogleCloudChannelV1PricePhase buildGoogleCloudChannelV1PricePhase() {
  var o = api.GoogleCloudChannelV1PricePhase();
  buildCounterGoogleCloudChannelV1PricePhase++;
  if (buildCounterGoogleCloudChannelV1PricePhase < 3) {
    o.firstPeriod = 42;
    o.lastPeriod = 42;
    o.periodType = 'foo';
    o.price = buildGoogleCloudChannelV1Price();
    o.priceTiers = buildUnnamed2842();
  }
  buildCounterGoogleCloudChannelV1PricePhase--;
  return o;
}

void checkGoogleCloudChannelV1PricePhase(api.GoogleCloudChannelV1PricePhase o) {
  buildCounterGoogleCloudChannelV1PricePhase++;
  if (buildCounterGoogleCloudChannelV1PricePhase < 3) {
    unittest.expect(
      o.firstPeriod!,
      unittest.equals(42),
    );
    unittest.expect(
      o.lastPeriod!,
      unittest.equals(42),
    );
    unittest.expect(
      o.periodType!,
      unittest.equals('foo'),
    );
    checkGoogleCloudChannelV1Price(o.price! as api.GoogleCloudChannelV1Price);
    checkUnnamed2842(o.priceTiers!);
  }
  buildCounterGoogleCloudChannelV1PricePhase--;
}

core.int buildCounterGoogleCloudChannelV1PriceTier = 0;
api.GoogleCloudChannelV1PriceTier buildGoogleCloudChannelV1PriceTier() {
  var o = api.GoogleCloudChannelV1PriceTier();
  buildCounterGoogleCloudChannelV1PriceTier++;
  if (buildCounterGoogleCloudChannelV1PriceTier < 3) {
    o.firstResource = 42;
    o.lastResource = 42;
    o.price = buildGoogleCloudChannelV1Price();
  }
  buildCounterGoogleCloudChannelV1PriceTier--;
  return o;
}

void checkGoogleCloudChannelV1PriceTier(api.GoogleCloudChannelV1PriceTier o) {
  buildCounterGoogleCloudChannelV1PriceTier++;
  if (buildCounterGoogleCloudChannelV1PriceTier < 3) {
    unittest.expect(
      o.firstResource!,
      unittest.equals(42),
    );
    unittest.expect(
      o.lastResource!,
      unittest.equals(42),
    );
    checkGoogleCloudChannelV1Price(o.price! as api.GoogleCloudChannelV1Price);
  }
  buildCounterGoogleCloudChannelV1PriceTier--;
}

core.int buildCounterGoogleCloudChannelV1Product = 0;
api.GoogleCloudChannelV1Product buildGoogleCloudChannelV1Product() {
  var o = api.GoogleCloudChannelV1Product();
  buildCounterGoogleCloudChannelV1Product++;
  if (buildCounterGoogleCloudChannelV1Product < 3) {
    o.marketingInfo = buildGoogleCloudChannelV1MarketingInfo();
    o.name = 'foo';
  }
  buildCounterGoogleCloudChannelV1Product--;
  return o;
}

void checkGoogleCloudChannelV1Product(api.GoogleCloudChannelV1Product o) {
  buildCounterGoogleCloudChannelV1Product++;
  if (buildCounterGoogleCloudChannelV1Product < 3) {
    checkGoogleCloudChannelV1MarketingInfo(
        o.marketingInfo! as api.GoogleCloudChannelV1MarketingInfo);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1Product--;
}

core.int buildCounterGoogleCloudChannelV1ProvisionCloudIdentityRequest = 0;
api.GoogleCloudChannelV1ProvisionCloudIdentityRequest
    buildGoogleCloudChannelV1ProvisionCloudIdentityRequest() {
  var o = api.GoogleCloudChannelV1ProvisionCloudIdentityRequest();
  buildCounterGoogleCloudChannelV1ProvisionCloudIdentityRequest++;
  if (buildCounterGoogleCloudChannelV1ProvisionCloudIdentityRequest < 3) {
    o.cloudIdentityInfo = buildGoogleCloudChannelV1CloudIdentityInfo();
    o.user = buildGoogleCloudChannelV1AdminUser();
    o.validateOnly = true;
  }
  buildCounterGoogleCloudChannelV1ProvisionCloudIdentityRequest--;
  return o;
}

void checkGoogleCloudChannelV1ProvisionCloudIdentityRequest(
    api.GoogleCloudChannelV1ProvisionCloudIdentityRequest o) {
  buildCounterGoogleCloudChannelV1ProvisionCloudIdentityRequest++;
  if (buildCounterGoogleCloudChannelV1ProvisionCloudIdentityRequest < 3) {
    checkGoogleCloudChannelV1CloudIdentityInfo(
        o.cloudIdentityInfo! as api.GoogleCloudChannelV1CloudIdentityInfo);
    checkGoogleCloudChannelV1AdminUser(
        o.user! as api.GoogleCloudChannelV1AdminUser);
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterGoogleCloudChannelV1ProvisionCloudIdentityRequest--;
}

core.int buildCounterGoogleCloudChannelV1ProvisionedService = 0;
api.GoogleCloudChannelV1ProvisionedService
    buildGoogleCloudChannelV1ProvisionedService() {
  var o = api.GoogleCloudChannelV1ProvisionedService();
  buildCounterGoogleCloudChannelV1ProvisionedService++;
  if (buildCounterGoogleCloudChannelV1ProvisionedService < 3) {
    o.productId = 'foo';
    o.provisioningId = 'foo';
    o.skuId = 'foo';
  }
  buildCounterGoogleCloudChannelV1ProvisionedService--;
  return o;
}

void checkGoogleCloudChannelV1ProvisionedService(
    api.GoogleCloudChannelV1ProvisionedService o) {
  buildCounterGoogleCloudChannelV1ProvisionedService++;
  if (buildCounterGoogleCloudChannelV1ProvisionedService < 3) {
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.provisioningId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.skuId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1ProvisionedService--;
}

core.int buildCounterGoogleCloudChannelV1PurchasableOffer = 0;
api.GoogleCloudChannelV1PurchasableOffer
    buildGoogleCloudChannelV1PurchasableOffer() {
  var o = api.GoogleCloudChannelV1PurchasableOffer();
  buildCounterGoogleCloudChannelV1PurchasableOffer++;
  if (buildCounterGoogleCloudChannelV1PurchasableOffer < 3) {
    o.offer = buildGoogleCloudChannelV1Offer();
  }
  buildCounterGoogleCloudChannelV1PurchasableOffer--;
  return o;
}

void checkGoogleCloudChannelV1PurchasableOffer(
    api.GoogleCloudChannelV1PurchasableOffer o) {
  buildCounterGoogleCloudChannelV1PurchasableOffer++;
  if (buildCounterGoogleCloudChannelV1PurchasableOffer < 3) {
    checkGoogleCloudChannelV1Offer(o.offer! as api.GoogleCloudChannelV1Offer);
  }
  buildCounterGoogleCloudChannelV1PurchasableOffer--;
}

core.int buildCounterGoogleCloudChannelV1PurchasableSku = 0;
api.GoogleCloudChannelV1PurchasableSku
    buildGoogleCloudChannelV1PurchasableSku() {
  var o = api.GoogleCloudChannelV1PurchasableSku();
  buildCounterGoogleCloudChannelV1PurchasableSku++;
  if (buildCounterGoogleCloudChannelV1PurchasableSku < 3) {
    o.sku = buildGoogleCloudChannelV1Sku();
  }
  buildCounterGoogleCloudChannelV1PurchasableSku--;
  return o;
}

void checkGoogleCloudChannelV1PurchasableSku(
    api.GoogleCloudChannelV1PurchasableSku o) {
  buildCounterGoogleCloudChannelV1PurchasableSku++;
  if (buildCounterGoogleCloudChannelV1PurchasableSku < 3) {
    checkGoogleCloudChannelV1Sku(o.sku! as api.GoogleCloudChannelV1Sku);
  }
  buildCounterGoogleCloudChannelV1PurchasableSku--;
}

core.int buildCounterGoogleCloudChannelV1RegisterSubscriberRequest = 0;
api.GoogleCloudChannelV1RegisterSubscriberRequest
    buildGoogleCloudChannelV1RegisterSubscriberRequest() {
  var o = api.GoogleCloudChannelV1RegisterSubscriberRequest();
  buildCounterGoogleCloudChannelV1RegisterSubscriberRequest++;
  if (buildCounterGoogleCloudChannelV1RegisterSubscriberRequest < 3) {
    o.serviceAccount = 'foo';
  }
  buildCounterGoogleCloudChannelV1RegisterSubscriberRequest--;
  return o;
}

void checkGoogleCloudChannelV1RegisterSubscriberRequest(
    api.GoogleCloudChannelV1RegisterSubscriberRequest o) {
  buildCounterGoogleCloudChannelV1RegisterSubscriberRequest++;
  if (buildCounterGoogleCloudChannelV1RegisterSubscriberRequest < 3) {
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1RegisterSubscriberRequest--;
}

core.int buildCounterGoogleCloudChannelV1RegisterSubscriberResponse = 0;
api.GoogleCloudChannelV1RegisterSubscriberResponse
    buildGoogleCloudChannelV1RegisterSubscriberResponse() {
  var o = api.GoogleCloudChannelV1RegisterSubscriberResponse();
  buildCounterGoogleCloudChannelV1RegisterSubscriberResponse++;
  if (buildCounterGoogleCloudChannelV1RegisterSubscriberResponse < 3) {
    o.topic = 'foo';
  }
  buildCounterGoogleCloudChannelV1RegisterSubscriberResponse--;
  return o;
}

void checkGoogleCloudChannelV1RegisterSubscriberResponse(
    api.GoogleCloudChannelV1RegisterSubscriberResponse o) {
  buildCounterGoogleCloudChannelV1RegisterSubscriberResponse++;
  if (buildCounterGoogleCloudChannelV1RegisterSubscriberResponse < 3) {
    unittest.expect(
      o.topic!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1RegisterSubscriberResponse--;
}

core.int buildCounterGoogleCloudChannelV1RenewalSettings = 0;
api.GoogleCloudChannelV1RenewalSettings
    buildGoogleCloudChannelV1RenewalSettings() {
  var o = api.GoogleCloudChannelV1RenewalSettings();
  buildCounterGoogleCloudChannelV1RenewalSettings++;
  if (buildCounterGoogleCloudChannelV1RenewalSettings < 3) {
    o.enableRenewal = true;
    o.paymentCycle = buildGoogleCloudChannelV1Period();
    o.paymentPlan = 'foo';
    o.resizeUnitCount = true;
  }
  buildCounterGoogleCloudChannelV1RenewalSettings--;
  return o;
}

void checkGoogleCloudChannelV1RenewalSettings(
    api.GoogleCloudChannelV1RenewalSettings o) {
  buildCounterGoogleCloudChannelV1RenewalSettings++;
  if (buildCounterGoogleCloudChannelV1RenewalSettings < 3) {
    unittest.expect(o.enableRenewal!, unittest.isTrue);
    checkGoogleCloudChannelV1Period(
        o.paymentCycle! as api.GoogleCloudChannelV1Period);
    unittest.expect(
      o.paymentPlan!,
      unittest.equals('foo'),
    );
    unittest.expect(o.resizeUnitCount!, unittest.isTrue);
  }
  buildCounterGoogleCloudChannelV1RenewalSettings--;
}

core.int buildCounterGoogleCloudChannelV1Sku = 0;
api.GoogleCloudChannelV1Sku buildGoogleCloudChannelV1Sku() {
  var o = api.GoogleCloudChannelV1Sku();
  buildCounterGoogleCloudChannelV1Sku++;
  if (buildCounterGoogleCloudChannelV1Sku < 3) {
    o.marketingInfo = buildGoogleCloudChannelV1MarketingInfo();
    o.name = 'foo';
    o.product = buildGoogleCloudChannelV1Product();
  }
  buildCounterGoogleCloudChannelV1Sku--;
  return o;
}

void checkGoogleCloudChannelV1Sku(api.GoogleCloudChannelV1Sku o) {
  buildCounterGoogleCloudChannelV1Sku++;
  if (buildCounterGoogleCloudChannelV1Sku < 3) {
    checkGoogleCloudChannelV1MarketingInfo(
        o.marketingInfo! as api.GoogleCloudChannelV1MarketingInfo);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudChannelV1Product(
        o.product! as api.GoogleCloudChannelV1Product);
  }
  buildCounterGoogleCloudChannelV1Sku--;
}

core.int buildCounterGoogleCloudChannelV1StartPaidServiceRequest = 0;
api.GoogleCloudChannelV1StartPaidServiceRequest
    buildGoogleCloudChannelV1StartPaidServiceRequest() {
  var o = api.GoogleCloudChannelV1StartPaidServiceRequest();
  buildCounterGoogleCloudChannelV1StartPaidServiceRequest++;
  if (buildCounterGoogleCloudChannelV1StartPaidServiceRequest < 3) {
    o.requestId = 'foo';
  }
  buildCounterGoogleCloudChannelV1StartPaidServiceRequest--;
  return o;
}

void checkGoogleCloudChannelV1StartPaidServiceRequest(
    api.GoogleCloudChannelV1StartPaidServiceRequest o) {
  buildCounterGoogleCloudChannelV1StartPaidServiceRequest++;
  if (buildCounterGoogleCloudChannelV1StartPaidServiceRequest < 3) {
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1StartPaidServiceRequest--;
}

core.int buildCounterGoogleCloudChannelV1SubscriberEvent = 0;
api.GoogleCloudChannelV1SubscriberEvent
    buildGoogleCloudChannelV1SubscriberEvent() {
  var o = api.GoogleCloudChannelV1SubscriberEvent();
  buildCounterGoogleCloudChannelV1SubscriberEvent++;
  if (buildCounterGoogleCloudChannelV1SubscriberEvent < 3) {
    o.customerEvent = buildGoogleCloudChannelV1CustomerEvent();
    o.entitlementEvent = buildGoogleCloudChannelV1EntitlementEvent();
  }
  buildCounterGoogleCloudChannelV1SubscriberEvent--;
  return o;
}

void checkGoogleCloudChannelV1SubscriberEvent(
    api.GoogleCloudChannelV1SubscriberEvent o) {
  buildCounterGoogleCloudChannelV1SubscriberEvent++;
  if (buildCounterGoogleCloudChannelV1SubscriberEvent < 3) {
    checkGoogleCloudChannelV1CustomerEvent(
        o.customerEvent! as api.GoogleCloudChannelV1CustomerEvent);
    checkGoogleCloudChannelV1EntitlementEvent(
        o.entitlementEvent! as api.GoogleCloudChannelV1EntitlementEvent);
  }
  buildCounterGoogleCloudChannelV1SubscriberEvent--;
}

core.int buildCounterGoogleCloudChannelV1SuspendEntitlementRequest = 0;
api.GoogleCloudChannelV1SuspendEntitlementRequest
    buildGoogleCloudChannelV1SuspendEntitlementRequest() {
  var o = api.GoogleCloudChannelV1SuspendEntitlementRequest();
  buildCounterGoogleCloudChannelV1SuspendEntitlementRequest++;
  if (buildCounterGoogleCloudChannelV1SuspendEntitlementRequest < 3) {
    o.requestId = 'foo';
  }
  buildCounterGoogleCloudChannelV1SuspendEntitlementRequest--;
  return o;
}

void checkGoogleCloudChannelV1SuspendEntitlementRequest(
    api.GoogleCloudChannelV1SuspendEntitlementRequest o) {
  buildCounterGoogleCloudChannelV1SuspendEntitlementRequest++;
  if (buildCounterGoogleCloudChannelV1SuspendEntitlementRequest < 3) {
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1SuspendEntitlementRequest--;
}

core.int buildCounterGoogleCloudChannelV1TransferEligibility = 0;
api.GoogleCloudChannelV1TransferEligibility
    buildGoogleCloudChannelV1TransferEligibility() {
  var o = api.GoogleCloudChannelV1TransferEligibility();
  buildCounterGoogleCloudChannelV1TransferEligibility++;
  if (buildCounterGoogleCloudChannelV1TransferEligibility < 3) {
    o.description = 'foo';
    o.ineligibilityReason = 'foo';
    o.isEligible = true;
  }
  buildCounterGoogleCloudChannelV1TransferEligibility--;
  return o;
}

void checkGoogleCloudChannelV1TransferEligibility(
    api.GoogleCloudChannelV1TransferEligibility o) {
  buildCounterGoogleCloudChannelV1TransferEligibility++;
  if (buildCounterGoogleCloudChannelV1TransferEligibility < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ineligibilityReason!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isEligible!, unittest.isTrue);
  }
  buildCounterGoogleCloudChannelV1TransferEligibility--;
}

core.List<api.GoogleCloudChannelV1Entitlement> buildUnnamed2843() {
  var o = <api.GoogleCloudChannelV1Entitlement>[];
  o.add(buildGoogleCloudChannelV1Entitlement());
  o.add(buildGoogleCloudChannelV1Entitlement());
  return o;
}

void checkUnnamed2843(core.List<api.GoogleCloudChannelV1Entitlement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1Entitlement(
      o[0] as api.GoogleCloudChannelV1Entitlement);
  checkGoogleCloudChannelV1Entitlement(
      o[1] as api.GoogleCloudChannelV1Entitlement);
}

core.int buildCounterGoogleCloudChannelV1TransferEntitlementsRequest = 0;
api.GoogleCloudChannelV1TransferEntitlementsRequest
    buildGoogleCloudChannelV1TransferEntitlementsRequest() {
  var o = api.GoogleCloudChannelV1TransferEntitlementsRequest();
  buildCounterGoogleCloudChannelV1TransferEntitlementsRequest++;
  if (buildCounterGoogleCloudChannelV1TransferEntitlementsRequest < 3) {
    o.authToken = 'foo';
    o.entitlements = buildUnnamed2843();
    o.requestId = 'foo';
  }
  buildCounterGoogleCloudChannelV1TransferEntitlementsRequest--;
  return o;
}

void checkGoogleCloudChannelV1TransferEntitlementsRequest(
    api.GoogleCloudChannelV1TransferEntitlementsRequest o) {
  buildCounterGoogleCloudChannelV1TransferEntitlementsRequest++;
  if (buildCounterGoogleCloudChannelV1TransferEntitlementsRequest < 3) {
    unittest.expect(
      o.authToken!,
      unittest.equals('foo'),
    );
    checkUnnamed2843(o.entitlements!);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1TransferEntitlementsRequest--;
}

core.List<api.GoogleCloudChannelV1Entitlement> buildUnnamed2844() {
  var o = <api.GoogleCloudChannelV1Entitlement>[];
  o.add(buildGoogleCloudChannelV1Entitlement());
  o.add(buildGoogleCloudChannelV1Entitlement());
  return o;
}

void checkUnnamed2844(core.List<api.GoogleCloudChannelV1Entitlement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1Entitlement(
      o[0] as api.GoogleCloudChannelV1Entitlement);
  checkGoogleCloudChannelV1Entitlement(
      o[1] as api.GoogleCloudChannelV1Entitlement);
}

core.int buildCounterGoogleCloudChannelV1TransferEntitlementsResponse = 0;
api.GoogleCloudChannelV1TransferEntitlementsResponse
    buildGoogleCloudChannelV1TransferEntitlementsResponse() {
  var o = api.GoogleCloudChannelV1TransferEntitlementsResponse();
  buildCounterGoogleCloudChannelV1TransferEntitlementsResponse++;
  if (buildCounterGoogleCloudChannelV1TransferEntitlementsResponse < 3) {
    o.entitlements = buildUnnamed2844();
  }
  buildCounterGoogleCloudChannelV1TransferEntitlementsResponse--;
  return o;
}

void checkGoogleCloudChannelV1TransferEntitlementsResponse(
    api.GoogleCloudChannelV1TransferEntitlementsResponse o) {
  buildCounterGoogleCloudChannelV1TransferEntitlementsResponse++;
  if (buildCounterGoogleCloudChannelV1TransferEntitlementsResponse < 3) {
    checkUnnamed2844(o.entitlements!);
  }
  buildCounterGoogleCloudChannelV1TransferEntitlementsResponse--;
}

core.List<api.GoogleCloudChannelV1Entitlement> buildUnnamed2845() {
  var o = <api.GoogleCloudChannelV1Entitlement>[];
  o.add(buildGoogleCloudChannelV1Entitlement());
  o.add(buildGoogleCloudChannelV1Entitlement());
  return o;
}

void checkUnnamed2845(core.List<api.GoogleCloudChannelV1Entitlement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1Entitlement(
      o[0] as api.GoogleCloudChannelV1Entitlement);
  checkGoogleCloudChannelV1Entitlement(
      o[1] as api.GoogleCloudChannelV1Entitlement);
}

core.int buildCounterGoogleCloudChannelV1TransferEntitlementsToGoogleRequest =
    0;
api.GoogleCloudChannelV1TransferEntitlementsToGoogleRequest
    buildGoogleCloudChannelV1TransferEntitlementsToGoogleRequest() {
  var o = api.GoogleCloudChannelV1TransferEntitlementsToGoogleRequest();
  buildCounterGoogleCloudChannelV1TransferEntitlementsToGoogleRequest++;
  if (buildCounterGoogleCloudChannelV1TransferEntitlementsToGoogleRequest < 3) {
    o.entitlements = buildUnnamed2845();
    o.requestId = 'foo';
  }
  buildCounterGoogleCloudChannelV1TransferEntitlementsToGoogleRequest--;
  return o;
}

void checkGoogleCloudChannelV1TransferEntitlementsToGoogleRequest(
    api.GoogleCloudChannelV1TransferEntitlementsToGoogleRequest o) {
  buildCounterGoogleCloudChannelV1TransferEntitlementsToGoogleRequest++;
  if (buildCounterGoogleCloudChannelV1TransferEntitlementsToGoogleRequest < 3) {
    checkUnnamed2845(o.entitlements!);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1TransferEntitlementsToGoogleRequest--;
}

core.int buildCounterGoogleCloudChannelV1TransferableOffer = 0;
api.GoogleCloudChannelV1TransferableOffer
    buildGoogleCloudChannelV1TransferableOffer() {
  var o = api.GoogleCloudChannelV1TransferableOffer();
  buildCounterGoogleCloudChannelV1TransferableOffer++;
  if (buildCounterGoogleCloudChannelV1TransferableOffer < 3) {
    o.offer = buildGoogleCloudChannelV1Offer();
  }
  buildCounterGoogleCloudChannelV1TransferableOffer--;
  return o;
}

void checkGoogleCloudChannelV1TransferableOffer(
    api.GoogleCloudChannelV1TransferableOffer o) {
  buildCounterGoogleCloudChannelV1TransferableOffer++;
  if (buildCounterGoogleCloudChannelV1TransferableOffer < 3) {
    checkGoogleCloudChannelV1Offer(o.offer! as api.GoogleCloudChannelV1Offer);
  }
  buildCounterGoogleCloudChannelV1TransferableOffer--;
}

core.int buildCounterGoogleCloudChannelV1TransferableSku = 0;
api.GoogleCloudChannelV1TransferableSku
    buildGoogleCloudChannelV1TransferableSku() {
  var o = api.GoogleCloudChannelV1TransferableSku();
  buildCounterGoogleCloudChannelV1TransferableSku++;
  if (buildCounterGoogleCloudChannelV1TransferableSku < 3) {
    o.sku = buildGoogleCloudChannelV1Sku();
    o.transferEligibility = buildGoogleCloudChannelV1TransferEligibility();
  }
  buildCounterGoogleCloudChannelV1TransferableSku--;
  return o;
}

void checkGoogleCloudChannelV1TransferableSku(
    api.GoogleCloudChannelV1TransferableSku o) {
  buildCounterGoogleCloudChannelV1TransferableSku++;
  if (buildCounterGoogleCloudChannelV1TransferableSku < 3) {
    checkGoogleCloudChannelV1Sku(o.sku! as api.GoogleCloudChannelV1Sku);
    checkGoogleCloudChannelV1TransferEligibility(
        o.transferEligibility! as api.GoogleCloudChannelV1TransferEligibility);
  }
  buildCounterGoogleCloudChannelV1TransferableSku--;
}

core.int buildCounterGoogleCloudChannelV1TrialSettings = 0;
api.GoogleCloudChannelV1TrialSettings buildGoogleCloudChannelV1TrialSettings() {
  var o = api.GoogleCloudChannelV1TrialSettings();
  buildCounterGoogleCloudChannelV1TrialSettings++;
  if (buildCounterGoogleCloudChannelV1TrialSettings < 3) {
    o.endTime = 'foo';
    o.trial = true;
  }
  buildCounterGoogleCloudChannelV1TrialSettings--;
  return o;
}

void checkGoogleCloudChannelV1TrialSettings(
    api.GoogleCloudChannelV1TrialSettings o) {
  buildCounterGoogleCloudChannelV1TrialSettings++;
  if (buildCounterGoogleCloudChannelV1TrialSettings < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.trial!, unittest.isTrue);
  }
  buildCounterGoogleCloudChannelV1TrialSettings--;
}

core.int buildCounterGoogleCloudChannelV1UnregisterSubscriberRequest = 0;
api.GoogleCloudChannelV1UnregisterSubscriberRequest
    buildGoogleCloudChannelV1UnregisterSubscriberRequest() {
  var o = api.GoogleCloudChannelV1UnregisterSubscriberRequest();
  buildCounterGoogleCloudChannelV1UnregisterSubscriberRequest++;
  if (buildCounterGoogleCloudChannelV1UnregisterSubscriberRequest < 3) {
    o.serviceAccount = 'foo';
  }
  buildCounterGoogleCloudChannelV1UnregisterSubscriberRequest--;
  return o;
}

void checkGoogleCloudChannelV1UnregisterSubscriberRequest(
    api.GoogleCloudChannelV1UnregisterSubscriberRequest o) {
  buildCounterGoogleCloudChannelV1UnregisterSubscriberRequest++;
  if (buildCounterGoogleCloudChannelV1UnregisterSubscriberRequest < 3) {
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1UnregisterSubscriberRequest--;
}

core.int buildCounterGoogleCloudChannelV1UnregisterSubscriberResponse = 0;
api.GoogleCloudChannelV1UnregisterSubscriberResponse
    buildGoogleCloudChannelV1UnregisterSubscriberResponse() {
  var o = api.GoogleCloudChannelV1UnregisterSubscriberResponse();
  buildCounterGoogleCloudChannelV1UnregisterSubscriberResponse++;
  if (buildCounterGoogleCloudChannelV1UnregisterSubscriberResponse < 3) {
    o.topic = 'foo';
  }
  buildCounterGoogleCloudChannelV1UnregisterSubscriberResponse--;
  return o;
}

void checkGoogleCloudChannelV1UnregisterSubscriberResponse(
    api.GoogleCloudChannelV1UnregisterSubscriberResponse o) {
  buildCounterGoogleCloudChannelV1UnregisterSubscriberResponse++;
  if (buildCounterGoogleCloudChannelV1UnregisterSubscriberResponse < 3) {
    unittest.expect(
      o.topic!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1UnregisterSubscriberResponse--;
}

core.int buildCounterGoogleCloudChannelV1UpdateChannelPartnerLinkRequest = 0;
api.GoogleCloudChannelV1UpdateChannelPartnerLinkRequest
    buildGoogleCloudChannelV1UpdateChannelPartnerLinkRequest() {
  var o = api.GoogleCloudChannelV1UpdateChannelPartnerLinkRequest();
  buildCounterGoogleCloudChannelV1UpdateChannelPartnerLinkRequest++;
  if (buildCounterGoogleCloudChannelV1UpdateChannelPartnerLinkRequest < 3) {
    o.channelPartnerLink = buildGoogleCloudChannelV1ChannelPartnerLink();
    o.updateMask = 'foo';
  }
  buildCounterGoogleCloudChannelV1UpdateChannelPartnerLinkRequest--;
  return o;
}

void checkGoogleCloudChannelV1UpdateChannelPartnerLinkRequest(
    api.GoogleCloudChannelV1UpdateChannelPartnerLinkRequest o) {
  buildCounterGoogleCloudChannelV1UpdateChannelPartnerLinkRequest++;
  if (buildCounterGoogleCloudChannelV1UpdateChannelPartnerLinkRequest < 3) {
    checkGoogleCloudChannelV1ChannelPartnerLink(
        o.channelPartnerLink! as api.GoogleCloudChannelV1ChannelPartnerLink);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1UpdateChannelPartnerLinkRequest--;
}

core.Map<core.String, core.Object> buildUnnamed2846() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed2846(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleCloudChannelV1Value = 0;
api.GoogleCloudChannelV1Value buildGoogleCloudChannelV1Value() {
  var o = api.GoogleCloudChannelV1Value();
  buildCounterGoogleCloudChannelV1Value++;
  if (buildCounterGoogleCloudChannelV1Value < 3) {
    o.doubleValue = 42.0;
    o.int64Value = 'foo';
    o.protoValue = buildUnnamed2846();
    o.stringValue = 'foo';
  }
  buildCounterGoogleCloudChannelV1Value--;
  return o;
}

void checkGoogleCloudChannelV1Value(api.GoogleCloudChannelV1Value o) {
  buildCounterGoogleCloudChannelV1Value++;
  if (buildCounterGoogleCloudChannelV1Value < 3) {
    unittest.expect(
      o.doubleValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.int64Value!,
      unittest.equals('foo'),
    );
    checkUnnamed2846(o.protoValue!);
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1Value--;
}

core.int buildCounterGoogleCloudChannelV1alpha1AssociationInfo = 0;
api.GoogleCloudChannelV1alpha1AssociationInfo
    buildGoogleCloudChannelV1alpha1AssociationInfo() {
  var o = api.GoogleCloudChannelV1alpha1AssociationInfo();
  buildCounterGoogleCloudChannelV1alpha1AssociationInfo++;
  if (buildCounterGoogleCloudChannelV1alpha1AssociationInfo < 3) {
    o.baseEntitlement = 'foo';
  }
  buildCounterGoogleCloudChannelV1alpha1AssociationInfo--;
  return o;
}

void checkGoogleCloudChannelV1alpha1AssociationInfo(
    api.GoogleCloudChannelV1alpha1AssociationInfo o) {
  buildCounterGoogleCloudChannelV1alpha1AssociationInfo++;
  if (buildCounterGoogleCloudChannelV1alpha1AssociationInfo < 3) {
    unittest.expect(
      o.baseEntitlement!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1alpha1AssociationInfo--;
}

core.int buildCounterGoogleCloudChannelV1alpha1CommitmentSettings = 0;
api.GoogleCloudChannelV1alpha1CommitmentSettings
    buildGoogleCloudChannelV1alpha1CommitmentSettings() {
  var o = api.GoogleCloudChannelV1alpha1CommitmentSettings();
  buildCounterGoogleCloudChannelV1alpha1CommitmentSettings++;
  if (buildCounterGoogleCloudChannelV1alpha1CommitmentSettings < 3) {
    o.endTime = 'foo';
    o.renewalSettings = buildGoogleCloudChannelV1alpha1RenewalSettings();
    o.startTime = 'foo';
  }
  buildCounterGoogleCloudChannelV1alpha1CommitmentSettings--;
  return o;
}

void checkGoogleCloudChannelV1alpha1CommitmentSettings(
    api.GoogleCloudChannelV1alpha1CommitmentSettings o) {
  buildCounterGoogleCloudChannelV1alpha1CommitmentSettings++;
  if (buildCounterGoogleCloudChannelV1alpha1CommitmentSettings < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudChannelV1alpha1RenewalSettings(
        o.renewalSettings! as api.GoogleCloudChannelV1alpha1RenewalSettings);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1alpha1CommitmentSettings--;
}

core.int buildCounterGoogleCloudChannelV1alpha1CustomerEvent = 0;
api.GoogleCloudChannelV1alpha1CustomerEvent
    buildGoogleCloudChannelV1alpha1CustomerEvent() {
  var o = api.GoogleCloudChannelV1alpha1CustomerEvent();
  buildCounterGoogleCloudChannelV1alpha1CustomerEvent++;
  if (buildCounterGoogleCloudChannelV1alpha1CustomerEvent < 3) {
    o.customer = 'foo';
    o.eventType = 'foo';
  }
  buildCounterGoogleCloudChannelV1alpha1CustomerEvent--;
  return o;
}

void checkGoogleCloudChannelV1alpha1CustomerEvent(
    api.GoogleCloudChannelV1alpha1CustomerEvent o) {
  buildCounterGoogleCloudChannelV1alpha1CustomerEvent++;
  if (buildCounterGoogleCloudChannelV1alpha1CustomerEvent < 3) {
    unittest.expect(
      o.customer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1alpha1CustomerEvent--;
}

core.List<api.GoogleCloudChannelV1alpha1Parameter> buildUnnamed2847() {
  var o = <api.GoogleCloudChannelV1alpha1Parameter>[];
  o.add(buildGoogleCloudChannelV1alpha1Parameter());
  o.add(buildGoogleCloudChannelV1alpha1Parameter());
  return o;
}

void checkUnnamed2847(core.List<api.GoogleCloudChannelV1alpha1Parameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1alpha1Parameter(
      o[0] as api.GoogleCloudChannelV1alpha1Parameter);
  checkGoogleCloudChannelV1alpha1Parameter(
      o[1] as api.GoogleCloudChannelV1alpha1Parameter);
}

core.List<core.String> buildUnnamed2848() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2848(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudChannelV1alpha1Entitlement = 0;
api.GoogleCloudChannelV1alpha1Entitlement
    buildGoogleCloudChannelV1alpha1Entitlement() {
  var o = api.GoogleCloudChannelV1alpha1Entitlement();
  buildCounterGoogleCloudChannelV1alpha1Entitlement++;
  if (buildCounterGoogleCloudChannelV1alpha1Entitlement < 3) {
    o.assignedUnits = 42;
    o.associationInfo = buildGoogleCloudChannelV1alpha1AssociationInfo();
    o.channelPartnerId = 'foo';
    o.commitmentSettings = buildGoogleCloudChannelV1alpha1CommitmentSettings();
    o.createTime = 'foo';
    o.maxUnits = 42;
    o.name = 'foo';
    o.numUnits = 42;
    o.offer = 'foo';
    o.parameters = buildUnnamed2847();
    o.provisionedService = buildGoogleCloudChannelV1alpha1ProvisionedService();
    o.provisioningState = 'foo';
    o.purchaseOrderId = 'foo';
    o.suspensionReasons = buildUnnamed2848();
    o.trialSettings = buildGoogleCloudChannelV1alpha1TrialSettings();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudChannelV1alpha1Entitlement--;
  return o;
}

void checkGoogleCloudChannelV1alpha1Entitlement(
    api.GoogleCloudChannelV1alpha1Entitlement o) {
  buildCounterGoogleCloudChannelV1alpha1Entitlement++;
  if (buildCounterGoogleCloudChannelV1alpha1Entitlement < 3) {
    unittest.expect(
      o.assignedUnits!,
      unittest.equals(42),
    );
    checkGoogleCloudChannelV1alpha1AssociationInfo(
        o.associationInfo! as api.GoogleCloudChannelV1alpha1AssociationInfo);
    unittest.expect(
      o.channelPartnerId!,
      unittest.equals('foo'),
    );
    checkGoogleCloudChannelV1alpha1CommitmentSettings(o.commitmentSettings!
        as api.GoogleCloudChannelV1alpha1CommitmentSettings);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxUnits!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numUnits!,
      unittest.equals(42),
    );
    unittest.expect(
      o.offer!,
      unittest.equals('foo'),
    );
    checkUnnamed2847(o.parameters!);
    checkGoogleCloudChannelV1alpha1ProvisionedService(o.provisionedService!
        as api.GoogleCloudChannelV1alpha1ProvisionedService);
    unittest.expect(
      o.provisioningState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.purchaseOrderId!,
      unittest.equals('foo'),
    );
    checkUnnamed2848(o.suspensionReasons!);
    checkGoogleCloudChannelV1alpha1TrialSettings(
        o.trialSettings! as api.GoogleCloudChannelV1alpha1TrialSettings);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1alpha1Entitlement--;
}

core.int buildCounterGoogleCloudChannelV1alpha1EntitlementEvent = 0;
api.GoogleCloudChannelV1alpha1EntitlementEvent
    buildGoogleCloudChannelV1alpha1EntitlementEvent() {
  var o = api.GoogleCloudChannelV1alpha1EntitlementEvent();
  buildCounterGoogleCloudChannelV1alpha1EntitlementEvent++;
  if (buildCounterGoogleCloudChannelV1alpha1EntitlementEvent < 3) {
    o.entitlement = 'foo';
    o.eventType = 'foo';
  }
  buildCounterGoogleCloudChannelV1alpha1EntitlementEvent--;
  return o;
}

void checkGoogleCloudChannelV1alpha1EntitlementEvent(
    api.GoogleCloudChannelV1alpha1EntitlementEvent o) {
  buildCounterGoogleCloudChannelV1alpha1EntitlementEvent++;
  if (buildCounterGoogleCloudChannelV1alpha1EntitlementEvent < 3) {
    unittest.expect(
      o.entitlement!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.eventType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1alpha1EntitlementEvent--;
}

core.int buildCounterGoogleCloudChannelV1alpha1OperationMetadata = 0;
api.GoogleCloudChannelV1alpha1OperationMetadata
    buildGoogleCloudChannelV1alpha1OperationMetadata() {
  var o = api.GoogleCloudChannelV1alpha1OperationMetadata();
  buildCounterGoogleCloudChannelV1alpha1OperationMetadata++;
  if (buildCounterGoogleCloudChannelV1alpha1OperationMetadata < 3) {
    o.operationType = 'foo';
  }
  buildCounterGoogleCloudChannelV1alpha1OperationMetadata--;
  return o;
}

void checkGoogleCloudChannelV1alpha1OperationMetadata(
    api.GoogleCloudChannelV1alpha1OperationMetadata o) {
  buildCounterGoogleCloudChannelV1alpha1OperationMetadata++;
  if (buildCounterGoogleCloudChannelV1alpha1OperationMetadata < 3) {
    unittest.expect(
      o.operationType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1alpha1OperationMetadata--;
}

core.int buildCounterGoogleCloudChannelV1alpha1Parameter = 0;
api.GoogleCloudChannelV1alpha1Parameter
    buildGoogleCloudChannelV1alpha1Parameter() {
  var o = api.GoogleCloudChannelV1alpha1Parameter();
  buildCounterGoogleCloudChannelV1alpha1Parameter++;
  if (buildCounterGoogleCloudChannelV1alpha1Parameter < 3) {
    o.editable = true;
    o.name = 'foo';
    o.value = buildGoogleCloudChannelV1alpha1Value();
  }
  buildCounterGoogleCloudChannelV1alpha1Parameter--;
  return o;
}

void checkGoogleCloudChannelV1alpha1Parameter(
    api.GoogleCloudChannelV1alpha1Parameter o) {
  buildCounterGoogleCloudChannelV1alpha1Parameter++;
  if (buildCounterGoogleCloudChannelV1alpha1Parameter < 3) {
    unittest.expect(o.editable!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudChannelV1alpha1Value(
        o.value! as api.GoogleCloudChannelV1alpha1Value);
  }
  buildCounterGoogleCloudChannelV1alpha1Parameter--;
}

core.int buildCounterGoogleCloudChannelV1alpha1Period = 0;
api.GoogleCloudChannelV1alpha1Period buildGoogleCloudChannelV1alpha1Period() {
  var o = api.GoogleCloudChannelV1alpha1Period();
  buildCounterGoogleCloudChannelV1alpha1Period++;
  if (buildCounterGoogleCloudChannelV1alpha1Period < 3) {
    o.duration = 42;
    o.periodType = 'foo';
  }
  buildCounterGoogleCloudChannelV1alpha1Period--;
  return o;
}

void checkGoogleCloudChannelV1alpha1Period(
    api.GoogleCloudChannelV1alpha1Period o) {
  buildCounterGoogleCloudChannelV1alpha1Period++;
  if (buildCounterGoogleCloudChannelV1alpha1Period < 3) {
    unittest.expect(
      o.duration!,
      unittest.equals(42),
    );
    unittest.expect(
      o.periodType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1alpha1Period--;
}

core.int buildCounterGoogleCloudChannelV1alpha1ProvisionedService = 0;
api.GoogleCloudChannelV1alpha1ProvisionedService
    buildGoogleCloudChannelV1alpha1ProvisionedService() {
  var o = api.GoogleCloudChannelV1alpha1ProvisionedService();
  buildCounterGoogleCloudChannelV1alpha1ProvisionedService++;
  if (buildCounterGoogleCloudChannelV1alpha1ProvisionedService < 3) {
    o.productId = 'foo';
    o.provisioningId = 'foo';
    o.skuId = 'foo';
  }
  buildCounterGoogleCloudChannelV1alpha1ProvisionedService--;
  return o;
}

void checkGoogleCloudChannelV1alpha1ProvisionedService(
    api.GoogleCloudChannelV1alpha1ProvisionedService o) {
  buildCounterGoogleCloudChannelV1alpha1ProvisionedService++;
  if (buildCounterGoogleCloudChannelV1alpha1ProvisionedService < 3) {
    unittest.expect(
      o.productId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.provisioningId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.skuId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1alpha1ProvisionedService--;
}

core.int buildCounterGoogleCloudChannelV1alpha1RenewalSettings = 0;
api.GoogleCloudChannelV1alpha1RenewalSettings
    buildGoogleCloudChannelV1alpha1RenewalSettings() {
  var o = api.GoogleCloudChannelV1alpha1RenewalSettings();
  buildCounterGoogleCloudChannelV1alpha1RenewalSettings++;
  if (buildCounterGoogleCloudChannelV1alpha1RenewalSettings < 3) {
    o.disableCommitment = true;
    o.enableRenewal = true;
    o.paymentCycle = buildGoogleCloudChannelV1alpha1Period();
    o.paymentOption = 'foo';
    o.paymentPlan = 'foo';
    o.resizeUnitCount = true;
  }
  buildCounterGoogleCloudChannelV1alpha1RenewalSettings--;
  return o;
}

void checkGoogleCloudChannelV1alpha1RenewalSettings(
    api.GoogleCloudChannelV1alpha1RenewalSettings o) {
  buildCounterGoogleCloudChannelV1alpha1RenewalSettings++;
  if (buildCounterGoogleCloudChannelV1alpha1RenewalSettings < 3) {
    unittest.expect(o.disableCommitment!, unittest.isTrue);
    unittest.expect(o.enableRenewal!, unittest.isTrue);
    checkGoogleCloudChannelV1alpha1Period(
        o.paymentCycle! as api.GoogleCloudChannelV1alpha1Period);
    unittest.expect(
      o.paymentOption!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.paymentPlan!,
      unittest.equals('foo'),
    );
    unittest.expect(o.resizeUnitCount!, unittest.isTrue);
  }
  buildCounterGoogleCloudChannelV1alpha1RenewalSettings--;
}

core.int buildCounterGoogleCloudChannelV1alpha1SubscriberEvent = 0;
api.GoogleCloudChannelV1alpha1SubscriberEvent
    buildGoogleCloudChannelV1alpha1SubscriberEvent() {
  var o = api.GoogleCloudChannelV1alpha1SubscriberEvent();
  buildCounterGoogleCloudChannelV1alpha1SubscriberEvent++;
  if (buildCounterGoogleCloudChannelV1alpha1SubscriberEvent < 3) {
    o.customerEvent = buildGoogleCloudChannelV1alpha1CustomerEvent();
    o.entitlementEvent = buildGoogleCloudChannelV1alpha1EntitlementEvent();
  }
  buildCounterGoogleCloudChannelV1alpha1SubscriberEvent--;
  return o;
}

void checkGoogleCloudChannelV1alpha1SubscriberEvent(
    api.GoogleCloudChannelV1alpha1SubscriberEvent o) {
  buildCounterGoogleCloudChannelV1alpha1SubscriberEvent++;
  if (buildCounterGoogleCloudChannelV1alpha1SubscriberEvent < 3) {
    checkGoogleCloudChannelV1alpha1CustomerEvent(
        o.customerEvent! as api.GoogleCloudChannelV1alpha1CustomerEvent);
    checkGoogleCloudChannelV1alpha1EntitlementEvent(
        o.entitlementEvent! as api.GoogleCloudChannelV1alpha1EntitlementEvent);
  }
  buildCounterGoogleCloudChannelV1alpha1SubscriberEvent--;
}

core.List<api.GoogleCloudChannelV1alpha1Entitlement> buildUnnamed2849() {
  var o = <api.GoogleCloudChannelV1alpha1Entitlement>[];
  o.add(buildGoogleCloudChannelV1alpha1Entitlement());
  o.add(buildGoogleCloudChannelV1alpha1Entitlement());
  return o;
}

void checkUnnamed2849(core.List<api.GoogleCloudChannelV1alpha1Entitlement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1alpha1Entitlement(
      o[0] as api.GoogleCloudChannelV1alpha1Entitlement);
  checkGoogleCloudChannelV1alpha1Entitlement(
      o[1] as api.GoogleCloudChannelV1alpha1Entitlement);
}

core.int buildCounterGoogleCloudChannelV1alpha1TransferEntitlementsResponse = 0;
api.GoogleCloudChannelV1alpha1TransferEntitlementsResponse
    buildGoogleCloudChannelV1alpha1TransferEntitlementsResponse() {
  var o = api.GoogleCloudChannelV1alpha1TransferEntitlementsResponse();
  buildCounterGoogleCloudChannelV1alpha1TransferEntitlementsResponse++;
  if (buildCounterGoogleCloudChannelV1alpha1TransferEntitlementsResponse < 3) {
    o.entitlements = buildUnnamed2849();
  }
  buildCounterGoogleCloudChannelV1alpha1TransferEntitlementsResponse--;
  return o;
}

void checkGoogleCloudChannelV1alpha1TransferEntitlementsResponse(
    api.GoogleCloudChannelV1alpha1TransferEntitlementsResponse o) {
  buildCounterGoogleCloudChannelV1alpha1TransferEntitlementsResponse++;
  if (buildCounterGoogleCloudChannelV1alpha1TransferEntitlementsResponse < 3) {
    checkUnnamed2849(o.entitlements!);
  }
  buildCounterGoogleCloudChannelV1alpha1TransferEntitlementsResponse--;
}

core.int buildCounterGoogleCloudChannelV1alpha1TrialSettings = 0;
api.GoogleCloudChannelV1alpha1TrialSettings
    buildGoogleCloudChannelV1alpha1TrialSettings() {
  var o = api.GoogleCloudChannelV1alpha1TrialSettings();
  buildCounterGoogleCloudChannelV1alpha1TrialSettings++;
  if (buildCounterGoogleCloudChannelV1alpha1TrialSettings < 3) {
    o.endTime = 'foo';
    o.trial = true;
  }
  buildCounterGoogleCloudChannelV1alpha1TrialSettings--;
  return o;
}

void checkGoogleCloudChannelV1alpha1TrialSettings(
    api.GoogleCloudChannelV1alpha1TrialSettings o) {
  buildCounterGoogleCloudChannelV1alpha1TrialSettings++;
  if (buildCounterGoogleCloudChannelV1alpha1TrialSettings < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(o.trial!, unittest.isTrue);
  }
  buildCounterGoogleCloudChannelV1alpha1TrialSettings--;
}

core.Map<core.String, core.Object> buildUnnamed2850() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed2850(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleCloudChannelV1alpha1Value = 0;
api.GoogleCloudChannelV1alpha1Value buildGoogleCloudChannelV1alpha1Value() {
  var o = api.GoogleCloudChannelV1alpha1Value();
  buildCounterGoogleCloudChannelV1alpha1Value++;
  if (buildCounterGoogleCloudChannelV1alpha1Value < 3) {
    o.doubleValue = 42.0;
    o.int64Value = 'foo';
    o.protoValue = buildUnnamed2850();
    o.stringValue = 'foo';
  }
  buildCounterGoogleCloudChannelV1alpha1Value--;
  return o;
}

void checkGoogleCloudChannelV1alpha1Value(
    api.GoogleCloudChannelV1alpha1Value o) {
  buildCounterGoogleCloudChannelV1alpha1Value++;
  if (buildCounterGoogleCloudChannelV1alpha1Value < 3) {
    unittest.expect(
      o.doubleValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.int64Value!,
      unittest.equals('foo'),
    );
    checkUnnamed2850(o.protoValue!);
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1alpha1Value--;
}

core.int buildCounterGoogleLongrunningCancelOperationRequest = 0;
api.GoogleLongrunningCancelOperationRequest
    buildGoogleLongrunningCancelOperationRequest() {
  var o = api.GoogleLongrunningCancelOperationRequest();
  buildCounterGoogleLongrunningCancelOperationRequest++;
  if (buildCounterGoogleLongrunningCancelOperationRequest < 3) {}
  buildCounterGoogleLongrunningCancelOperationRequest--;
  return o;
}

void checkGoogleLongrunningCancelOperationRequest(
    api.GoogleLongrunningCancelOperationRequest o) {
  buildCounterGoogleLongrunningCancelOperationRequest++;
  if (buildCounterGoogleLongrunningCancelOperationRequest < 3) {}
  buildCounterGoogleLongrunningCancelOperationRequest--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed2851() {
  var o = <api.GoogleLongrunningOperation>[];
  o.add(buildGoogleLongrunningOperation());
  o.add(buildGoogleLongrunningOperation());
  return o;
}

void checkUnnamed2851(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0] as api.GoogleLongrunningOperation);
  checkGoogleLongrunningOperation(o[1] as api.GoogleLongrunningOperation);
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
api.GoogleLongrunningListOperationsResponse
    buildGoogleLongrunningListOperationsResponse() {
  var o = api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed2851();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed2851(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object> buildUnnamed2852() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed2852(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed2853() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed2853(core.Map<core.String, core.Object> o) {
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

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  var o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed2852();
    o.name = 'foo';
    o.response = buildUnnamed2853();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error! as api.GoogleRpcStatus);
    checkUnnamed2852(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed2853(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  var o = api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

void checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

core.Map<core.String, core.Object> buildUnnamed2854() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed2854(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed2855() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed2854());
  o.add(buildUnnamed2854());
  return o;
}

void checkUnnamed2855(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2854(o[0]);
  checkUnnamed2854(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  var o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed2855();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed2855(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterGoogleTypeMoney = 0;
api.GoogleTypeMoney buildGoogleTypeMoney() {
  var o = api.GoogleTypeMoney();
  buildCounterGoogleTypeMoney++;
  if (buildCounterGoogleTypeMoney < 3) {
    o.currencyCode = 'foo';
    o.nanos = 42;
    o.units = 'foo';
  }
  buildCounterGoogleTypeMoney--;
  return o;
}

void checkGoogleTypeMoney(api.GoogleTypeMoney o) {
  buildCounterGoogleTypeMoney++;
  if (buildCounterGoogleTypeMoney < 3) {
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
  buildCounterGoogleTypeMoney--;
}

core.List<core.String> buildUnnamed2856() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2856(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed2857() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed2857(core.List<core.String> o) {
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

core.int buildCounterGoogleTypePostalAddress = 0;
api.GoogleTypePostalAddress buildGoogleTypePostalAddress() {
  var o = api.GoogleTypePostalAddress();
  buildCounterGoogleTypePostalAddress++;
  if (buildCounterGoogleTypePostalAddress < 3) {
    o.addressLines = buildUnnamed2856();
    o.administrativeArea = 'foo';
    o.languageCode = 'foo';
    o.locality = 'foo';
    o.organization = 'foo';
    o.postalCode = 'foo';
    o.recipients = buildUnnamed2857();
    o.regionCode = 'foo';
    o.revision = 42;
    o.sortingCode = 'foo';
    o.sublocality = 'foo';
  }
  buildCounterGoogleTypePostalAddress--;
  return o;
}

void checkGoogleTypePostalAddress(api.GoogleTypePostalAddress o) {
  buildCounterGoogleTypePostalAddress++;
  if (buildCounterGoogleTypePostalAddress < 3) {
    checkUnnamed2856(o.addressLines!);
    unittest.expect(
      o.administrativeArea!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locality!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.organization!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postalCode!,
      unittest.equals('foo'),
    );
    checkUnnamed2857(o.recipients!);
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revision!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sortingCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sublocality!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleTypePostalAddress--;
}

void main() {
  unittest.group('obj-schema-GoogleCloudChannelV1ActivateEntitlementRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1ActivateEntitlementRequest();
      var od = api.GoogleCloudChannelV1ActivateEntitlementRequest.fromJson(
          o.toJson());
      checkGoogleCloudChannelV1ActivateEntitlementRequest(
          od as api.GoogleCloudChannelV1ActivateEntitlementRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1AdminUser', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1AdminUser();
      var od = api.GoogleCloudChannelV1AdminUser.fromJson(o.toJson());
      checkGoogleCloudChannelV1AdminUser(
          od as api.GoogleCloudChannelV1AdminUser);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1AssociationInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1AssociationInfo();
      var od = api.GoogleCloudChannelV1AssociationInfo.fromJson(o.toJson());
      checkGoogleCloudChannelV1AssociationInfo(
          od as api.GoogleCloudChannelV1AssociationInfo);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1CancelEntitlementRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1CancelEntitlementRequest();
      var od =
          api.GoogleCloudChannelV1CancelEntitlementRequest.fromJson(o.toJson());
      checkGoogleCloudChannelV1CancelEntitlementRequest(
          od as api.GoogleCloudChannelV1CancelEntitlementRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ChangeOfferRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1ChangeOfferRequest();
      var od = api.GoogleCloudChannelV1ChangeOfferRequest.fromJson(o.toJson());
      checkGoogleCloudChannelV1ChangeOfferRequest(
          od as api.GoogleCloudChannelV1ChangeOfferRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ChangeParametersRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1ChangeParametersRequest();
      var od =
          api.GoogleCloudChannelV1ChangeParametersRequest.fromJson(o.toJson());
      checkGoogleCloudChannelV1ChangeParametersRequest(
          od as api.GoogleCloudChannelV1ChangeParametersRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ChangeRenewalSettingsRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1ChangeRenewalSettingsRequest();
      var od = api.GoogleCloudChannelV1ChangeRenewalSettingsRequest.fromJson(
          o.toJson());
      checkGoogleCloudChannelV1ChangeRenewalSettingsRequest(
          od as api.GoogleCloudChannelV1ChangeRenewalSettingsRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ChannelPartnerLink', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1ChannelPartnerLink();
      var od = api.GoogleCloudChannelV1ChannelPartnerLink.fromJson(o.toJson());
      checkGoogleCloudChannelV1ChannelPartnerLink(
          od as api.GoogleCloudChannelV1ChannelPartnerLink);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest();
      var od = api.GoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest
          .fromJson(o.toJson());
      checkGoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest(
          od as api.GoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o =
          buildGoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse();
      var od = api.GoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse
          .fromJson(o.toJson());
      checkGoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse(od
          as api.GoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1CloudIdentityCustomerAccount',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1CloudIdentityCustomerAccount();
      var od = api.GoogleCloudChannelV1CloudIdentityCustomerAccount.fromJson(
          o.toJson());
      checkGoogleCloudChannelV1CloudIdentityCustomerAccount(
          od as api.GoogleCloudChannelV1CloudIdentityCustomerAccount);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1CloudIdentityInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1CloudIdentityInfo();
      var od = api.GoogleCloudChannelV1CloudIdentityInfo.fromJson(o.toJson());
      checkGoogleCloudChannelV1CloudIdentityInfo(
          od as api.GoogleCloudChannelV1CloudIdentityInfo);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1CommitmentSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1CommitmentSettings();
      var od = api.GoogleCloudChannelV1CommitmentSettings.fromJson(o.toJson());
      checkGoogleCloudChannelV1CommitmentSettings(
          od as api.GoogleCloudChannelV1CommitmentSettings);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1Constraints', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1Constraints();
      var od = api.GoogleCloudChannelV1Constraints.fromJson(o.toJson());
      checkGoogleCloudChannelV1Constraints(
          od as api.GoogleCloudChannelV1Constraints);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ContactInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1ContactInfo();
      var od = api.GoogleCloudChannelV1ContactInfo.fromJson(o.toJson());
      checkGoogleCloudChannelV1ContactInfo(
          od as api.GoogleCloudChannelV1ContactInfo);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1CreateEntitlementRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1CreateEntitlementRequest();
      var od =
          api.GoogleCloudChannelV1CreateEntitlementRequest.fromJson(o.toJson());
      checkGoogleCloudChannelV1CreateEntitlementRequest(
          od as api.GoogleCloudChannelV1CreateEntitlementRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1Customer', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1Customer();
      var od = api.GoogleCloudChannelV1Customer.fromJson(o.toJson());
      checkGoogleCloudChannelV1Customer(od as api.GoogleCloudChannelV1Customer);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1CustomerConstraints', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1CustomerConstraints();
      var od = api.GoogleCloudChannelV1CustomerConstraints.fromJson(o.toJson());
      checkGoogleCloudChannelV1CustomerConstraints(
          od as api.GoogleCloudChannelV1CustomerConstraints);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1CustomerEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1CustomerEvent();
      var od = api.GoogleCloudChannelV1CustomerEvent.fromJson(o.toJson());
      checkGoogleCloudChannelV1CustomerEvent(
          od as api.GoogleCloudChannelV1CustomerEvent);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1EduData', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1EduData();
      var od = api.GoogleCloudChannelV1EduData.fromJson(o.toJson());
      checkGoogleCloudChannelV1EduData(od as api.GoogleCloudChannelV1EduData);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1Entitlement', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1Entitlement();
      var od = api.GoogleCloudChannelV1Entitlement.fromJson(o.toJson());
      checkGoogleCloudChannelV1Entitlement(
          od as api.GoogleCloudChannelV1Entitlement);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1EntitlementEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1EntitlementEvent();
      var od = api.GoogleCloudChannelV1EntitlementEvent.fromJson(o.toJson());
      checkGoogleCloudChannelV1EntitlementEvent(
          od as api.GoogleCloudChannelV1EntitlementEvent);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudChannelV1ListChannelPartnerLinksResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1ListChannelPartnerLinksResponse();
      var od = api.GoogleCloudChannelV1ListChannelPartnerLinksResponse.fromJson(
          o.toJson());
      checkGoogleCloudChannelV1ListChannelPartnerLinksResponse(
          od as api.GoogleCloudChannelV1ListChannelPartnerLinksResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ListCustomersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1ListCustomersResponse();
      var od =
          api.GoogleCloudChannelV1ListCustomersResponse.fromJson(o.toJson());
      checkGoogleCloudChannelV1ListCustomersResponse(
          od as api.GoogleCloudChannelV1ListCustomersResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ListEntitlementsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1ListEntitlementsResponse();
      var od =
          api.GoogleCloudChannelV1ListEntitlementsResponse.fromJson(o.toJson());
      checkGoogleCloudChannelV1ListEntitlementsResponse(
          od as api.GoogleCloudChannelV1ListEntitlementsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ListOffersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1ListOffersResponse();
      var od = api.GoogleCloudChannelV1ListOffersResponse.fromJson(o.toJson());
      checkGoogleCloudChannelV1ListOffersResponse(
          od as api.GoogleCloudChannelV1ListOffersResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ListProductsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1ListProductsResponse();
      var od =
          api.GoogleCloudChannelV1ListProductsResponse.fromJson(o.toJson());
      checkGoogleCloudChannelV1ListProductsResponse(
          od as api.GoogleCloudChannelV1ListProductsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ListPurchasableOffersResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1ListPurchasableOffersResponse();
      var od = api.GoogleCloudChannelV1ListPurchasableOffersResponse.fromJson(
          o.toJson());
      checkGoogleCloudChannelV1ListPurchasableOffersResponse(
          od as api.GoogleCloudChannelV1ListPurchasableOffersResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ListPurchasableSkusResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1ListPurchasableSkusResponse();
      var od = api.GoogleCloudChannelV1ListPurchasableSkusResponse.fromJson(
          o.toJson());
      checkGoogleCloudChannelV1ListPurchasableSkusResponse(
          od as api.GoogleCloudChannelV1ListPurchasableSkusResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ListSkusResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1ListSkusResponse();
      var od = api.GoogleCloudChannelV1ListSkusResponse.fromJson(o.toJson());
      checkGoogleCloudChannelV1ListSkusResponse(
          od as api.GoogleCloudChannelV1ListSkusResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ListSubscribersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1ListSubscribersResponse();
      var od =
          api.GoogleCloudChannelV1ListSubscribersResponse.fromJson(o.toJson());
      checkGoogleCloudChannelV1ListSubscribersResponse(
          od as api.GoogleCloudChannelV1ListSubscribersResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ListTransferableOffersRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1ListTransferableOffersRequest();
      var od = api.GoogleCloudChannelV1ListTransferableOffersRequest.fromJson(
          o.toJson());
      checkGoogleCloudChannelV1ListTransferableOffersRequest(
          od as api.GoogleCloudChannelV1ListTransferableOffersRequest);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudChannelV1ListTransferableOffersResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1ListTransferableOffersResponse();
      var od = api.GoogleCloudChannelV1ListTransferableOffersResponse.fromJson(
          o.toJson());
      checkGoogleCloudChannelV1ListTransferableOffersResponse(
          od as api.GoogleCloudChannelV1ListTransferableOffersResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ListTransferableSkusRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1ListTransferableSkusRequest();
      var od = api.GoogleCloudChannelV1ListTransferableSkusRequest.fromJson(
          o.toJson());
      checkGoogleCloudChannelV1ListTransferableSkusRequest(
          od as api.GoogleCloudChannelV1ListTransferableSkusRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ListTransferableSkusResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1ListTransferableSkusResponse();
      var od = api.GoogleCloudChannelV1ListTransferableSkusResponse.fromJson(
          o.toJson());
      checkGoogleCloudChannelV1ListTransferableSkusResponse(
          od as api.GoogleCloudChannelV1ListTransferableSkusResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1MarketingInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1MarketingInfo();
      var od = api.GoogleCloudChannelV1MarketingInfo.fromJson(o.toJson());
      checkGoogleCloudChannelV1MarketingInfo(
          od as api.GoogleCloudChannelV1MarketingInfo);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1Media', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1Media();
      var od = api.GoogleCloudChannelV1Media.fromJson(o.toJson());
      checkGoogleCloudChannelV1Media(od as api.GoogleCloudChannelV1Media);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1Offer', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1Offer();
      var od = api.GoogleCloudChannelV1Offer.fromJson(o.toJson());
      checkGoogleCloudChannelV1Offer(od as api.GoogleCloudChannelV1Offer);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1OperationMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1OperationMetadata();
      var od = api.GoogleCloudChannelV1OperationMetadata.fromJson(o.toJson());
      checkGoogleCloudChannelV1OperationMetadata(
          od as api.GoogleCloudChannelV1OperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1Parameter', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1Parameter();
      var od = api.GoogleCloudChannelV1Parameter.fromJson(o.toJson());
      checkGoogleCloudChannelV1Parameter(
          od as api.GoogleCloudChannelV1Parameter);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ParameterDefinition', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1ParameterDefinition();
      var od = api.GoogleCloudChannelV1ParameterDefinition.fromJson(o.toJson());
      checkGoogleCloudChannelV1ParameterDefinition(
          od as api.GoogleCloudChannelV1ParameterDefinition);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1Period', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1Period();
      var od = api.GoogleCloudChannelV1Period.fromJson(o.toJson());
      checkGoogleCloudChannelV1Period(od as api.GoogleCloudChannelV1Period);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1Plan', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1Plan();
      var od = api.GoogleCloudChannelV1Plan.fromJson(o.toJson());
      checkGoogleCloudChannelV1Plan(od as api.GoogleCloudChannelV1Plan);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1Price', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1Price();
      var od = api.GoogleCloudChannelV1Price.fromJson(o.toJson());
      checkGoogleCloudChannelV1Price(od as api.GoogleCloudChannelV1Price);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1PriceByResource', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1PriceByResource();
      var od = api.GoogleCloudChannelV1PriceByResource.fromJson(o.toJson());
      checkGoogleCloudChannelV1PriceByResource(
          od as api.GoogleCloudChannelV1PriceByResource);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1PricePhase', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1PricePhase();
      var od = api.GoogleCloudChannelV1PricePhase.fromJson(o.toJson());
      checkGoogleCloudChannelV1PricePhase(
          od as api.GoogleCloudChannelV1PricePhase);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1PriceTier', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1PriceTier();
      var od = api.GoogleCloudChannelV1PriceTier.fromJson(o.toJson());
      checkGoogleCloudChannelV1PriceTier(
          od as api.GoogleCloudChannelV1PriceTier);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1Product', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1Product();
      var od = api.GoogleCloudChannelV1Product.fromJson(o.toJson());
      checkGoogleCloudChannelV1Product(od as api.GoogleCloudChannelV1Product);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ProvisionCloudIdentityRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1ProvisionCloudIdentityRequest();
      var od = api.GoogleCloudChannelV1ProvisionCloudIdentityRequest.fromJson(
          o.toJson());
      checkGoogleCloudChannelV1ProvisionCloudIdentityRequest(
          od as api.GoogleCloudChannelV1ProvisionCloudIdentityRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ProvisionedService', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1ProvisionedService();
      var od = api.GoogleCloudChannelV1ProvisionedService.fromJson(o.toJson());
      checkGoogleCloudChannelV1ProvisionedService(
          od as api.GoogleCloudChannelV1ProvisionedService);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1PurchasableOffer', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1PurchasableOffer();
      var od = api.GoogleCloudChannelV1PurchasableOffer.fromJson(o.toJson());
      checkGoogleCloudChannelV1PurchasableOffer(
          od as api.GoogleCloudChannelV1PurchasableOffer);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1PurchasableSku', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1PurchasableSku();
      var od = api.GoogleCloudChannelV1PurchasableSku.fromJson(o.toJson());
      checkGoogleCloudChannelV1PurchasableSku(
          od as api.GoogleCloudChannelV1PurchasableSku);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1RegisterSubscriberRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1RegisterSubscriberRequest();
      var od = api.GoogleCloudChannelV1RegisterSubscriberRequest.fromJson(
          o.toJson());
      checkGoogleCloudChannelV1RegisterSubscriberRequest(
          od as api.GoogleCloudChannelV1RegisterSubscriberRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1RegisterSubscriberResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1RegisterSubscriberResponse();
      var od = api.GoogleCloudChannelV1RegisterSubscriberResponse.fromJson(
          o.toJson());
      checkGoogleCloudChannelV1RegisterSubscriberResponse(
          od as api.GoogleCloudChannelV1RegisterSubscriberResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1RenewalSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1RenewalSettings();
      var od = api.GoogleCloudChannelV1RenewalSettings.fromJson(o.toJson());
      checkGoogleCloudChannelV1RenewalSettings(
          od as api.GoogleCloudChannelV1RenewalSettings);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1Sku', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1Sku();
      var od = api.GoogleCloudChannelV1Sku.fromJson(o.toJson());
      checkGoogleCloudChannelV1Sku(od as api.GoogleCloudChannelV1Sku);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1StartPaidServiceRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1StartPaidServiceRequest();
      var od =
          api.GoogleCloudChannelV1StartPaidServiceRequest.fromJson(o.toJson());
      checkGoogleCloudChannelV1StartPaidServiceRequest(
          od as api.GoogleCloudChannelV1StartPaidServiceRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1SubscriberEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1SubscriberEvent();
      var od = api.GoogleCloudChannelV1SubscriberEvent.fromJson(o.toJson());
      checkGoogleCloudChannelV1SubscriberEvent(
          od as api.GoogleCloudChannelV1SubscriberEvent);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1SuspendEntitlementRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1SuspendEntitlementRequest();
      var od = api.GoogleCloudChannelV1SuspendEntitlementRequest.fromJson(
          o.toJson());
      checkGoogleCloudChannelV1SuspendEntitlementRequest(
          od as api.GoogleCloudChannelV1SuspendEntitlementRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1TransferEligibility', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1TransferEligibility();
      var od = api.GoogleCloudChannelV1TransferEligibility.fromJson(o.toJson());
      checkGoogleCloudChannelV1TransferEligibility(
          od as api.GoogleCloudChannelV1TransferEligibility);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1TransferEntitlementsRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1TransferEntitlementsRequest();
      var od = api.GoogleCloudChannelV1TransferEntitlementsRequest.fromJson(
          o.toJson());
      checkGoogleCloudChannelV1TransferEntitlementsRequest(
          od as api.GoogleCloudChannelV1TransferEntitlementsRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1TransferEntitlementsResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1TransferEntitlementsResponse();
      var od = api.GoogleCloudChannelV1TransferEntitlementsResponse.fromJson(
          o.toJson());
      checkGoogleCloudChannelV1TransferEntitlementsResponse(
          od as api.GoogleCloudChannelV1TransferEntitlementsResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudChannelV1TransferEntitlementsToGoogleRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1TransferEntitlementsToGoogleRequest();
      var od =
          api.GoogleCloudChannelV1TransferEntitlementsToGoogleRequest.fromJson(
              o.toJson());
      checkGoogleCloudChannelV1TransferEntitlementsToGoogleRequest(
          od as api.GoogleCloudChannelV1TransferEntitlementsToGoogleRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1TransferableOffer', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1TransferableOffer();
      var od = api.GoogleCloudChannelV1TransferableOffer.fromJson(o.toJson());
      checkGoogleCloudChannelV1TransferableOffer(
          od as api.GoogleCloudChannelV1TransferableOffer);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1TransferableSku', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1TransferableSku();
      var od = api.GoogleCloudChannelV1TransferableSku.fromJson(o.toJson());
      checkGoogleCloudChannelV1TransferableSku(
          od as api.GoogleCloudChannelV1TransferableSku);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1TrialSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1TrialSettings();
      var od = api.GoogleCloudChannelV1TrialSettings.fromJson(o.toJson());
      checkGoogleCloudChannelV1TrialSettings(
          od as api.GoogleCloudChannelV1TrialSettings);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1UnregisterSubscriberRequest',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1UnregisterSubscriberRequest();
      var od = api.GoogleCloudChannelV1UnregisterSubscriberRequest.fromJson(
          o.toJson());
      checkGoogleCloudChannelV1UnregisterSubscriberRequest(
          od as api.GoogleCloudChannelV1UnregisterSubscriberRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1UnregisterSubscriberResponse',
      () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1UnregisterSubscriberResponse();
      var od = api.GoogleCloudChannelV1UnregisterSubscriberResponse.fromJson(
          o.toJson());
      checkGoogleCloudChannelV1UnregisterSubscriberResponse(
          od as api.GoogleCloudChannelV1UnregisterSubscriberResponse);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudChannelV1UpdateChannelPartnerLinkRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1UpdateChannelPartnerLinkRequest();
      var od = api.GoogleCloudChannelV1UpdateChannelPartnerLinkRequest.fromJson(
          o.toJson());
      checkGoogleCloudChannelV1UpdateChannelPartnerLinkRequest(
          od as api.GoogleCloudChannelV1UpdateChannelPartnerLinkRequest);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1Value', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1Value();
      var od = api.GoogleCloudChannelV1Value.fromJson(o.toJson());
      checkGoogleCloudChannelV1Value(od as api.GoogleCloudChannelV1Value);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1alpha1AssociationInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1alpha1AssociationInfo();
      var od =
          api.GoogleCloudChannelV1alpha1AssociationInfo.fromJson(o.toJson());
      checkGoogleCloudChannelV1alpha1AssociationInfo(
          od as api.GoogleCloudChannelV1alpha1AssociationInfo);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1alpha1CommitmentSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1alpha1CommitmentSettings();
      var od =
          api.GoogleCloudChannelV1alpha1CommitmentSettings.fromJson(o.toJson());
      checkGoogleCloudChannelV1alpha1CommitmentSettings(
          od as api.GoogleCloudChannelV1alpha1CommitmentSettings);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1alpha1CustomerEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1alpha1CustomerEvent();
      var od = api.GoogleCloudChannelV1alpha1CustomerEvent.fromJson(o.toJson());
      checkGoogleCloudChannelV1alpha1CustomerEvent(
          od as api.GoogleCloudChannelV1alpha1CustomerEvent);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1alpha1Entitlement', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1alpha1Entitlement();
      var od = api.GoogleCloudChannelV1alpha1Entitlement.fromJson(o.toJson());
      checkGoogleCloudChannelV1alpha1Entitlement(
          od as api.GoogleCloudChannelV1alpha1Entitlement);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1alpha1EntitlementEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1alpha1EntitlementEvent();
      var od =
          api.GoogleCloudChannelV1alpha1EntitlementEvent.fromJson(o.toJson());
      checkGoogleCloudChannelV1alpha1EntitlementEvent(
          od as api.GoogleCloudChannelV1alpha1EntitlementEvent);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1alpha1OperationMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1alpha1OperationMetadata();
      var od =
          api.GoogleCloudChannelV1alpha1OperationMetadata.fromJson(o.toJson());
      checkGoogleCloudChannelV1alpha1OperationMetadata(
          od as api.GoogleCloudChannelV1alpha1OperationMetadata);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1alpha1Parameter', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1alpha1Parameter();
      var od = api.GoogleCloudChannelV1alpha1Parameter.fromJson(o.toJson());
      checkGoogleCloudChannelV1alpha1Parameter(
          od as api.GoogleCloudChannelV1alpha1Parameter);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1alpha1Period', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1alpha1Period();
      var od = api.GoogleCloudChannelV1alpha1Period.fromJson(o.toJson());
      checkGoogleCloudChannelV1alpha1Period(
          od as api.GoogleCloudChannelV1alpha1Period);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1alpha1ProvisionedService', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1alpha1ProvisionedService();
      var od =
          api.GoogleCloudChannelV1alpha1ProvisionedService.fromJson(o.toJson());
      checkGoogleCloudChannelV1alpha1ProvisionedService(
          od as api.GoogleCloudChannelV1alpha1ProvisionedService);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1alpha1RenewalSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1alpha1RenewalSettings();
      var od =
          api.GoogleCloudChannelV1alpha1RenewalSettings.fromJson(o.toJson());
      checkGoogleCloudChannelV1alpha1RenewalSettings(
          od as api.GoogleCloudChannelV1alpha1RenewalSettings);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1alpha1SubscriberEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1alpha1SubscriberEvent();
      var od =
          api.GoogleCloudChannelV1alpha1SubscriberEvent.fromJson(o.toJson());
      checkGoogleCloudChannelV1alpha1SubscriberEvent(
          od as api.GoogleCloudChannelV1alpha1SubscriberEvent);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudChannelV1alpha1TransferEntitlementsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1alpha1TransferEntitlementsResponse();
      var od =
          api.GoogleCloudChannelV1alpha1TransferEntitlementsResponse.fromJson(
              o.toJson());
      checkGoogleCloudChannelV1alpha1TransferEntitlementsResponse(
          od as api.GoogleCloudChannelV1alpha1TransferEntitlementsResponse);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1alpha1TrialSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1alpha1TrialSettings();
      var od = api.GoogleCloudChannelV1alpha1TrialSettings.fromJson(o.toJson());
      checkGoogleCloudChannelV1alpha1TrialSettings(
          od as api.GoogleCloudChannelV1alpha1TrialSettings);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1alpha1Value', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleCloudChannelV1alpha1Value();
      var od = api.GoogleCloudChannelV1alpha1Value.fromJson(o.toJson());
      checkGoogleCloudChannelV1alpha1Value(
          od as api.GoogleCloudChannelV1alpha1Value);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningCancelOperationRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleLongrunningCancelOperationRequest();
      var od = api.GoogleLongrunningCancelOperationRequest.fromJson(o.toJson());
      checkGoogleLongrunningCancelOperationRequest(
          od as api.GoogleLongrunningCancelOperationRequest);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningListOperationsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleLongrunningListOperationsResponse();
      var od = api.GoogleLongrunningListOperationsResponse.fromJson(o.toJson());
      checkGoogleLongrunningListOperationsResponse(
          od as api.GoogleLongrunningListOperationsResponse);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleLongrunningOperation();
      var od = api.GoogleLongrunningOperation.fromJson(o.toJson());
      checkGoogleLongrunningOperation(od as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleProtobufEmpty();
      var od = api.GoogleProtobufEmpty.fromJson(o.toJson());
      checkGoogleProtobufEmpty(od as api.GoogleProtobufEmpty);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleRpcStatus();
      var od = api.GoogleRpcStatus.fromJson(o.toJson());
      checkGoogleRpcStatus(od as api.GoogleRpcStatus);
    });
  });

  unittest.group('obj-schema-GoogleTypeMoney', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleTypeMoney();
      var od = api.GoogleTypeMoney.fromJson(o.toJson());
      checkGoogleTypeMoney(od as api.GoogleTypeMoney);
    });
  });

  unittest.group('obj-schema-GoogleTypePostalAddress', () {
    unittest.test('to-json--from-json', () {
      var o = buildGoogleTypePostalAddress();
      var od = api.GoogleTypePostalAddress.fromJson(o.toJson());
      checkGoogleTypePostalAddress(od as api.GoogleTypePostalAddress);
    });
  });

  unittest.group('resource-AccountsResource', () {
    unittest.test('method--checkCloudIdentityAccountsExist', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).accounts;
      var arg_request =
          buildGoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest(obj
            as api.GoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(
            buildGoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .checkCloudIdentityAccountsExist(arg_request, arg_parent,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse(
            response as api
                .GoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse);
      })));
    });

    unittest.test('method--listSubscribers', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).accounts;
      var arg_account = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudChannelV1ListSubscribersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listSubscribers(arg_account,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudChannelV1ListSubscribersResponse(
            response as api.GoogleCloudChannelV1ListSubscribersResponse);
      })));
    });

    unittest.test('method--listTransferableOffers', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).accounts;
      var arg_request =
          buildGoogleCloudChannelV1ListTransferableOffersRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudChannelV1ListTransferableOffersRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1ListTransferableOffersRequest(
            obj as api.GoogleCloudChannelV1ListTransferableOffersRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudChannelV1ListTransferableOffersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listTransferableOffers(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudChannelV1ListTransferableOffersResponse(
            response as api.GoogleCloudChannelV1ListTransferableOffersResponse);
      })));
    });

    unittest.test('method--listTransferableSkus', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).accounts;
      var arg_request = buildGoogleCloudChannelV1ListTransferableSkusRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudChannelV1ListTransferableSkusRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1ListTransferableSkusRequest(
            obj as api.GoogleCloudChannelV1ListTransferableSkusRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudChannelV1ListTransferableSkusResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listTransferableSkus(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudChannelV1ListTransferableSkusResponse(
            response as api.GoogleCloudChannelV1ListTransferableSkusResponse);
      })));
    });

    unittest.test('method--register', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).accounts;
      var arg_request = buildGoogleCloudChannelV1RegisterSubscriberRequest();
      var arg_account = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudChannelV1RegisterSubscriberRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1RegisterSubscriberRequest(
            obj as api.GoogleCloudChannelV1RegisterSubscriberRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudChannelV1RegisterSubscriberResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .register(arg_request, arg_account, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudChannelV1RegisterSubscriberResponse(
            response as api.GoogleCloudChannelV1RegisterSubscriberResponse);
      })));
    });

    unittest.test('method--unregister', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).accounts;
      var arg_request = buildGoogleCloudChannelV1UnregisterSubscriberRequest();
      var arg_account = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudChannelV1UnregisterSubscriberRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1UnregisterSubscriberRequest(
            obj as api.GoogleCloudChannelV1UnregisterSubscriberRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudChannelV1UnregisterSubscriberResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .unregister(arg_request, arg_account, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudChannelV1UnregisterSubscriberResponse(
            response as api.GoogleCloudChannelV1UnregisterSubscriberResponse);
      })));
    });
  });

  unittest.group('resource-AccountsChannelPartnerLinksResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).accounts.channelPartnerLinks;
      var arg_request = buildGoogleCloudChannelV1ChannelPartnerLink();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudChannelV1ChannelPartnerLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1ChannelPartnerLink(
            obj as api.GoogleCloudChannelV1ChannelPartnerLink);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudChannelV1ChannelPartnerLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudChannelV1ChannelPartnerLink(
            response as api.GoogleCloudChannelV1ChannelPartnerLink);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).accounts.channelPartnerLinks;
      var arg_name = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["view"]!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudChannelV1ChannelPartnerLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, view: arg_view, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudChannelV1ChannelPartnerLink(
            response as api.GoogleCloudChannelV1ChannelPartnerLink);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).accounts.channelPartnerLinks;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["view"]!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudChannelV1ListChannelPartnerLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              view: arg_view,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudChannelV1ListChannelPartnerLinksResponse(response
            as api.GoogleCloudChannelV1ListChannelPartnerLinksResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).accounts.channelPartnerLinks;
      var arg_request =
          buildGoogleCloudChannelV1UpdateChannelPartnerLinkRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudChannelV1UpdateChannelPartnerLinkRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1UpdateChannelPartnerLinkRequest(
            obj as api.GoogleCloudChannelV1UpdateChannelPartnerLinkRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudChannelV1ChannelPartnerLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudChannelV1ChannelPartnerLink(
            response as api.GoogleCloudChannelV1ChannelPartnerLink);
      })));
    });
  });

  unittest.group('resource-AccountsCustomersResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).accounts.customers;
      var arg_request = buildGoogleCloudChannelV1Customer();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudChannelV1Customer.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1Customer(
            obj as api.GoogleCloudChannelV1Customer);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudChannelV1Customer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudChannelV1Customer(
            response as api.GoogleCloudChannelV1Customer);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).accounts.customers;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).accounts.customers;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudChannelV1Customer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudChannelV1Customer(
            response as api.GoogleCloudChannelV1Customer);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).accounts.customers;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudChannelV1ListCustomersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudChannelV1ListCustomersResponse(
            response as api.GoogleCloudChannelV1ListCustomersResponse);
      })));
    });

    unittest.test('method--listPurchasableOffers', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).accounts.customers;
      var arg_customer = 'foo';
      var arg_changeOfferPurchase_entitlement = 'foo';
      var arg_changeOfferPurchase_newSku = 'foo';
      var arg_createEntitlementPurchase_sku = 'foo';
      var arg_languageCode = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["changeOfferPurchase.entitlement"]!.first,
          unittest.equals(arg_changeOfferPurchase_entitlement),
        );
        unittest.expect(
          queryMap["changeOfferPurchase.newSku"]!.first,
          unittest.equals(arg_changeOfferPurchase_newSku),
        );
        unittest.expect(
          queryMap["createEntitlementPurchase.sku"]!.first,
          unittest.equals(arg_createEntitlementPurchase_sku),
        );
        unittest.expect(
          queryMap["languageCode"]!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudChannelV1ListPurchasableOffersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listPurchasableOffers(arg_customer,
              changeOfferPurchase_entitlement:
                  arg_changeOfferPurchase_entitlement,
              changeOfferPurchase_newSku: arg_changeOfferPurchase_newSku,
              createEntitlementPurchase_sku: arg_createEntitlementPurchase_sku,
              languageCode: arg_languageCode,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudChannelV1ListPurchasableOffersResponse(
            response as api.GoogleCloudChannelV1ListPurchasableOffersResponse);
      })));
    });

    unittest.test('method--listPurchasableSkus', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).accounts.customers;
      var arg_customer = 'foo';
      var arg_changeOfferPurchase_changeType = 'foo';
      var arg_changeOfferPurchase_entitlement = 'foo';
      var arg_createEntitlementPurchase_product = 'foo';
      var arg_languageCode = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["changeOfferPurchase.changeType"]!.first,
          unittest.equals(arg_changeOfferPurchase_changeType),
        );
        unittest.expect(
          queryMap["changeOfferPurchase.entitlement"]!.first,
          unittest.equals(arg_changeOfferPurchase_entitlement),
        );
        unittest.expect(
          queryMap["createEntitlementPurchase.product"]!.first,
          unittest.equals(arg_createEntitlementPurchase_product),
        );
        unittest.expect(
          queryMap["languageCode"]!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudChannelV1ListPurchasableSkusResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .listPurchasableSkus(arg_customer,
              changeOfferPurchase_changeType:
                  arg_changeOfferPurchase_changeType,
              changeOfferPurchase_entitlement:
                  arg_changeOfferPurchase_entitlement,
              createEntitlementPurchase_product:
                  arg_createEntitlementPurchase_product,
              languageCode: arg_languageCode,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudChannelV1ListPurchasableSkusResponse(
            response as api.GoogleCloudChannelV1ListPurchasableSkusResponse);
      })));
    });

    unittest.test('method--patch', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).accounts.customers;
      var arg_request = buildGoogleCloudChannelV1Customer();
      var arg_name = 'foo';
      var arg_updateMask = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudChannelV1Customer.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1Customer(
            obj as api.GoogleCloudChannelV1Customer);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["updateMask"]!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudChannelV1Customer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .patch(arg_request, arg_name,
              updateMask: arg_updateMask, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudChannelV1Customer(
            response as api.GoogleCloudChannelV1Customer);
      })));
    });

    unittest.test('method--provisionCloudIdentity', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).accounts.customers;
      var arg_request =
          buildGoogleCloudChannelV1ProvisionCloudIdentityRequest();
      var arg_customer = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj =
            api.GoogleCloudChannelV1ProvisionCloudIdentityRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1ProvisionCloudIdentityRequest(
            obj as api.GoogleCloudChannelV1ProvisionCloudIdentityRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .provisionCloudIdentity(arg_request, arg_customer,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--transferEntitlements', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).accounts.customers;
      var arg_request = buildGoogleCloudChannelV1TransferEntitlementsRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudChannelV1TransferEntitlementsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1TransferEntitlementsRequest(
            obj as api.GoogleCloudChannelV1TransferEntitlementsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .transferEntitlements(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--transferEntitlementsToGoogle', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).accounts.customers;
      var arg_request =
          buildGoogleCloudChannelV1TransferEntitlementsToGoogleRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudChannelV1TransferEntitlementsToGoogleRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1TransferEntitlementsToGoogleRequest(
            obj as api.GoogleCloudChannelV1TransferEntitlementsToGoogleRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .transferEntitlementsToGoogle(arg_request, arg_parent,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });
  });

  unittest.group('resource-AccountsCustomersEntitlementsResource', () {
    unittest.test('method--activate', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).accounts.customers.entitlements;
      var arg_request = buildGoogleCloudChannelV1ActivateEntitlementRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudChannelV1ActivateEntitlementRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1ActivateEntitlementRequest(
            obj as api.GoogleCloudChannelV1ActivateEntitlementRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .activate(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--cancel', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).accounts.customers.entitlements;
      var arg_request = buildGoogleCloudChannelV1CancelEntitlementRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudChannelV1CancelEntitlementRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1CancelEntitlementRequest(
            obj as api.GoogleCloudChannelV1CancelEntitlementRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--changeOffer', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).accounts.customers.entitlements;
      var arg_request = buildGoogleCloudChannelV1ChangeOfferRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudChannelV1ChangeOfferRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1ChangeOfferRequest(
            obj as api.GoogleCloudChannelV1ChangeOfferRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .changeOffer(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--changeParameters', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).accounts.customers.entitlements;
      var arg_request = buildGoogleCloudChannelV1ChangeParametersRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudChannelV1ChangeParametersRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1ChangeParametersRequest(
            obj as api.GoogleCloudChannelV1ChangeParametersRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .changeParameters(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--changeRenewalSettings', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).accounts.customers.entitlements;
      var arg_request = buildGoogleCloudChannelV1ChangeRenewalSettingsRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudChannelV1ChangeRenewalSettingsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1ChangeRenewalSettingsRequest(
            obj as api.GoogleCloudChannelV1ChangeRenewalSettingsRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .changeRenewalSettings(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).accounts.customers.entitlements;
      var arg_request = buildGoogleCloudChannelV1CreateEntitlementRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudChannelV1CreateEntitlementRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1CreateEntitlementRequest(
            obj as api.GoogleCloudChannelV1CreateEntitlementRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).accounts.customers.entitlements;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleCloudChannelV1Entitlement());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudChannelV1Entitlement(
            response as api.GoogleCloudChannelV1Entitlement);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).accounts.customers.entitlements;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudChannelV1ListEntitlementsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudChannelV1ListEntitlementsResponse(
            response as api.GoogleCloudChannelV1ListEntitlementsResponse);
      })));
    });

    unittest.test('method--startPaidService', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).accounts.customers.entitlements;
      var arg_request = buildGoogleCloudChannelV1StartPaidServiceRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudChannelV1StartPaidServiceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1StartPaidServiceRequest(
            obj as api.GoogleCloudChannelV1StartPaidServiceRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .startPaidService(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--suspend', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).accounts.customers.entitlements;
      var arg_request = buildGoogleCloudChannelV1SuspendEntitlementRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleCloudChannelV1SuspendEntitlementRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1SuspendEntitlementRequest(
            obj as api.GoogleCloudChannelV1SuspendEntitlementRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .suspend(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });
  });

  unittest.group('resource-AccountsOffersResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).accounts.offers;
      var arg_parent = 'foo';
      var arg_filter = 'foo';
      var arg_languageCode = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap["languageCode"]!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudChannelV1ListOffersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              filter: arg_filter,
              languageCode: arg_languageCode,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudChannelV1ListOffersResponse(
            response as api.GoogleCloudChannelV1ListOffersResponse);
      })));
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--cancel', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).operations;
      var arg_request = buildGoogleLongrunningCancelOperationRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GoogleLongrunningCancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleLongrunningCancelOperationRequest(
            obj as api.GoogleLongrunningCancelOperationRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .cancel(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).operations;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningOperation(
            response as api.GoogleLongrunningOperation);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).operations;
      var arg_name = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["filter"]!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_name,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleLongrunningListOperationsResponse(
            response as api.GoogleLongrunningListOperationsResponse);
      })));
    });
  });

  unittest.group('resource-ProductsResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).products;
      var arg_account = 'foo';
      var arg_languageCode = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals("v1/products"),
        );
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["account"]!.first,
          unittest.equals(arg_account),
        );
        unittest.expect(
          queryMap["languageCode"]!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json
            .encode(buildGoogleCloudChannelV1ListProductsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              account: arg_account,
              languageCode: arg_languageCode,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudChannelV1ListProductsResponse(
            response as api.GoogleCloudChannelV1ListProductsResponse);
      })));
    });
  });

  unittest.group('resource-ProductsSkusResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.CloudchannelApi(mock).products.skus;
      var arg_parent = 'foo';
      var arg_account = 'foo';
      var arg_languageCode = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals("/"),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals("v1/"),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

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
          queryMap["account"]!.first,
          unittest.equals(arg_account),
        );
        unittest.expect(
          queryMap["languageCode"]!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          core.int.parse(queryMap["pageSize"]!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap["pageToken"]!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap["fields"]!.first,
          unittest.equals(arg_$fields),
        );

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildGoogleCloudChannelV1ListSkusResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              account: arg_account,
              languageCode: arg_languageCode,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGoogleCloudChannelV1ListSkusResponse(
            response as api.GoogleCloudChannelV1ListSkusResponse);
      })));
    });
  });
}
