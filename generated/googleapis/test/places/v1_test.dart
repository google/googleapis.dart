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

core.int buildCounterGoogleMapsPlacesV1AutocompletePlacesRequest = 0;
api.GoogleMapsPlacesV1AutocompletePlacesRequest
    buildGoogleMapsPlacesV1AutocompletePlacesRequest() {
  final o = api.GoogleMapsPlacesV1AutocompletePlacesRequest();
  buildCounterGoogleMapsPlacesV1AutocompletePlacesRequest++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesRequest < 3) {
    o.includeQueryPredictions = true;
    o.includedPrimaryTypes = buildUnnamed0();
    o.includedRegionCodes = buildUnnamed1();
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
    api.GoogleMapsPlacesV1AutocompletePlacesRequest o) {
  buildCounterGoogleMapsPlacesV1AutocompletePlacesRequest++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesRequest < 3) {
    unittest.expect(o.includeQueryPredictions!, unittest.isTrue);
    checkUnnamed0(o.includedPrimaryTypes!);
    checkUnnamed1(o.includedRegionCodes!);
    unittest.expect(
      o.input!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inputOffset!,
      unittest.equals(42),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    checkGoogleMapsPlacesV1AutocompletePlacesRequestLocationBias(
        o.locationBias!);
    checkGoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction(
        o.locationRestriction!);
    checkGoogleTypeLatLng(o.origin!);
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sessionToken!,
      unittest.equals('foo'),
    );
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
    api.GoogleMapsPlacesV1AutocompletePlacesRequestLocationBias o) {
  buildCounterGoogleMapsPlacesV1AutocompletePlacesRequestLocationBias++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesRequestLocationBias < 3) {
    checkGoogleMapsPlacesV1Circle(o.circle!);
    checkGoogleGeoTypeViewport(o.rectangle!);
  }
  buildCounterGoogleMapsPlacesV1AutocompletePlacesRequestLocationBias--;
}

core.int
    buildCounterGoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction =
    0;
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
    api.GoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction o) {
  buildCounterGoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction <
      3) {
    checkGoogleMapsPlacesV1Circle(o.circle!);
    checkGoogleGeoTypeViewport(o.rectangle!);
  }
  buildCounterGoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction--;
}

core.List<api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestion>
    buildUnnamed2() => [
          buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestion(),
          buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestion(),
        ];

void checkUnnamed2(
    core.List<api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestion> o) {
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
    o.suggestions = buildUnnamed2();
  }
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponse--;
  return o;
}

void checkGoogleMapsPlacesV1AutocompletePlacesResponse(
    api.GoogleMapsPlacesV1AutocompletePlacesResponse o) {
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponse++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesResponse < 3) {
    checkUnnamed2(o.suggestions!);
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
    api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestion o) {
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestion++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestion < 3) {
    checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction(
        o.placePrediction!);
    checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction(
        o.queryPrediction!);
  }
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestion--;
}

core.List<api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange>
    buildUnnamed3() => [
          buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange(),
          buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange(),
        ];

void checkUnnamed3(
    core.List<
            api
            .GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange(o[0]);
  checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange(o[1]);
}

core.int
    buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText =
    0;
api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText
    buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText() {
  final o = api
      .GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText();
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText <
      3) {
    o.matches = buildUnnamed3();
    o.text = 'foo';
  }
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText--;
  return o;
}

void checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText(
    api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText
        o) {
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText <
      3) {
    checkUnnamed3(o.matches!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText--;
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

core.int
    buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction =
    0;
api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction
    buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction() {
  final o = api
      .GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction();
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
    o.types = buildUnnamed4();
  }
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction--;
  return o;
}

void checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction(
    api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction
        o) {
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction <
      3) {
    unittest.expect(
      o.distanceMeters!,
      unittest.equals(42),
    );
    unittest.expect(
      o.place!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.placeId!,
      unittest.equals('foo'),
    );
    checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat(
        o.structuredFormat!);
    checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText(
        o.text!);
    checkUnnamed4(o.types!);
  }
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction--;
}

core.int
    buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction =
    0;
