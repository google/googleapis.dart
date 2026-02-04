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

core.List<api.GoogleMapsPlacesV1AddressDescriptorArea> buildUnnamed0() => [
  buildGoogleMapsPlacesV1AddressDescriptorArea(),
  buildGoogleMapsPlacesV1AddressDescriptorArea(),
];

void checkUnnamed0(core.List<api.GoogleMapsPlacesV1AddressDescriptorArea> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1AddressDescriptorArea(o[0]);
  checkGoogleMapsPlacesV1AddressDescriptorArea(o[1]);
}

core.List<api.GoogleMapsPlacesV1AddressDescriptorLandmark> buildUnnamed1() => [
  buildGoogleMapsPlacesV1AddressDescriptorLandmark(),
  buildGoogleMapsPlacesV1AddressDescriptorLandmark(),
];

void checkUnnamed1(
  core.List<api.GoogleMapsPlacesV1AddressDescriptorLandmark> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1AddressDescriptorLandmark(o[0]);
  checkGoogleMapsPlacesV1AddressDescriptorLandmark(o[1]);
}

core.int buildCounterGoogleMapsPlacesV1AddressDescriptor = 0;
api.GoogleMapsPlacesV1AddressDescriptor
buildGoogleMapsPlacesV1AddressDescriptor() {
  final o = api.GoogleMapsPlacesV1AddressDescriptor();
  buildCounterGoogleMapsPlacesV1AddressDescriptor++;
  if (buildCounterGoogleMapsPlacesV1AddressDescriptor < 3) {
    o.areas = buildUnnamed0();
    o.landmarks = buildUnnamed1();
  }
  buildCounterGoogleMapsPlacesV1AddressDescriptor--;
  return o;
}

void checkGoogleMapsPlacesV1AddressDescriptor(
  api.GoogleMapsPlacesV1AddressDescriptor o,
) {
  buildCounterGoogleMapsPlacesV1AddressDescriptor++;
  if (buildCounterGoogleMapsPlacesV1AddressDescriptor < 3) {
    checkUnnamed0(o.areas!);
    checkUnnamed1(o.landmarks!);
  }
  buildCounterGoogleMapsPlacesV1AddressDescriptor--;
}

core.int buildCounterGoogleMapsPlacesV1AddressDescriptorArea = 0;
api.GoogleMapsPlacesV1AddressDescriptorArea
buildGoogleMapsPlacesV1AddressDescriptorArea() {
  final o = api.GoogleMapsPlacesV1AddressDescriptorArea();
  buildCounterGoogleMapsPlacesV1AddressDescriptorArea++;
  if (buildCounterGoogleMapsPlacesV1AddressDescriptorArea < 3) {
    o.containment = 'foo';
    o.displayName = buildGoogleTypeLocalizedText();
    o.name = 'foo';
    o.placeId = 'foo';
  }
  buildCounterGoogleMapsPlacesV1AddressDescriptorArea--;
  return o;
}

void checkGoogleMapsPlacesV1AddressDescriptorArea(
  api.GoogleMapsPlacesV1AddressDescriptorArea o,
) {
  buildCounterGoogleMapsPlacesV1AddressDescriptorArea++;
  if (buildCounterGoogleMapsPlacesV1AddressDescriptorArea < 3) {
    unittest.expect(o.containment!, unittest.equals('foo'));
    checkGoogleTypeLocalizedText(o.displayName!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.placeId!, unittest.equals('foo'));
  }
  buildCounterGoogleMapsPlacesV1AddressDescriptorArea--;
}

core.List<core.String> buildUnnamed2() => ['foo', 'foo'];

void checkUnnamed2(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleMapsPlacesV1AddressDescriptorLandmark = 0;
api.GoogleMapsPlacesV1AddressDescriptorLandmark
buildGoogleMapsPlacesV1AddressDescriptorLandmark() {
  final o = api.GoogleMapsPlacesV1AddressDescriptorLandmark();
  buildCounterGoogleMapsPlacesV1AddressDescriptorLandmark++;
  if (buildCounterGoogleMapsPlacesV1AddressDescriptorLandmark < 3) {
    o.displayName = buildGoogleTypeLocalizedText();
    o.name = 'foo';
    o.placeId = 'foo';
    o.spatialRelationship = 'foo';
    o.straightLineDistanceMeters = 42.0;
    o.travelDistanceMeters = 42.0;
    o.types = buildUnnamed2();
  }
  buildCounterGoogleMapsPlacesV1AddressDescriptorLandmark--;
  return o;
}

void checkGoogleMapsPlacesV1AddressDescriptorLandmark(
  api.GoogleMapsPlacesV1AddressDescriptorLandmark o,
) {
  buildCounterGoogleMapsPlacesV1AddressDescriptorLandmark++;
  if (buildCounterGoogleMapsPlacesV1AddressDescriptorLandmark < 3) {
    checkGoogleTypeLocalizedText(o.displayName!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.placeId!, unittest.equals('foo'));
    unittest.expect(o.spatialRelationship!, unittest.equals('foo'));
    unittest.expect(o.straightLineDistanceMeters!, unittest.equals(42.0));
    unittest.expect(o.travelDistanceMeters!, unittest.equals(42.0));
    checkUnnamed2(o.types!);
  }
  buildCounterGoogleMapsPlacesV1AddressDescriptorLandmark--;
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
  api.GoogleMapsPlacesV1AuthorAttribution o,
) {
  buildCounterGoogleMapsPlacesV1AuthorAttribution++;
  if (buildCounterGoogleMapsPlacesV1AuthorAttribution < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.photoUri!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterGoogleMapsPlacesV1AuthorAttribution--;
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

core.int buildCounterGoogleMapsPlacesV1AutocompletePlacesRequest = 0;
api.GoogleMapsPlacesV1AutocompletePlacesRequest
buildGoogleMapsPlacesV1AutocompletePlacesRequest() {
  final o = api.GoogleMapsPlacesV1AutocompletePlacesRequest();
  buildCounterGoogleMapsPlacesV1AutocompletePlacesRequest++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesRequest < 3) {
    o.includePureServiceAreaBusinesses = true;
    o.includeQueryPredictions = true;
    o.includedPrimaryTypes = buildUnnamed3();
    o.includedRegionCodes = buildUnnamed4();
    o.input = 'foo';
    o.inputOffset = 42;
    o.languageCode = 'foo';
    o.locationBias =
        buildGoogleMapsPlacesV1AutocompletePlacesRequestLocationBias();
    o.locationRestriction =
        buildGoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction();
    o.origin = buildGoogleTypeLatLng();
    o.regionCode = 'foo';
    o.sessionToken = 'foo';
  }
  buildCounterGoogleMapsPlacesV1AutocompletePlacesRequest--;
  return o;
}

void checkGoogleMapsPlacesV1AutocompletePlacesRequest(
  api.GoogleMapsPlacesV1AutocompletePlacesRequest o,
) {
  buildCounterGoogleMapsPlacesV1AutocompletePlacesRequest++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesRequest < 3) {
    unittest.expect(o.includePureServiceAreaBusinesses!, unittest.isTrue);
    unittest.expect(o.includeQueryPredictions!, unittest.isTrue);
    checkUnnamed3(o.includedPrimaryTypes!);
    checkUnnamed4(o.includedRegionCodes!);
    unittest.expect(o.input!, unittest.equals('foo'));
    unittest.expect(o.inputOffset!, unittest.equals(42));
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    checkGoogleMapsPlacesV1AutocompletePlacesRequestLocationBias(
      o.locationBias!,
    );
    checkGoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction(
      o.locationRestriction!,
    );
    checkGoogleTypeLatLng(o.origin!);
    unittest.expect(o.regionCode!, unittest.equals('foo'));
    unittest.expect(o.sessionToken!, unittest.equals('foo'));
  }
  buildCounterGoogleMapsPlacesV1AutocompletePlacesRequest--;
}

core.int buildCounterGoogleMapsPlacesV1AutocompletePlacesRequestLocationBias =
    0;
api.GoogleMapsPlacesV1AutocompletePlacesRequestLocationBias
buildGoogleMapsPlacesV1AutocompletePlacesRequestLocationBias() {
  final o = api.GoogleMapsPlacesV1AutocompletePlacesRequestLocationBias();
  buildCounterGoogleMapsPlacesV1AutocompletePlacesRequestLocationBias++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesRequestLocationBias < 3) {
    o.circle = buildGoogleMapsPlacesV1Circle();
    o.rectangle = buildGoogleGeoTypeViewport();
  }
  buildCounterGoogleMapsPlacesV1AutocompletePlacesRequestLocationBias--;
  return o;
}

void checkGoogleMapsPlacesV1AutocompletePlacesRequestLocationBias(
  api.GoogleMapsPlacesV1AutocompletePlacesRequestLocationBias o,
) {
  buildCounterGoogleMapsPlacesV1AutocompletePlacesRequestLocationBias++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesRequestLocationBias < 3) {
    checkGoogleMapsPlacesV1Circle(o.circle!);
    checkGoogleGeoTypeViewport(o.rectangle!);
  }
  buildCounterGoogleMapsPlacesV1AutocompletePlacesRequestLocationBias--;
}

core.int
buildCounterGoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction = 0;
api.GoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction
buildGoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction() {
  final o =
      api.GoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction();
  buildCounterGoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction <
      3) {
    o.circle = buildGoogleMapsPlacesV1Circle();
    o.rectangle = buildGoogleGeoTypeViewport();
  }
  buildCounterGoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction--;
  return o;
}

void checkGoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction(
  api.GoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction o,
) {
  buildCounterGoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction <
      3) {
    checkGoogleMapsPlacesV1Circle(o.circle!);
    checkGoogleGeoTypeViewport(o.rectangle!);
  }
  buildCounterGoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction--;
}

core.List<api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestion>
buildUnnamed5() => [
  buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestion(),
  buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestion(),
];

void checkUnnamed5(
  core.List<api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestion> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestion(o[0]);
  checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestion(o[1]);
}

core.int buildCounterGoogleMapsPlacesV1AutocompletePlacesResponse = 0;
api.GoogleMapsPlacesV1AutocompletePlacesResponse
buildGoogleMapsPlacesV1AutocompletePlacesResponse() {
  final o = api.GoogleMapsPlacesV1AutocompletePlacesResponse();
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponse++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesResponse < 3) {
    o.suggestions = buildUnnamed5();
  }
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponse--;
  return o;
}

void checkGoogleMapsPlacesV1AutocompletePlacesResponse(
  api.GoogleMapsPlacesV1AutocompletePlacesResponse o,
) {
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponse++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesResponse < 3) {
    checkUnnamed5(o.suggestions!);
  }
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponse--;
}

core.int buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestion = 0;
api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestion
buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestion() {
  final o = api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestion();
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestion++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestion < 3) {
    o.placePrediction =
        buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction();
    o.queryPrediction =
        buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction();
  }
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestion--;
  return o;
}

void checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestion(
  api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestion o,
) {
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestion++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestion < 3) {
    checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction(
      o.placePrediction!,
    );
    checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction(
      o.queryPrediction!,
    );
  }
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestion--;
}

core.List<api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange>
buildUnnamed6() => [
  buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange(),
  buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange(),
];

void checkUnnamed6(
  core.List<
    api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange(o[0]);
  checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange(o[1]);
}

core.int
buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText =
    0;
api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText
buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText() {
  final o =
      api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText();
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText <
      3) {
    o.matches = buildUnnamed6();
    o.text = 'foo';
  }
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText--;
  return o;
}

void checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText(
  api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText o,
) {
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText <
      3) {
    checkUnnamed6(o.matches!);
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText--;
}

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int
buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction =
    0;
api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction
buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction() {
  final o =
      api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction();
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction <
      3) {
    o.distanceMeters = 42;
    o.place = 'foo';
    o.placeId = 'foo';
    o.structuredFormat =
        buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat();
    o.text =
        buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText();
    o.types = buildUnnamed7();
  }
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction--;
  return o;
}

void checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction(
  api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction o,
) {
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction <
      3) {
    unittest.expect(o.distanceMeters!, unittest.equals(42));
    unittest.expect(o.place!, unittest.equals('foo'));
    unittest.expect(o.placeId!, unittest.equals('foo'));
    checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat(
      o.structuredFormat!,
    );
    checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText(
      o.text!,
    );
    checkUnnamed7(o.types!);
  }
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction--;
}

core.int
buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction =
    0;
api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction
buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction() {
  final o =
      api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction();
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction <
      3) {
    o.structuredFormat =
        buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat();
    o.text =
        buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText();
  }
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction--;
  return o;
}

void checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction(
  api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction o,
) {
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction <
      3) {
    checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat(
      o.structuredFormat!,
    );
    checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText(
      o.text!,
    );
  }
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction--;
}

core.int
buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange =
    0;
api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange
buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange() {
  final o =
      api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange();
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange <
      3) {
    o.endOffset = 42;
    o.startOffset = 42;
  }
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange--;
  return o;
}

void checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange(
  api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange o,
) {
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange <
      3) {
    unittest.expect(o.endOffset!, unittest.equals(42));
    unittest.expect(o.startOffset!, unittest.equals(42));
  }
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange--;
}

core.int
buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat =
    0;
api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat
buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat() {
  final o =
      api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat();
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat <
      3) {
    o.mainText =
        buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText();
    o.secondaryText =
        buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText();
  }
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat--;
  return o;
}

