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

import 'package:googleapis/cloudbilling/v1beta.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterDecimal = 0;
api.Decimal buildDecimal() {
  final o = api.Decimal();
  buildCounterDecimal++;
  if (buildCounterDecimal < 3) {
    o.value = 'foo';
  }
  buildCounterDecimal--;
  return o;
}

void checkDecimal(api.Decimal o) {
  buildCounterDecimal++;
  if (buildCounterDecimal < 3) {
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterDecimal--;
}

core.int
buildCounterGoogleCloudBillingBillingaccountpricesV1betaAggregationInfo = 0;
api.GoogleCloudBillingBillingaccountpricesV1betaAggregationInfo
buildGoogleCloudBillingBillingaccountpricesV1betaAggregationInfo() {
  final o = api.GoogleCloudBillingBillingaccountpricesV1betaAggregationInfo();
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaAggregationInfo++;
  if (buildCounterGoogleCloudBillingBillingaccountpricesV1betaAggregationInfo <
      3) {
    o.interval = 'foo';
    o.level = 'foo';
  }
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaAggregationInfo--;
  return o;
}

void checkGoogleCloudBillingBillingaccountpricesV1betaAggregationInfo(
  api.GoogleCloudBillingBillingaccountpricesV1betaAggregationInfo o,
) {
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaAggregationInfo++;
  if (buildCounterGoogleCloudBillingBillingaccountpricesV1betaAggregationInfo <
      3) {
    unittest.expect(o.interval!, unittest.equals('foo'));
    unittest.expect(o.level!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaAggregationInfo--;
}

core.int
buildCounterGoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice = 0;
api.GoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice
buildGoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice() {
  final o =
      api.GoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice();
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice++;
  if (buildCounterGoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice <
      3) {
    o.currencyCode = 'foo';
    o.name = 'foo';
    o.priceReason =
        buildGoogleCloudBillingBillingaccountpricesV1betaPriceReason();
    o.rate = buildGoogleCloudBillingBillingaccountpricesV1betaRate();
    o.valueType = 'foo';
  }
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice--;
  return o;
}

void checkGoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice(
  api.GoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice o,
) {
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice++;
  if (buildCounterGoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice <
      3) {
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudBillingBillingaccountpricesV1betaPriceReason(
      o.priceReason!,
    );
    checkGoogleCloudBillingBillingaccountpricesV1betaRate(o.rate!);
    unittest.expect(o.valueType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice--;
}

core.int buildCounterGoogleCloudBillingBillingaccountpricesV1betaDefaultPrice =
    0;
api.GoogleCloudBillingBillingaccountpricesV1betaDefaultPrice
buildGoogleCloudBillingBillingaccountpricesV1betaDefaultPrice() {
  final o = api.GoogleCloudBillingBillingaccountpricesV1betaDefaultPrice();
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaDefaultPrice++;
  if (buildCounterGoogleCloudBillingBillingaccountpricesV1betaDefaultPrice <
      3) {}
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaDefaultPrice--;
  return o;
}

void checkGoogleCloudBillingBillingaccountpricesV1betaDefaultPrice(
  api.GoogleCloudBillingBillingaccountpricesV1betaDefaultPrice o,
) {
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaDefaultPrice++;
  if (buildCounterGoogleCloudBillingBillingaccountpricesV1betaDefaultPrice <
      3) {}
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaDefaultPrice--;
}

core.int buildCounterGoogleCloudBillingBillingaccountpricesV1betaFixedDiscount =
    0;
api.GoogleCloudBillingBillingaccountpricesV1betaFixedDiscount
buildGoogleCloudBillingBillingaccountpricesV1betaFixedDiscount() {
  final o = api.GoogleCloudBillingBillingaccountpricesV1betaFixedDiscount();
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaFixedDiscount++;
  if (buildCounterGoogleCloudBillingBillingaccountpricesV1betaFixedDiscount <
      3) {
    o.discountPercent = buildDecimal();
    o.discountScopeType = 'foo';
    o.fixTime = 'foo';
    o.skuGroup = 'foo';
  }
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaFixedDiscount--;
  return o;
}

void checkGoogleCloudBillingBillingaccountpricesV1betaFixedDiscount(
  api.GoogleCloudBillingBillingaccountpricesV1betaFixedDiscount o,
) {
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaFixedDiscount++;
  if (buildCounterGoogleCloudBillingBillingaccountpricesV1betaFixedDiscount <
      3) {
    checkDecimal(o.discountPercent!);
    unittest.expect(o.discountScopeType!, unittest.equals('foo'));
    unittest.expect(o.fixTime!, unittest.equals('foo'));
    unittest.expect(o.skuGroup!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaFixedDiscount--;
}

core.int buildCounterGoogleCloudBillingBillingaccountpricesV1betaFixedPrice = 0;
api.GoogleCloudBillingBillingaccountpricesV1betaFixedPrice
buildGoogleCloudBillingBillingaccountpricesV1betaFixedPrice() {
  final o = api.GoogleCloudBillingBillingaccountpricesV1betaFixedPrice();
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaFixedPrice++;
  if (buildCounterGoogleCloudBillingBillingaccountpricesV1betaFixedPrice < 3) {}
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaFixedPrice--;
  return o;
}

void checkGoogleCloudBillingBillingaccountpricesV1betaFixedPrice(
  api.GoogleCloudBillingBillingaccountpricesV1betaFixedPrice o,
) {
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaFixedPrice++;
  if (buildCounterGoogleCloudBillingBillingaccountpricesV1betaFixedPrice < 3) {}
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaFixedPrice--;
}

core.int
buildCounterGoogleCloudBillingBillingaccountpricesV1betaFloatingDiscount = 0;
api.GoogleCloudBillingBillingaccountpricesV1betaFloatingDiscount
buildGoogleCloudBillingBillingaccountpricesV1betaFloatingDiscount() {
  final o = api.GoogleCloudBillingBillingaccountpricesV1betaFloatingDiscount();
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaFloatingDiscount++;
  if (buildCounterGoogleCloudBillingBillingaccountpricesV1betaFloatingDiscount <
      3) {
    o.discountPercent = buildDecimal();
    o.discountScopeType = 'foo';
    o.skuGroup = 'foo';
  }
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaFloatingDiscount--;
  return o;
}

void checkGoogleCloudBillingBillingaccountpricesV1betaFloatingDiscount(
  api.GoogleCloudBillingBillingaccountpricesV1betaFloatingDiscount o,
) {
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaFloatingDiscount++;
  if (buildCounterGoogleCloudBillingBillingaccountpricesV1betaFloatingDiscount <
      3) {
    checkDecimal(o.discountPercent!);
    unittest.expect(o.discountScopeType!, unittest.equals('foo'));
    unittest.expect(o.skuGroup!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaFloatingDiscount--;
}

core.List<api.GoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice>
buildUnnamed0() => [
  buildGoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice(),
  buildGoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice(),
];

void checkUnnamed0(
  core.List<api.GoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice>
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice(o[0]);
  checkGoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice(o[1]);
}

core.int
buildCounterGoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse =
    0;
api.GoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse
buildGoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse() {
  final o =
      api.GoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse();
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse++;
  if (buildCounterGoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse <
      3) {
    o.billingAccountPrices = buildUnnamed0();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse--;
  return o;
}

void
checkGoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse(
  api.GoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse
  o,
) {
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse++;
  if (buildCounterGoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse <
      3) {
    checkUnnamed0(o.billingAccountPrices!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse--;
}

core.int
buildCounterGoogleCloudBillingBillingaccountpricesV1betaListPriceAsCeiling = 0;
api.GoogleCloudBillingBillingaccountpricesV1betaListPriceAsCeiling
buildGoogleCloudBillingBillingaccountpricesV1betaListPriceAsCeiling() {
  final o =
      api.GoogleCloudBillingBillingaccountpricesV1betaListPriceAsCeiling();
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaListPriceAsCeiling++;
  if (buildCounterGoogleCloudBillingBillingaccountpricesV1betaListPriceAsCeiling <
      3) {}
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaListPriceAsCeiling--;
  return o;
}

void checkGoogleCloudBillingBillingaccountpricesV1betaListPriceAsCeiling(
  api.GoogleCloudBillingBillingaccountpricesV1betaListPriceAsCeiling o,
) {
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaListPriceAsCeiling++;
  if (buildCounterGoogleCloudBillingBillingaccountpricesV1betaListPriceAsCeiling <
      3) {}
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaListPriceAsCeiling--;
}

core.int buildCounterGoogleCloudBillingBillingaccountpricesV1betaMergedPrice =
    0;
api.GoogleCloudBillingBillingaccountpricesV1betaMergedPrice
buildGoogleCloudBillingBillingaccountpricesV1betaMergedPrice() {
  final o = api.GoogleCloudBillingBillingaccountpricesV1betaMergedPrice();
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaMergedPrice++;
  if (buildCounterGoogleCloudBillingBillingaccountpricesV1betaMergedPrice <
      3) {}
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaMergedPrice--;
  return o;
}

void checkGoogleCloudBillingBillingaccountpricesV1betaMergedPrice(
  api.GoogleCloudBillingBillingaccountpricesV1betaMergedPrice o,
) {
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaMergedPrice++;
  if (buildCounterGoogleCloudBillingBillingaccountpricesV1betaMergedPrice <
      3) {}
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaMergedPrice--;
}

core.int buildCounterGoogleCloudBillingBillingaccountpricesV1betaMigratedPrice =
    0;
api.GoogleCloudBillingBillingaccountpricesV1betaMigratedPrice
buildGoogleCloudBillingBillingaccountpricesV1betaMigratedPrice() {
  final o = api.GoogleCloudBillingBillingaccountpricesV1betaMigratedPrice();
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaMigratedPrice++;
  if (buildCounterGoogleCloudBillingBillingaccountpricesV1betaMigratedPrice <
      3) {
    o.sourceSku = 'foo';
  }
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaMigratedPrice--;
  return o;
}

void checkGoogleCloudBillingBillingaccountpricesV1betaMigratedPrice(
  api.GoogleCloudBillingBillingaccountpricesV1betaMigratedPrice o,
) {
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaMigratedPrice++;
  if (buildCounterGoogleCloudBillingBillingaccountpricesV1betaMigratedPrice <
      3) {
    unittest.expect(o.sourceSku!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaMigratedPrice--;
}

core.int buildCounterGoogleCloudBillingBillingaccountpricesV1betaPriceReason =
    0;
api.GoogleCloudBillingBillingaccountpricesV1betaPriceReason
buildGoogleCloudBillingBillingaccountpricesV1betaPriceReason() {
  final o = api.GoogleCloudBillingBillingaccountpricesV1betaPriceReason();
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaPriceReason++;
  if (buildCounterGoogleCloudBillingBillingaccountpricesV1betaPriceReason < 3) {
    o.defaultPrice =
        buildGoogleCloudBillingBillingaccountpricesV1betaDefaultPrice();
    o.fixedDiscount =
        buildGoogleCloudBillingBillingaccountpricesV1betaFixedDiscount();
    o.fixedPrice =
        buildGoogleCloudBillingBillingaccountpricesV1betaFixedPrice();
    o.floatingDiscount =
        buildGoogleCloudBillingBillingaccountpricesV1betaFloatingDiscount();
    o.listPriceAsCeiling =
        buildGoogleCloudBillingBillingaccountpricesV1betaListPriceAsCeiling();
    o.mergedPrice =
        buildGoogleCloudBillingBillingaccountpricesV1betaMergedPrice();
    o.migratedPrice =
        buildGoogleCloudBillingBillingaccountpricesV1betaMigratedPrice();
    o.type = 'foo';
  }
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaPriceReason--;
  return o;
}

void checkGoogleCloudBillingBillingaccountpricesV1betaPriceReason(
  api.GoogleCloudBillingBillingaccountpricesV1betaPriceReason o,
) {
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaPriceReason++;
  if (buildCounterGoogleCloudBillingBillingaccountpricesV1betaPriceReason < 3) {
    checkGoogleCloudBillingBillingaccountpricesV1betaDefaultPrice(
      o.defaultPrice!,
    );
    checkGoogleCloudBillingBillingaccountpricesV1betaFixedDiscount(
      o.fixedDiscount!,
    );
    checkGoogleCloudBillingBillingaccountpricesV1betaFixedPrice(o.fixedPrice!);
    checkGoogleCloudBillingBillingaccountpricesV1betaFloatingDiscount(
      o.floatingDiscount!,
    );
    checkGoogleCloudBillingBillingaccountpricesV1betaListPriceAsCeiling(
      o.listPriceAsCeiling!,
    );
    checkGoogleCloudBillingBillingaccountpricesV1betaMergedPrice(
      o.mergedPrice!,
    );
    checkGoogleCloudBillingBillingaccountpricesV1betaMigratedPrice(
      o.migratedPrice!,
    );
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaPriceReason--;
}

core.List<api.GoogleCloudBillingBillingaccountpricesV1betaRateTier>
buildUnnamed1() => [
  buildGoogleCloudBillingBillingaccountpricesV1betaRateTier(),
  buildGoogleCloudBillingBillingaccountpricesV1betaRateTier(),
];

void checkUnnamed1(
  core.List<api.GoogleCloudBillingBillingaccountpricesV1betaRateTier> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBillingBillingaccountpricesV1betaRateTier(o[0]);
  checkGoogleCloudBillingBillingaccountpricesV1betaRateTier(o[1]);
}

core.int buildCounterGoogleCloudBillingBillingaccountpricesV1betaRate = 0;
api.GoogleCloudBillingBillingaccountpricesV1betaRate
buildGoogleCloudBillingBillingaccountpricesV1betaRate() {
  final o = api.GoogleCloudBillingBillingaccountpricesV1betaRate();
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaRate++;
  if (buildCounterGoogleCloudBillingBillingaccountpricesV1betaRate < 3) {
    o.aggregationInfo =
        buildGoogleCloudBillingBillingaccountpricesV1betaAggregationInfo();
    o.tiers = buildUnnamed1();
    o.unitInfo = buildGoogleCloudBillingBillingaccountpricesV1betaUnitInfo();
  }
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaRate--;
  return o;
}

void checkGoogleCloudBillingBillingaccountpricesV1betaRate(
  api.GoogleCloudBillingBillingaccountpricesV1betaRate o,
) {
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaRate++;
  if (buildCounterGoogleCloudBillingBillingaccountpricesV1betaRate < 3) {
    checkGoogleCloudBillingBillingaccountpricesV1betaAggregationInfo(
      o.aggregationInfo!,
    );
    checkUnnamed1(o.tiers!);
    checkGoogleCloudBillingBillingaccountpricesV1betaUnitInfo(o.unitInfo!);
  }
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaRate--;
}

core.int buildCounterGoogleCloudBillingBillingaccountpricesV1betaRateTier = 0;
api.GoogleCloudBillingBillingaccountpricesV1betaRateTier
buildGoogleCloudBillingBillingaccountpricesV1betaRateTier() {
  final o = api.GoogleCloudBillingBillingaccountpricesV1betaRateTier();
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaRateTier++;
  if (buildCounterGoogleCloudBillingBillingaccountpricesV1betaRateTier < 3) {
    o.contractPrice = buildMoney();
    o.effectiveDiscountPercent = buildDecimal();
    o.listPrice = buildMoney();
    o.startAmount = buildDecimal();
  }
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaRateTier--;
  return o;
}

void checkGoogleCloudBillingBillingaccountpricesV1betaRateTier(
  api.GoogleCloudBillingBillingaccountpricesV1betaRateTier o,
) {
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaRateTier++;
  if (buildCounterGoogleCloudBillingBillingaccountpricesV1betaRateTier < 3) {
    checkMoney(o.contractPrice!);
    checkDecimal(o.effectiveDiscountPercent!);
    checkMoney(o.listPrice!);
    checkDecimal(o.startAmount!);
  }
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaRateTier--;
}

core.int buildCounterGoogleCloudBillingBillingaccountpricesV1betaUnitInfo = 0;
api.GoogleCloudBillingBillingaccountpricesV1betaUnitInfo
buildGoogleCloudBillingBillingaccountpricesV1betaUnitInfo() {
  final o = api.GoogleCloudBillingBillingaccountpricesV1betaUnitInfo();
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaUnitInfo++;
  if (buildCounterGoogleCloudBillingBillingaccountpricesV1betaUnitInfo < 3) {
    o.unit = 'foo';
    o.unitDescription = 'foo';
    o.unitQuantity = buildDecimal();
  }
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaUnitInfo--;
  return o;
}

void checkGoogleCloudBillingBillingaccountpricesV1betaUnitInfo(
  api.GoogleCloudBillingBillingaccountpricesV1betaUnitInfo o,
) {
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaUnitInfo++;
  if (buildCounterGoogleCloudBillingBillingaccountpricesV1betaUnitInfo < 3) {
    unittest.expect(o.unit!, unittest.equals('foo'));
    unittest.expect(o.unitDescription!, unittest.equals('foo'));
    checkDecimal(o.unitQuantity!);
  }
  buildCounterGoogleCloudBillingBillingaccountpricesV1betaUnitInfo--;
}

core.int
buildCounterGoogleCloudBillingBillingaccountservicesV1betaBillingAccountService =
    0;
api.GoogleCloudBillingBillingaccountservicesV1betaBillingAccountService
buildGoogleCloudBillingBillingaccountservicesV1betaBillingAccountService() {
  final o =
      api.GoogleCloudBillingBillingaccountservicesV1betaBillingAccountService();
  buildCounterGoogleCloudBillingBillingaccountservicesV1betaBillingAccountService++;
  if (buildCounterGoogleCloudBillingBillingaccountservicesV1betaBillingAccountService <
      3) {
    o.displayName = 'foo';
    o.name = 'foo';
    o.serviceId = 'foo';
  }
  buildCounterGoogleCloudBillingBillingaccountservicesV1betaBillingAccountService--;
  return o;
}

void checkGoogleCloudBillingBillingaccountservicesV1betaBillingAccountService(
  api.GoogleCloudBillingBillingaccountservicesV1betaBillingAccountService o,
) {
  buildCounterGoogleCloudBillingBillingaccountservicesV1betaBillingAccountService++;
  if (buildCounterGoogleCloudBillingBillingaccountservicesV1betaBillingAccountService <
      3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.serviceId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBillingBillingaccountservicesV1betaBillingAccountService--;
}

core.List<
  api.GoogleCloudBillingBillingaccountservicesV1betaBillingAccountService
>
buildUnnamed2() => [
  buildGoogleCloudBillingBillingaccountservicesV1betaBillingAccountService(),
  buildGoogleCloudBillingBillingaccountservicesV1betaBillingAccountService(),
];

void checkUnnamed2(
  core.List<
    api.GoogleCloudBillingBillingaccountservicesV1betaBillingAccountService
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBillingBillingaccountservicesV1betaBillingAccountService(
    o[0],
  );
  checkGoogleCloudBillingBillingaccountservicesV1betaBillingAccountService(
    o[1],
  );
}

core.int
buildCounterGoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse =
    0;
api.GoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse
buildGoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse() {
  final o =
      api.GoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse();
  buildCounterGoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse++;
  if (buildCounterGoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse <
      3) {
    o.billingAccountServices = buildUnnamed2();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse--;
  return o;
}

void
checkGoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse(
  api.GoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse
  o,
) {
  buildCounterGoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse++;
  if (buildCounterGoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse <
      3) {
    checkUnnamed2(o.billingAccountServices!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse--;
}

core.int
buildCounterGoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup =
    0;
api.GoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup
buildGoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup() {
  final o =
      api.GoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup();
  buildCounterGoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup++;
  if (buildCounterGoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup <
      3) {
    o.displayName = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup--;
  return o;
}

void checkGoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup(
  api.GoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup o,
) {
  buildCounterGoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup++;
  if (buildCounterGoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup <
      3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup--;
}

core.List<
  api.GoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup
>
buildUnnamed3() => [
  buildGoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup(),
  buildGoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup(),
];

void checkUnnamed3(
  core.List<
    api.GoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup(
    o[0],
  );
  checkGoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup(
    o[1],
  );
}

core.int
buildCounterGoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse =
    0;
api.GoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse
buildGoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse() {
  final o =
      api.GoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse();
  buildCounterGoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse++;
  if (buildCounterGoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse <
      3) {
    o.billingAccountSkuGroups = buildUnnamed3();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse--;
  return o;
}

void
checkGoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse(
  api.GoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse
  o,
) {
  buildCounterGoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse++;
  if (buildCounterGoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse <
      3) {
    checkUnnamed3(o.billingAccountSkuGroups!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse--;
}

core.int
buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku =
    0;
api.GoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku
buildGoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku() {
  final o =
      api.GoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku();
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku++;
  if (buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku <
      3) {
    o.billingAccountService = 'foo';
    o.displayName = 'foo';
    o.geoTaxonomy =
        buildGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomy();
    o.name = 'foo';
    o.productTaxonomy =
        buildGoogleCloudBillingBillingaccountskugroupskusV1betaProductTaxonomy();
    o.skuId = 'foo';
  }
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku--;
  return o;
}

void
checkGoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku(
  api.GoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku
  o,
) {
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku++;
  if (buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku <
      3) {
    unittest.expect(o.billingAccountService!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomy(
      o.geoTaxonomy!,
    );
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudBillingBillingaccountskugroupskusV1betaProductTaxonomy(
      o.productTaxonomy!,
    );
    unittest.expect(o.skuId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku--;
}

core.int
buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomy = 0;
api.GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomy
buildGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomy() {
  final o = api.GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomy();
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomy++;
  if (buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomy <
      3) {
    o.globalMetadata =
        buildGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyGlobal();
    o.multiRegionalMetadata =
        buildGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyMultiRegional();
    o.regionalMetadata =
        buildGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegional();
    o.type = 'foo';
  }
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomy--;
  return o;
}

void checkGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomy(
  api.GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomy o,
) {
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomy++;
  if (buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomy <
      3) {
    checkGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyGlobal(
      o.globalMetadata!,
    );
    checkGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyMultiRegional(
      o.multiRegionalMetadata!,
    );
    checkGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegional(
      o.regionalMetadata!,
    );
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomy--;
}

core.int
buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyGlobal =
    0;
api.GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyGlobal
buildGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyGlobal() {
  final o =
      api.GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyGlobal();
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyGlobal++;
  if (buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyGlobal <
      3) {}
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyGlobal--;
  return o;
}

void checkGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyGlobal(
  api.GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyGlobal o,
) {
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyGlobal++;
  if (buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyGlobal <
      3) {}
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyGlobal--;
}

core.List<
  api.GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion
>
buildUnnamed4() => [
  buildGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion(),
  buildGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion(),
];

void checkUnnamed4(
  core.List<
    api.GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion(
    o[0],
  );
  checkGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion(
    o[1],
  );
}

core.int
buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyMultiRegional =
    0;
api.GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyMultiRegional
buildGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyMultiRegional() {
  final o =
      api.GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyMultiRegional();
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyMultiRegional++;
  if (buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyMultiRegional <
      3) {
    o.regions = buildUnnamed4();
  }
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyMultiRegional--;
  return o;
}

void
checkGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyMultiRegional(
  api.GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyMultiRegional
  o,
) {
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyMultiRegional++;
  if (buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyMultiRegional <
      3) {
    checkUnnamed4(o.regions!);
  }
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyMultiRegional--;
}

core.int
buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion =
    0;
api.GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion
buildGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion() {
  final o =
      api.GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion();
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion++;
  if (buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion <
      3) {
    o.region = 'foo';
  }
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion--;
  return o;
}

void checkGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion(
  api.GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion o,
) {
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion++;
  if (buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion <
      3) {
    unittest.expect(o.region!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion--;
}

core.int
buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegional =
    0;
api.GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegional
buildGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegional() {
  final o =
      api.GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegional();
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegional++;
  if (buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegional <
      3) {
    o.region =
        buildGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion();
  }
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegional--;
  return o;
}

void checkGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegional(
  api.GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegional o,
) {
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegional++;
  if (buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegional <
      3) {
    checkGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion(
      o.region!,
    );
  }
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegional--;
}

core.List<
  api.GoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku
>
buildUnnamed5() => [
  buildGoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku(),
  buildGoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku(),
];

void checkUnnamed5(
  core.List<
    api.GoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku(
    o[0],
  );
  checkGoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku(
    o[1],
  );
}

core.int
buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse =
    0;
api.GoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse
buildGoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse() {
  final o =
      api.GoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse();
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse++;
  if (buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse <
      3) {
    o.billingAccountSkuGroupSkus = buildUnnamed5();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse--;
  return o;
}

void
checkGoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse(
  api.GoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse
  o,
) {
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse++;
  if (buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse <
      3) {
    checkUnnamed5(o.billingAccountSkuGroupSkus!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse--;
}

core.List<
  api.GoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory
>
buildUnnamed6() => [
  buildGoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory(),
  buildGoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory(),
];

void checkUnnamed6(
  core.List<
    api.GoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory(o[0]);
  checkGoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory(o[1]);
}

core.int
buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaProductTaxonomy =
    0;
api.GoogleCloudBillingBillingaccountskugroupskusV1betaProductTaxonomy
buildGoogleCloudBillingBillingaccountskugroupskusV1betaProductTaxonomy() {
  final o =
      api.GoogleCloudBillingBillingaccountskugroupskusV1betaProductTaxonomy();
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaProductTaxonomy++;
  if (buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaProductTaxonomy <
      3) {
    o.taxonomyCategories = buildUnnamed6();
  }
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaProductTaxonomy--;
  return o;
}

void checkGoogleCloudBillingBillingaccountskugroupskusV1betaProductTaxonomy(
  api.GoogleCloudBillingBillingaccountskugroupskusV1betaProductTaxonomy o,
) {
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaProductTaxonomy++;
  if (buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaProductTaxonomy <
      3) {
    checkUnnamed6(o.taxonomyCategories!);
  }
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaProductTaxonomy--;
}

core.int
buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory =
    0;
api.GoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory
buildGoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory() {
  final o =
      api.GoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory();
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory++;
  if (buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory <
      3) {
    o.category = 'foo';
  }
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory--;
  return o;
}

void checkGoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory(
  api.GoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory o,
) {
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory++;
  if (buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory <
      3) {
    unittest.expect(o.category!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory--;
}

core.int
buildCounterGoogleCloudBillingBillingaccountskusV1betaBillingAccountSku = 0;
api.GoogleCloudBillingBillingaccountskusV1betaBillingAccountSku
buildGoogleCloudBillingBillingaccountskusV1betaBillingAccountSku() {
  final o = api.GoogleCloudBillingBillingaccountskusV1betaBillingAccountSku();
  buildCounterGoogleCloudBillingBillingaccountskusV1betaBillingAccountSku++;
  if (buildCounterGoogleCloudBillingBillingaccountskusV1betaBillingAccountSku <
      3) {
    o.billingAccountService = 'foo';
    o.displayName = 'foo';
    o.geoTaxonomy =
        buildGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomy();
    o.name = 'foo';
    o.productTaxonomy =
        buildGoogleCloudBillingBillingaccountskusV1betaProductTaxonomy();
    o.skuId = 'foo';
  }
  buildCounterGoogleCloudBillingBillingaccountskusV1betaBillingAccountSku--;
  return o;
}

void checkGoogleCloudBillingBillingaccountskusV1betaBillingAccountSku(
  api.GoogleCloudBillingBillingaccountskusV1betaBillingAccountSku o,
) {
  buildCounterGoogleCloudBillingBillingaccountskusV1betaBillingAccountSku++;
  if (buildCounterGoogleCloudBillingBillingaccountskusV1betaBillingAccountSku <
      3) {
    unittest.expect(o.billingAccountService!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomy(o.geoTaxonomy!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudBillingBillingaccountskusV1betaProductTaxonomy(
      o.productTaxonomy!,
    );
    unittest.expect(o.skuId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBillingBillingaccountskusV1betaBillingAccountSku--;
}

core.int buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomy = 0;
api.GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomy
buildGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomy() {
  final o = api.GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomy();
  buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomy++;
  if (buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomy < 3) {
    o.globalMetadata =
        buildGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyGlobal();
    o.multiRegionalMetadata =
        buildGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyMultiRegional();
    o.regionalMetadata =
        buildGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegional();
    o.type = 'foo';
  }
  buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomy--;
  return o;
}

void checkGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomy(
  api.GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomy o,
) {
  buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomy++;
  if (buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomy < 3) {
    checkGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyGlobal(
      o.globalMetadata!,
    );
    checkGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyMultiRegional(
      o.multiRegionalMetadata!,
    );
    checkGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegional(
      o.regionalMetadata!,
    );
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomy--;
}

core.int
buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyGlobal = 0;
api.GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyGlobal
buildGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyGlobal() {
  final o = api.GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyGlobal();
  buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyGlobal++;
  if (buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyGlobal <
      3) {}
  buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyGlobal--;
  return o;
}

void checkGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyGlobal(
  api.GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyGlobal o,
) {
  buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyGlobal++;
  if (buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyGlobal <
      3) {}
  buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyGlobal--;
}

core.List<api.GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion>
buildUnnamed7() => [
  buildGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion(),
  buildGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion(),
];

void checkUnnamed7(
  core.List<api.GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion(o[0]);
  checkGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion(o[1]);
}

core.int
buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyMultiRegional =
    0;
api.GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyMultiRegional
buildGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyMultiRegional() {
  final o =
      api.GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyMultiRegional();
  buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyMultiRegional++;
  if (buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyMultiRegional <
      3) {
    o.regions = buildUnnamed7();
  }
  buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyMultiRegional--;
  return o;
}

void checkGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyMultiRegional(
  api.GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyMultiRegional o,
) {
  buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyMultiRegional++;
  if (buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyMultiRegional <
      3) {
    checkUnnamed7(o.regions!);
  }
  buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyMultiRegional--;
}

core.int
buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion = 0;
api.GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion
buildGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion() {
  final o = api.GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion();
  buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion++;
  if (buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion <
      3) {
    o.region = 'foo';
  }
  buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion--;
  return o;
}

void checkGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion(
  api.GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion o,
) {
  buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion++;
  if (buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion <
      3) {
    unittest.expect(o.region!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion--;
}

core.int
buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegional = 0;
api.GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegional
buildGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegional() {
  final o = api.GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegional();
  buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegional++;
  if (buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegional <
      3) {
    o.region =
        buildGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion();
  }
  buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegional--;
  return o;
}

void checkGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegional(
  api.GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegional o,
) {
  buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegional++;
  if (buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegional <
      3) {
    checkGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion(o.region!);
  }
  buildCounterGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegional--;
}

core.List<api.GoogleCloudBillingBillingaccountskusV1betaBillingAccountSku>
buildUnnamed8() => [
  buildGoogleCloudBillingBillingaccountskusV1betaBillingAccountSku(),
  buildGoogleCloudBillingBillingaccountskusV1betaBillingAccountSku(),
];

void checkUnnamed8(
  core.List<api.GoogleCloudBillingBillingaccountskusV1betaBillingAccountSku> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBillingBillingaccountskusV1betaBillingAccountSku(o[0]);
  checkGoogleCloudBillingBillingaccountskusV1betaBillingAccountSku(o[1]);
}

core.int
buildCounterGoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse =
    0;
api.GoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse
buildGoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse() {
  final o =
      api.GoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse();
  buildCounterGoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse++;
  if (buildCounterGoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse <
      3) {
    o.billingAccountSkus = buildUnnamed8();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse--;
  return o;
}

void
checkGoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse(
  api.GoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse
  o,
) {
  buildCounterGoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse++;
  if (buildCounterGoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse <
      3) {
    checkUnnamed8(o.billingAccountSkus!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse--;
}

core.List<api.GoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory>
buildUnnamed9() => [
  buildGoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory(),
  buildGoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory(),
];

void checkUnnamed9(
  core.List<api.GoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory(o[0]);
  checkGoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory(o[1]);
}

core.int buildCounterGoogleCloudBillingBillingaccountskusV1betaProductTaxonomy =
    0;
api.GoogleCloudBillingBillingaccountskusV1betaProductTaxonomy
buildGoogleCloudBillingBillingaccountskusV1betaProductTaxonomy() {
  final o = api.GoogleCloudBillingBillingaccountskusV1betaProductTaxonomy();
  buildCounterGoogleCloudBillingBillingaccountskusV1betaProductTaxonomy++;
  if (buildCounterGoogleCloudBillingBillingaccountskusV1betaProductTaxonomy <
      3) {
    o.taxonomyCategories = buildUnnamed9();
  }
  buildCounterGoogleCloudBillingBillingaccountskusV1betaProductTaxonomy--;
  return o;
}

void checkGoogleCloudBillingBillingaccountskusV1betaProductTaxonomy(
  api.GoogleCloudBillingBillingaccountskusV1betaProductTaxonomy o,
) {
  buildCounterGoogleCloudBillingBillingaccountskusV1betaProductTaxonomy++;
  if (buildCounterGoogleCloudBillingBillingaccountskusV1betaProductTaxonomy <
      3) {
    checkUnnamed9(o.taxonomyCategories!);
  }
  buildCounterGoogleCloudBillingBillingaccountskusV1betaProductTaxonomy--;
}

core.int
buildCounterGoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory = 0;
api.GoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory
buildGoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory() {
  final o = api.GoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory();
  buildCounterGoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory++;
  if (buildCounterGoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory <
      3) {
    o.category = 'foo';
  }
  buildCounterGoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory--;
  return o;
}

void checkGoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory(
  api.GoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory o,
) {
  buildCounterGoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory++;
  if (buildCounterGoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory <
      3) {
    unittest.expect(o.category!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory--;
}

core.int buildCounterGoogleCloudBillingPricesV1betaAggregationInfo = 0;
api.GoogleCloudBillingPricesV1betaAggregationInfo
buildGoogleCloudBillingPricesV1betaAggregationInfo() {
  final o = api.GoogleCloudBillingPricesV1betaAggregationInfo();
  buildCounterGoogleCloudBillingPricesV1betaAggregationInfo++;
  if (buildCounterGoogleCloudBillingPricesV1betaAggregationInfo < 3) {
    o.interval = 'foo';
    o.level = 'foo';
  }
  buildCounterGoogleCloudBillingPricesV1betaAggregationInfo--;
  return o;
}

void checkGoogleCloudBillingPricesV1betaAggregationInfo(
  api.GoogleCloudBillingPricesV1betaAggregationInfo o,
) {
  buildCounterGoogleCloudBillingPricesV1betaAggregationInfo++;
  if (buildCounterGoogleCloudBillingPricesV1betaAggregationInfo < 3) {
    unittest.expect(o.interval!, unittest.equals('foo'));
    unittest.expect(o.level!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBillingPricesV1betaAggregationInfo--;
}

core.List<api.GoogleCloudBillingPricesV1betaPrice> buildUnnamed10() => [
  buildGoogleCloudBillingPricesV1betaPrice(),
  buildGoogleCloudBillingPricesV1betaPrice(),
];

void checkUnnamed10(core.List<api.GoogleCloudBillingPricesV1betaPrice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBillingPricesV1betaPrice(o[0]);
  checkGoogleCloudBillingPricesV1betaPrice(o[1]);
}

core.int buildCounterGoogleCloudBillingPricesV1betaListPricesResponse = 0;
api.GoogleCloudBillingPricesV1betaListPricesResponse
buildGoogleCloudBillingPricesV1betaListPricesResponse() {
  final o = api.GoogleCloudBillingPricesV1betaListPricesResponse();
  buildCounterGoogleCloudBillingPricesV1betaListPricesResponse++;
  if (buildCounterGoogleCloudBillingPricesV1betaListPricesResponse < 3) {
    o.nextPageToken = 'foo';
    o.prices = buildUnnamed10();
  }
  buildCounterGoogleCloudBillingPricesV1betaListPricesResponse--;
  return o;
}

void checkGoogleCloudBillingPricesV1betaListPricesResponse(
  api.GoogleCloudBillingPricesV1betaListPricesResponse o,
) {
  buildCounterGoogleCloudBillingPricesV1betaListPricesResponse++;
  if (buildCounterGoogleCloudBillingPricesV1betaListPricesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed10(o.prices!);
  }
  buildCounterGoogleCloudBillingPricesV1betaListPricesResponse--;
}

core.int buildCounterGoogleCloudBillingPricesV1betaPrice = 0;
api.GoogleCloudBillingPricesV1betaPrice
buildGoogleCloudBillingPricesV1betaPrice() {
  final o = api.GoogleCloudBillingPricesV1betaPrice();
  buildCounterGoogleCloudBillingPricesV1betaPrice++;
  if (buildCounterGoogleCloudBillingPricesV1betaPrice < 3) {
    o.currencyCode = 'foo';
    o.name = 'foo';
    o.rate = buildGoogleCloudBillingPricesV1betaRate();
    o.valueType = 'foo';
  }
  buildCounterGoogleCloudBillingPricesV1betaPrice--;
  return o;
}

void checkGoogleCloudBillingPricesV1betaPrice(
  api.GoogleCloudBillingPricesV1betaPrice o,
) {
  buildCounterGoogleCloudBillingPricesV1betaPrice++;
  if (buildCounterGoogleCloudBillingPricesV1betaPrice < 3) {
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudBillingPricesV1betaRate(o.rate!);
    unittest.expect(o.valueType!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBillingPricesV1betaPrice--;
}

core.List<api.GoogleCloudBillingPricesV1betaRateTier> buildUnnamed11() => [
  buildGoogleCloudBillingPricesV1betaRateTier(),
  buildGoogleCloudBillingPricesV1betaRateTier(),
];

void checkUnnamed11(core.List<api.GoogleCloudBillingPricesV1betaRateTier> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBillingPricesV1betaRateTier(o[0]);
  checkGoogleCloudBillingPricesV1betaRateTier(o[1]);
}

core.int buildCounterGoogleCloudBillingPricesV1betaRate = 0;
api.GoogleCloudBillingPricesV1betaRate
buildGoogleCloudBillingPricesV1betaRate() {
  final o = api.GoogleCloudBillingPricesV1betaRate();
  buildCounterGoogleCloudBillingPricesV1betaRate++;
  if (buildCounterGoogleCloudBillingPricesV1betaRate < 3) {
    o.aggregationInfo = buildGoogleCloudBillingPricesV1betaAggregationInfo();
    o.tiers = buildUnnamed11();
    o.unitInfo = buildGoogleCloudBillingPricesV1betaUnitInfo();
  }
  buildCounterGoogleCloudBillingPricesV1betaRate--;
  return o;
}

void checkGoogleCloudBillingPricesV1betaRate(
  api.GoogleCloudBillingPricesV1betaRate o,
) {
  buildCounterGoogleCloudBillingPricesV1betaRate++;
  if (buildCounterGoogleCloudBillingPricesV1betaRate < 3) {
    checkGoogleCloudBillingPricesV1betaAggregationInfo(o.aggregationInfo!);
    checkUnnamed11(o.tiers!);
    checkGoogleCloudBillingPricesV1betaUnitInfo(o.unitInfo!);
  }
  buildCounterGoogleCloudBillingPricesV1betaRate--;
}

core.int buildCounterGoogleCloudBillingPricesV1betaRateTier = 0;
api.GoogleCloudBillingPricesV1betaRateTier
buildGoogleCloudBillingPricesV1betaRateTier() {
  final o = api.GoogleCloudBillingPricesV1betaRateTier();
  buildCounterGoogleCloudBillingPricesV1betaRateTier++;
  if (buildCounterGoogleCloudBillingPricesV1betaRateTier < 3) {
    o.listPrice = buildMoney();
    o.startAmount = buildDecimal();
  }
  buildCounterGoogleCloudBillingPricesV1betaRateTier--;
  return o;
}

void checkGoogleCloudBillingPricesV1betaRateTier(
  api.GoogleCloudBillingPricesV1betaRateTier o,
) {
  buildCounterGoogleCloudBillingPricesV1betaRateTier++;
  if (buildCounterGoogleCloudBillingPricesV1betaRateTier < 3) {
    checkMoney(o.listPrice!);
    checkDecimal(o.startAmount!);
  }
  buildCounterGoogleCloudBillingPricesV1betaRateTier--;
}

core.int buildCounterGoogleCloudBillingPricesV1betaUnitInfo = 0;
api.GoogleCloudBillingPricesV1betaUnitInfo
buildGoogleCloudBillingPricesV1betaUnitInfo() {
  final o = api.GoogleCloudBillingPricesV1betaUnitInfo();
  buildCounterGoogleCloudBillingPricesV1betaUnitInfo++;
  if (buildCounterGoogleCloudBillingPricesV1betaUnitInfo < 3) {
    o.unit = 'foo';
    o.unitDescription = 'foo';
    o.unitQuantity = buildDecimal();
  }
  buildCounterGoogleCloudBillingPricesV1betaUnitInfo--;
  return o;
}

void checkGoogleCloudBillingPricesV1betaUnitInfo(
  api.GoogleCloudBillingPricesV1betaUnitInfo o,
) {
  buildCounterGoogleCloudBillingPricesV1betaUnitInfo++;
  if (buildCounterGoogleCloudBillingPricesV1betaUnitInfo < 3) {
    unittest.expect(o.unit!, unittest.equals('foo'));
    unittest.expect(o.unitDescription!, unittest.equals('foo'));
    checkDecimal(o.unitQuantity!);
  }
  buildCounterGoogleCloudBillingPricesV1betaUnitInfo--;
}

core.List<api.GoogleCloudBillingSkugroupsV1betaSkuGroup> buildUnnamed12() => [
  buildGoogleCloudBillingSkugroupsV1betaSkuGroup(),
  buildGoogleCloudBillingSkugroupsV1betaSkuGroup(),
];

void checkUnnamed12(
  core.List<api.GoogleCloudBillingSkugroupsV1betaSkuGroup> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBillingSkugroupsV1betaSkuGroup(o[0]);
  checkGoogleCloudBillingSkugroupsV1betaSkuGroup(o[1]);
}

core.int buildCounterGoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse = 0;
api.GoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse
buildGoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse() {
  final o = api.GoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse();
  buildCounterGoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse++;
  if (buildCounterGoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse < 3) {
    o.nextPageToken = 'foo';
    o.skuGroups = buildUnnamed12();
  }
  buildCounterGoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse--;
  return o;
}

void checkGoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse(
  api.GoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse o,
) {
  buildCounterGoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse++;
  if (buildCounterGoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed12(o.skuGroups!);
  }
  buildCounterGoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse--;
}

core.int buildCounterGoogleCloudBillingSkugroupsV1betaSkuGroup = 0;
api.GoogleCloudBillingSkugroupsV1betaSkuGroup
buildGoogleCloudBillingSkugroupsV1betaSkuGroup() {
  final o = api.GoogleCloudBillingSkugroupsV1betaSkuGroup();
  buildCounterGoogleCloudBillingSkugroupsV1betaSkuGroup++;
  if (buildCounterGoogleCloudBillingSkugroupsV1betaSkuGroup < 3) {
    o.displayName = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleCloudBillingSkugroupsV1betaSkuGroup--;
  return o;
}

void checkGoogleCloudBillingSkugroupsV1betaSkuGroup(
  api.GoogleCloudBillingSkugroupsV1betaSkuGroup o,
) {
  buildCounterGoogleCloudBillingSkugroupsV1betaSkuGroup++;
  if (buildCounterGoogleCloudBillingSkugroupsV1betaSkuGroup < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBillingSkugroupsV1betaSkuGroup--;
}

core.int buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomy = 0;
api.GoogleCloudBillingSkugroupskusV1betaGeoTaxonomy
buildGoogleCloudBillingSkugroupskusV1betaGeoTaxonomy() {
  final o = api.GoogleCloudBillingSkugroupskusV1betaGeoTaxonomy();
  buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomy++;
  if (buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomy < 3) {
    o.globalMetadata =
        buildGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyGlobal();
    o.multiRegionalMetadata =
        buildGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyMultiRegional();
    o.regionalMetadata =
        buildGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegional();
    o.type = 'foo';
  }
  buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomy--;
  return o;
}

void checkGoogleCloudBillingSkugroupskusV1betaGeoTaxonomy(
  api.GoogleCloudBillingSkugroupskusV1betaGeoTaxonomy o,
) {
  buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomy++;
  if (buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomy < 3) {
    checkGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyGlobal(
      o.globalMetadata!,
    );
    checkGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyMultiRegional(
      o.multiRegionalMetadata!,
    );
    checkGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegional(
      o.regionalMetadata!,
    );
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomy--;
}

core.int buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyGlobal = 0;
api.GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyGlobal
buildGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyGlobal() {
  final o = api.GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyGlobal();
  buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyGlobal++;
  if (buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyGlobal < 3) {}
  buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyGlobal--;
  return o;
}

void checkGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyGlobal(
  api.GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyGlobal o,
) {
  buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyGlobal++;
  if (buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyGlobal < 3) {}
  buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyGlobal--;
}

core.List<api.GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion>
buildUnnamed13() => [
  buildGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion(),
  buildGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion(),
];

void checkUnnamed13(
  core.List<api.GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion(o[0]);
  checkGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion(o[1]);
}

core.int
buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyMultiRegional = 0;
api.GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyMultiRegional
buildGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyMultiRegional() {
  final o = api.GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyMultiRegional();
  buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyMultiRegional++;
  if (buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyMultiRegional <
      3) {
    o.regions = buildUnnamed13();
  }
  buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyMultiRegional--;
  return o;
}

void checkGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyMultiRegional(
  api.GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyMultiRegional o,
) {
  buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyMultiRegional++;
  if (buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyMultiRegional <
      3) {
    checkUnnamed13(o.regions!);
  }
  buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyMultiRegional--;
}

core.int buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion = 0;
api.GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion
buildGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion() {
  final o = api.GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion();
  buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion++;
  if (buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion < 3) {
    o.region = 'foo';
  }
  buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion--;
  return o;
}

void checkGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion(
  api.GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion o,
) {
  buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion++;
  if (buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion < 3) {
    unittest.expect(o.region!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion--;
}

core.int buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegional =
    0;
api.GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegional
buildGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegional() {
  final o = api.GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegional();
  buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegional++;
  if (buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegional < 3) {
    o.region = buildGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion();
  }
  buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegional--;
  return o;
}

void checkGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegional(
  api.GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegional o,
) {
  buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegional++;
  if (buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegional < 3) {
    checkGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion(o.region!);
  }
  buildCounterGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegional--;
}

core.List<api.GoogleCloudBillingSkugroupskusV1betaSkuGroupSku>
buildUnnamed14() => [
  buildGoogleCloudBillingSkugroupskusV1betaSkuGroupSku(),
  buildGoogleCloudBillingSkugroupskusV1betaSkuGroupSku(),
];

void checkUnnamed14(
  core.List<api.GoogleCloudBillingSkugroupskusV1betaSkuGroupSku> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBillingSkugroupskusV1betaSkuGroupSku(o[0]);
  checkGoogleCloudBillingSkugroupskusV1betaSkuGroupSku(o[1]);
}

core.int
buildCounterGoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse = 0;
api.GoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse
buildGoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse() {
  final o = api.GoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse();
  buildCounterGoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse++;
  if (buildCounterGoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse <
      3) {
    o.nextPageToken = 'foo';
    o.skuGroupSkus = buildUnnamed14();
  }
  buildCounterGoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse--;
  return o;
}

void checkGoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse(
  api.GoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse o,
) {
  buildCounterGoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse++;
  if (buildCounterGoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed14(o.skuGroupSkus!);
  }
  buildCounterGoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse--;
}

core.List<api.GoogleCloudBillingSkugroupskusV1betaTaxonomyCategory>
buildUnnamed15() => [
  buildGoogleCloudBillingSkugroupskusV1betaTaxonomyCategory(),
  buildGoogleCloudBillingSkugroupskusV1betaTaxonomyCategory(),
];

void checkUnnamed15(
  core.List<api.GoogleCloudBillingSkugroupskusV1betaTaxonomyCategory> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleCloudBillingSkugroupskusV1betaTaxonomyCategory(o[0]);
  checkGoogleCloudBillingSkugroupskusV1betaTaxonomyCategory(o[1]);
}

core.int buildCounterGoogleCloudBillingSkugroupskusV1betaProductTaxonomy = 0;
api.GoogleCloudBillingSkugroupskusV1betaProductTaxonomy
buildGoogleCloudBillingSkugroupskusV1betaProductTaxonomy() {
  final o = api.GoogleCloudBillingSkugroupskusV1betaProductTaxonomy();
  buildCounterGoogleCloudBillingSkugroupskusV1betaProductTaxonomy++;
  if (buildCounterGoogleCloudBillingSkugroupskusV1betaProductTaxonomy < 3) {
    o.taxonomyCategories = buildUnnamed15();
  }
  buildCounterGoogleCloudBillingSkugroupskusV1betaProductTaxonomy--;
  return o;
}

void checkGoogleCloudBillingSkugroupskusV1betaProductTaxonomy(
  api.GoogleCloudBillingSkugroupskusV1betaProductTaxonomy o,
) {
  buildCounterGoogleCloudBillingSkugroupskusV1betaProductTaxonomy++;
  if (buildCounterGoogleCloudBillingSkugroupskusV1betaProductTaxonomy < 3) {
    checkUnnamed15(o.taxonomyCategories!);
  }
  buildCounterGoogleCloudBillingSkugroupskusV1betaProductTaxonomy--;
}

core.int buildCounterGoogleCloudBillingSkugroupskusV1betaSkuGroupSku = 0;
api.GoogleCloudBillingSkugroupskusV1betaSkuGroupSku
buildGoogleCloudBillingSkugroupskusV1betaSkuGroupSku() {
  final o = api.GoogleCloudBillingSkugroupskusV1betaSkuGroupSku();
  buildCounterGoogleCloudBillingSkugroupskusV1betaSkuGroupSku++;
  if (buildCounterGoogleCloudBillingSkugroupskusV1betaSkuGroupSku < 3) {
    o.displayName = 'foo';
    o.geoTaxonomy = buildGoogleCloudBillingSkugroupskusV1betaGeoTaxonomy();
    o.name = 'foo';
    o.productTaxonomy =
        buildGoogleCloudBillingSkugroupskusV1betaProductTaxonomy();
    o.service = 'foo';
    o.skuId = 'foo';
  }
  buildCounterGoogleCloudBillingSkugroupskusV1betaSkuGroupSku--;
  return o;
}

void checkGoogleCloudBillingSkugroupskusV1betaSkuGroupSku(
  api.GoogleCloudBillingSkugroupskusV1betaSkuGroupSku o,
) {
  buildCounterGoogleCloudBillingSkugroupskusV1betaSkuGroupSku++;
  if (buildCounterGoogleCloudBillingSkugroupskusV1betaSkuGroupSku < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkGoogleCloudBillingSkugroupskusV1betaGeoTaxonomy(o.geoTaxonomy!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleCloudBillingSkugroupskusV1betaProductTaxonomy(
      o.productTaxonomy!,
    );
    unittest.expect(o.service!, unittest.equals('foo'));
    unittest.expect(o.skuId!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBillingSkugroupskusV1betaSkuGroupSku--;
}

core.int buildCounterGoogleCloudBillingSkugroupskusV1betaTaxonomyCategory = 0;
api.GoogleCloudBillingSkugroupskusV1betaTaxonomyCategory
buildGoogleCloudBillingSkugroupskusV1betaTaxonomyCategory() {
  final o = api.GoogleCloudBillingSkugroupskusV1betaTaxonomyCategory();
  buildCounterGoogleCloudBillingSkugroupskusV1betaTaxonomyCategory++;
  if (buildCounterGoogleCloudBillingSkugroupskusV1betaTaxonomyCategory < 3) {
    o.category = 'foo';
  }
  buildCounterGoogleCloudBillingSkugroupskusV1betaTaxonomyCategory--;
  return o;
}

void checkGoogleCloudBillingSkugroupskusV1betaTaxonomyCategory(
  api.GoogleCloudBillingSkugroupskusV1betaTaxonomyCategory o,
) {
  buildCounterGoogleCloudBillingSkugroupskusV1betaTaxonomyCategory++;
  if (buildCounterGoogleCloudBillingSkugroupskusV1betaTaxonomyCategory < 3) {
    unittest.expect(o.category!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudBillingSkugroupskusV1betaTaxonomyCategory--;
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
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
    unittest.expect(o.nanos!, unittest.equals(42));
    unittest.expect(o.units!, unittest.equals('foo'));
  }
  buildCounterMoney--;
}

void main() {
  unittest.group('obj-schema-Decimal', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDecimal();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Decimal.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDecimal(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountpricesV1betaAggregationInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingBillingaccountpricesV1betaAggregationInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountpricesV1betaAggregationInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountpricesV1betaAggregationInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountpricesV1betaDefaultPrice',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingBillingaccountpricesV1betaDefaultPrice();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountpricesV1betaDefaultPrice.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountpricesV1betaDefaultPrice(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountpricesV1betaFixedDiscount',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingBillingaccountpricesV1betaFixedDiscount();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountpricesV1betaFixedDiscount.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountpricesV1betaFixedDiscount(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountpricesV1betaFixedPrice',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudBillingBillingaccountpricesV1betaFixedPrice();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountpricesV1betaFixedPrice.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountpricesV1betaFixedPrice(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountpricesV1betaFloatingDiscount',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingBillingaccountpricesV1betaFloatingDiscount();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountpricesV1betaFloatingDiscount.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountpricesV1betaFloatingDiscount(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountpricesV1betaListPriceAsCeiling',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingBillingaccountpricesV1betaListPriceAsCeiling();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountpricesV1betaListPriceAsCeiling.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountpricesV1betaListPriceAsCeiling(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountpricesV1betaMergedPrice',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingBillingaccountpricesV1betaMergedPrice();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountpricesV1betaMergedPrice.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountpricesV1betaMergedPrice(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountpricesV1betaMigratedPrice',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingBillingaccountpricesV1betaMigratedPrice();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountpricesV1betaMigratedPrice.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountpricesV1betaMigratedPrice(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountpricesV1betaPriceReason',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingBillingaccountpricesV1betaPriceReason();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountpricesV1betaPriceReason.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountpricesV1betaPriceReason(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountpricesV1betaRate',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudBillingBillingaccountpricesV1betaRate();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountpricesV1betaRate.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountpricesV1betaRate(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountpricesV1betaRateTier',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudBillingBillingaccountpricesV1betaRateTier();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountpricesV1betaRateTier.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountpricesV1betaRateTier(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountpricesV1betaUnitInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudBillingBillingaccountpricesV1betaUnitInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountpricesV1betaUnitInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountpricesV1betaUnitInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountservicesV1betaBillingAccountService',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingBillingaccountservicesV1betaBillingAccountService();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountservicesV1betaBillingAccountService.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountservicesV1betaBillingAccountService(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomy',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomy();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomy.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomy(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyGlobal',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyGlobal();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyGlobal.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyGlobal(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyMultiRegional',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyMultiRegional();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyMultiRegional.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyMultiRegional(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegion(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegional',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegional();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegional.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountskugroupskusV1betaGeoTaxonomyRegional(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountskugroupskusV1betaProductTaxonomy',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingBillingaccountskugroupskusV1betaProductTaxonomy();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountskugroupskusV1betaProductTaxonomy.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountskugroupskusV1betaProductTaxonomy(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountskugroupskusV1betaTaxonomyCategory(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountskusV1betaBillingAccountSku',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingBillingaccountskusV1betaBillingAccountSku();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountskusV1betaBillingAccountSku.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountskusV1betaBillingAccountSku(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomy',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomy();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomy.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomy(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyGlobal',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyGlobal();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyGlobal.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyGlobal(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyMultiRegional',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyMultiRegional();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyMultiRegional.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyMultiRegional(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegion(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegional',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegional();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegional.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountskusV1betaGeoTaxonomyRegional(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountskusV1betaProductTaxonomy',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingBillingaccountskusV1betaProductTaxonomy();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountskusV1betaProductTaxonomy.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountskusV1betaProductTaxonomy(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingBillingaccountskusV1betaTaxonomyCategory(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingPricesV1betaAggregationInfo',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudBillingPricesV1betaAggregationInfo();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudBillingPricesV1betaAggregationInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingPricesV1betaAggregationInfo(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingPricesV1betaListPricesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudBillingPricesV1betaListPricesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingPricesV1betaListPricesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingPricesV1betaListPricesResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudBillingPricesV1betaPrice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudBillingPricesV1betaPrice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudBillingPricesV1betaPrice.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudBillingPricesV1betaPrice(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudBillingPricesV1betaRate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudBillingPricesV1betaRate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudBillingPricesV1betaRate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudBillingPricesV1betaRate(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudBillingPricesV1betaRateTier', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudBillingPricesV1betaRateTier();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudBillingPricesV1betaRateTier.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudBillingPricesV1betaRateTier(od);
    });
  });

  unittest.group('obj-schema-GoogleCloudBillingPricesV1betaUnitInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudBillingPricesV1betaUnitInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudBillingPricesV1betaUnitInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudBillingPricesV1betaUnitInfo(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleCloudBillingSkugroupsV1betaSkuGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleCloudBillingSkugroupsV1betaSkuGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleCloudBillingSkugroupsV1betaSkuGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleCloudBillingSkugroupsV1betaSkuGroup(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudBillingSkugroupskusV1betaGeoTaxonomy',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudBillingSkugroupskusV1betaGeoTaxonomy();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudBillingSkugroupskusV1betaGeoTaxonomy.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingSkugroupskusV1betaGeoTaxonomy(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyGlobal',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyGlobal();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyGlobal.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyGlobal(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyMultiRegional',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyMultiRegional();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyMultiRegional.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyMultiRegional(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegion(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegional',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegional();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegional.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingSkugroupskusV1betaGeoTaxonomyRegional(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingSkugroupskusV1betaProductTaxonomy',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudBillingSkugroupskusV1betaProductTaxonomy();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingSkugroupskusV1betaProductTaxonomy.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingSkugroupskusV1betaProductTaxonomy(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingSkugroupskusV1betaSkuGroupSku',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudBillingSkugroupskusV1betaSkuGroupSku();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleCloudBillingSkugroupskusV1betaSkuGroupSku.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingSkugroupskusV1betaSkuGroupSku(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleCloudBillingSkugroupskusV1betaTaxonomyCategory',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudBillingSkugroupskusV1betaTaxonomyCategory();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .GoogleCloudBillingSkugroupskusV1betaTaxonomyCategory.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudBillingSkugroupskusV1betaTaxonomyCategory(od);
      });
    },
  );

  unittest.group('obj-schema-Money', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMoney();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Money.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMoney(od);
    });
  });

  unittest.group('resource-BillingAccountsServicesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).billingAccounts.services;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudBillingBillingaccountservicesV1betaBillingAccountService(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudBillingBillingaccountservicesV1betaBillingAccountService(
        response
            as api.GoogleCloudBillingBillingaccountservicesV1betaBillingAccountService,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).billingAccounts.services;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse(),
          );
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
      checkGoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse(
        response
            as api.GoogleCloudBillingBillingaccountservicesV1betaListBillingAccountServicesResponse,
      );
    });
  });

  unittest.group('resource-BillingAccountsSkuGroupsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).billingAccounts.skuGroups;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup(
        response
            as api.GoogleCloudBillingBillingaccountskugroupsV1betaBillingAccountSkuGroup,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).billingAccounts.skuGroups;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse(),
          );
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
      checkGoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse(
        response
            as api.GoogleCloudBillingBillingaccountskugroupsV1betaListBillingAccountSkuGroupsResponse,
      );
    });
  });

  unittest.group('resource-BillingAccountsSkuGroupsSkusResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).billingAccounts.skuGroups.skus;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku(
        response
            as api.GoogleCloudBillingBillingaccountskugroupskusV1betaBillingAccountSkuGroupSku,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).billingAccounts.skuGroups.skus;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse(),
          );
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
      checkGoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse(
        response
            as api.GoogleCloudBillingBillingaccountskugroupskusV1betaListBillingAccountSkuGroupSkusResponse,
      );
    });
  });

  unittest.group('resource-BillingAccountsSkusResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).billingAccounts.skus;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudBillingBillingaccountskusV1betaBillingAccountSku(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudBillingBillingaccountskusV1betaBillingAccountSku(
        response
            as api.GoogleCloudBillingBillingaccountskusV1betaBillingAccountSku,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).billingAccounts.skus;
      final arg_parent = 'foo';
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse(
        response
            as api.GoogleCloudBillingBillingaccountskusV1betaListBillingAccountSkusResponse,
      );
    });
  });

  unittest.group('resource-BillingAccountsSkusPriceResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).billingAccounts.skus.price;
      final arg_name = 'foo';
      final arg_currencyCode = 'foo';
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
            queryMap['currencyCode']!.first,
            unittest.equals(arg_currencyCode),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        currencyCode: arg_currencyCode,
        $fields: arg_$fields,
      );
      checkGoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice(
        response
            as api.GoogleCloudBillingBillingaccountpricesV1betaBillingAccountPrice,
      );
    });
  });

  unittest.group('resource-BillingAccountsSkusPricesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).billingAccounts.skus.prices;
      final arg_parent = 'foo';
      final arg_currencyCode = 'foo';
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
            queryMap['currencyCode']!.first,
            unittest.equals(arg_currencyCode),
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
            buildGoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        currencyCode: arg_currencyCode,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse(
        response
            as api.GoogleCloudBillingBillingaccountpricesV1betaListBillingAccountPricesResponse,
      );
    });
  });

  unittest.group('resource-SkuGroupsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).skuGroups;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudBillingSkugroupsV1betaSkuGroup(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudBillingSkugroupsV1betaSkuGroup(
        response as api.GoogleCloudBillingSkugroupsV1betaSkuGroup,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).skuGroups;
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
            unittest.equals('v1beta/skuGroups'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse(
        response as api.GoogleCloudBillingSkugroupsV1betaListSkuGroupsResponse,
      );
    });
  });

  unittest.group('resource-SkuGroupsSkusResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).skuGroups.skus;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudBillingSkugroupskusV1betaSkuGroupSku(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleCloudBillingSkugroupskusV1betaSkuGroupSku(
        response as api.GoogleCloudBillingSkugroupskusV1betaSkuGroupSku,
      );
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).skuGroups.skus;
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
            buildGoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse(),
          );
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
      checkGoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse(
        response
            as api.GoogleCloudBillingSkugroupskusV1betaListSkuGroupSkusResponse,
      );
    });
  });

  unittest.group('resource-SkusPriceResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).skus.price;
      final arg_name = 'foo';
      final arg_currencyCode = 'foo';
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
            queryMap['currencyCode']!.first,
            unittest.equals(arg_currencyCode),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleCloudBillingPricesV1betaPrice(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        currencyCode: arg_currencyCode,
        $fields: arg_$fields,
      );
      checkGoogleCloudBillingPricesV1betaPrice(
        response as api.GoogleCloudBillingPricesV1betaPrice,
      );
    });
  });

  unittest.group('resource-SkusPricesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudbillingApi(mock).skus.prices;
      final arg_parent = 'foo';
      final arg_currencyCode = 'foo';
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
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals('v1beta/'),
          );
          pathOffset += 7;
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
            queryMap['currencyCode']!.first,
            unittest.equals(arg_currencyCode),
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
            buildGoogleCloudBillingPricesV1betaListPricesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        currencyCode: arg_currencyCode,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkGoogleCloudBillingPricesV1betaListPricesResponse(
        response as api.GoogleCloudBillingPricesV1betaListPricesResponse,
      );
    });
  });
}
