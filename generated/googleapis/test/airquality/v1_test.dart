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
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/airquality/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAdditionalInfo = 0;
api.AdditionalInfo buildAdditionalInfo() {
  final o = api.AdditionalInfo();
  buildCounterAdditionalInfo++;
  if (buildCounterAdditionalInfo < 3) {
    o.effects = 'foo';
    o.sources = 'foo';
  }
  buildCounterAdditionalInfo--;
  return o;
}

void checkAdditionalInfo(api.AdditionalInfo o) {
  buildCounterAdditionalInfo++;
  if (buildCounterAdditionalInfo < 3) {
    unittest.expect(
      o.effects!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sources!,
      unittest.equals('foo'),
    );
  }
  buildCounterAdditionalInfo--;
}

core.int buildCounterAirQualityIndex = 0;
api.AirQualityIndex buildAirQualityIndex() {
  final o = api.AirQualityIndex();
  buildCounterAirQualityIndex++;
  if (buildCounterAirQualityIndex < 3) {
    o.aqi = 42;
    o.aqiDisplay = 'foo';
    o.category = 'foo';
    o.code = 'foo';
    o.color = buildColor();
    o.displayName = 'foo';
    o.dominantPollutant = 'foo';
  }
  buildCounterAirQualityIndex--;
  return o;
}

