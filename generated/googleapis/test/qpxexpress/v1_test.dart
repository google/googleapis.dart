library googleapis.qpxExpress.v1.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;
import 'package:googleapis/common/common.dart' as common;
import 'package:googleapis/src/common_internal.dart' as common_internal;
import '../common/common_internal_test.dart' as common_test;

import 'package:googleapis/qpxexpress/v1.dart' as api;



core.int buildCounterAircraftData = 0;
buildAircraftData() {
  var o = new api.AircraftData();
  buildCounterAircraftData++;
  if (buildCounterAircraftData < 3) {
    o.code = "foo";
    o.kind = "foo";
    o.name = "foo";
  }
  buildCounterAircraftData--;
  return o;
}

checkAircraftData(api.AircraftData o) {
  buildCounterAircraftData++;
  if (buildCounterAircraftData < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterAircraftData--;
}

core.int buildCounterAirportData = 0;
buildAirportData() {
  var o = new api.AirportData();
  buildCounterAirportData++;
  if (buildCounterAirportData < 3) {
    o.city = "foo";
    o.code = "foo";
    o.kind = "foo";
    o.name = "foo";
  }
  buildCounterAirportData--;
  return o;
}

checkAirportData(api.AirportData o) {
  buildCounterAirportData++;
  if (buildCounterAirportData < 3) {
    unittest.expect(o.city, unittest.equals('foo'));
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterAirportData--;
}

buildUnnamed1308() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1308(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBagDescriptor = 0;
buildBagDescriptor() {
  var o = new api.BagDescriptor();
  buildCounterBagDescriptor++;
  if (buildCounterBagDescriptor < 3) {
    o.commercialName = "foo";
    o.count = 42;
    o.description = buildUnnamed1308();
    o.kind = "foo";
    o.subcode = "foo";
  }
  buildCounterBagDescriptor--;
  return o;
}

checkBagDescriptor(api.BagDescriptor o) {
  buildCounterBagDescriptor++;
  if (buildCounterBagDescriptor < 3) {
    unittest.expect(o.commercialName, unittest.equals('foo'));
    unittest.expect(o.count, unittest.equals(42));
    checkUnnamed1308(o.description);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.subcode, unittest.equals('foo'));
  }
  buildCounterBagDescriptor--;
}

core.int buildCounterCarrierData = 0;
buildCarrierData() {
  var o = new api.CarrierData();
  buildCounterCarrierData++;
  if (buildCounterCarrierData < 3) {
    o.code = "foo";
    o.kind = "foo";
    o.name = "foo";
  }
  buildCounterCarrierData--;
  return o;
}

checkCarrierData(api.CarrierData o) {
  buildCounterCarrierData++;
  if (buildCounterCarrierData < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterCarrierData--;
}

core.int buildCounterCityData = 0;
buildCityData() {
  var o = new api.CityData();
  buildCounterCityData++;
  if (buildCounterCityData < 3) {
    o.code = "foo";
    o.country = "foo";
    o.kind = "foo";
    o.name = "foo";
  }
  buildCounterCityData--;
  return o;
}

checkCityData(api.CityData o) {
  buildCounterCityData++;
  if (buildCounterCityData < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterCityData--;
}

buildUnnamed1309() {
  var o = new core.List<api.AircraftData>();
  o.add(buildAircraftData());
  o.add(buildAircraftData());
  return o;
}

checkUnnamed1309(core.List<api.AircraftData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAircraftData(o[0]);
  checkAircraftData(o[1]);
}

buildUnnamed1310() {
  var o = new core.List<api.AirportData>();
  o.add(buildAirportData());
  o.add(buildAirportData());
  return o;
}

checkUnnamed1310(core.List<api.AirportData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAirportData(o[0]);
  checkAirportData(o[1]);
}

buildUnnamed1311() {
  var o = new core.List<api.CarrierData>();
  o.add(buildCarrierData());
  o.add(buildCarrierData());
  return o;
}

checkUnnamed1311(core.List<api.CarrierData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCarrierData(o[0]);
  checkCarrierData(o[1]);
}

buildUnnamed1312() {
  var o = new core.List<api.CityData>();
  o.add(buildCityData());
  o.add(buildCityData());
  return o;
}

checkUnnamed1312(core.List<api.CityData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCityData(o[0]);
  checkCityData(o[1]);
}

buildUnnamed1313() {
  var o = new core.List<api.TaxData>();
  o.add(buildTaxData());
  o.add(buildTaxData());
  return o;
}

checkUnnamed1313(core.List<api.TaxData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTaxData(o[0]);
  checkTaxData(o[1]);
}

core.int buildCounterData = 0;
buildData() {
  var o = new api.Data();
  buildCounterData++;
  if (buildCounterData < 3) {
    o.aircraft = buildUnnamed1309();
    o.airport = buildUnnamed1310();
    o.carrier = buildUnnamed1311();
    o.city = buildUnnamed1312();
    o.kind = "foo";
    o.tax = buildUnnamed1313();
  }
  buildCounterData--;
  return o;
}

checkData(api.Data o) {
  buildCounterData++;
  if (buildCounterData < 3) {
    checkUnnamed1309(o.aircraft);
    checkUnnamed1310(o.airport);
    checkUnnamed1311(o.carrier);
    checkUnnamed1312(o.city);
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1313(o.tax);
  }
  buildCounterData--;
}

core.int buildCounterFareInfo = 0;
buildFareInfo() {
  var o = new api.FareInfo();
  buildCounterFareInfo++;
  if (buildCounterFareInfo < 3) {
    o.basisCode = "foo";
    o.carrier = "foo";
    o.destination = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.origin = "foo";
    o.private = true;
  }
  buildCounterFareInfo--;
  return o;
}

checkFareInfo(api.FareInfo o) {
  buildCounterFareInfo++;
  if (buildCounterFareInfo < 3) {
    unittest.expect(o.basisCode, unittest.equals('foo'));
    unittest.expect(o.carrier, unittest.equals('foo'));
    unittest.expect(o.destination, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.origin, unittest.equals('foo'));
    unittest.expect(o.private, unittest.isTrue);
  }
  buildCounterFareInfo--;
}

core.int buildCounterFlightInfo = 0;
buildFlightInfo() {
  var o = new api.FlightInfo();
  buildCounterFlightInfo++;
  if (buildCounterFlightInfo < 3) {
    o.carrier = "foo";
    o.number = "foo";
  }
  buildCounterFlightInfo--;
  return o;
}

checkFlightInfo(api.FlightInfo o) {
  buildCounterFlightInfo++;
  if (buildCounterFlightInfo < 3) {
    unittest.expect(o.carrier, unittest.equals('foo'));
    unittest.expect(o.number, unittest.equals('foo'));
  }
  buildCounterFlightInfo--;
}

buildUnnamed1314() {
  var o = new core.List<api.BagDescriptor>();
  o.add(buildBagDescriptor());
  o.add(buildBagDescriptor());
  return o;
}

checkUnnamed1314(core.List<api.BagDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBagDescriptor(o[0]);
  checkBagDescriptor(o[1]);
}

core.int buildCounterFreeBaggageAllowance = 0;
buildFreeBaggageAllowance() {
  var o = new api.FreeBaggageAllowance();
  buildCounterFreeBaggageAllowance++;
  if (buildCounterFreeBaggageAllowance < 3) {
    o.bagDescriptor = buildUnnamed1314();
    o.kilos = 42;
    o.kilosPerPiece = 42;
    o.kind = "foo";
    o.pieces = 42;
    o.pounds = 42;
  }
  buildCounterFreeBaggageAllowance--;
  return o;
}

checkFreeBaggageAllowance(api.FreeBaggageAllowance o) {
  buildCounterFreeBaggageAllowance++;
  if (buildCounterFreeBaggageAllowance < 3) {
    checkUnnamed1314(o.bagDescriptor);
    unittest.expect(o.kilos, unittest.equals(42));
    unittest.expect(o.kilosPerPiece, unittest.equals(42));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.pieces, unittest.equals(42));
    unittest.expect(o.pounds, unittest.equals(42));
  }
  buildCounterFreeBaggageAllowance--;
}

core.int buildCounterLegInfo = 0;
buildLegInfo() {
  var o = new api.LegInfo();
  buildCounterLegInfo++;
  if (buildCounterLegInfo < 3) {
    o.aircraft = "foo";
    o.arrivalTime = "foo";
    o.changePlane = true;
    o.connectionDuration = 42;
    o.departureTime = "foo";
    o.destination = "foo";
    o.destinationTerminal = "foo";
    o.duration = 42;
    o.id = "foo";
    o.kind = "foo";
    o.meal = "foo";
    o.mileage = 42;
    o.onTimePerformance = 42;
    o.operatingDisclosure = "foo";
    o.origin = "foo";
    o.originTerminal = "foo";
    o.secure = true;
  }
  buildCounterLegInfo--;
  return o;
}

checkLegInfo(api.LegInfo o) {
  buildCounterLegInfo++;
  if (buildCounterLegInfo < 3) {
    unittest.expect(o.aircraft, unittest.equals('foo'));
    unittest.expect(o.arrivalTime, unittest.equals('foo'));
    unittest.expect(o.changePlane, unittest.isTrue);
    unittest.expect(o.connectionDuration, unittest.equals(42));
    unittest.expect(o.departureTime, unittest.equals('foo'));
    unittest.expect(o.destination, unittest.equals('foo'));
    unittest.expect(o.destinationTerminal, unittest.equals('foo'));
    unittest.expect(o.duration, unittest.equals(42));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.meal, unittest.equals('foo'));
    unittest.expect(o.mileage, unittest.equals(42));
    unittest.expect(o.onTimePerformance, unittest.equals(42));
    unittest.expect(o.operatingDisclosure, unittest.equals('foo'));
    unittest.expect(o.origin, unittest.equals('foo'));
    unittest.expect(o.originTerminal, unittest.equals('foo'));
    unittest.expect(o.secure, unittest.isTrue);
  }
  buildCounterLegInfo--;
}

core.int buildCounterPassengerCounts = 0;
buildPassengerCounts() {
  var o = new api.PassengerCounts();
  buildCounterPassengerCounts++;
  if (buildCounterPassengerCounts < 3) {
    o.adultCount = 42;
    o.childCount = 42;
    o.infantInLapCount = 42;
    o.infantInSeatCount = 42;
    o.kind = "foo";
    o.seniorCount = 42;
  }
  buildCounterPassengerCounts--;
  return o;
}

checkPassengerCounts(api.PassengerCounts o) {
  buildCounterPassengerCounts++;
  if (buildCounterPassengerCounts < 3) {
    unittest.expect(o.adultCount, unittest.equals(42));
    unittest.expect(o.childCount, unittest.equals(42));
    unittest.expect(o.infantInLapCount, unittest.equals(42));
    unittest.expect(o.infantInSeatCount, unittest.equals(42));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.seniorCount, unittest.equals(42));
  }
  buildCounterPassengerCounts--;
}

buildUnnamed1315() {
  var o = new core.List<api.FareInfo>();
  o.add(buildFareInfo());
  o.add(buildFareInfo());
  return o;
}

checkUnnamed1315(core.List<api.FareInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFareInfo(o[0]);
  checkFareInfo(o[1]);
}

buildUnnamed1316() {
  var o = new core.List<api.SegmentPricing>();
  o.add(buildSegmentPricing());
  o.add(buildSegmentPricing());
  return o;
}

checkUnnamed1316(core.List<api.SegmentPricing> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSegmentPricing(o[0]);
  checkSegmentPricing(o[1]);
}

buildUnnamed1317() {
  var o = new core.List<api.TaxInfo>();
  o.add(buildTaxInfo());
  o.add(buildTaxInfo());
  return o;
}

checkUnnamed1317(core.List<api.TaxInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTaxInfo(o[0]);
  checkTaxInfo(o[1]);
}

core.int buildCounterPricingInfo = 0;
buildPricingInfo() {
  var o = new api.PricingInfo();
  buildCounterPricingInfo++;
  if (buildCounterPricingInfo < 3) {
    o.baseFareTotal = "foo";
    o.fare = buildUnnamed1315();
    o.fareCalculation = "foo";
    o.kind = "foo";
    o.latestTicketingTime = "foo";
    o.passengers = buildPassengerCounts();
    o.ptc = "foo";
    o.refundable = true;
    o.saleFareTotal = "foo";
    o.saleTaxTotal = "foo";
    o.saleTotal = "foo";
    o.segmentPricing = buildUnnamed1316();
    o.tax = buildUnnamed1317();
  }
  buildCounterPricingInfo--;
  return o;
}

checkPricingInfo(api.PricingInfo o) {
  buildCounterPricingInfo++;
  if (buildCounterPricingInfo < 3) {
    unittest.expect(o.baseFareTotal, unittest.equals('foo'));
    checkUnnamed1315(o.fare);
    unittest.expect(o.fareCalculation, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.latestTicketingTime, unittest.equals('foo'));
    checkPassengerCounts(o.passengers);
    unittest.expect(o.ptc, unittest.equals('foo'));
    unittest.expect(o.refundable, unittest.isTrue);
    unittest.expect(o.saleFareTotal, unittest.equals('foo'));
    unittest.expect(o.saleTaxTotal, unittest.equals('foo'));
    unittest.expect(o.saleTotal, unittest.equals('foo'));
    checkUnnamed1316(o.segmentPricing);
    checkUnnamed1317(o.tax);
  }
  buildCounterPricingInfo--;
}

buildUnnamed1318() {
  var o = new core.List<api.LegInfo>();
  o.add(buildLegInfo());
  o.add(buildLegInfo());
  return o;
}

checkUnnamed1318(core.List<api.LegInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLegInfo(o[0]);
  checkLegInfo(o[1]);
}

core.int buildCounterSegmentInfo = 0;
buildSegmentInfo() {
  var o = new api.SegmentInfo();
  buildCounterSegmentInfo++;
  if (buildCounterSegmentInfo < 3) {
    o.bookingCode = "foo";
    o.bookingCodeCount = 42;
    o.cabin = "foo";
    o.connectionDuration = 42;
    o.duration = 42;
    o.flight = buildFlightInfo();
    o.id = "foo";
    o.kind = "foo";
    o.leg = buildUnnamed1318();
    o.marriedSegmentGroup = "foo";
    o.subjectToGovernmentApproval = true;
  }
  buildCounterSegmentInfo--;
  return o;
}

checkSegmentInfo(api.SegmentInfo o) {
  buildCounterSegmentInfo++;
  if (buildCounterSegmentInfo < 3) {
    unittest.expect(o.bookingCode, unittest.equals('foo'));
    unittest.expect(o.bookingCodeCount, unittest.equals(42));
    unittest.expect(o.cabin, unittest.equals('foo'));
    unittest.expect(o.connectionDuration, unittest.equals(42));
    unittest.expect(o.duration, unittest.equals(42));
    checkFlightInfo(o.flight);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1318(o.leg);
    unittest.expect(o.marriedSegmentGroup, unittest.equals('foo'));
    unittest.expect(o.subjectToGovernmentApproval, unittest.isTrue);
  }
  buildCounterSegmentInfo--;
}

buildUnnamed1319() {
  var o = new core.List<api.FreeBaggageAllowance>();
  o.add(buildFreeBaggageAllowance());
  o.add(buildFreeBaggageAllowance());
  return o;
}

checkUnnamed1319(core.List<api.FreeBaggageAllowance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFreeBaggageAllowance(o[0]);
  checkFreeBaggageAllowance(o[1]);
}

core.int buildCounterSegmentPricing = 0;
buildSegmentPricing() {
  var o = new api.SegmentPricing();
  buildCounterSegmentPricing++;
  if (buildCounterSegmentPricing < 3) {
    o.fareId = "foo";
    o.freeBaggageOption = buildUnnamed1319();
    o.kind = "foo";
    o.segmentId = "foo";
  }
  buildCounterSegmentPricing--;
  return o;
}

checkSegmentPricing(api.SegmentPricing o) {
  buildCounterSegmentPricing++;
  if (buildCounterSegmentPricing < 3) {
    unittest.expect(o.fareId, unittest.equals('foo'));
    checkUnnamed1319(o.freeBaggageOption);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.segmentId, unittest.equals('foo'));
  }
  buildCounterSegmentPricing--;
}

