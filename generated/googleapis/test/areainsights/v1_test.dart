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

import 'package:googleapis/areainsights/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterCircle = 0;
api.Circle buildCircle() {
  final o = api.Circle();
  buildCounterCircle++;
  if (buildCounterCircle < 3) {
    o.latLng = buildLatLng();
    o.place = 'foo';
    o.radius = 42;
  }
  buildCounterCircle--;
  return o;
}

void checkCircle(api.Circle o) {
  buildCounterCircle++;
  if (buildCounterCircle < 3) {
    checkLatLng(o.latLng!);
    unittest.expect(
      o.place!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.radius!,
      unittest.equals(42),
    );
  }
  buildCounterCircle--;
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

core.int buildCounterComputeInsightsRequest = 0;
api.ComputeInsightsRequest buildComputeInsightsRequest() {
  final o = api.ComputeInsightsRequest();
  buildCounterComputeInsightsRequest++;
  if (buildCounterComputeInsightsRequest < 3) {
    o.filter = buildFilter();
    o.insights = buildUnnamed0();
  }
  buildCounterComputeInsightsRequest--;
  return o;
}

void checkComputeInsightsRequest(api.ComputeInsightsRequest o) {
  buildCounterComputeInsightsRequest++;
  if (buildCounterComputeInsightsRequest < 3) {
    checkFilter(o.filter!);
    checkUnnamed0(o.insights!);
  }
  buildCounterComputeInsightsRequest--;
}

core.List<api.PlaceInsight> buildUnnamed1() => [
      buildPlaceInsight(),
      buildPlaceInsight(),
    ];

void checkUnnamed1(core.List<api.PlaceInsight> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlaceInsight(o[0]);
  checkPlaceInsight(o[1]);
}

core.int buildCounterComputeInsightsResponse = 0;
api.ComputeInsightsResponse buildComputeInsightsResponse() {
  final o = api.ComputeInsightsResponse();
  buildCounterComputeInsightsResponse++;
  if (buildCounterComputeInsightsResponse < 3) {
    o.count = 'foo';
    o.placeInsights = buildUnnamed1();
  }
  buildCounterComputeInsightsResponse--;
  return o;
}

void checkComputeInsightsResponse(api.ComputeInsightsResponse o) {
  buildCounterComputeInsightsResponse++;
  if (buildCounterComputeInsightsResponse < 3) {
    unittest.expect(
      o.count!,
      unittest.equals('foo'),
    );
    checkUnnamed1(o.placeInsights!);
  }
  buildCounterComputeInsightsResponse--;
}

core.int buildCounterCustomArea = 0;
api.CustomArea buildCustomArea() {
  final o = api.CustomArea();
  buildCounterCustomArea++;
  if (buildCounterCustomArea < 3) {
    o.polygon = buildPolygon();
  }
  buildCounterCustomArea--;
  return o;
}

void checkCustomArea(api.CustomArea o) {
  buildCounterCustomArea++;
  if (buildCounterCustomArea < 3) {
    checkPolygon(o.polygon!);
  }
  buildCounterCustomArea--;
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

core.int buildCounterFilter = 0;
api.Filter buildFilter() {
  final o = api.Filter();
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    o.locationFilter = buildLocationFilter();
    o.operatingStatus = buildUnnamed2();
    o.priceLevels = buildUnnamed3();
    o.ratingFilter = buildRatingFilter();
    o.typeFilter = buildTypeFilter();
  }
  buildCounterFilter--;
  return o;
}

void checkFilter(api.Filter o) {
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    checkLocationFilter(o.locationFilter!);
    checkUnnamed2(o.operatingStatus!);
    checkUnnamed3(o.priceLevels!);
    checkRatingFilter(o.ratingFilter!);
    checkTypeFilter(o.typeFilter!);
  }
  buildCounterFilter--;
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

core.int buildCounterLocationFilter = 0;
api.LocationFilter buildLocationFilter() {
  final o = api.LocationFilter();
  buildCounterLocationFilter++;
  if (buildCounterLocationFilter < 3) {
    o.circle = buildCircle();
    o.customArea = buildCustomArea();
    o.region = buildRegion();
  }
  buildCounterLocationFilter--;
  return o;
}

void checkLocationFilter(api.LocationFilter o) {
  buildCounterLocationFilter++;
  if (buildCounterLocationFilter < 3) {
    checkCircle(o.circle!);
    checkCustomArea(o.customArea!);
    checkRegion(o.region!);
  }
  buildCounterLocationFilter--;
}

core.int buildCounterPlaceInsight = 0;
api.PlaceInsight buildPlaceInsight() {
  final o = api.PlaceInsight();
  buildCounterPlaceInsight++;
  if (buildCounterPlaceInsight < 3) {
    o.place = 'foo';
  }
  buildCounterPlaceInsight--;
  return o;
}

void checkPlaceInsight(api.PlaceInsight o) {
  buildCounterPlaceInsight++;
  if (buildCounterPlaceInsight < 3) {
    unittest.expect(
      o.place!,
      unittest.equals('foo'),
    );
  }
  buildCounterPlaceInsight--;
}

core.List<api.LatLng> buildUnnamed4() => [
      buildLatLng(),
      buildLatLng(),
    ];

void checkUnnamed4(core.List<api.LatLng> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLatLng(o[0]);
  checkLatLng(o[1]);
}

core.int buildCounterPolygon = 0;
api.Polygon buildPolygon() {
  final o = api.Polygon();
  buildCounterPolygon++;
  if (buildCounterPolygon < 3) {
    o.coordinates = buildUnnamed4();
  }
  buildCounterPolygon--;
  return o;
}

void checkPolygon(api.Polygon o) {
  buildCounterPolygon++;
  if (buildCounterPolygon < 3) {
    checkUnnamed4(o.coordinates!);
  }
  buildCounterPolygon--;
}

core.int buildCounterRatingFilter = 0;
api.RatingFilter buildRatingFilter() {
  final o = api.RatingFilter();
  buildCounterRatingFilter++;
  if (buildCounterRatingFilter < 3) {
    o.maxRating = 42.0;
    o.minRating = 42.0;
  }
  buildCounterRatingFilter--;
  return o;
}

void checkRatingFilter(api.RatingFilter o) {
  buildCounterRatingFilter++;
  if (buildCounterRatingFilter < 3) {
    unittest.expect(
      o.maxRating!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.minRating!,
      unittest.equals(42.0),
    );
  }
  buildCounterRatingFilter--;
}

core.int buildCounterRegion = 0;
api.Region buildRegion() {
  final o = api.Region();
  buildCounterRegion++;
  if (buildCounterRegion < 3) {
    o.place = 'foo';
  }
  buildCounterRegion--;
  return o;
}

void checkRegion(api.Region o) {
  buildCounterRegion++;
  if (buildCounterRegion < 3) {
    unittest.expect(
      o.place!,
      unittest.equals('foo'),
    );
  }
  buildCounterRegion--;
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

core.List<core.String> buildUnnamed8() => [
      'foo',
      'foo',
    ];

void checkUnnamed8(core.List<core.String> o) {
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

core.int buildCounterTypeFilter = 0;
api.TypeFilter buildTypeFilter() {
  final o = api.TypeFilter();
  buildCounterTypeFilter++;
  if (buildCounterTypeFilter < 3) {
    o.excludedPrimaryTypes = buildUnnamed5();
    o.excludedTypes = buildUnnamed6();
    o.includedPrimaryTypes = buildUnnamed7();
    o.includedTypes = buildUnnamed8();
  }
  buildCounterTypeFilter--;
  return o;
}

void checkTypeFilter(api.TypeFilter o) {
  buildCounterTypeFilter++;
  if (buildCounterTypeFilter < 3) {
    checkUnnamed5(o.excludedPrimaryTypes!);
    checkUnnamed6(o.excludedTypes!);
    checkUnnamed7(o.includedPrimaryTypes!);
    checkUnnamed8(o.includedTypes!);
  }
  buildCounterTypeFilter--;
}

void main() {
  unittest.group('obj-schema-Circle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCircle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Circle.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCircle(od);
    });
  });

  unittest.group('obj-schema-ComputeInsightsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeInsightsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeInsightsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComputeInsightsRequest(od);
    });
  });

  unittest.group('obj-schema-ComputeInsightsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeInsightsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeInsightsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComputeInsightsResponse(od);
    });
  });

  unittest.group('obj-schema-CustomArea', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomArea();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CustomArea.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCustomArea(od);
    });
  });

  unittest.group('obj-schema-Filter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Filter.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFilter(od);
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

  unittest.group('obj-schema-LocationFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocationFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LocationFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLocationFilter(od);
    });
  });

  unittest.group('obj-schema-PlaceInsight', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlaceInsight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlaceInsight.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlaceInsight(od);
    });
  });

  unittest.group('obj-schema-Polygon', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolygon();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Polygon.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPolygon(od);
    });
  });

  unittest.group('obj-schema-RatingFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRatingFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RatingFilter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRatingFilter(od);
    });
  });

  unittest.group('obj-schema-Region', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Region.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRegion(od);
    });
  });

  unittest.group('obj-schema-TypeFilter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTypeFilter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TypeFilter.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTypeFilter(od);
    });
  });

  unittest.group('resource-V1Resource', () {
    unittest.test('method--computeInsights', () async {
      final mock = HttpServerMock();
      final res = api.AreaInsightsApi(mock).v1;
      final arg_request = buildComputeInsightsRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ComputeInsightsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkComputeInsightsRequest(obj);

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
          unittest.equals('v1:computeInsights'),
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
        final resp = convert.json.encode(buildComputeInsightsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.computeInsights(arg_request, $fields: arg_$fields);
      checkComputeInsightsResponse(response as api.ComputeInsightsResponse);
    });
  });
}
