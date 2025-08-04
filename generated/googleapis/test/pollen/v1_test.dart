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

import 'package:googleapis/pollen/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

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
    unittest.expect(o.alpha!, unittest.equals(42.0));
    unittest.expect(o.blue!, unittest.equals(42.0));
    unittest.expect(o.green!, unittest.equals(42.0));
    unittest.expect(o.red!, unittest.equals(42.0));
  }
  buildCounterColor--;
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
    unittest.expect(o.day!, unittest.equals(42));
    unittest.expect(o.month!, unittest.equals(42));
    unittest.expect(o.year!, unittest.equals(42));
  }
  buildCounterDate--;
}

core.List<api.PlantInfo> buildUnnamed0() => [
  buildPlantInfo(),
  buildPlantInfo(),
];

void checkUnnamed0(core.List<api.PlantInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPlantInfo(o[0]);
  checkPlantInfo(o[1]);
}

core.List<api.PollenTypeInfo> buildUnnamed1() => [
  buildPollenTypeInfo(),
  buildPollenTypeInfo(),
];

void checkUnnamed1(core.List<api.PollenTypeInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPollenTypeInfo(o[0]);
  checkPollenTypeInfo(o[1]);
}

core.int buildCounterDayInfo = 0;
api.DayInfo buildDayInfo() {
  final o = api.DayInfo();
  buildCounterDayInfo++;
  if (buildCounterDayInfo < 3) {
    o.date = buildDate();
    o.plantInfo = buildUnnamed0();
    o.pollenTypeInfo = buildUnnamed1();
  }
  buildCounterDayInfo--;
  return o;
}

void checkDayInfo(api.DayInfo o) {
  buildCounterDayInfo++;
  if (buildCounterDayInfo < 3) {
    checkDate(o.date!);
    checkUnnamed0(o.plantInfo!);
    checkUnnamed1(o.pollenTypeInfo!);
  }
  buildCounterDayInfo--;
}

core.Map<core.String, core.Object?> buildUnnamed2() => {
  'x': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
  'y': {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo',
  },
};

void checkUnnamed2(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted1['bool'], unittest.equals(true));
  unittest.expect(casted1['string'], unittest.equals('foo'));
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed3() => [
  buildUnnamed2(),
  buildUnnamed2(),
];

void checkUnnamed3(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed2(o[0]);
  checkUnnamed2(o[1]);
}

core.int buildCounterHttpBody = 0;
api.HttpBody buildHttpBody() {
  final o = api.HttpBody();
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    o.contentType = 'foo';
    o.data = 'foo';
    o.extensions = buildUnnamed3();
  }
  buildCounterHttpBody--;
  return o;
}

void checkHttpBody(api.HttpBody o) {
  buildCounterHttpBody++;
  if (buildCounterHttpBody < 3) {
    unittest.expect(o.contentType!, unittest.equals('foo'));
    unittest.expect(o.data!, unittest.equals('foo'));
    checkUnnamed3(o.extensions!);
  }
  buildCounterHttpBody--;
}

core.int buildCounterIndexInfo = 0;
api.IndexInfo buildIndexInfo() {
  final o = api.IndexInfo();
  buildCounterIndexInfo++;
  if (buildCounterIndexInfo < 3) {
    o.category = 'foo';
    o.code = 'foo';
    o.color = buildColor();
    o.displayName = 'foo';
    o.indexDescription = 'foo';
    o.value = 42;
  }
  buildCounterIndexInfo--;
  return o;
}

void checkIndexInfo(api.IndexInfo o) {
  buildCounterIndexInfo++;
  if (buildCounterIndexInfo < 3) {
    unittest.expect(o.category!, unittest.equals('foo'));
    unittest.expect(o.code!, unittest.equals('foo'));
    checkColor(o.color!);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.indexDescription!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals(42));
  }
  buildCounterIndexInfo--;
}

core.List<api.DayInfo> buildUnnamed4() => [buildDayInfo(), buildDayInfo()];

void checkUnnamed4(core.List<api.DayInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDayInfo(o[0]);
  checkDayInfo(o[1]);
}

core.int buildCounterLookupForecastResponse = 0;
api.LookupForecastResponse buildLookupForecastResponse() {
  final o = api.LookupForecastResponse();
  buildCounterLookupForecastResponse++;
  if (buildCounterLookupForecastResponse < 3) {
    o.dailyInfo = buildUnnamed4();
    o.nextPageToken = 'foo';
    o.regionCode = 'foo';
  }
  buildCounterLookupForecastResponse--;
  return o;
}