void
checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat(
  api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat o,
) {
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat <
      3) {
    checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText(
      o.mainText!,
    );
    checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText(
      o.secondaryText!,
    );
  }
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat--;
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
    unittest.expect(o.radius!, unittest.equals(42.0));
  }
  buildCounterGoogleMapsPlacesV1Circle--;
}

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleMapsPlacesV1ContentBlock = 0;
api.GoogleMapsPlacesV1ContentBlock buildGoogleMapsPlacesV1ContentBlock() {
  final o = api.GoogleMapsPlacesV1ContentBlock();
  buildCounterGoogleMapsPlacesV1ContentBlock++;
  if (buildCounterGoogleMapsPlacesV1ContentBlock < 3) {
    o.content = buildGoogleTypeLocalizedText();
    o.referencedPlaces = buildUnnamed8();
  }
  buildCounterGoogleMapsPlacesV1ContentBlock--;
  return o;
}

void checkGoogleMapsPlacesV1ContentBlock(api.GoogleMapsPlacesV1ContentBlock o) {
  buildCounterGoogleMapsPlacesV1ContentBlock++;
  if (buildCounterGoogleMapsPlacesV1ContentBlock < 3) {
    checkGoogleTypeLocalizedText(o.content!);
    checkUnnamed8(o.referencedPlaces!);
  }
  buildCounterGoogleMapsPlacesV1ContentBlock--;
}

core.List<api.GoogleMapsPlacesV1ContextualContentJustification>
buildUnnamed9() => [
  buildGoogleMapsPlacesV1ContextualContentJustification(),
  buildGoogleMapsPlacesV1ContextualContentJustification(),
];

void checkUnnamed9(
  core.List<api.GoogleMapsPlacesV1ContextualContentJustification> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1ContextualContentJustification(o[0]);
  checkGoogleMapsPlacesV1ContextualContentJustification(o[1]);
}

core.List<api.GoogleMapsPlacesV1Photo> buildUnnamed10() => [
  buildGoogleMapsPlacesV1Photo(),
  buildGoogleMapsPlacesV1Photo(),
];

void checkUnnamed10(core.List<api.GoogleMapsPlacesV1Photo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1Photo(o[0]);
  checkGoogleMapsPlacesV1Photo(o[1]);
}

core.List<api.GoogleMapsPlacesV1Review> buildUnnamed11() => [
  buildGoogleMapsPlacesV1Review(),
  buildGoogleMapsPlacesV1Review(),
];

void checkUnnamed11(core.List<api.GoogleMapsPlacesV1Review> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1Review(o[0]);
  checkGoogleMapsPlacesV1Review(o[1]);
}

core.int buildCounterGoogleMapsPlacesV1ContextualContent = 0;
api.GoogleMapsPlacesV1ContextualContent
buildGoogleMapsPlacesV1ContextualContent() {
  final o = api.GoogleMapsPlacesV1ContextualContent();
  buildCounterGoogleMapsPlacesV1ContextualContent++;
  if (buildCounterGoogleMapsPlacesV1ContextualContent < 3) {
    o.justifications = buildUnnamed9();
    o.photos = buildUnnamed10();
    o.reviews = buildUnnamed11();
  }
  buildCounterGoogleMapsPlacesV1ContextualContent--;
  return o;
}

void checkGoogleMapsPlacesV1ContextualContent(
  api.GoogleMapsPlacesV1ContextualContent o,
) {
  buildCounterGoogleMapsPlacesV1ContextualContent++;
  if (buildCounterGoogleMapsPlacesV1ContextualContent < 3) {
    checkUnnamed9(o.justifications!);
    checkUnnamed10(o.photos!);
    checkUnnamed11(o.reviews!);
  }
  buildCounterGoogleMapsPlacesV1ContextualContent--;
}

core.int buildCounterGoogleMapsPlacesV1ContextualContentJustification = 0;
api.GoogleMapsPlacesV1ContextualContentJustification
buildGoogleMapsPlacesV1ContextualContentJustification() {
  final o = api.GoogleMapsPlacesV1ContextualContentJustification();
  buildCounterGoogleMapsPlacesV1ContextualContentJustification++;
  if (buildCounterGoogleMapsPlacesV1ContextualContentJustification < 3) {
    o.businessAvailabilityAttributesJustification =
        buildGoogleMapsPlacesV1ContextualContentJustificationBusinessAvailabilityAttributesJustification();
    o.reviewJustification =
        buildGoogleMapsPlacesV1ContextualContentJustificationReviewJustification();
  }
  buildCounterGoogleMapsPlacesV1ContextualContentJustification--;
  return o;
}

void checkGoogleMapsPlacesV1ContextualContentJustification(
  api.GoogleMapsPlacesV1ContextualContentJustification o,
) {
  buildCounterGoogleMapsPlacesV1ContextualContentJustification++;
  if (buildCounterGoogleMapsPlacesV1ContextualContentJustification < 3) {
    checkGoogleMapsPlacesV1ContextualContentJustificationBusinessAvailabilityAttributesJustification(
      o.businessAvailabilityAttributesJustification!,
    );
    checkGoogleMapsPlacesV1ContextualContentJustificationReviewJustification(
      o.reviewJustification!,
    );
  }
  buildCounterGoogleMapsPlacesV1ContextualContentJustification--;
}

core.int
buildCounterGoogleMapsPlacesV1ContextualContentJustificationBusinessAvailabilityAttributesJustification =
    0;
api.GoogleMapsPlacesV1ContextualContentJustificationBusinessAvailabilityAttributesJustification
buildGoogleMapsPlacesV1ContextualContentJustificationBusinessAvailabilityAttributesJustification() {
  final o =
      api.GoogleMapsPlacesV1ContextualContentJustificationBusinessAvailabilityAttributesJustification();
  buildCounterGoogleMapsPlacesV1ContextualContentJustificationBusinessAvailabilityAttributesJustification++;
  if (buildCounterGoogleMapsPlacesV1ContextualContentJustificationBusinessAvailabilityAttributesJustification <
      3) {
    o.delivery = true;
    o.dineIn = true;
    o.takeout = true;
  }
  buildCounterGoogleMapsPlacesV1ContextualContentJustificationBusinessAvailabilityAttributesJustification--;
  return o;
}

void
checkGoogleMapsPlacesV1ContextualContentJustificationBusinessAvailabilityAttributesJustification(
  api.GoogleMapsPlacesV1ContextualContentJustificationBusinessAvailabilityAttributesJustification
  o,
) {
  buildCounterGoogleMapsPlacesV1ContextualContentJustificationBusinessAvailabilityAttributesJustification++;
  if (buildCounterGoogleMapsPlacesV1ContextualContentJustificationBusinessAvailabilityAttributesJustification <
      3) {
    unittest.expect(o.delivery!, unittest.isTrue);
    unittest.expect(o.dineIn!, unittest.isTrue);
    unittest.expect(o.takeout!, unittest.isTrue);
  }
  buildCounterGoogleMapsPlacesV1ContextualContentJustificationBusinessAvailabilityAttributesJustification--;
}

core.int
buildCounterGoogleMapsPlacesV1ContextualContentJustificationReviewJustification =
    0;
api.GoogleMapsPlacesV1ContextualContentJustificationReviewJustification
buildGoogleMapsPlacesV1ContextualContentJustificationReviewJustification() {
  final o =
      api.GoogleMapsPlacesV1ContextualContentJustificationReviewJustification();
  buildCounterGoogleMapsPlacesV1ContextualContentJustificationReviewJustification++;
  if (buildCounterGoogleMapsPlacesV1ContextualContentJustificationReviewJustification <
      3) {
    o.highlightedText =
        buildGoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedText();
    o.review = buildGoogleMapsPlacesV1Review();
  }
  buildCounterGoogleMapsPlacesV1ContextualContentJustificationReviewJustification--;
  return o;
}

void checkGoogleMapsPlacesV1ContextualContentJustificationReviewJustification(
  api.GoogleMapsPlacesV1ContextualContentJustificationReviewJustification o,
) {
  buildCounterGoogleMapsPlacesV1ContextualContentJustificationReviewJustification++;
  if (buildCounterGoogleMapsPlacesV1ContextualContentJustificationReviewJustification <
      3) {
    checkGoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedText(
      o.highlightedText!,
    );
    checkGoogleMapsPlacesV1Review(o.review!);
  }
  buildCounterGoogleMapsPlacesV1ContextualContentJustificationReviewJustification--;
}

core.List<
  api.GoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedTextHighlightedTextRange
>
buildUnnamed12() => [
  buildGoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedTextHighlightedTextRange(),
  buildGoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedTextHighlightedTextRange(),
];

void checkUnnamed12(
  core.List<
    api.GoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedTextHighlightedTextRange
  >
  o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedTextHighlightedTextRange(
    o[0],
  );
  checkGoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedTextHighlightedTextRange(
    o[1],
  );
}

core.int
buildCounterGoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedText =
    0;
api.GoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedText
buildGoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedText() {
  final o =
      api.GoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedText();
  buildCounterGoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedText++;
  if (buildCounterGoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedText <
      3) {
    o.highlightedTextRanges = buildUnnamed12();
    o.text = 'foo';
  }
  buildCounterGoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedText--;
  return o;
}