buildUnnamed1320() {
  var o = new core.List<api.SegmentInfo>();
  o.add(buildSegmentInfo());
  o.add(buildSegmentInfo());
  return o;
}

checkUnnamed1320(core.List<api.SegmentInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSegmentInfo(o[0]);
  checkSegmentInfo(o[1]);
}

core.int buildCounterSliceInfo = 0;
buildSliceInfo() {
  var o = new api.SliceInfo();
  buildCounterSliceInfo++;
  if (buildCounterSliceInfo < 3) {
    o.duration = 42;
    o.kind = "foo";
    o.segment = buildUnnamed1320();
  }
  buildCounterSliceInfo--;
  return o;
}

checkSliceInfo(api.SliceInfo o) {
  buildCounterSliceInfo++;
  if (buildCounterSliceInfo < 3) {
    unittest.expect(o.duration, unittest.equals(42));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1320(o.segment);
  }
  buildCounterSliceInfo--;
}

buildUnnamed1321() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1321(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1322() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1322(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSliceInput = 0;
buildSliceInput() {
  var o = new api.SliceInput();
  buildCounterSliceInput++;
  if (buildCounterSliceInput < 3) {
    o.alliance = "foo";
    o.date = "foo";
    o.destination = "foo";
    o.kind = "foo";
    o.maxConnectionDuration = 42;
    o.maxStops = 42;
    o.origin = "foo";
    o.permittedCarrier = buildUnnamed1321();
    o.permittedDepartureTime = buildTimeOfDayRange();
    o.preferredCabin = "foo";
    o.prohibitedCarrier = buildUnnamed1322();
  }
  buildCounterSliceInput--;
  return o;
}

checkSliceInput(api.SliceInput o) {
  buildCounterSliceInput++;
  if (buildCounterSliceInput < 3) {
    unittest.expect(o.alliance, unittest.equals('foo'));
    unittest.expect(o.date, unittest.equals('foo'));
    unittest.expect(o.destination, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.maxConnectionDuration, unittest.equals(42));
    unittest.expect(o.maxStops, unittest.equals(42));
    unittest.expect(o.origin, unittest.equals('foo'));
    checkUnnamed1321(o.permittedCarrier);
    checkTimeOfDayRange(o.permittedDepartureTime);
    unittest.expect(o.preferredCabin, unittest.equals('foo'));
    checkUnnamed1322(o.prohibitedCarrier);
  }
  buildCounterSliceInput--;
}

core.int buildCounterTaxData = 0;
buildTaxData() {
  var o = new api.TaxData();
  buildCounterTaxData++;
  if (buildCounterTaxData < 3) {
    o.id = "foo";
    o.kind = "foo";
    o.name = "foo";
  }
  buildCounterTaxData--;
  return o;
}

checkTaxData(api.TaxData o) {
  buildCounterTaxData++;
  if (buildCounterTaxData < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterTaxData--;
}

core.int buildCounterTaxInfo = 0;
buildTaxInfo() {
  var o = new api.TaxInfo();
  buildCounterTaxInfo++;
  if (buildCounterTaxInfo < 3) {
    o.chargeType = "foo";
    o.code = "foo";
    o.country = "foo";
    o.id = "foo";
    o.kind = "foo";
    o.salePrice = "foo";
  }
  buildCounterTaxInfo--;
  return o;
}

checkTaxInfo(api.TaxInfo o) {
  buildCounterTaxInfo++;
  if (buildCounterTaxInfo < 3) {
    unittest.expect(o.chargeType, unittest.equals('foo'));
    unittest.expect(o.code, unittest.equals('foo'));
    unittest.expect(o.country, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.salePrice, unittest.equals('foo'));
  }
  buildCounterTaxInfo--;
}

core.int buildCounterTimeOfDayRange = 0;
buildTimeOfDayRange() {
  var o = new api.TimeOfDayRange();
  buildCounterTimeOfDayRange++;
  if (buildCounterTimeOfDayRange < 3) {
    o.earliestTime = "foo";
    o.kind = "foo";
    o.latestTime = "foo";
  }
  buildCounterTimeOfDayRange--;
  return o;
}

checkTimeOfDayRange(api.TimeOfDayRange o) {
  buildCounterTimeOfDayRange++;
  if (buildCounterTimeOfDayRange < 3) {
    unittest.expect(o.earliestTime, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.latestTime, unittest.equals('foo'));
  }
  buildCounterTimeOfDayRange--;
}

buildUnnamed1323() {
  var o = new core.List<api.PricingInfo>();
  o.add(buildPricingInfo());
  o.add(buildPricingInfo());
  return o;
}

checkUnnamed1323(core.List<api.PricingInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPricingInfo(o[0]);
  checkPricingInfo(o[1]);
}

buildUnnamed1324() {
  var o = new core.List<api.SliceInfo>();
  o.add(buildSliceInfo());
  o.add(buildSliceInfo());
  return o;
}

checkUnnamed1324(core.List<api.SliceInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSliceInfo(o[0]);
  checkSliceInfo(o[1]);
}

core.int buildCounterTripOption = 0;
buildTripOption() {
  var o = new api.TripOption();
  buildCounterTripOption++;
  if (buildCounterTripOption < 3) {
    o.id = "foo";
    o.kind = "foo";
    o.pricing = buildUnnamed1323();
    o.saleTotal = "foo";
    o.slice = buildUnnamed1324();
  }
  buildCounterTripOption--;
  return o;
}

checkTripOption(api.TripOption o) {
  buildCounterTripOption++;
  if (buildCounterTripOption < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    checkUnnamed1323(o.pricing);
    unittest.expect(o.saleTotal, unittest.equals('foo'));
    checkUnnamed1324(o.slice);
  }
  buildCounterTripOption--;
}

buildUnnamed1325() {
  var o = new core.List<api.SliceInput>();
  o.add(buildSliceInput());
  o.add(buildSliceInput());
  return o;
}

checkUnnamed1325(core.List<api.SliceInput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSliceInput(o[0]);
  checkSliceInput(o[1]);
}

core.int buildCounterTripOptionsRequest = 0;
buildTripOptionsRequest() {
  var o = new api.TripOptionsRequest();
  buildCounterTripOptionsRequest++;
  if (buildCounterTripOptionsRequest < 3) {
    o.maxPrice = "foo";
    o.passengers = buildPassengerCounts();
    o.refundable = true;
    o.saleCountry = "foo";
    o.slice = buildUnnamed1325();
    o.solutions = 42;
  }
  buildCounterTripOptionsRequest--;
  return o;
}

checkTripOptionsRequest(api.TripOptionsRequest o) {
  buildCounterTripOptionsRequest++;
  if (buildCounterTripOptionsRequest < 3) {
    unittest.expect(o.maxPrice, unittest.equals('foo'));
    checkPassengerCounts(o.passengers);
    unittest.expect(o.refundable, unittest.isTrue);
    unittest.expect(o.saleCountry, unittest.equals('foo'));
    checkUnnamed1325(o.slice);
    unittest.expect(o.solutions, unittest.equals(42));
  }
  buildCounterTripOptionsRequest--;
}

buildUnnamed1326() {
  var o = new core.List<api.TripOption>();
  o.add(buildTripOption());
  o.add(buildTripOption());
  return o;
}

checkUnnamed1326(core.List<api.TripOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTripOption(o[0]);
  checkTripOption(o[1]);
}

core.int buildCounterTripOptionsResponse = 0;
buildTripOptionsResponse() {
  var o = new api.TripOptionsResponse();
  buildCounterTripOptionsResponse++;
  if (buildCounterTripOptionsResponse < 3) {
    o.data = buildData();
    o.kind = "foo";
    o.requestId = "foo";
    o.tripOption = buildUnnamed1326();
  }
  buildCounterTripOptionsResponse--;
  return o;
}

checkTripOptionsResponse(api.TripOptionsResponse o) {
  buildCounterTripOptionsResponse++;
  if (buildCounterTripOptionsResponse < 3) {
    checkData(o.data);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.requestId, unittest.equals('foo'));
    checkUnnamed1326(o.tripOption);
  }
  buildCounterTripOptionsResponse--;
}

core.int buildCounterTripsSearchRequest = 0;
buildTripsSearchRequest() {
  var o = new api.TripsSearchRequest();
  buildCounterTripsSearchRequest++;
  if (buildCounterTripsSearchRequest < 3) {
    o.request = buildTripOptionsRequest();
  }
  buildCounterTripsSearchRequest--;
  return o;
}

checkTripsSearchRequest(api.TripsSearchRequest o) {
  buildCounterTripsSearchRequest++;
  if (buildCounterTripsSearchRequest < 3) {
    checkTripOptionsRequest(o.request);
  }
  buildCounterTripsSearchRequest--;
}

core.int buildCounterTripsSearchResponse = 0;
buildTripsSearchResponse() {
  var o = new api.TripsSearchResponse();
  buildCounterTripsSearchResponse++;
  if (buildCounterTripsSearchResponse < 3) {
    o.kind = "foo";
    o.trips = buildTripOptionsResponse();
  }
  buildCounterTripsSearchResponse--;
  return o;
}

checkTripsSearchResponse(api.TripsSearchResponse o) {
  buildCounterTripsSearchResponse++;
  if (buildCounterTripsSearchResponse < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    checkTripOptionsResponse(o.trips);
  }
  buildCounterTripsSearchResponse--;
}


main() {
  unittest.group("obj-schema-AircraftData", () {
    unittest.test("to-json--from-json", () {
      var o = buildAircraftData();
      var od = new api.AircraftData.fromJson(o.toJson());
      checkAircraftData(od);
    });
  });


  unittest.group("obj-schema-AirportData", () {
    unittest.test("to-json--from-json", () {
      var o = buildAirportData();
      var od = new api.AirportData.fromJson(o.toJson());
      checkAirportData(od);
    });
  });


  unittest.group("obj-schema-BagDescriptor", () {
    unittest.test("to-json--from-json", () {
      var o = buildBagDescriptor();
      var od = new api.BagDescriptor.fromJson(o.toJson());
      checkBagDescriptor(od);
    });
  });


  unittest.group("obj-schema-CarrierData", () {
    unittest.test("to-json--from-json", () {
      var o = buildCarrierData();
      var od = new api.CarrierData.fromJson(o.toJson());
      checkCarrierData(od);
    });
  });


  unittest.group("obj-schema-CityData", () {
    unittest.test("to-json--from-json", () {
      var o = buildCityData();
      var od = new api.CityData.fromJson(o.toJson());
      checkCityData(od);
    });
  });


  unittest.group("obj-schema-Data", () {
    unittest.test("to-json--from-json", () {
      var o = buildData();
      var od = new api.Data.fromJson(o.toJson());
      checkData(od);
    });
  });


  unittest.group("obj-schema-FareInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildFareInfo();
      var od = new api.FareInfo.fromJson(o.toJson());
      checkFareInfo(od);
    });
  });


  unittest.group("obj-schema-FlightInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildFlightInfo();
      var od = new api.FlightInfo.fromJson(o.toJson());
      checkFlightInfo(od);
    });
  });


  unittest.group("obj-schema-FreeBaggageAllowance", () {
    unittest.test("to-json--from-json", () {
      var o = buildFreeBaggageAllowance();
      var od = new api.FreeBaggageAllowance.fromJson(o.toJson());
      checkFreeBaggageAllowance(od);
    });
  });


  unittest.group("obj-schema-LegInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildLegInfo();
      var od = new api.LegInfo.fromJson(o.toJson());
      checkLegInfo(od);
    });
  });


  unittest.group("obj-schema-PassengerCounts", () {
    unittest.test("to-json--from-json", () {
      var o = buildPassengerCounts();
      var od = new api.PassengerCounts.fromJson(o.toJson());
      checkPassengerCounts(od);
    });
  });


  unittest.group("obj-schema-PricingInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildPricingInfo();
      var od = new api.PricingInfo.fromJson(o.toJson());
      checkPricingInfo(od);
    });
  });


  unittest.group("obj-schema-SegmentInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildSegmentInfo();
      var od = new api.SegmentInfo.fromJson(o.toJson());
      checkSegmentInfo(od);
    });
  });


  unittest.group("obj-schema-SegmentPricing", () {
    unittest.test("to-json--from-json", () {
      var o = buildSegmentPricing();
      var od = new api.SegmentPricing.fromJson(o.toJson());
      checkSegmentPricing(od);
    });
  });


  unittest.group("obj-schema-SliceInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildSliceInfo();
      var od = new api.SliceInfo.fromJson(o.toJson());
      checkSliceInfo(od);
    });
  });


  unittest.group("obj-schema-SliceInput", () {
    unittest.test("to-json--from-json", () {
      var o = buildSliceInput();
      var od = new api.SliceInput.fromJson(o.toJson());
      checkSliceInput(od);
    });
  });


  unittest.group("obj-schema-TaxData", () {
    unittest.test("to-json--from-json", () {
      var o = buildTaxData();
      var od = new api.TaxData.fromJson(o.toJson());
      checkTaxData(od);
    });
  });


  unittest.group("obj-schema-TaxInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildTaxInfo();
      var od = new api.TaxInfo.fromJson(o.toJson());
      checkTaxInfo(od);
    });
  });


  unittest.group("obj-schema-TimeOfDayRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildTimeOfDayRange();
      var od = new api.TimeOfDayRange.fromJson(o.toJson());
      checkTimeOfDayRange(od);
    });
  });


  unittest.group("obj-schema-TripOption", () {
    unittest.test("to-json--from-json", () {
      var o = buildTripOption();
      var od = new api.TripOption.fromJson(o.toJson());
      checkTripOption(od);
    });
  });


  unittest.group("obj-schema-TripOptionsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTripOptionsRequest();
      var od = new api.TripOptionsRequest.fromJson(o.toJson());
      checkTripOptionsRequest(od);
    });
  });


  unittest.group("obj-schema-TripOptionsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTripOptionsResponse();
      var od = new api.TripOptionsResponse.fromJson(o.toJson());
      checkTripOptionsResponse(od);
    });
  });


  unittest.group("obj-schema-TripsSearchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildTripsSearchRequest();
      var od = new api.TripsSearchRequest.fromJson(o.toJson());
      checkTripsSearchRequest(od);
    });
  });


  unittest.group("obj-schema-TripsSearchResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTripsSearchResponse();
      var od = new api.TripsSearchResponse.fromJson(o.toJson());
      checkTripsSearchResponse(od);
    });
  });


  unittest.group("resource-TripsResourceApi", () {
    unittest.test("method--search", () {

      var mock = new common_test.HttpServerMock();
      api.TripsResourceApi res = new api.QpxExpressApi(mock).trips;
      var arg_request = buildTripsSearchRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.TripsSearchRequest.fromJson(json);
        checkTripsSearchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 20), unittest.equals("qpxExpress/v1/trips/"));
        pathOffset += 20;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("search"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTripsSearchResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.search(arg_request).then(unittest.expectAsync(((api.TripsSearchResponse response) {
        checkTripsSearchResponse(response);
      })));
    });

  });


}

