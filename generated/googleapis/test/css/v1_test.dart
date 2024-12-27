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

import 'package:googleapis/css/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAccount = 0;
api.Account buildAccount() {
  final o = api.Account();
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    o.accountType = 'foo';
    o.automaticLabelIds = buildUnnamed0();
    o.displayName = 'foo';
    o.fullName = 'foo';
    o.homepageUri = 'foo';
    o.labelIds = buildUnnamed1();
    o.name = 'foo';
    o.parent = 'foo';
  }
  buildCounterAccount--;
  return o;
}

void checkAccount(api.Account o) {
  buildCounterAccount++;
  if (buildCounterAccount < 3) {
    unittest.expect(o.accountType!, unittest.equals('foo'));
    checkUnnamed0(o.automaticLabelIds!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.fullName!, unittest.equals('foo'));
    unittest.expect(o.homepageUri!, unittest.equals('foo'));
    checkUnnamed1(o.labelIds!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.parent!, unittest.equals('foo'));
  }
  buildCounterAccount--;
}

core.int buildCounterAccountLabel = 0;
api.AccountLabel buildAccountLabel() {
  final o = api.AccountLabel();
  buildCounterAccountLabel++;
  if (buildCounterAccountLabel < 3) {
    o.accountId = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.labelId = 'foo';
    o.labelType = 'foo';
    o.name = 'foo';
  }
  buildCounterAccountLabel--;
  return o;
}

