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

import 'package:googleapis/solar/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterBuildingInsights = 0;
api.BuildingInsights buildBuildingInsights() {
  final o = api.BuildingInsights();
  buildCounterBuildingInsights++;
  if (buildCounterBuildingInsights < 3) {
    o.administrativeArea = 'foo';
    o.boundingBox = buildLatLngBox();
    o.center = buildLatLng();
    o.imageryDate = buildDate();
    o.imageryProcessedDate = buildDate();
    o.imageryQuality = 'foo';
    o.name = 'foo';
    o.postalCode = 'foo';
    o.regionCode = 'foo';
    o.solarPotential = buildSolarPotential();
    o.statisticalArea = 'foo';
  }
  buildCounterBuildingInsights--;
  return o;
}

void checkBuildingInsights(api.BuildingInsights o) {
  buildCounterBuildingInsights++;
  if (buildCounterBuildingInsights < 3) {
    unittest.expect(
      o.administrativeArea!,
      unittest.equals('foo'),
    );
    checkLatLngBox(o.boundingBox!);
    checkLatLng(o.center!);
    checkDate(o.imageryDate!);
    checkDate(o.imageryProcessedDate!);
    unittest.expect(
      o.imageryQuality!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postalCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
    checkSolarPotential(o.solarPotential!);
    unittest.expect(
      o.statisticalArea!,
      unittest.equals('foo'),
    );
  }
  buildCounterBuildingInsights--;
}

core.int buildCounterCashPurchaseSavings = 0;
api.CashPurchaseSavings buildCashPurchaseSavings() {
  final o = api.CashPurchaseSavings();
  buildCounterCashPurchaseSavings++;
  if (buildCounterCashPurchaseSavings < 3) {
    o.outOfPocketCost = buildMoney();
    o.paybackYears = 42.0;
    o.rebateValue = buildMoney();
    o.savings = buildSavingsOverTime();
    o.upfrontCost = buildMoney();
  }
  buildCounterCashPurchaseSavings--;
  return o;
}

void checkCashPurchaseSavings(api.CashPurchaseSavings o) {
  buildCounterCashPurchaseSavings++;
  if (buildCounterCashPurchaseSavings < 3) {
    checkMoney(o.outOfPocketCost!);
    unittest.expect(
      o.paybackYears!,
      unittest.equals(42.0),
    );
    checkMoney(o.rebateValue!);
    checkSavingsOverTime(o.savings!);
    checkMoney(o.upfrontCost!);
  }
  buildCounterCashPurchaseSavings--;
}

core.List<core.String> buildUnnamed0() => [
      'foo',
      'foo',
    ];

void checkUnnamed0(core.List<core.String> o) {
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

core.int buildCounterDataLayers = 0;
api.DataLayers buildDataLayers() {
  final o = api.DataLayers();
  buildCounterDataLayers++;
  if (buildCounterDataLayers < 3) {
    o.annualFluxUrl = 'foo';
    o.dsmUrl = 'foo';
    o.hourlyShadeUrls = buildUnnamed0();
    o.imageryDate = buildDate();
    o.imageryProcessedDate = buildDate();
    o.imageryQuality = 'foo';
    o.maskUrl = 'foo';
    o.monthlyFluxUrl = 'foo';
    o.rgbUrl = 'foo';
  }
  buildCounterDataLayers--;
  return o;
}

void checkDataLayers(api.DataLayers o) {
  buildCounterDataLayers++;
  if (buildCounterDataLayers < 3) {
    unittest.expect(
      o.annualFluxUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dsmUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.hourlyShadeUrls!);
    checkDate(o.imageryDate!);
    checkDate(o.imageryProcessedDate!);
    unittest.expect(
      o.imageryQuality!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maskUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.monthlyFluxUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rgbUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterDataLayers--;
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

core.int buildCounterFinancedPurchaseSavings = 0;
api.FinancedPurchaseSavings buildFinancedPurchaseSavings() {
  final o = api.FinancedPurchaseSavings();
  buildCounterFinancedPurchaseSavings++;
  if (buildCounterFinancedPurchaseSavings < 3) {
    o.annualLoanPayment = buildMoney();
    o.loanInterestRate = 42.0;
    o.rebateValue = buildMoney();
    o.savings = buildSavingsOverTime();
  }
  buildCounterFinancedPurchaseSavings--;
  return o;
}

void checkFinancedPurchaseSavings(api.FinancedPurchaseSavings o) {
  buildCounterFinancedPurchaseSavings++;
  if (buildCounterFinancedPurchaseSavings < 3) {
    checkMoney(o.annualLoanPayment!);
    unittest.expect(
      o.loanInterestRate!,
      unittest.equals(42.0),
    );
    checkMoney(o.rebateValue!);
    checkSavingsOverTime(o.savings!);
  }
  buildCounterFinancedPurchaseSavings--;
}

core.int buildCounterFinancialAnalysis = 0;
api.FinancialAnalysis buildFinancialAnalysis() {
  final o = api.FinancialAnalysis();
  buildCounterFinancialAnalysis++;
  if (buildCounterFinancialAnalysis < 3) {
    o.averageKwhPerMonth = 42.0;
    o.cashPurchaseSavings = buildCashPurchaseSavings();
    o.defaultBill = true;
    o.financedPurchaseSavings = buildFinancedPurchaseSavings();
    o.financialDetails = buildFinancialDetails();
    o.leasingSavings = buildLeasingSavings();
    o.monthlyBill = buildMoney();
    o.panelConfigIndex = 42;
  }
  buildCounterFinancialAnalysis--;
  return o;
}

void checkFinancialAnalysis(api.FinancialAnalysis o) {
  buildCounterFinancialAnalysis++;
  if (buildCounterFinancialAnalysis < 3) {
    unittest.expect(
      o.averageKwhPerMonth!,
      unittest.equals(42.0),
    );
    checkCashPurchaseSavings(o.cashPurchaseSavings!);
    unittest.expect(o.defaultBill!, unittest.isTrue);
    checkFinancedPurchaseSavings(o.financedPurchaseSavings!);
    checkFinancialDetails(o.financialDetails!);
    checkLeasingSavings(o.leasingSavings!);
    checkMoney(o.monthlyBill!);
    unittest.expect(
      o.panelConfigIndex!,
      unittest.equals(42),
    );
  }
  buildCounterFinancialAnalysis--;
}

core.int buildCounterFinancialDetails = 0;
api.FinancialDetails buildFinancialDetails() {
  final o = api.FinancialDetails();
  buildCounterFinancialDetails++;
  if (buildCounterFinancialDetails < 3) {
    o.costOfElectricityWithoutSolar = buildMoney();
    o.federalIncentive = buildMoney();
    o.initialAcKwhPerYear = 42.0;
    o.lifetimeSrecTotal = buildMoney();
    o.netMeteringAllowed = true;
    o.percentageExportedToGrid = 42.0;
    o.remainingLifetimeUtilityBill = buildMoney();
    o.solarPercentage = 42.0;
    o.stateIncentive = buildMoney();
    o.utilityIncentive = buildMoney();
  }
  buildCounterFinancialDetails--;
  return o;
}

void checkFinancialDetails(api.FinancialDetails o) {
  buildCounterFinancialDetails++;
  if (buildCounterFinancialDetails < 3) {
    checkMoney(o.costOfElectricityWithoutSolar!);
    checkMoney(o.federalIncentive!);
    unittest.expect(
      o.initialAcKwhPerYear!,
      unittest.equals(42.0),
    );
    checkMoney(o.lifetimeSrecTotal!);
    unittest.expect(o.netMeteringAllowed!, unittest.isTrue);
    unittest.expect(
      o.percentageExportedToGrid!,
      unittest.equals(42.0),
    );
    checkMoney(o.remainingLifetimeUtilityBill!);
    unittest.expect(
      o.solarPercentage!,
      unittest.equals(42.0),
    );
    checkMoney(o.stateIncentive!);
    checkMoney(o.utilityIncentive!);
  }
  buildCounterFinancialDetails--;
}

core.Map<core.String, core.Object?> buildUnnamed1() => {
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

void checkUnnamed1(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed2() => [
      buildUnnamed1(),
      buildUnnamed1(),
    ];

void checkUnnamed2(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1(o[0]);
  checkUnnamed1(o[1]);
}

core.int buildCounterHttpBody = 0;
api.HttpBody buildHttpBody() {
  final o = api.HttpBody();
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    o.contentType = 'foo';
    o.data = 'foo';
    o.extensions = buildUnnamed2();
  }
  buildCounterHttpBody--;
  return o;
}

void checkHttpBody(api.HttpBody o) {
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    unittest.expect(
      o.contentType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.extensions!);
  }
  buildCounterHttpBody--;
}

core.int buildCounterLatLng = 0;
api.LatLng buildLatLng() {
  final o = api.LatLng();
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterLatLng--;
  return o;
}

void checkLatLng(api.LatLng o) {
  buildCounterLatLng++;
  if (buildCounterLatLng < 3) {
    unittest.expect(
      o.latitude!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.longitude!,
      unittest.equals(42.0),
    );
  }
  buildCounterLatLng--;
}

core.int buildCounterLatLngBox = 0;
api.LatLngBox buildLatLngBox() {
  final o = api.LatLngBox();
  buildCounterLatLngBox++;
  if (buildCounterLatLngBox < 3) {
    o.ne = buildLatLng();
    o.sw = buildLatLng();
  }
  buildCounterLatLngBox--;
  return o;
}

void checkLatLngBox(api.LatLngBox o) {
  buildCounterLatLngBox++;
  if (buildCounterLatLngBox < 3) {
    checkLatLng(o.ne!);
    checkLatLng(o.sw!);
  }
  buildCounterLatLngBox--;
}

core.int buildCounterLeasingSavings = 0;
api.LeasingSavings buildLeasingSavings() {
  final o = api.LeasingSavings();
  buildCounterLeasingSavings++;
  if (buildCounterLeasingSavings < 3) {
    o.annualLeasingCost = buildMoney();
    o.leasesAllowed = true;
    o.leasesSupported = true;
    o.savings = buildSavingsOverTime();
  }
  buildCounterLeasingSavings--;
  return o;
}

void checkLeasingSavings(api.LeasingSavings o) {
  buildCounterLeasingSavings++;
  if (buildCounterLeasingSavings < 3) {
    checkMoney(o.annualLeasingCost!);
    unittest.expect(o.leasesAllowed!, unittest.isTrue);
    unittest.expect(o.leasesSupported!, unittest.isTrue);
    checkSavingsOverTime(o.savings!);
  }
  buildCounterLeasingSavings--;
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
  buildCounterMoney--;
}

core.int buildCounterRoofSegmentSizeAndSunshineStats = 0;
api.RoofSegmentSizeAndSunshineStats buildRoofSegmentSizeAndSunshineStats() {
  final o = api.RoofSegmentSizeAndSunshineStats();
  buildCounterRoofSegmentSizeAndSunshineStats++;
  if (buildCounterRoofSegmentSizeAndSunshineStats < 3) {
    o.azimuthDegrees = 42.0;
    o.boundingBox = buildLatLngBox();
    o.center = buildLatLng();
    o.pitchDegrees = 42.0;
    o.planeHeightAtCenterMeters = 42.0;
    o.stats = buildSizeAndSunshineStats();
  }
  buildCounterRoofSegmentSizeAndSunshineStats--;
  return o;
}

void checkRoofSegmentSizeAndSunshineStats(
    api.RoofSegmentSizeAndSunshineStats o) {
  buildCounterRoofSegmentSizeAndSunshineStats++;
  if (buildCounterRoofSegmentSizeAndSunshineStats < 3) {
    unittest.expect(
      o.azimuthDegrees!,
      unittest.equals(42.0),
    );
    checkLatLngBox(o.boundingBox!);
    checkLatLng(o.center!);
    unittest.expect(
      o.pitchDegrees!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.planeHeightAtCenterMeters!,
      unittest.equals(42.0),
    );
    checkSizeAndSunshineStats(o.stats!);
  }
  buildCounterRoofSegmentSizeAndSunshineStats--;
}

core.int buildCounterRoofSegmentSummary = 0;
api.RoofSegmentSummary buildRoofSegmentSummary() {
  final o = api.RoofSegmentSummary();
  buildCounterRoofSegmentSummary++;
  if (buildCounterRoofSegmentSummary < 3) {
    o.azimuthDegrees = 42.0;
    o.panelsCount = 42;
    o.pitchDegrees = 42.0;
    o.segmentIndex = 42;
    o.yearlyEnergyDcKwh = 42.0;
  }
  buildCounterRoofSegmentSummary--;
  return o;
}

void checkRoofSegmentSummary(api.RoofSegmentSummary o) {
  buildCounterRoofSegmentSummary++;
  if (buildCounterRoofSegmentSummary < 3) {
    unittest.expect(
      o.azimuthDegrees!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.panelsCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pitchDegrees!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.segmentIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.yearlyEnergyDcKwh!,
      unittest.equals(42.0),
    );
  }
  buildCounterRoofSegmentSummary--;
}

core.int buildCounterSavingsOverTime = 0;
api.SavingsOverTime buildSavingsOverTime() {
  final o = api.SavingsOverTime();
  buildCounterSavingsOverTime++;
  if (buildCounterSavingsOverTime < 3) {
    o.financiallyViable = true;
    o.presentValueOfSavingsLifetime = buildMoney();
    o.presentValueOfSavingsYear20 = buildMoney();
    o.savingsLifetime = buildMoney();
    o.savingsYear1 = buildMoney();
    o.savingsYear20 = buildMoney();
  }
  buildCounterSavingsOverTime--;
  return o;
}

void checkSavingsOverTime(api.SavingsOverTime o) {
  buildCounterSavingsOverTime++;
  if (buildCounterSavingsOverTime < 3) {
    unittest.expect(o.financiallyViable!, unittest.isTrue);
    checkMoney(o.presentValueOfSavingsLifetime!);
    checkMoney(o.presentValueOfSavingsYear20!);
    checkMoney(o.savingsLifetime!);
    checkMoney(o.savingsYear1!);
    checkMoney(o.savingsYear20!);
  }
  buildCounterSavingsOverTime--;
}

core.List<core.double> buildUnnamed3() => [
      42.0,
      42.0,
    ];

void checkUnnamed3(core.List<core.double> o) {
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

core.int buildCounterSizeAndSunshineStats = 0;
api.SizeAndSunshineStats buildSizeAndSunshineStats() {
  final o = api.SizeAndSunshineStats();
  buildCounterSizeAndSunshineStats++;
  if (buildCounterSizeAndSunshineStats < 3) {
    o.areaMeters2 = 42.0;
    o.groundAreaMeters2 = 42.0;
    o.sunshineQuantiles = buildUnnamed3();
  }
  buildCounterSizeAndSunshineStats--;
  return o;
}

void checkSizeAndSunshineStats(api.SizeAndSunshineStats o) {
  buildCounterSizeAndSunshineStats++;
  if (buildCounterSizeAndSunshineStats < 3) {
    unittest.expect(
      o.areaMeters2!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.groundAreaMeters2!,
      unittest.equals(42.0),
    );
    checkUnnamed3(o.sunshineQuantiles!);
  }
  buildCounterSizeAndSunshineStats--;
}

core.int buildCounterSolarPanel = 0;
api.SolarPanel buildSolarPanel() {
  final o = api.SolarPanel();
  buildCounterSolarPanel++;
  if (buildCounterSolarPanel < 3) {
    o.center = buildLatLng();
    o.orientation = 'foo';
    o.segmentIndex = 42;
    o.yearlyEnergyDcKwh = 42.0;
  }
  buildCounterSolarPanel--;
  return o;
}

void checkSolarPanel(api.SolarPanel o) {
  buildCounterSolarPanel++;
  if (buildCounterSolarPanel < 3) {
    checkLatLng(o.center!);
    unittest.expect(
      o.orientation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.segmentIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.yearlyEnergyDcKwh!,
      unittest.equals(42.0),
    );
  }
  buildCounterSolarPanel--;
}

core.List<api.RoofSegmentSummary> buildUnnamed4() => [
      buildRoofSegmentSummary(),
      buildRoofSegmentSummary(),
    ];

void checkUnnamed4(core.List<api.RoofSegmentSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoofSegmentSummary(o[0]);
  checkRoofSegmentSummary(o[1]);
}

core.int buildCounterSolarPanelConfig = 0;
api.SolarPanelConfig buildSolarPanelConfig() {
  final o = api.SolarPanelConfig();
  buildCounterSolarPanelConfig++;
  if (buildCounterSolarPanelConfig < 3) {
    o.panelsCount = 42;
    o.roofSegmentSummaries = buildUnnamed4();
    o.yearlyEnergyDcKwh = 42.0;
  }
  buildCounterSolarPanelConfig--;
  return o;
}

void checkSolarPanelConfig(api.SolarPanelConfig o) {
  buildCounterSolarPanelConfig++;
  if (buildCounterSolarPanelConfig < 3) {
    unittest.expect(
      o.panelsCount!,
      unittest.equals(42),
    );
    checkUnnamed4(o.roofSegmentSummaries!);
    unittest.expect(
      o.yearlyEnergyDcKwh!,
      unittest.equals(42.0),
    );
  }
  buildCounterSolarPanelConfig--;
}

core.List<api.FinancialAnalysis> buildUnnamed5() => [
      buildFinancialAnalysis(),
      buildFinancialAnalysis(),
    ];

void checkUnnamed5(core.List<api.FinancialAnalysis> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFinancialAnalysis(o[0]);
  checkFinancialAnalysis(o[1]);
}

core.List<api.RoofSegmentSizeAndSunshineStats> buildUnnamed6() => [
      buildRoofSegmentSizeAndSunshineStats(),
      buildRoofSegmentSizeAndSunshineStats(),
    ];

void checkUnnamed6(core.List<api.RoofSegmentSizeAndSunshineStats> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRoofSegmentSizeAndSunshineStats(o[0]);
  checkRoofSegmentSizeAndSunshineStats(o[1]);
}

core.List<api.SolarPanelConfig> buildUnnamed7() => [
      buildSolarPanelConfig(),
      buildSolarPanelConfig(),
    ];

void checkUnnamed7(core.List<api.SolarPanelConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSolarPanelConfig(o[0]);
  checkSolarPanelConfig(o[1]);
}

core.List<api.SolarPanel> buildUnnamed8() => [
      buildSolarPanel(),
      buildSolarPanel(),
    ];

void checkUnnamed8(core.List<api.SolarPanel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSolarPanel(o[0]);
  checkSolarPanel(o[1]);
}

core.int buildCounterSolarPotential = 0;
api.SolarPotential buildSolarPotential() {
  final o = api.SolarPotential();
  buildCounterSolarPotential++;
  if (buildCounterSolarPotential < 3) {
    o.buildingStats = buildSizeAndSunshineStats();
    o.carbonOffsetFactorKgPerMwh = 42.0;
    o.financialAnalyses = buildUnnamed5();
    o.maxArrayAreaMeters2 = 42.0;
    o.maxArrayPanelsCount = 42;
    o.maxSunshineHoursPerYear = 42.0;
    o.panelCapacityWatts = 42.0;
    o.panelHeightMeters = 42.0;
    o.panelLifetimeYears = 42;
    o.panelWidthMeters = 42.0;
    o.roofSegmentStats = buildUnnamed6();
    o.solarPanelConfigs = buildUnnamed7();
    o.solarPanels = buildUnnamed8();
    o.wholeRoofStats = buildSizeAndSunshineStats();
  }
  buildCounterSolarPotential--;
  return o;
}

void checkSolarPotential(api.SolarPotential o) {
  buildCounterSolarPotential++;
  if (buildCounterSolarPotential < 3) {
    checkSizeAndSunshineStats(o.buildingStats!);
    unittest.expect(
      o.carbonOffsetFactorKgPerMwh!,
      unittest.equals(42.0),
    );
    checkUnnamed5(o.financialAnalyses!);
    unittest.expect(
      o.maxArrayAreaMeters2!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.maxArrayPanelsCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maxSunshineHoursPerYear!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.panelCapacityWatts!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.panelHeightMeters!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.panelLifetimeYears!,
      unittest.equals(42),
    );
    unittest.expect(
      o.panelWidthMeters!,
      unittest.equals(42.0),
    );
    checkUnnamed6(o.roofSegmentStats!);
    checkUnnamed7(o.solarPanelConfigs!);
    checkUnnamed8(o.solarPanels!);
    checkSizeAndSunshineStats(o.wholeRoofStats!);
  }
  buildCounterSolarPotential--;
}

void main() {
  unittest.group('obj-schema-BuildingInsights', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBuildingInsights();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BuildingInsights.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBuildingInsights(od);
    });
  });

  unittest.group('obj-schema-CashPurchaseSavings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCashPurchaseSavings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CashPurchaseSavings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCashPurchaseSavings(od);
    });
  });

  unittest.group('obj-schema-DataLayers', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataLayers();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DataLayers.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDataLayers(od);
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

  unittest.group('obj-schema-FinancedPurchaseSavings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFinancedPurchaseSavings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FinancedPurchaseSavings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFinancedPurchaseSavings(od);
    });
  });

  unittest.group('obj-schema-FinancialAnalysis', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFinancialAnalysis();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FinancialAnalysis.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFinancialAnalysis(od);
    });
  });

  unittest.group('obj-schema-FinancialDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFinancialDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FinancialDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFinancialDetails(od);
    });
  });

  unittest.group('obj-schema-HttpBody', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpBody();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.HttpBody.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHttpBody(od);
    });
  });

  unittest.group('obj-schema-LatLng', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLatLng();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.LatLng.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLatLng(od);
    });
  });

  unittest.group('obj-schema-LatLngBox', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLatLngBox();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.LatLngBox.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLatLngBox(od);
    });
  });

  unittest.group('obj-schema-LeasingSavings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLeasingSavings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LeasingSavings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLeasingSavings(od);
    });
  });

  unittest.group('obj-schema-Money', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMoney();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Money.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMoney(od);
    });
  });

  unittest.group('obj-schema-RoofSegmentSizeAndSunshineStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRoofSegmentSizeAndSunshineStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RoofSegmentSizeAndSunshineStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRoofSegmentSizeAndSunshineStats(od);
    });
  });

  unittest.group('obj-schema-RoofSegmentSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRoofSegmentSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RoofSegmentSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRoofSegmentSummary(od);
    });
  });

  unittest.group('obj-schema-SavingsOverTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSavingsOverTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SavingsOverTime.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSavingsOverTime(od);
    });
  });

  unittest.group('obj-schema-SizeAndSunshineStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSizeAndSunshineStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SizeAndSunshineStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSizeAndSunshineStats(od);
    });
  });

  unittest.group('obj-schema-SolarPanel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSolarPanel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SolarPanel.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSolarPanel(od);
    });
  });

  unittest.group('obj-schema-SolarPanelConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSolarPanelConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SolarPanelConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSolarPanelConfig(od);
    });
  });

  unittest.group('obj-schema-SolarPotential', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSolarPotential();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SolarPotential.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSolarPotential(od);
    });
  });

  unittest.group('resource-BuildingInsightsResource', () {
    unittest.test('method--findClosest', () async {
      final mock = HttpServerMock();
      final res = api.SolarApi(mock).buildingInsights;
      final arg_location_latitude = 42.0;
      final arg_location_longitude = 42.0;
      final arg_requiredQuality = 'foo';
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
          path.substring(pathOffset, pathOffset + 31),
          unittest.equals('v1/buildingInsights:findClosest'),
        );
        pathOffset += 31;

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
          core.num.parse(queryMap['location.latitude']!.first),
          unittest.equals(arg_location_latitude),
        );
        unittest.expect(
          core.num.parse(queryMap['location.longitude']!.first),
          unittest.equals(arg_location_longitude),
        );
        unittest.expect(
          queryMap['requiredQuality']!.first,
          unittest.equals(arg_requiredQuality),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildBuildingInsights());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.findClosest(
          location_latitude: arg_location_latitude,
          location_longitude: arg_location_longitude,
          requiredQuality: arg_requiredQuality,
          $fields: arg_$fields);
      checkBuildingInsights(response as api.BuildingInsights);
    });
  });

  unittest.group('resource-DataLayersResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SolarApi(mock).dataLayers;
      final arg_location_latitude = 42.0;
      final arg_location_longitude = 42.0;
      final arg_pixelSizeMeters = 42.0;
      final arg_radiusMeters = 42.0;
      final arg_requiredQuality = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v1/dataLayers:get'),
        );
        pathOffset += 17;

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
          core.num.parse(queryMap['location.latitude']!.first),
          unittest.equals(arg_location_latitude),
        );
        unittest.expect(
          core.num.parse(queryMap['location.longitude']!.first),
          unittest.equals(arg_location_longitude),
        );
        unittest.expect(
          core.num.parse(queryMap['pixelSizeMeters']!.first),
          unittest.equals(arg_pixelSizeMeters),
        );
        unittest.expect(
          core.num.parse(queryMap['radiusMeters']!.first),
          unittest.equals(arg_radiusMeters),
        );
        unittest.expect(
          queryMap['requiredQuality']!.first,
          unittest.equals(arg_requiredQuality),
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
        final resp = convert.json.encode(buildDataLayers());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          location_latitude: arg_location_latitude,
          location_longitude: arg_location_longitude,
          pixelSizeMeters: arg_pixelSizeMeters,
          radiusMeters: arg_radiusMeters,
          requiredQuality: arg_requiredQuality,
          view: arg_view,
          $fields: arg_$fields);
      checkDataLayers(response as api.DataLayers);
    });
  });

  unittest.group('resource-GeoTiffResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SolarApi(mock).geoTiff;
      final arg_id = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1/geoTiff:get'),
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
          queryMap['id']!.first,
          unittest.equals(arg_id),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(id: arg_id, $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });
  });
}
