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

import 'package:googleapis/cloudchannel/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleCloudChannelV1ActivateEntitlementRequest = 0;
api.GoogleCloudChannelV1ActivateEntitlementRequest
    buildGoogleCloudChannelV1ActivateEntitlementRequest() {
  final o = api.GoogleCloudChannelV1ActivateEntitlementRequest();
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
  final o = api.GoogleCloudChannelV1AdminUser();
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
  final o = api.GoogleCloudChannelV1AssociationInfo();
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

core.int buildCounterGoogleCloudChannelV1BillableSku = 0;
api.GoogleCloudChannelV1BillableSku buildGoogleCloudChannelV1BillableSku() {
  final o = api.GoogleCloudChannelV1BillableSku();
  buildCounterGoogleCloudChannelV1BillableSku++;
  if (buildCounterGoogleCloudChannelV1BillableSku < 3) {
    o.service = 'foo';
    o.serviceDisplayName = 'foo';
    o.sku = 'foo';
    o.skuDisplayName = 'foo';
  }
  buildCounterGoogleCloudChannelV1BillableSku--;
  return o;
}

void checkGoogleCloudChannelV1BillableSku(
    api.GoogleCloudChannelV1BillableSku o) {
  buildCounterGoogleCloudChannelV1BillableSku++;
  if (buildCounterGoogleCloudChannelV1BillableSku < 3) {
    unittest.expect(
      o.service!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceDisplayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sku!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.skuDisplayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1BillableSku--;
}

core.int buildCounterGoogleCloudChannelV1BillingAccount = 0;
api.GoogleCloudChannelV1BillingAccount
    buildGoogleCloudChannelV1BillingAccount() {
  final o = api.GoogleCloudChannelV1BillingAccount();
  buildCounterGoogleCloudChannelV1BillingAccount++;
  if (buildCounterGoogleCloudChannelV1BillingAccount < 3) {
    o.createTime = 'foo';
    o.currencyCode = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.regionCode = 'foo';
  }
  buildCounterGoogleCloudChannelV1BillingAccount--;
  return o;
}

void checkGoogleCloudChannelV1BillingAccount(
    api.GoogleCloudChannelV1BillingAccount o) {
  buildCounterGoogleCloudChannelV1BillingAccount++;
  if (buildCounterGoogleCloudChannelV1BillingAccount < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1BillingAccount--;
}

core.int buildCounterGoogleCloudChannelV1BillingAccountPurchaseInfo = 0;
api.GoogleCloudChannelV1BillingAccountPurchaseInfo
    buildGoogleCloudChannelV1BillingAccountPurchaseInfo() {
  final o = api.GoogleCloudChannelV1BillingAccountPurchaseInfo();
  buildCounterGoogleCloudChannelV1BillingAccountPurchaseInfo++;
  if (buildCounterGoogleCloudChannelV1BillingAccountPurchaseInfo < 3) {
    o.billingAccount = buildGoogleCloudChannelV1BillingAccount();
  }
  buildCounterGoogleCloudChannelV1BillingAccountPurchaseInfo--;
  return o;
}

void checkGoogleCloudChannelV1BillingAccountPurchaseInfo(
    api.GoogleCloudChannelV1BillingAccountPurchaseInfo o) {
  buildCounterGoogleCloudChannelV1BillingAccountPurchaseInfo++;
  if (buildCounterGoogleCloudChannelV1BillingAccountPurchaseInfo < 3) {
    checkGoogleCloudChannelV1BillingAccount(o.billingAccount!);
  }
  buildCounterGoogleCloudChannelV1BillingAccountPurchaseInfo--;
}

core.int buildCounterGoogleCloudChannelV1CancelEntitlementRequest = 0;
api.GoogleCloudChannelV1CancelEntitlementRequest
    buildGoogleCloudChannelV1CancelEntitlementRequest() {
  final o = api.GoogleCloudChannelV1CancelEntitlementRequest();
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

core.List<api.GoogleCloudChannelV1Parameter> buildUnnamed0() => [
      buildGoogleCloudChannelV1Parameter(),
      buildGoogleCloudChannelV1Parameter(),
    ];

void checkUnnamed0(core.List<api.GoogleCloudChannelV1Parameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1Parameter(o[0]);
  checkGoogleCloudChannelV1Parameter(o[1]);
}

core.int buildCounterGoogleCloudChannelV1ChangeOfferRequest = 0;
api.GoogleCloudChannelV1ChangeOfferRequest
    buildGoogleCloudChannelV1ChangeOfferRequest() {
  final o = api.GoogleCloudChannelV1ChangeOfferRequest();
  buildCounterGoogleCloudChannelV1ChangeOfferRequest++;
  if (buildCounterGoogleCloudChannelV1ChangeOfferRequest < 3) {
    o.billingAccount = 'foo';
    o.offer = 'foo';
    o.parameters = buildUnnamed0();
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
      o.billingAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.offer!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.parameters!);
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

core.List<api.GoogleCloudChannelV1Parameter> buildUnnamed1() => [
      buildGoogleCloudChannelV1Parameter(),
      buildGoogleCloudChannelV1Parameter(),
    ];

void checkUnnamed1(core.List<api.GoogleCloudChannelV1Parameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1Parameter(o[0]);
  checkGoogleCloudChannelV1Parameter(o[1]);
}

core.int buildCounterGoogleCloudChannelV1ChangeParametersRequest = 0;
api.GoogleCloudChannelV1ChangeParametersRequest
    buildGoogleCloudChannelV1ChangeParametersRequest() {
  final o = api.GoogleCloudChannelV1ChangeParametersRequest();
  buildCounterGoogleCloudChannelV1ChangeParametersRequest++;
  if (buildCounterGoogleCloudChannelV1ChangeParametersRequest < 3) {
    o.parameters = buildUnnamed1();
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
    checkUnnamed1(o.parameters!);
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
  final o = api.GoogleCloudChannelV1ChangeRenewalSettingsRequest();
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
    checkGoogleCloudChannelV1RenewalSettings(o.renewalSettings!);
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
  final o = api.GoogleCloudChannelV1ChannelPartnerLink();
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
        o.channelPartnerCloudIdentityInfo!);
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

core.int buildCounterGoogleCloudChannelV1ChannelPartnerRepricingConfig = 0;
api.GoogleCloudChannelV1ChannelPartnerRepricingConfig
    buildGoogleCloudChannelV1ChannelPartnerRepricingConfig() {
  final o = api.GoogleCloudChannelV1ChannelPartnerRepricingConfig();
  buildCounterGoogleCloudChannelV1ChannelPartnerRepricingConfig++;
  if (buildCounterGoogleCloudChannelV1ChannelPartnerRepricingConfig < 3) {
    o.name = 'foo';
    o.repricingConfig = buildGoogleCloudChannelV1RepricingConfig();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudChannelV1ChannelPartnerRepricingConfig--;
  return o;
}

void checkGoogleCloudChannelV1ChannelPartnerRepricingConfig(
    api.GoogleCloudChannelV1ChannelPartnerRepricingConfig o) {
  buildCounterGoogleCloudChannelV1ChannelPartnerRepricingConfig++;
  if (buildCounterGoogleCloudChannelV1ChannelPartnerRepricingConfig < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudChannelV1RepricingConfig(o.repricingConfig!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1ChannelPartnerRepricingConfig--;
}

core.int
    buildCounterGoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest = 0;
api.GoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest
    buildGoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest() {
  final o = api.GoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest();
  buildCounterGoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest++;
  if (buildCounterGoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest <
      3) {
    o.domain = 'foo';
    o.primaryAdminEmail = 'foo';
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
    unittest.expect(
      o.primaryAdminEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest--;
}

core.List<api.GoogleCloudChannelV1CloudIdentityCustomerAccount>
    buildUnnamed2() => [
          buildGoogleCloudChannelV1CloudIdentityCustomerAccount(),
          buildGoogleCloudChannelV1CloudIdentityCustomerAccount(),
        ];

void checkUnnamed2(
    core.List<api.GoogleCloudChannelV1CloudIdentityCustomerAccount> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1CloudIdentityCustomerAccount(o[0]);
  checkGoogleCloudChannelV1CloudIdentityCustomerAccount(o[1]);
}

core.int
    buildCounterGoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse = 0;
api.GoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse
    buildGoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse() {
  final o = api.GoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse();
  buildCounterGoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse++;
  if (buildCounterGoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse <
      3) {
    o.cloudIdentityAccounts = buildUnnamed2();
  }
  buildCounterGoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse--;
  return o;
}

void checkGoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse(
    api.GoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse o) {
  buildCounterGoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse++;
  if (buildCounterGoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse <
      3) {
    checkUnnamed2(o.cloudIdentityAccounts!);
  }
  buildCounterGoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse--;
}

core.int buildCounterGoogleCloudChannelV1CloudIdentityCustomerAccount = 0;
api.GoogleCloudChannelV1CloudIdentityCustomerAccount
    buildGoogleCloudChannelV1CloudIdentityCustomerAccount() {
  final o = api.GoogleCloudChannelV1CloudIdentityCustomerAccount();
  buildCounterGoogleCloudChannelV1CloudIdentityCustomerAccount++;
  if (buildCounterGoogleCloudChannelV1CloudIdentityCustomerAccount < 3) {
    o.channelPartnerCloudIdentityId = 'foo';
    o.customerCloudIdentityId = 'foo';
    o.customerName = 'foo';
    o.customerType = 'foo';
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
      o.channelPartnerCloudIdentityId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerCloudIdentityId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.customerType!,
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
  final o = api.GoogleCloudChannelV1CloudIdentityInfo();
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
    checkGoogleCloudChannelV1EduData(o.eduData!);
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

core.int buildCounterGoogleCloudChannelV1Column = 0;
api.GoogleCloudChannelV1Column buildGoogleCloudChannelV1Column() {
  final o = api.GoogleCloudChannelV1Column();
  buildCounterGoogleCloudChannelV1Column++;
  if (buildCounterGoogleCloudChannelV1Column < 3) {
    o.columnId = 'foo';
    o.dataType = 'foo';
    o.displayName = 'foo';
  }
  buildCounterGoogleCloudChannelV1Column--;
  return o;
}

void checkGoogleCloudChannelV1Column(api.GoogleCloudChannelV1Column o) {
  buildCounterGoogleCloudChannelV1Column++;
  if (buildCounterGoogleCloudChannelV1Column < 3) {
    unittest.expect(
      o.columnId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1Column--;
}

core.int buildCounterGoogleCloudChannelV1CommitmentSettings = 0;
api.GoogleCloudChannelV1CommitmentSettings
    buildGoogleCloudChannelV1CommitmentSettings() {
  final o = api.GoogleCloudChannelV1CommitmentSettings();
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
    checkGoogleCloudChannelV1RenewalSettings(o.renewalSettings!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1CommitmentSettings--;
}

core.int buildCounterGoogleCloudChannelV1ConditionalOverride = 0;
api.GoogleCloudChannelV1ConditionalOverride
    buildGoogleCloudChannelV1ConditionalOverride() {
  final o = api.GoogleCloudChannelV1ConditionalOverride();
  buildCounterGoogleCloudChannelV1ConditionalOverride++;
  if (buildCounterGoogleCloudChannelV1ConditionalOverride < 3) {
    o.adjustment = buildGoogleCloudChannelV1RepricingAdjustment();
    o.rebillingBasis = 'foo';
    o.repricingCondition = buildGoogleCloudChannelV1RepricingCondition();
  }
  buildCounterGoogleCloudChannelV1ConditionalOverride--;
  return o;
}

void checkGoogleCloudChannelV1ConditionalOverride(
    api.GoogleCloudChannelV1ConditionalOverride o) {
  buildCounterGoogleCloudChannelV1ConditionalOverride++;
  if (buildCounterGoogleCloudChannelV1ConditionalOverride < 3) {
    checkGoogleCloudChannelV1RepricingAdjustment(o.adjustment!);
    unittest.expect(
      o.rebillingBasis!,
      unittest.equals('foo'),
    );
    checkGoogleCloudChannelV1RepricingCondition(o.repricingCondition!);
  }
  buildCounterGoogleCloudChannelV1ConditionalOverride--;
}

core.int buildCounterGoogleCloudChannelV1Constraints = 0;
api.GoogleCloudChannelV1Constraints buildGoogleCloudChannelV1Constraints() {
  final o = api.GoogleCloudChannelV1Constraints();
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
    checkGoogleCloudChannelV1CustomerConstraints(o.customerConstraints!);
  }
  buildCounterGoogleCloudChannelV1Constraints--;
}

core.int buildCounterGoogleCloudChannelV1ContactInfo = 0;
api.GoogleCloudChannelV1ContactInfo buildGoogleCloudChannelV1ContactInfo() {
  final o = api.GoogleCloudChannelV1ContactInfo();
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
  final o = api.GoogleCloudChannelV1CreateEntitlementRequest();
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
    checkGoogleCloudChannelV1Entitlement(o.entitlement!);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1CreateEntitlementRequest--;
}

core.int buildCounterGoogleCloudChannelV1Customer = 0;
api.GoogleCloudChannelV1Customer buildGoogleCloudChannelV1Customer() {
  final o = api.GoogleCloudChannelV1Customer();
  buildCounterGoogleCloudChannelV1Customer++;
  if (buildCounterGoogleCloudChannelV1Customer < 3) {
    o.alternateEmail = 'foo';
    o.channelPartnerId = 'foo';
    o.cloudIdentityId = 'foo';
    o.cloudIdentityInfo = buildGoogleCloudChannelV1CloudIdentityInfo();
    o.correlationId = 'foo';
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
    checkGoogleCloudChannelV1CloudIdentityInfo(o.cloudIdentityInfo!);
    unittest.expect(
      o.correlationId!,
      unittest.equals('foo'),
    );
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
    checkGoogleTypePostalAddress(o.orgPostalAddress!);
    checkGoogleCloudChannelV1ContactInfo(o.primaryContactInfo!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1Customer--;
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

core.int buildCounterGoogleCloudChannelV1CustomerConstraints = 0;
api.GoogleCloudChannelV1CustomerConstraints
    buildGoogleCloudChannelV1CustomerConstraints() {
  final o = api.GoogleCloudChannelV1CustomerConstraints();
  buildCounterGoogleCloudChannelV1CustomerConstraints++;
  if (buildCounterGoogleCloudChannelV1CustomerConstraints < 3) {
    o.allowedCustomerTypes = buildUnnamed3();
    o.allowedRegions = buildUnnamed4();
    o.promotionalOrderTypes = buildUnnamed5();
  }
  buildCounterGoogleCloudChannelV1CustomerConstraints--;
  return o;
}

void checkGoogleCloudChannelV1CustomerConstraints(
    api.GoogleCloudChannelV1CustomerConstraints o) {
  buildCounterGoogleCloudChannelV1CustomerConstraints++;
  if (buildCounterGoogleCloudChannelV1CustomerConstraints < 3) {
    checkUnnamed3(o.allowedCustomerTypes!);
    checkUnnamed4(o.allowedRegions!);
    checkUnnamed5(o.promotionalOrderTypes!);
  }
  buildCounterGoogleCloudChannelV1CustomerConstraints--;
}

core.int buildCounterGoogleCloudChannelV1CustomerRepricingConfig = 0;
api.GoogleCloudChannelV1CustomerRepricingConfig
    buildGoogleCloudChannelV1CustomerRepricingConfig() {
  final o = api.GoogleCloudChannelV1CustomerRepricingConfig();
  buildCounterGoogleCloudChannelV1CustomerRepricingConfig++;
  if (buildCounterGoogleCloudChannelV1CustomerRepricingConfig < 3) {
    o.name = 'foo';
    o.repricingConfig = buildGoogleCloudChannelV1RepricingConfig();
    o.updateTime = 'foo';
  }
  buildCounterGoogleCloudChannelV1CustomerRepricingConfig--;
  return o;
}

void checkGoogleCloudChannelV1CustomerRepricingConfig(
    api.GoogleCloudChannelV1CustomerRepricingConfig o) {
  buildCounterGoogleCloudChannelV1CustomerRepricingConfig++;
  if (buildCounterGoogleCloudChannelV1CustomerRepricingConfig < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudChannelV1RepricingConfig(o.repricingConfig!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1CustomerRepricingConfig--;
}

core.int buildCounterGoogleCloudChannelV1DateRange = 0;
api.GoogleCloudChannelV1DateRange buildGoogleCloudChannelV1DateRange() {
  final o = api.GoogleCloudChannelV1DateRange();
  buildCounterGoogleCloudChannelV1DateRange++;
  if (buildCounterGoogleCloudChannelV1DateRange < 3) {
    o.invoiceEndDate = buildGoogleTypeDate();
    o.invoiceStartDate = buildGoogleTypeDate();
    o.usageEndDateTime = buildGoogleTypeDateTime();
    o.usageStartDateTime = buildGoogleTypeDateTime();
  }
  buildCounterGoogleCloudChannelV1DateRange--;
  return o;
}

void checkGoogleCloudChannelV1DateRange(api.GoogleCloudChannelV1DateRange o) {
  buildCounterGoogleCloudChannelV1DateRange++;
  if (buildCounterGoogleCloudChannelV1DateRange < 3) {
    checkGoogleTypeDate(o.invoiceEndDate!);
    checkGoogleTypeDate(o.invoiceStartDate!);
    checkGoogleTypeDateTime(o.usageEndDateTime!);
    checkGoogleTypeDateTime(o.usageStartDateTime!);
  }
  buildCounterGoogleCloudChannelV1DateRange--;
}

core.int buildCounterGoogleCloudChannelV1EduData = 0;
api.GoogleCloudChannelV1EduData buildGoogleCloudChannelV1EduData() {
  final o = api.GoogleCloudChannelV1EduData();
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

core.List<api.GoogleCloudChannelV1Parameter> buildUnnamed6() => [
      buildGoogleCloudChannelV1Parameter(),
      buildGoogleCloudChannelV1Parameter(),
    ];

void checkUnnamed6(core.List<api.GoogleCloudChannelV1Parameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1Parameter(o[0]);
  checkGoogleCloudChannelV1Parameter(o[1]);
}

core.List<core.String> buildUnnamed7() => [
      'foo',
      'foo',
    ];

void checkUnnamed7(core.List<core.String> o) {
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
  final o = api.GoogleCloudChannelV1Entitlement();
  buildCounterGoogleCloudChannelV1Entitlement++;
  if (buildCounterGoogleCloudChannelV1Entitlement < 3) {
    o.associationInfo = buildGoogleCloudChannelV1AssociationInfo();
    o.billingAccount = 'foo';
    o.commitmentSettings = buildGoogleCloudChannelV1CommitmentSettings();
    o.createTime = 'foo';
    o.name = 'foo';
    o.offer = 'foo';
    o.parameters = buildUnnamed6();
    o.provisionedService = buildGoogleCloudChannelV1ProvisionedService();
    o.provisioningState = 'foo';
    o.purchaseOrderId = 'foo';
    o.suspensionReasons = buildUnnamed7();
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
    checkGoogleCloudChannelV1AssociationInfo(o.associationInfo!);
    unittest.expect(
      o.billingAccount!,
      unittest.equals('foo'),
    );
    checkGoogleCloudChannelV1CommitmentSettings(o.commitmentSettings!);
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
    checkUnnamed6(o.parameters!);
    checkGoogleCloudChannelV1ProvisionedService(o.provisionedService!);
    unittest.expect(
      o.provisioningState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.purchaseOrderId!,
      unittest.equals('foo'),
    );
    checkUnnamed7(o.suspensionReasons!);
    checkGoogleCloudChannelV1TrialSettings(o.trialSettings!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1Entitlement--;
}

core.List<api.GoogleCloudChannelV1Parameter> buildUnnamed8() => [
      buildGoogleCloudChannelV1Parameter(),
      buildGoogleCloudChannelV1Parameter(),
    ];

void checkUnnamed8(core.List<api.GoogleCloudChannelV1Parameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1Parameter(o[0]);
  checkGoogleCloudChannelV1Parameter(o[1]);
}

core.int buildCounterGoogleCloudChannelV1EntitlementChange = 0;
api.GoogleCloudChannelV1EntitlementChange
    buildGoogleCloudChannelV1EntitlementChange() {
  final o = api.GoogleCloudChannelV1EntitlementChange();
  buildCounterGoogleCloudChannelV1EntitlementChange++;
  if (buildCounterGoogleCloudChannelV1EntitlementChange < 3) {
    o.activationReason = 'foo';
    o.cancellationReason = 'foo';
    o.changeType = 'foo';
    o.createTime = 'foo';
    o.entitlement = 'foo';
    o.offer = 'foo';
    o.operator = 'foo';
    o.operatorType = 'foo';
    o.otherChangeReason = 'foo';
    o.parameters = buildUnnamed8();
    o.provisionedService = buildGoogleCloudChannelV1ProvisionedService();
    o.suspensionReason = 'foo';
  }
  buildCounterGoogleCloudChannelV1EntitlementChange--;
  return o;
}

void checkGoogleCloudChannelV1EntitlementChange(
    api.GoogleCloudChannelV1EntitlementChange o) {
  buildCounterGoogleCloudChannelV1EntitlementChange++;
  if (buildCounterGoogleCloudChannelV1EntitlementChange < 3) {
    unittest.expect(
      o.activationReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cancellationReason!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.changeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.entitlement!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.offer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operator!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operatorType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.otherChangeReason!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.parameters!);
    checkGoogleCloudChannelV1ProvisionedService(o.provisionedService!);
    unittest.expect(
      o.suspensionReason!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1EntitlementChange--;
}

core.List<core.String> buildUnnamed9() => [
      'foo',
      'foo',
    ];

void checkUnnamed9(core.List<core.String> o) {
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

core.int buildCounterGoogleCloudChannelV1FetchReportResultsRequest = 0;
api.GoogleCloudChannelV1FetchReportResultsRequest
    buildGoogleCloudChannelV1FetchReportResultsRequest() {
  final o = api.GoogleCloudChannelV1FetchReportResultsRequest();
  buildCounterGoogleCloudChannelV1FetchReportResultsRequest++;
  if (buildCounterGoogleCloudChannelV1FetchReportResultsRequest < 3) {
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.partitionKeys = buildUnnamed9();
  }
  buildCounterGoogleCloudChannelV1FetchReportResultsRequest--;
  return o;
}

void checkGoogleCloudChannelV1FetchReportResultsRequest(
    api.GoogleCloudChannelV1FetchReportResultsRequest o) {
  buildCounterGoogleCloudChannelV1FetchReportResultsRequest++;
  if (buildCounterGoogleCloudChannelV1FetchReportResultsRequest < 3) {
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed9(o.partitionKeys!);
  }
  buildCounterGoogleCloudChannelV1FetchReportResultsRequest--;
}

core.List<api.GoogleCloudChannelV1Row> buildUnnamed10() => [
      buildGoogleCloudChannelV1Row(),
      buildGoogleCloudChannelV1Row(),
    ];

void checkUnnamed10(core.List<api.GoogleCloudChannelV1Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1Row(o[0]);
  checkGoogleCloudChannelV1Row(o[1]);
}

core.int buildCounterGoogleCloudChannelV1FetchReportResultsResponse = 0;
api.GoogleCloudChannelV1FetchReportResultsResponse
    buildGoogleCloudChannelV1FetchReportResultsResponse() {
  final o = api.GoogleCloudChannelV1FetchReportResultsResponse();
  buildCounterGoogleCloudChannelV1FetchReportResultsResponse++;
  if (buildCounterGoogleCloudChannelV1FetchReportResultsResponse < 3) {
    o.nextPageToken = 'foo';
    o.reportMetadata = buildGoogleCloudChannelV1ReportResultsMetadata();
    o.rows = buildUnnamed10();
  }
  buildCounterGoogleCloudChannelV1FetchReportResultsResponse--;
  return o;
}

void checkGoogleCloudChannelV1FetchReportResultsResponse(
    api.GoogleCloudChannelV1FetchReportResultsResponse o) {
  buildCounterGoogleCloudChannelV1FetchReportResultsResponse++;
  if (buildCounterGoogleCloudChannelV1FetchReportResultsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkGoogleCloudChannelV1ReportResultsMetadata(o.reportMetadata!);
    checkUnnamed10(o.rows!);
  }
  buildCounterGoogleCloudChannelV1FetchReportResultsResponse--;
}

core.int buildCounterGoogleCloudChannelV1ImportCustomerRequest = 0;
api.GoogleCloudChannelV1ImportCustomerRequest
    buildGoogleCloudChannelV1ImportCustomerRequest() {
  final o = api.GoogleCloudChannelV1ImportCustomerRequest();
  buildCounterGoogleCloudChannelV1ImportCustomerRequest++;
  if (buildCounterGoogleCloudChannelV1ImportCustomerRequest < 3) {
    o.authToken = 'foo';
    o.channelPartnerId = 'foo';
    o.cloudIdentityId = 'foo';
    o.customer = 'foo';
    o.domain = 'foo';
    o.overwriteIfExists = true;
    o.primaryAdminEmail = 'foo';
  }
  buildCounterGoogleCloudChannelV1ImportCustomerRequest--;
  return o;
}

void checkGoogleCloudChannelV1ImportCustomerRequest(
    api.GoogleCloudChannelV1ImportCustomerRequest o) {
  buildCounterGoogleCloudChannelV1ImportCustomerRequest++;
  if (buildCounterGoogleCloudChannelV1ImportCustomerRequest < 3) {
    unittest.expect(
      o.authToken!,
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
    unittest.expect(
      o.customer!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.domain!,
      unittest.equals('foo'),
    );
    unittest.expect(o.overwriteIfExists!, unittest.isTrue);
    unittest.expect(
      o.primaryAdminEmail!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1ImportCustomerRequest--;
}

core.List<api.GoogleCloudChannelV1ChannelPartnerLink> buildUnnamed11() => [
      buildGoogleCloudChannelV1ChannelPartnerLink(),
      buildGoogleCloudChannelV1ChannelPartnerLink(),
    ];

void checkUnnamed11(core.List<api.GoogleCloudChannelV1ChannelPartnerLink> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1ChannelPartnerLink(o[0]);
  checkGoogleCloudChannelV1ChannelPartnerLink(o[1]);
}

core.int buildCounterGoogleCloudChannelV1ListChannelPartnerLinksResponse = 0;
api.GoogleCloudChannelV1ListChannelPartnerLinksResponse
    buildGoogleCloudChannelV1ListChannelPartnerLinksResponse() {
  final o = api.GoogleCloudChannelV1ListChannelPartnerLinksResponse();
  buildCounterGoogleCloudChannelV1ListChannelPartnerLinksResponse++;
  if (buildCounterGoogleCloudChannelV1ListChannelPartnerLinksResponse < 3) {
    o.channelPartnerLinks = buildUnnamed11();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudChannelV1ListChannelPartnerLinksResponse--;
  return o;
}

void checkGoogleCloudChannelV1ListChannelPartnerLinksResponse(
    api.GoogleCloudChannelV1ListChannelPartnerLinksResponse o) {
  buildCounterGoogleCloudChannelV1ListChannelPartnerLinksResponse++;
  if (buildCounterGoogleCloudChannelV1ListChannelPartnerLinksResponse < 3) {
    checkUnnamed11(o.channelPartnerLinks!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1ListChannelPartnerLinksResponse--;
}

core.List<api.GoogleCloudChannelV1ChannelPartnerRepricingConfig>
    buildUnnamed12() => [
          buildGoogleCloudChannelV1ChannelPartnerRepricingConfig(),
          buildGoogleCloudChannelV1ChannelPartnerRepricingConfig(),
        ];

void checkUnnamed12(
    core.List<api.GoogleCloudChannelV1ChannelPartnerRepricingConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1ChannelPartnerRepricingConfig(o[0]);
  checkGoogleCloudChannelV1ChannelPartnerRepricingConfig(o[1]);
}

core.int
    buildCounterGoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse =
    0;
api.GoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse
    buildGoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse() {
  final o =
      api.GoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse();
  buildCounterGoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse++;
  if (buildCounterGoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse <
      3) {
    o.channelPartnerRepricingConfigs = buildUnnamed12();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse--;
  return o;
}

void checkGoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse(
    api.GoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse o) {
  buildCounterGoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse++;
  if (buildCounterGoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse <
      3) {
    checkUnnamed12(o.channelPartnerRepricingConfigs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse--;
}

core.List<api.GoogleCloudChannelV1CustomerRepricingConfig> buildUnnamed13() => [
      buildGoogleCloudChannelV1CustomerRepricingConfig(),
      buildGoogleCloudChannelV1CustomerRepricingConfig(),
    ];

void checkUnnamed13(
    core.List<api.GoogleCloudChannelV1CustomerRepricingConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1CustomerRepricingConfig(o[0]);
  checkGoogleCloudChannelV1CustomerRepricingConfig(o[1]);
}

core.int buildCounterGoogleCloudChannelV1ListCustomerRepricingConfigsResponse =
    0;
api.GoogleCloudChannelV1ListCustomerRepricingConfigsResponse
    buildGoogleCloudChannelV1ListCustomerRepricingConfigsResponse() {
  final o = api.GoogleCloudChannelV1ListCustomerRepricingConfigsResponse();
  buildCounterGoogleCloudChannelV1ListCustomerRepricingConfigsResponse++;
  if (buildCounterGoogleCloudChannelV1ListCustomerRepricingConfigsResponse <
      3) {
    o.customerRepricingConfigs = buildUnnamed13();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudChannelV1ListCustomerRepricingConfigsResponse--;
  return o;
}

void checkGoogleCloudChannelV1ListCustomerRepricingConfigsResponse(
    api.GoogleCloudChannelV1ListCustomerRepricingConfigsResponse o) {
  buildCounterGoogleCloudChannelV1ListCustomerRepricingConfigsResponse++;
  if (buildCounterGoogleCloudChannelV1ListCustomerRepricingConfigsResponse <
      3) {
    checkUnnamed13(o.customerRepricingConfigs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1ListCustomerRepricingConfigsResponse--;
}

core.List<api.GoogleCloudChannelV1Customer> buildUnnamed14() => [
      buildGoogleCloudChannelV1Customer(),
      buildGoogleCloudChannelV1Customer(),
    ];

void checkUnnamed14(core.List<api.GoogleCloudChannelV1Customer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1Customer(o[0]);
  checkGoogleCloudChannelV1Customer(o[1]);
}

core.int buildCounterGoogleCloudChannelV1ListCustomersResponse = 0;
api.GoogleCloudChannelV1ListCustomersResponse
    buildGoogleCloudChannelV1ListCustomersResponse() {
  final o = api.GoogleCloudChannelV1ListCustomersResponse();
  buildCounterGoogleCloudChannelV1ListCustomersResponse++;
  if (buildCounterGoogleCloudChannelV1ListCustomersResponse < 3) {
    o.customers = buildUnnamed14();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudChannelV1ListCustomersResponse--;
  return o;
}

void checkGoogleCloudChannelV1ListCustomersResponse(
    api.GoogleCloudChannelV1ListCustomersResponse o) {
  buildCounterGoogleCloudChannelV1ListCustomersResponse++;
  if (buildCounterGoogleCloudChannelV1ListCustomersResponse < 3) {
    checkUnnamed14(o.customers!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1ListCustomersResponse--;
}

core.List<api.GoogleCloudChannelV1EntitlementChange> buildUnnamed15() => [
      buildGoogleCloudChannelV1EntitlementChange(),
      buildGoogleCloudChannelV1EntitlementChange(),
    ];

void checkUnnamed15(core.List<api.GoogleCloudChannelV1EntitlementChange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1EntitlementChange(o[0]);
  checkGoogleCloudChannelV1EntitlementChange(o[1]);
}

core.int buildCounterGoogleCloudChannelV1ListEntitlementChangesResponse = 0;
api.GoogleCloudChannelV1ListEntitlementChangesResponse
    buildGoogleCloudChannelV1ListEntitlementChangesResponse() {
  final o = api.GoogleCloudChannelV1ListEntitlementChangesResponse();
  buildCounterGoogleCloudChannelV1ListEntitlementChangesResponse++;
  if (buildCounterGoogleCloudChannelV1ListEntitlementChangesResponse < 3) {
    o.entitlementChanges = buildUnnamed15();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudChannelV1ListEntitlementChangesResponse--;
  return o;
}

void checkGoogleCloudChannelV1ListEntitlementChangesResponse(
    api.GoogleCloudChannelV1ListEntitlementChangesResponse o) {
  buildCounterGoogleCloudChannelV1ListEntitlementChangesResponse++;
  if (buildCounterGoogleCloudChannelV1ListEntitlementChangesResponse < 3) {
    checkUnnamed15(o.entitlementChanges!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1ListEntitlementChangesResponse--;
}

core.List<api.GoogleCloudChannelV1Entitlement> buildUnnamed16() => [
      buildGoogleCloudChannelV1Entitlement(),
      buildGoogleCloudChannelV1Entitlement(),
    ];

void checkUnnamed16(core.List<api.GoogleCloudChannelV1Entitlement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1Entitlement(o[0]);
  checkGoogleCloudChannelV1Entitlement(o[1]);
}

core.int buildCounterGoogleCloudChannelV1ListEntitlementsResponse = 0;
api.GoogleCloudChannelV1ListEntitlementsResponse
    buildGoogleCloudChannelV1ListEntitlementsResponse() {
  final o = api.GoogleCloudChannelV1ListEntitlementsResponse();
  buildCounterGoogleCloudChannelV1ListEntitlementsResponse++;
  if (buildCounterGoogleCloudChannelV1ListEntitlementsResponse < 3) {
    o.entitlements = buildUnnamed16();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudChannelV1ListEntitlementsResponse--;
  return o;
}

void checkGoogleCloudChannelV1ListEntitlementsResponse(
    api.GoogleCloudChannelV1ListEntitlementsResponse o) {
  buildCounterGoogleCloudChannelV1ListEntitlementsResponse++;
  if (buildCounterGoogleCloudChannelV1ListEntitlementsResponse < 3) {
    checkUnnamed16(o.entitlements!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1ListEntitlementsResponse--;
}

core.List<api.GoogleCloudChannelV1Offer> buildUnnamed17() => [
      buildGoogleCloudChannelV1Offer(),
      buildGoogleCloudChannelV1Offer(),
    ];

void checkUnnamed17(core.List<api.GoogleCloudChannelV1Offer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1Offer(o[0]);
  checkGoogleCloudChannelV1Offer(o[1]);
}

core.int buildCounterGoogleCloudChannelV1ListOffersResponse = 0;
api.GoogleCloudChannelV1ListOffersResponse
    buildGoogleCloudChannelV1ListOffersResponse() {
  final o = api.GoogleCloudChannelV1ListOffersResponse();
  buildCounterGoogleCloudChannelV1ListOffersResponse++;
  if (buildCounterGoogleCloudChannelV1ListOffersResponse < 3) {
    o.nextPageToken = 'foo';
    o.offers = buildUnnamed17();
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
    checkUnnamed17(o.offers!);
  }
  buildCounterGoogleCloudChannelV1ListOffersResponse--;
}

core.List<api.GoogleCloudChannelV1Product> buildUnnamed18() => [
      buildGoogleCloudChannelV1Product(),
      buildGoogleCloudChannelV1Product(),
    ];

void checkUnnamed18(core.List<api.GoogleCloudChannelV1Product> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1Product(o[0]);
  checkGoogleCloudChannelV1Product(o[1]);
}

core.int buildCounterGoogleCloudChannelV1ListProductsResponse = 0;
api.GoogleCloudChannelV1ListProductsResponse
    buildGoogleCloudChannelV1ListProductsResponse() {
  final o = api.GoogleCloudChannelV1ListProductsResponse();
  buildCounterGoogleCloudChannelV1ListProductsResponse++;
  if (buildCounterGoogleCloudChannelV1ListProductsResponse < 3) {
    o.nextPageToken = 'foo';
    o.products = buildUnnamed18();
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
    checkUnnamed18(o.products!);
  }
  buildCounterGoogleCloudChannelV1ListProductsResponse--;
}

core.List<api.GoogleCloudChannelV1PurchasableOffer> buildUnnamed19() => [
      buildGoogleCloudChannelV1PurchasableOffer(),
      buildGoogleCloudChannelV1PurchasableOffer(),
    ];

void checkUnnamed19(core.List<api.GoogleCloudChannelV1PurchasableOffer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1PurchasableOffer(o[0]);
  checkGoogleCloudChannelV1PurchasableOffer(o[1]);
}

core.int buildCounterGoogleCloudChannelV1ListPurchasableOffersResponse = 0;
api.GoogleCloudChannelV1ListPurchasableOffersResponse
    buildGoogleCloudChannelV1ListPurchasableOffersResponse() {
  final o = api.GoogleCloudChannelV1ListPurchasableOffersResponse();
  buildCounterGoogleCloudChannelV1ListPurchasableOffersResponse++;
  if (buildCounterGoogleCloudChannelV1ListPurchasableOffersResponse < 3) {
    o.nextPageToken = 'foo';
    o.purchasableOffers = buildUnnamed19();
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
    checkUnnamed19(o.purchasableOffers!);
  }
  buildCounterGoogleCloudChannelV1ListPurchasableOffersResponse--;
}

core.List<api.GoogleCloudChannelV1PurchasableSku> buildUnnamed20() => [
      buildGoogleCloudChannelV1PurchasableSku(),
      buildGoogleCloudChannelV1PurchasableSku(),
    ];

void checkUnnamed20(core.List<api.GoogleCloudChannelV1PurchasableSku> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1PurchasableSku(o[0]);
  checkGoogleCloudChannelV1PurchasableSku(o[1]);
}

core.int buildCounterGoogleCloudChannelV1ListPurchasableSkusResponse = 0;
api.GoogleCloudChannelV1ListPurchasableSkusResponse
    buildGoogleCloudChannelV1ListPurchasableSkusResponse() {
  final o = api.GoogleCloudChannelV1ListPurchasableSkusResponse();
  buildCounterGoogleCloudChannelV1ListPurchasableSkusResponse++;
  if (buildCounterGoogleCloudChannelV1ListPurchasableSkusResponse < 3) {
    o.nextPageToken = 'foo';
    o.purchasableSkus = buildUnnamed20();
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
    checkUnnamed20(o.purchasableSkus!);
  }
  buildCounterGoogleCloudChannelV1ListPurchasableSkusResponse--;
}

core.List<api.GoogleCloudChannelV1Report> buildUnnamed21() => [
      buildGoogleCloudChannelV1Report(),
      buildGoogleCloudChannelV1Report(),
    ];

void checkUnnamed21(core.List<api.GoogleCloudChannelV1Report> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1Report(o[0]);
  checkGoogleCloudChannelV1Report(o[1]);
}

core.int buildCounterGoogleCloudChannelV1ListReportsResponse = 0;
api.GoogleCloudChannelV1ListReportsResponse
    buildGoogleCloudChannelV1ListReportsResponse() {
  final o = api.GoogleCloudChannelV1ListReportsResponse();
  buildCounterGoogleCloudChannelV1ListReportsResponse++;
  if (buildCounterGoogleCloudChannelV1ListReportsResponse < 3) {
    o.nextPageToken = 'foo';
    o.reports = buildUnnamed21();
  }
  buildCounterGoogleCloudChannelV1ListReportsResponse--;
  return o;
}

void checkGoogleCloudChannelV1ListReportsResponse(
    api.GoogleCloudChannelV1ListReportsResponse o) {
  buildCounterGoogleCloudChannelV1ListReportsResponse++;
  if (buildCounterGoogleCloudChannelV1ListReportsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed21(o.reports!);
  }
  buildCounterGoogleCloudChannelV1ListReportsResponse--;
}

core.List<api.GoogleCloudChannelV1BillableSku> buildUnnamed22() => [
      buildGoogleCloudChannelV1BillableSku(),
      buildGoogleCloudChannelV1BillableSku(),
    ];

void checkUnnamed22(core.List<api.GoogleCloudChannelV1BillableSku> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1BillableSku(o[0]);
  checkGoogleCloudChannelV1BillableSku(o[1]);
}

core.int buildCounterGoogleCloudChannelV1ListSkuGroupBillableSkusResponse = 0;
api.GoogleCloudChannelV1ListSkuGroupBillableSkusResponse
    buildGoogleCloudChannelV1ListSkuGroupBillableSkusResponse() {
  final o = api.GoogleCloudChannelV1ListSkuGroupBillableSkusResponse();
  buildCounterGoogleCloudChannelV1ListSkuGroupBillableSkusResponse++;
  if (buildCounterGoogleCloudChannelV1ListSkuGroupBillableSkusResponse < 3) {
    o.billableSkus = buildUnnamed22();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudChannelV1ListSkuGroupBillableSkusResponse--;
  return o;
}

void checkGoogleCloudChannelV1ListSkuGroupBillableSkusResponse(
    api.GoogleCloudChannelV1ListSkuGroupBillableSkusResponse o) {
  buildCounterGoogleCloudChannelV1ListSkuGroupBillableSkusResponse++;
  if (buildCounterGoogleCloudChannelV1ListSkuGroupBillableSkusResponse < 3) {
    checkUnnamed22(o.billableSkus!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1ListSkuGroupBillableSkusResponse--;
}

core.List<api.GoogleCloudChannelV1SkuGroup> buildUnnamed23() => [
      buildGoogleCloudChannelV1SkuGroup(),
      buildGoogleCloudChannelV1SkuGroup(),
    ];

void checkUnnamed23(core.List<api.GoogleCloudChannelV1SkuGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1SkuGroup(o[0]);
  checkGoogleCloudChannelV1SkuGroup(o[1]);
}

core.int buildCounterGoogleCloudChannelV1ListSkuGroupsResponse = 0;
api.GoogleCloudChannelV1ListSkuGroupsResponse
    buildGoogleCloudChannelV1ListSkuGroupsResponse() {
  final o = api.GoogleCloudChannelV1ListSkuGroupsResponse();
  buildCounterGoogleCloudChannelV1ListSkuGroupsResponse++;
  if (buildCounterGoogleCloudChannelV1ListSkuGroupsResponse < 3) {
    o.nextPageToken = 'foo';
    o.skuGroups = buildUnnamed23();
  }
  buildCounterGoogleCloudChannelV1ListSkuGroupsResponse--;
  return o;
}

void checkGoogleCloudChannelV1ListSkuGroupsResponse(
    api.GoogleCloudChannelV1ListSkuGroupsResponse o) {
  buildCounterGoogleCloudChannelV1ListSkuGroupsResponse++;
  if (buildCounterGoogleCloudChannelV1ListSkuGroupsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed23(o.skuGroups!);
  }
  buildCounterGoogleCloudChannelV1ListSkuGroupsResponse--;
}

core.List<api.GoogleCloudChannelV1Sku> buildUnnamed24() => [
      buildGoogleCloudChannelV1Sku(),
      buildGoogleCloudChannelV1Sku(),
    ];

void checkUnnamed24(core.List<api.GoogleCloudChannelV1Sku> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1Sku(o[0]);
  checkGoogleCloudChannelV1Sku(o[1]);
}

core.int buildCounterGoogleCloudChannelV1ListSkusResponse = 0;
api.GoogleCloudChannelV1ListSkusResponse
    buildGoogleCloudChannelV1ListSkusResponse() {
  final o = api.GoogleCloudChannelV1ListSkusResponse();
  buildCounterGoogleCloudChannelV1ListSkusResponse++;
  if (buildCounterGoogleCloudChannelV1ListSkusResponse < 3) {
    o.nextPageToken = 'foo';
    o.skus = buildUnnamed24();
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
    checkUnnamed24(o.skus!);
  }
  buildCounterGoogleCloudChannelV1ListSkusResponse--;
}

core.List<core.String> buildUnnamed25() => [
      'foo',
      'foo',
    ];

void checkUnnamed25(core.List<core.String> o) {
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
  final o = api.GoogleCloudChannelV1ListSubscribersResponse();
  buildCounterGoogleCloudChannelV1ListSubscribersResponse++;
  if (buildCounterGoogleCloudChannelV1ListSubscribersResponse < 3) {
    o.nextPageToken = 'foo';
    o.serviceAccounts = buildUnnamed25();
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
    checkUnnamed25(o.serviceAccounts!);
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
  final o = api.GoogleCloudChannelV1ListTransferableOffersRequest();
  buildCounterGoogleCloudChannelV1ListTransferableOffersRequest++;
  if (buildCounterGoogleCloudChannelV1ListTransferableOffersRequest < 3) {
    o.billingAccount = 'foo';
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
      o.billingAccount!,
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
    unittest.expect(
      o.sku!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1ListTransferableOffersRequest--;
}

core.List<api.GoogleCloudChannelV1TransferableOffer> buildUnnamed26() => [
      buildGoogleCloudChannelV1TransferableOffer(),
      buildGoogleCloudChannelV1TransferableOffer(),
    ];

void checkUnnamed26(core.List<api.GoogleCloudChannelV1TransferableOffer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1TransferableOffer(o[0]);
  checkGoogleCloudChannelV1TransferableOffer(o[1]);
}

core.int buildCounterGoogleCloudChannelV1ListTransferableOffersResponse = 0;
api.GoogleCloudChannelV1ListTransferableOffersResponse
    buildGoogleCloudChannelV1ListTransferableOffersResponse() {
  final o = api.GoogleCloudChannelV1ListTransferableOffersResponse();
  buildCounterGoogleCloudChannelV1ListTransferableOffersResponse++;
  if (buildCounterGoogleCloudChannelV1ListTransferableOffersResponse < 3) {
    o.nextPageToken = 'foo';
    o.transferableOffers = buildUnnamed26();
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
    checkUnnamed26(o.transferableOffers!);
  }
  buildCounterGoogleCloudChannelV1ListTransferableOffersResponse--;
}

core.int buildCounterGoogleCloudChannelV1ListTransferableSkusRequest = 0;
api.GoogleCloudChannelV1ListTransferableSkusRequest
    buildGoogleCloudChannelV1ListTransferableSkusRequest() {
  final o = api.GoogleCloudChannelV1ListTransferableSkusRequest();
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

core.List<api.GoogleCloudChannelV1TransferableSku> buildUnnamed27() => [
      buildGoogleCloudChannelV1TransferableSku(),
      buildGoogleCloudChannelV1TransferableSku(),
    ];

void checkUnnamed27(core.List<api.GoogleCloudChannelV1TransferableSku> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1TransferableSku(o[0]);
  checkGoogleCloudChannelV1TransferableSku(o[1]);
}

core.int buildCounterGoogleCloudChannelV1ListTransferableSkusResponse = 0;
api.GoogleCloudChannelV1ListTransferableSkusResponse
    buildGoogleCloudChannelV1ListTransferableSkusResponse() {
  final o = api.GoogleCloudChannelV1ListTransferableSkusResponse();
  buildCounterGoogleCloudChannelV1ListTransferableSkusResponse++;
  if (buildCounterGoogleCloudChannelV1ListTransferableSkusResponse < 3) {
    o.nextPageToken = 'foo';
    o.transferableSkus = buildUnnamed27();
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
    checkUnnamed27(o.transferableSkus!);
  }
  buildCounterGoogleCloudChannelV1ListTransferableSkusResponse--;
}

core.int buildCounterGoogleCloudChannelV1MarketingInfo = 0;
api.GoogleCloudChannelV1MarketingInfo buildGoogleCloudChannelV1MarketingInfo() {
  final o = api.GoogleCloudChannelV1MarketingInfo();
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
    checkGoogleCloudChannelV1Media(o.defaultLogo!);
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
  final o = api.GoogleCloudChannelV1Media();
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

core.List<api.GoogleCloudChannelV1ParameterDefinition> buildUnnamed28() => [
      buildGoogleCloudChannelV1ParameterDefinition(),
      buildGoogleCloudChannelV1ParameterDefinition(),
    ];

void checkUnnamed28(core.List<api.GoogleCloudChannelV1ParameterDefinition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1ParameterDefinition(o[0]);
  checkGoogleCloudChannelV1ParameterDefinition(o[1]);
}

core.List<api.GoogleCloudChannelV1PriceByResource> buildUnnamed29() => [
      buildGoogleCloudChannelV1PriceByResource(),
      buildGoogleCloudChannelV1PriceByResource(),
    ];

void checkUnnamed29(core.List<api.GoogleCloudChannelV1PriceByResource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1PriceByResource(o[0]);
  checkGoogleCloudChannelV1PriceByResource(o[1]);
}

core.int buildCounterGoogleCloudChannelV1Offer = 0;
api.GoogleCloudChannelV1Offer buildGoogleCloudChannelV1Offer() {
  final o = api.GoogleCloudChannelV1Offer();
  buildCounterGoogleCloudChannelV1Offer++;
  if (buildCounterGoogleCloudChannelV1Offer < 3) {
    o.constraints = buildGoogleCloudChannelV1Constraints();
    o.dealCode = 'foo';
    o.endTime = 'foo';
    o.marketingInfo = buildGoogleCloudChannelV1MarketingInfo();
    o.name = 'foo';
    o.parameterDefinitions = buildUnnamed28();
    o.plan = buildGoogleCloudChannelV1Plan();
    o.priceByResources = buildUnnamed29();
    o.sku = buildGoogleCloudChannelV1Sku();
    o.startTime = 'foo';
  }
  buildCounterGoogleCloudChannelV1Offer--;
  return o;
}

void checkGoogleCloudChannelV1Offer(api.GoogleCloudChannelV1Offer o) {
  buildCounterGoogleCloudChannelV1Offer++;
  if (buildCounterGoogleCloudChannelV1Offer < 3) {
    checkGoogleCloudChannelV1Constraints(o.constraints!);
    unittest.expect(
      o.dealCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkGoogleCloudChannelV1MarketingInfo(o.marketingInfo!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed28(o.parameterDefinitions!);
    checkGoogleCloudChannelV1Plan(o.plan!);
    checkUnnamed29(o.priceByResources!);
    checkGoogleCloudChannelV1Sku(o.sku!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1Offer--;
}

core.int buildCounterGoogleCloudChannelV1Parameter = 0;
api.GoogleCloudChannelV1Parameter buildGoogleCloudChannelV1Parameter() {
  final o = api.GoogleCloudChannelV1Parameter();
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
    checkGoogleCloudChannelV1Value(o.value!);
  }
  buildCounterGoogleCloudChannelV1Parameter--;
}

core.List<api.GoogleCloudChannelV1Value> buildUnnamed30() => [
      buildGoogleCloudChannelV1Value(),
      buildGoogleCloudChannelV1Value(),
    ];

void checkUnnamed30(core.List<api.GoogleCloudChannelV1Value> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1Value(o[0]);
  checkGoogleCloudChannelV1Value(o[1]);
}

core.int buildCounterGoogleCloudChannelV1ParameterDefinition = 0;
api.GoogleCloudChannelV1ParameterDefinition
    buildGoogleCloudChannelV1ParameterDefinition() {
  final o = api.GoogleCloudChannelV1ParameterDefinition();
  buildCounterGoogleCloudChannelV1ParameterDefinition++;
  if (buildCounterGoogleCloudChannelV1ParameterDefinition < 3) {
    o.allowedValues = buildUnnamed30();
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
    checkUnnamed30(o.allowedValues!);
    checkGoogleCloudChannelV1Value(o.maxValue!);
    checkGoogleCloudChannelV1Value(o.minValue!);
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

core.int buildCounterGoogleCloudChannelV1PercentageAdjustment = 0;
api.GoogleCloudChannelV1PercentageAdjustment
    buildGoogleCloudChannelV1PercentageAdjustment() {
  final o = api.GoogleCloudChannelV1PercentageAdjustment();
  buildCounterGoogleCloudChannelV1PercentageAdjustment++;
  if (buildCounterGoogleCloudChannelV1PercentageAdjustment < 3) {
    o.percentage = buildGoogleTypeDecimal();
  }
  buildCounterGoogleCloudChannelV1PercentageAdjustment--;
  return o;
}

void checkGoogleCloudChannelV1PercentageAdjustment(
    api.GoogleCloudChannelV1PercentageAdjustment o) {
  buildCounterGoogleCloudChannelV1PercentageAdjustment++;
  if (buildCounterGoogleCloudChannelV1PercentageAdjustment < 3) {
    checkGoogleTypeDecimal(o.percentage!);
  }
  buildCounterGoogleCloudChannelV1PercentageAdjustment--;
}

core.int buildCounterGoogleCloudChannelV1Period = 0;
api.GoogleCloudChannelV1Period buildGoogleCloudChannelV1Period() {
  final o = api.GoogleCloudChannelV1Period();
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
  final o = api.GoogleCloudChannelV1Plan();
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
    checkGoogleCloudChannelV1Period(o.paymentCycle!);
    unittest.expect(
      o.paymentPlan!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.paymentType!,
      unittest.equals('foo'),
    );
    checkGoogleCloudChannelV1Period(o.trialPeriod!);
  }
  buildCounterGoogleCloudChannelV1Plan--;
}

core.int buildCounterGoogleCloudChannelV1Price = 0;
api.GoogleCloudChannelV1Price buildGoogleCloudChannelV1Price() {
  final o = api.GoogleCloudChannelV1Price();
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
    checkGoogleTypeMoney(o.basePrice!);
    unittest.expect(
      o.discount!,
      unittest.equals(42.0),
    );
    checkGoogleTypeMoney(o.effectivePrice!);
    unittest.expect(
      o.externalPriceUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1Price--;
}

core.List<api.GoogleCloudChannelV1PricePhase> buildUnnamed31() => [
      buildGoogleCloudChannelV1PricePhase(),
      buildGoogleCloudChannelV1PricePhase(),
    ];

void checkUnnamed31(core.List<api.GoogleCloudChannelV1PricePhase> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1PricePhase(o[0]);
  checkGoogleCloudChannelV1PricePhase(o[1]);
}

core.int buildCounterGoogleCloudChannelV1PriceByResource = 0;
api.GoogleCloudChannelV1PriceByResource
    buildGoogleCloudChannelV1PriceByResource() {
  final o = api.GoogleCloudChannelV1PriceByResource();
  buildCounterGoogleCloudChannelV1PriceByResource++;
  if (buildCounterGoogleCloudChannelV1PriceByResource < 3) {
    o.price = buildGoogleCloudChannelV1Price();
    o.pricePhases = buildUnnamed31();
    o.resourceType = 'foo';
  }
  buildCounterGoogleCloudChannelV1PriceByResource--;
  return o;
}

void checkGoogleCloudChannelV1PriceByResource(
    api.GoogleCloudChannelV1PriceByResource o) {
  buildCounterGoogleCloudChannelV1PriceByResource++;
  if (buildCounterGoogleCloudChannelV1PriceByResource < 3) {
    checkGoogleCloudChannelV1Price(o.price!);
    checkUnnamed31(o.pricePhases!);
    unittest.expect(
      o.resourceType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1PriceByResource--;
}

core.List<api.GoogleCloudChannelV1PriceTier> buildUnnamed32() => [
      buildGoogleCloudChannelV1PriceTier(),
      buildGoogleCloudChannelV1PriceTier(),
    ];

void checkUnnamed32(core.List<api.GoogleCloudChannelV1PriceTier> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1PriceTier(o[0]);
  checkGoogleCloudChannelV1PriceTier(o[1]);
}

core.int buildCounterGoogleCloudChannelV1PricePhase = 0;
api.GoogleCloudChannelV1PricePhase buildGoogleCloudChannelV1PricePhase() {
  final o = api.GoogleCloudChannelV1PricePhase();
  buildCounterGoogleCloudChannelV1PricePhase++;
  if (buildCounterGoogleCloudChannelV1PricePhase < 3) {
    o.firstPeriod = 42;
    o.lastPeriod = 42;
    o.periodType = 'foo';
    o.price = buildGoogleCloudChannelV1Price();
    o.priceTiers = buildUnnamed32();
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
    checkGoogleCloudChannelV1Price(o.price!);
    checkUnnamed32(o.priceTiers!);
  }
  buildCounterGoogleCloudChannelV1PricePhase--;
}

core.int buildCounterGoogleCloudChannelV1PriceTier = 0;
api.GoogleCloudChannelV1PriceTier buildGoogleCloudChannelV1PriceTier() {
  final o = api.GoogleCloudChannelV1PriceTier();
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
    checkGoogleCloudChannelV1Price(o.price!);
  }
  buildCounterGoogleCloudChannelV1PriceTier--;
}

core.int buildCounterGoogleCloudChannelV1Product = 0;
api.GoogleCloudChannelV1Product buildGoogleCloudChannelV1Product() {
  final o = api.GoogleCloudChannelV1Product();
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
    checkGoogleCloudChannelV1MarketingInfo(o.marketingInfo!);
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
  final o = api.GoogleCloudChannelV1ProvisionCloudIdentityRequest();
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
    checkGoogleCloudChannelV1CloudIdentityInfo(o.cloudIdentityInfo!);
    checkGoogleCloudChannelV1AdminUser(o.user!);
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterGoogleCloudChannelV1ProvisionCloudIdentityRequest--;
}

core.int buildCounterGoogleCloudChannelV1ProvisionedService = 0;
api.GoogleCloudChannelV1ProvisionedService
    buildGoogleCloudChannelV1ProvisionedService() {
  final o = api.GoogleCloudChannelV1ProvisionedService();
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
  final o = api.GoogleCloudChannelV1PurchasableOffer();
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
    checkGoogleCloudChannelV1Offer(o.offer!);
  }
  buildCounterGoogleCloudChannelV1PurchasableOffer--;
}

core.int buildCounterGoogleCloudChannelV1PurchasableSku = 0;
api.GoogleCloudChannelV1PurchasableSku
    buildGoogleCloudChannelV1PurchasableSku() {
  final o = api.GoogleCloudChannelV1PurchasableSku();
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
    checkGoogleCloudChannelV1Sku(o.sku!);
  }
  buildCounterGoogleCloudChannelV1PurchasableSku--;
}

core.List<api.GoogleCloudChannelV1SkuPurchaseGroup> buildUnnamed33() => [
      buildGoogleCloudChannelV1SkuPurchaseGroup(),
      buildGoogleCloudChannelV1SkuPurchaseGroup(),
    ];

void checkUnnamed33(core.List<api.GoogleCloudChannelV1SkuPurchaseGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1SkuPurchaseGroup(o[0]);
  checkGoogleCloudChannelV1SkuPurchaseGroup(o[1]);
}

core.int buildCounterGoogleCloudChannelV1QueryEligibleBillingAccountsResponse =
    0;
api.GoogleCloudChannelV1QueryEligibleBillingAccountsResponse
    buildGoogleCloudChannelV1QueryEligibleBillingAccountsResponse() {
  final o = api.GoogleCloudChannelV1QueryEligibleBillingAccountsResponse();
  buildCounterGoogleCloudChannelV1QueryEligibleBillingAccountsResponse++;
  if (buildCounterGoogleCloudChannelV1QueryEligibleBillingAccountsResponse <
      3) {
    o.skuPurchaseGroups = buildUnnamed33();
  }
  buildCounterGoogleCloudChannelV1QueryEligibleBillingAccountsResponse--;
  return o;
}

void checkGoogleCloudChannelV1QueryEligibleBillingAccountsResponse(
    api.GoogleCloudChannelV1QueryEligibleBillingAccountsResponse o) {
  buildCounterGoogleCloudChannelV1QueryEligibleBillingAccountsResponse++;
  if (buildCounterGoogleCloudChannelV1QueryEligibleBillingAccountsResponse <
      3) {
    checkUnnamed33(o.skuPurchaseGroups!);
  }
  buildCounterGoogleCloudChannelV1QueryEligibleBillingAccountsResponse--;
}

core.int buildCounterGoogleCloudChannelV1RegisterSubscriberRequest = 0;
api.GoogleCloudChannelV1RegisterSubscriberRequest
    buildGoogleCloudChannelV1RegisterSubscriberRequest() {
  final o = api.GoogleCloudChannelV1RegisterSubscriberRequest();
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
  final o = api.GoogleCloudChannelV1RegisterSubscriberResponse();
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
  final o = api.GoogleCloudChannelV1RenewalSettings();
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
    checkGoogleCloudChannelV1Period(o.paymentCycle!);
    unittest.expect(
      o.paymentPlan!,
      unittest.equals('foo'),
    );
    unittest.expect(o.resizeUnitCount!, unittest.isTrue);
  }
  buildCounterGoogleCloudChannelV1RenewalSettings--;
}

core.List<api.GoogleCloudChannelV1Column> buildUnnamed34() => [
      buildGoogleCloudChannelV1Column(),
      buildGoogleCloudChannelV1Column(),
    ];

void checkUnnamed34(core.List<api.GoogleCloudChannelV1Column> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1Column(o[0]);
  checkGoogleCloudChannelV1Column(o[1]);
}

core.int buildCounterGoogleCloudChannelV1Report = 0;
api.GoogleCloudChannelV1Report buildGoogleCloudChannelV1Report() {
  final o = api.GoogleCloudChannelV1Report();
  buildCounterGoogleCloudChannelV1Report++;
  if (buildCounterGoogleCloudChannelV1Report < 3) {
    o.columns = buildUnnamed34();
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudChannelV1Report--;
  return o;
}

void checkGoogleCloudChannelV1Report(api.GoogleCloudChannelV1Report o) {
  buildCounterGoogleCloudChannelV1Report++;
  if (buildCounterGoogleCloudChannelV1Report < 3) {
    checkUnnamed34(o.columns!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1Report--;
}

core.int buildCounterGoogleCloudChannelV1ReportResultsMetadata = 0;
api.GoogleCloudChannelV1ReportResultsMetadata
    buildGoogleCloudChannelV1ReportResultsMetadata() {
  final o = api.GoogleCloudChannelV1ReportResultsMetadata();
  buildCounterGoogleCloudChannelV1ReportResultsMetadata++;
  if (buildCounterGoogleCloudChannelV1ReportResultsMetadata < 3) {
    o.dateRange = buildGoogleCloudChannelV1DateRange();
    o.precedingDateRange = buildGoogleCloudChannelV1DateRange();
    o.report = buildGoogleCloudChannelV1Report();
    o.rowCount = 'foo';
  }
  buildCounterGoogleCloudChannelV1ReportResultsMetadata--;
  return o;
}

void checkGoogleCloudChannelV1ReportResultsMetadata(
    api.GoogleCloudChannelV1ReportResultsMetadata o) {
  buildCounterGoogleCloudChannelV1ReportResultsMetadata++;
  if (buildCounterGoogleCloudChannelV1ReportResultsMetadata < 3) {
    checkGoogleCloudChannelV1DateRange(o.dateRange!);
    checkGoogleCloudChannelV1DateRange(o.precedingDateRange!);
    checkGoogleCloudChannelV1Report(o.report!);
    unittest.expect(
      o.rowCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1ReportResultsMetadata--;
}

core.int buildCounterGoogleCloudChannelV1ReportValue = 0;
api.GoogleCloudChannelV1ReportValue buildGoogleCloudChannelV1ReportValue() {
  final o = api.GoogleCloudChannelV1ReportValue();
  buildCounterGoogleCloudChannelV1ReportValue++;
  if (buildCounterGoogleCloudChannelV1ReportValue < 3) {
    o.dateTimeValue = buildGoogleTypeDateTime();
    o.dateValue = buildGoogleTypeDate();
    o.decimalValue = buildGoogleTypeDecimal();
    o.intValue = 'foo';
    o.moneyValue = buildGoogleTypeMoney();
    o.stringValue = 'foo';
  }
  buildCounterGoogleCloudChannelV1ReportValue--;
  return o;
}

void checkGoogleCloudChannelV1ReportValue(
    api.GoogleCloudChannelV1ReportValue o) {
  buildCounterGoogleCloudChannelV1ReportValue++;
  if (buildCounterGoogleCloudChannelV1ReportValue < 3) {
    checkGoogleTypeDateTime(o.dateTimeValue!);
    checkGoogleTypeDate(o.dateValue!);
    checkGoogleTypeDecimal(o.decimalValue!);
    unittest.expect(
      o.intValue!,
      unittest.equals('foo'),
    );
    checkGoogleTypeMoney(o.moneyValue!);
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1ReportValue--;
}

core.int buildCounterGoogleCloudChannelV1RepricingAdjustment = 0;
api.GoogleCloudChannelV1RepricingAdjustment
    buildGoogleCloudChannelV1RepricingAdjustment() {
  final o = api.GoogleCloudChannelV1RepricingAdjustment();
  buildCounterGoogleCloudChannelV1RepricingAdjustment++;
  if (buildCounterGoogleCloudChannelV1RepricingAdjustment < 3) {
    o.percentageAdjustment = buildGoogleCloudChannelV1PercentageAdjustment();
  }
  buildCounterGoogleCloudChannelV1RepricingAdjustment--;
  return o;
}

void checkGoogleCloudChannelV1RepricingAdjustment(
    api.GoogleCloudChannelV1RepricingAdjustment o) {
  buildCounterGoogleCloudChannelV1RepricingAdjustment++;
  if (buildCounterGoogleCloudChannelV1RepricingAdjustment < 3) {
    checkGoogleCloudChannelV1PercentageAdjustment(o.percentageAdjustment!);
  }
  buildCounterGoogleCloudChannelV1RepricingAdjustment--;
}

core.int buildCounterGoogleCloudChannelV1RepricingCondition = 0;
api.GoogleCloudChannelV1RepricingCondition
    buildGoogleCloudChannelV1RepricingCondition() {
  final o = api.GoogleCloudChannelV1RepricingCondition();
  buildCounterGoogleCloudChannelV1RepricingCondition++;
  if (buildCounterGoogleCloudChannelV1RepricingCondition < 3) {
    o.skuGroupCondition = buildGoogleCloudChannelV1SkuGroupCondition();
  }
  buildCounterGoogleCloudChannelV1RepricingCondition--;
  return o;
}

void checkGoogleCloudChannelV1RepricingCondition(
    api.GoogleCloudChannelV1RepricingCondition o) {
  buildCounterGoogleCloudChannelV1RepricingCondition++;
  if (buildCounterGoogleCloudChannelV1RepricingCondition < 3) {
    checkGoogleCloudChannelV1SkuGroupCondition(o.skuGroupCondition!);
  }
  buildCounterGoogleCloudChannelV1RepricingCondition--;
}

core.List<api.GoogleCloudChannelV1ConditionalOverride> buildUnnamed35() => [
      buildGoogleCloudChannelV1ConditionalOverride(),
      buildGoogleCloudChannelV1ConditionalOverride(),
    ];

void checkUnnamed35(core.List<api.GoogleCloudChannelV1ConditionalOverride> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1ConditionalOverride(o[0]);
  checkGoogleCloudChannelV1ConditionalOverride(o[1]);
}

core.int buildCounterGoogleCloudChannelV1RepricingConfig = 0;
api.GoogleCloudChannelV1RepricingConfig
    buildGoogleCloudChannelV1RepricingConfig() {
  final o = api.GoogleCloudChannelV1RepricingConfig();
  buildCounterGoogleCloudChannelV1RepricingConfig++;
  if (buildCounterGoogleCloudChannelV1RepricingConfig < 3) {
    o.adjustment = buildGoogleCloudChannelV1RepricingAdjustment();
    o.channelPartnerGranularity =
        buildGoogleCloudChannelV1RepricingConfigChannelPartnerGranularity();
    o.conditionalOverrides = buildUnnamed35();
    o.effectiveInvoiceMonth = buildGoogleTypeDate();
    o.entitlementGranularity =
        buildGoogleCloudChannelV1RepricingConfigEntitlementGranularity();
    o.rebillingBasis = 'foo';
  }
  buildCounterGoogleCloudChannelV1RepricingConfig--;
  return o;
}

void checkGoogleCloudChannelV1RepricingConfig(
    api.GoogleCloudChannelV1RepricingConfig o) {
  buildCounterGoogleCloudChannelV1RepricingConfig++;
  if (buildCounterGoogleCloudChannelV1RepricingConfig < 3) {
    checkGoogleCloudChannelV1RepricingAdjustment(o.adjustment!);
    checkGoogleCloudChannelV1RepricingConfigChannelPartnerGranularity(
        o.channelPartnerGranularity!);
    checkUnnamed35(o.conditionalOverrides!);
    checkGoogleTypeDate(o.effectiveInvoiceMonth!);
    checkGoogleCloudChannelV1RepricingConfigEntitlementGranularity(
        o.entitlementGranularity!);
    unittest.expect(
      o.rebillingBasis!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1RepricingConfig--;
}

core.int
    buildCounterGoogleCloudChannelV1RepricingConfigChannelPartnerGranularity =
    0;
api.GoogleCloudChannelV1RepricingConfigChannelPartnerGranularity
    buildGoogleCloudChannelV1RepricingConfigChannelPartnerGranularity() {
  final o = api.GoogleCloudChannelV1RepricingConfigChannelPartnerGranularity();
  buildCounterGoogleCloudChannelV1RepricingConfigChannelPartnerGranularity++;
  if (buildCounterGoogleCloudChannelV1RepricingConfigChannelPartnerGranularity <
      3) {}
  buildCounterGoogleCloudChannelV1RepricingConfigChannelPartnerGranularity--;
  return o;
}

void checkGoogleCloudChannelV1RepricingConfigChannelPartnerGranularity(
    api.GoogleCloudChannelV1RepricingConfigChannelPartnerGranularity o) {
  buildCounterGoogleCloudChannelV1RepricingConfigChannelPartnerGranularity++;
  if (buildCounterGoogleCloudChannelV1RepricingConfigChannelPartnerGranularity <
      3) {}
  buildCounterGoogleCloudChannelV1RepricingConfigChannelPartnerGranularity--;
}

core.int buildCounterGoogleCloudChannelV1RepricingConfigEntitlementGranularity =
    0;
api.GoogleCloudChannelV1RepricingConfigEntitlementGranularity
    buildGoogleCloudChannelV1RepricingConfigEntitlementGranularity() {
  final o = api.GoogleCloudChannelV1RepricingConfigEntitlementGranularity();
  buildCounterGoogleCloudChannelV1RepricingConfigEntitlementGranularity++;
  if (buildCounterGoogleCloudChannelV1RepricingConfigEntitlementGranularity <
      3) {
    o.entitlement = 'foo';
  }
  buildCounterGoogleCloudChannelV1RepricingConfigEntitlementGranularity--;
  return o;
}

void checkGoogleCloudChannelV1RepricingConfigEntitlementGranularity(
    api.GoogleCloudChannelV1RepricingConfigEntitlementGranularity o) {
  buildCounterGoogleCloudChannelV1RepricingConfigEntitlementGranularity++;
  if (buildCounterGoogleCloudChannelV1RepricingConfigEntitlementGranularity <
      3) {
    unittest.expect(
      o.entitlement!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1RepricingConfigEntitlementGranularity--;
}

core.List<api.GoogleCloudChannelV1ReportValue> buildUnnamed36() => [
      buildGoogleCloudChannelV1ReportValue(),
      buildGoogleCloudChannelV1ReportValue(),
    ];

void checkUnnamed36(core.List<api.GoogleCloudChannelV1ReportValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1ReportValue(o[0]);
  checkGoogleCloudChannelV1ReportValue(o[1]);
}

core.int buildCounterGoogleCloudChannelV1Row = 0;
api.GoogleCloudChannelV1Row buildGoogleCloudChannelV1Row() {
  final o = api.GoogleCloudChannelV1Row();
  buildCounterGoogleCloudChannelV1Row++;
  if (buildCounterGoogleCloudChannelV1Row < 3) {
    o.partitionKey = 'foo';
    o.values = buildUnnamed36();
  }
  buildCounterGoogleCloudChannelV1Row--;
  return o;
}

void checkGoogleCloudChannelV1Row(api.GoogleCloudChannelV1Row o) {
  buildCounterGoogleCloudChannelV1Row++;
  if (buildCounterGoogleCloudChannelV1Row < 3) {
    unittest.expect(
      o.partitionKey!,
      unittest.equals('foo'),
    );
    checkUnnamed36(o.values!);
  }
  buildCounterGoogleCloudChannelV1Row--;
}

core.int buildCounterGoogleCloudChannelV1RunReportJobRequest = 0;
api.GoogleCloudChannelV1RunReportJobRequest
    buildGoogleCloudChannelV1RunReportJobRequest() {
  final o = api.GoogleCloudChannelV1RunReportJobRequest();
  buildCounterGoogleCloudChannelV1RunReportJobRequest++;
  if (buildCounterGoogleCloudChannelV1RunReportJobRequest < 3) {
    o.dateRange = buildGoogleCloudChannelV1DateRange();
    o.filter = 'foo';
    o.languageCode = 'foo';
  }
  buildCounterGoogleCloudChannelV1RunReportJobRequest--;
  return o;
}

void checkGoogleCloudChannelV1RunReportJobRequest(
    api.GoogleCloudChannelV1RunReportJobRequest o) {
  buildCounterGoogleCloudChannelV1RunReportJobRequest++;
  if (buildCounterGoogleCloudChannelV1RunReportJobRequest < 3) {
    checkGoogleCloudChannelV1DateRange(o.dateRange!);
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1RunReportJobRequest--;
}

core.int buildCounterGoogleCloudChannelV1Sku = 0;
api.GoogleCloudChannelV1Sku buildGoogleCloudChannelV1Sku() {
  final o = api.GoogleCloudChannelV1Sku();
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
    checkGoogleCloudChannelV1MarketingInfo(o.marketingInfo!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleCloudChannelV1Product(o.product!);
  }
  buildCounterGoogleCloudChannelV1Sku--;
}

core.int buildCounterGoogleCloudChannelV1SkuGroup = 0;
api.GoogleCloudChannelV1SkuGroup buildGoogleCloudChannelV1SkuGroup() {
  final o = api.GoogleCloudChannelV1SkuGroup();
  buildCounterGoogleCloudChannelV1SkuGroup++;
  if (buildCounterGoogleCloudChannelV1SkuGroup < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudChannelV1SkuGroup--;
  return o;
}

void checkGoogleCloudChannelV1SkuGroup(api.GoogleCloudChannelV1SkuGroup o) {
  buildCounterGoogleCloudChannelV1SkuGroup++;
  if (buildCounterGoogleCloudChannelV1SkuGroup < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1SkuGroup--;
}

core.int buildCounterGoogleCloudChannelV1SkuGroupCondition = 0;
api.GoogleCloudChannelV1SkuGroupCondition
    buildGoogleCloudChannelV1SkuGroupCondition() {
  final o = api.GoogleCloudChannelV1SkuGroupCondition();
  buildCounterGoogleCloudChannelV1SkuGroupCondition++;
  if (buildCounterGoogleCloudChannelV1SkuGroupCondition < 3) {
    o.skuGroup = 'foo';
  }
  buildCounterGoogleCloudChannelV1SkuGroupCondition--;
  return o;
}

void checkGoogleCloudChannelV1SkuGroupCondition(
    api.GoogleCloudChannelV1SkuGroupCondition o) {
  buildCounterGoogleCloudChannelV1SkuGroupCondition++;
  if (buildCounterGoogleCloudChannelV1SkuGroupCondition < 3) {
    unittest.expect(
      o.skuGroup!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1SkuGroupCondition--;
}

core.List<api.GoogleCloudChannelV1BillingAccountPurchaseInfo>
    buildUnnamed37() => [
          buildGoogleCloudChannelV1BillingAccountPurchaseInfo(),
          buildGoogleCloudChannelV1BillingAccountPurchaseInfo(),
        ];

void checkUnnamed37(
    core.List<api.GoogleCloudChannelV1BillingAccountPurchaseInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1BillingAccountPurchaseInfo(o[0]);
  checkGoogleCloudChannelV1BillingAccountPurchaseInfo(o[1]);
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

core.int buildCounterGoogleCloudChannelV1SkuPurchaseGroup = 0;
api.GoogleCloudChannelV1SkuPurchaseGroup
    buildGoogleCloudChannelV1SkuPurchaseGroup() {
  final o = api.GoogleCloudChannelV1SkuPurchaseGroup();
  buildCounterGoogleCloudChannelV1SkuPurchaseGroup++;
  if (buildCounterGoogleCloudChannelV1SkuPurchaseGroup < 3) {
    o.billingAccountPurchaseInfos = buildUnnamed37();
    o.skus = buildUnnamed38();
  }
  buildCounterGoogleCloudChannelV1SkuPurchaseGroup--;
  return o;
}

void checkGoogleCloudChannelV1SkuPurchaseGroup(
    api.GoogleCloudChannelV1SkuPurchaseGroup o) {
  buildCounterGoogleCloudChannelV1SkuPurchaseGroup++;
  if (buildCounterGoogleCloudChannelV1SkuPurchaseGroup < 3) {
    checkUnnamed37(o.billingAccountPurchaseInfos!);
    checkUnnamed38(o.skus!);
  }
  buildCounterGoogleCloudChannelV1SkuPurchaseGroup--;
}

core.int buildCounterGoogleCloudChannelV1StartPaidServiceRequest = 0;
api.GoogleCloudChannelV1StartPaidServiceRequest
    buildGoogleCloudChannelV1StartPaidServiceRequest() {
  final o = api.GoogleCloudChannelV1StartPaidServiceRequest();
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

core.int buildCounterGoogleCloudChannelV1SuspendEntitlementRequest = 0;
api.GoogleCloudChannelV1SuspendEntitlementRequest
    buildGoogleCloudChannelV1SuspendEntitlementRequest() {
  final o = api.GoogleCloudChannelV1SuspendEntitlementRequest();
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
  final o = api.GoogleCloudChannelV1TransferEligibility();
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

core.List<api.GoogleCloudChannelV1Entitlement> buildUnnamed39() => [
      buildGoogleCloudChannelV1Entitlement(),
      buildGoogleCloudChannelV1Entitlement(),
    ];

void checkUnnamed39(core.List<api.GoogleCloudChannelV1Entitlement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1Entitlement(o[0]);
  checkGoogleCloudChannelV1Entitlement(o[1]);
}

core.int buildCounterGoogleCloudChannelV1TransferEntitlementsRequest = 0;
api.GoogleCloudChannelV1TransferEntitlementsRequest
    buildGoogleCloudChannelV1TransferEntitlementsRequest() {
  final o = api.GoogleCloudChannelV1TransferEntitlementsRequest();
  buildCounterGoogleCloudChannelV1TransferEntitlementsRequest++;
  if (buildCounterGoogleCloudChannelV1TransferEntitlementsRequest < 3) {
    o.authToken = 'foo';
    o.entitlements = buildUnnamed39();
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
    checkUnnamed39(o.entitlements!);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1TransferEntitlementsRequest--;
}

core.List<api.GoogleCloudChannelV1Entitlement> buildUnnamed40() => [
      buildGoogleCloudChannelV1Entitlement(),
      buildGoogleCloudChannelV1Entitlement(),
    ];

void checkUnnamed40(core.List<api.GoogleCloudChannelV1Entitlement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudChannelV1Entitlement(o[0]);
  checkGoogleCloudChannelV1Entitlement(o[1]);
}

core.int buildCounterGoogleCloudChannelV1TransferEntitlementsToGoogleRequest =
    0;
api.GoogleCloudChannelV1TransferEntitlementsToGoogleRequest
    buildGoogleCloudChannelV1TransferEntitlementsToGoogleRequest() {
  final o = api.GoogleCloudChannelV1TransferEntitlementsToGoogleRequest();
  buildCounterGoogleCloudChannelV1TransferEntitlementsToGoogleRequest++;
  if (buildCounterGoogleCloudChannelV1TransferEntitlementsToGoogleRequest < 3) {
    o.entitlements = buildUnnamed40();
    o.requestId = 'foo';
  }
  buildCounterGoogleCloudChannelV1TransferEntitlementsToGoogleRequest--;
  return o;
}

void checkGoogleCloudChannelV1TransferEntitlementsToGoogleRequest(
    api.GoogleCloudChannelV1TransferEntitlementsToGoogleRequest o) {
  buildCounterGoogleCloudChannelV1TransferEntitlementsToGoogleRequest++;
  if (buildCounterGoogleCloudChannelV1TransferEntitlementsToGoogleRequest < 3) {
    checkUnnamed40(o.entitlements!);
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
  final o = api.GoogleCloudChannelV1TransferableOffer();
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
    checkGoogleCloudChannelV1Offer(o.offer!);
  }
  buildCounterGoogleCloudChannelV1TransferableOffer--;
}

core.int buildCounterGoogleCloudChannelV1TransferableSku = 0;
api.GoogleCloudChannelV1TransferableSku
    buildGoogleCloudChannelV1TransferableSku() {
  final o = api.GoogleCloudChannelV1TransferableSku();
  buildCounterGoogleCloudChannelV1TransferableSku++;
  if (buildCounterGoogleCloudChannelV1TransferableSku < 3) {
    o.legacySku = buildGoogleCloudChannelV1Sku();
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
    checkGoogleCloudChannelV1Sku(o.legacySku!);
    checkGoogleCloudChannelV1Sku(o.sku!);
    checkGoogleCloudChannelV1TransferEligibility(o.transferEligibility!);
  }
  buildCounterGoogleCloudChannelV1TransferableSku--;
}

core.int buildCounterGoogleCloudChannelV1TrialSettings = 0;
api.GoogleCloudChannelV1TrialSettings buildGoogleCloudChannelV1TrialSettings() {
  final o = api.GoogleCloudChannelV1TrialSettings();
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
  final o = api.GoogleCloudChannelV1UnregisterSubscriberRequest();
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
  final o = api.GoogleCloudChannelV1UnregisterSubscriberResponse();
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
  final o = api.GoogleCloudChannelV1UpdateChannelPartnerLinkRequest();
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
    checkGoogleCloudChannelV1ChannelPartnerLink(o.channelPartnerLink!);
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1UpdateChannelPartnerLinkRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed41() => {
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

void checkUnnamed41(core.Map<core.String, core.Object?> o) {
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
  final o = api.GoogleCloudChannelV1Value();
  buildCounterGoogleCloudChannelV1Value++;
  if (buildCounterGoogleCloudChannelV1Value < 3) {
    o.boolValue = true;
    o.doubleValue = 42.0;
    o.int64Value = 'foo';
    o.protoValue = buildUnnamed41();
    o.stringValue = 'foo';
  }
  buildCounterGoogleCloudChannelV1Value--;
  return o;
}

void checkGoogleCloudChannelV1Value(api.GoogleCloudChannelV1Value o) {
  buildCounterGoogleCloudChannelV1Value++;
  if (buildCounterGoogleCloudChannelV1Value < 3) {
    unittest.expect(o.boolValue!, unittest.isTrue);
    unittest.expect(
      o.doubleValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.int64Value!,
      unittest.equals('foo'),
    );
    checkUnnamed41(o.protoValue!);
    unittest.expect(
      o.stringValue!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleCloudChannelV1Value--;
}

core.int buildCounterGoogleLongrunningCancelOperationRequest = 0;
api.GoogleLongrunningCancelOperationRequest
    buildGoogleLongrunningCancelOperationRequest() {
  final o = api.GoogleLongrunningCancelOperationRequest();
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

core.List<api.GoogleLongrunningOperation> buildUnnamed42() => [
      buildGoogleLongrunningOperation(),
      buildGoogleLongrunningOperation(),
    ];

void checkUnnamed42(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0]);
  checkGoogleLongrunningOperation(o[1]);
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
api.GoogleLongrunningListOperationsResponse
    buildGoogleLongrunningListOperationsResponse() {
  final o = api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed42();
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
    checkUnnamed42(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed43() => {
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

void checkUnnamed43(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed44() => {
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

void checkUnnamed44(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed43();
    o.name = 'foo';
    o.response = buildUnnamed44();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed43(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed44(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  final o = api.GoogleProtobufEmpty();
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

core.Map<core.String, core.Object?> buildUnnamed45() => {
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

void checkUnnamed45(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed46() => [
      buildUnnamed45(),
      buildUnnamed45(),
    ];

void checkUnnamed46(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed45(o[0]);
  checkUnnamed45(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed46();
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
    checkUnnamed46(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

core.int buildCounterGoogleTypeDate = 0;
api.GoogleTypeDate buildGoogleTypeDate() {
  final o = api.GoogleTypeDate();
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
    o.day = 42;
    o.month = 42;
    o.year = 42;
  }
  buildCounterGoogleTypeDate--;
  return o;
}

void checkGoogleTypeDate(api.GoogleTypeDate o) {
  buildCounterGoogleTypeDate++;
  if (buildCounterGoogleTypeDate < 3) {
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
  buildCounterGoogleTypeDate--;
}

core.int buildCounterGoogleTypeDateTime = 0;
api.GoogleTypeDateTime buildGoogleTypeDateTime() {
  final o = api.GoogleTypeDateTime();
  buildCounterGoogleTypeDateTime++;
  if (buildCounterGoogleTypeDateTime < 3) {
    o.day = 42;
    o.hours = 42;
    o.minutes = 42;
    o.month = 42;
    o.nanos = 42;
    o.seconds = 42;
    o.timeZone = buildGoogleTypeTimeZone();
    o.utcOffset = 'foo';
    o.year = 42;
  }
  buildCounterGoogleTypeDateTime--;
  return o;
}

void checkGoogleTypeDateTime(api.GoogleTypeDateTime o) {
  buildCounterGoogleTypeDateTime++;
  if (buildCounterGoogleTypeDateTime < 3) {
    unittest.expect(
      o.day!,
      unittest.equals(42),
    );
    unittest.expect(
      o.hours!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minutes!,
      unittest.equals(42),
    );
    unittest.expect(
      o.month!,
      unittest.equals(42),
    );
    unittest.expect(
      o.nanos!,
      unittest.equals(42),
    );
    unittest.expect(
      o.seconds!,
      unittest.equals(42),
    );
    checkGoogleTypeTimeZone(o.timeZone!);
    unittest.expect(
      o.utcOffset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.year!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleTypeDateTime--;
}

core.int buildCounterGoogleTypeDecimal = 0;
api.GoogleTypeDecimal buildGoogleTypeDecimal() {
  final o = api.GoogleTypeDecimal();
  buildCounterGoogleTypeDecimal++;
  if (buildCounterGoogleTypeDecimal < 3) {
    o.value = 'foo';
  }
  buildCounterGoogleTypeDecimal--;
  return o;
}

void checkGoogleTypeDecimal(api.GoogleTypeDecimal o) {
  buildCounterGoogleTypeDecimal++;
  if (buildCounterGoogleTypeDecimal < 3) {
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleTypeDecimal--;
}

core.int buildCounterGoogleTypeMoney = 0;
api.GoogleTypeMoney buildGoogleTypeMoney() {
  final o = api.GoogleTypeMoney();
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

core.List<core.String> buildUnnamed47() => [
      'foo',
      'foo',
    ];

void checkUnnamed47(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed48() => [
      'foo',
      'foo',
    ];

void checkUnnamed48(core.List<core.String> o) {
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
  final o = api.GoogleTypePostalAddress();
  buildCounterGoogleTypePostalAddress++;
  if (buildCounterGoogleTypePostalAddress < 3) {
    o.addressLines = buildUnnamed47();
    o.administrativeArea = 'foo';
    o.languageCode = 'foo';
    o.locality = 'foo';
    o.organization = 'foo';
    o.postalCode = 'foo';
    o.recipients = buildUnnamed48();
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
    checkUnnamed47(o.addressLines!);
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
    checkUnnamed48(o.recipients!);
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

core.int buildCounterGoogleTypeTimeZone = 0;
api.GoogleTypeTimeZone buildGoogleTypeTimeZone() {
  final o = api.GoogleTypeTimeZone();
  buildCounterGoogleTypeTimeZone++;
  if (buildCounterGoogleTypeTimeZone < 3) {
    o.id = 'foo';
    o.version = 'foo';
  }
  buildCounterGoogleTypeTimeZone--;
  return o;
}

void checkGoogleTypeTimeZone(api.GoogleTypeTimeZone o) {
  buildCounterGoogleTypeTimeZone++;
  if (buildCounterGoogleTypeTimeZone < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleTypeTimeZone--;
}

core.List<core.String> buildUnnamed49() => [
      'foo',
      'foo',
    ];

void checkUnnamed49(core.List<core.String> o) {
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
  unittest.group('obj-schema-GoogleCloudChannelV1ActivateEntitlementRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ActivateEntitlementRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1ActivateEntitlementRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ActivateEntitlementRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1AdminUser', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1AdminUser();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1AdminUser.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1AdminUser(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1AssociationInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1AssociationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1AssociationInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1AssociationInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1BillableSku', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1BillableSku();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1BillableSku.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1BillableSku(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1BillingAccount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1BillingAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1BillingAccount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1BillingAccount(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1BillingAccountPurchaseInfo',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1BillingAccountPurchaseInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1BillingAccountPurchaseInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1BillingAccountPurchaseInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1CancelEntitlementRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1CancelEntitlementRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1CancelEntitlementRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1CancelEntitlementRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ChangeOfferRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ChangeOfferRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1ChangeOfferRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ChangeOfferRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ChangeParametersRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ChangeParametersRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1ChangeParametersRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ChangeParametersRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ChangeRenewalSettingsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ChangeRenewalSettingsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1ChangeRenewalSettingsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ChangeRenewalSettingsRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ChannelPartnerLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ChannelPartnerLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1ChannelPartnerLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ChannelPartnerLink(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ChannelPartnerRepricingConfig',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ChannelPartnerRepricingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1ChannelPartnerRepricingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ChannelPartnerRepricingConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1CloudIdentityCustomerAccount',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1CloudIdentityCustomerAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1CloudIdentityCustomerAccount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1CloudIdentityCustomerAccount(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1CloudIdentityInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1CloudIdentityInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1CloudIdentityInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1CloudIdentityInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1Column', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1Column();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1Column.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1Column(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1CommitmentSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1CommitmentSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1CommitmentSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1CommitmentSettings(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ConditionalOverride', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ConditionalOverride();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1ConditionalOverride.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ConditionalOverride(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1Constraints', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1Constraints();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1Constraints.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1Constraints(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ContactInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ContactInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1ContactInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ContactInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1CreateEntitlementRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1CreateEntitlementRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1CreateEntitlementRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1CreateEntitlementRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1Customer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1Customer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1Customer.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1Customer(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1CustomerConstraints', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1CustomerConstraints();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1CustomerConstraints.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1CustomerConstraints(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1CustomerRepricingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1CustomerRepricingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1CustomerRepricingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1CustomerRepricingConfig(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1DateRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1DateRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1DateRange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1DateRange(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1EduData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1EduData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1EduData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1EduData(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1Entitlement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1Entitlement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1Entitlement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1Entitlement(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1EntitlementChange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1EntitlementChange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1EntitlementChange.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1EntitlementChange(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1FetchReportResultsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1FetchReportResultsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1FetchReportResultsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1FetchReportResultsRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1FetchReportResultsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1FetchReportResultsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1FetchReportResultsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1FetchReportResultsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ImportCustomerRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ImportCustomerRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1ImportCustomerRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ImportCustomerRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudChannelV1ListChannelPartnerLinksResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ListChannelPartnerLinksResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudChannelV1ListChannelPartnerLinksResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ListChannelPartnerLinksResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudChannelV1ListCustomerRepricingConfigsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ListCustomerRepricingConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudChannelV1ListCustomerRepricingConfigsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ListCustomerRepricingConfigsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ListCustomersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ListCustomersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1ListCustomersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ListCustomersResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudChannelV1ListEntitlementChangesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ListEntitlementChangesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudChannelV1ListEntitlementChangesResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ListEntitlementChangesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ListEntitlementsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ListEntitlementsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1ListEntitlementsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ListEntitlementsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ListOffersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ListOffersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1ListOffersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ListOffersResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ListProductsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ListProductsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1ListProductsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ListProductsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ListPurchasableOffersResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ListPurchasableOffersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1ListPurchasableOffersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ListPurchasableOffersResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ListPurchasableSkusResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ListPurchasableSkusResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1ListPurchasableSkusResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ListPurchasableSkusResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ListReportsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ListReportsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1ListReportsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ListReportsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudChannelV1ListSkuGroupBillableSkusResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ListSkuGroupBillableSkusResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudChannelV1ListSkuGroupBillableSkusResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ListSkuGroupBillableSkusResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ListSkuGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ListSkuGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1ListSkuGroupsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ListSkuGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ListSkusResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ListSkusResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1ListSkusResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ListSkusResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ListSubscribersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ListSubscribersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1ListSubscribersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ListSubscribersResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ListTransferableOffersRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ListTransferableOffersRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1ListTransferableOffersRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ListTransferableOffersRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudChannelV1ListTransferableOffersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ListTransferableOffersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudChannelV1ListTransferableOffersResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ListTransferableOffersResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ListTransferableSkusRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ListTransferableSkusRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1ListTransferableSkusRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ListTransferableSkusRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ListTransferableSkusResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ListTransferableSkusResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1ListTransferableSkusResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ListTransferableSkusResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1MarketingInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1MarketingInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1MarketingInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1MarketingInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1Media', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1Media();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1Media.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1Media(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1Offer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1Offer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1Offer.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1Offer(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1Parameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1Parameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1Parameter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1Parameter(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ParameterDefinition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ParameterDefinition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1ParameterDefinition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ParameterDefinition(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1PercentageAdjustment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1PercentageAdjustment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1PercentageAdjustment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1PercentageAdjustment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1Period', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1Period();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1Period.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1Period(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1Plan', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1Plan();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1Plan.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1Plan(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1Price', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1Price();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1Price.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1Price(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1PriceByResource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1PriceByResource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1PriceByResource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1PriceByResource(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1PricePhase', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1PricePhase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1PricePhase.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1PricePhase(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1PriceTier', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1PriceTier();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1PriceTier.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1PriceTier(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1Product', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1Product();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1Product.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1Product(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ProvisionCloudIdentityRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ProvisionCloudIdentityRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1ProvisionCloudIdentityRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ProvisionCloudIdentityRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ProvisionedService', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ProvisionedService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1ProvisionedService.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ProvisionedService(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1PurchasableOffer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1PurchasableOffer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1PurchasableOffer.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1PurchasableOffer(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1PurchasableSku', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1PurchasableSku();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1PurchasableSku.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1PurchasableSku(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudChannelV1QueryEligibleBillingAccountsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1QueryEligibleBillingAccountsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudChannelV1QueryEligibleBillingAccountsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1QueryEligibleBillingAccountsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1RegisterSubscriberRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1RegisterSubscriberRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1RegisterSubscriberRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1RegisterSubscriberRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1RegisterSubscriberResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1RegisterSubscriberResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1RegisterSubscriberResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1RegisterSubscriberResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1RenewalSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1RenewalSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1RenewalSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1RenewalSettings(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1Report', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1Report();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1Report.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1Report(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ReportResultsMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ReportResultsMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1ReportResultsMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ReportResultsMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1ReportValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1ReportValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1ReportValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1ReportValue(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1RepricingAdjustment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1RepricingAdjustment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1RepricingAdjustment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1RepricingAdjustment(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1RepricingCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1RepricingCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1RepricingCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1RepricingCondition(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1RepricingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1RepricingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1RepricingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1RepricingConfig(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudChannelV1RepricingConfigChannelPartnerGranularity',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudChannelV1RepricingConfigChannelPartnerGranularity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudChannelV1RepricingConfigChannelPartnerGranularity
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1RepricingConfigChannelPartnerGranularity(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudChannelV1RepricingConfigEntitlementGranularity',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleCloudChannelV1RepricingConfigEntitlementGranularity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1RepricingConfigEntitlementGranularity
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1RepricingConfigEntitlementGranularity(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1Row', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1Row();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1Row.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1Row(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1RunReportJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1RunReportJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1RunReportJobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1RunReportJobRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1Sku', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1Sku();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1Sku.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1Sku(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1SkuGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1SkuGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1SkuGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1SkuGroup(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1SkuGroupCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1SkuGroupCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1SkuGroupCondition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1SkuGroupCondition(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1SkuPurchaseGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1SkuPurchaseGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1SkuPurchaseGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1SkuPurchaseGroup(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1StartPaidServiceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1StartPaidServiceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1StartPaidServiceRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1StartPaidServiceRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1SuspendEntitlementRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1SuspendEntitlementRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1SuspendEntitlementRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1SuspendEntitlementRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1TransferEligibility', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1TransferEligibility();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1TransferEligibility.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1TransferEligibility(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1TransferEntitlementsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1TransferEntitlementsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1TransferEntitlementsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1TransferEntitlementsRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudChannelV1TransferEntitlementsToGoogleRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1TransferEntitlementsToGoogleRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudChannelV1TransferEntitlementsToGoogleRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1TransferEntitlementsToGoogleRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1TransferableOffer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1TransferableOffer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1TransferableOffer.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1TransferableOffer(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1TransferableSku', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1TransferableSku();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1TransferableSku.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1TransferableSku(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1TrialSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1TrialSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1TrialSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1TrialSettings(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1UnregisterSubscriberRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1UnregisterSubscriberRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1UnregisterSubscriberRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1UnregisterSubscriberRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1UnregisterSubscriberResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1UnregisterSubscriberResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1UnregisterSubscriberResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1UnregisterSubscriberResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleCloudChannelV1UpdateChannelPartnerLinkRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1UpdateChannelPartnerLinkRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleCloudChannelV1UpdateChannelPartnerLinkRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1UpdateChannelPartnerLinkRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudChannelV1Value', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudChannelV1Value();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudChannelV1Value.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleCloudChannelV1Value(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningCancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningCancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningOperation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleRpcStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleRpcStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeDate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeDate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeDate(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeDateTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeDateTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeDateTime.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeDateTime(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeDecimal', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeDecimal();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeDecimal.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeDecimal(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeMoney', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeMoney();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeMoney.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeMoney(od);
    });
  });

  unittest.group('obj-schema-GoogleTypePostalAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypePostalAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypePostalAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypePostalAddress(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeTimeZone', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeTimeZone();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeTimeZone.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeTimeZone(od);
    });
  });

  unittest.group('resource-AccountsResource', () {
    unittest.test('method--checkCloudIdentityAccountsExist', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts;
      final arg_request =
          buildGoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1CheckCloudIdentityAccountsExistRequest(obj);

        final path = req.url.path;
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
        final resp = convert.json.encode(
            buildGoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.checkCloudIdentityAccountsExist(
          arg_request, arg_parent,
          $fields: arg_$fields);
      checkGoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse(response
          as api.GoogleCloudChannelV1CheckCloudIdentityAccountsExistResponse);
    });

    unittest.test('method--listSubscribers', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts;
      final arg_account = 'foo';
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
        final resp = convert.json
            .encode(buildGoogleCloudChannelV1ListSubscribersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listSubscribers(arg_account,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudChannelV1ListSubscribersResponse(
          response as api.GoogleCloudChannelV1ListSubscribersResponse);
    });

    unittest.test('method--listTransferableOffers', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts;
      final arg_request =
          buildGoogleCloudChannelV1ListTransferableOffersRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudChannelV1ListTransferableOffersRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1ListTransferableOffersRequest(obj);

        final path = req.url.path;
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
        final resp = convert.json
            .encode(buildGoogleCloudChannelV1ListTransferableOffersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listTransferableOffers(arg_request, arg_parent,
          $fields: arg_$fields);
      checkGoogleCloudChannelV1ListTransferableOffersResponse(
          response as api.GoogleCloudChannelV1ListTransferableOffersResponse);
    });

    unittest.test('method--listTransferableSkus', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts;
      final arg_request =
          buildGoogleCloudChannelV1ListTransferableSkusRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudChannelV1ListTransferableSkusRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1ListTransferableSkusRequest(obj);

        final path = req.url.path;
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
        final resp = convert.json
            .encode(buildGoogleCloudChannelV1ListTransferableSkusResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listTransferableSkus(arg_request, arg_parent,
          $fields: arg_$fields);
      checkGoogleCloudChannelV1ListTransferableSkusResponse(
          response as api.GoogleCloudChannelV1ListTransferableSkusResponse);
    });

    unittest.test('method--register', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts;
      final arg_request = buildGoogleCloudChannelV1RegisterSubscriberRequest();
      final arg_account = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudChannelV1RegisterSubscriberRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1RegisterSubscriberRequest(obj);

        final path = req.url.path;
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
        final resp = convert.json
            .encode(buildGoogleCloudChannelV1RegisterSubscriberResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.register(arg_request, arg_account, $fields: arg_$fields);
      checkGoogleCloudChannelV1RegisterSubscriberResponse(
          response as api.GoogleCloudChannelV1RegisterSubscriberResponse);
    });

    unittest.test('method--unregister', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts;
      final arg_request =
          buildGoogleCloudChannelV1UnregisterSubscriberRequest();
      final arg_account = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudChannelV1UnregisterSubscriberRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1UnregisterSubscriberRequest(obj);

        final path = req.url.path;
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
        final resp = convert.json
            .encode(buildGoogleCloudChannelV1UnregisterSubscriberResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.unregister(arg_request, arg_account, $fields: arg_$fields);
      checkGoogleCloudChannelV1UnregisterSubscriberResponse(
          response as api.GoogleCloudChannelV1UnregisterSubscriberResponse);
    });
  });

  unittest.group('resource-AccountsChannelPartnerLinksResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.channelPartnerLinks;
      final arg_request = buildGoogleCloudChannelV1ChannelPartnerLink();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudChannelV1ChannelPartnerLink.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1ChannelPartnerLink(obj);

        final path = req.url.path;
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
        final resp =
            convert.json.encode(buildGoogleCloudChannelV1ChannelPartnerLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudChannelV1ChannelPartnerLink(
          response as api.GoogleCloudChannelV1ChannelPartnerLink);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.channelPartnerLinks;
      final arg_name = 'foo';
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
        final resp =
            convert.json.encode(buildGoogleCloudChannelV1ChannelPartnerLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
      checkGoogleCloudChannelV1ChannelPartnerLink(
          response as api.GoogleCloudChannelV1ChannelPartnerLink);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.channelPartnerLinks;
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
        final resp = convert.json
            .encode(buildGoogleCloudChannelV1ListChannelPartnerLinksResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkGoogleCloudChannelV1ListChannelPartnerLinksResponse(
          response as api.GoogleCloudChannelV1ListChannelPartnerLinksResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.channelPartnerLinks;
      final arg_request =
          buildGoogleCloudChannelV1UpdateChannelPartnerLinkRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudChannelV1UpdateChannelPartnerLinkRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1UpdateChannelPartnerLinkRequest(obj);

        final path = req.url.path;
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
        final resp =
            convert.json.encode(buildGoogleCloudChannelV1ChannelPartnerLink());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudChannelV1ChannelPartnerLink(
          response as api.GoogleCloudChannelV1ChannelPartnerLink);
    });
  });

  unittest.group(
      'resource-AccountsChannelPartnerLinksChannelPartnerRepricingConfigsResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock)
          .accounts
          .channelPartnerLinks
          .channelPartnerRepricingConfigs;
      final arg_request =
          buildGoogleCloudChannelV1ChannelPartnerRepricingConfig();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudChannelV1ChannelPartnerRepricingConfig.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1ChannelPartnerRepricingConfig(obj);

        final path = req.url.path;
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
        final resp = convert.json
            .encode(buildGoogleCloudChannelV1ChannelPartnerRepricingConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudChannelV1ChannelPartnerRepricingConfig(
          response as api.GoogleCloudChannelV1ChannelPartnerRepricingConfig);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock)
          .accounts
          .channelPartnerLinks
          .channelPartnerRepricingConfigs;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock)
          .accounts
          .channelPartnerLinks
          .channelPartnerRepricingConfigs;
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
        final resp = convert.json
            .encode(buildGoogleCloudChannelV1ChannelPartnerRepricingConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudChannelV1ChannelPartnerRepricingConfig(
          response as api.GoogleCloudChannelV1ChannelPartnerRepricingConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock)
          .accounts
          .channelPartnerLinks
          .channelPartnerRepricingConfigs;
      final arg_parent = 'foo';
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse(
          response as api
              .GoogleCloudChannelV1ListChannelPartnerRepricingConfigsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock)
          .accounts
          .channelPartnerLinks
          .channelPartnerRepricingConfigs;
      final arg_request =
          buildGoogleCloudChannelV1ChannelPartnerRepricingConfig();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudChannelV1ChannelPartnerRepricingConfig.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1ChannelPartnerRepricingConfig(obj);

        final path = req.url.path;
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
        final resp = convert.json
            .encode(buildGoogleCloudChannelV1ChannelPartnerRepricingConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudChannelV1ChannelPartnerRepricingConfig(
          response as api.GoogleCloudChannelV1ChannelPartnerRepricingConfig);
    });
  });

  unittest.group('resource-AccountsChannelPartnerLinksCustomersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudchannelApi(mock).accounts.channelPartnerLinks.customers;
      final arg_request = buildGoogleCloudChannelV1Customer();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudChannelV1Customer.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1Customer(obj);

        final path = req.url.path;
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
        final resp = convert.json.encode(buildGoogleCloudChannelV1Customer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudChannelV1Customer(
          response as api.GoogleCloudChannelV1Customer);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudchannelApi(mock).accounts.channelPartnerLinks.customers;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudchannelApi(mock).accounts.channelPartnerLinks.customers;
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
        final resp = convert.json.encode(buildGoogleCloudChannelV1Customer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudChannelV1Customer(
          response as api.GoogleCloudChannelV1Customer);
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudchannelApi(mock).accounts.channelPartnerLinks.customers;
      final arg_request = buildGoogleCloudChannelV1ImportCustomerRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudChannelV1ImportCustomerRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1ImportCustomerRequest(obj);

        final path = req.url.path;
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
        final resp = convert.json.encode(buildGoogleCloudChannelV1Customer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.import(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudChannelV1Customer(
          response as api.GoogleCloudChannelV1Customer);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudchannelApi(mock).accounts.channelPartnerLinks.customers;
      final arg_parent = 'foo';
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudChannelV1ListCustomersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudChannelV1ListCustomersResponse(
          response as api.GoogleCloudChannelV1ListCustomersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudchannelApi(mock).accounts.channelPartnerLinks.customers;
      final arg_request = buildGoogleCloudChannelV1Customer();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudChannelV1Customer.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1Customer(obj);

        final path = req.url.path;
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
        final resp = convert.json.encode(buildGoogleCloudChannelV1Customer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudChannelV1Customer(
          response as api.GoogleCloudChannelV1Customer);
    });
  });

  unittest.group('resource-AccountsCustomersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.customers;
      final arg_request = buildGoogleCloudChannelV1Customer();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudChannelV1Customer.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1Customer(obj);

        final path = req.url.path;
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
        final resp = convert.json.encode(buildGoogleCloudChannelV1Customer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudChannelV1Customer(
          response as api.GoogleCloudChannelV1Customer);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.customers;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.customers;
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
        final resp = convert.json.encode(buildGoogleCloudChannelV1Customer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudChannelV1Customer(
          response as api.GoogleCloudChannelV1Customer);
    });

    unittest.test('method--import', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.customers;
      final arg_request = buildGoogleCloudChannelV1ImportCustomerRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudChannelV1ImportCustomerRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1ImportCustomerRequest(obj);

        final path = req.url.path;
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
        final resp = convert.json.encode(buildGoogleCloudChannelV1Customer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.import(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudChannelV1Customer(
          response as api.GoogleCloudChannelV1Customer);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.customers;
      final arg_parent = 'foo';
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudChannelV1ListCustomersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudChannelV1ListCustomersResponse(
          response as api.GoogleCloudChannelV1ListCustomersResponse);
    });

    unittest.test('method--listPurchasableOffers', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.customers;
      final arg_customer = 'foo';
      final arg_changeOfferPurchase_billingAccount = 'foo';
      final arg_changeOfferPurchase_entitlement = 'foo';
      final arg_changeOfferPurchase_newSku = 'foo';
      final arg_createEntitlementPurchase_billingAccount = 'foo';
      final arg_createEntitlementPurchase_sku = 'foo';
      final arg_languageCode = 'foo';
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
          queryMap['changeOfferPurchase.billingAccount']!.first,
          unittest.equals(arg_changeOfferPurchase_billingAccount),
        );
        unittest.expect(
          queryMap['changeOfferPurchase.entitlement']!.first,
          unittest.equals(arg_changeOfferPurchase_entitlement),
        );
        unittest.expect(
          queryMap['changeOfferPurchase.newSku']!.first,
          unittest.equals(arg_changeOfferPurchase_newSku),
        );
        unittest.expect(
          queryMap['createEntitlementPurchase.billingAccount']!.first,
          unittest.equals(arg_createEntitlementPurchase_billingAccount),
        );
        unittest.expect(
          queryMap['createEntitlementPurchase.sku']!.first,
          unittest.equals(arg_createEntitlementPurchase_sku),
        );
        unittest.expect(
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
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
        final resp = convert.json
            .encode(buildGoogleCloudChannelV1ListPurchasableOffersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listPurchasableOffers(arg_customer,
          changeOfferPurchase_billingAccount:
              arg_changeOfferPurchase_billingAccount,
          changeOfferPurchase_entitlement: arg_changeOfferPurchase_entitlement,
          changeOfferPurchase_newSku: arg_changeOfferPurchase_newSku,
          createEntitlementPurchase_billingAccount:
              arg_createEntitlementPurchase_billingAccount,
          createEntitlementPurchase_sku: arg_createEntitlementPurchase_sku,
          languageCode: arg_languageCode,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudChannelV1ListPurchasableOffersResponse(
          response as api.GoogleCloudChannelV1ListPurchasableOffersResponse);
    });

    unittest.test('method--listPurchasableSkus', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.customers;
      final arg_customer = 'foo';
      final arg_changeOfferPurchase_changeType = 'foo';
      final arg_changeOfferPurchase_entitlement = 'foo';
      final arg_createEntitlementPurchase_product = 'foo';
      final arg_languageCode = 'foo';
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
          queryMap['changeOfferPurchase.changeType']!.first,
          unittest.equals(arg_changeOfferPurchase_changeType),
        );
        unittest.expect(
          queryMap['changeOfferPurchase.entitlement']!.first,
          unittest.equals(arg_changeOfferPurchase_entitlement),
        );
        unittest.expect(
          queryMap['createEntitlementPurchase.product']!.first,
          unittest.equals(arg_createEntitlementPurchase_product),
        );
        unittest.expect(
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
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
        final resp = convert.json
            .encode(buildGoogleCloudChannelV1ListPurchasableSkusResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listPurchasableSkus(arg_customer,
          changeOfferPurchase_changeType: arg_changeOfferPurchase_changeType,
          changeOfferPurchase_entitlement: arg_changeOfferPurchase_entitlement,
          createEntitlementPurchase_product:
              arg_createEntitlementPurchase_product,
          languageCode: arg_languageCode,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudChannelV1ListPurchasableSkusResponse(
          response as api.GoogleCloudChannelV1ListPurchasableSkusResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.customers;
      final arg_request = buildGoogleCloudChannelV1Customer();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudChannelV1Customer.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1Customer(obj);

        final path = req.url.path;
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
        final resp = convert.json.encode(buildGoogleCloudChannelV1Customer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleCloudChannelV1Customer(
          response as api.GoogleCloudChannelV1Customer);
    });

    unittest.test('method--provisionCloudIdentity', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.customers;
      final arg_request =
          buildGoogleCloudChannelV1ProvisionCloudIdentityRequest();
      final arg_customer = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudChannelV1ProvisionCloudIdentityRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1ProvisionCloudIdentityRequest(obj);

        final path = req.url.path;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.provisionCloudIdentity(
          arg_request, arg_customer,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--queryEligibleBillingAccounts', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.customers;
      final arg_customer = 'foo';
      final arg_skus = buildUnnamed49();
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
          queryMap['skus']!,
          unittest.equals(arg_skus),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudChannelV1QueryEligibleBillingAccountsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.queryEligibleBillingAccounts(arg_customer,
          skus: arg_skus, $fields: arg_$fields);
      checkGoogleCloudChannelV1QueryEligibleBillingAccountsResponse(response
          as api.GoogleCloudChannelV1QueryEligibleBillingAccountsResponse);
    });

    unittest.test('method--transferEntitlements', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.customers;
      final arg_request =
          buildGoogleCloudChannelV1TransferEntitlementsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudChannelV1TransferEntitlementsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1TransferEntitlementsRequest(obj);

        final path = req.url.path;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.transferEntitlements(arg_request, arg_parent,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--transferEntitlementsToGoogle', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.customers;
      final arg_request =
          buildGoogleCloudChannelV1TransferEntitlementsToGoogleRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudChannelV1TransferEntitlementsToGoogleRequest
            .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1TransferEntitlementsToGoogleRequest(obj);

        final path = req.url.path;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.transferEntitlementsToGoogle(
          arg_request, arg_parent,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-AccountsCustomersCustomerRepricingConfigsResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudchannelApi(mock).accounts.customers.customerRepricingConfigs;
      final arg_request = buildGoogleCloudChannelV1CustomerRepricingConfig();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudChannelV1CustomerRepricingConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1CustomerRepricingConfig(obj);

        final path = req.url.path;
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
        final resp = convert.json
            .encode(buildGoogleCloudChannelV1CustomerRepricingConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleCloudChannelV1CustomerRepricingConfig(
          response as api.GoogleCloudChannelV1CustomerRepricingConfig);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudchannelApi(mock).accounts.customers.customerRepricingConfigs;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudchannelApi(mock).accounts.customers.customerRepricingConfigs;
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
        final resp = convert.json
            .encode(buildGoogleCloudChannelV1CustomerRepricingConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudChannelV1CustomerRepricingConfig(
          response as api.GoogleCloudChannelV1CustomerRepricingConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudchannelApi(mock).accounts.customers.customerRepricingConfigs;
      final arg_parent = 'foo';
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(
            buildGoogleCloudChannelV1ListCustomerRepricingConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudChannelV1ListCustomerRepricingConfigsResponse(response
          as api.GoogleCloudChannelV1ListCustomerRepricingConfigsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.CloudchannelApi(mock).accounts.customers.customerRepricingConfigs;
      final arg_request = buildGoogleCloudChannelV1CustomerRepricingConfig();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudChannelV1CustomerRepricingConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1CustomerRepricingConfig(obj);

        final path = req.url.path;
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
        final resp = convert.json
            .encode(buildGoogleCloudChannelV1CustomerRepricingConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.patch(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleCloudChannelV1CustomerRepricingConfig(
          response as api.GoogleCloudChannelV1CustomerRepricingConfig);
    });
  });

  unittest.group('resource-AccountsCustomersEntitlementsResource', () {
    unittest.test('method--activate', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.customers.entitlements;
      final arg_request = buildGoogleCloudChannelV1ActivateEntitlementRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudChannelV1ActivateEntitlementRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1ActivateEntitlementRequest(obj);

        final path = req.url.path;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.activate(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.customers.entitlements;
      final arg_request = buildGoogleCloudChannelV1CancelEntitlementRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudChannelV1CancelEntitlementRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1CancelEntitlementRequest(obj);

        final path = req.url.path;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--changeOffer', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.customers.entitlements;
      final arg_request = buildGoogleCloudChannelV1ChangeOfferRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudChannelV1ChangeOfferRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1ChangeOfferRequest(obj);

        final path = req.url.path;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.changeOffer(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--changeParameters', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.customers.entitlements;
      final arg_request = buildGoogleCloudChannelV1ChangeParametersRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudChannelV1ChangeParametersRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1ChangeParametersRequest(obj);

        final path = req.url.path;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.changeParameters(arg_request, arg_name,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--changeRenewalSettings', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.customers.entitlements;
      final arg_request =
          buildGoogleCloudChannelV1ChangeRenewalSettingsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleCloudChannelV1ChangeRenewalSettingsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1ChangeRenewalSettingsRequest(obj);

        final path = req.url.path;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.changeRenewalSettings(arg_request, arg_name,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.customers.entitlements;
      final arg_request = buildGoogleCloudChannelV1CreateEntitlementRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudChannelV1CreateEntitlementRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1CreateEntitlementRequest(obj);

        final path = req.url.path;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.customers.entitlements;
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
        final resp =
            convert.json.encode(buildGoogleCloudChannelV1Entitlement());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudChannelV1Entitlement(
          response as api.GoogleCloudChannelV1Entitlement);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.customers.entitlements;
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
        final resp = convert.json
            .encode(buildGoogleCloudChannelV1ListEntitlementsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudChannelV1ListEntitlementsResponse(
          response as api.GoogleCloudChannelV1ListEntitlementsResponse);
    });

    unittest.test('method--listEntitlementChanges', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.customers.entitlements;
      final arg_parent = 'foo';
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleCloudChannelV1ListEntitlementChangesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.listEntitlementChanges(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudChannelV1ListEntitlementChangesResponse(
          response as api.GoogleCloudChannelV1ListEntitlementChangesResponse);
    });

    unittest.test('method--lookupOffer', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.customers.entitlements;
      final arg_entitlement = 'foo';
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
        final resp = convert.json.encode(buildGoogleCloudChannelV1Offer());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.lookupOffer(arg_entitlement, $fields: arg_$fields);
      checkGoogleCloudChannelV1Offer(response as api.GoogleCloudChannelV1Offer);
    });

    unittest.test('method--startPaidService', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.customers.entitlements;
      final arg_request = buildGoogleCloudChannelV1StartPaidServiceRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudChannelV1StartPaidServiceRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1StartPaidServiceRequest(obj);

        final path = req.url.path;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.startPaidService(arg_request, arg_name,
          $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--suspend', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.customers.entitlements;
      final arg_request = buildGoogleCloudChannelV1SuspendEntitlementRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudChannelV1SuspendEntitlementRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1SuspendEntitlementRequest(obj);

        final path = req.url.path;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.suspend(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-AccountsOffersResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.offers;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_languageCode = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_showFutureOffers = true;
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
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
          queryMap['showFutureOffers']!.first,
          unittest.equals('$arg_showFutureOffers'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleCloudChannelV1ListOffersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          languageCode: arg_languageCode,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          showFutureOffers: arg_showFutureOffers,
          $fields: arg_$fields);
      checkGoogleCloudChannelV1ListOffersResponse(
          response as api.GoogleCloudChannelV1ListOffersResponse);
    });
  });

  unittest.group('resource-AccountsReportJobsResource', () {
    unittest.test('method--fetchReportResults', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.reportJobs;
      final arg_request = buildGoogleCloudChannelV1FetchReportResultsRequest();
      final arg_reportJob = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudChannelV1FetchReportResultsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1FetchReportResultsRequest(obj);

        final path = req.url.path;
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
        final resp = convert.json
            .encode(buildGoogleCloudChannelV1FetchReportResultsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.fetchReportResults(arg_request, arg_reportJob,
          $fields: arg_$fields);
      checkGoogleCloudChannelV1FetchReportResultsResponse(
          response as api.GoogleCloudChannelV1FetchReportResultsResponse);
    });
  });

  unittest.group('resource-AccountsReportsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.reports;
      final arg_parent = 'foo';
      final arg_languageCode = 'foo';
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
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
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
            convert.json.encode(buildGoogleCloudChannelV1ListReportsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          languageCode: arg_languageCode,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudChannelV1ListReportsResponse(
          response as api.GoogleCloudChannelV1ListReportsResponse);
    });

    unittest.test('method--run', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.reports;
      final arg_request = buildGoogleCloudChannelV1RunReportJobRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleCloudChannelV1RunReportJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleCloudChannelV1RunReportJobRequest(obj);

        final path = req.url.path;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.run(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-AccountsSkuGroupsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.skuGroups;
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
        final resp = convert.json
            .encode(buildGoogleCloudChannelV1ListSkuGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudChannelV1ListSkuGroupsResponse(
          response as api.GoogleCloudChannelV1ListSkuGroupsResponse);
    });
  });

  unittest.group('resource-AccountsSkuGroupsBillableSkusResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).accounts.skuGroups.billableSkus;
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
        final resp = convert.json.encode(
            buildGoogleCloudChannelV1ListSkuGroupBillableSkusResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudChannelV1ListSkuGroupBillableSkusResponse(
          response as api.GoogleCloudChannelV1ListSkuGroupBillableSkusResponse);
    });
  });

  unittest.group('resource-OperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).operations;
      final arg_request = buildGoogleLongrunningCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleLongrunningCancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleLongrunningCancelOperationRequest(obj);

        final path = req.url.path;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).operations;
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
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).operations;
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
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).operations;
      final arg_name = 'foo';
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleLongrunningListOperationsResponse(
          response as api.GoogleLongrunningListOperationsResponse);
    });
  });

  unittest.group('resource-ProductsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).products;
      final arg_account = 'foo';
      final arg_languageCode = 'foo';
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
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('v1/products'),
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
          queryMap['account']!.first,
          unittest.equals(arg_account),
        );
        unittest.expect(
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
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
        final resp = convert.json
            .encode(buildGoogleCloudChannelV1ListProductsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          account: arg_account,
          languageCode: arg_languageCode,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudChannelV1ListProductsResponse(
          response as api.GoogleCloudChannelV1ListProductsResponse);
    });
  });

  unittest.group('resource-ProductsSkusResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudchannelApi(mock).products.skus;
      final arg_parent = 'foo';
      final arg_account = 'foo';
      final arg_languageCode = 'foo';
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
          queryMap['account']!.first,
          unittest.equals(arg_account),
        );
        unittest.expect(
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
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
            convert.json.encode(buildGoogleCloudChannelV1ListSkusResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          account: arg_account,
          languageCode: arg_languageCode,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleCloudChannelV1ListSkusResponse(
          response as api.GoogleCloudChannelV1ListSkusResponse);
    });
  });
}
