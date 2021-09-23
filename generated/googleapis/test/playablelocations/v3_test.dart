// ignore_for_file: camel_case_types
// ignore_for_file: cascade_invocations
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/playablelocations/v3.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterGoogleMapsPlayablelocationsV3Impression = 0;
api.GoogleMapsPlayablelocationsV3Impression
    buildGoogleMapsPlayablelocationsV3Impression() {
  final o = api.GoogleMapsPlayablelocationsV3Impression();
  buildCounterGoogleMapsPlayablelocationsV3Impression++;
  if (buildCounterGoogleMapsPlayablelocationsV3Impression < 3) {
    o.gameObjectType = 42;
    o.impressionType = 'foo';
    o.locationName = 'foo';
  }
  buildCounterGoogleMapsPlayablelocationsV3Impression--;
  return o;
}

void checkGoogleMapsPlayablelocationsV3Impression(
    api.GoogleMapsPlayablelocationsV3Impression o) {
  buildCounterGoogleMapsPlayablelocationsV3Impression++;
  if (buildCounterGoogleMapsPlayablelocationsV3Impression < 3) {
    unittest.expect(
      o.gameObjectType!,
      unittest.equals(42),
    );
    unittest.expect(
      o.impressionType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locationName!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleMapsPlayablelocationsV3Impression--;
}

core.List<api.GoogleMapsPlayablelocationsV3Impression> buildUnnamed0() => [
      buildGoogleMapsPlayablelocationsV3Impression(),
      buildGoogleMapsPlayablelocationsV3Impression(),
    ];

void checkUnnamed0(core.List<api.GoogleMapsPlayablelocationsV3Impression> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlayablelocationsV3Impression(o[0]);
  checkGoogleMapsPlayablelocationsV3Impression(o[1]);
}

core.int buildCounterGoogleMapsPlayablelocationsV3LogImpressionsRequest = 0;
api.GoogleMapsPlayablelocationsV3LogImpressionsRequest
    buildGoogleMapsPlayablelocationsV3LogImpressionsRequest() {
  final o = api.GoogleMapsPlayablelocationsV3LogImpressionsRequest();
  buildCounterGoogleMapsPlayablelocationsV3LogImpressionsRequest++;
  if (buildCounterGoogleMapsPlayablelocationsV3LogImpressionsRequest < 3) {
    o.clientInfo = buildGoogleMapsUnityClientInfo();
    o.impressions = buildUnnamed0();
    o.requestId = 'foo';
  }
  buildCounterGoogleMapsPlayablelocationsV3LogImpressionsRequest--;
  return o;
}

void checkGoogleMapsPlayablelocationsV3LogImpressionsRequest(
    api.GoogleMapsPlayablelocationsV3LogImpressionsRequest o) {
  buildCounterGoogleMapsPlayablelocationsV3LogImpressionsRequest++;
  if (buildCounterGoogleMapsPlayablelocationsV3LogImpressionsRequest < 3) {
    checkGoogleMapsUnityClientInfo(o.clientInfo!);
    checkUnnamed0(o.impressions!);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleMapsPlayablelocationsV3LogImpressionsRequest--;
}

core.int buildCounterGoogleMapsPlayablelocationsV3LogImpressionsResponse = 0;
api.GoogleMapsPlayablelocationsV3LogImpressionsResponse
    buildGoogleMapsPlayablelocationsV3LogImpressionsResponse() {
  final o = api.GoogleMapsPlayablelocationsV3LogImpressionsResponse();
  buildCounterGoogleMapsPlayablelocationsV3LogImpressionsResponse++;
  if (buildCounterGoogleMapsPlayablelocationsV3LogImpressionsResponse < 3) {}
  buildCounterGoogleMapsPlayablelocationsV3LogImpressionsResponse--;
  return o;
}

void checkGoogleMapsPlayablelocationsV3LogImpressionsResponse(
    api.GoogleMapsPlayablelocationsV3LogImpressionsResponse o) {
  buildCounterGoogleMapsPlayablelocationsV3LogImpressionsResponse++;
  if (buildCounterGoogleMapsPlayablelocationsV3LogImpressionsResponse < 3) {}
  buildCounterGoogleMapsPlayablelocationsV3LogImpressionsResponse--;
}

core.List<api.GoogleMapsPlayablelocationsV3PlayerReport> buildUnnamed1() => [
      buildGoogleMapsPlayablelocationsV3PlayerReport(),
      buildGoogleMapsPlayablelocationsV3PlayerReport(),
    ];

void checkUnnamed1(core.List<api.GoogleMapsPlayablelocationsV3PlayerReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlayablelocationsV3PlayerReport(o[0]);
  checkGoogleMapsPlayablelocationsV3PlayerReport(o[1]);
}

core.int buildCounterGoogleMapsPlayablelocationsV3LogPlayerReportsRequest = 0;
api.GoogleMapsPlayablelocationsV3LogPlayerReportsRequest
    buildGoogleMapsPlayablelocationsV3LogPlayerReportsRequest() {
  final o = api.GoogleMapsPlayablelocationsV3LogPlayerReportsRequest();
  buildCounterGoogleMapsPlayablelocationsV3LogPlayerReportsRequest++;
  if (buildCounterGoogleMapsPlayablelocationsV3LogPlayerReportsRequest < 3) {
    o.clientInfo = buildGoogleMapsUnityClientInfo();
    o.playerReports = buildUnnamed1();
    o.requestId = 'foo';
  }
  buildCounterGoogleMapsPlayablelocationsV3LogPlayerReportsRequest--;
  return o;
}

void checkGoogleMapsPlayablelocationsV3LogPlayerReportsRequest(
    api.GoogleMapsPlayablelocationsV3LogPlayerReportsRequest o) {
  buildCounterGoogleMapsPlayablelocationsV3LogPlayerReportsRequest++;
  if (buildCounterGoogleMapsPlayablelocationsV3LogPlayerReportsRequest < 3) {
    checkGoogleMapsUnityClientInfo(o.clientInfo!);
    checkUnnamed1(o.playerReports!);
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleMapsPlayablelocationsV3LogPlayerReportsRequest--;
}

core.int buildCounterGoogleMapsPlayablelocationsV3LogPlayerReportsResponse = 0;
api.GoogleMapsPlayablelocationsV3LogPlayerReportsResponse
    buildGoogleMapsPlayablelocationsV3LogPlayerReportsResponse() {
  final o = api.GoogleMapsPlayablelocationsV3LogPlayerReportsResponse();
  buildCounterGoogleMapsPlayablelocationsV3LogPlayerReportsResponse++;
  if (buildCounterGoogleMapsPlayablelocationsV3LogPlayerReportsResponse < 3) {}
  buildCounterGoogleMapsPlayablelocationsV3LogPlayerReportsResponse--;
  return o;
}

void checkGoogleMapsPlayablelocationsV3LogPlayerReportsResponse(
    api.GoogleMapsPlayablelocationsV3LogPlayerReportsResponse o) {
  buildCounterGoogleMapsPlayablelocationsV3LogPlayerReportsResponse++;
  if (buildCounterGoogleMapsPlayablelocationsV3LogPlayerReportsResponse < 3) {}
  buildCounterGoogleMapsPlayablelocationsV3LogPlayerReportsResponse--;
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

core.int buildCounterGoogleMapsPlayablelocationsV3PlayerReport = 0;
api.GoogleMapsPlayablelocationsV3PlayerReport
    buildGoogleMapsPlayablelocationsV3PlayerReport() {
  final o = api.GoogleMapsPlayablelocationsV3PlayerReport();
  buildCounterGoogleMapsPlayablelocationsV3PlayerReport++;
  if (buildCounterGoogleMapsPlayablelocationsV3PlayerReport < 3) {
    o.languageCode = 'foo';
    o.locationName = 'foo';
    o.reasonDetails = 'foo';
    o.reasons = buildUnnamed2();
  }
  buildCounterGoogleMapsPlayablelocationsV3PlayerReport--;
  return o;
}

void checkGoogleMapsPlayablelocationsV3PlayerReport(
    api.GoogleMapsPlayablelocationsV3PlayerReport o) {
  buildCounterGoogleMapsPlayablelocationsV3PlayerReport++;
  if (buildCounterGoogleMapsPlayablelocationsV3PlayerReport < 3) {
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.locationName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reasonDetails!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.reasons!);
  }
  buildCounterGoogleMapsPlayablelocationsV3PlayerReport--;
}

core.int buildCounterGoogleMapsPlayablelocationsV3SampleAreaFilter = 0;
api.GoogleMapsPlayablelocationsV3SampleAreaFilter
    buildGoogleMapsPlayablelocationsV3SampleAreaFilter() {
  final o = api.GoogleMapsPlayablelocationsV3SampleAreaFilter();
  buildCounterGoogleMapsPlayablelocationsV3SampleAreaFilter++;
  if (buildCounterGoogleMapsPlayablelocationsV3SampleAreaFilter < 3) {
    o.s2CellId = 'foo';
  }
  buildCounterGoogleMapsPlayablelocationsV3SampleAreaFilter--;
  return o;
}

void checkGoogleMapsPlayablelocationsV3SampleAreaFilter(
    api.GoogleMapsPlayablelocationsV3SampleAreaFilter o) {
  buildCounterGoogleMapsPlayablelocationsV3SampleAreaFilter++;
  if (buildCounterGoogleMapsPlayablelocationsV3SampleAreaFilter < 3) {
    unittest.expect(
      o.s2CellId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleMapsPlayablelocationsV3SampleAreaFilter--;
}

core.int buildCounterGoogleMapsPlayablelocationsV3SampleCriterion = 0;
api.GoogleMapsPlayablelocationsV3SampleCriterion
    buildGoogleMapsPlayablelocationsV3SampleCriterion() {
  final o = api.GoogleMapsPlayablelocationsV3SampleCriterion();
  buildCounterGoogleMapsPlayablelocationsV3SampleCriterion++;
  if (buildCounterGoogleMapsPlayablelocationsV3SampleCriterion < 3) {
    o.fieldsToReturn = 'foo';
    o.filter = buildGoogleMapsPlayablelocationsV3SampleFilter();
    o.gameObjectType = 42;
  }
  buildCounterGoogleMapsPlayablelocationsV3SampleCriterion--;
  return o;
}

void checkGoogleMapsPlayablelocationsV3SampleCriterion(
    api.GoogleMapsPlayablelocationsV3SampleCriterion o) {
  buildCounterGoogleMapsPlayablelocationsV3SampleCriterion++;
  if (buildCounterGoogleMapsPlayablelocationsV3SampleCriterion < 3) {
    unittest.expect(
      o.fieldsToReturn!,
      unittest.equals('foo'),
    );
    checkGoogleMapsPlayablelocationsV3SampleFilter(o.filter!);
    unittest.expect(
      o.gameObjectType!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleMapsPlayablelocationsV3SampleCriterion--;
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

core.int buildCounterGoogleMapsPlayablelocationsV3SampleFilter = 0;
api.GoogleMapsPlayablelocationsV3SampleFilter
    buildGoogleMapsPlayablelocationsV3SampleFilter() {
  final o = api.GoogleMapsPlayablelocationsV3SampleFilter();
  buildCounterGoogleMapsPlayablelocationsV3SampleFilter++;
  if (buildCounterGoogleMapsPlayablelocationsV3SampleFilter < 3) {
    o.includedTypes = buildUnnamed3();
    o.maxLocationCount = 42;
    o.spacing = buildGoogleMapsPlayablelocationsV3SampleSpacingOptions();
  }
  buildCounterGoogleMapsPlayablelocationsV3SampleFilter--;
  return o;
}

void checkGoogleMapsPlayablelocationsV3SampleFilter(
    api.GoogleMapsPlayablelocationsV3SampleFilter o) {
  buildCounterGoogleMapsPlayablelocationsV3SampleFilter++;
  if (buildCounterGoogleMapsPlayablelocationsV3SampleFilter < 3) {
    checkUnnamed3(o.includedTypes!);
    unittest.expect(
      o.maxLocationCount!,
      unittest.equals(42),
    );
    checkGoogleMapsPlayablelocationsV3SampleSpacingOptions(o.spacing!);
  }
  buildCounterGoogleMapsPlayablelocationsV3SampleFilter--;
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

core.int buildCounterGoogleMapsPlayablelocationsV3SamplePlayableLocation = 0;
api.GoogleMapsPlayablelocationsV3SamplePlayableLocation
    buildGoogleMapsPlayablelocationsV3SamplePlayableLocation() {
  final o = api.GoogleMapsPlayablelocationsV3SamplePlayableLocation();
  buildCounterGoogleMapsPlayablelocationsV3SamplePlayableLocation++;
  if (buildCounterGoogleMapsPlayablelocationsV3SamplePlayableLocation < 3) {
    o.centerPoint = buildGoogleTypeLatLng();
    o.name = 'foo';
    o.placeId = 'foo';
    o.plusCode = 'foo';
    o.snappedPoint = buildGoogleTypeLatLng();
    o.types = buildUnnamed4();
  }
  buildCounterGoogleMapsPlayablelocationsV3SamplePlayableLocation--;
  return o;
}

void checkGoogleMapsPlayablelocationsV3SamplePlayableLocation(
    api.GoogleMapsPlayablelocationsV3SamplePlayableLocation o) {
  buildCounterGoogleMapsPlayablelocationsV3SamplePlayableLocation++;
  if (buildCounterGoogleMapsPlayablelocationsV3SamplePlayableLocation < 3) {
    checkGoogleTypeLatLng(o.centerPoint!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.placeId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.plusCode!,
      unittest.equals('foo'),
    );
    checkGoogleTypeLatLng(o.snappedPoint!);
    checkUnnamed4(o.types!);
  }
  buildCounterGoogleMapsPlayablelocationsV3SamplePlayableLocation--;
}

core.List<api.GoogleMapsPlayablelocationsV3SamplePlayableLocation>
    buildUnnamed5() => [
          buildGoogleMapsPlayablelocationsV3SamplePlayableLocation(),
          buildGoogleMapsPlayablelocationsV3SamplePlayableLocation(),
        ];

void checkUnnamed5(
    core.List<api.GoogleMapsPlayablelocationsV3SamplePlayableLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlayablelocationsV3SamplePlayableLocation(o[0]);
  checkGoogleMapsPlayablelocationsV3SamplePlayableLocation(o[1]);
}

core.int buildCounterGoogleMapsPlayablelocationsV3SamplePlayableLocationList =
    0;
api.GoogleMapsPlayablelocationsV3SamplePlayableLocationList
    buildGoogleMapsPlayablelocationsV3SamplePlayableLocationList() {
  final o = api.GoogleMapsPlayablelocationsV3SamplePlayableLocationList();
  buildCounterGoogleMapsPlayablelocationsV3SamplePlayableLocationList++;
  if (buildCounterGoogleMapsPlayablelocationsV3SamplePlayableLocationList < 3) {
    o.locations = buildUnnamed5();
  }
  buildCounterGoogleMapsPlayablelocationsV3SamplePlayableLocationList--;
  return o;
}

void checkGoogleMapsPlayablelocationsV3SamplePlayableLocationList(
    api.GoogleMapsPlayablelocationsV3SamplePlayableLocationList o) {
  buildCounterGoogleMapsPlayablelocationsV3SamplePlayableLocationList++;
  if (buildCounterGoogleMapsPlayablelocationsV3SamplePlayableLocationList < 3) {
    checkUnnamed5(o.locations!);
  }
  buildCounterGoogleMapsPlayablelocationsV3SamplePlayableLocationList--;
}

core.List<api.GoogleMapsPlayablelocationsV3SampleCriterion> buildUnnamed6() => [
      buildGoogleMapsPlayablelocationsV3SampleCriterion(),
      buildGoogleMapsPlayablelocationsV3SampleCriterion(),
    ];

void checkUnnamed6(
    core.List<api.GoogleMapsPlayablelocationsV3SampleCriterion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlayablelocationsV3SampleCriterion(o[0]);
  checkGoogleMapsPlayablelocationsV3SampleCriterion(o[1]);
}

core.int
    buildCounterGoogleMapsPlayablelocationsV3SamplePlayableLocationsRequest = 0;
api.GoogleMapsPlayablelocationsV3SamplePlayableLocationsRequest
    buildGoogleMapsPlayablelocationsV3SamplePlayableLocationsRequest() {
  final o = api.GoogleMapsPlayablelocationsV3SamplePlayableLocationsRequest();
  buildCounterGoogleMapsPlayablelocationsV3SamplePlayableLocationsRequest++;
  if (buildCounterGoogleMapsPlayablelocationsV3SamplePlayableLocationsRequest <
      3) {
    o.areaFilter = buildGoogleMapsPlayablelocationsV3SampleAreaFilter();
    o.criteria = buildUnnamed6();
  }
  buildCounterGoogleMapsPlayablelocationsV3SamplePlayableLocationsRequest--;
  return o;
}

void checkGoogleMapsPlayablelocationsV3SamplePlayableLocationsRequest(
    api.GoogleMapsPlayablelocationsV3SamplePlayableLocationsRequest o) {
  buildCounterGoogleMapsPlayablelocationsV3SamplePlayableLocationsRequest++;
  if (buildCounterGoogleMapsPlayablelocationsV3SamplePlayableLocationsRequest <
      3) {
    checkGoogleMapsPlayablelocationsV3SampleAreaFilter(o.areaFilter!);
    checkUnnamed6(o.criteria!);
  }
  buildCounterGoogleMapsPlayablelocationsV3SamplePlayableLocationsRequest--;
}

core.Map<core.String,
        api.GoogleMapsPlayablelocationsV3SamplePlayableLocationList>
    buildUnnamed7() => {
          'x': buildGoogleMapsPlayablelocationsV3SamplePlayableLocationList(),
          'y': buildGoogleMapsPlayablelocationsV3SamplePlayableLocationList(),
        };

void checkUnnamed7(
    core.Map<core.String,
            api.GoogleMapsPlayablelocationsV3SamplePlayableLocationList>
        o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleMapsPlayablelocationsV3SamplePlayableLocationList(o['x']!);
  checkGoogleMapsPlayablelocationsV3SamplePlayableLocationList(o['y']!);
}

core.int
    buildCounterGoogleMapsPlayablelocationsV3SamplePlayableLocationsResponse =
    0;
api.GoogleMapsPlayablelocationsV3SamplePlayableLocationsResponse
    buildGoogleMapsPlayablelocationsV3SamplePlayableLocationsResponse() {
  final o = api.GoogleMapsPlayablelocationsV3SamplePlayableLocationsResponse();
  buildCounterGoogleMapsPlayablelocationsV3SamplePlayableLocationsResponse++;
  if (buildCounterGoogleMapsPlayablelocationsV3SamplePlayableLocationsResponse <
      3) {
    o.locationsPerGameObjectType = buildUnnamed7();
    o.ttl = 'foo';
  }
  buildCounterGoogleMapsPlayablelocationsV3SamplePlayableLocationsResponse--;
  return o;
}

void checkGoogleMapsPlayablelocationsV3SamplePlayableLocationsResponse(
    api.GoogleMapsPlayablelocationsV3SamplePlayableLocationsResponse o) {
  buildCounterGoogleMapsPlayablelocationsV3SamplePlayableLocationsResponse++;
  if (buildCounterGoogleMapsPlayablelocationsV3SamplePlayableLocationsResponse <
      3) {
    checkUnnamed7(o.locationsPerGameObjectType!);
    unittest.expect(
      o.ttl!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleMapsPlayablelocationsV3SamplePlayableLocationsResponse--;
}

core.int buildCounterGoogleMapsPlayablelocationsV3SampleSpacingOptions = 0;
api.GoogleMapsPlayablelocationsV3SampleSpacingOptions
    buildGoogleMapsPlayablelocationsV3SampleSpacingOptions() {
  final o = api.GoogleMapsPlayablelocationsV3SampleSpacingOptions();
  buildCounterGoogleMapsPlayablelocationsV3SampleSpacingOptions++;
  if (buildCounterGoogleMapsPlayablelocationsV3SampleSpacingOptions < 3) {
    o.minSpacingMeters = 42.0;
    o.pointType = 'foo';
  }
  buildCounterGoogleMapsPlayablelocationsV3SampleSpacingOptions--;
  return o;
}

void checkGoogleMapsPlayablelocationsV3SampleSpacingOptions(
    api.GoogleMapsPlayablelocationsV3SampleSpacingOptions o) {
  buildCounterGoogleMapsPlayablelocationsV3SampleSpacingOptions++;
  if (buildCounterGoogleMapsPlayablelocationsV3SampleSpacingOptions < 3) {
    unittest.expect(
      o.minSpacingMeters!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.pointType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleMapsPlayablelocationsV3SampleSpacingOptions--;
}

core.int buildCounterGoogleMapsUnityClientInfo = 0;
api.GoogleMapsUnityClientInfo buildGoogleMapsUnityClientInfo() {
  final o = api.GoogleMapsUnityClientInfo();
  buildCounterGoogleMapsUnityClientInfo++;
  if (buildCounterGoogleMapsUnityClientInfo < 3) {
    o.apiClient = 'foo';
    o.applicationId = 'foo';
    o.applicationVersion = 'foo';
    o.deviceModel = 'foo';
    o.languageCode = 'foo';
    o.operatingSystem = 'foo';
    o.operatingSystemBuild = 'foo';
    o.platform = 'foo';
  }
  buildCounterGoogleMapsUnityClientInfo--;
  return o;
}

void checkGoogleMapsUnityClientInfo(api.GoogleMapsUnityClientInfo o) {
  buildCounterGoogleMapsUnityClientInfo++;
  if (buildCounterGoogleMapsUnityClientInfo < 3) {
    unittest.expect(
      o.apiClient!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.applicationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.applicationVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deviceModel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operatingSystem!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.operatingSystemBuild!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.platform!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleMapsUnityClientInfo--;
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

void main() {
  unittest.group('obj-schema-GoogleMapsPlayablelocationsV3Impression', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlayablelocationsV3Impression();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlayablelocationsV3Impression.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlayablelocationsV3Impression(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleMapsPlayablelocationsV3LogImpressionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlayablelocationsV3LogImpressionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleMapsPlayablelocationsV3LogImpressionsRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlayablelocationsV3LogImpressionsRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleMapsPlayablelocationsV3LogImpressionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlayablelocationsV3LogImpressionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleMapsPlayablelocationsV3LogImpressionsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlayablelocationsV3LogImpressionsResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleMapsPlayablelocationsV3LogPlayerReportsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlayablelocationsV3LogPlayerReportsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleMapsPlayablelocationsV3LogPlayerReportsRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlayablelocationsV3LogPlayerReportsRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleMapsPlayablelocationsV3LogPlayerReportsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlayablelocationsV3LogPlayerReportsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleMapsPlayablelocationsV3LogPlayerReportsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlayablelocationsV3LogPlayerReportsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlayablelocationsV3PlayerReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlayablelocationsV3PlayerReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlayablelocationsV3PlayerReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlayablelocationsV3PlayerReport(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlayablelocationsV3SampleAreaFilter',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlayablelocationsV3SampleAreaFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlayablelocationsV3SampleAreaFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlayablelocationsV3SampleAreaFilter(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlayablelocationsV3SampleCriterion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlayablelocationsV3SampleCriterion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlayablelocationsV3SampleCriterion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlayablelocationsV3SampleCriterion(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlayablelocationsV3SampleFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlayablelocationsV3SampleFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlayablelocationsV3SampleFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlayablelocationsV3SampleFilter(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleMapsPlayablelocationsV3SamplePlayableLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlayablelocationsV3SamplePlayableLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleMapsPlayablelocationsV3SamplePlayableLocation.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlayablelocationsV3SamplePlayableLocation(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleMapsPlayablelocationsV3SamplePlayableLocationList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlayablelocationsV3SamplePlayableLocationList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleMapsPlayablelocationsV3SamplePlayableLocationList.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlayablelocationsV3SamplePlayableLocationList(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleMapsPlayablelocationsV3SamplePlayableLocationsRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleMapsPlayablelocationsV3SamplePlayableLocationsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlayablelocationsV3SamplePlayableLocationsRequest
          .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlayablelocationsV3SamplePlayableLocationsRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleMapsPlayablelocationsV3SamplePlayableLocationsResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o =
          buildGoogleMapsPlayablelocationsV3SamplePlayableLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleMapsPlayablelocationsV3SamplePlayableLocationsResponse
              .fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlayablelocationsV3SamplePlayableLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsPlayablelocationsV3SampleSpacingOptions',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsPlayablelocationsV3SampleSpacingOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsPlayablelocationsV3SampleSpacingOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsPlayablelocationsV3SampleSpacingOptions(od);
    });
  });

  unittest.group('obj-schema-GoogleMapsUnityClientInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleMapsUnityClientInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleMapsUnityClientInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleMapsUnityClientInfo(od);
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

  unittest.group('resource-V3Resource', () {
    unittest.test('method--logImpressions', () async {
      final mock = HttpServerMock();
      final res = api.PlayableLocationsApi(mock).v3;
      final arg_request =
          buildGoogleMapsPlayablelocationsV3LogImpressionsRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleMapsPlayablelocationsV3LogImpressionsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleMapsPlayablelocationsV3LogImpressionsRequest(obj);

        final path = (req.url).path;
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
          unittest.equals('v3:logImpressions'),
        );
        pathOffset += 17;

        final query = (req.url).query;
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
            .encode(buildGoogleMapsPlayablelocationsV3LogImpressionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.logImpressions(arg_request, $fields: arg_$fields);
      checkGoogleMapsPlayablelocationsV3LogImpressionsResponse(
          response as api.GoogleMapsPlayablelocationsV3LogImpressionsResponse);
    });

    unittest.test('method--logPlayerReports', () async {
      final mock = HttpServerMock();
      final res = api.PlayableLocationsApi(mock).v3;
      final arg_request =
          buildGoogleMapsPlayablelocationsV3LogPlayerReportsRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleMapsPlayablelocationsV3LogPlayerReportsRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleMapsPlayablelocationsV3LogPlayerReportsRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('v3:logPlayerReports'),
        );
        pathOffset += 19;

        final query = (req.url).query;
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
            buildGoogleMapsPlayablelocationsV3LogPlayerReportsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.logPlayerReports(arg_request, $fields: arg_$fields);
      checkGoogleMapsPlayablelocationsV3LogPlayerReportsResponse(response
          as api.GoogleMapsPlayablelocationsV3LogPlayerReportsResponse);
    });

    unittest.test('method--samplePlayableLocations', () async {
      final mock = HttpServerMock();
      final res = api.PlayableLocationsApi(mock).v3;
      final arg_request =
          buildGoogleMapsPlayablelocationsV3SamplePlayableLocationsRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleMapsPlayablelocationsV3SamplePlayableLocationsRequest
                .fromJson(json as core.Map<core.String, core.dynamic>);
        checkGoogleMapsPlayablelocationsV3SamplePlayableLocationsRequest(obj);

        final path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        unittest.expect(
          path.substring(pathOffset, pathOffset + 26),
          unittest.equals('v3:samplePlayableLocations'),
        );
        pathOffset += 26;

        final query = (req.url).query;
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
            buildGoogleMapsPlayablelocationsV3SamplePlayableLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.samplePlayableLocations(arg_request, $fields: arg_$fields);
      checkGoogleMapsPlayablelocationsV3SamplePlayableLocationsResponse(response
          as api.GoogleMapsPlayablelocationsV3SamplePlayableLocationsResponse);
    });
  });
}