void
checkGoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedText(
  api.GoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedText
  o,
) {
  buildCounterGoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedText++;
  if (buildCounterGoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedText <
      3) {
    checkUnnamed12(o.highlightedTextRanges!);
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterGoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedText--;
}

core.int
buildCounterGoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedTextHighlightedTextRange =
    0;
api.GoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedTextHighlightedTextRange
buildGoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedTextHighlightedTextRange() {
  final o =
      api.GoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedTextHighlightedTextRange();
  buildCounterGoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedTextHighlightedTextRange++;
  if (buildCounterGoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedTextHighlightedTextRange <
      3) {
    o.endIndex = 42;
    o.startIndex = 42;
  }
  buildCounterGoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedTextHighlightedTextRange--;
  return o;
}

void
checkGoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedTextHighlightedTextRange(
  api.GoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedTextHighlightedTextRange
  o,
) {
  buildCounterGoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedTextHighlightedTextRange++;
  if (buildCounterGoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedTextHighlightedTextRange <
      3) {
    unittest.expect(o.endIndex!, unittest.equals(42));
    unittest.expect(o.startIndex!, unittest.equals(42));
  }
  buildCounterGoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedTextHighlightedTextRange--;
}

core.List<api.GoogleMapsPlacesV1EVChargeOptionsConnectorAggregation>
buildUnnamed13() => [
  buildGoogleMapsPlacesV1EVChargeOptionsConnectorAggregation(),
  buildGoogleMapsPlacesV1EVChargeOptionsConnectorAggregation(),
];

void checkUnnamed13(
  core.List<api.GoogleMapsPlacesV1EVChargeOptionsConnectorAggregation> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1EVChargeOptionsConnectorAggregation(o[0]);
  checkGoogleMapsPlacesV1EVChargeOptionsConnectorAggregation(o[1]);
}

core.int buildCounterGoogleMapsPlacesV1EVChargeOptions = 0;
api.GoogleMapsPlacesV1EVChargeOptions buildGoogleMapsPlacesV1EVChargeOptions() {
  final o = api.GoogleMapsPlacesV1EVChargeOptions();
  buildCounterGoogleMapsPlacesV1EVChargeOptions++;
  if (buildCounterGoogleMapsPlacesV1EVChargeOptions < 3) {
    o.connectorAggregation = buildUnnamed13();
    o.connectorCount = 42;
  }
  buildCounterGoogleMapsPlacesV1EVChargeOptions--;
  return o;
}

void checkGoogleMapsPlacesV1EVChargeOptions(
  api.GoogleMapsPlacesV1EVChargeOptions o,
) {
  buildCounterGoogleMapsPlacesV1EVChargeOptions++;
  if (buildCounterGoogleMapsPlacesV1EVChargeOptions < 3) {
    checkUnnamed13(o.connectorAggregation!);
    unittest.expect(o.connectorCount!, unittest.equals(42));
  }
  buildCounterGoogleMapsPlacesV1EVChargeOptions--;
}

core.int buildCounterGoogleMapsPlacesV1EVChargeOptionsConnectorAggregation = 0;
api.GoogleMapsPlacesV1EVChargeOptionsConnectorAggregation
buildGoogleMapsPlacesV1EVChargeOptionsConnectorAggregation() {
  final o = api.GoogleMapsPlacesV1EVChargeOptionsConnectorAggregation();
  buildCounterGoogleMapsPlacesV1EVChargeOptionsConnectorAggregation++;
  if (buildCounterGoogleMapsPlacesV1EVChargeOptionsConnectorAggregation < 3) {
    o.availabilityLastUpdateTime = 'foo';
    o.availableCount = 42;
    o.count = 42;
    o.maxChargeRateKw = 42.0;
    o.outOfServiceCount = 42;
    o.type = 'foo';
  }
  buildCounterGoogleMapsPlacesV1EVChargeOptionsConnectorAggregation--;
  return o;
}

void checkGoogleMapsPlacesV1EVChargeOptionsConnectorAggregation(
  api.GoogleMapsPlacesV1EVChargeOptionsConnectorAggregation o,
) {
  buildCounterGoogleMapsPlacesV1EVChargeOptionsConnectorAggregation++;
  if (buildCounterGoogleMapsPlacesV1EVChargeOptionsConnectorAggregation < 3) {
    unittest.expect(o.availabilityLastUpdateTime!, unittest.equals('foo'));
    unittest.expect(o.availableCount!, unittest.equals(42));
    unittest.expect(o.count!, unittest.equals(42));
    unittest.expect(o.maxChargeRateKw!, unittest.equals(42.0));
    unittest.expect(o.outOfServiceCount!, unittest.equals(42));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterGoogleMapsPlacesV1EVChargeOptionsConnectorAggregation--;
}

core.List<api.GoogleMapsPlacesV1FuelOptionsFuelPrice> buildUnnamed14() => [
  buildGoogleMapsPlacesV1FuelOptionsFuelPrice(),
  buildGoogleMapsPlacesV1FuelOptionsFuelPrice(),
];

void checkUnnamed14(core.List<api.GoogleMapsPlacesV1FuelOptionsFuelPrice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1FuelOptionsFuelPrice(o[0]);
  checkGoogleMapsPlacesV1FuelOptionsFuelPrice(o[1]);
}

core.int buildCounterGoogleMapsPlacesV1FuelOptions = 0;
api.GoogleMapsPlacesV1FuelOptions buildGoogleMapsPlacesV1FuelOptions() {
  final o = api.GoogleMapsPlacesV1FuelOptions();
  buildCounterGoogleMapsPlacesV1FuelOptions++;
  if (buildCounterGoogleMapsPlacesV1FuelOptions < 3) {
    o.fuelPrices = buildUnnamed14();
  }
  buildCounterGoogleMapsPlacesV1FuelOptions--;
  return o;
}

void checkGoogleMapsPlacesV1FuelOptions(api.GoogleMapsPlacesV1FuelOptions o) {
  buildCounterGoogleMapsPlacesV1FuelOptions++;
  if (buildCounterGoogleMapsPlacesV1FuelOptions < 3) {
    checkUnnamed14(o.fuelPrices!);
  }
  buildCounterGoogleMapsPlacesV1FuelOptions--;
}

core.int buildCounterGoogleMapsPlacesV1FuelOptionsFuelPrice = 0;
api.GoogleMapsPlacesV1FuelOptionsFuelPrice
buildGoogleMapsPlacesV1FuelOptionsFuelPrice() {
  final o = api.GoogleMapsPlacesV1FuelOptionsFuelPrice();
  buildCounterGoogleMapsPlacesV1FuelOptionsFuelPrice++;
  if (buildCounterGoogleMapsPlacesV1FuelOptionsFuelPrice < 3) {
    o.price = buildGoogleTypeMoney();
    o.type = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGoogleMapsPlacesV1FuelOptionsFuelPrice--;
  return o;
}

void checkGoogleMapsPlacesV1FuelOptionsFuelPrice(
  api.GoogleMapsPlacesV1FuelOptionsFuelPrice o,
) {
  buildCounterGoogleMapsPlacesV1FuelOptionsFuelPrice++;
  if (buildCounterGoogleMapsPlacesV1FuelOptionsFuelPrice < 3) {
    checkGoogleTypeMoney(o.price!);
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGoogleMapsPlacesV1FuelOptionsFuelPrice--;
}

core.List<api.GoogleMapsPlacesV1AuthorAttribution> buildUnnamed15() => [
  buildGoogleMapsPlacesV1AuthorAttribution(),
  buildGoogleMapsPlacesV1AuthorAttribution(),
];

void checkUnnamed15(core.List<api.GoogleMapsPlacesV1AuthorAttribution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1AuthorAttribution(o[0]);
  checkGoogleMapsPlacesV1AuthorAttribution(o[1]);
}

core.int buildCounterGoogleMapsPlacesV1Photo = 0;
api.GoogleMapsPlacesV1Photo buildGoogleMapsPlacesV1Photo() {
  final o = api.GoogleMapsPlacesV1Photo();
  buildCounterGoogleMapsPlacesV1Photo++;
  if (buildCounterGoogleMapsPlacesV1Photo < 3) {
    o.authorAttributions = buildUnnamed15();
    o.flagContentUri = 'foo';
    o.googleMapsUri = 'foo';
    o.heightPx = 42;
    o.name = 'foo';
    o.widthPx = 42;
  }
  buildCounterGoogleMapsPlacesV1Photo--;
  return o;
}

void checkGoogleMapsPlacesV1Photo(api.GoogleMapsPlacesV1Photo o) {
  buildCounterGoogleMapsPlacesV1Photo++;
  if (buildCounterGoogleMapsPlacesV1Photo < 3) {
    checkUnnamed15(o.authorAttributions!);
    unittest.expect(o.flagContentUri!, unittest.equals('foo'));
    unittest.expect(o.googleMapsUri!, unittest.equals('foo'));
    unittest.expect(o.heightPx!, unittest.equals(42));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.widthPx!, unittest.equals(42));
  }
  buildCounterGoogleMapsPlacesV1Photo--;
}

core.int buildCounterGoogleMapsPlacesV1PhotoMedia = 0;
api.GoogleMapsPlacesV1PhotoMedia buildGoogleMapsPlacesV1PhotoMedia() {
  final o = api.GoogleMapsPlacesV1PhotoMedia();
  buildCounterGoogleMapsPlacesV1PhotoMedia++;
  if (buildCounterGoogleMapsPlacesV1PhotoMedia < 3) {
    o.name = 'foo';
    o.photoUri = 'foo';
  }
  buildCounterGoogleMapsPlacesV1PhotoMedia--;
  return o;
}

void checkGoogleMapsPlacesV1PhotoMedia(api.GoogleMapsPlacesV1PhotoMedia o) {
  buildCounterGoogleMapsPlacesV1PhotoMedia++;
  if (buildCounterGoogleMapsPlacesV1PhotoMedia < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.photoUri!, unittest.equals('foo'));
  }
  buildCounterGoogleMapsPlacesV1PhotoMedia--;
}

core.List<api.GoogleMapsPlacesV1PlaceAddressComponent> buildUnnamed16() => [
  buildGoogleMapsPlacesV1PlaceAddressComponent(),
  buildGoogleMapsPlacesV1PlaceAddressComponent(),
];

void checkUnnamed16(core.List<api.GoogleMapsPlacesV1PlaceAddressComponent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1PlaceAddressComponent(o[0]);
  checkGoogleMapsPlacesV1PlaceAddressComponent(o[1]);
}

core.List<api.GoogleMapsPlacesV1PlaceAttribution> buildUnnamed17() => [
  buildGoogleMapsPlacesV1PlaceAttribution(),
  buildGoogleMapsPlacesV1PlaceAttribution(),
];

void checkUnnamed17(core.List<api.GoogleMapsPlacesV1PlaceAttribution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1PlaceAttribution(o[0]);
  checkGoogleMapsPlacesV1PlaceAttribution(o[1]);
}

core.List<api.GoogleMapsPlacesV1PlaceContainingPlace> buildUnnamed18() => [
  buildGoogleMapsPlacesV1PlaceContainingPlace(),
  buildGoogleMapsPlacesV1PlaceContainingPlace(),
];

void checkUnnamed18(core.List<api.GoogleMapsPlacesV1PlaceContainingPlace> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1PlaceContainingPlace(o[0]);
  checkGoogleMapsPlacesV1PlaceContainingPlace(o[1]);
}

core.List<api.GoogleMapsPlacesV1PlaceOpeningHours> buildUnnamed19() => [
  buildGoogleMapsPlacesV1PlaceOpeningHours(),
  buildGoogleMapsPlacesV1PlaceOpeningHours(),
];

void checkUnnamed19(core.List<api.GoogleMapsPlacesV1PlaceOpeningHours> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1PlaceOpeningHours(o[0]);
  checkGoogleMapsPlacesV1PlaceOpeningHours(o[1]);
}

core.List<api.GoogleMapsPlacesV1Photo> buildUnnamed20() => [
  buildGoogleMapsPlacesV1Photo(),
  buildGoogleMapsPlacesV1Photo(),
];

void checkUnnamed20(core.List<api.GoogleMapsPlacesV1Photo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1Photo(o[0]);
  checkGoogleMapsPlacesV1Photo(o[1]);
}

core.List<api.GoogleMapsPlacesV1PlaceOpeningHours> buildUnnamed21() => [
  buildGoogleMapsPlacesV1PlaceOpeningHours(),
  buildGoogleMapsPlacesV1PlaceOpeningHours(),
];

void checkUnnamed21(core.List<api.GoogleMapsPlacesV1PlaceOpeningHours> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1PlaceOpeningHours(o[0]);
  checkGoogleMapsPlacesV1PlaceOpeningHours(o[1]);
}

core.List<api.GoogleMapsPlacesV1Review> buildUnnamed22() => [
  buildGoogleMapsPlacesV1Review(),
  buildGoogleMapsPlacesV1Review(),
];

void checkUnnamed22(core.List<api.GoogleMapsPlacesV1Review> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1Review(o[0]);
  checkGoogleMapsPlacesV1Review(o[1]);
}

core.List<api.GoogleMapsPlacesV1PlaceSubDestination> buildUnnamed23() => [
  buildGoogleMapsPlacesV1PlaceSubDestination(),
  buildGoogleMapsPlacesV1PlaceSubDestination(),
];

void checkUnnamed23(core.List<api.GoogleMapsPlacesV1PlaceSubDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1PlaceSubDestination(o[0]);
  checkGoogleMapsPlacesV1PlaceSubDestination(o[1]);
}

core.List<core.String> buildUnnamed24() => ['foo', 'foo'];

void checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleMapsPlacesV1Place = 0;
api.GoogleMapsPlacesV1Place buildGoogleMapsPlacesV1Place() {
  final o = api.GoogleMapsPlacesV1Place();
  buildCounterGoogleMapsPlacesV1Place++;
  if (buildCounterGoogleMapsPlacesV1Place < 3) {
    o.accessibilityOptions = buildGoogleMapsPlacesV1PlaceAccessibilityOptions();
    o.addressComponents = buildUnnamed16();
    o.addressDescriptor = buildGoogleMapsPlacesV1AddressDescriptor();
    o.adrFormatAddress = 'foo';
    o.allowsDogs = true;
    o.attributions = buildUnnamed17();
    o.businessStatus = 'foo';
    o.consumerAlert = buildGoogleMapsPlacesV1PlaceConsumerAlert();
    o.containingPlaces = buildUnnamed18();
    o.curbsidePickup = true;
    o.currentOpeningHours = buildGoogleMapsPlacesV1PlaceOpeningHours();
    o.currentSecondaryOpeningHours = buildUnnamed19();
    o.delivery = true;
    o.dineIn = true;
    o.displayName = buildGoogleTypeLocalizedText();
    o.editorialSummary = buildGoogleTypeLocalizedText();
    o.evChargeAmenitySummary =
        buildGoogleMapsPlacesV1PlaceEvChargeAmenitySummary();
    o.evChargeOptions = buildGoogleMapsPlacesV1EVChargeOptions();
    o.formattedAddress = 'foo';
    o.fuelOptions = buildGoogleMapsPlacesV1FuelOptions();
    o.generativeSummary = buildGoogleMapsPlacesV1PlaceGenerativeSummary();
    o.goodForChildren = true;
    o.goodForGroups = true;
    o.goodForWatchingSports = true;
    o.googleMapsLinks = buildGoogleMapsPlacesV1PlaceGoogleMapsLinks();
    o.googleMapsUri = 'foo';
    o.iconBackgroundColor = 'foo';
    o.iconMaskBaseUri = 'foo';
    o.id = 'foo';
    o.internationalPhoneNumber = 'foo';
    o.liveMusic = true;
    o.location = buildGoogleTypeLatLng();
    o.menuForChildren = true;
    o.movedPlace = 'foo';
    o.movedPlaceId = 'foo';
    o.name = 'foo';
    o.nationalPhoneNumber = 'foo';
    o.neighborhoodSummary = buildGoogleMapsPlacesV1PlaceNeighborhoodSummary();
    o.outdoorSeating = true;
    o.parkingOptions = buildGoogleMapsPlacesV1PlaceParkingOptions();
    o.paymentOptions = buildGoogleMapsPlacesV1PlacePaymentOptions();
    o.photos = buildUnnamed20();
    o.plusCode = buildGoogleMapsPlacesV1PlacePlusCode();
    o.postalAddress = buildGoogleTypePostalAddress();
    o.priceLevel = 'foo';
    o.priceRange = buildGoogleMapsPlacesV1PriceRange();
    o.primaryType = 'foo';
    o.primaryTypeDisplayName = buildGoogleTypeLocalizedText();
    o.pureServiceAreaBusiness = true;
    o.rating = 42.0;
    o.regularOpeningHours = buildGoogleMapsPlacesV1PlaceOpeningHours();
    o.regularSecondaryOpeningHours = buildUnnamed21();
    o.reservable = true;
    o.restroom = true;
    o.reviewSummary = buildGoogleMapsPlacesV1PlaceReviewSummary();
    o.reviews = buildUnnamed22();
    o.servesBeer = true;
    o.servesBreakfast = true;
    o.servesBrunch = true;
    o.servesCocktails = true;
    o.servesCoffee = true;
    o.servesDessert = true;
    o.servesDinner = true;
    o.servesLunch = true;
    o.servesVegetarianFood = true;
    o.servesWine = true;
    o.shortFormattedAddress = 'foo';
    o.subDestinations = buildUnnamed23();
    o.takeout = true;
    o.timeZone = buildGoogleTypeTimeZone();
    o.types = buildUnnamed24();
    o.userRatingCount = 42;
    o.utcOffsetMinutes = 42;
    o.viewport = buildGoogleGeoTypeViewport();
    o.websiteUri = 'foo';
  }
  buildCounterGoogleMapsPlacesV1Place--;
  return o;
}

void checkGoogleMapsPlacesV1Place(api.GoogleMapsPlacesV1Place o) {
  buildCounterGoogleMapsPlacesV1Place++;
  if (buildCounterGoogleMapsPlacesV1Place < 3) {
    checkGoogleMapsPlacesV1PlaceAccessibilityOptions(o.accessibilityOptions!);
    checkUnnamed16(o.addressComponents!);
    checkGoogleMapsPlacesV1AddressDescriptor(o.addressDescriptor!);
    unittest.expect(o.adrFormatAddress!, unittest.equals('foo'));
    unittest.expect(o.allowsDogs!, unittest.isTrue);
    checkUnnamed17(o.attributions!);
    unittest.expect(o.businessStatus!, unittest.equals('foo'));
    checkGoogleMapsPlacesV1PlaceConsumerAlert(o.consumerAlert!);
    checkUnnamed18(o.containingPlaces!);
    unittest.expect(o.curbsidePickup!, unittest.isTrue);
    checkGoogleMapsPlacesV1PlaceOpeningHours(o.currentOpeningHours!);
    checkUnnamed19(o.currentSecondaryOpeningHours!);
    unittest.expect(o.delivery!, unittest.isTrue);
    unittest.expect(o.dineIn!, unittest.isTrue);
    checkGoogleTypeLocalizedText(o.displayName!);
    checkGoogleTypeLocalizedText(o.editorialSummary!);
    checkGoogleMapsPlacesV1PlaceEvChargeAmenitySummary(
      o.evChargeAmenitySummary!,
    );
    checkGoogleMapsPlacesV1EVChargeOptions(o.evChargeOptions!);
    unittest.expect(o.formattedAddress!, unittest.equals('foo'));
    checkGoogleMapsPlacesV1FuelOptions(o.fuelOptions!);
    checkGoogleMapsPlacesV1PlaceGenerativeSummary(o.generativeSummary!);
    unittest.expect(o.goodForChildren!, unittest.isTrue);
    unittest.expect(o.goodForGroups!, unittest.isTrue);
    unittest.expect(o.goodForWatchingSports!, unittest.isTrue);
    checkGoogleMapsPlacesV1PlaceGoogleMapsLinks(o.googleMapsLinks!);
    unittest.expect(o.googleMapsUri!, unittest.equals('foo'));
    unittest.expect(o.iconBackgroundColor!, unittest.equals('foo'));
    unittest.expect(o.iconMaskBaseUri!, unittest.equals('foo'));
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.internationalPhoneNumber!, unittest.equals('foo'));
    unittest.expect(o.liveMusic!, unittest.isTrue);
    checkGoogleTypeLatLng(o.location!);
    unittest.expect(o.menuForChildren!, unittest.isTrue);
    unittest.expect(o.movedPlace!, unittest.equals('foo'));
    unittest.expect(o.movedPlaceId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.nationalPhoneNumber!, unittest.equals('foo'));
    checkGoogleMapsPlacesV1PlaceNeighborhoodSummary(o.neighborhoodSummary!);
    unittest.expect(o.outdoorSeating!, unittest.isTrue);
    checkGoogleMapsPlacesV1PlaceParkingOptions(o.parkingOptions!);
    checkGoogleMapsPlacesV1PlacePaymentOptions(o.paymentOptions!);
    checkUnnamed20(o.photos!);
    checkGoogleMapsPlacesV1PlacePlusCode(o.plusCode!);
    checkGoogleTypePostalAddress(o.postalAddress!);
    unittest.expect(o.priceLevel!, unittest.equals('foo'));
    checkGoogleMapsPlacesV1PriceRange(o.priceRange!);
    unittest.expect(o.primaryType!, unittest.equals('foo'));
    checkGoogleTypeLocalizedText(o.primaryTypeDisplayName!);
    unittest.expect(o.pureServiceAreaBusiness!, unittest.isTrue);
    unittest.expect(o.rating!, unittest.equals(42.0));
    checkGoogleMapsPlacesV1PlaceOpeningHours(o.regularOpeningHours!);
    checkUnnamed21(o.regularSecondaryOpeningHours!);
    unittest.expect(o.reservable!, unittest.isTrue);
    unittest.expect(o.restroom!, unittest.isTrue);
    checkGoogleMapsPlacesV1PlaceReviewSummary(o.reviewSummary!);
    checkUnnamed22(o.reviews!);
    unittest.expect(o.servesBeer!, unittest.isTrue);
    unittest.expect(o.servesBreakfast!, unittest.isTrue);
    unittest.expect(o.servesBrunch!, unittest.isTrue);
    unittest.expect(o.servesCocktails!, unittest.isTrue);
    unittest.expect(o.servesCoffee!, unittest.isTrue);
    unittest.expect(o.servesDessert!, unittest.isTrue);
    unittest.expect(o.servesDinner!, unittest.isTrue);
    unittest.expect(o.servesLunch!, unittest.isTrue);
    unittest.expect(o.servesVegetarianFood!, unittest.isTrue);
    unittest.expect(o.servesWine!, unittest.isTrue);
    unittest.expect(o.shortFormattedAddress!, unittest.equals('foo'));
    checkUnnamed23(o.subDestinations!);
    unittest.expect(o.takeout!, unittest.isTrue);
    checkGoogleTypeTimeZone(o.timeZone!);
    checkUnnamed24(o.types!);
    unittest.expect(o.userRatingCount!, unittest.equals(42));
    unittest.expect(o.utcOffsetMinutes!, unittest.equals(42));
    checkGoogleGeoTypeViewport(o.viewport!);
    unittest.expect(o.websiteUri!, unittest.equals('foo'));
  }
  buildCounterGoogleMapsPlacesV1Place--;
}

core.int buildCounterGoogleMapsPlacesV1PlaceAccessibilityOptions = 0;
api.GoogleMapsPlacesV1PlaceAccessibilityOptions
buildGoogleMapsPlacesV1PlaceAccessibilityOptions() {
  final o = api.GoogleMapsPlacesV1PlaceAccessibilityOptions();
  buildCounterGoogleMapsPlacesV1PlaceAccessibilityOptions++;
  if (buildCounterGoogleMapsPlacesV1PlaceAccessibilityOptions < 3) {
    o.wheelchairAccessibleEntrance = true;
    o.wheelchairAccessibleParking = true;
    o.wheelchairAccessibleRestroom = true;
    o.wheelchairAccessibleSeating = true;
  }
  buildCounterGoogleMapsPlacesV1PlaceAccessibilityOptions--;
  return o;
}

void checkGoogleMapsPlacesV1PlaceAccessibilityOptions(
  api.GoogleMapsPlacesV1PlaceAccessibilityOptions o,
) {
  buildCounterGoogleMapsPlacesV1PlaceAccessibilityOptions++;
  if (buildCounterGoogleMapsPlacesV1PlaceAccessibilityOptions < 3) {
    unittest.expect(o.wheelchairAccessibleEntrance!, unittest.isTrue);
    unittest.expect(o.wheelchairAccessibleParking!, unittest.isTrue);
    unittest.expect(o.wheelchairAccessibleRestroom!, unittest.isTrue);
    unittest.expect(o.wheelchairAccessibleSeating!, unittest.isTrue);
  }
  buildCounterGoogleMapsPlacesV1PlaceAccessibilityOptions--;
}

core.List<core.String> buildUnnamed25() => ['foo', 'foo'];

void checkUnnamed25(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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
    o.types = buildUnnamed25();
  }
  buildCounterGoogleMapsPlacesV1PlaceAddressComponent--;
  return o;
}