void checkAirQualityIndex(api.AirQualityIndex o) {
  buildCounterAirQualityIndex++;
  if (buildCounterAirQualityIndex < 3) {
    unittest.expect(
      o.aqi!,
      unittest.equals(42),
    );
    unittest.expect(
      o.aqiDisplay!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    checkColor(o.color!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dominantPollutant!,
      unittest.equals('foo'),
    );
  }
  buildCounterAirQualityIndex--;
}

core.int buildCounterColor = 0;
api.Color buildColor() {
  final o = api.Color();
  buildCounterColor++;
  if (buildCounterColor < 3) {
    o.alpha = 42.0;
    o.blue = 42.0;
    o.green = 42.0;
    o.red = 42.0;
  }
  buildCounterColor--;
  return o;
}

void checkColor(api.Color o) {
  buildCounterColor++;
  if (buildCounterColor < 3) {
    unittest.expect(
      o.alpha!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.blue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.green!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.red!,
      unittest.equals(42.0),
    );
  }
  buildCounterColor--;
}

core.int buildCounterConcentration = 0;
api.Concentration buildConcentration() {
  final o = api.Concentration();
  buildCounterConcentration++;
  if (buildCounterConcentration < 3) {
    o.units = 'foo';
    o.value = 42.0;
  }
  buildCounterConcentration--;
  return o;
}

void checkConcentration(api.Concentration o) {
  buildCounterConcentration++;
  if (buildCounterConcentration < 3) {
    unittest.expect(
      o.units!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals(42.0),
    );
  }
  buildCounterConcentration--;
}

core.int buildCounterCustomLocalAqi = 0;
api.CustomLocalAqi buildCustomLocalAqi() {
  final o = api.CustomLocalAqi();
  buildCounterCustomLocalAqi++;
  if (buildCounterCustomLocalAqi < 3) {
    o.aqi = 'foo';
    o.regionCode = 'foo';
  }
  buildCounterCustomLocalAqi--;
  return o;
}

void checkCustomLocalAqi(api.CustomLocalAqi o) {
  buildCounterCustomLocalAqi++;
  if (buildCounterCustomLocalAqi < 3) {
    unittest.expect(
      o.aqi!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterCustomLocalAqi--;
}

core.int buildCounterHealthRecommendations = 0;
api.HealthRecommendations buildHealthRecommendations() {
  final o = api.HealthRecommendations();
  buildCounterHealthRecommendations++;
  if (buildCounterHealthRecommendations < 3) {
    o.athletes = 'foo';
    o.children = 'foo';
    o.elderly = 'foo';
    o.generalPopulation = 'foo';
    o.heartDiseasePopulation = 'foo';
    o.lungDiseasePopulation = 'foo';
    o.pregnantWomen = 'foo';
  }
  buildCounterHealthRecommendations--;
  return o;
}

void checkHealthRecommendations(api.HealthRecommendations o) {
  buildCounterHealthRecommendations++;
  if (buildCounterHealthRecommendations < 3) {
    unittest.expect(
      o.athletes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.children!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.elderly!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.generalPopulation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.heartDiseasePopulation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lungDiseasePopulation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pregnantWomen!,
      unittest.equals('foo'),
    );
  }
  buildCounterHealthRecommendations--;
}

core.List<api.AirQualityIndex> buildUnnamed0() => [
      buildAirQualityIndex(),
      buildAirQualityIndex(),
    ];

void checkUnnamed0(core.List<api.AirQualityIndex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAirQualityIndex(o[0]);
  checkAirQualityIndex(o[1]);
}

core.List<api.Pollutant> buildUnnamed1() => [
      buildPollutant(),
      buildPollutant(),
    ];

void checkUnnamed1(core.List<api.Pollutant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPollutant(o[0]);
  checkPollutant(o[1]);
}

core.int buildCounterHourInfo = 0;
api.HourInfo buildHourInfo() {
  final o = api.HourInfo();
  buildCounterHourInfo++;
  if (buildCounterHourInfo < 3) {
    o.dateTime = 'foo';
    o.healthRecommendations = buildHealthRecommendations();
    o.indexes = buildUnnamed0();
    o.pollutants = buildUnnamed1();
  }
  buildCounterHourInfo--;
  return o;
}

void checkHourInfo(api.HourInfo o) {
  buildCounterHourInfo++;
  if (buildCounterHourInfo < 3) {
    unittest.expect(
      o.dateTime!,
      unittest.equals('foo'),
    );
    checkHealthRecommendations(o.healthRecommendations!);
    checkUnnamed0(o.indexes!);
    checkUnnamed1(o.pollutants!);
  }
  buildCounterHourInfo--;
}

core.List<api.AirQualityIndex> buildUnnamed2() => [
      buildAirQualityIndex(),
      buildAirQualityIndex(),
    ];

void checkUnnamed2(core.List<api.AirQualityIndex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAirQualityIndex(o[0]);
  checkAirQualityIndex(o[1]);
}

core.List<api.Pollutant> buildUnnamed3() => [
      buildPollutant(),
      buildPollutant(),
    ];

void checkUnnamed3(core.List<api.Pollutant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPollutant(o[0]);
  checkPollutant(o[1]);
}

core.int buildCounterHourlyForecast = 0;
api.HourlyForecast buildHourlyForecast() {
  final o = api.HourlyForecast();
  buildCounterHourlyForecast++;
  if (buildCounterHourlyForecast < 3) {
    o.dateTime = 'foo';
    o.healthRecommendations = buildHealthRecommendations();
    o.indexes = buildUnnamed2();
    o.pollutants = buildUnnamed3();
  }
  buildCounterHourlyForecast--;
  return o;
}

void checkHourlyForecast(api.HourlyForecast o) {
  buildCounterHourlyForecast++;
  if (buildCounterHourlyForecast < 3) {
    unittest.expect(
      o.dateTime!,
      unittest.equals('foo'),
    );
    checkHealthRecommendations(o.healthRecommendations!);
    checkUnnamed2(o.indexes!);
    checkUnnamed3(o.pollutants!);
  }
  buildCounterHourlyForecast--;
}

core.Map<core.String, core.Object?> buildUnnamed4() => {
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

void checkUnnamed4(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed5() => [
      buildUnnamed4(),
      buildUnnamed4(),
    ];

void checkUnnamed5(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed4(o[0]);
  checkUnnamed4(o[1]);
}

core.int buildCounterHttpBody = 0;
api.HttpBody buildHttpBody() {
  final o = api.HttpBody();
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    o.contentType = 'foo';
    o.data = 'foo';
    o.extensions = buildUnnamed5();
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
    checkUnnamed5(o.extensions!);
  }
  buildCounterHttpBody--;
}

core.int buildCounterInterval = 0;
api.Interval buildInterval() {
  final o = api.Interval();
  buildCounterInterval++;
  if (buildCounterInterval < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterInterval--;
  return o;
}

void checkInterval(api.Interval o) {
  buildCounterInterval++;
  if (buildCounterInterval < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterInterval--;
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

core.List<api.CustomLocalAqi> buildUnnamed6() => [
      buildCustomLocalAqi(),
      buildCustomLocalAqi(),
    ];

void checkUnnamed6(core.List<api.CustomLocalAqi> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomLocalAqi(o[0]);
  checkCustomLocalAqi(o[1]);
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

core.int buildCounterLookupCurrentConditionsRequest = 0;
api.LookupCurrentConditionsRequest buildLookupCurrentConditionsRequest() {
  final o = api.LookupCurrentConditionsRequest();
  buildCounterLookupCurrentConditionsRequest++;
  if (buildCounterLookupCurrentConditionsRequest < 3) {
    o.customLocalAqis = buildUnnamed6();
    o.extraComputations = buildUnnamed7();
    o.languageCode = 'foo';
    o.location = buildLatLng();
    o.uaqiColorPalette = 'foo';
    o.universalAqi = true;
  }
  buildCounterLookupCurrentConditionsRequest--;
  return o;
}

void checkLookupCurrentConditionsRequest(api.LookupCurrentConditionsRequest o) {
  buildCounterLookupCurrentConditionsRequest++;
  if (buildCounterLookupCurrentConditionsRequest < 3) {
    checkUnnamed6(o.customLocalAqis!);
    checkUnnamed7(o.extraComputations!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    checkLatLng(o.location!);
    unittest.expect(
      o.uaqiColorPalette!,
      unittest.equals('foo'),
    );
    unittest.expect(o.universalAqi!, unittest.isTrue);
  }
  buildCounterLookupCurrentConditionsRequest--;
}

core.List<api.AirQualityIndex> buildUnnamed8() => [
      buildAirQualityIndex(),
      buildAirQualityIndex(),
    ];

void checkUnnamed8(core.List<api.AirQualityIndex> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAirQualityIndex(o[0]);
  checkAirQualityIndex(o[1]);
}

core.List<api.Pollutant> buildUnnamed9() => [
      buildPollutant(),
      buildPollutant(),
    ];

void checkUnnamed9(core.List<api.Pollutant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPollutant(o[0]);
  checkPollutant(o[1]);
}

core.int buildCounterLookupCurrentConditionsResponse = 0;
api.LookupCurrentConditionsResponse buildLookupCurrentConditionsResponse() {
  final o = api.LookupCurrentConditionsResponse();
  buildCounterLookupCurrentConditionsResponse++;
  if (buildCounterLookupCurrentConditionsResponse < 3) {
    o.dateTime = 'foo';
    o.healthRecommendations = buildHealthRecommendations();
    o.indexes = buildUnnamed8();
    o.pollutants = buildUnnamed9();
    o.regionCode = 'foo';
  }
  buildCounterLookupCurrentConditionsResponse--;
  return o;
}

void checkLookupCurrentConditionsResponse(
    api.LookupCurrentConditionsResponse o) {
  buildCounterLookupCurrentConditionsResponse++;
  if (buildCounterLookupCurrentConditionsResponse < 3) {
    unittest.expect(
      o.dateTime!,
      unittest.equals('foo'),
    );
    checkHealthRecommendations(o.healthRecommendations!);
    checkUnnamed8(o.indexes!);
    checkUnnamed9(o.pollutants!);
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterLookupCurrentConditionsResponse--;
}

core.List<api.CustomLocalAqi> buildUnnamed10() => [
      buildCustomLocalAqi(),
      buildCustomLocalAqi(),
    ];

void checkUnnamed10(core.List<api.CustomLocalAqi> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomLocalAqi(o[0]);
  checkCustomLocalAqi(o[1]);
}

core.List<core.String> buildUnnamed11() => [
      'foo',
      'foo',
    ];

void checkUnnamed11(core.List<core.String> o) {
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

core.int buildCounterLookupForecastRequest = 0;
api.LookupForecastRequest buildLookupForecastRequest() {
  final o = api.LookupForecastRequest();
  buildCounterLookupForecastRequest++;
  if (buildCounterLookupForecastRequest < 3) {
    o.customLocalAqis = buildUnnamed10();
    o.dateTime = 'foo';
    o.extraComputations = buildUnnamed11();
    o.languageCode = 'foo';
    o.location = buildLatLng();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.period = buildInterval();
    o.uaqiColorPalette = 'foo';
    o.universalAqi = true;
  }
  buildCounterLookupForecastRequest--;
  return o;
}

void checkLookupForecastRequest(api.LookupForecastRequest o) {
  buildCounterLookupForecastRequest++;
  if (buildCounterLookupForecastRequest < 3) {
    checkUnnamed10(o.customLocalAqis!);
    unittest.expect(
      o.dateTime!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.extraComputations!);
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    checkLatLng(o.location!);
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
    checkInterval(o.period!);
    unittest.expect(
      o.uaqiColorPalette!,
      unittest.equals('foo'),
    );
    unittest.expect(o.universalAqi!, unittest.isTrue);
  }
  buildCounterLookupForecastRequest--;
}

core.List<api.HourlyForecast> buildUnnamed12() => [
      buildHourlyForecast(),
      buildHourlyForecast(),
    ];

void checkUnnamed12(core.List<api.HourlyForecast> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHourlyForecast(o[0]);
  checkHourlyForecast(o[1]);
}

core.int buildCounterLookupForecastResponse = 0;
api.LookupForecastResponse buildLookupForecastResponse() {
  final o = api.LookupForecastResponse();
  buildCounterLookupForecastResponse++;
  if (buildCounterLookupForecastResponse < 3) {
    o.hourlyForecasts = buildUnnamed12();
    o.nextPageToken = 'foo';
    o.regionCode = 'foo';
  }
  buildCounterLookupForecastResponse--;
  return o;
}

void checkLookupForecastResponse(api.LookupForecastResponse o) {
  buildCounterLookupForecastResponse++;
  if (buildCounterLookupForecastResponse < 3) {
    checkUnnamed12(o.hourlyForecasts!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterLookupForecastResponse--;
}

core.List<api.CustomLocalAqi> buildUnnamed13() => [
      buildCustomLocalAqi(),
      buildCustomLocalAqi(),
    ];

void checkUnnamed13(core.List<api.CustomLocalAqi> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCustomLocalAqi(o[0]);
  checkCustomLocalAqi(o[1]);
}

core.List<core.String> buildUnnamed14() => [
      'foo',
      'foo',
    ];

void checkUnnamed14(core.List<core.String> o) {
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

core.int buildCounterLookupHistoryRequest = 0;
api.LookupHistoryRequest buildLookupHistoryRequest() {
  final o = api.LookupHistoryRequest();
  buildCounterLookupHistoryRequest++;
  if (buildCounterLookupHistoryRequest < 3) {
    o.customLocalAqis = buildUnnamed13();
    o.dateTime = 'foo';
    o.extraComputations = buildUnnamed14();
    o.hours = 42;
    o.languageCode = 'foo';
    o.location = buildLatLng();
    o.pageSize = 42;
    o.pageToken = 'foo';
    o.period = buildInterval();
    o.uaqiColorPalette = 'foo';
    o.universalAqi = true;
  }
  buildCounterLookupHistoryRequest--;
  return o;
}

void checkLookupHistoryRequest(api.LookupHistoryRequest o) {
  buildCounterLookupHistoryRequest++;
  if (buildCounterLookupHistoryRequest < 3) {
    checkUnnamed13(o.customLocalAqis!);
    unittest.expect(
      o.dateTime!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.extraComputations!);
    unittest.expect(
      o.hours!,
      unittest.equals(42),
    );
    unittest.expect(
      o.languageCode!,
      unittest.equals('foo'),
    );
    checkLatLng(o.location!);
    unittest.expect(
      o.pageSize!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pageToken!,
      unittest.equals('foo'),
    );
    checkInterval(o.period!);
    unittest.expect(
      o.uaqiColorPalette!,
      unittest.equals('foo'),
    );
    unittest.expect(o.universalAqi!, unittest.isTrue);
  }
  buildCounterLookupHistoryRequest--;
}

core.List<api.HourInfo> buildUnnamed15() => [
      buildHourInfo(),
      buildHourInfo(),
    ];

void checkUnnamed15(core.List<api.HourInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHourInfo(o[0]);
  checkHourInfo(o[1]);
}

core.int buildCounterLookupHistoryResponse = 0;
api.LookupHistoryResponse buildLookupHistoryResponse() {
  final o = api.LookupHistoryResponse();
  buildCounterLookupHistoryResponse++;
  if (buildCounterLookupHistoryResponse < 3) {
    o.hoursInfo = buildUnnamed15();
    o.nextPageToken = 'foo';
    o.regionCode = 'foo';
  }
  buildCounterLookupHistoryResponse--;
  return o;
}

void checkLookupHistoryResponse(api.LookupHistoryResponse o) {
  buildCounterLookupHistoryResponse++;
  if (buildCounterLookupHistoryResponse < 3) {
    checkUnnamed15(o.hoursInfo!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.regionCode!,
      unittest.equals('foo'),
    );
  }
  buildCounterLookupHistoryResponse--;
}

core.int buildCounterPollutant = 0;
api.Pollutant buildPollutant() {
  final o = api.Pollutant();
  buildCounterPollutant++;
  if (buildCounterPollutant < 3) {
    o.additionalInfo = buildAdditionalInfo();
    o.code = 'foo';
    o.concentration = buildConcentration();
    o.displayName = 'foo';
    o.fullName = 'foo';
  }
  buildCounterPollutant--;
  return o;
}

void checkPollutant(api.Pollutant o) {
  buildCounterPollutant++;
  if (buildCounterPollutant < 3) {
    checkAdditionalInfo(o.additionalInfo!);
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    checkConcentration(o.concentration!);
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fullName!,
      unittest.equals('foo'),
    );
  }
  buildCounterPollutant--;
}

void main() {
  unittest.group('obj-schema-AdditionalInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAdditionalInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AdditionalInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAdditionalInfo(od);
    });
  });

  unittest.group('obj-schema-AirQualityIndex', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAirQualityIndex();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AirQualityIndex.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAirQualityIndex(od);
    });
  });

  unittest.group('obj-schema-Color', () {
    unittest.test('to-json--from-json', () async {
      final o = buildColor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Color.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkColor(od);
    });
  });

  unittest.group('obj-schema-Concentration', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConcentration();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Concentration.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConcentration(od);
    });
  });

  unittest.group('obj-schema-CustomLocalAqi', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomLocalAqi();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomLocalAqi.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomLocalAqi(od);
    });
  });

  unittest.group('obj-schema-HealthRecommendations', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHealthRecommendations();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HealthRecommendations.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHealthRecommendations(od);
    });
  });

  unittest.group('obj-schema-HourInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHourInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.HourInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHourInfo(od);
    });
  });

  unittest.group('obj-schema-HourlyForecast', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHourlyForecast();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HourlyForecast.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHourlyForecast(od);
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

  unittest.group('obj-schema-Interval', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInterval();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Interval.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkInterval(od);
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

  unittest.group('obj-schema-LookupCurrentConditionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLookupCurrentConditionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LookupCurrentConditionsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLookupCurrentConditionsRequest(od);
    });
  });

  unittest.group('obj-schema-LookupCurrentConditionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLookupCurrentConditionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LookupCurrentConditionsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLookupCurrentConditionsResponse(od);
    });
  });

  unittest.group('obj-schema-LookupForecastRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLookupForecastRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LookupForecastRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLookupForecastRequest(od);
    });
  });

  unittest.group('obj-schema-LookupForecastResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLookupForecastResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LookupForecastResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLookupForecastResponse(od);
    });
  });

  unittest.group('obj-schema-LookupHistoryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLookupHistoryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LookupHistoryRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLookupHistoryRequest(od);
    });
  });

  unittest.group('obj-schema-LookupHistoryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLookupHistoryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LookupHistoryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLookupHistoryResponse(od);
    });
  });

  unittest.group('obj-schema-Pollutant', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPollutant();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Pollutant.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPollutant(od);
    });
  });

  unittest.group('resource-CurrentConditionsResource', () {
    unittest.test('method--lookup', () async {
      final mock = HttpServerMock();
      final res = api.AirQualityApi(mock).currentConditions;
      final arg_request = buildLookupCurrentConditionsRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LookupCurrentConditionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLookupCurrentConditionsRequest(obj);

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
          path.substring(pathOffset, pathOffset + 27),
          unittest.equals('v1/currentConditions:lookup'),
        );
        pathOffset += 27;

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
            convert.json.encode(buildLookupCurrentConditionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.lookup(arg_request, $fields: arg_$fields);
      checkLookupCurrentConditionsResponse(
          response as api.LookupCurrentConditionsResponse);
    });
  });

  unittest.group('resource-ForecastResource', () {
    unittest.test('method--lookup', () async {
      final mock = HttpServerMock();
      final res = api.AirQualityApi(mock).forecast;
      final arg_request = buildLookupForecastRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LookupForecastRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLookupForecastRequest(obj);

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
          unittest.equals('v1/forecast:lookup'),
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
        final resp = convert.json.encode(buildLookupForecastResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.lookup(arg_request, $fields: arg_$fields);
      checkLookupForecastResponse(response as api.LookupForecastResponse);
    });
  });

  unittest.group('resource-HistoryResource', () {
    unittest.test('method--lookup', () async {
      final mock = HttpServerMock();
      final res = api.AirQualityApi(mock).history;
      final arg_request = buildLookupHistoryRequest();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LookupHistoryRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLookupHistoryRequest(obj);

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
          unittest.equals('v1/history:lookup'),
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLookupHistoryResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.lookup(arg_request, $fields: arg_$fields);
      checkLookupHistoryResponse(response as api.LookupHistoryResponse);
    });
  });

  unittest.group('resource-MapTypesHeatmapTilesResource', () {
    unittest.test('method--lookupHeatmapTile', () async {
      final mock = HttpServerMock();
      final res = api.AirQualityApi(mock).mapTypes.heatmapTiles;
      final arg_mapType = 'foo';
      final arg_zoom = 42;
      final arg_x = 42;
      final arg_y = 42;
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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/mapTypes/'),
        );
        pathOffset += 12;
        index = path.indexOf('/heatmapTiles/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_mapType'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/heatmapTiles/'),
        );
        pathOffset += 14;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_zoom'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        index = path.indexOf('/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_x'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 1),
          unittest.equals('/'),
        );
        pathOffset += 1;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_y'),
        );

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
        final resp = convert.json.encode(buildHttpBody());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.lookupHeatmapTile(
          arg_mapType, arg_zoom, arg_x, arg_y,
          $fields: arg_$fields);
      checkHttpBody(response as api.HttpBody);
    });
  });
}
