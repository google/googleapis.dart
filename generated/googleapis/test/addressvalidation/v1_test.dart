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

import 'package:googleapis/addressvalidation/v1.dart' as api;
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

core.List<api.GoogleMapsAddressvalidationV1AddressComponent> buildUnnamed0() =>
    [
      buildGoogleMapsAddressvalidationV1AddressComponent(),
      buildGoogleMapsAddressvalidationV1AddressComponent(),
    ];

void checkUnnamed0(
    core.List<api.GoogleMapsAddressvalidationV1AddressComponent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsAddressvalidationV1AddressComponent(o[0]);
  checkGoogleMapsAddressvalidationV1AddressComponent(o[1]);
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

core.List<core.String> buildUnnamed2() => [
      'foo',
      'foo',
    ];

void checkUnnamed2(core.List<core.String> o) {
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

core.int buildCounterGoogleMapsAddressvalidationV1Address = 0;
api.GoogleMapsAddressvalidationV1Address
    buildGoogleMapsAddressvalidationV1Address() {
  final o = api.GoogleMapsAddressvalidationV1Address();
  buildCounterGoogleMapsAddressvalidationV1Address++;
  if (buildCounterGoogleMapsAddressvalidationV1Address < 3) {
    o.addressComponents = buildUnnamed0();
    o.formattedAddress = 'foo';
    o.missingComponentTypes = buildUnnamed1();
    o.postalAddress = buildGoogleTypePostalAddress();
    o.unconfirmedComponentTypes = buildUnnamed2();
    o.unresolvedTokens = buildUnnamed3();
  }
  buildCounterGoogleMapsAddressvalidationV1Address--;
  return o;
}

void checkGoogleMapsAddressvalidationV1Address(
    api.GoogleMapsAddressvalidationV1Address o) {
  buildCounterGoogleMapsAddressvalidationV1Address++;
  if (buildCounterGoogleMapsAddressvalidationV1Address < 3) {
    checkUnnamed0(o.addressComponents!);
    unittest.expect(
      o.formattedAddress!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.missingComponentTypes!);
    checkGoogleTypePostalAddress(o.postalAddress!);
    checkUnnamed2(o.unconfirmedComponentTypes!);
    checkUnnamed3(o.unresolvedTokens!);
  }
  buildCounterGoogleMapsAddressvalidationV1Address--;
}

core.int buildCounterGoogleMapsAddressvalidationV1AddressComponent = 0;
api.GoogleMapsAddressvalidationV1AddressComponent
    buildGoogleMapsAddressvalidationV1AddressComponent() {
  final o = api.GoogleMapsAddressvalidationV1AddressComponent();
  buildCounterGoogleMapsAddressvalidationV1AddressComponent++;
  if (buildCounterGoogleMapsAddressvalidationV1AddressComponent < 3) {
    o.componentName = buildGoogleMapsAddressvalidationV1ComponentName();
    o.componentType = 'foo';
    o.confirmationLevel = 'foo';
    o.inferred = true;
    o.replaced = true;
    o.spellCorrected = true;
    o.unexpected = true;
  }
  buildCounterGoogleMapsAddressvalidationV1AddressComponent--;
  return o;
}

void checkGoogleMapsAddressvalidationV1AddressComponent(
    api.GoogleMapsAddressvalidationV1AddressComponent o) {
  buildCounterGoogleMapsAddressvalidationV1AddressComponent++;
  if (buildCounterGoogleMapsAddressvalidationV1AddressComponent < 3) {
    checkGoogleMapsAddressvalidationV1ComponentName(o.componentName!);
    unittest.expect(
      o.componentType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.confirmationLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(o.inferred!, unittest.isTrue);
    unittest.expect(o.replaced!, unittest.isTrue);
    unittest.expect(o.spellCorrected!, unittest.isTrue);
    unittest.expect(o.unexpected!, unittest.isTrue);
  }
  buildCounterGoogleMapsAddressvalidationV1AddressComponent--;
}

core.int buildCounterGoogleMapsAddressvalidationV1AddressMetadata = 0;
api.GoogleMapsAddressvalidationV1AddressMetadata
    buildGoogleMapsAddressvalidationV1AddressMetadata() {
  final o = api.GoogleMapsAddressvalidationV1AddressMetadata();
  buildCounterGoogleMapsAddressvalidationV1AddressMetadata++;
  if (buildCounterGoogleMapsAddressvalidationV1AddressMetadata < 3) {
    o.business = true;
    o.poBox = true;
    o.residential = true;
  }
  buildCounterGoogleMapsAddressvalidationV1AddressMetadata--;
  return o;
}

void checkGoogleMapsAddressvalidationV1AddressMetadata(
    api.GoogleMapsAddressvalidationV1AddressMetadata o) {
  buildCounterGoogleMapsAddressvalidationV1AddressMetadata++;
  if (buildCounterGoogleMapsAddressvalidationV1AddressMetadata < 3) {
    unittest.expect(o.business!, unittest.isTrue);
    unittest.expect(o.poBox!, unittest.isTrue);
    unittest.expect(o.residential!, unittest.isTrue);
  }
  buildCounterGoogleMapsAddressvalidationV1AddressMetadata--;
}

core.int buildCounterGoogleMapsAddressvalidationV1ComponentName = 0;
api.GoogleMapsAddressvalidationV1ComponentName
    buildGoogleMapsAddressvalidationV1ComponentName() {
  final o = api.GoogleMapsAddressvalidationV1ComponentName();
  buildCounterGoogleMapsAddressvalidationV1ComponentName++;
  if (buildCounterGoogleMapsAddressvalidationV1ComponentName < 3) {
    o.languageCode = 'foo';
    o.text = 'foo';
  }
  buildCounterGoogleMapsAddressvalidationV1ComponentName--;
  return o;
}

void checkGoogleMapsAddressvalidationV1ComponentName(
    api.GoogleMapsAddressvalidationV1ComponentName o) {
  buildCounterGoogleMapsAddressvalidationV1ComponentName++;
  if (buildCounterGoogleMapsAddressvalidationV1ComponentName < 3) {
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleMapsAddressvalidationV1ComponentName--;
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

core.int buildCounterGoogleMapsAddressvalidationV1Geocode = 0;
api.GoogleMapsAddressvalidationV1Geocode
    buildGoogleMapsAddressvalidationV1Geocode() {
  final o = api.GoogleMapsAddressvalidationV1Geocode();
  buildCounterGoogleMapsAddressvalidationV1Geocode++;
  if (buildCounterGoogleMapsAddressvalidationV1Geocode < 3) {
    o.bounds = buildGoogleGeoTypeViewport();
    o.featureSizeMeters = 42.0;
    o.location = buildGoogleTypeLatLng();
    o.placeId = 'foo';
    o.placeTypes = buildUnnamed4();
    o.plusCode = buildGoogleMapsAddressvalidationV1PlusCode();
  }
  buildCounterGoogleMapsAddressvalidationV1Geocode--;
  return o;
}

void checkGoogleMapsAddressvalidationV1Geocode(
    api.GoogleMapsAddressvalidationV1Geocode o) {
  buildCounterGoogleMapsAddressvalidationV1Geocode++;
  if (buildCounterGoogleMapsAddressvalidationV1Geocode < 3) {
    checkGoogleGeoTypeViewport(o.bounds!);
    unittest.expect(
      o.featureSizeMeters!,
      unittest.equals(42.0),
    );
    checkGoogleTypeLatLng(o.location!);
    unittest.expect(
      o.placeId!,
      unittest.equals('foo'),
    );
    checkUnnamed4(o.placeTypes!);
    checkGoogleMapsAddressvalidationV1PlusCode(o.plusCode!);
  }
  buildCounterGoogleMapsAddressvalidationV1Geocode--;
}

core.int buildCounterGoogleMapsAddressvalidationV1LanguageOptions = 0;
api.GoogleMapsAddressvalidationV1LanguageOptions
    buildGoogleMapsAddressvalidationV1LanguageOptions() {
  final o = api.GoogleMapsAddressvalidationV1LanguageOptions();
  buildCounterGoogleMapsAddressvalidationV1LanguageOptions++;
  if (buildCounterGoogleMapsAddressvalidationV1LanguageOptions < 3) {
    o.returnEnglishLatinAddress = true;
  }
  buildCounterGoogleMapsAddressvalidationV1LanguageOptions--;
  return o;
}

void checkGoogleMapsAddressvalidationV1LanguageOptions(
    api.GoogleMapsAddressvalidationV1LanguageOptions o) {
  buildCounterGoogleMapsAddressvalidationV1LanguageOptions++;
  if (buildCounterGoogleMapsAddressvalidationV1LanguageOptions < 3) {
    unittest.expect(o.returnEnglishLatinAddress!, unittest.isTrue);
  }
  buildCounterGoogleMapsAddressvalidationV1LanguageOptions--;
}

core.int buildCounterGoogleMapsAddressvalidationV1PlusCode = 0;
api.GoogleMapsAddressvalidationV1PlusCode
    buildGoogleMapsAddressvalidationV1PlusCode() {
  final o = api.GoogleMapsAddressvalidationV1PlusCode();
  buildCounterGoogleMapsAddressvalidationV1PlusCode++;
  if (buildCounterGoogleMapsAddressvalidationV1PlusCode < 3) {
    o.compoundCode = 'foo';
    o.globalCode = 'foo';
  }
  buildCounterGoogleMapsAddressvalidationV1PlusCode--;
  return o;
}

void checkGoogleMapsAddressvalidationV1PlusCode(
    api.GoogleMapsAddressvalidationV1PlusCode o) {
  buildCounterGoogleMapsAddressvalidationV1PlusCode++;
  if (buildCounterGoogleMapsAddressvalidationV1PlusCode < 3) {
    unittest.expect(
      o.compoundCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.globalCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleMapsAddressvalidationV1PlusCode--;
}

core.int
    buildCounterGoogleMapsAddressvalidationV1ProvideValidationFeedbackRequest =
    0;
api.GoogleMapsAddressvalidationV1ProvideValidationFeedbackRequest
    buildGoogleMapsAddressvalidationV1ProvideValidationFeedbackRequest() {
  final o = api.GoogleMapsAddressvalidationV1ProvideValidationFeedbackRequest();
  buildCounterGoogleMapsAddressvalidationV1ProvideValidationFeedbackRequest++;
  if (buildCounterGoogleMapsAddressvalidationV1ProvideValidationFeedbackRequest <
      3) {
    o.conclusion = 'foo';
    o.responseId = 'foo';
  }
  buildCounterGoogleMapsAddressvalidationV1ProvideValidationFeedbackRequest--;
  return o;
}

void checkGoogleMapsAddressvalidationV1ProvideValidationFeedbackRequest(
    api.GoogleMapsAddressvalidationV1ProvideValidationFeedbackRequest o) {
  buildCounterGoogleMapsAddressvalidationV1ProvideValidationFeedbackRequest++;
  if (buildCounterGoogleMapsAddressvalidationV1ProvideValidationFeedbackRequest <
      3) {
    unittest.expect(
      o.conclusion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.responseId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleMapsAddressvalidationV1ProvideValidationFeedbackRequest--;
}

core.int
    buildCounterGoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse =
    0;
api.GoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse
    buildGoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse() {
  final o =
      api.GoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse();
  buildCounterGoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse++;
  if (buildCounterGoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse <
      3) {}
  buildCounterGoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse--;
  return o;
}

void checkGoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse(
    api.GoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse o) {
  buildCounterGoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse++;
  if (buildCounterGoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse <
      3) {}
  buildCounterGoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse--;
}

core.int buildCounterGoogleMapsAddressvalidationV1UspsAddress = 0;
api.GoogleMapsAddressvalidationV1UspsAddress
    buildGoogleMapsAddressvalidationV1UspsAddress() {
  final o = api.GoogleMapsAddressvalidationV1UspsAddress();
  buildCounterGoogleMapsAddressvalidationV1UspsAddress++;
  if (buildCounterGoogleMapsAddressvalidationV1UspsAddress < 3) {
    o.city = 'foo';
    o.cityStateZipAddressLine = 'foo';
    o.firm = 'foo';
    o.firstAddressLine = 'foo';
    o.secondAddressLine = 'foo';
    o.state = 'foo';
    o.urbanization = 'foo';
    o.zipCode = 'foo';
    o.zipCodeExtension = 'foo';
  }
  buildCounterGoogleMapsAddressvalidationV1UspsAddress--;
  return o;
}

void checkGoogleMapsAddressvalidationV1UspsAddress(
    api.GoogleMapsAddressvalidationV1UspsAddress o) {
  buildCounterGoogleMapsAddressvalidationV1UspsAddress++;
  if (buildCounterGoogleMapsAddressvalidationV1UspsAddress < 3) {
    unittest.expect(
      o.city!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cityStateZipAddressLine!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firm!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firstAddressLine!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.secondAddressLine!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.urbanization!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zipCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zipCodeExtension!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleMapsAddressvalidationV1UspsAddress--;
}

core.int buildCounterGoogleMapsAddressvalidationV1UspsData = 0;
api.GoogleMapsAddressvalidationV1UspsData
    buildGoogleMapsAddressvalidationV1UspsData() {
  final o = api.GoogleMapsAddressvalidationV1UspsData();
  buildCounterGoogleMapsAddressvalidationV1UspsData++;
  if (buildCounterGoogleMapsAddressvalidationV1UspsData < 3) {
    o.abbreviatedCity = 'foo';
    o.addressRecordType = 'foo';
    o.carrierRoute = 'foo';
    o.carrierRouteIndicator = 'foo';
    o.cassProcessed = true;
    o.county = 'foo';
    o.defaultAddress = true;
    o.deliveryPointCheckDigit = 'foo';
    o.deliveryPointCode = 'foo';
    o.dpvCmra = 'foo';
    o.dpvConfirmation = 'foo';
    o.dpvDoorNotAccessible = 'foo';
    o.dpvDrop = 'foo';
    o.dpvEnhancedDeliveryCode = 'foo';
    o.dpvFootnote = 'foo';
    o.dpvNoSecureLocation = 'foo';
    o.dpvNoStat = 'foo';
    o.dpvNoStatReasonCode = 42;
    o.dpvNonDeliveryDays = 'foo';
    o.dpvNonDeliveryDaysValues = 42;
    o.dpvPbsa = 'foo';
    o.dpvThrowback = 'foo';
    o.dpvVacant = 'foo';
    o.elotFlag = 'foo';
    o.elotNumber = 'foo';
    o.errorMessage = 'foo';
    o.ewsNoMatch = true;
    o.fipsCountyCode = 'foo';
    o.lacsLinkIndicator = 'foo';
    o.lacsLinkReturnCode = 'foo';
    o.pmbDesignator = 'foo';
    o.pmbNumber = 'foo';
    o.poBoxOnlyPostalCode = true;
    o.postOfficeCity = 'foo';
    o.postOfficeState = 'foo';
    o.standardizedAddress = buildGoogleMapsAddressvalidationV1UspsAddress();
    o.suitelinkFootnote = 'foo';
  }
  buildCounterGoogleMapsAddressvalidationV1UspsData--;
  return o;
}

void checkGoogleMapsAddressvalidationV1UspsData(
    api.GoogleMapsAddressvalidationV1UspsData o) {
  buildCounterGoogleMapsAddressvalidationV1UspsData++;
  if (buildCounterGoogleMapsAddressvalidationV1UspsData < 3) {
    unittest.expect(
      o.abbreviatedCity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.addressRecordType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.carrierRoute!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.carrierRouteIndicator!,
      unittest.equals('foo'),
    );
    unittest.expect(o.cassProcessed!, unittest.isTrue);
    unittest.expect(
      o.county!,
      unittest.equals('foo'),
    );
    unittest.expect(o.defaultAddress!, unittest.isTrue);
    unittest.expect(
      o.deliveryPointCheckDigit!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deliveryPointCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dpvCmra!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dpvConfirmation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dpvDoorNotAccessible!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dpvDrop!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dpvEnhancedDeliveryCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dpvFootnote!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dpvNoSecureLocation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dpvNoStat!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dpvNoStatReasonCode!,
      unittest.equals(42),
    );
    unittest.expect(
      o.dpvNonDeliveryDays!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dpvNonDeliveryDaysValues!,
      unittest.equals(42),
    );
    unittest.expect(
      o.dpvPbsa!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dpvThrowback!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dpvVacant!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.elotFlag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.elotNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.errorMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(o.ewsNoMatch!, unittest.isTrue);
    unittest.expect(
      o.fipsCountyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lacsLinkIndicator!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lacsLinkReturnCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pmbDesignator!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pmbNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(o.poBoxOnlyPostalCode!, unittest.isTrue);
    unittest.expect(
      o.postOfficeCity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.postOfficeState!,
      unittest.equals('foo'),
    );
    checkGoogleMapsAddressvalidationV1UspsAddress(o.standardizedAddress!);
    unittest.expect(
      o.suitelinkFootnote!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleMapsAddressvalidationV1UspsData--;
}

core.int buildCounterGoogleMapsAddressvalidationV1ValidateAddressRequest = 0;
api.GoogleMapsAddressvalidationV1ValidateAddressRequest
    buildGoogleMapsAddressvalidationV1ValidateAddressRequest() {
  final o = api.GoogleMapsAddressvalidationV1ValidateAddressRequest();
  buildCounterGoogleMapsAddressvalidationV1ValidateAddressRequest++;
  if (buildCounterGoogleMapsAddressvalidationV1ValidateAddressRequest < 3) {
    o.address = buildGoogleTypePostalAddress();
    o.enableUspsCass = true;
    o.languageOptions = buildGoogleMapsAddressvalidationV1LanguageOptions();
    o.previousResponseId = 'foo';
    o.sessionToken = 'foo';
  }
  buildCounterGoogleMapsAddressvalidationV1ValidateAddressRequest--;
  return o;
}

void checkGoogleMapsAddressvalidationV1ValidateAddressRequest(
    api.GoogleMapsAddressvalidationV1ValidateAddressRequest o) {
  buildCounterGoogleMapsAddressvalidationV1ValidateAddressRequest++;
  if (buildCounterGoogleMapsAddressvalidationV1ValidateAddressRequest < 3) {
    checkGoogleTypePostalAddress(o.address!);
    unittest.expect(o.enableUspsCass!, unittest.isTrue);
    checkGoogleMapsAddressvalidationV1LanguageOptions(o.languageOptions!);
    unittest.expect(
      o.previousResponseId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sessionToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleMapsAddressvalidationV1ValidateAddressRequest--;
}

core.int buildCounterGoogleMapsAddressvalidationV1ValidateAddressResponse = 0;
api.GoogleMapsAddressvalidationV1ValidateAddressResponse
    buildGoogleMapsAddressvalidationV1ValidateAddressResponse() {
  final o = api.GoogleMapsAddressvalidationV1ValidateAddressResponse();
  buildCounterGoogleMapsAddressvalidationV1ValidateAddressResponse++;
  if (buildCounterGoogleMapsAddressvalidationV1ValidateAddressResponse < 3) {
    o.responseId = 'foo';
    o.result = buildGoogleMapsAddressvalidationV1ValidationResult();
  }
  buildCounterGoogleMapsAddressvalidationV1ValidateAddressResponse--;
  return o;
}

void checkGoogleMapsAddressvalidationV1ValidateAddressResponse(
    api.GoogleMapsAddressvalidationV1ValidateAddressResponse o) {
  buildCounterGoogleMapsAddressvalidationV1ValidateAddressResponse++;
  if (buildCounterGoogleMapsAddressvalidationV1ValidateAddressResponse < 3) {
    unittest.expect(
      o.responseId!,
      unittest.equals('foo'),
    );
    checkGoogleMapsAddressvalidationV1ValidationResult(o.result!);
  }
  buildCounterGoogleMapsAddressvalidationV1ValidateAddressResponse--;
}

core.int buildCounterGoogleMapsAddressvalidationV1ValidationResult = 0;
api.GoogleMapsAddressvalidationV1ValidationResult
    buildGoogleMapsAddressvalidationV1ValidationResult() {
  final o = api.GoogleMapsAddressvalidationV1ValidationResult();
  buildCounterGoogleMapsAddressvalidationV1ValidationResult++;
  if (buildCounterGoogleMapsAddressvalidationV1ValidationResult < 3) {
    o.address = buildGoogleMapsAddressvalidationV1Address();
    o.englishLatinAddress = buildGoogleMapsAddressvalidationV1Address();
    o.geocode = buildGoogleMapsAddressvalidationV1Geocode();
    o.metadata = buildGoogleMapsAddressvalidationV1AddressMetadata();
    o.uspsData = buildGoogleMapsAddressvalidationV1UspsData();
    o.verdict = buildGoogleMapsAddressvalidationV1Verdict();
  }
  buildCounterGoogleMapsAddressvalidationV1ValidationResult--;
  return o;
}

void checkGoogleMapsAddressvalidationV1ValidationResult(
    api.GoogleMapsAddressvalidationV1ValidationResult o) {
  buildCounterGoogleMapsAddressvalidationV1ValidationResult++;
  if (buildCounterGoogleMapsAddressvalidationV1ValidationResult < 3) {
    checkGoogleMapsAddressvalidationV1Address(o.address!);
    checkGoogleMapsAddressvalidationV1Address(o.englishLatinAddress!);
    checkGoogleMapsAddressvalidationV1Geocode(o.geocode!);
    checkGoogleMapsAddressvalidationV1AddressMetadata(o.metadata!);
    checkGoogleMapsAddressvalidationV1UspsData(o.uspsData!);
    checkGoogleMapsAddressvalidationV1Verdict(o.verdict!);
  }
  buildCounterGoogleMapsAddressvalidationV1ValidationResult--;
}

core.int buildCounterGoogleMapsAddressvalidationV1Verdict = 0;
api.GoogleMapsAddressvalidationV1Verdict
    buildGoogleMapsAddressvalidationV1Verdict() {
  final o = api.GoogleMapsAddressvalidationV1Verdict();
  buildCounterGoogleMapsAddressvalidationV1Verdict++;
  if (buildCounterGoogleMapsAddressvalidationV1Verdict < 3) {
    o.addressComplete = true;
    o.geocodeGranularity = 'foo';
    o.hasInferredComponents = true;
    o.hasReplacedComponents = true;
    o.hasUnconfirmedComponents = true;
    o.inputGranularity = 'foo';
    o.validationGranularity = 'foo';
  }
  buildCounterGoogleMapsAddressvalidationV1Verdict--;
  return o;
}

void checkGoogleMapsAddressvalidationV1Verdict(
    api.GoogleMapsAddressvalidationV1Verdict o) {
  buildCounterGoogleMapsAddressvalidationV1Verdict++;
  if (buildCounterGoogleMapsAddressvalidationV1Verdict < 3) {
    unittest.expect(o.addressComplete!, unittest.isTrue);
    unittest.expect(
      o.geocodeGranularity!,
      unittest.equals('foo'),
    );
    unittest.expect(o.hasInferredComponents!, unittest.isTrue);
    unittest.expect(o.hasReplacedComponents!, unittest.isTrue);
    unittest.expect(o.hasUnconfirmedComponents!, unittest.isTrue);
    unittest.expect(
      o.inputGranularity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.validationGranularity!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleMapsAddressvalidationV1Verdict--;
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

core.int buildCounterGoogleTypePostalAddress = 0;
api.GoogleTypePostalAddress buildGoogleTypePostalAddress() {
  final o = api.GoogleTypePostalAddress();
  buildCounterGoogleTypePostalAddress++;
  if (buildCounterGoogleTypePostalAddress < 3) {
    o.addressLines = buildUnnamed5();
    o.administrativeArea = 'foo';
    o.languageCode = 'foo';
    o.locality = 'foo';
    o.organization = 'foo';
    o.postalCode = 'foo';
    o.recipients = buildUnnamed6();
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
    checkUnnamed5(o.addressLines!);
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
    checkUnnamed6(o.recipients!);
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
  unittest.group('obj-schema-GoogleGeoTypeViewport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleGeoTypeViewport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleGeoTypeViewport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleGeoTypeViewport(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsAddressvalidationV1Address', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsAddressvalidationV1Address();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsAddressvalidationV1Address.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsAddressvalidationV1Address(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsAddressvalidationV1AddressComponent',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsAddressvalidationV1AddressComponent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsAddressvalidationV1AddressComponent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsAddressvalidationV1AddressComponent(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsAddressvalidationV1AddressMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsAddressvalidationV1AddressMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsAddressvalidationV1AddressMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsAddressvalidationV1AddressMetadata(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsAddressvalidationV1ComponentName', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsAddressvalidationV1ComponentName();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsAddressvalidationV1ComponentName.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsAddressvalidationV1ComponentName(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsAddressvalidationV1Geocode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsAddressvalidationV1Geocode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsAddressvalidationV1Geocode.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsAddressvalidationV1Geocode(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsAddressvalidationV1LanguageOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsAddressvalidationV1LanguageOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsAddressvalidationV1LanguageOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsAddressvalidationV1LanguageOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsAddressvalidationV1PlusCode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsAddressvalidationV1PlusCode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsAddressvalidationV1PlusCode.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsAddressvalidationV1PlusCode(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleMapsAddressvalidationV1ProvideValidationFeedbackRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleMapsAddressvalidationV1ProvideValidationFeedbackRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleMapsAddressvalidationV1ProvideValidationFeedbackRequest
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsAddressvalidationV1ProvideValidationFeedbackRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsAddressvalidationV1UspsAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsAddressvalidationV1UspsAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsAddressvalidationV1UspsAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsAddressvalidationV1UspsAddress(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsAddressvalidationV1UspsData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsAddressvalidationV1UspsData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsAddressvalidationV1UspsData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsAddressvalidationV1UspsData(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleMapsAddressvalidationV1ValidateAddressRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsAddressvalidationV1ValidateAddressRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleMapsAddressvalidationV1ValidateAddressRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsAddressvalidationV1ValidateAddressRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleMapsAddressvalidationV1ValidateAddressResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsAddressvalidationV1ValidateAddressResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleMapsAddressvalidationV1ValidateAddressResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsAddressvalidationV1ValidateAddressResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsAddressvalidationV1ValidationResult',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsAddressvalidationV1ValidationResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsAddressvalidationV1ValidationResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsAddressvalidationV1ValidationResult(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsAddressvalidationV1Verdict', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsAddressvalidationV1Verdict();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsAddressvalidationV1Verdict.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsAddressvalidationV1Verdict(od);
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

  unittest.group('obj-schema-GoogleTypePostalAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypePostalAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypePostalAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypePostalAddress(od);
    });
  });

  unittest.group('resource-V1Resource', () {
    unittest.test('method--provideValidationFeedback', () async {
      final mock = HttpServerMock();
      final res = api.AddressValidationApi(mock).v1;
      final arg_request =
          buildGoogleMapsAddressvalidationV1ProvideValidationFeedbackRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleMapsAddressvalidationV1ProvideValidationFeedbackRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleMapsAddressvalidationV1ProvideValidationFeedbackRequest(obj);

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
          path.substring(pathOffset, pathOffset + 28),
          unittest.equals('v1:provideValidationFeedback'),
        );
        pathOffset += 28;

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
            buildGoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.provideValidationFeedback(arg_request,
          $fields: arg_$fields);
      checkGoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse(
          response as api
              .GoogleMapsAddressvalidationV1ProvideValidationFeedbackResponse);
    });

    unittest.test('method--validateAddress', () async {
      final mock = HttpServerMock();
      final res = api.AddressValidationApi(mock).v1;
      final arg_request =
          buildGoogleMapsAddressvalidationV1ValidateAddressRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleMapsAddressvalidationV1ValidateAddressRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleMapsAddressvalidationV1ValidateAddressRequest(obj);

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
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('v1:validateAddress'),
        );
        pathOffset += 18;

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
            buildGoogleMapsAddressvalidationV1ValidateAddressResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.validateAddress(arg_request, $fields: arg_$fields);
      checkGoogleMapsAddressvalidationV1ValidateAddressResponse(
          response as api.GoogleMapsAddressvalidationV1ValidateAddressResponse);
    });
  });
}