void checkAccountLabel(api.AccountLabel o) {
  buildCounterAccountLabel++;
  if (buildCounterAccountLabel < 3) {
    unittest.expect(o.accountId!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.labelId!, unittest.equals('foo'));
    unittest.expect(o.labelType!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterAccountLabel--;
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.Certification> buildUnnamed3() => [
      buildCertification(),
      buildCertification(),
    ];

void checkUnnamed3(core.List<api.Certification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCertification(o[0]);
  checkCertification(o[1]);
}

core.List<core.String> buildUnnamed4() => ['foo', 'foo'];

void checkUnnamed4(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ProductDetail> buildUnnamed6() => [
      buildProductDetail(),
      buildProductDetail(),
    ];

void checkUnnamed6(core.List<api.ProductDetail> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProductDetail(o[0]);
  checkProductDetail(o[1]);
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

core.List<core.String> buildUnnamed9() => ['foo', 'foo'];

void checkUnnamed9(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAttributes = 0;
api.Attributes buildAttributes() {
  final o = api.Attributes();
  buildCounterAttributes++;
  if (buildCounterAttributes < 3) {
    o.additionalImageLinks = buildUnnamed2();
    o.adult = true;
    o.ageGroup = 'foo';
    o.brand = 'foo';
    o.certifications = buildUnnamed3();
    o.color = 'foo';
    o.cppAdsRedirect = 'foo';
    o.cppLink = 'foo';
    o.cppMobileLink = 'foo';
    o.customLabel0 = 'foo';
    o.customLabel1 = 'foo';
    o.customLabel2 = 'foo';
    o.customLabel3 = 'foo';
    o.customLabel4 = 'foo';
    o.description = 'foo';
    o.excludedDestinations = buildUnnamed4();
    o.expirationDate = 'foo';
    o.gender = 'foo';
    o.googleProductCategory = 'foo';
    o.gtin = 'foo';
    o.headlineOfferCondition = 'foo';
    o.headlineOfferInstallment = buildHeadlineOfferInstallment();
    o.headlineOfferLink = 'foo';
    o.headlineOfferMobileLink = 'foo';
    o.headlineOfferPrice = buildPrice();
    o.headlineOfferShippingPrice = buildPrice();
    o.headlineOfferSubscriptionCost = buildHeadlineOfferSubscriptionCost();
    o.highPrice = buildPrice();
    o.imageLink = 'foo';
    o.includedDestinations = buildUnnamed5();
    o.isBundle = true;
    o.itemGroupId = 'foo';
    o.lowPrice = buildPrice();
    o.material = 'foo';
    o.mpn = 'foo';
    o.multipack = 'foo';
    o.numberOfOffers = 'foo';
    o.pattern = 'foo';
    o.pause = 'foo';
    o.productDetails = buildUnnamed6();
    o.productHeight = buildProductDimension();
    o.productHighlights = buildUnnamed7();
    o.productLength = buildProductDimension();
    o.productTypes = buildUnnamed8();
    o.productWeight = buildProductWeight();
    o.productWidth = buildProductDimension();
    o.size = 'foo';
    o.sizeSystem = 'foo';
    o.sizeTypes = buildUnnamed9();
    o.title = 'foo';
  }
  buildCounterAttributes--;
  return o;
}

void checkAttributes(api.Attributes o) {
  buildCounterAttributes++;
  if (buildCounterAttributes < 3) {
    checkUnnamed2(o.additionalImageLinks!);
    unittest.expect(o.adult!, unittest.isTrue);
    unittest.expect(o.ageGroup!, unittest.equals('foo'));
    unittest.expect(o.brand!, unittest.equals('foo'));
    checkUnnamed3(o.certifications!);
    unittest.expect(o.color!, unittest.equals('foo'));
    unittest.expect(o.cppAdsRedirect!, unittest.equals('foo'));
    unittest.expect(o.cppLink!, unittest.equals('foo'));
    unittest.expect(o.cppMobileLink!, unittest.equals('foo'));
    unittest.expect(o.customLabel0!, unittest.equals('foo'));
    unittest.expect(o.customLabel1!, unittest.equals('foo'));
    unittest.expect(o.customLabel2!, unittest.equals('foo'));
    unittest.expect(o.customLabel3!, unittest.equals('foo'));
    unittest.expect(o.customLabel4!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed4(o.excludedDestinations!);
    unittest.expect(o.expirationDate!, unittest.equals('foo'));
    unittest.expect(o.gender!, unittest.equals('foo'));
    unittest.expect(o.googleProductCategory!, unittest.equals('foo'));
    unittest.expect(o.gtin!, unittest.equals('foo'));
    unittest.expect(o.headlineOfferCondition!, unittest.equals('foo'));
    checkHeadlineOfferInstallment(o.headlineOfferInstallment!);
    unittest.expect(o.headlineOfferLink!, unittest.equals('foo'));
    unittest.expect(o.headlineOfferMobileLink!, unittest.equals('foo'));
    checkPrice(o.headlineOfferPrice!);
    checkPrice(o.headlineOfferShippingPrice!);
    checkHeadlineOfferSubscriptionCost(o.headlineOfferSubscriptionCost!);
    checkPrice(o.highPrice!);
    unittest.expect(o.imageLink!, unittest.equals('foo'));
    checkUnnamed5(o.includedDestinations!);
    unittest.expect(o.isBundle!, unittest.isTrue);
    unittest.expect(o.itemGroupId!, unittest.equals('foo'));
    checkPrice(o.lowPrice!);
    unittest.expect(o.material!, unittest.equals('foo'));
    unittest.expect(o.mpn!, unittest.equals('foo'));
    unittest.expect(o.multipack!, unittest.equals('foo'));
    unittest.expect(o.numberOfOffers!, unittest.equals('foo'));
    unittest.expect(o.pattern!, unittest.equals('foo'));
    unittest.expect(o.pause!, unittest.equals('foo'));
    checkUnnamed6(o.productDetails!);
    checkProductDimension(o.productHeight!);
    checkUnnamed7(o.productHighlights!);
    checkProductDimension(o.productLength!);
    checkUnnamed8(o.productTypes!);
    checkProductWeight(o.productWeight!);
    checkProductDimension(o.productWidth!);
    unittest.expect(o.size!, unittest.equals('foo'));
    unittest.expect(o.sizeSystem!, unittest.equals('foo'));
    checkUnnamed9(o.sizeTypes!);
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterAttributes--;
}

core.int buildCounterCertification = 0;
api.Certification buildCertification() {
  final o = api.Certification();
  buildCounterCertification++;
  if (buildCounterCertification < 3) {
    o.authority = 'foo';
    o.code = 'foo';
    o.name = 'foo';
  }
  buildCounterCertification--;
  return o;
}

void checkCertification(api.Certification o) {
  buildCounterCertification++;
  if (buildCounterCertification < 3) {
    unittest.expect(o.authority!, unittest.equals('foo'));
    unittest.expect(o.code!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterCertification--;
}

core.List<api.CustomAttribute> buildUnnamed10() => [
      buildCustomAttribute(),
      buildCustomAttribute(),
    ];

void checkUnnamed10(core.List<api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o[0]);
  checkCustomAttribute(o[1]);
}

core.int buildCounterCssProduct = 0;
api.CssProduct buildCssProduct() {
  final o = api.CssProduct();
  buildCounterCssProduct++;
  if (buildCounterCssProduct < 3) {
    o.attributes = buildAttributes();
    o.contentLanguage = 'foo';
    o.cssProductStatus = buildCssProductStatus();
    o.customAttributes = buildUnnamed10();
    o.feedLabel = 'foo';
    o.name = 'foo';
    o.rawProvidedId = 'foo';
  }
  buildCounterCssProduct--;
  return o;
}

void checkCssProduct(api.CssProduct o) {
  buildCounterCssProduct++;
  if (buildCounterCssProduct < 3) {
    checkAttributes(o.attributes!);
    unittest.expect(o.contentLanguage!, unittest.equals('foo'));
    checkCssProductStatus(o.cssProductStatus!);
    checkUnnamed10(o.customAttributes!);
    unittest.expect(o.feedLabel!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.rawProvidedId!, unittest.equals('foo'));
  }
  buildCounterCssProduct--;
}

core.List<api.CustomAttribute> buildUnnamed11() => [
      buildCustomAttribute(),
      buildCustomAttribute(),
    ];

void checkUnnamed11(core.List<api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o[0]);
  checkCustomAttribute(o[1]);
}

core.int buildCounterCssProductInput = 0;
api.CssProductInput buildCssProductInput() {
  final o = api.CssProductInput();
  buildCounterCssProductInput++;
  if (buildCounterCssProductInput < 3) {
    o.attributes = buildAttributes();
    o.contentLanguage = 'foo';
    o.customAttributes = buildUnnamed11();
    o.feedLabel = 'foo';
    o.finalName = 'foo';
    o.freshnessTime = 'foo';
    o.name = 'foo';
    o.rawProvidedId = 'foo';
  }
  buildCounterCssProductInput--;
  return o;
}

void checkCssProductInput(api.CssProductInput o) {
  buildCounterCssProductInput++;
  if (buildCounterCssProductInput < 3) {
    checkAttributes(o.attributes!);
    unittest.expect(o.contentLanguage!, unittest.equals('foo'));
    checkUnnamed11(o.customAttributes!);
    unittest.expect(o.feedLabel!, unittest.equals('foo'));
    unittest.expect(o.finalName!, unittest.equals('foo'));
    unittest.expect(o.freshnessTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.rawProvidedId!, unittest.equals('foo'));
  }
  buildCounterCssProductInput--;
}

core.List<api.DestinationStatus> buildUnnamed12() => [
      buildDestinationStatus(),
      buildDestinationStatus(),
    ];

void checkUnnamed12(core.List<api.DestinationStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDestinationStatus(o[0]);
  checkDestinationStatus(o[1]);
}

core.List<api.ItemLevelIssue> buildUnnamed13() => [
      buildItemLevelIssue(),
      buildItemLevelIssue(),
    ];

void checkUnnamed13(core.List<api.ItemLevelIssue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkItemLevelIssue(o[0]);
  checkItemLevelIssue(o[1]);
}

core.int buildCounterCssProductStatus = 0;
api.CssProductStatus buildCssProductStatus() {
  final o = api.CssProductStatus();
  buildCounterCssProductStatus++;
  if (buildCounterCssProductStatus < 3) {
    o.creationDate = 'foo';
    o.destinationStatuses = buildUnnamed12();
    o.googleExpirationDate = 'foo';
    o.itemLevelIssues = buildUnnamed13();
    o.lastUpdateDate = 'foo';
  }
  buildCounterCssProductStatus--;
  return o;
}

void checkCssProductStatus(api.CssProductStatus o) {
  buildCounterCssProductStatus++;
  if (buildCounterCssProductStatus < 3) {
    unittest.expect(o.creationDate!, unittest.equals('foo'));
    checkUnnamed12(o.destinationStatuses!);
    unittest.expect(o.googleExpirationDate!, unittest.equals('foo'));
    checkUnnamed13(o.itemLevelIssues!);
    unittest.expect(o.lastUpdateDate!, unittest.equals('foo'));
  }
  buildCounterCssProductStatus--;
}

core.List<api.CustomAttribute> buildUnnamed14() => [
      buildCustomAttribute(),
      buildCustomAttribute(),
    ];

void checkUnnamed14(core.List<api.CustomAttribute> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomAttribute(o[0]);
  checkCustomAttribute(o[1]);
}

core.int buildCounterCustomAttribute = 0;
api.CustomAttribute buildCustomAttribute() {
  final o = api.CustomAttribute();
  buildCounterCustomAttribute++;
  if (buildCounterCustomAttribute < 3) {
    o.groupValues = buildUnnamed14();
    o.name = 'foo';
    o.value = 'foo';
  }
  buildCounterCustomAttribute--;
  return o;
}

void checkCustomAttribute(api.CustomAttribute o) {
  buildCounterCustomAttribute++;
  if (buildCounterCustomAttribute < 3) {
    checkUnnamed14(o.groupValues!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterCustomAttribute--;
}

core.List<core.String> buildUnnamed15() => ['foo', 'foo'];

void checkUnnamed15(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed16() => ['foo', 'foo'];

void checkUnnamed16(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDestinationStatus = 0;
api.DestinationStatus buildDestinationStatus() {
  final o = api.DestinationStatus();
  buildCounterDestinationStatus++;
  if (buildCounterDestinationStatus < 3) {
    o.approvedCountries = buildUnnamed15();
    o.destination = 'foo';
    o.disapprovedCountries = buildUnnamed16();
    o.pendingCountries = buildUnnamed17();
  }
  buildCounterDestinationStatus--;
  return o;
}

void checkDestinationStatus(api.DestinationStatus o) {
  buildCounterDestinationStatus++;
  if (buildCounterDestinationStatus < 3) {
    checkUnnamed15(o.approvedCountries!);
    unittest.expect(o.destination!, unittest.equals('foo'));
    checkUnnamed16(o.disapprovedCountries!);
    checkUnnamed17(o.pendingCountries!);
  }
  buildCounterDestinationStatus--;
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

core.int buildCounterHeadlineOfferInstallment = 0;
api.HeadlineOfferInstallment buildHeadlineOfferInstallment() {
  final o = api.HeadlineOfferInstallment();
  buildCounterHeadlineOfferInstallment++;
  if (buildCounterHeadlineOfferInstallment < 3) {
    o.amount = buildPrice();
    o.downpayment = buildPrice();
    o.months = 'foo';
  }
  buildCounterHeadlineOfferInstallment--;
  return o;
}

void checkHeadlineOfferInstallment(api.HeadlineOfferInstallment o) {
  buildCounterHeadlineOfferInstallment++;
  if (buildCounterHeadlineOfferInstallment < 3) {
    checkPrice(o.amount!);
    checkPrice(o.downpayment!);
    unittest.expect(o.months!, unittest.equals('foo'));
  }
  buildCounterHeadlineOfferInstallment--;
}

core.int buildCounterHeadlineOfferSubscriptionCost = 0;
api.HeadlineOfferSubscriptionCost buildHeadlineOfferSubscriptionCost() {
  final o = api.HeadlineOfferSubscriptionCost();
  buildCounterHeadlineOfferSubscriptionCost++;
  if (buildCounterHeadlineOfferSubscriptionCost < 3) {
    o.amount = buildPrice();
    o.period = 'foo';
    o.periodLength = 'foo';
  }
  buildCounterHeadlineOfferSubscriptionCost--;
  return o;
}

void checkHeadlineOfferSubscriptionCost(api.HeadlineOfferSubscriptionCost o) {
  buildCounterHeadlineOfferSubscriptionCost++;
  if (buildCounterHeadlineOfferSubscriptionCost < 3) {
    checkPrice(o.amount!);
    unittest.expect(o.period!, unittest.equals('foo'));
    unittest.expect(o.periodLength!, unittest.equals('foo'));
  }
  buildCounterHeadlineOfferSubscriptionCost--;
}

core.List<core.String> buildUnnamed18() => ['foo', 'foo'];

void checkUnnamed18(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterItemLevelIssue = 0;
api.ItemLevelIssue buildItemLevelIssue() {
  final o = api.ItemLevelIssue();
  buildCounterItemLevelIssue++;
  if (buildCounterItemLevelIssue < 3) {
    o.applicableCountries = buildUnnamed18();
    o.attribute = 'foo';
    o.code = 'foo';
    o.description = 'foo';
    o.destination = 'foo';
    o.detail = 'foo';
    o.documentation = 'foo';
    o.resolution = 'foo';
    o.servability = 'foo';
  }
  buildCounterItemLevelIssue--;
  return o;
}

void checkItemLevelIssue(api.ItemLevelIssue o) {
  buildCounterItemLevelIssue++;
  if (buildCounterItemLevelIssue < 3) {
    checkUnnamed18(o.applicableCountries!);
    unittest.expect(o.attribute!, unittest.equals('foo'));
    unittest.expect(o.code!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.destination!, unittest.equals('foo'));
    unittest.expect(o.detail!, unittest.equals('foo'));
    unittest.expect(o.documentation!, unittest.equals('foo'));
    unittest.expect(o.resolution!, unittest.equals('foo'));
    unittest.expect(o.servability!, unittest.equals('foo'));
  }
  buildCounterItemLevelIssue--;
}

core.List<api.AccountLabel> buildUnnamed19() => [
      buildAccountLabel(),
      buildAccountLabel(),
    ];

void checkUnnamed19(core.List<api.AccountLabel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccountLabel(o[0]);
  checkAccountLabel(o[1]);
}

core.int buildCounterListAccountLabelsResponse = 0;
api.ListAccountLabelsResponse buildListAccountLabelsResponse() {
  final o = api.ListAccountLabelsResponse();
  buildCounterListAccountLabelsResponse++;
  if (buildCounterListAccountLabelsResponse < 3) {
    o.accountLabels = buildUnnamed19();
    o.nextPageToken = 'foo';
  }
  buildCounterListAccountLabelsResponse--;
  return o;
}

void checkListAccountLabelsResponse(api.ListAccountLabelsResponse o) {
  buildCounterListAccountLabelsResponse++;
  if (buildCounterListAccountLabelsResponse < 3) {
    checkUnnamed19(o.accountLabels!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAccountLabelsResponse--;
}

core.List<api.Account> buildUnnamed20() => [buildAccount(), buildAccount()];

void checkUnnamed20(core.List<api.Account> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccount(o[0]);
  checkAccount(o[1]);
}

core.int buildCounterListChildAccountsResponse = 0;
api.ListChildAccountsResponse buildListChildAccountsResponse() {
  final o = api.ListChildAccountsResponse();
  buildCounterListChildAccountsResponse++;
  if (buildCounterListChildAccountsResponse < 3) {
    o.accounts = buildUnnamed20();
    o.nextPageToken = 'foo';
  }
  buildCounterListChildAccountsResponse--;
  return o;
}

void checkListChildAccountsResponse(api.ListChildAccountsResponse o) {
  buildCounterListChildAccountsResponse++;
  if (buildCounterListChildAccountsResponse < 3) {
    checkUnnamed20(o.accounts!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListChildAccountsResponse--;
}

core.List<api.CssProduct> buildUnnamed21() => [
      buildCssProduct(),
      buildCssProduct(),
    ];

void checkUnnamed21(core.List<api.CssProduct> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCssProduct(o[0]);
  checkCssProduct(o[1]);
}

core.int buildCounterListCssProductsResponse = 0;
api.ListCssProductsResponse buildListCssProductsResponse() {
  final o = api.ListCssProductsResponse();
  buildCounterListCssProductsResponse++;
  if (buildCounterListCssProductsResponse < 3) {
    o.cssProducts = buildUnnamed21();
    o.nextPageToken = 'foo';
  }
  buildCounterListCssProductsResponse--;
  return o;
}

void checkListCssProductsResponse(api.ListCssProductsResponse o) {
  buildCounterListCssProductsResponse++;
  if (buildCounterListCssProductsResponse < 3) {
    checkUnnamed21(o.cssProducts!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListCssProductsResponse--;
}

core.int buildCounterPrice = 0;
api.Price buildPrice() {
  final o = api.Price();
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    o.amountMicros = 'foo';
    o.currencyCode = 'foo';
  }
  buildCounterPrice--;
  return o;
}

void checkPrice(api.Price o) {
  buildCounterPrice++;
  if (buildCounterPrice < 3) {
    unittest.expect(o.amountMicros!, unittest.equals('foo'));
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
  }
  buildCounterPrice--;
}

core.int buildCounterProductDetail = 0;
api.ProductDetail buildProductDetail() {
  final o = api.ProductDetail();
  buildCounterProductDetail++;
  if (buildCounterProductDetail < 3) {
    o.attributeName = 'foo';
    o.attributeValue = 'foo';
    o.sectionName = 'foo';
  }
  buildCounterProductDetail--;
  return o;
}

void checkProductDetail(api.ProductDetail o) {
  buildCounterProductDetail++;
  if (buildCounterProductDetail < 3) {
    unittest.expect(o.attributeName!, unittest.equals('foo'));
    unittest.expect(o.attributeValue!, unittest.equals('foo'));
    unittest.expect(o.sectionName!, unittest.equals('foo'));
  }
  buildCounterProductDetail--;
}

core.int buildCounterProductDimension = 0;
api.ProductDimension buildProductDimension() {
  final o = api.ProductDimension();
  buildCounterProductDimension++;
  if (buildCounterProductDimension < 3) {
    o.unit = 'foo';
    o.value = 42.0;
  }
  buildCounterProductDimension--;
  return o;
}

void checkProductDimension(api.ProductDimension o) {
  buildCounterProductDimension++;
  if (buildCounterProductDimension < 3) {
    unittest.expect(o.unit!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals(42.0));
  }
  buildCounterProductDimension--;
}

core.int buildCounterProductWeight = 0;
api.ProductWeight buildProductWeight() {
  final o = api.ProductWeight();
  buildCounterProductWeight++;
  if (buildCounterProductWeight < 3) {
    o.unit = 'foo';
    o.value = 42.0;
  }
  buildCounterProductWeight--;
  return o;
}

void checkProductWeight(api.ProductWeight o) {
  buildCounterProductWeight++;
  if (buildCounterProductWeight < 3) {
    unittest.expect(o.unit!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals(42.0));
  }
  buildCounterProductWeight--;
}

core.List<core.String> buildUnnamed22() => ['foo', 'foo'];

void checkUnnamed22(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterUpdateAccountLabelsRequest = 0;
api.UpdateAccountLabelsRequest buildUpdateAccountLabelsRequest() {
  final o = api.UpdateAccountLabelsRequest();
  buildCounterUpdateAccountLabelsRequest++;
  if (buildCounterUpdateAccountLabelsRequest < 3) {
    o.labelIds = buildUnnamed22();
    o.parent = 'foo';
  }
  buildCounterUpdateAccountLabelsRequest--;
  return o;
}

void checkUpdateAccountLabelsRequest(api.UpdateAccountLabelsRequest o) {
  buildCounterUpdateAccountLabelsRequest++;
  if (buildCounterUpdateAccountLabelsRequest < 3) {
    checkUnnamed22(o.labelIds!);
    unittest.expect(o.parent!, unittest.equals('foo'));
  }
  buildCounterUpdateAccountLabelsRequest--;
}

void main() {
  unittest.group('obj-schema-Account', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Account.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccount(od);
    });
  });

  unittest.group('obj-schema-AccountLabel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccountLabel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccountLabel.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccountLabel(od);
    });
  });

  unittest.group('obj-schema-Attributes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttributes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Attributes.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAttributes(od);
    });
  });

  unittest.group('obj-schema-Certification', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCertification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Certification.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCertification(od);
    });
  });

  unittest.group('obj-schema-CssProduct', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCssProduct();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CssProduct.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCssProduct(od);
    });
  });

  unittest.group('obj-schema-CssProductInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCssProductInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CssProductInput.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCssProductInput(od);
    });
  });

  unittest.group('obj-schema-CssProductStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCssProductStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CssProductStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCssProductStatus(od);
    });
  });

  unittest.group('obj-schema-CustomAttribute', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomAttribute();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomAttribute.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCustomAttribute(od);
    });
  });

  unittest.group('obj-schema-DestinationStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDestinationStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DestinationStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDestinationStatus(od);
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

  unittest.group('obj-schema-HeadlineOfferInstallment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHeadlineOfferInstallment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HeadlineOfferInstallment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHeadlineOfferInstallment(od);
    });
  });

  unittest.group('obj-schema-HeadlineOfferSubscriptionCost', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHeadlineOfferSubscriptionCost();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HeadlineOfferSubscriptionCost.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHeadlineOfferSubscriptionCost(od);
    });
  });

  unittest.group('obj-schema-ItemLevelIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildItemLevelIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ItemLevelIssue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkItemLevelIssue(od);
    });
  });

  unittest.group('obj-schema-ListAccountLabelsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAccountLabelsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAccountLabelsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAccountLabelsResponse(od);
    });
  });

  unittest.group('obj-schema-ListChildAccountsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListChildAccountsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListChildAccountsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListChildAccountsResponse(od);
    });
  });

  unittest.group('obj-schema-ListCssProductsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCssProductsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCssProductsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListCssProductsResponse(od);
    });
  });

  unittest.group('obj-schema-Price', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Price.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPrice(od);
    });
  });

  unittest.group('obj-schema-ProductDetail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductDetail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductDetail.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProductDetail(od);
    });
  });

  unittest.group('obj-schema-ProductDimension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductDimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductDimension.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProductDimension(od);
    });
  });

  unittest.group('obj-schema-ProductWeight', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProductWeight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProductWeight.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProductWeight(od);
    });
  });

  unittest.group('obj-schema-UpdateAccountLabelsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateAccountLabelsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateAccountLabelsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpdateAccountLabelsRequest(od);
    });
  });

  unittest.group('resource-AccountsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CssApi(mock).accounts;
      final arg_name = 'foo';
      final arg_parent = 'foo';
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAccount());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        parent: arg_parent,
        $fields: arg_$fields,
      );
      checkAccount(response as api.Account);
    });

    unittest.test('method--listChildAccounts', () async {
      final mock = HttpServerMock();
      final res = api.CssApi(mock).accounts;
      final arg_parent = 'foo';
      final arg_fullName = 'foo';
      final arg_labelId = 'foo';
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
            queryMap['fullName']!.first,
            unittest.equals(arg_fullName),
          );
          unittest.expect(
            queryMap['labelId']!.first,
            unittest.equals(arg_labelId),
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
          final resp = convert.json.encode(buildListChildAccountsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.listChildAccounts(
        arg_parent,
        fullName: arg_fullName,
        labelId: arg_labelId,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListChildAccountsResponse(response as api.ListChildAccountsResponse);
    });

    unittest.test('method--updateLabels', () async {
      final mock = HttpServerMock();
      final res = api.CssApi(mock).accounts;
      final arg_request = buildUpdateAccountLabelsRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.UpdateAccountLabelsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkUpdateAccountLabelsRequest(obj);

          final path = req.url.path;
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
          final resp = convert.json.encode(buildAccount());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.updateLabels(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkAccount(response as api.Account);
    });
  });

  unittest.group('resource-AccountsCssProductInputsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CssApi(mock).accounts.cssProductInputs;
      final arg_name = 'foo';
      final arg_supplementalFeedId = 'foo';
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
            queryMap['supplementalFeedId']!.first,
            unittest.equals(arg_supplementalFeedId),
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
        supplementalFeedId: arg_supplementalFeedId,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--insert', () async {
      final mock = HttpServerMock();
      final res = api.CssApi(mock).accounts.cssProductInputs;
      final arg_request = buildCssProductInput();
      final arg_parent = 'foo';
      final arg_feedId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CssProductInput.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCssProductInput(obj);

          final path = req.url.path;
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
            queryMap['feedId']!.first,
            unittest.equals(arg_feedId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildCssProductInput());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.insert(
        arg_request,
        arg_parent,
        feedId: arg_feedId,
        $fields: arg_$fields,
      );
      checkCssProductInput(response as api.CssProductInput);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CssApi(mock).accounts.cssProductInputs;
      final arg_request = buildCssProductInput();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CssProductInput.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCssProductInput(obj);

          final path = req.url.path;
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
          final resp = convert.json.encode(buildCssProductInput());
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
      checkCssProductInput(response as api.CssProductInput);
    });
  });

  unittest.group('resource-AccountsCssProductsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CssApi(mock).accounts.cssProducts;
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
          final resp = convert.json.encode(buildCssProduct());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCssProduct(response as api.CssProduct);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CssApi(mock).accounts.cssProducts;
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
          final resp = convert.json.encode(buildListCssProductsResponse());
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
      checkListCssProductsResponse(response as api.ListCssProductsResponse);
    });
  });

  unittest.group('resource-AccountsLabelsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CssApi(mock).accounts.labels;
      final arg_request = buildAccountLabel();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AccountLabel.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAccountLabel(obj);

          final path = req.url.path;
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
          final resp = convert.json.encode(buildAccountLabel());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkAccountLabel(response as api.AccountLabel);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.CssApi(mock).accounts.labels;
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CssApi(mock).accounts.labels;
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
          final resp = convert.json.encode(buildListAccountLabelsResponse());
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
      checkListAccountLabelsResponse(response as api.ListAccountLabelsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CssApi(mock).accounts.labels;
      final arg_request = buildAccountLabel();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AccountLabel.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAccountLabel(obj);

          final path = req.url.path;
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
          final resp = convert.json.encode(buildAccountLabel());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkAccountLabel(response as api.AccountLabel);
    });
  });
}
