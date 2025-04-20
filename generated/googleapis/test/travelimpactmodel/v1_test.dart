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
// ignore_for_file: unused_import
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/travelimpactmodel/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<api.Flight> buildUnnamed0() => [
      buildFlight(),
      buildFlight(),
    ];

void checkUnnamed0(core.List<api.Flight> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFlight(o[0]);
  checkFlight(o[1]);
}

core.int buildCounterComputeFlightEmissionsRequest = 0;
api.ComputeFlightEmissionsRequest buildComputeFlightEmissionsRequest() {
  final o = api.ComputeFlightEmissionsRequest();
  buildCounterComputeFlightEmissionsRequest++;
  if (buildCounterComputeFlightEmissionsRequest < 3) {
    o.flights = buildUnnamed0();
  }
  buildCounterComputeFlightEmissionsRequest--;
  return o;
}

void checkComputeFlightEmissionsRequest(api.ComputeFlightEmissionsRequest o) {
  buildCounterComputeFlightEmissionsRequest++;
  if (buildCounterComputeFlightEmissionsRequest < 3) {
    checkUnnamed0(o.flights!);
  }
  buildCounterComputeFlightEmissionsRequest--;
}

core.List<api.FlightWithEmissions> buildUnnamed1() => [
      buildFlightWithEmissions(),
      buildFlightWithEmissions(),
    ];

void checkUnnamed1(core.List<api.FlightWithEmissions> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFlightWithEmissions(o[0]);
  checkFlightWithEmissions(o[1]);
}

core.int buildCounterComputeFlightEmissionsResponse = 0;
api.ComputeFlightEmissionsResponse buildComputeFlightEmissionsResponse() {
  final o = api.ComputeFlightEmissionsResponse();
  buildCounterComputeFlightEmissionsResponse++;
  if (buildCounterComputeFlightEmissionsResponse < 3) {
    o.flightEmissions = buildUnnamed1();
    o.modelVersion = buildModelVersion();
  }
  buildCounterComputeFlightEmissionsResponse--;
  return o;
}

void checkComputeFlightEmissionsResponse(api.ComputeFlightEmissionsResponse o) {
  buildCounterComputeFlightEmissionsResponse++;
  if (buildCounterComputeFlightEmissionsResponse < 3) {
    checkUnnamed1(o.flightEmissions!);
    checkModelVersion(o.modelVersion!);
  }
  buildCounterComputeFlightEmissionsResponse--;
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

core.int buildCounterEmissionsGramsPerPax = 0;
api.EmissionsGramsPerPax buildEmissionsGramsPerPax() {
  final o = api.EmissionsGramsPerPax();
  buildCounterEmissionsGramsPerPax++;
  if (buildCounterEmissionsGramsPerPax < 3) {
    o.business = 42;
    o.economy = 42;
    o.first = 42;
    o.premiumEconomy = 42;
  }
  buildCounterEmissionsGramsPerPax--;
  return o;
}

void checkEmissionsGramsPerPax(api.EmissionsGramsPerPax o) {
  buildCounterEmissionsGramsPerPax++;
  if (buildCounterEmissionsGramsPerPax < 3) {
    unittest.expect(
      o.business!,
      unittest.equals(42),
    );
    unittest.expect(
      o.economy!,
      unittest.equals(42),
    );
    unittest.expect(
      o.first!,
      unittest.equals(42),
    );
    unittest.expect(
      o.premiumEconomy!,
      unittest.equals(42),
    );
  }
  buildCounterEmissionsGramsPerPax--;
}

core.int buildCounterFlight = 0;
api.Flight buildFlight() {
  final o = api.Flight();
  buildCounterFlight++;
  if (buildCounterFlight < 3) {
    o.departureDate = buildDate();
    o.destination = 'foo';
    o.flightNumber = 42;
    o.operatingCarrierCode = 'foo';
    o.origin = 'foo';
  }
  buildCounterFlight--;
  return o;
}

void checkFlight(api.Flight o) {
  buildCounterFlight++;
  if (buildCounterFlight < 3) {
    checkDate(o.departureDate!);
    unittest.expect(
      o.destination!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.flightNumber!,
      unittest.equals(42),
    );
    unittest.expect(
      o.operatingCarrierCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.origin!,
      unittest.equals('foo'),
    );
  }
  buildCounterFlight--;
}

core.int buildCounterFlightWithEmissions = 0;
api.FlightWithEmissions buildFlightWithEmissions() {
  final o = api.FlightWithEmissions();
  buildCounterFlightWithEmissions++;
  if (buildCounterFlightWithEmissions < 3) {
    o.emissionsGramsPerPax = buildEmissionsGramsPerPax();
    o.flight = buildFlight();
  }
  buildCounterFlightWithEmissions--;
  return o;
}

void checkFlightWithEmissions(api.FlightWithEmissions o) {
  buildCounterFlightWithEmissions++;
  if (buildCounterFlightWithEmissions < 3) {
    checkEmissionsGramsPerPax(o.emissionsGramsPerPax!);
    checkFlight(o.flight!);
  }
  buildCounterFlightWithEmissions--;
}

core.int buildCounterModelVersion = 0;
api.ModelVersion buildModelVersion() {
  final o = api.ModelVersion();
  buildCounterModelVersion++;
  if (buildCounterModelVersion < 3) {
    o.dated = 'foo';
    o.major = 42;
    o.minor = 42;
    o.patch = 42;
  }
  buildCounterModelVersion--;
  return o;
}

void checkModelVersion(api.ModelVersion o) {
  buildCounterModelVersion++;
  if (buildCounterModelVersion < 3) {
    unittest.expect(
      o.dated!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.major!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minor!,
      unittest.equals(42),
    );
    unittest.expect(
      o.patch!,
      unittest.equals(42),
    );
  }
  buildCounterModelVersion--;
}

void main() {
  unittest.group('obj-schema-ComputeFlightEmissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeFlightEmissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeFlightEmissionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComputeFlightEmissionsRequest(od);
    });
  });

  unittest.group('obj-schema-ComputeFlightEmissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeFlightEmissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeFlightEmissionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComputeFlightEmissionsResponse(od);
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

  unittest.group('obj-schema-EmissionsGramsPerPax', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmissionsGramsPerPax();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EmissionsGramsPerPax.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEmissionsGramsPerPax(od);
    });
  });

  unittest.group('obj-schema-Flight', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFlight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Flight.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFlight(od);
    });
  });

  unittest.group('obj-schema-FlightWithEmissions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFlightWithEmissions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FlightWithEmissions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFlightWithEmissions(od);
    });
  });

  unittest.group('obj-schema-ModelVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModelVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModelVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkModelVersion(od);
    });
  });

  unittest.group('resource-FlightsResource', () {
    unittest.test('method--computeFlightEmissions', () async {
      final mock = HttpServerMock();
      final res = api.TravelImpactModelApi(mock).flights;
      final arg_request = buildComputeFlightEmissionsRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ComputeFlightEmissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkComputeFlightEmissionsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('v1/flights:computeFlightEmissions'),
        );
        pathOffset += 33;

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
        final resp = convert.json.encode(buildComputeFlightEmissionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.computeFlightEmissions(arg_request, $fields: arg_$fields);
      checkComputeFlightEmissionsResponse(
          response as api.ComputeFlightEmissionsResponse);
    });
  });
}