api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction
    buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction() {
  final o = api
      .GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction();
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
    api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction
        o) {
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction <
      3) {
    checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat(
        o.structuredFormat!);
    checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText(
        o.text!);
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
    api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange o) {
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange <
      3) {
    unittest.expect(
      o.endOffset!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startOffset!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange--;
}

core.int
    buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat =
    0;
api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat
    buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat() {
  final o = api
      .GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat();
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

void checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat(
    api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat
        o) {
  buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat++;
  if (buildCounterGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat <
      3) {
    checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText(
        o.mainText!);
    checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText(
        o.secondaryText!);
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
    unittest.expect(
      o.radius!,
      unittest.equals(42.0),
    );
  }
  buildCounterGoogleMapsPlacesV1Circle--;
}

core.List<api.GoogleMapsPlacesV1EVChargeOptionsConnectorAggregation>
    buildUnnamed5() => [
          buildGoogleMapsPlacesV1EVChargeOptionsConnectorAggregation(),
          buildGoogleMapsPlacesV1EVChargeOptionsConnectorAggregation(),
        ];

void checkUnnamed5(
    core.List<api.GoogleMapsPlacesV1EVChargeOptionsConnectorAggregation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1EVChargeOptionsConnectorAggregation(o[0]);
  checkGoogleMapsPlacesV1EVChargeOptionsConnectorAggregation(o[1]);
}

core.int buildCounterGoogleMapsPlacesV1EVChargeOptions = 0;
api.GoogleMapsPlacesV1EVChargeOptions buildGoogleMapsPlacesV1EVChargeOptions() {
  final o = api.GoogleMapsPlacesV1EVChargeOptions();
  buildCounterGoogleMapsPlacesV1EVChargeOptions++;
  if (buildCounterGoogleMapsPlacesV1EVChargeOptions < 3) {
    o.connectorAggregation = buildUnnamed5();
    o.connectorCount = 42;
  }
  buildCounterGoogleMapsPlacesV1EVChargeOptions--;
  return o;
}

void checkGoogleMapsPlacesV1EVChargeOptions(
    api.GoogleMapsPlacesV1EVChargeOptions o) {
  buildCounterGoogleMapsPlacesV1EVChargeOptions++;
  if (buildCounterGoogleMapsPlacesV1EVChargeOptions < 3) {
    checkUnnamed5(o.connectorAggregation!);
    unittest.expect(
      o.connectorCount!,
      unittest.equals(42),
    );
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
    api.GoogleMapsPlacesV1EVChargeOptionsConnectorAggregation o) {
  buildCounterGoogleMapsPlacesV1EVChargeOptionsConnectorAggregation++;
  if (buildCounterGoogleMapsPlacesV1EVChargeOptionsConnectorAggregation < 3) {
    unittest.expect(
      o.availabilityLastUpdateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.availableCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.count!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maxChargeRateKw!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.outOfServiceCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleMapsPlacesV1EVChargeOptionsConnectorAggregation--;
}

core.List<api.GoogleMapsPlacesV1FuelOptionsFuelPrice> buildUnnamed6() => [
      buildGoogleMapsPlacesV1FuelOptionsFuelPrice(),
      buildGoogleMapsPlacesV1FuelOptionsFuelPrice(),
    ];

void checkUnnamed6(core.List<api.GoogleMapsPlacesV1FuelOptionsFuelPrice> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1FuelOptionsFuelPrice(o[0]);
  checkGoogleMapsPlacesV1FuelOptionsFuelPrice(o[1]);
}

core.int buildCounterGoogleMapsPlacesV1FuelOptions = 0;
api.GoogleMapsPlacesV1FuelOptions buildGoogleMapsPlacesV1FuelOptions() {
  final o = api.GoogleMapsPlacesV1FuelOptions();
  buildCounterGoogleMapsPlacesV1FuelOptions++;
  if (buildCounterGoogleMapsPlacesV1FuelOptions < 3) {
    o.fuelPrices = buildUnnamed6();
  }
  buildCounterGoogleMapsPlacesV1FuelOptions--;
  return o;
}

void checkGoogleMapsPlacesV1FuelOptions(api.GoogleMapsPlacesV1FuelOptions o) {
  buildCounterGoogleMapsPlacesV1FuelOptions++;
  if (buildCounterGoogleMapsPlacesV1FuelOptions < 3) {
    checkUnnamed6(o.fuelPrices!);
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
    api.GoogleMapsPlacesV1FuelOptionsFuelPrice o) {
  buildCounterGoogleMapsPlacesV1FuelOptionsFuelPrice++;
  if (buildCounterGoogleMapsPlacesV1FuelOptionsFuelPrice < 3) {
    checkGoogleTypeMoney(o.price!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleMapsPlacesV1FuelOptionsFuelPrice--;
}

core.List<api.GoogleMapsPlacesV1AuthorAttribution> buildUnnamed7() => [
      buildGoogleMapsPlacesV1AuthorAttribution(),
      buildGoogleMapsPlacesV1AuthorAttribution(),
    ];

void checkUnnamed7(core.List<api.GoogleMapsPlacesV1AuthorAttribution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1AuthorAttribution(o[0]);
  checkGoogleMapsPlacesV1AuthorAttribution(o[1]);
}

core.int buildCounterGoogleMapsPlacesV1Photo = 0;
api.GoogleMapsPlacesV1Photo buildGoogleMapsPlacesV1Photo() {
  final o = api.GoogleMapsPlacesV1Photo();
  buildCounterGoogleMapsPlacesV1Photo++;
  if (buildCounterGoogleMapsPlacesV1Photo < 3) {
    o.authorAttributions = buildUnnamed7();
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
    checkUnnamed7(o.authorAttributions!);
    unittest.expect(
      o.heightPx!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.widthPx!,
      unittest.equals(42),
    );
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.photoUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleMapsPlacesV1PhotoMedia--;
}

core.List<api.GoogleMapsPlacesV1PlaceAddressComponent> buildUnnamed8() => [
      buildGoogleMapsPlacesV1PlaceAddressComponent(),
      buildGoogleMapsPlacesV1PlaceAddressComponent(),
    ];

void checkUnnamed8(core.List<api.GoogleMapsPlacesV1PlaceAddressComponent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1PlaceAddressComponent(o[0]);
  checkGoogleMapsPlacesV1PlaceAddressComponent(o[1]);
}

core.List<api.GoogleMapsPlacesV1PlaceAttribution> buildUnnamed9() => [
      buildGoogleMapsPlacesV1PlaceAttribution(),
      buildGoogleMapsPlacesV1PlaceAttribution(),
    ];

void checkUnnamed9(core.List<api.GoogleMapsPlacesV1PlaceAttribution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1PlaceAttribution(o[0]);
  checkGoogleMapsPlacesV1PlaceAttribution(o[1]);
}

core.List<api.GoogleMapsPlacesV1PlaceOpeningHours> buildUnnamed10() => [
      buildGoogleMapsPlacesV1PlaceOpeningHours(),
      buildGoogleMapsPlacesV1PlaceOpeningHours(),
    ];

void checkUnnamed10(core.List<api.GoogleMapsPlacesV1PlaceOpeningHours> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1PlaceOpeningHours(o[0]);
  checkGoogleMapsPlacesV1PlaceOpeningHours(o[1]);
}

core.List<api.GoogleMapsPlacesV1Photo> buildUnnamed11() => [
      buildGoogleMapsPlacesV1Photo(),
      buildGoogleMapsPlacesV1Photo(),
    ];

void checkUnnamed11(core.List<api.GoogleMapsPlacesV1Photo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1Photo(o[0]);
  checkGoogleMapsPlacesV1Photo(o[1]);
}

core.List<api.GoogleMapsPlacesV1PlaceOpeningHours> buildUnnamed12() => [
      buildGoogleMapsPlacesV1PlaceOpeningHours(),
      buildGoogleMapsPlacesV1PlaceOpeningHours(),
    ];

void checkUnnamed12(core.List<api.GoogleMapsPlacesV1PlaceOpeningHours> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1PlaceOpeningHours(o[0]);
  checkGoogleMapsPlacesV1PlaceOpeningHours(o[1]);
}

core.List<api.GoogleMapsPlacesV1Review> buildUnnamed13() => [
      buildGoogleMapsPlacesV1Review(),
      buildGoogleMapsPlacesV1Review(),
    ];

void checkUnnamed13(core.List<api.GoogleMapsPlacesV1Review> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1Review(o[0]);
  checkGoogleMapsPlacesV1Review(o[1]);
}

core.List<api.GoogleMapsPlacesV1PlaceSubDestination> buildUnnamed14() => [
      buildGoogleMapsPlacesV1PlaceSubDestination(),
      buildGoogleMapsPlacesV1PlaceSubDestination(),
    ];

void checkUnnamed14(core.List<api.GoogleMapsPlacesV1PlaceSubDestination> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1PlaceSubDestination(o[0]);
  checkGoogleMapsPlacesV1PlaceSubDestination(o[1]);
}

core.List<core.String> buildUnnamed15() => [
      'foo',
      'foo',
    ];

void checkUnnamed15(core.List<core.String> o) {
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
    o.accessibilityOptions = buildGoogleMapsPlacesV1PlaceAccessibilityOptions();
    o.addressComponents = buildUnnamed8();
    o.adrFormatAddress = 'foo';
    o.allowsDogs = true;
    o.attributions = buildUnnamed9();
    o.businessStatus = 'foo';
    o.curbsidePickup = true;
    o.currentOpeningHours = buildGoogleMapsPlacesV1PlaceOpeningHours();
    o.currentSecondaryOpeningHours = buildUnnamed10();
    o.delivery = true;
    o.dineIn = true;
    o.displayName = buildGoogleTypeLocalizedText();
    o.editorialSummary = buildGoogleTypeLocalizedText();
    o.evChargeOptions = buildGoogleMapsPlacesV1EVChargeOptions();
    o.formattedAddress = 'foo';
    o.fuelOptions = buildGoogleMapsPlacesV1FuelOptions();
    o.goodForChildren = true;
    o.goodForGroups = true;
    o.goodForWatchingSports = true;
    o.googleMapsUri = 'foo';
    o.iconBackgroundColor = 'foo';
    o.iconMaskBaseUri = 'foo';
    o.id = 'foo';
    o.internationalPhoneNumber = 'foo';
    o.liveMusic = true;
    o.location = buildGoogleTypeLatLng();
    o.menuForChildren = true;
    o.name = 'foo';
    o.nationalPhoneNumber = 'foo';
    o.outdoorSeating = true;
    o.parkingOptions = buildGoogleMapsPlacesV1PlaceParkingOptions();
    o.paymentOptions = buildGoogleMapsPlacesV1PlacePaymentOptions();
    o.photos = buildUnnamed11();
    o.plusCode = buildGoogleMapsPlacesV1PlacePlusCode();
    o.priceLevel = 'foo';
    o.primaryType = 'foo';
    o.primaryTypeDisplayName = buildGoogleTypeLocalizedText();
    o.rating = 42.0;
    o.regularOpeningHours = buildGoogleMapsPlacesV1PlaceOpeningHours();
    o.regularSecondaryOpeningHours = buildUnnamed12();
    o.reservable = true;
    o.restroom = true;
    o.reviews = buildUnnamed13();
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
    o.subDestinations = buildUnnamed14();
    o.takeout = true;
    o.types = buildUnnamed15();
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
    checkUnnamed8(o.addressComponents!);
    unittest.expect(
      o.adrFormatAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(o.allowsDogs!, unittest.isTrue);
    checkUnnamed9(o.attributions!);
    unittest.expect(
      o.businessStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(o.curbsidePickup!, unittest.isTrue);
    checkGoogleMapsPlacesV1PlaceOpeningHours(o.currentOpeningHours!);
    checkUnnamed10(o.currentSecondaryOpeningHours!);
    unittest.expect(o.delivery!, unittest.isTrue);
    unittest.expect(o.dineIn!, unittest.isTrue);
    checkGoogleTypeLocalizedText(o.displayName!);
    checkGoogleTypeLocalizedText(o.editorialSummary!);
    checkGoogleMapsPlacesV1EVChargeOptions(o.evChargeOptions!);
    unittest.expect(
      o.formattedAddress!,
      unittest.equals('foo'),
    );
    checkGoogleMapsPlacesV1FuelOptions(o.fuelOptions!);
    unittest.expect(o.goodForChildren!, unittest.isTrue);
    unittest.expect(o.goodForGroups!, unittest.isTrue);
    unittest.expect(o.goodForWatchingSports!, unittest.isTrue);
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
    unittest.expect(o.liveMusic!, unittest.isTrue);
    checkGoogleTypeLatLng(o.location!);
    unittest.expect(o.menuForChildren!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nationalPhoneNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(o.outdoorSeating!, unittest.isTrue);
    checkGoogleMapsPlacesV1PlaceParkingOptions(o.parkingOptions!);
    checkGoogleMapsPlacesV1PlacePaymentOptions(o.paymentOptions!);
    checkUnnamed11(o.photos!);
    checkGoogleMapsPlacesV1PlacePlusCode(o.plusCode!);
    unittest.expect(
      o.priceLevel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.primaryType!,
      unittest.equals('foo'),
    );
    checkGoogleTypeLocalizedText(o.primaryTypeDisplayName!);
    unittest.expect(
      o.rating!,
      unittest.equals(42.0),
    );
    checkGoogleMapsPlacesV1PlaceOpeningHours(o.regularOpeningHours!);
    checkUnnamed12(o.regularSecondaryOpeningHours!);
    unittest.expect(o.reservable!, unittest.isTrue);
    unittest.expect(o.restroom!, unittest.isTrue);
    checkUnnamed13(o.reviews!);
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
    unittest.expect(
      o.shortFormattedAddress!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.subDestinations!);
    unittest.expect(o.takeout!, unittest.isTrue);
    checkUnnamed15(o.types!);
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
    api.GoogleMapsPlacesV1PlaceAccessibilityOptions o) {
  buildCounterGoogleMapsPlacesV1PlaceAccessibilityOptions++;
  if (buildCounterGoogleMapsPlacesV1PlaceAccessibilityOptions < 3) {
    unittest.expect(o.wheelchairAccessibleEntrance!, unittest.isTrue);
    unittest.expect(o.wheelchairAccessibleParking!, unittest.isTrue);
    unittest.expect(o.wheelchairAccessibleRestroom!, unittest.isTrue);
    unittest.expect(o.wheelchairAccessibleSeating!, unittest.isTrue);
  }
  buildCounterGoogleMapsPlacesV1PlaceAccessibilityOptions--;
}

core.List<core.String> buildUnnamed16() => [
      'foo',
      'foo',
    ];

void checkUnnamed16(core.List<core.String> o) {
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
    o.types = buildUnnamed16();
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
    checkUnnamed16(o.types!);
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

core.List<api.GoogleMapsPlacesV1PlaceOpeningHoursPeriod> buildUnnamed17() => [
      buildGoogleMapsPlacesV1PlaceOpeningHoursPeriod(),
      buildGoogleMapsPlacesV1PlaceOpeningHoursPeriod(),
    ];

void checkUnnamed17(
    core.List<api.GoogleMapsPlacesV1PlaceOpeningHoursPeriod> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1PlaceOpeningHoursPeriod(o[0]);
  checkGoogleMapsPlacesV1PlaceOpeningHoursPeriod(o[1]);
}

core.List<api.GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay> buildUnnamed18() =>
    [
      buildGoogleMapsPlacesV1PlaceOpeningHoursSpecialDay(),
      buildGoogleMapsPlacesV1PlaceOpeningHoursSpecialDay(),
    ];

void checkUnnamed18(
    core.List<api.GoogleMapsPlacesV1PlaceOpeningHoursSpecialDay> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1PlaceOpeningHoursSpecialDay(o[0]);
  checkGoogleMapsPlacesV1PlaceOpeningHoursSpecialDay(o[1]);
}

core.List<core.String> buildUnnamed19() => [
      'foo',
      'foo',
    ];

void checkUnnamed19(core.List<core.String> o) {
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
    o.periods = buildUnnamed17();
    o.secondaryHoursType = 'foo';
    o.specialDays = buildUnnamed18();
    o.weekdayDescriptions = buildUnnamed19();
  }
  buildCounterGoogleMapsPlacesV1PlaceOpeningHours--;
  return o;
}

void checkGoogleMapsPlacesV1PlaceOpeningHours(
    api.GoogleMapsPlacesV1PlaceOpeningHours o) {
  buildCounterGoogleMapsPlacesV1PlaceOpeningHours++;
  if (buildCounterGoogleMapsPlacesV1PlaceOpeningHours < 3) {
    unittest.expect(o.openNow!, unittest.isTrue);
    checkUnnamed17(o.periods!);
    unittest.expect(
      o.secondaryHoursType!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.specialDays!);
    checkUnnamed19(o.weekdayDescriptions!);
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
    api.GoogleMapsPlacesV1PlaceParkingOptions o) {
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
    api.GoogleMapsPlacesV1PlacePaymentOptions o) {
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
    api.GoogleMapsPlacesV1PlaceSubDestination o) {
  buildCounterGoogleMapsPlacesV1PlaceSubDestination++;
  if (buildCounterGoogleMapsPlacesV1PlaceSubDestination < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleMapsPlacesV1PlaceSubDestination--;
}

core.int buildCounterGoogleMapsPlacesV1Review = 0;
api.GoogleMapsPlacesV1Review buildGoogleMapsPlacesV1Review() {
  final o = api.GoogleMapsPlacesV1Review();
  buildCounterGoogleMapsPlacesV1Review++;
  if (buildCounterGoogleMapsPlacesV1Review < 3) {
    o.authorAttribution = buildGoogleMapsPlacesV1AuthorAttribution();
    o.name = 'foo';
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
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
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

core.List<core.String> buildUnnamed20() => [
      'foo',
      'foo',
    ];

void checkUnnamed20(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed21() => [
      'foo',
      'foo',
    ];

void checkUnnamed21(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed22() => [
      'foo',
      'foo',
    ];

void checkUnnamed22(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed23() => [
      'foo',
      'foo',
    ];

void checkUnnamed23(core.List<core.String> o) {
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

core.int buildCounterGoogleMapsPlacesV1SearchNearbyRequest = 0;
api.GoogleMapsPlacesV1SearchNearbyRequest
    buildGoogleMapsPlacesV1SearchNearbyRequest() {
  final o = api.GoogleMapsPlacesV1SearchNearbyRequest();
  buildCounterGoogleMapsPlacesV1SearchNearbyRequest++;
  if (buildCounterGoogleMapsPlacesV1SearchNearbyRequest < 3) {
    o.excludedPrimaryTypes = buildUnnamed20();
    o.excludedTypes = buildUnnamed21();
    o.includedPrimaryTypes = buildUnnamed22();
    o.includedTypes = buildUnnamed23();
    o.languageCode = 'foo';
    o.locationRestriction =
        buildGoogleMapsPlacesV1SearchNearbyRequestLocationRestriction();
    o.maxResultCount = 42;
    o.rankPreference = 'foo';
    o.regionCode = 'foo';
  }
  buildCounterGoogleMapsPlacesV1SearchNearbyRequest--;
  return o;
}

void checkGoogleMapsPlacesV1SearchNearbyRequest(
    api.GoogleMapsPlacesV1SearchNearbyRequest o) {
  buildCounterGoogleMapsPlacesV1SearchNearbyRequest++;
  if (buildCounterGoogleMapsPlacesV1SearchNearbyRequest < 3) {
    checkUnnamed20(o.excludedPrimaryTypes!);
    checkUnnamed21(o.excludedTypes!);
    checkUnnamed22(o.includedPrimaryTypes!);
    checkUnnamed23(o.includedTypes!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    checkGoogleMapsPlacesV1SearchNearbyRequestLocationRestriction(
        o.locationRestriction!);
    unittest.expect(
      o.maxResultCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.rankPreference!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
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
    api.GoogleMapsPlacesV1SearchNearbyRequestLocationRestriction o) {
  buildCounterGoogleMapsPlacesV1SearchNearbyRequestLocationRestriction++;
  if (buildCounterGoogleMapsPlacesV1SearchNearbyRequestLocationRestriction <
      3) {
    checkGoogleMapsPlacesV1Circle(o.circle!);
  }
  buildCounterGoogleMapsPlacesV1SearchNearbyRequestLocationRestriction--;
}

core.List<api.GoogleMapsPlacesV1Place> buildUnnamed24() => [
      buildGoogleMapsPlacesV1Place(),
      buildGoogleMapsPlacesV1Place(),
    ];

void checkUnnamed24(core.List<api.GoogleMapsPlacesV1Place> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlacesV1Place(o[0]);
  checkGoogleMapsPlacesV1Place(o[1]);
}

core.int buildCounterGoogleMapsPlacesV1SearchNearbyResponse = 0;
api.GoogleMapsPlacesV1SearchNearbyResponse
    buildGoogleMapsPlacesV1SearchNearbyResponse() {
  final o = api.GoogleMapsPlacesV1SearchNearbyResponse();
  buildCounterGoogleMapsPlacesV1SearchNearbyResponse++;
  if (buildCounterGoogleMapsPlacesV1SearchNearbyResponse < 3) {
    o.places = buildUnnamed24();
  }
  buildCounterGoogleMapsPlacesV1SearchNearbyResponse--;
  return o;
}

void checkGoogleMapsPlacesV1SearchNearbyResponse(
    api.GoogleMapsPlacesV1SearchNearbyResponse o) {
  buildCounterGoogleMapsPlacesV1SearchNearbyResponse++;
  if (buildCounterGoogleMapsPlacesV1SearchNearbyResponse < 3) {
    checkUnnamed24(o.places!);
  }
  buildCounterGoogleMapsPlacesV1SearchNearbyResponse--;
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

core.int buildCounterGoogleMapsPlacesV1SearchTextRequest = 0;
api.GoogleMapsPlacesV1SearchTextRequest
    buildGoogleMapsPlacesV1SearchTextRequest() {
  final o = api.GoogleMapsPlacesV1SearchTextRequest();
  buildCounterGoogleMapsPlacesV1SearchTextRequest++;
  if (buildCounterGoogleMapsPlacesV1SearchTextRequest < 3) {
    o.evOptions = buildGoogleMapsPlacesV1SearchTextRequestEVOptions();
    o.includedType = 'foo';
    o.languageCode = 'foo';
    o.locationBias = buildGoogleMapsPlacesV1SearchTextRequestLocationBias();
    o.locationRestriction =
        buildGoogleMapsPlacesV1SearchTextRequestLocationRestriction();
    o.maxResultCount = 42;
    o.minRating = 42.0;
    o.openNow = true;
    o.priceLevels = buildUnnamed25();
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
    checkGoogleMapsPlacesV1SearchTextRequestEVOptions(o.evOptions!);
    unittest.expect(
      o.includedType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
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
    checkUnnamed25(o.priceLevels!);
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

core.List<core.String> buildUnnamed26() => [
      'foo',
      'foo',
    ];

void checkUnnamed26(core.List<core.String> o) {
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

core.int buildCounterGoogleMapsPlacesV1SearchTextRequestEVOptions = 0;
api.GoogleMapsPlacesV1SearchTextRequestEVOptions
    buildGoogleMapsPlacesV1SearchTextRequestEVOptions() {
  final o = api.GoogleMapsPlacesV1SearchTextRequestEVOptions();
  buildCounterGoogleMapsPlacesV1SearchTextRequestEVOptions++;
  if (buildCounterGoogleMapsPlacesV1SearchTextRequestEVOptions < 3) {
    o.connectorTypes = buildUnnamed26();
    o.minimumChargingRateKw = 42.0;
  }
  buildCounterGoogleMapsPlacesV1SearchTextRequestEVOptions--;
  return o;
}

void checkGoogleMapsPlacesV1SearchTextRequestEVOptions(
    api.GoogleMapsPlacesV1SearchTextRequestEVOptions o) {
  buildCounterGoogleMapsPlacesV1SearchTextRequestEVOptions++;
  if (buildCounterGoogleMapsPlacesV1SearchTextRequestEVOptions < 3) {
    checkUnnamed26(o.connectorTypes!);
    unittest.expect(
      o.minimumChargingRateKw!,
      unittest.equals(42.0),
    );
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

core.List<api.GoogleMapsPlacesV1Place> buildUnnamed27() => [
      buildGoogleMapsPlacesV1Place(),
      buildGoogleMapsPlacesV1Place(),
    ];

void checkUnnamed27(core.List<api.GoogleMapsPlacesV1Place> o) {
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
    o.places = buildUnnamed27();
  }
  buildCounterGoogleMapsPlacesV1SearchTextResponse--;
  return o;
}

void checkGoogleMapsPlacesV1SearchTextResponse(
    api.GoogleMapsPlacesV1SearchTextResponse o) {
  buildCounterGoogleMapsPlacesV1SearchTextResponse++;
  if (buildCounterGoogleMapsPlacesV1SearchTextResponse < 3) {
    checkUnnamed27(o.places!);
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

  unittest.group('obj-schema-GoogleMapsPlacesV1AutocompletePlacesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1AutocompletePlacesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1AutocompletePlacesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1AutocompletePlacesRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleMapsPlacesV1AutocompletePlacesRequestLocationBias', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1AutocompletePlacesRequestLocationBias();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleMapsPlacesV1AutocompletePlacesRequestLocationBias.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1AutocompletePlacesRequestLocationBias(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1AutocompletePlacesRequestLocationRestriction(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1AutocompletePlacesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1AutocompletePlacesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1AutocompletePlacesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1AutocompletePlacesResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleMapsPlacesV1AutocompletePlacesResponseSuggestion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestion.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestion(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionFormattableText(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionPlacePrediction(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionQueryPrediction(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStringRange(
          od);
    });
  });

  unittest.group(
      'obj-schema-GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1AutocompletePlacesResponseSuggestionStructuredFormat(
          od);
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

  unittest.group('obj-schema-GoogleMapsPlacesV1EVChargeOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1EVChargeOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1EVChargeOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1EVChargeOptions(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleMapsPlacesV1EVChargeOptionsConnectorAggregation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1EVChargeOptionsConnectorAggregation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleMapsPlacesV1EVChargeOptionsConnectorAggregation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1EVChargeOptionsConnectorAggregation(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1FuelOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1FuelOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1FuelOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1FuelOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1FuelOptionsFuelPrice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1FuelOptionsFuelPrice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1FuelOptionsFuelPrice.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1FuelOptionsFuelPrice(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1Photo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1Photo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1Photo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1Photo(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1PhotoMedia', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1PhotoMedia();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1PhotoMedia.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1PhotoMedia(od);
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

  unittest.group('obj-schema-GoogleMapsPlacesV1PlaceAccessibilityOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1PlaceAccessibilityOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1PlaceAccessibilityOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1PlaceAccessibilityOptions(od);
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

  unittest.group('obj-schema-GoogleMapsPlacesV1PlaceParkingOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1PlaceParkingOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1PlaceParkingOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1PlaceParkingOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1PlacePaymentOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1PlacePaymentOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1PlacePaymentOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1PlacePaymentOptions(od);
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

  unittest.group('obj-schema-GoogleMapsPlacesV1PlaceSubDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1PlaceSubDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1PlaceSubDestination.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1PlaceSubDestination(od);
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

  unittest.group('obj-schema-GoogleMapsPlacesV1SearchNearbyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1SearchNearbyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1SearchNearbyRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1SearchNearbyRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleMapsPlacesV1SearchNearbyRequestLocationRestriction',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1SearchNearbyRequestLocationRestriction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleMapsPlacesV1SearchNearbyRequestLocationRestriction.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1SearchNearbyRequestLocationRestriction(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlacesV1SearchNearbyResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1SearchNearbyResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1SearchNearbyResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1SearchNearbyResponse(od);
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

  unittest.group('obj-schema-GoogleMapsPlacesV1SearchTextRequestEVOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlacesV1SearchTextRequestEVOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlacesV1SearchTextRequestEVOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlacesV1SearchTextRequestEVOptions(od);
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

  unittest.group('obj-schema-GoogleTypeMoney', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleTypeMoney();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleTypeMoney.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleTypeMoney(od);
    });
  });

  unittest.group('resource-PlacesResource', () {
    unittest.test('method--autocomplete', () async {
      final mock = HttpServerMock();
      final res = api.PlacesApi(mock).places;
      final arg_request = buildGoogleMapsPlacesV1AutocompletePlacesRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleMapsPlacesV1AutocompletePlacesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleMapsPlacesV1AutocompletePlacesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.autocomplete(arg_request, $fields: arg_$fields);
      checkGoogleMapsPlacesV1AutocompletePlacesResponse(
          response as api.GoogleMapsPlacesV1AutocompletePlacesResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.PlacesApi(mock).places;
      final arg_name = 'foo';
      final arg_languageCode = 'foo';
      final arg_regionCode = 'foo';
      final arg_sessionToken = 'foo';
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleMapsPlacesV1Place());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          languageCode: arg_languageCode,
          regionCode: arg_regionCode,
          sessionToken: arg_sessionToken,
          $fields: arg_$fields);
      checkGoogleMapsPlacesV1Place(response as api.GoogleMapsPlacesV1Place);
    });

    unittest.test('method--searchNearby', () async {
      final mock = HttpServerMock();
      final res = api.PlacesApi(mock).places;
      final arg_request = buildGoogleMapsPlacesV1SearchNearbyRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleMapsPlacesV1SearchNearbyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleMapsPlacesV1SearchNearbyResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.searchNearby(arg_request, $fields: arg_$fields);
      checkGoogleMapsPlacesV1SearchNearbyResponse(
          response as api.GoogleMapsPlacesV1SearchNearbyResponse);
    });

    unittest.test('method--searchText', () async {
      final mock = HttpServerMock();
      final res = api.PlacesApi(mock).places;
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

  unittest.group('resource-PlacesPhotosResource', () {
    unittest.test('method--getMedia', () async {
      final mock = HttpServerMock();
      final res = api.PlacesApi(mock).places.photos;
      final arg_name = 'foo';
      final arg_maxHeightPx = 42;
      final arg_maxWidthPx = 42;
      final arg_skipHttpRedirect = true;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleMapsPlacesV1PhotoMedia());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getMedia(arg_name,
          maxHeightPx: arg_maxHeightPx,
          maxWidthPx: arg_maxWidthPx,
          skipHttpRedirect: arg_skipHttpRedirect,
          $fields: arg_$fields);
      checkGoogleMapsPlacesV1PhotoMedia(
          response as api.GoogleMapsPlacesV1PhotoMedia);
    });
  });
}