void checkGoogleMapsPlacesV1PlaceAddressComponent(
  api.GoogleMapsPlacesV1PlaceAddressComponent o,
) {
  buildCounterGoogleMapsPlacesV1PlaceAddressComponent++;
  if (buildCounterGoogleMapsPlacesV1PlaceAddressComponent < 3) {
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.longText!, unittest.equals('foo'));
    unittest.expect(o.shortText!, unittest.equals('foo'));
    checkUnnamed25(o.types!);
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
  api.GoogleMapsPlacesV1PlaceAttribution o,
) {
  buildCounterGoogleMapsPlacesV1PlaceAttribution++;
  if (buildCounterGoogleMapsPlacesV1PlaceAttribution < 3) {
    unittest.expect(o.provider!, unittest.equals('foo'));
    unittest.expect(o.providerUri!, unittest.equals('foo'));
  }
  buildCounterGoogleMapsPlacesV1PlaceAttribution--;
}

core.int buildCounterGoogleMapsPlacesV1PlaceConsumerAlert = 0;
api.GoogleMapsPlacesV1PlaceConsumerAlert
buildGoogleMapsPlacesV1PlaceConsumerAlert() {
  final o = api.GoogleMapsPlacesV1PlaceConsumerAlert();
  buildCounterGoogleMapsPlacesV1PlaceConsumerAlert++;
  if (buildCounterGoogleMapsPlacesV1PlaceConsumerAlert < 3) {
    o.details = buildGoogleMapsPlacesV1PlaceConsumerAlertDetails();
    o.languageCode = 'foo';
    o.overview = 'foo';
  }
  buildCounterGoogleMapsPlacesV1PlaceConsumerAlert--;
  return o;
}

void checkGoogleMapsPlacesV1PlaceConsumerAlert(
  api.GoogleMapsPlacesV1PlaceConsumerAlert o,
) {
  buildCounterGoogleMapsPlacesV1PlaceConsumerAlert++;
  if (buildCounterGoogleMapsPlacesV1PlaceConsumerAlert < 3) {
    checkGoogleMapsPlacesV1PlaceConsumerAlertDetails(o.details!);
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.overview!, unittest.equals('foo'));
  }
  buildCounterGoogleMapsPlacesV1PlaceConsumerAlert--;
}

core.int buildCounterGoogleMapsPlacesV1PlaceConsumerAlertDetails = 0;
api.GoogleMapsPlacesV1PlaceConsumerAlertDetails
buildGoogleMapsPlacesV1PlaceConsumerAlertDetails() {
  final o = api.GoogleMapsPlacesV1PlaceConsumerAlertDetails();
  buildCounterGoogleMapsPlacesV1PlaceConsumerAlertDetails++;
  if (buildCounterGoogleMapsPlacesV1PlaceConsumerAlertDetails < 3) {
    o.aboutLink = buildGoogleMapsPlacesV1PlaceConsumerAlertDetailsLink();
    o.description = 'foo';
    o.title = 'foo';
  }
  buildCounterGoogleMapsPlacesV1PlaceConsumerAlertDetails--;
  return o;
}

