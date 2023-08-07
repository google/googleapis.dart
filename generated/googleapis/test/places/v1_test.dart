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
// ignore_for_file: unnecessary_library_directive
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/places/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleGeoTypeViewport = 0;
api.GoogleGeoTypeViewport buildGoogleGeoTypeViewport() {
  final o = api.GoogleGeoTypeViewport();
  buildCounterGoogleGeoTypeViewport++;
  if (buildCounterGoogleGeoTypeViewport < 3) {
    o.high = buildGoogleTypeLatLng();
    o.low = buildGoogleTypeLatLng();
  }
  buildCounterGoogleGeoTypeViewport--;
  return o;
}

void checkGoogleGeoTypeViewport(api.GoogleGeoTypeViewport o) {
  buildCounterGoogleGeoTypeViewport++;
  if (buildCounterGoogleGeoTypeViewport < 3) {
    checkGoogleTypeLatLng(o.high!);
    checkGoogleTypeLatLng(o.low!);
  }
  buildCounterGoogleGeoTypeViewport--;
}

core.int buildCounterGoogleMapsPlacesV1AuthorAttribution = 0;
api.GoogleMapsPlacesV1AuthorAttribution
    buildGoogleMapsPlacesV1AuthorAttribution() {
  final o = api.GoogleMapsPlacesV1AuthorAttribution();
  buildCounterGoogleMapsPlacesV1AuthorAttribution++;
  if (buildCounterGoogleMapsPlacesV1AuthorAttribution < 3) {
    o.displayName = 'foo';
    o.photoUri = 'foo';
    o.uri = 'foo';
  }
  buildCounterGoogleMapsPlacesV1AuthorAttribution--;
  return o;
}