void checkLookupForecastResponse(api.LookupForecastResponse o) {
  buildCounterLookupForecastResponse++;
  if (buildCounterLookupForecastResponse < 3) {
    checkUnnamed4(o.dailyInfo!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    unittest.expect(o.regionCode!, unittest.equals('foo'));
  }
  buildCounterLookupForecastResponse--;
}

core.int buildCounterPlantDescription = 0;
api.PlantDescription buildPlantDescription() {
  final o = api.PlantDescription();
  buildCounterPlantDescription++;
  if (buildCounterPlantDescription < 3) {
    o.crossReaction = 'foo';
    o.family = 'foo';
    o.picture = 'foo';
    o.pictureCloseup = 'foo';
    o.season = 'foo';
    o.specialColors = 'foo';
    o.specialShapes = 'foo';
    o.type = 'foo';
  }
  buildCounterPlantDescription--;
  return o;
}

void checkPlantDescription(api.PlantDescription o) {
  buildCounterPlantDescription++;
  if (buildCounterPlantDescription < 3) {
    unittest.expect(o.crossReaction!, unittest.equals('foo'));
    unittest.expect(o.family!, unittest.equals('foo'));
    unittest.expect(o.picture!, unittest.equals('foo'));
    unittest.expect(o.pictureCloseup!, unittest.equals('foo'));
    unittest.expect(o.season!, unittest.equals('foo'));
    unittest.expect(o.specialColors!, unittest.equals('foo'));
    unittest.expect(o.specialShapes!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterPlantDescription--;
}

core.int buildCounterPlantInfo = 0;
api.PlantInfo buildPlantInfo() {
  final o = api.PlantInfo();
  buildCounterPlantInfo++;
  if (buildCounterPlantInfo < 3) {
    o.code = 'foo';
    o.displayName = 'foo';
    o.inSeason = true;
    o.indexInfo = buildIndexInfo();
    o.plantDescription = buildPlantDescription();
  }
  buildCounterPlantInfo--;
  return o;
}

void checkPlantInfo(api.PlantInfo o) {
  buildCounterPlantInfo++;
  if (buildCounterPlantInfo < 3) {
    unittest.expect(o.code!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.inSeason!, unittest.isTrue);
    checkIndexInfo(o.indexInfo!);
    checkPlantDescription(o.plantDescription!);
  }
  buildCounterPlantInfo--;
}

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPollenTypeInfo = 0;
api.PollenTypeInfo buildPollenTypeInfo() {
  final o = api.PollenTypeInfo();
  buildCounterPollenTypeInfo++;
  if (buildCounterPollenTypeInfo < 3) {
    o.code = 'foo';
    o.displayName = 'foo';
    o.healthRecommendations = buildUnnamed5();
    o.inSeason = true;
    o.indexInfo = buildIndexInfo();
  }
  buildCounterPollenTypeInfo--;
  return o;
}

void checkPollenTypeInfo(api.PollenTypeInfo o) {
  buildCounterPollenTypeInfo++;
  if (buildCounterPollenTypeInfo < 3) {
    unittest.expect(o.code!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed5(o.healthRecommendations!);
    unittest.expect(o.inSeason!, unittest.isTrue);
    checkIndexInfo(o.indexInfo!);
  }
  buildCounterPollenTypeInfo--;
}

void main() {
  unittest.group('obj-schema-Color', () {
    unittest.test('to-json--from-json', () async {
      final o = buildColor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Color.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkColor(od);
    });
  });

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Date.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDate(od);
    });
  });

  unittest.group('obj-schema-DayInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDayInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DayInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDayInfo(od);
    });
  });

  unittest.group('obj-schema-HttpBody', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHttpBody();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HttpBody.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHttpBody(od);
    });
  });

  unittest.group('obj-schema-IndexInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIndexInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IndexInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIndexInfo(od);
    });
  });

  unittest.group('obj-schema-LookupForecastResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLookupForecastResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LookupForecastResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLookupForecastResponse(od);
    });
  });

  unittest.group('obj-schema-PlantDescription', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlantDescription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlantDescription.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPlantDescription(od);
    });
  });

  unittest.group('obj-schema-PlantInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlantInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlantInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPlantInfo(od);
    });
  });

  unittest.group('obj-schema-PollenTypeInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPollenTypeInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PollenTypeInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPollenTypeInfo(od);
    });
  });

  unittest.group('resource-ForecastResource', () {
    unittest.test('method--lookup', () async {
      final mock = HttpServerMock();
      final res = api.PollenApi(mock).forecast;
      final arg_days = 42;
      final arg_languageCode = 'foo';
      final arg_location_latitude = 42.0;
      final arg_location_longitude = 42.0;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_plantsDescription = true;
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
            core.int.parse(queryMap['days']!.first),
            unittest.equals(arg_days),
          );
          unittest.expect(
            queryMap['languageCode']!.first,
            unittest.equals(arg_languageCode),
          );
          unittest.expect(
            core.num.parse(queryMap['location.latitude']!.first),
            unittest.equals(arg_location_latitude),
          );
          unittest.expect(
            core.num.parse(queryMap['location.longitude']!.first),
            unittest.equals(arg_location_longitude),
          );
          unittest.expect(
            core.int.parse(queryMap['pageSize']!.first),
            unittest.equals(arg_pageSize),
          );
          unittest.expect(
            queryMap['pageToken']!.first,
            unittest.equals(arg_pageToken),
          );
          unittest.expect(
            queryMap['plantsDescription']!.first,
            unittest.equals('$arg_plantsDescription'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildLookupForecastResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.lookup(
        days: arg_days,
        languageCode: arg_languageCode,
        location_latitude: arg_location_latitude,
        location_longitude: arg_location_longitude,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        plantsDescription: arg_plantsDescription,
        $fields: arg_$fields,
      );
      checkLookupForecastResponse(response as api.LookupForecastResponse);
    });
  });

  unittest.group('resource-MapTypesHeatmapTilesResource', () {
    unittest.test('method--lookupHeatmapTile', () async {
      final mock = HttpServerMock();
      final res = api.PollenApi(mock).mapTypes.heatmapTiles;
      final arg_mapType = 'foo';
      final arg_zoom = 42;
      final arg_x = 42;
      final arg_y = 42;
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/mapTypes/'),
          );
          pathOffset += 12;
          index = path.indexOf('/heatmapTiles/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_mapType'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 14),
            unittest.equals('/heatmapTiles/'),
          );
          pathOffset += 14;
          index = path.indexOf('/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_zoom'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          index = path.indexOf('/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_x'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 1),
            unittest.equals('/'),
          );
          pathOffset += 1;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_y'));

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
          final resp = convert.json.encode(buildHttpBody());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.lookupHeatmapTile(
        arg_mapType,
        arg_zoom,
        arg_x,
        arg_y,
        $fields: arg_$fields,
      );
      checkHttpBody(response as api.HttpBody);
    });
  });
}