void checkGoogleMapsPlacesV1PlaceConsumerAlertDetails(
  api.GoogleMapsPlacesV1PlaceConsumerAlertDetails o,
) {
  buildCounterGoogleMapsPlacesV1PlaceConsumerAlertDetails++;
  if (buildCounterGoogleMapsPlacesV1PlaceConsumerAlertDetails < 3) {
    checkGoogleMapsPlacesV1PlaceConsumerAlertDetailsLink(o.aboutLink!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterGoogleMapsPlacesV1PlaceConsumerAlertDetails--;
}

core.int buildCounterGoogleMapsPlacesV1PlaceConsumerAlertDetailsLink = 0;
api.GoogleMapsPlacesV1PlaceConsumerAlertDetailsLink
buildGoogleMapsPlacesV1PlaceConsumerAlertDetailsLink() {
  final o = api.GoogleMapsPlacesV1PlaceConsumerAlertDetailsLink();
  buildCounterGoogleMapsPlacesV1PlaceConsumerAlertDetailsLink++;
  if (buildCounterGoogleMapsPlacesV1PlaceConsumerAlertDetailsLink < 3) {
    o.title = 'foo';
    o.uri = 'foo';
  }
  buildCounterGoogleMapsPlacesV1PlaceConsumerAlertDetailsLink--;
  return o;
}

void checkGoogleMapsPlacesV1PlaceConsumerAlertDetailsLink(
  api.GoogleMapsPlacesV1PlaceConsumerAlertDetailsLink o,
) {
  buildCounterGoogleMapsPlacesV1PlaceConsumerAlertDetailsLink++;
  if (buildCounterGoogleMapsPlacesV1PlaceConsumerAlertDetailsLink < 3) {
    unittest.expect(o.title!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterGoogleMapsPlacesV1PlaceConsumerAlertDetailsLink--;
}

core.int buildCounterGoogleMapsPlacesV1PlaceContainingPlace = 0;
api.GoogleMapsPlacesV1PlaceContainingPlace
buildGoogleMapsPlacesV1PlaceContainingPlace() {
  final o = api.GoogleMapsPlacesV1PlaceContainingPlace();
  buildCounterGoogleMapsPlacesV1PlaceContainingPlace++;
  if (buildCounterGoogleMapsPlacesV1PlaceContainingPlace < 3) {
    o.id = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleMapsPlacesV1PlaceContainingPlace--;
  return o;
}

void checkGoogleMapsPlacesV1PlaceContainingPlace(
  api.GoogleMapsPlacesV1PlaceContainingPlace o,
) {
  buildCounterGoogleMapsPlacesV1PlaceContainingPlace++;
  if (buildCounterGoogleMapsPlacesV1PlaceContainingPlace < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleMapsPlacesV1PlaceContainingPlace--;
}

core.int buildCounterGoogleMapsPlacesV1PlaceEvChargeAmenitySummary = 0;
api.GoogleMapsPlacesV1PlaceEvChargeAmenitySummary
buildGoogleMapsPlacesV1PlaceEvChargeAmenitySummary() {
  final o = api.GoogleMapsPlacesV1PlaceEvChargeAmenitySummary();
  buildCounterGoogleMapsPlacesV1PlaceEvChargeAmenitySummary++;
  if (buildCounterGoogleMapsPlacesV1PlaceEvChargeAmenitySummary < 3) {
    o.coffee = buildGoogleMapsPlacesV1ContentBlock();
    o.disclosureText = buildGoogleTypeLocalizedText();
    o.flagContentUri = 'foo';
    o.overview = buildGoogleMapsPlacesV1ContentBlock();
    o.restaurant = buildGoogleMapsPlacesV1ContentBlock();
    o.store = buildGoogleMapsPlacesV1ContentBlock();
  }
  buildCounterGoogleMapsPlacesV1PlaceEvChargeAmenitySummary--;
  return o;
}

void checkGoogleMapsPlacesV1PlaceEvChargeAmenitySummary(
  api.GoogleMapsPlacesV1PlaceEvChargeAmenitySummary o,
) {
  buildCounterGoogleMapsPlacesV1PlaceEvChargeAmenitySummary++;
  if (buildCounterGoogleMapsPlacesV1PlaceEvChargeAmenitySummary < 3) {
    checkGoogleMapsPlacesV1ContentBlock(o.coffee!);
    checkGoogleTypeLocalizedText(o.disclosureText!);
    unittest.expect(o.flagContentUri!, unittest.equals('foo'));
    checkGoogleMapsPlacesV1ContentBlock(o.overview!);
    checkGoogleMapsPlacesV1ContentBlock(o.restaurant!);
    checkGoogleMapsPlacesV1ContentBlock(o.store!);
  }
  buildCounterGoogleMapsPlacesV1PlaceEvChargeAmenitySummary--;
}

core.int buildCounterGoogleMapsPlacesV1PlaceGenerativeSummary = 0;
api.GoogleMapsPlacesV1PlaceGenerativeSummary
buildGoogleMapsPlacesV1PlaceGenerativeSummary() {
  final o = api.GoogleMapsPlacesV1PlaceGenerativeSummary();
  buildCounterGoogleMapsPlacesV1PlaceGenerativeSummary++;
  if (buildCounterGoogleMapsPlacesV1PlaceGenerativeSummary < 3) {
    o.disclosureText = buildGoogleTypeLocalizedText();
    o.overview = buildGoogleTypeLocalizedText();
    o.overviewFlagContentUri = 'foo';
  }
  buildCounterGoogleMapsPlacesV1PlaceGenerativeSummary--;
  return o;
}

void checkGoogleMapsPlacesV1PlaceGenerativeSummary(
  api.GoogleMapsPlacesV1PlaceGenerativeSummary o,
) {
  buildCounterGoogleMapsPlacesV1PlaceGenerativeSummary++;
  if (buildCounterGoogleMapsPlacesV1PlaceGenerativeSummary < 3) {
    checkGoogleTypeLocalizedText(o.disclosureText!);
    checkGoogleTypeLocalizedText(o.overview!);
    unittest.expect(o.overviewFlagContentUri!, unittest.equals('foo'));
  }
  buildCounterGoogleMapsPlacesV1PlaceGenerativeSummary--;
}

core.int buildCounterGoogleMapsPlacesV1PlaceGoogleMapsLinks = 0;
api.GoogleMapsPlacesV1PlaceGoogleMapsLinks
buildGoogleMapsPlacesV1PlaceGoogleMapsLinks() {
  final o = api.GoogleMapsPlacesV1PlaceGoogleMapsLinks();
  buildCounterGoogleMapsPlacesV1PlaceGoogleMapsLinks++;
  if (buildCounterGoogleMapsPlacesV1PlaceGoogleMapsLinks < 3) {
    o.directionsUri = 'foo';
    o.photosUri = 'foo';
    o.placeUri = 'foo';
    o.reviewsUri = 'foo';
    o.writeAReviewUri = 'foo';
  }
  buildCounterGoogleMapsPlacesV1PlaceGoogleMapsLinks--;
  return o;
}

void checkGoogleMapsPlacesV1PlaceGoogleMapsLinks(
  api.GoogleMapsPlacesV1PlaceGoogleMapsLinks o,
) {
  buildCounterGoogleMapsPlacesV1PlaceGoogleMapsLinks++;
  if (buildCounterGoogleMapsPlacesV1PlaceGoogleMapsLinks < 3) {
    unittest.expect(o.directionsUri!, unittest.equals('foo'));
    unittest.expect(o.photosUri!, unittest.equals('foo'));
    unittest.expect(o.placeUri!, unittest.equals('foo'));
    unittest.expect(o.reviewsUri!, unittest.equals('foo'));
    unittest.expect(o.writeAReviewUri!, unittest.equals('foo'));
  }
  buildCounterGoogleMapsPlacesV1PlaceGoogleMapsLinks--;
}

core.int buildCounterGoogleMapsPlacesV1PlaceNeighborhoodSummary = 0;
api.GoogleMapsPlacesV1PlaceNeighborhoodSummary
buildGoogleMapsPlacesV1PlaceNeighborhoodSummary() {
  final o = api.GoogleMapsPlacesV1PlaceNeighborhoodSummary();
  buildCounterGoogleMapsPlacesV1PlaceNeighborhoodSummary++;
  if (buildCounterGoogleMapsPlacesV1PlaceNeighborhoodSummary < 3) {
    o.description = buildGoogleMapsPlacesV1ContentBlock();
    o.disclosureText = buildGoogleTypeLocalizedText();
    o.flagContentUri = 'foo';
    o.overview = buildGoogleMapsPlacesV1ContentBlock();
  }
  buildCounterGoogleMapsPlacesV1PlaceNeighborhoodSummary--;
  return o;
}

void checkGoogleMapsPlacesV1PlaceNeighborhoodSummary(
  api.GoogleMapsPlacesV1PlaceNeighborhoodSummary o,
) {
  buildCounterGoogleMapsPlacesV1PlaceNeighborhoodSummary++;
  if (buildCounterGoogleMapsPlacesV1PlaceNeighborhoodSummary < 3) {
    checkGoogleMapsPlacesV1ContentBlock(o.description!);
    checkGoogleTypeLocalizedText(o.disclosureText!);
    unittest.expect(o.flagContentUri!, unittest.equals('foo'));
    checkGoogleMapsPlacesV1ContentBlock(o.overview!);
  }
  buildCounterGoogleMapsPlacesV1PlaceNeighborhoodSummary--;
}

core.List<api.GoogleMapsPlacesV1PlaceOpeningHoursPeriod> buildUnnamed26() => [
  buildGoogleMapsPlacesV1PlaceOpeningHoursPeriod(),
  buildGoogleMapsPlacesV1PlaceOpeningHoursPeriod(),
];

void checkUnnamed26(
  core.List<api.GoogleMapsPlacesV1PlaceOpeningHoursPeriod> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1PlaceOpeningHoursPeriod(o[0]);
  checkGoogleMapsPlacesV1PlaceOpeningHoursPeriod(o[1]);
}

core.List<api.GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay> buildUnnamed27() =>
    [
      buildGoogleMapsPlacesV1PlaceOpeningHoursSpecialDay(),
      buildGoogleMapsPlacesV1PlaceOpeningHoursSpecialDay(),
    ];

void checkUnnamed27(
  core.List<api.GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1PlaceOpeningHoursSpecialDay(o[0]);
  checkGoogleMapsPlacesV1PlaceOpeningHoursSpecialDay(o[1]);
}

core.List<core.String> buildUnnamed28() => ['foo', 'foo'];

void checkUnnamed28(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleMapsPlacesV1PlaceOpeningHours = 0;
api.GoogleMapsPlacesV1PlaceOpeningHours
buildGoogleMapsPlacesV1PlaceOpeningHours() {
  final o = api.GoogleMapsPlacesV1PlaceOpeningHours();
  buildCounterGoogleMapsPlacesV1PlaceOpeningHours++;
  if (buildCounterGoogleMapsPlacesV1PlaceOpeningHours < 3) {
    o.nextCloseTime = 'foo';
    o.nextOpenTime = 'foo';
    o.openNow = true;
    o.periods = buildUnnamed26();
    o.secondaryHoursType = 'foo';
    o.specialDays = buildUnnamed27();
    o.weekdayDescriptions = buildUnnamed28();
  }
  buildCounterGoogleMapsPlacesV1PlaceOpeningHours--;
  return o;
}

void checkGoogleMapsPlacesV1PlaceOpeningHours(
  api.GoogleMapsPlacesV1PlaceOpeningHours o,
) {
  buildCounterGoogleMapsPlacesV1PlaceOpeningHours++;
  if (buildCounterGoogleMapsPlacesV1PlaceOpeningHours < 3) {
    unittest.expect(o.nextCloseTime!, unittest.equals('foo'));
    unittest.expect(o.nextOpenTime!, unittest.equals('foo'));
    unittest.expect(o.openNow!, unittest.isTrue);
    checkUnnamed26(o.periods!);
    unittest.expect(o.secondaryHoursType!, unittest.equals('foo'));
    checkUnnamed27(o.specialDays!);
    checkUnnamed28(o.weekdayDescriptions!);
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
  api.GoogleMapsPlacesV1PlaceOpeningHoursPeriod o,
) {
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
    o.day = 42;
    o.hour = 42;
    o.minute = 42;
    o.truncated = true;
  }
  buildCounterGoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint--;
  return o;
}

void checkGoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint(
  api.GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint o,
) {
  buildCounterGoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint++;
  if (buildCounterGoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint < 3) {
    checkGoogleTypeDate(o.date!);
    unittest.expect(o.day!, unittest.equals(42));
    unittest.expect(o.hour!, unittest.equals(42));
    unittest.expect(o.minute!, unittest.equals(42));
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
  api.GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay o,
) {
  buildCounterGoogleMapsPlacesV1PlaceOpeningHoursSpecialDay++;
  if (buildCounterGoogleMapsPlacesV1PlaceOpeningHoursSpecialDay < 3) {
    checkGoogleTypeDate(o.date!);
  }
  buildCounterGoogleMapsPlacesV1PlaceOpeningHoursSpecialDay--;
}

core.int buildCounterGoogleMapsPlacesV1PlaceParkingOptions = 0;
api.GoogleMapsPlacesV1PlaceParkingOptions
buildGoogleMapsPlacesV1PlaceParkingOptions() {
  final o = api.GoogleMapsPlacesV1PlaceParkingOptions();
  buildCounterGoogleMapsPlacesV1PlaceParkingOptions++;
  if (buildCounterGoogleMapsPlacesV1PlaceParkingOptions < 3) {
    o.freeGarageParking = true;
    o.freeParkingLot = true;
    o.freeStreetParking = true;
    o.paidGarageParking = true;
    o.paidParkingLot = true;
    o.paidStreetParking = true;
    o.valetParking = true;
  }
  buildCounterGoogleMapsPlacesV1PlaceParkingOptions--;
  return o;
}

void checkGoogleMapsPlacesV1PlaceParkingOptions(
  api.GoogleMapsPlacesV1PlaceParkingOptions o,
) {
  buildCounterGoogleMapsPlacesV1PlaceParkingOptions++;
  if (buildCounterGoogleMapsPlacesV1PlaceParkingOptions < 3) {
    unittest.expect(o.freeGarageParking!, unittest.isTrue);
    unittest.expect(o.freeParkingLot!, unittest.isTrue);
    unittest.expect(o.freeStreetParking!, unittest.isTrue);
    unittest.expect(o.paidGarageParking!, unittest.isTrue);
    unittest.expect(o.paidParkingLot!, unittest.isTrue);
    unittest.expect(o.paidStreetParking!, unittest.isTrue);
    unittest.expect(o.valetParking!, unittest.isTrue);
  }
  buildCounterGoogleMapsPlacesV1PlaceParkingOptions--;
}

core.int buildCounterGoogleMapsPlacesV1PlacePaymentOptions = 0;
api.GoogleMapsPlacesV1PlacePaymentOptions
buildGoogleMapsPlacesV1PlacePaymentOptions() {
  final o = api.GoogleMapsPlacesV1PlacePaymentOptions();
  buildCounterGoogleMapsPlacesV1PlacePaymentOptions++;
  if (buildCounterGoogleMapsPlacesV1PlacePaymentOptions < 3) {
    o.acceptsCashOnly = true;
    o.acceptsCreditCards = true;
    o.acceptsDebitCards = true;
    o.acceptsNfc = true;
  }
  buildCounterGoogleMapsPlacesV1PlacePaymentOptions--;
  return o;
}

void checkGoogleMapsPlacesV1PlacePaymentOptions(
  api.GoogleMapsPlacesV1PlacePaymentOptions o,
) {
  buildCounterGoogleMapsPlacesV1PlacePaymentOptions++;
  if (buildCounterGoogleMapsPlacesV1PlacePaymentOptions < 3) {
    unittest.expect(o.acceptsCashOnly!, unittest.isTrue);
    unittest.expect(o.acceptsCreditCards!, unittest.isTrue);
    unittest.expect(o.acceptsDebitCards!, unittest.isTrue);
    unittest.expect(o.acceptsNfc!, unittest.isTrue);
  }
  buildCounterGoogleMapsPlacesV1PlacePaymentOptions--;
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
  api.GoogleMapsPlacesV1PlacePlusCode o,
) {
  buildCounterGoogleMapsPlacesV1PlacePlusCode++;
  if (buildCounterGoogleMapsPlacesV1PlacePlusCode < 3) {
    unittest.expect(o.compoundCode!, unittest.equals('foo'));
    unittest.expect(o.globalCode!, unittest.equals('foo'));
  }
  buildCounterGoogleMapsPlacesV1PlacePlusCode--;
}

core.int buildCounterGoogleMapsPlacesV1PlaceReviewSummary = 0;
api.GoogleMapsPlacesV1PlaceReviewSummary
buildGoogleMapsPlacesV1PlaceReviewSummary() {
  final o = api.GoogleMapsPlacesV1PlaceReviewSummary();
  buildCounterGoogleMapsPlacesV1PlaceReviewSummary++;
  if (buildCounterGoogleMapsPlacesV1PlaceReviewSummary < 3) {
    o.disclosureText = buildGoogleTypeLocalizedText();
    o.flagContentUri = 'foo';
    o.reviewsUri = 'foo';
    o.text = buildGoogleTypeLocalizedText();
  }
  buildCounterGoogleMapsPlacesV1PlaceReviewSummary--;
  return o;
}

void checkGoogleMapsPlacesV1PlaceReviewSummary(
  api.GoogleMapsPlacesV1PlaceReviewSummary o,
) {
  buildCounterGoogleMapsPlacesV1PlaceReviewSummary++;
  if (buildCounterGoogleMapsPlacesV1PlaceReviewSummary < 3) {
    checkGoogleTypeLocalizedText(o.disclosureText!);
    unittest.expect(o.flagContentUri!, unittest.equals('foo'));
    unittest.expect(o.reviewsUri!, unittest.equals('foo'));
    checkGoogleTypeLocalizedText(o.text!);
  }
  buildCounterGoogleMapsPlacesV1PlaceReviewSummary--;
}

core.int buildCounterGoogleMapsPlacesV1PlaceSubDestination = 0;
api.GoogleMapsPlacesV1PlaceSubDestination
buildGoogleMapsPlacesV1PlaceSubDestination() {
  final o = api.GoogleMapsPlacesV1PlaceSubDestination();
  buildCounterGoogleMapsPlacesV1PlaceSubDestination++;
  if (buildCounterGoogleMapsPlacesV1PlaceSubDestination < 3) {
    o.id = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleMapsPlacesV1PlaceSubDestination--;
  return o;
}

void checkGoogleMapsPlacesV1PlaceSubDestination(
  api.GoogleMapsPlacesV1PlaceSubDestination o,
) {
  buildCounterGoogleMapsPlacesV1PlaceSubDestination++;
  if (buildCounterGoogleMapsPlacesV1PlaceSubDestination < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterGoogleMapsPlacesV1PlaceSubDestination--;
}

core.int buildCounterGoogleMapsPlacesV1Polyline = 0;
api.GoogleMapsPlacesV1Polyline buildGoogleMapsPlacesV1Polyline() {
  final o = api.GoogleMapsPlacesV1Polyline();
  buildCounterGoogleMapsPlacesV1Polyline++;
  if (buildCounterGoogleMapsPlacesV1Polyline < 3) {
    o.encodedPolyline = 'foo';
  }
  buildCounterGoogleMapsPlacesV1Polyline--;
  return o;
}

void checkGoogleMapsPlacesV1Polyline(api.GoogleMapsPlacesV1Polyline o) {
  buildCounterGoogleMapsPlacesV1Polyline++;
  if (buildCounterGoogleMapsPlacesV1Polyline < 3) {
    unittest.expect(o.encodedPolyline!, unittest.equals('foo'));
  }
  buildCounterGoogleMapsPlacesV1Polyline--;
}

core.int buildCounterGoogleMapsPlacesV1PriceRange = 0;
api.GoogleMapsPlacesV1PriceRange buildGoogleMapsPlacesV1PriceRange() {
  final o = api.GoogleMapsPlacesV1PriceRange();
  buildCounterGoogleMapsPlacesV1PriceRange++;
  if (buildCounterGoogleMapsPlacesV1PriceRange < 3) {
    o.endPrice = buildGoogleTypeMoney();
    o.startPrice = buildGoogleTypeMoney();
  }
  buildCounterGoogleMapsPlacesV1PriceRange--;
  return o;
}

void checkGoogleMapsPlacesV1PriceRange(api.GoogleMapsPlacesV1PriceRange o) {
  buildCounterGoogleMapsPlacesV1PriceRange++;
  if (buildCounterGoogleMapsPlacesV1PriceRange < 3) {
    checkGoogleTypeMoney(o.endPrice!);
    checkGoogleTypeMoney(o.startPrice!);
  }
  buildCounterGoogleMapsPlacesV1PriceRange--;
}

core.int buildCounterGoogleMapsPlacesV1Review = 0;
api.GoogleMapsPlacesV1Review buildGoogleMapsPlacesV1Review() {
  final o = api.GoogleMapsPlacesV1Review();
  buildCounterGoogleMapsPlacesV1Review++;
  if (buildCounterGoogleMapsPlacesV1Review < 3) {
    o.authorAttribution = buildGoogleMapsPlacesV1AuthorAttribution();
    o.flagContentUri = 'foo';
    o.googleMapsUri = 'foo';
    o.name = 'foo';
    o.originalText = buildGoogleTypeLocalizedText();
    o.publishTime = 'foo';
    o.rating = 42.0;
    o.relativePublishTimeDescription = 'foo';
    o.text = buildGoogleTypeLocalizedText();
    o.visitDate = buildGoogleTypeDate();
  }
  buildCounterGoogleMapsPlacesV1Review--;
  return o;
}

void checkGoogleMapsPlacesV1Review(api.GoogleMapsPlacesV1Review o) {
  buildCounterGoogleMapsPlacesV1Review++;
  if (buildCounterGoogleMapsPlacesV1Review < 3) {
    checkGoogleMapsPlacesV1AuthorAttribution(o.authorAttribution!);
    unittest.expect(o.flagContentUri!, unittest.equals('foo'));
    unittest.expect(o.googleMapsUri!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkGoogleTypeLocalizedText(o.originalText!);
    unittest.expect(o.publishTime!, unittest.equals('foo'));
    unittest.expect(o.rating!, unittest.equals(42.0));
    unittest.expect(o.relativePublishTimeDescription!, unittest.equals('foo'));
    checkGoogleTypeLocalizedText(o.text!);
    checkGoogleTypeDate(o.visitDate!);
  }
  buildCounterGoogleMapsPlacesV1Review--;
}

core.int buildCounterGoogleMapsPlacesV1RouteModifiers = 0;
api.GoogleMapsPlacesV1RouteModifiers buildGoogleMapsPlacesV1RouteModifiers() {
  final o = api.GoogleMapsPlacesV1RouteModifiers();
  buildCounterGoogleMapsPlacesV1RouteModifiers++;
  if (buildCounterGoogleMapsPlacesV1RouteModifiers < 3) {
    o.avoidFerries = true;
    o.avoidHighways = true;
    o.avoidIndoor = true;
    o.avoidTolls = true;
  }
  buildCounterGoogleMapsPlacesV1RouteModifiers--;
  return o;
}

void checkGoogleMapsPlacesV1RouteModifiers(
  api.GoogleMapsPlacesV1RouteModifiers o,
) {
  buildCounterGoogleMapsPlacesV1RouteModifiers++;
  if (buildCounterGoogleMapsPlacesV1RouteModifiers < 3) {
    unittest.expect(o.avoidFerries!, unittest.isTrue);
    unittest.expect(o.avoidHighways!, unittest.isTrue);
    unittest.expect(o.avoidIndoor!, unittest.isTrue);
    unittest.expect(o.avoidTolls!, unittest.isTrue);
  }
  buildCounterGoogleMapsPlacesV1RouteModifiers--;
}

core.int buildCounterGoogleMapsPlacesV1RoutingParameters = 0;
api.GoogleMapsPlacesV1RoutingParameters
buildGoogleMapsPlacesV1RoutingParameters() {
  final o = api.GoogleMapsPlacesV1RoutingParameters();
  buildCounterGoogleMapsPlacesV1RoutingParameters++;
  if (buildCounterGoogleMapsPlacesV1RoutingParameters < 3) {
    o.origin = buildGoogleTypeLatLng();
    o.routeModifiers = buildGoogleMapsPlacesV1RouteModifiers();
    o.routingPreference = 'foo';
    o.travelMode = 'foo';
  }
  buildCounterGoogleMapsPlacesV1RoutingParameters--;
  return o;
}

void checkGoogleMapsPlacesV1RoutingParameters(
  api.GoogleMapsPlacesV1RoutingParameters o,
) {
  buildCounterGoogleMapsPlacesV1RoutingParameters++;
  if (buildCounterGoogleMapsPlacesV1RoutingParameters < 3) {
    checkGoogleTypeLatLng(o.origin!);
    checkGoogleMapsPlacesV1RouteModifiers(o.routeModifiers!);
    unittest.expect(o.routingPreference!, unittest.equals('foo'));
    unittest.expect(o.travelMode!, unittest.equals('foo'));
  }
  buildCounterGoogleMapsPlacesV1RoutingParameters--;
}

core.List<api.GoogleMapsPlacesV1RoutingSummaryLeg> buildUnnamed29() => [
  buildGoogleMapsPlacesV1RoutingSummaryLeg(),
  buildGoogleMapsPlacesV1RoutingSummaryLeg(),
];

void checkUnnamed29(core.List<api.GoogleMapsPlacesV1RoutingSummaryLeg> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1RoutingSummaryLeg(o[0]);
  checkGoogleMapsPlacesV1RoutingSummaryLeg(o[1]);
}

core.int buildCounterGoogleMapsPlacesV1RoutingSummary = 0;
api.GoogleMapsPlacesV1RoutingSummary buildGoogleMapsPlacesV1RoutingSummary() {
  final o = api.GoogleMapsPlacesV1RoutingSummary();
  buildCounterGoogleMapsPlacesV1RoutingSummary++;
  if (buildCounterGoogleMapsPlacesV1RoutingSummary < 3) {
    o.directionsUri = 'foo';
    o.legs = buildUnnamed29();
  }
  buildCounterGoogleMapsPlacesV1RoutingSummary--;
  return o;
}

void checkGoogleMapsPlacesV1RoutingSummary(
  api.GoogleMapsPlacesV1RoutingSummary o,
) {
  buildCounterGoogleMapsPlacesV1RoutingSummary++;
  if (buildCounterGoogleMapsPlacesV1RoutingSummary < 3) {
    unittest.expect(o.directionsUri!, unittest.equals('foo'));
    checkUnnamed29(o.legs!);
  }
  buildCounterGoogleMapsPlacesV1RoutingSummary--;
}

core.int buildCounterGoogleMapsPlacesV1RoutingSummaryLeg = 0;
api.GoogleMapsPlacesV1RoutingSummaryLeg
buildGoogleMapsPlacesV1RoutingSummaryLeg() {
  final o = api.GoogleMapsPlacesV1RoutingSummaryLeg();
  buildCounterGoogleMapsPlacesV1RoutingSummaryLeg++;
  if (buildCounterGoogleMapsPlacesV1RoutingSummaryLeg < 3) {
    o.distanceMeters = 42;
    o.duration = 'foo';
  }
  buildCounterGoogleMapsPlacesV1RoutingSummaryLeg--;
  return o;
}

void checkGoogleMapsPlacesV1RoutingSummaryLeg(
  api.GoogleMapsPlacesV1RoutingSummaryLeg o,
) {
  buildCounterGoogleMapsPlacesV1RoutingSummaryLeg++;
  if (buildCounterGoogleMapsPlacesV1RoutingSummaryLeg < 3) {
    unittest.expect(o.distanceMeters!, unittest.equals(42));
    unittest.expect(o.duration!, unittest.equals('foo'));
  }
  buildCounterGoogleMapsPlacesV1RoutingSummaryLeg--;
}

core.List<core.String> buildUnnamed30() => ['foo', 'foo'];

void checkUnnamed30(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed31() => ['foo', 'foo'];

void checkUnnamed31(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed32() => ['foo', 'foo'];

void checkUnnamed32(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed33() => ['foo', 'foo'];

void checkUnnamed33(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleMapsPlacesV1SearchNearbyRequest = 0;
api.GoogleMapsPlacesV1SearchNearbyRequest
buildGoogleMapsPlacesV1SearchNearbyRequest() {
  final o = api.GoogleMapsPlacesV1SearchNearbyRequest();
  buildCounterGoogleMapsPlacesV1SearchNearbyRequest++;
  if (buildCounterGoogleMapsPlacesV1SearchNearbyRequest < 3) {
    o.excludedPrimaryTypes = buildUnnamed30();
    o.excludedTypes = buildUnnamed31();
    o.includedPrimaryTypes = buildUnnamed32();
    o.includedTypes = buildUnnamed33();
    o.languageCode = 'foo';
    o.locationRestriction =
        buildGoogleMapsPlacesV1SearchNearbyRequestLocationRestriction();
    o.maxResultCount = 42;
    o.rankPreference = 'foo';
    o.regionCode = 'foo';
    o.routingParameters = buildGoogleMapsPlacesV1RoutingParameters();
  }
  buildCounterGoogleMapsPlacesV1SearchNearbyRequest--;
  return o;
}

void checkGoogleMapsPlacesV1SearchNearbyRequest(
  api.GoogleMapsPlacesV1SearchNearbyRequest o,
) {
  buildCounterGoogleMapsPlacesV1SearchNearbyRequest++;
  if (buildCounterGoogleMapsPlacesV1SearchNearbyRequest < 3) {
    checkUnnamed30(o.excludedPrimaryTypes!);
    checkUnnamed31(o.excludedTypes!);
    checkUnnamed32(o.includedPrimaryTypes!);
    checkUnnamed33(o.includedTypes!);
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    checkGoogleMapsPlacesV1SearchNearbyRequestLocationRestriction(
      o.locationRestriction!,
    );
    unittest.expect(o.maxResultCount!, unittest.equals(42));
    unittest.expect(o.rankPreference!, unittest.equals('foo'));
    unittest.expect(o.regionCode!, unittest.equals('foo'));
    checkGoogleMapsPlacesV1RoutingParameters(o.routingParameters!);
  }
  buildCounterGoogleMapsPlacesV1SearchNearbyRequest--;
}

core.int buildCounterGoogleMapsPlacesV1SearchNearbyRequestLocationRestriction =
    0;
api.GoogleMapsPlacesV1SearchNearbyRequestLocationRestriction
buildGoogleMapsPlacesV1SearchNearbyRequestLocationRestriction() {
  final o = api.GoogleMapsPlacesV1SearchNearbyRequestLocationRestriction();
  buildCounterGoogleMapsPlacesV1SearchNearbyRequestLocationRestriction++;
  if (buildCounterGoogleMapsPlacesV1SearchNearbyRequestLocationRestriction <
      3) {
    o.circle = buildGoogleMapsPlacesV1Circle();
  }
  buildCounterGoogleMapsPlacesV1SearchNearbyRequestLocationRestriction--;
  return o;
}

void checkGoogleMapsPlacesV1SearchNearbyRequestLocationRestriction(
  api.GoogleMapsPlacesV1SearchNearbyRequestLocationRestriction o,
) {
  buildCounterGoogleMapsPlacesV1SearchNearbyRequestLocationRestriction++;
  if (buildCounterGoogleMapsPlacesV1SearchNearbyRequestLocationRestriction <
      3) {
    checkGoogleMapsPlacesV1Circle(o.circle!);
  }
  buildCounterGoogleMapsPlacesV1SearchNearbyRequestLocationRestriction--;
}

core.List<api.GoogleMapsPlacesV1Place> buildUnnamed34() => [
  buildGoogleMapsPlacesV1Place(),
  buildGoogleMapsPlacesV1Place(),
];

void checkUnnamed34(core.List<api.GoogleMapsPlacesV1Place> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1Place(o[0]);
  checkGoogleMapsPlacesV1Place(o[1]);
}

core.List<api.GoogleMapsPlacesV1RoutingSummary> buildUnnamed35() => [
  buildGoogleMapsPlacesV1RoutingSummary(),
  buildGoogleMapsPlacesV1RoutingSummary(),
];

void checkUnnamed35(core.List<api.GoogleMapsPlacesV1RoutingSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1RoutingSummary(o[0]);
  checkGoogleMapsPlacesV1RoutingSummary(o[1]);
}

core.int buildCounterGoogleMapsPlacesV1SearchNearbyResponse = 0;
api.GoogleMapsPlacesV1SearchNearbyResponse
buildGoogleMapsPlacesV1SearchNearbyResponse() {
  final o = api.GoogleMapsPlacesV1SearchNearbyResponse();
  buildCounterGoogleMapsPlacesV1SearchNearbyResponse++;
  if (buildCounterGoogleMapsPlacesV1SearchNearbyResponse < 3) {
    o.places = buildUnnamed34();
    o.routingSummaries = buildUnnamed35();
  }
  buildCounterGoogleMapsPlacesV1SearchNearbyResponse--;
  return o;
}

void checkGoogleMapsPlacesV1SearchNearbyResponse(
  api.GoogleMapsPlacesV1SearchNearbyResponse o,
) {
  buildCounterGoogleMapsPlacesV1SearchNearbyResponse++;
  if (buildCounterGoogleMapsPlacesV1SearchNearbyResponse < 3) {
    checkUnnamed34(o.places!);
    checkUnnamed35(o.routingSummaries!);
  }
  buildCounterGoogleMapsPlacesV1SearchNearbyResponse--;
}

core.List<core.String> buildUnnamed36() => ['foo', 'foo'];

void checkUnnamed36(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleMapsPlacesV1SearchTextRequest = 0;
api.GoogleMapsPlacesV1SearchTextRequest
buildGoogleMapsPlacesV1SearchTextRequest() {
  final o = api.GoogleMapsPlacesV1SearchTextRequest();
  buildCounterGoogleMapsPlacesV1SearchTextRequest++;
  if (buildCounterGoogleMapsPlacesV1SearchTextRequest < 3) {
    o.evOptions = buildGoogleMapsPlacesV1SearchTextRequestEVOptions();
    o.includePureServiceAreaBusinesses = true;
    o.includedType = 'foo';
    o.languageCode = 'foo';
    o.locationBias = buildGoogleMapsPlacesV1SearchTextRequestLocationBias();
    o.locationRestriction =
        buildGoogleMapsPlacesV1SearchTextRequestLocationRestriction();
    o.maxResultCount = 42;
    o.minRating = 42.0;
    o.openNow = true;
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.priceLevels = buildUnnamed36();
    o.rankPreference = 'foo';
    o.regionCode = 'foo';
    o.routingParameters = buildGoogleMapsPlacesV1RoutingParameters();
    o.searchAlongRouteParameters =
        buildGoogleMapsPlacesV1SearchTextRequestSearchAlongRouteParameters();
    o.strictTypeFiltering = true;
    o.textQuery = 'foo';
  }
  buildCounterGoogleMapsPlacesV1SearchTextRequest--;
  return o;
}

void checkGoogleMapsPlacesV1SearchTextRequest(
  api.GoogleMapsPlacesV1SearchTextRequest o,
) {
  buildCounterGoogleMapsPlacesV1SearchTextRequest++;
  if (buildCounterGoogleMapsPlacesV1SearchTextRequest < 3) {
    checkGoogleMapsPlacesV1SearchTextRequestEVOptions(o.evOptions!);
    unittest.expect(o.includePureServiceAreaBusinesses!, unittest.isTrue);
    unittest.expect(o.includedType!, unittest.equals('foo'));
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    checkGoogleMapsPlacesV1SearchTextRequestLocationBias(o.locationBias!);
    checkGoogleMapsPlacesV1SearchTextRequestLocationRestriction(
      o.locationRestriction!,
    );
    unittest.expect(o.maxResultCount!, unittest.equals(42));
    unittest.expect(o.minRating!, unittest.equals(42.0));
    unittest.expect(o.openNow!, unittest.isTrue);
    unittest.expect(o.pageSize!, unittest.equals(42));
    unittest.expect(o.pageToken!, unittest.equals('foo'));
    checkUnnamed36(o.priceLevels!);
    unittest.expect(o.rankPreference!, unittest.equals('foo'));
    unittest.expect(o.regionCode!, unittest.equals('foo'));
    checkGoogleMapsPlacesV1RoutingParameters(o.routingParameters!);
    checkGoogleMapsPlacesV1SearchTextRequestSearchAlongRouteParameters(
      o.searchAlongRouteParameters!,
    );
    unittest.expect(o.strictTypeFiltering!, unittest.isTrue);
    unittest.expect(o.textQuery!, unittest.equals('foo'));
  }
  buildCounterGoogleMapsPlacesV1SearchTextRequest--;
}

core.List<core.String> buildUnnamed37() => ['foo', 'foo'];

void checkUnnamed37(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleMapsPlacesV1SearchTextRequestEVOptions = 0;
api.GoogleMapsPlacesV1SearchTextRequestEVOptions
buildGoogleMapsPlacesV1SearchTextRequestEVOptions() {
  final o = api.GoogleMapsPlacesV1SearchTextRequestEVOptions();
  buildCounterGoogleMapsPlacesV1SearchTextRequestEVOptions++;
  if (buildCounterGoogleMapsPlacesV1SearchTextRequestEVOptions < 3) {
    o.connectorTypes = buildUnnamed37();
    o.minimumChargingRateKw = 42.0;
  }
  buildCounterGoogleMapsPlacesV1SearchTextRequestEVOptions--;
  return o;
}

void checkGoogleMapsPlacesV1SearchTextRequestEVOptions(
  api.GoogleMapsPlacesV1SearchTextRequestEVOptions o,
) {
  buildCounterGoogleMapsPlacesV1SearchTextRequestEVOptions++;
  if (buildCounterGoogleMapsPlacesV1SearchTextRequestEVOptions < 3) {
    checkUnnamed37(o.connectorTypes!);
    unittest.expect(o.minimumChargingRateKw!, unittest.equals(42.0));
  }
  buildCounterGoogleMapsPlacesV1SearchTextRequestEVOptions--;
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
  api.GoogleMapsPlacesV1SearchTextRequestLocationBias o,
) {
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
  api.GoogleMapsPlacesV1SearchTextRequestLocationRestriction o,
) {
  buildCounterGoogleMapsPlacesV1SearchTextRequestLocationRestriction++;
  if (buildCounterGoogleMapsPlacesV1SearchTextRequestLocationRestriction < 3) {
    checkGoogleGeoTypeViewport(o.rectangle!);
  }
  buildCounterGoogleMapsPlacesV1SearchTextRequestLocationRestriction--;
}

core.int
buildCounterGoogleMapsPlacesV1SearchTextRequestSearchAlongRouteParameters = 0;
api.GoogleMapsPlacesV1SearchTextRequestSearchAlongRouteParameters
buildGoogleMapsPlacesV1SearchTextRequestSearchAlongRouteParameters() {
  final o = api.GoogleMapsPlacesV1SearchTextRequestSearchAlongRouteParameters();
  buildCounterGoogleMapsPlacesV1SearchTextRequestSearchAlongRouteParameters++;
  if (buildCounterGoogleMapsPlacesV1SearchTextRequestSearchAlongRouteParameters <
      3) {
    o.polyline = buildGoogleMapsPlacesV1Polyline();
  }
  buildCounterGoogleMapsPlacesV1SearchTextRequestSearchAlongRouteParameters--;
  return o;
}

void checkGoogleMapsPlacesV1SearchTextRequestSearchAlongRouteParameters(
  api.GoogleMapsPlacesV1SearchTextRequestSearchAlongRouteParameters o,
) {
  buildCounterGoogleMapsPlacesV1SearchTextRequestSearchAlongRouteParameters++;
  if (buildCounterGoogleMapsPlacesV1SearchTextRequestSearchAlongRouteParameters <
      3) {
    checkGoogleMapsPlacesV1Polyline(o.polyline!);
  }
  buildCounterGoogleMapsPlacesV1SearchTextRequestSearchAlongRouteParameters--;
}

core.List<api.GoogleMapsPlacesV1ContextualContent> buildUnnamed38() => [
  buildGoogleMapsPlacesV1ContextualContent(),
  buildGoogleMapsPlacesV1ContextualContent(),
];

void checkUnnamed38(core.List<api.GoogleMapsPlacesV1ContextualContent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1ContextualContent(o[0]);
  checkGoogleMapsPlacesV1ContextualContent(o[1]);
}

core.List<api.GoogleMapsPlacesV1Place> buildUnnamed39() => [
  buildGoogleMapsPlacesV1Place(),
  buildGoogleMapsPlacesV1Place(),
];

void checkUnnamed39(core.List<api.GoogleMapsPlacesV1Place> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1Place(o[0]);
  checkGoogleMapsPlacesV1Place(o[1]);
}

core.List<api.GoogleMapsPlacesV1RoutingSummary> buildUnnamed40() => [
  buildGoogleMapsPlacesV1RoutingSummary(),
  buildGoogleMapsPlacesV1RoutingSummary(),
];

void checkUnnamed40(core.List<api.GoogleMapsPlacesV1RoutingSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1RoutingSummary(o[0]);
  checkGoogleMapsPlacesV1RoutingSummary(o[1]);
}

core.int buildCounterGoogleMapsPlacesV1SearchTextResponse = 0;
api.GoogleMapsPlacesV1SearchTextResponse
buildGoogleMapsPlacesV1SearchTextResponse() {
  final o = api.GoogleMapsPlacesV1SearchTextResponse();
  buildCounterGoogleMapsPlacesV1SearchTextResponse++;
  if (buildCounterGoogleMapsPlacesV1SearchTextResponse < 3) {
    o.contextualContents = buildUnnamed38();
    o.nextPageToken = 'foo';
    o.places = buildUnnamed39();
    o.routingSummaries = buildUnnamed40();
    o.searchUri = 'foo';
  }
  buildCounterGoogleMapsPlacesV1SearchTextResponse--;
  return o;
}

void checkGoogleMapsPlacesV1SearchTextResponse(
  api.GoogleMapsPlacesV1SearchTextResponse o,
) {
  buildCounterGoogleMapsPlacesV1SearchTextResponse++;
  if (buildCounterGoogleMapsPlacesV1SearchTextResponse < 3) {
    checkUnnamed38(o.contextualContents!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed39(o.places!);
    checkUnnamed40(o.routingSummaries!);
    unittest.expect(o.searchUri!, unittest.equals('foo'));
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
    unittest.expect(o.day!, unittest.equals(42));
    unittest.expect(o.month!, unittest.equals(42));
    unittest.expect(o.year!, unittest.equals(42));
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
    unittest.expect(o.latitude!, unittest.equals(42.0));
    unittest.expect(o.longitude!, unittest.equals(42.0));
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
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterGoogleTypeLocalizedText--;
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
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
    unittest.expect(o.nanos!, unittest.equals(42));
    unittest.expect(o.units!, unittest.equals('foo'));
  }
  buildCounterGoogleTypeMoney--;
}

core.List<core.String> buildUnnamed41() => ['foo', 'foo'];

void checkUnnamed41(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed42() => ['foo', 'foo'];

void checkUnnamed42(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGoogleTypePostalAddress = 0;
api.GoogleTypePostalAddress buildGoogleTypePostalAddress() {
  final o = api.GoogleTypePostalAddress();
  buildCounterGoogleTypePostalAddress++;
  if (buildCounterGoogleTypePostalAddress < 3) {
    o.addressLines = buildUnnamed41();
    o.administrativeArea = 'foo';
    o.languageCode = 'foo';
    o.locality = 'foo';
    o.organization = 'foo';
    o.postalCode = 'foo';
    o.recipients = buildUnnamed42();
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
    checkUnnamed41(o.addressLines!);
    unittest.expect(o.administrativeArea!, unittest.equals('foo'));
    unittest.expect(o.languageCode!, unittest.equals('foo'));
    unittest.expect(o.locality!, unittest.equals('foo'));
    unittest.expect(o.organization!, unittest.equals('foo'));
    unittest.expect(o.postalCode!, unittest.equals('foo'));
    checkUnnamed42(o.recipients!);
    unittest.expect(o.regionCode!, unittest.equals('foo'));
    unittest.expect(o.revision!, unittest.equals(42));
    unittest.expect(o.sortingCode!, unittest.equals('foo'));
    unittest.expect(o.sublocality!, unittest.equals('foo'));
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
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterGoogleTypeTimeZone--;
}

void main() {
  unittest.group('obj-schema-GoogleGeoTypeViewport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleGeoTypeViewport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleGeoTypeViewport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleGeoTypeViewport(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1AddressDescriptor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1AddressDescriptor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1AddressDescriptor.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1AddressDescriptor(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1AddressDescriptorArea', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1AddressDescriptorArea();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1AddressDescriptorArea.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1AddressDescriptorArea(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1AddressDescriptorLandmark', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1AddressDescriptorLandmark();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1AddressDescriptorLandmark.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1AddressDescriptorLandmark(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1AuthorAttribution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1AuthorAttribution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1AuthorAttribution.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1AuthorAttribution(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1AutocompletePlacesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1AutocompletePlacesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1AutocompletePlacesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1AutocompletePlacesRequest(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleMapsPlacesV1AutocompletePlacesRequestLocationBias',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleMapsPlacesV1AutocompletePlacesRequestLocationBias();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleMapsPlacesV1AutocompletePlacesRequestLocationBias.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleMapsPlacesV1AutocompletePlacesRequestLocationBias(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleMapsPlacesV1AutocompletePlacesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1AutocompletePlacesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1AutocompletePlacesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1AutocompletePlacesResponse(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleMapsPlacesV1AutocompletePlacesResponseSuggestion',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestion();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestion.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestion(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleMapsPlacesV1Circle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1Circle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1Circle.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1Circle(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1ContentBlock', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1ContentBlock();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1ContentBlock.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1ContentBlock(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1ContextualContent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1ContextualContent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1ContextualContent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1ContextualContent(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleMapsPlacesV1ContextualContentJustification',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleMapsPlacesV1ContextualContentJustification();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleMapsPlacesV1ContextualContentJustification.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleMapsPlacesV1ContextualContentJustification(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleMapsPlacesV1ContextualContentJustificationBusinessAvailabilityAttributesJustification',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleMapsPlacesV1ContextualContentJustificationBusinessAvailabilityAttributesJustification();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleMapsPlacesV1ContextualContentJustificationBusinessAvailabilityAttributesJustification.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleMapsPlacesV1ContextualContentJustificationBusinessAvailabilityAttributesJustification(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleMapsPlacesV1ContextualContentJustificationReviewJustification',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleMapsPlacesV1ContextualContentJustificationReviewJustification();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleMapsPlacesV1ContextualContentJustificationReviewJustification.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleMapsPlacesV1ContextualContentJustificationReviewJustification(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedText',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedText();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedText.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedText(
          od,
        );
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedTextHighlightedTextRange',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedTextHighlightedTextRange();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedTextHighlightedTextRange.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleMapsPlacesV1ContextualContentJustificationReviewJustificationHighlightedTextHighlightedTextRange(
          od,
        );
      });
    },
  );

  unittest.group('obj-schema-GoogleMapsPlacesV1EVChargeOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1EVChargeOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1EVChargeOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1EVChargeOptions(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleMapsPlacesV1EVChargeOptionsConnectorAggregation',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleMapsPlacesV1EVChargeOptionsConnectorAggregation();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleMapsPlacesV1EVChargeOptionsConnectorAggregation.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleMapsPlacesV1EVChargeOptionsConnectorAggregation(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleMapsPlacesV1FuelOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1FuelOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1FuelOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1FuelOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1FuelOptionsFuelPrice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1FuelOptionsFuelPrice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1FuelOptionsFuelPrice.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1FuelOptionsFuelPrice(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1Photo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1Photo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1Photo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1Photo(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1PhotoMedia', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1PhotoMedia();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1PhotoMedia.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1PhotoMedia(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1Place', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1Place();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1Place.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1Place(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1PlaceAccessibilityOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1PlaceAccessibilityOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1PlaceAccessibilityOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1PlaceAccessibilityOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1PlaceAddressComponent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1PlaceAddressComponent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1PlaceAddressComponent.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1PlaceAddressComponent(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1PlaceAttribution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1PlaceAttribution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1PlaceAttribution.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1PlaceAttribution(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1PlaceConsumerAlert', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1PlaceConsumerAlert();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1PlaceConsumerAlert.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1PlaceConsumerAlert(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1PlaceConsumerAlertDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1PlaceConsumerAlertDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1PlaceConsumerAlertDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1PlaceConsumerAlertDetails(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleMapsPlacesV1PlaceConsumerAlertDetailsLink',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleMapsPlacesV1PlaceConsumerAlertDetailsLink();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleMapsPlacesV1PlaceConsumerAlertDetailsLink.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleMapsPlacesV1PlaceConsumerAlertDetailsLink(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleMapsPlacesV1PlaceContainingPlace', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1PlaceContainingPlace();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1PlaceContainingPlace.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1PlaceContainingPlace(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleMapsPlacesV1PlaceEvChargeAmenitySummary',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleMapsPlacesV1PlaceEvChargeAmenitySummary();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleMapsPlacesV1PlaceEvChargeAmenitySummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleMapsPlacesV1PlaceEvChargeAmenitySummary(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleMapsPlacesV1PlaceGenerativeSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1PlaceGenerativeSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1PlaceGenerativeSummary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1PlaceGenerativeSummary(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1PlaceGoogleMapsLinks', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1PlaceGoogleMapsLinks();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1PlaceGoogleMapsLinks.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1PlaceGoogleMapsLinks(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1PlaceNeighborhoodSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1PlaceNeighborhoodSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1PlaceNeighborhoodSummary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1PlaceNeighborhoodSummary(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1PlaceOpeningHours', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1PlaceOpeningHours();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1PlaceOpeningHours.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1PlaceOpeningHours(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1PlaceOpeningHoursPeriod', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1PlaceOpeningHoursPeriod();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1PlaceOpeningHoursPeriod.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1PlaceOpeningHoursPeriod(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleMapsPlacesV1PlaceOpeningHoursPeriodPoint(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleMapsPlacesV1PlaceOpeningHoursSpecialDay();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleMapsPlacesV1PlaceOpeningHoursSpecialDay(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleMapsPlacesV1PlaceParkingOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1PlaceParkingOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1PlaceParkingOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1PlaceParkingOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1PlacePaymentOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1PlacePaymentOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1PlacePaymentOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1PlacePaymentOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1PlacePlusCode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1PlacePlusCode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1PlacePlusCode.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1PlacePlusCode(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1PlaceReviewSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1PlaceReviewSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1PlaceReviewSummary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1PlaceReviewSummary(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1PlaceSubDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1PlaceSubDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1PlaceSubDestination.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1PlaceSubDestination(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1Polyline', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1Polyline();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1Polyline.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1Polyline(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1PriceRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1PriceRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1PriceRange.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1PriceRange(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1Review', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1Review();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1Review.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1Review(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1RouteModifiers', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1RouteModifiers();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1RouteModifiers.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1RouteModifiers(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1RoutingParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1RoutingParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1RoutingParameters.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1RoutingParameters(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1RoutingSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1RoutingSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1RoutingSummary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1RoutingSummary(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1RoutingSummaryLeg', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1RoutingSummaryLeg();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1RoutingSummaryLeg.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1RoutingSummaryLeg(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1SearchNearbyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1SearchNearbyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1SearchNearbyRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1SearchNearbyRequest(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleMapsPlacesV1SearchNearbyRequestLocationRestriction',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleMapsPlacesV1SearchNearbyRequestLocationRestriction();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleMapsPlacesV1SearchNearbyRequestLocationRestriction.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleMapsPlacesV1SearchNearbyRequestLocationRestriction(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleMapsPlacesV1SearchNearbyResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1SearchNearbyResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1SearchNearbyResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1SearchNearbyResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1SearchTextRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1SearchTextRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1SearchTextRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1SearchTextRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1SearchTextRequestEVOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1SearchTextRequestEVOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1SearchTextRequestEVOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1SearchTextRequestEVOptions(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleMapsPlacesV1SearchTextRequestLocationBias',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleMapsPlacesV1SearchTextRequestLocationBias();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.GoogleMapsPlacesV1SearchTextRequestLocationBias.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleMapsPlacesV1SearchTextRequestLocationBias(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleMapsPlacesV1SearchTextRequestLocationRestriction',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleMapsPlacesV1SearchTextRequestLocationRestriction();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleMapsPlacesV1SearchTextRequestLocationRestriction.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleMapsPlacesV1SearchTextRequestLocationRestriction(od);
      });
    },
  );

  unittest.group(
    'obj-schema-GoogleMapsPlacesV1SearchTextRequestSearchAlongRouteParameters',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildGoogleMapsPlacesV1SearchTextRequestSearchAlongRouteParameters();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleMapsPlacesV1SearchTextRequestSearchAlongRouteParameters.fromJson(
              oJson as core.Map<core.String, core.dynamic>,
            );
        checkGoogleMapsPlacesV1SearchTextRequestSearchAlongRouteParameters(od);
      });
    },
  );

  unittest.group('obj-schema-GoogleMapsPlacesV1SearchTextResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1SearchTextResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1SearchTextResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleMapsPlacesV1SearchTextResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeDate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeDate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleTypeDate(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeLatLng', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeLatLng();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeLatLng.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleTypeLatLng(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeLocalizedText', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeLocalizedText();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeLocalizedText.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleTypeLocalizedText(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeMoney', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeMoney();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeMoney.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleTypeMoney(od);
    });
  });

  unittest.group('obj-schema-GoogleTypePostalAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypePostalAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypePostalAddress.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleTypePostalAddress(od);
    });
  });

  unittest.group('obj-schema-GoogleTypeTimeZone', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeTimeZone();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeTimeZone.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleTypeTimeZone(od);
    });
  });

  unittest.group('resource-PlacesResource', () {
    unittest.test('method--autocomplete', () async {
      final mock = HttpServerMock();
      final res = api.PlacesApi(mock).places;
      final arg_request = buildGoogleMapsPlacesV1AutocompletePlacesRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleMapsPlacesV1AutocompletePlacesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleMapsPlacesV1AutocompletePlacesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 22),
            unittest.equals('v1/places:autocomplete'),
          );
          pathOffset += 22;

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
            buildGoogleMapsPlacesV1AutocompletePlacesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.autocomplete(
        arg_request,
        $fields: arg_$fields,
      );
      checkGoogleMapsPlacesV1AutocompletePlacesResponse(
        response as api.GoogleMapsPlacesV1AutocompletePlacesResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PlacesApi(mock).places;
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
      final arg_regionCode = 'foo';
      final arg_sessionToken = 'foo';
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
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
          );
          unittest.expect(
            queryMap['regionCode']!.first,
            unittest.equals(arg_regionCode),
          );
          unittest.expect(
            queryMap['sessionToken']!.first,
            unittest.equals(arg_sessionToken),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleMapsPlacesV1Place());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        languageCode: arg_languageCode,
        regionCode: arg_regionCode,
        sessionToken: arg_sessionToken,
        $fields: arg_$fields,
      );
      checkGoogleMapsPlacesV1Place(response as api.GoogleMapsPlacesV1Place);
    });

    unittest.test('method--searchNearby', () async {
      final mock = HttpServerMock();
      final res = api.PlacesApi(mock).places;
      final arg_request = buildGoogleMapsPlacesV1SearchNearbyRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleMapsPlacesV1SearchNearbyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGoogleMapsPlacesV1SearchNearbyRequest(obj);

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
            path.substring(pathOffset, pathOffset + 22),
            unittest.equals('v1/places:searchNearby'),
          );
          pathOffset += 22;

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
            buildGoogleMapsPlacesV1SearchNearbyResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.searchNearby(
        arg_request,
        $fields: arg_$fields,
      );
      checkGoogleMapsPlacesV1SearchNearbyResponse(
        response as api.GoogleMapsPlacesV1SearchNearbyResponse,
      );
    });

    unittest.test('method--searchText', () async {
      final mock = HttpServerMock();
      final res = api.PlacesApi(mock).places;
      final arg_request = buildGoogleMapsPlacesV1SearchTextRequest();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GoogleMapsPlacesV1SearchTextRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildGoogleMapsPlacesV1SearchTextResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.searchText(arg_request, $fields: arg_$fields);
      checkGoogleMapsPlacesV1SearchTextResponse(
        response as api.GoogleMapsPlacesV1SearchTextResponse,
      );
    });
  });

  unittest.group('resource-PlacesPhotosResource', () {
    unittest.test('method--getMedia', () async {
      final mock = HttpServerMock();
      final res = api.PlacesApi(mock).places.photos;
      final arg_name = 'foo';
      final arg_maxHeightPx = 42;
      final arg_maxWidthPx = 42;
      final arg_skipHttpRedirect = true;
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
            core.int.parse(queryMap['maxHeightPx']!.first),
            unittest.equals(arg_maxHeightPx),
          );
          unittest.expect(
            core.int.parse(queryMap['maxWidthPx']!.first),
            unittest.equals(arg_maxWidthPx),
          );
          unittest.expect(
            queryMap['skipHttpRedirect']!.first,
            unittest.equals('$arg_skipHttpRedirect'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildGoogleMapsPlacesV1PhotoMedia());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getMedia(
        arg_name,
        maxHeightPx: arg_maxHeightPx,
        maxWidthPx: arg_maxWidthPx,
        skipHttpRedirect: arg_skipHttpRedirect,
        $fields: arg_$fields,
      );
      checkGoogleMapsPlacesV1PhotoMedia(
        response as api.GoogleMapsPlacesV1PhotoMedia,
      );
    });
  });
}