void checkGoogleMapsPlacesV1AuthorAttribution(
    api.GoogleMapsPlacesV1AuthorAttribution o) {
  buildCounterGoogleMapsPlacesV1AuthorAttribution++;
  if (buildCounterGoogleMapsPlacesV1AuthorAttribution < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.photoUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleMapsPlacesV1AuthorAttribution--;
}

core.int buildCounterGoogleMapsPlacesV1Circle = 0;
api.GoogleMapsPlacesV1Circle buildGoogleMapsPlacesV1Circle() {
  final o = api.GoogleMapsPlacesV1Circle();
  buildCounterGoogleMapsPlacesV1Circle++;
  if (buildCounterGoogleMapsPlacesV1Circle < 3) {
    o.center = buildGoogleTypeLatLng();
    o.radius = 42.0;
  }
  buildCounterGoogleMapsPlacesV1Circle--;
  return o;
}

void checkGoogleMapsPlacesV1Circle(api.GoogleMapsPlacesV1Circle o) {
  buildCounterGoogleMapsPlacesV1Circle++;
  if (buildCounterGoogleMapsPlacesV1Circle < 3) {
    checkGoogleTypeLatLng(o.center!);
    unittest.expect(
      o.radius!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleMapsPlacesV1Circle--;
}

core.int buildCounterGoogleMapsPlacesV1Int32Range = 0;
api.GoogleMapsPlacesV1Int32Range buildGoogleMapsPlacesV1Int32Range() {
  final o = api.GoogleMapsPlacesV1Int32Range();
  buildCounterGoogleMapsPlacesV1Int32Range++;
  if (buildCounterGoogleMapsPlacesV1Int32Range < 3) {
    o.max = 42;
    o.min = 42;
  }
  buildCounterGoogleMapsPlacesV1Int32Range--;
  return o;
}

void checkGoogleMapsPlacesV1Int32Range(api.GoogleMapsPlacesV1Int32Range o) {
  buildCounterGoogleMapsPlacesV1Int32Range++;
  if (buildCounterGoogleMapsPlacesV1Int32Range < 3) {
    unittest.expect(
      o.max!,
      unittest.equals(42),
    );
    unittest.expect(
      o.min!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleMapsPlacesV1Int32Range--;
}

core.List<api.GoogleMapsPlacesV1PlaceAddressComponent> buildUnnamed0() => [
      buildGoogleMapsPlacesV1PlaceAddressComponent(),
      buildGoogleMapsPlacesV1PlaceAddressComponent(),
    ];

void checkUnnamed0(core.List<api.GoogleMapsPlacesV1PlaceAddressComponent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1PlaceAddressComponent(o[0]);
  checkGoogleMapsPlacesV1PlaceAddressComponent(o[1]);
}

core.List<api.GoogleMapsPlacesV1PlaceAttribution> buildUnnamed1() => [
      buildGoogleMapsPlacesV1PlaceAttribution(),
      buildGoogleMapsPlacesV1PlaceAttribution(),
    ];

void checkUnnamed1(core.List<api.GoogleMapsPlacesV1PlaceAttribution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1PlaceAttribution(o[0]);
  checkGoogleMapsPlacesV1PlaceAttribution(o[1]);
}

core.List<api.GoogleMapsPlacesV1PlaceOpeningHours> buildUnnamed2() => [
      buildGoogleMapsPlacesV1PlaceOpeningHours(),
      buildGoogleMapsPlacesV1PlaceOpeningHours(),
    ];

void checkUnnamed2(core.List<api.GoogleMapsPlacesV1PlaceOpeningHours> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1PlaceOpeningHours(o[0]);
  checkGoogleMapsPlacesV1PlaceOpeningHours(o[1]);
}

core.List<api.GoogleMapsPlacesV1Review> buildUnnamed3() => [
      buildGoogleMapsPlacesV1Review(),
      buildGoogleMapsPlacesV1Review(),
    ];

void checkUnnamed3(core.List<api.GoogleMapsPlacesV1Review> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1Review(o[0]);
  checkGoogleMapsPlacesV1Review(o[1]);
}

core.List<api.GoogleMapsPlacesV1PlaceOpeningHours> buildUnnamed4() => [
      buildGoogleMapsPlacesV1PlaceOpeningHours(),
      buildGoogleMapsPlacesV1PlaceOpeningHours(),
    ];

void checkUnnamed4(core.List<api.GoogleMapsPlacesV1PlaceOpeningHours> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1PlaceOpeningHours(o[0]);
  checkGoogleMapsPlacesV1PlaceOpeningHours(o[1]);
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

core.int buildCounterGoogleMapsPlacesV1Place = 0;
api.GoogleMapsPlacesV1Place buildGoogleMapsPlacesV1Place() {
  final o = api.GoogleMapsPlacesV1Place();
  buildCounterGoogleMapsPlacesV1Place++;
  if (buildCounterGoogleMapsPlacesV1Place < 3) {
    o.addressComponents = buildUnnamed0();
    o.adrFormatAddress = 'foo';
    o.attributions = buildUnnamed1();
    o.businessStatus = 'foo';
    o.curbsidePickup = true;
    o.currentOpeningHours = buildGoogleMapsPlacesV1PlaceOpeningHours();
    o.currentSecondaryOpeningHours = buildUnnamed2();
    o.delivery = true;
    o.dineIn = true;
    o.displayName = buildGoogleTypeLocalizedText();
    o.editorialSummary = buildGoogleTypeLocalizedText();
    o.formattedAddress = 'foo';
    o.googleMapsUri = 'foo';
    o.iconBackgroundColor = 'foo';
    o.iconMaskBaseUri = 'foo';
    o.id = 'foo';
    o.internationalPhoneNumber = 'foo';
    o.location = buildGoogleTypeLatLng();
    o.name = 'foo';
    o.nationalPhoneNumber = 'foo';
    o.openingHours = buildGoogleMapsPlacesV1PlaceOpeningHours();
    o.plusCode = buildGoogleMapsPlacesV1PlacePlusCode();
    o.priceLevel = 'foo';
    o.rating = 42.0;
    o.reservable = true;
    o.reviews = buildUnnamed3();
    o.secondaryOpeningHours = buildUnnamed4();
    o.servesBeer = true;
    o.servesBreakfast = true;
    o.servesBrunch = true;
    o.servesDinner = true;
    o.servesLunch = true;
    o.servesVegetarianFood = true;
    o.servesWine = true;
    o.takeout = true;
    o.types = buildUnnamed5();
    o.userRatingCount = 42;
    o.utcOffsetMinutes = 42;
    o.viewport = buildGoogleGeoTypeViewport();
    o.websiteUri = 'foo';
    o.wheelchairAccessibleEntrance = true;
  }
  buildCounterGoogleMapsPlacesV1Place--;
  return o;
}

void checkGoogleMapsPlacesV1Place(api.GoogleMapsPlacesV1Place o) {
  buildCounterGoogleMapsPlacesV1Place++;
  if (buildCounterGoogleMapsPlacesV1Place < 3) {
    checkUnnamed0(o.addressComponents!);
    unittest.expect(
      o.adrFormatAddress!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.attributions!);
    unittest.expect(
      o.businessStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(o.curbsidePickup!, unittest.isTrue);
    checkGoogleMapsPlacesV1PlaceOpeningHours(o.currentOpeningHours!);
    checkUnnamed2(o.currentSecondaryOpeningHours!);
    unittest.expect(o.delivery!, unittest.isTrue);
    unittest.expect(o.dineIn!, unittest.isTrue);
    checkGoogleTypeLocalizedText(o.displayName!);
    checkGoogleTypeLocalizedText(o.editorialSummary!);
    unittest.expect(
      o.formattedAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.googleMapsUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.iconBackgroundColor!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.iconMaskBaseUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.internationalPhoneNumber!,
      unittest.equals('foo'),
    );
    checkGoogleTypeLatLng(o.location!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nationalPhoneNumber!,
      unittest.equals('foo'),
    );
    checkGoogleMapsPlacesV1PlaceOpeningHours(o.openingHours!);
    checkGoogleMapsPlacesV1PlacePlusCode(o.plusCode!);
    unittest.expect(
      o.priceLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rating!,
      unittest.equals(42.0),
    );
    unittest.expect(o.reservable!, unittest.isTrue);
    checkUnnamed3(o.reviews!);
    checkUnnamed4(o.secondaryOpeningHours!);
    unittest.expect(o.servesBeer!, unittest.isTrue);
    unittest.expect(o.servesBreakfast!, unittest.isTrue);
    unittest.expect(o.servesBrunch!, unittest.isTrue);
    unittest.expect(o.servesDinner!, unittest.isTrue);
    unittest.expect(o.servesLunch!, unittest.isTrue);
    unittest.expect(o.servesVegetarianFood!, unittest.isTrue);
    unittest.expect(o.servesWine!, unittest.isTrue);
    unittest.expect(o.takeout!, unittest.isTrue);
    checkUnnamed5(o.types!);
    unittest.expect(
      o.userRatingCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.utcOffsetMinutes!,
      unittest.equals(42),
    );
    checkGoogleGeoTypeViewport(o.viewport!);
    unittest.expect(
      o.websiteUri!,
      unittest.equals('foo'),
    );
    unittest.expect(o.wheelchairAccessibleEntrance!, unittest.isTrue);
  }
  buildCounterGoogleMapsPlacesV1Place--;
}

core.List<core.String> buildUnnamed6() => [
      'foo',
      'foo',
    ];

void checkUnnamed6(core.List<core.String> o) {
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

core.int buildCounterGoogleMapsPlacesV1PlaceAddressComponent = 0;
api.GoogleMapsPlacesV1PlaceAddressComponent
    buildGoogleMapsPlacesV1PlaceAddressComponent() {
  final o = api.GoogleMapsPlacesV1PlaceAddressComponent();
  buildCounterGoogleMapsPlacesV1PlaceAddressComponent++;
  if (buildCounterGoogleMapsPlacesV1PlaceAddressComponent < 3) {
    o.languageCode = 'foo';
    o.longText = 'foo';
    o.shortText = 'foo';
    o.types = buildUnnamed6();
  }
  buildCounterGoogleMapsPlacesV1PlaceAddressComponent--;
  return o;
}

void checkGoogleMapsPlacesV1PlaceAddressComponent(
    api.GoogleMapsPlacesV1PlaceAddressComponent o) {
  buildCounterGoogleMapsPlacesV1PlaceAddressComponent++;
  if (buildCounterGoogleMapsPlacesV1PlaceAddressComponent < 3) {
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.longText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shortText!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.types!);
  }
  buildCounterGoogleMapsPlacesV1PlaceAddressComponent--;
}

core.int buildCounterGoogleMapsPlacesV1PlaceAttribution = 0;
api.GoogleMapsPlacesV1PlaceAttribution
    buildGoogleMapsPlacesV1PlaceAttribution() {
  final o = api.GoogleMapsPlacesV1PlaceAttribution();
  buildCounterGoogleMapsPlacesV1PlaceAttribution++;
  if (buildCounterGoogleMapsPlacesV1PlaceAttribution < 3) {
    o.provider = 'foo';
    o.providerUri = 'foo';
  }
  buildCounterGoogleMapsPlacesV1PlaceAttribution--;
  return o;
}

void checkGoogleMapsPlacesV1PlaceAttribution(
    api.GoogleMapsPlacesV1PlaceAttribution o) {
  buildCounterGoogleMapsPlacesV1PlaceAttribution++;
  if (buildCounterGoogleMapsPlacesV1PlaceAttribution < 3) {
    unittest.expect(
      o.provider!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.providerUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleMapsPlacesV1PlaceAttribution--;
}

core.List<api.GoogleMapsPlacesV1PlaceOpeningHoursPeriod> buildUnnamed7() => [
      buildGoogleMapsPlacesV1PlaceOpeningHoursPeriod(),
      buildGoogleMapsPlacesV1PlaceOpeningHoursPeriod(),
    ];

void checkUnnamed7(core.List<api.GoogleMapsPlacesV1PlaceOpeningHoursPeriod> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1PlaceOpeningHoursPeriod(o[0]);
  checkGoogleMapsPlacesV1PlaceOpeningHoursPeriod(o[1]);
}

core.List<api.GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay> buildUnnamed8() =>
    [
      buildGoogleMapsPlacesV1PlaceOpeningHoursSpecialDay(),
      buildGoogleMapsPlacesV1PlaceOpeningHoursSpecialDay(),
    ];

void checkUnnamed8(
    core.List<api.GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1PlaceOpeningHoursSpecialDay(o[0]);
  checkGoogleMapsPlacesV1PlaceOpeningHoursSpecialDay(o[1]);
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

core.int buildCounterGoogleMapsPlacesV1PlaceOpeningHours = 0;
api.GoogleMapsPlacesV1PlaceOpeningHours
    buildGoogleMapsPlacesV1PlaceOpeningHours() {
  final o = api.GoogleMapsPlacesV1PlaceOpeningHours();
  buildCounterGoogleMapsPlacesV1PlaceOpeningHours++;
  if (buildCounterGoogleMapsPlacesV1PlaceOpeningHours < 3) {
    o.openNow = true;
    o.periods = buildUnnamed7();
    o.secondaryHoursType = 'foo';
    o.specialDays = buildUnnamed8();
    o.weekdayDescriptions = buildUnnamed9();
  }
  buildCounterGoogleMapsPlacesV1PlaceOpeningHours--;
  return o;
}

void checkGoogleMapsPlacesV1PlaceOpeningHours(
    api.GoogleMapsPlacesV1PlaceOpeningHours o) {
  buildCounterGoogleMapsPlacesV1PlaceOpeningHours++;
  if (buildCounterGoogleMapsPlacesV1PlaceOpeningHours < 3) {
    unittest.expect(o.openNow!, unittest.isTrue);
    checkUnnamed7(o.periods!);
    unittest.expect(
      o.secondaryHoursType!,
      unittest.equals('foo'),
    );
    checkUnnamed8(o.specialDays!);
    checkUnnamed9(o.weekdayDescriptions!);
  }
  buildCounterGoogleMapsPlacesV1PlaceOpeningHours--;
}

core.int buildCounterGoogleMapsPlacesV1PlaceOpeningHoursPeriod = 0;
api.GoogleMapsPlacesV1PlaceOpeningHoursPeriod
    buildGoogleMapsPlacesV1PlaceOpeningHoursPeriod() {
  final o = api.GoogleMapsPlacesV1PlaceOpeningHoursPeriod();
  buildCounterGoogleMapsPlacesV1PlaceOpeningHoursPeriod++;
  if (buildCounterGoogleMapsPlacesV1PlaceOpeningHoursPeriod < 3) {
    o.close = buildGoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint();
    o.open = buildGoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint();
  }
  buildCounterGoogleMapsPlacesV1PlaceOpeningHoursPeriod--;
  return o;
}

void checkGoogleMapsPlacesV1PlaceOpeningHoursPeriod(
    api.GoogleMapsPlacesV1PlaceOpeningHoursPeriod o) {
  buildCounterGoogleMapsPlacesV1PlaceOpeningHoursPeriod++;
  if (buildCounterGoogleMapsPlacesV1PlaceOpeningHoursPeriod < 3) {
    checkGoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint(o.close!);
    checkGoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint(o.open!);
  }
  buildCounterGoogleMapsPlacesV1PlaceOpeningHoursPeriod--;
}

core.int buildCounterGoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint = 0;
api.GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint
    buildGoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint() {
  final o = api.GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint();
  buildCounterGoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint++;
  if (buildCounterGoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint < 3) {
    o.date = buildGoogleTypeDate();
    o.dateDeprecated = 'foo';
    o.day = 42;
    o.hour = 42;
    o.minute = 42;
    o.truncated = true;
  }
  buildCounterGoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint--;
  return o;
}

void checkGoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint(
    api.GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint o) {
  buildCounterGoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint++;
  if (buildCounterGoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint < 3) {
    checkGoogleTypeDate(o.date!);
    unittest.expect(
      o.dateDeprecated!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.day!,
      unittest.equals(42),
    );
    unittest.expect(
      o.hour!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minute!,
      unittest.equals(42),
    );
    unittest.expect(o.truncated!, unittest.isTrue);
  }
  buildCounterGoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint--;
}

core.int buildCounterGoogleMapsPlacesV1PlaceOpeningHoursSpecialDay = 0;
api.GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay
    buildGoogleMapsPlacesV1PlaceOpeningHoursSpecialDay() {
  final o = api.GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay();
  buildCounterGoogleMapsPlacesV1PlaceOpeningHoursSpecialDay++;
  if (buildCounterGoogleMapsPlacesV1PlaceOpeningHoursSpecialDay < 3) {
    o.date = buildGoogleTypeDate();
  }
  buildCounterGoogleMapsPlacesV1PlaceOpeningHoursSpecialDay--;
  return o;
}

void checkGoogleMapsPlacesV1PlaceOpeningHoursSpecialDay(
    api.GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay o) {
  buildCounterGoogleMapsPlacesV1PlaceOpeningHoursSpecialDay++;
  if (buildCounterGoogleMapsPlacesV1PlaceOpeningHoursSpecialDay < 3) {
    checkGoogleTypeDate(o.date!);
  }
  buildCounterGoogleMapsPlacesV1PlaceOpeningHoursSpecialDay--;
}

core.int buildCounterGoogleMapsPlacesV1PlacePlusCode = 0;
api.GoogleMapsPlacesV1PlacePlusCode buildGoogleMapsPlacesV1PlacePlusCode() {
  final o = api.GoogleMapsPlacesV1PlacePlusCode();
  buildCounterGoogleMapsPlacesV1PlacePlusCode++;
  if (buildCounterGoogleMapsPlacesV1PlacePlusCode < 3) {
    o.compoundCode = 'foo';
    o.globalCode = 'foo';
  }
  buildCounterGoogleMapsPlacesV1PlacePlusCode--;
  return o;
}

void checkGoogleMapsPlacesV1PlacePlusCode(
    api.GoogleMapsPlacesV1PlacePlusCode o) {
  buildCounterGoogleMapsPlacesV1PlacePlusCode++;
  if (buildCounterGoogleMapsPlacesV1PlacePlusCode < 3) {
    unittest.expect(
      o.compoundCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.globalCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleMapsPlacesV1PlacePlusCode--;
}

core.int buildCounterGoogleMapsPlacesV1Review = 0;
api.GoogleMapsPlacesV1Review buildGoogleMapsPlacesV1Review() {
  final o = api.GoogleMapsPlacesV1Review();
  buildCounterGoogleMapsPlacesV1Review++;
  if (buildCounterGoogleMapsPlacesV1Review < 3) {
    o.authorAttribution = buildGoogleMapsPlacesV1AuthorAttribution();
    o.originalText = buildGoogleTypeLocalizedText();
    o.publishTime = 'foo';
    o.rating = 42.0;
    o.relativePublishTimeDescription = 'foo';
    o.text = buildGoogleTypeLocalizedText();
  }
  buildCounterGoogleMapsPlacesV1Review--;
  return o;
}

void checkGoogleMapsPlacesV1Review(api.GoogleMapsPlacesV1Review o) {
  buildCounterGoogleMapsPlacesV1Review++;
  if (buildCounterGoogleMapsPlacesV1Review < 3) {
    checkGoogleMapsPlacesV1AuthorAttribution(o.authorAttribution!);
    checkGoogleTypeLocalizedText(o.originalText!);
    unittest.expect(
      o.publishTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rating!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.relativePublishTimeDescription!,
      unittest.equals('foo'),
    );
    checkGoogleTypeLocalizedText(o.text!);
  }
  buildCounterGoogleMapsPlacesV1Review--;
}

core.List<core.String> buildUnnamed10() => [
      'foo',
      'foo',
    ];

void checkUnnamed10(core.List<core.String> o) {
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

core.int buildCounterGoogleMapsPlacesV1SearchTextRequest = 0;
api.GoogleMapsPlacesV1SearchTextRequest
    buildGoogleMapsPlacesV1SearchTextRequest() {
  final o = api.GoogleMapsPlacesV1SearchTextRequest();
  buildCounterGoogleMapsPlacesV1SearchTextRequest++;
  if (buildCounterGoogleMapsPlacesV1SearchTextRequest < 3) {
    o.includedType = 'foo';
    o.languageCode = 'foo';
    o.location = buildGoogleMapsPlacesV1SearchTextRequestLocation();
    o.locationBias = buildGoogleMapsPlacesV1SearchTextRequestLocationBias();
    o.locationRestriction =
        buildGoogleMapsPlacesV1SearchTextRequestLocationRestriction();
    o.maxResultCount = 42;
    o.minRating = 42.0;
    o.openNow = true;
    o.priceLevels = buildUnnamed10();
    o.priceRange = buildGoogleMapsPlacesV1Int32Range();
    o.rankPreference = 'foo';
    o.regionCode = 'foo';
    o.strictTypeFiltering = true;
    o.textQuery = 'foo';
  }
  buildCounterGoogleMapsPlacesV1SearchTextRequest--;
  return o;
}

void checkGoogleMapsPlacesV1SearchTextRequest(
    api.GoogleMapsPlacesV1SearchTextRequest o) {
  buildCounterGoogleMapsPlacesV1SearchTextRequest++;
  if (buildCounterGoogleMapsPlacesV1SearchTextRequest < 3) {
    unittest.expect(
      o.includedType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    checkGoogleMapsPlacesV1SearchTextRequestLocation(o.location!);
    checkGoogleMapsPlacesV1SearchTextRequestLocationBias(o.locationBias!);
    checkGoogleMapsPlacesV1SearchTextRequestLocationRestriction(
        o.locationRestriction!);
    unittest.expect(
      o.maxResultCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minRating!,
      unittest.equals(42.0),
    );
    unittest.expect(o.openNow!, unittest.isTrue);
    checkUnnamed10(o.priceLevels!);
    checkGoogleMapsPlacesV1Int32Range(o.priceRange!);
    unittest.expect(
      o.rankPreference!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
    unittest.expect(o.strictTypeFiltering!, unittest.isTrue);
    unittest.expect(
      o.textQuery!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleMapsPlacesV1SearchTextRequest--;
}

core.int buildCounterGoogleMapsPlacesV1SearchTextRequestLocation = 0;
api.GoogleMapsPlacesV1SearchTextRequestLocation
    buildGoogleMapsPlacesV1SearchTextRequestLocation() {
  final o = api.GoogleMapsPlacesV1SearchTextRequestLocation();
  buildCounterGoogleMapsPlacesV1SearchTextRequestLocation++;
  if (buildCounterGoogleMapsPlacesV1SearchTextRequestLocation < 3) {
    o.rectangle = buildGoogleGeoTypeViewport();
    o.strictRestriction = true;
  }
  buildCounterGoogleMapsPlacesV1SearchTextRequestLocation--;
  return o;
}

void checkGoogleMapsPlacesV1SearchTextRequestLocation(
    api.GoogleMapsPlacesV1SearchTextRequestLocation o) {
  buildCounterGoogleMapsPlacesV1SearchTextRequestLocation++;
  if (buildCounterGoogleMapsPlacesV1SearchTextRequestLocation < 3) {
    checkGoogleGeoTypeViewport(o.rectangle!);
    unittest.expect(o.strictRestriction!, unittest.isTrue);
  }
  buildCounterGoogleMapsPlacesV1SearchTextRequestLocation--;
}

core.int buildCounterGoogleMapsPlacesV1SearchTextRequestLocationBias = 0;
api.GoogleMapsPlacesV1SearchTextRequestLocationBias
    buildGoogleMapsPlacesV1SearchTextRequestLocationBias() {
  final o = api.GoogleMapsPlacesV1SearchTextRequestLocationBias();
  buildCounterGoogleMapsPlacesV1SearchTextRequestLocationBias++;
  if (buildCounterGoogleMapsPlacesV1SearchTextRequestLocationBias < 3) {
    o.circle = buildGoogleMapsPlacesV1Circle();
    o.rectangle = buildGoogleGeoTypeViewport();
  }
  buildCounterGoogleMapsPlacesV1SearchTextRequestLocationBias--;
  return o;
}

void checkGoogleMapsPlacesV1SearchTextRequestLocationBias(
    api.GoogleMapsPlacesV1SearchTextRequestLocationBias o) {
  buildCounterGoogleMapsPlacesV1SearchTextRequestLocationBias++;
  if (buildCounterGoogleMapsPlacesV1SearchTextRequestLocationBias < 3) {
    checkGoogleMapsPlacesV1Circle(o.circle!);
    checkGoogleGeoTypeViewport(o.rectangle!);
  }
  buildCounterGoogleMapsPlacesV1SearchTextRequestLocationBias--;
}

core.int buildCounterGoogleMapsPlacesV1SearchTextRequestLocationRestriction = 0;
api.GoogleMapsPlacesV1SearchTextRequestLocationRestriction
    buildGoogleMapsPlacesV1SearchTextRequestLocationRestriction() {
  final o = api.GoogleMapsPlacesV1SearchTextRequestLocationRestriction();
  buildCounterGoogleMapsPlacesV1SearchTextRequestLocationRestriction++;
  if (buildCounterGoogleMapsPlacesV1SearchTextRequestLocationRestriction < 3) {
    o.rectangle = buildGoogleGeoTypeViewport();
  }
  buildCounterGoogleMapsPlacesV1SearchTextRequestLocationRestriction--;
  return o;
}

void checkGoogleMapsPlacesV1SearchTextRequestLocationRestriction(
    api.GoogleMapsPlacesV1SearchTextRequestLocationRestriction o) {
  buildCounterGoogleMapsPlacesV1SearchTextRequestLocationRestriction++;
  if (buildCounterGoogleMapsPlacesV1SearchTextRequestLocationRestriction < 3) {
    checkGoogleGeoTypeViewport(o.rectangle!);
  }
  buildCounterGoogleMapsPlacesV1SearchTextRequestLocationRestriction--;
}

core.List<api.GoogleMapsPlacesV1Place> buildUnnamed11() => [
      buildGoogleMapsPlacesV1Place(),
      buildGoogleMapsPlacesV1Place(),
    ];

void checkUnnamed11(core.List<api.GoogleMapsPlacesV1Place> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1Place(o[0]);
  checkGoogleMapsPlacesV1Place(o[1]);
}

core.int buildCounterGoogleMapsPlacesV1SearchTextResponse = 0;
api.GoogleMapsPlacesV1SearchTextResponse
    buildGoogleMapsPlacesV1SearchTextResponse() {
  final o = api.GoogleMapsPlacesV1SearchTextResponse();
  buildCounterGoogleMapsPlacesV1SearchTextResponse++;
  if (buildCounterGoogleMapsPlacesV1SearchTextResponse < 3) {
    o.places = buildUnnamed11();
  }
  buildCounterGoogleMapsPlacesV1SearchTextResponse--;
  return o;
}

void checkGoogleMapsPlacesV1SearchTextResponse(
    api.GoogleMapsPlacesV1SearchTextResponse o) {
  buildCounterGoogleMapsPlacesV1SearchTextResponse++;
  if (buildCounterGoogleMapsPlacesV1SearchTextResponse < 3) {
    checkUnnamed11(o.places!);
  }
  buildCounterGoogleMapsPlacesV1SearchTextResponse--;
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

core.int buildCounterGoogleTypeLatLng = 0;
api.GoogleTypeLatLng buildGoogleTypeLatLng() {
  final o = api.GoogleTypeLatLng();
  buildCounterGoogleTypeLatLng++;
  if (buildCounterGoogleTypeLatLng < 3) {
    o.latitude = 42.0;
    o.longitude = 42.0;
  }
  buildCounterGoogleTypeLatLng--;
  return o;
}

void checkGoogleTypeLatLng(api.GoogleTypeLatLng o) {
  buildCounterGoogleTypeLatLng++;
  if (buildCounterGoogleTypeLatLng < 3) {
    unittest.expect(
      o.latitude!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.longitude!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleTypeLatLng--;
}

core.int buildCounterGoogleTypeLocalizedText = 0;
api.GoogleTypeLocalizedText buildGoogleTypeLocalizedText() {
  final o = api.GoogleTypeLocalizedText();
  buildCounterGoogleTypeLocalizedText++;
  if (buildCounterGoogleTypeLocalizedText < 3) {
    o.languageCode = 'foo';
    o.text = 'foo';
  }
  buildCounterGoogleTypeLocalizedText--;
  return o;
}

void checkGoogleTypeLocalizedText(api.GoogleTypeLocalizedText o) {
  buildCounterGoogleTypeLocalizedText++;
  if (buildCounterGoogleTypeLocalizedText < 3) {
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleTypeLocalizedText--;
}

void main() {
  unittest.group('obj-schema-GoogleGeoTypeViewport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleGeoTypeViewport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleGeoTypeViewport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleGeoTypeViewport(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1AuthorAttribution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1AuthorAttribution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1AuthorAttribution.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1AuthorAttribution(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1Circle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1Circle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1Circle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1Circle(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1Int32Range', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1Int32Range();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1Int32Range.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1Int32Range(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1Place', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1Place();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1Place.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1Place(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1PlaceAddressComponent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1PlaceAddressComponent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1PlaceAddressComponent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1PlaceAddressComponent(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1PlaceAttribution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1PlaceAttribution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1PlaceAttribution.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1PlaceAttribution(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1PlaceOpeningHours', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1PlaceOpeningHours();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1PlaceOpeningHours.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1PlaceOpeningHours(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1PlaceOpeningHoursPeriod', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1PlaceOpeningHoursPeriod();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1PlaceOpeningHoursPeriod.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1PlaceOpeningHoursPeriod(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1PlaceOpeningHoursSpecialDay();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1PlaceOpeningHoursSpecialDay(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1PlacePlusCode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1PlacePlusCode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1PlacePlusCode.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1PlacePlusCode(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1Review', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1Review();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1Review.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1Review(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1SearchTextRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1SearchTextRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1SearchTextRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1SearchTextRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1SearchTextRequestLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1SearchTextRequestLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1SearchTextRequestLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1SearchTextRequestLocation(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1SearchTextRequestLocationBias',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1SearchTextRequestLocationBias();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1SearchTextRequestLocationBias.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1SearchTextRequestLocationBias(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleMapsPlacesV1SearchTextRequestLocationRestriction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1SearchTextRequestLocationRestriction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleMapsPlacesV1SearchTextRequestLocationRestriction.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1SearchTextRequestLocationRestriction(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1SearchTextResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1SearchTextResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1SearchTextResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1SearchTextResponse(od);
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

  unittest.group('obj-schema-GoogleTypeLatLng', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeLatLng();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeLatLng.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeLatLng(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeLocalizedText', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeLocalizedText();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeLocalizedText.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeLocalizedText(od);
    });
  });

  unittest.group('resource-TextResource', () {
    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.PlacesAPI__New_Api(mock).Text;
      final arg_request = buildGoogleMapsPlacesV1SearchTextRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleMapsPlacesV1SearchTextRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleMapsPlacesV1SearchTextRequest(obj);

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
          unittest.equals('v1/Text:search'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleMapsPlacesV1SearchTextResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(arg_request, $fields: arg_$fields);
      checkGoogleMapsPlacesV1SearchTextResponse(
          response as api.GoogleMapsPlacesV1SearchTextResponse);
    });
  });

  unittest.group('resource-PlacesResource', () {
    unittest.test('method--searchText', () async {
      final mock = HttpServerMock();
      final res = api.PlacesAPI__New_Api(mock).places;
      final arg_request = buildGoogleMapsPlacesV1SearchTextRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleMapsPlacesV1SearchTextRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleMapsPlacesV1SearchTextRequest(obj);

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
          path.substring(pathOffset, pathOffset + 20),
          unittest.equals('v1/places:searchText'),
        );
        pathOffset += 20;

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
            convert.json.encode(buildGoogleMapsPlacesV1SearchTextResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.searchText(arg_request, $fields: arg_$fields);
      checkGoogleMapsPlacesV1SearchTextResponse(
          response as api.GoogleMapsPlacesV1SearchTextResponse);
    });
  });
}
