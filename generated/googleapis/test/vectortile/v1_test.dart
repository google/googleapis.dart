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

import 'package:googleapis/vectortile/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.int> buildUnnamed0() => [
      42,
      42,
    ];

void checkUnnamed0(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.List<core.int> buildUnnamed1() => [
      42,
      42,
    ];

void checkUnnamed1(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.List<core.int> buildUnnamed2() => [
      42,
      42,
    ];

void checkUnnamed2(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.int buildCounterArea = 0;
api.Area buildArea() {
  final o = api.Area();
  buildCounterArea++;
  if (buildCounterArea < 3) {
    o.basemapZOrder = buildBasemapZOrder();
    o.hasExternalEdges = true;
    o.internalEdges = buildUnnamed0();
    o.loopBreaks = buildUnnamed1();
    o.triangleIndices = buildUnnamed2();
    o.type = 'foo';
    o.vertexOffsets = buildVertex2DList();
    o.zOrder = 42;
  }
  buildCounterArea--;
  return o;
}

void checkArea(api.Area o) {
  buildCounterArea++;
  if (buildCounterArea < 3) {
    checkBasemapZOrder(o.basemapZOrder!);
    unittest.expect(o.hasExternalEdges!, unittest.isTrue);
    checkUnnamed0(o.internalEdges!);
    checkUnnamed1(o.loopBreaks!);
    checkUnnamed2(o.triangleIndices!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    checkVertex2DList(o.vertexOffsets!);
    unittest.expect(
      o.zOrder!,
      unittest.equals(42),
    );
  }
  buildCounterArea--;
}

core.int buildCounterBasemapZOrder = 0;
api.BasemapZOrder buildBasemapZOrder() {
  final o = api.BasemapZOrder();
  buildCounterBasemapZOrder++;
  if (buildCounterBasemapZOrder < 3) {
    o.zGrade = 42;
    o.zPlane = 42;
    o.zWithinGrade = 42;
  }
  buildCounterBasemapZOrder--;
  return o;
}

void checkBasemapZOrder(api.BasemapZOrder o) {
  buildCounterBasemapZOrder++;
  if (buildCounterBasemapZOrder < 3) {
    unittest.expect(
      o.zGrade!,
      unittest.equals(42),
    );
    unittest.expect(
      o.zPlane!,
      unittest.equals(42),
    );
    unittest.expect(
      o.zWithinGrade!,
      unittest.equals(42),
    );
  }
  buildCounterBasemapZOrder--;
}

core.int buildCounterExtrudedArea = 0;
api.ExtrudedArea buildExtrudedArea() {
  final o = api.ExtrudedArea();
  buildCounterExtrudedArea++;
  if (buildCounterExtrudedArea < 3) {
    o.area = buildArea();
    o.maxZ = 42;
    o.minZ = 42;
  }
  buildCounterExtrudedArea--;
  return o;
}

void checkExtrudedArea(api.ExtrudedArea o) {
  buildCounterExtrudedArea++;
  if (buildCounterExtrudedArea < 3) {
    checkArea(o.area!);
    unittest.expect(
      o.maxZ!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minZ!,
      unittest.equals(42),
    );
  }
  buildCounterExtrudedArea--;
}

core.List<api.Relation> buildUnnamed3() => [
      buildRelation(),
      buildRelation(),
    ];

void checkUnnamed3(core.List<api.Relation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelation(o[0]);
  checkRelation(o[1]);
}

core.int buildCounterFeature = 0;
api.Feature buildFeature() {
  final o = api.Feature();
  buildCounterFeature++;
  if (buildCounterFeature < 3) {
    o.displayName = 'foo';
    o.geometry = buildGeometry();
    o.placeId = 'foo';
    o.relations = buildUnnamed3();
    o.segmentInfo = buildSegmentInfo();
    o.type = 'foo';
  }
  buildCounterFeature--;
  return o;
}

void checkFeature(api.Feature o) {
  buildCounterFeature++;
  if (buildCounterFeature < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkGeometry(o.geometry!);
    unittest.expect(
      o.placeId!,
      unittest.equals('foo'),
    );
    checkUnnamed3(o.relations!);
    checkSegmentInfo(o.segmentInfo!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterFeature--;
}

core.List<api.Feature> buildUnnamed4() => [
      buildFeature(),
      buildFeature(),
    ];

void checkUnnamed4(core.List<api.Feature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFeature(o[0]);
  checkFeature(o[1]);
}

core.List<api.ProviderInfo> buildUnnamed5() => [
      buildProviderInfo(),
      buildProviderInfo(),
    ];

void checkUnnamed5(core.List<api.ProviderInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProviderInfo(o[0]);
  checkProviderInfo(o[1]);
}

core.int buildCounterFeatureTile = 0;
api.FeatureTile buildFeatureTile() {
  final o = api.FeatureTile();
  buildCounterFeatureTile++;
  if (buildCounterFeatureTile < 3) {
    o.coordinates = buildTileCoordinates();
    o.features = buildUnnamed4();
    o.name = 'foo';
    o.providers = buildUnnamed5();
    o.status = 'foo';
    o.versionId = 'foo';
  }
  buildCounterFeatureTile--;
  return o;
}

void checkFeatureTile(api.FeatureTile o) {
  buildCounterFeatureTile++;
  if (buildCounterFeatureTile < 3) {
    checkTileCoordinates(o.coordinates!);
    checkUnnamed4(o.features!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed5(o.providers!);
    unittest.expect(
      o.status!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterFeatureTile--;
}

core.List<api.Row> buildUnnamed6() => [
      buildRow(),
      buildRow(),
    ];

void checkUnnamed6(core.List<api.Row> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRow(o[0]);
  checkRow(o[1]);
}

core.int buildCounterFirstDerivativeElevationGrid = 0;
api.FirstDerivativeElevationGrid buildFirstDerivativeElevationGrid() {
  final o = api.FirstDerivativeElevationGrid();
  buildCounterFirstDerivativeElevationGrid++;
  if (buildCounterFirstDerivativeElevationGrid < 3) {
    o.altitudeMultiplier = 42.0;
    o.rows = buildUnnamed6();
  }
  buildCounterFirstDerivativeElevationGrid--;
  return o;
}

void checkFirstDerivativeElevationGrid(api.FirstDerivativeElevationGrid o) {
  buildCounterFirstDerivativeElevationGrid++;
  if (buildCounterFirstDerivativeElevationGrid < 3) {
    unittest.expect(
      o.altitudeMultiplier!,
      unittest.equals(42.0),
    );
    checkUnnamed6(o.rows!);
  }
  buildCounterFirstDerivativeElevationGrid--;
}

core.List<api.Area> buildUnnamed7() => [
      buildArea(),
      buildArea(),
    ];

void checkUnnamed7(core.List<api.Area> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkArea(o[0]);
  checkArea(o[1]);
}

core.List<api.ExtrudedArea> buildUnnamed8() => [
      buildExtrudedArea(),
      buildExtrudedArea(),
    ];

void checkUnnamed8(core.List<api.ExtrudedArea> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExtrudedArea(o[0]);
  checkExtrudedArea(o[1]);
}

core.List<api.Line> buildUnnamed9() => [
      buildLine(),
      buildLine(),
    ];

void checkUnnamed9(core.List<api.Line> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLine(o[0]);
  checkLine(o[1]);
}

core.List<api.ModeledVolume> buildUnnamed10() => [
      buildModeledVolume(),
      buildModeledVolume(),
    ];

void checkUnnamed10(core.List<api.ModeledVolume> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkModeledVolume(o[0]);
  checkModeledVolume(o[1]);
}

core.int buildCounterGeometry = 0;
api.Geometry buildGeometry() {
  final o = api.Geometry();
  buildCounterGeometry++;
  if (buildCounterGeometry < 3) {
    o.areas = buildUnnamed7();
    o.extrudedAreas = buildUnnamed8();
    o.lines = buildUnnamed9();
    o.modeledVolumes = buildUnnamed10();
  }
  buildCounterGeometry--;
  return o;
}

void checkGeometry(api.Geometry o) {
  buildCounterGeometry++;
  if (buildCounterGeometry < 3) {
    checkUnnamed7(o.areas!);
    checkUnnamed8(o.extrudedAreas!);
    checkUnnamed9(o.lines!);
    checkUnnamed10(o.modeledVolumes!);
  }
  buildCounterGeometry--;
}

core.int buildCounterLine = 0;
api.Line buildLine() {
  final o = api.Line();
  buildCounterLine++;
  if (buildCounterLine < 3) {
    o.basemapZOrder = buildBasemapZOrder();
    o.vertexOffsets = buildVertex2DList();
    o.zOrder = 42;
  }
  buildCounterLine--;
  return o;
}

void checkLine(api.Line o) {
  buildCounterLine++;
  if (buildCounterLine < 3) {
    checkBasemapZOrder(o.basemapZOrder!);
    checkVertex2DList(o.vertexOffsets!);
    unittest.expect(
      o.zOrder!,
      unittest.equals(42),
    );
  }
  buildCounterLine--;
}

core.List<api.TriangleStrip> buildUnnamed11() => [
      buildTriangleStrip(),
      buildTriangleStrip(),
    ];

void checkUnnamed11(core.List<api.TriangleStrip> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTriangleStrip(o[0]);
  checkTriangleStrip(o[1]);
}

core.int buildCounterModeledVolume = 0;
api.ModeledVolume buildModeledVolume() {
  final o = api.ModeledVolume();
  buildCounterModeledVolume++;
  if (buildCounterModeledVolume < 3) {
    o.strips = buildUnnamed11();
    o.vertexOffsets = buildVertex3DList();
  }
  buildCounterModeledVolume--;
  return o;
}

void checkModeledVolume(api.ModeledVolume o) {
  buildCounterModeledVolume++;
  if (buildCounterModeledVolume < 3) {
    checkUnnamed11(o.strips!);
    checkVertex3DList(o.vertexOffsets!);
  }
  buildCounterModeledVolume--;
}

core.int buildCounterProviderInfo = 0;
api.ProviderInfo buildProviderInfo() {
  final o = api.ProviderInfo();
  buildCounterProviderInfo++;
  if (buildCounterProviderInfo < 3) {
    o.description = 'foo';
  }
  buildCounterProviderInfo--;
  return o;
}

void checkProviderInfo(api.ProviderInfo o) {
  buildCounterProviderInfo++;
  if (buildCounterProviderInfo < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
  }
  buildCounterProviderInfo--;
}

core.int buildCounterRelation = 0;
api.Relation buildRelation() {
  final o = api.Relation();
  buildCounterRelation++;
  if (buildCounterRelation < 3) {
    o.relatedFeatureIndex = 42;
    o.relationType = 'foo';
  }
  buildCounterRelation--;
  return o;
}

void checkRelation(api.Relation o) {
  buildCounterRelation++;
  if (buildCounterRelation < 3) {
    unittest.expect(
      o.relatedFeatureIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.relationType!,
      unittest.equals('foo'),
    );
  }
  buildCounterRelation--;
}

core.int buildCounterRoadInfo = 0;
api.RoadInfo buildRoadInfo() {
  final o = api.RoadInfo();
  buildCounterRoadInfo++;
  if (buildCounterRoadInfo < 3) {
    o.isPrivate = true;
  }
  buildCounterRoadInfo--;
  return o;
}

void checkRoadInfo(api.RoadInfo o) {
  buildCounterRoadInfo++;
  if (buildCounterRoadInfo < 3) {
    unittest.expect(o.isPrivate!, unittest.isTrue);
  }
  buildCounterRoadInfo--;
}

core.List<core.int> buildUnnamed12() => [
      42,
      42,
    ];

void checkUnnamed12(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.int buildCounterRow = 0;
api.Row buildRow() {
  final o = api.Row();
  buildCounterRow++;
  if (buildCounterRow < 3) {
    o.altitudeDiffs = buildUnnamed12();
  }
  buildCounterRow--;
  return o;
}

void checkRow(api.Row o) {
  buildCounterRow++;
  if (buildCounterRow < 3) {
    checkUnnamed12(o.altitudeDiffs!);
  }
  buildCounterRow--;
}

core.int buildCounterSecondDerivativeElevationGrid = 0;
api.SecondDerivativeElevationGrid buildSecondDerivativeElevationGrid() {
  final o = api.SecondDerivativeElevationGrid();
  buildCounterSecondDerivativeElevationGrid++;
  if (buildCounterSecondDerivativeElevationGrid < 3) {
    o.altitudeMultiplier = 42.0;
    o.columnCount = 42;
    o.encodedData = 'foo';
    o.rowCount = 42;
  }
  buildCounterSecondDerivativeElevationGrid--;
  return o;
}

void checkSecondDerivativeElevationGrid(api.SecondDerivativeElevationGrid o) {
  buildCounterSecondDerivativeElevationGrid++;
  if (buildCounterSecondDerivativeElevationGrid < 3) {
    unittest.expect(
      o.altitudeMultiplier!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.columnCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.encodedData!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rowCount!,
      unittest.equals(42),
    );
  }
  buildCounterSecondDerivativeElevationGrid--;
}

core.int buildCounterSegmentInfo = 0;
api.SegmentInfo buildSegmentInfo() {
  final o = api.SegmentInfo();
  buildCounterSegmentInfo++;
  if (buildCounterSegmentInfo < 3) {
    o.roadInfo = buildRoadInfo();
  }
  buildCounterSegmentInfo--;
  return o;
}

void checkSegmentInfo(api.SegmentInfo o) {
  buildCounterSegmentInfo++;
  if (buildCounterSegmentInfo < 3) {
    checkRoadInfo(o.roadInfo!);
  }
  buildCounterSegmentInfo--;
}

core.int buildCounterTerrainTile = 0;
api.TerrainTile buildTerrainTile() {
  final o = api.TerrainTile();
  buildCounterTerrainTile++;
  if (buildCounterTerrainTile < 3) {
    o.coordinates = buildTileCoordinates();
    o.firstDerivative = buildFirstDerivativeElevationGrid();
    o.name = 'foo';
    o.secondDerivative = buildSecondDerivativeElevationGrid();
  }
  buildCounterTerrainTile--;
  return o;
}

void checkTerrainTile(api.TerrainTile o) {
  buildCounterTerrainTile++;
  if (buildCounterTerrainTile < 3) {
    checkTileCoordinates(o.coordinates!);
    checkFirstDerivativeElevationGrid(o.firstDerivative!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkSecondDerivativeElevationGrid(o.secondDerivative!);
  }
  buildCounterTerrainTile--;
}

core.int buildCounterTileCoordinates = 0;
api.TileCoordinates buildTileCoordinates() {
  final o = api.TileCoordinates();
  buildCounterTileCoordinates++;
  if (buildCounterTileCoordinates < 3) {
    o.x = 42;
    o.y = 42;
    o.zoom = 42;
  }
  buildCounterTileCoordinates--;
  return o;
}

void checkTileCoordinates(api.TileCoordinates o) {
  buildCounterTileCoordinates++;
  if (buildCounterTileCoordinates < 3) {
    unittest.expect(
      o.x!,
      unittest.equals(42),
    );
    unittest.expect(
      o.y!,
      unittest.equals(42),
    );
    unittest.expect(
      o.zoom!,
      unittest.equals(42),
    );
  }
  buildCounterTileCoordinates--;
}

core.List<core.int> buildUnnamed13() => [
      42,
      42,
    ];

void checkUnnamed13(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.int buildCounterTriangleStrip = 0;
api.TriangleStrip buildTriangleStrip() {
  final o = api.TriangleStrip();
  buildCounterTriangleStrip++;
  if (buildCounterTriangleStrip < 3) {
    o.vertexIndices = buildUnnamed13();
  }
  buildCounterTriangleStrip--;
  return o;
}

void checkTriangleStrip(api.TriangleStrip o) {
  buildCounterTriangleStrip++;
  if (buildCounterTriangleStrip < 3) {
    checkUnnamed13(o.vertexIndices!);
  }
  buildCounterTriangleStrip--;
}

core.List<core.int> buildUnnamed14() => [
      42,
      42,
    ];

void checkUnnamed14(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.List<core.int> buildUnnamed15() => [
      42,
      42,
    ];

void checkUnnamed15(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.int buildCounterVertex2DList = 0;
api.Vertex2DList buildVertex2DList() {
  final o = api.Vertex2DList();
  buildCounterVertex2DList++;
  if (buildCounterVertex2DList < 3) {
    o.xOffsets = buildUnnamed14();
    o.yOffsets = buildUnnamed15();
  }
  buildCounterVertex2DList--;
  return o;
}

void checkVertex2DList(api.Vertex2DList o) {
  buildCounterVertex2DList++;
  if (buildCounterVertex2DList < 3) {
    checkUnnamed14(o.xOffsets!);
    checkUnnamed15(o.yOffsets!);
  }
  buildCounterVertex2DList--;
}

core.List<core.int> buildUnnamed16() => [
      42,
      42,
    ];

void checkUnnamed16(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.List<core.int> buildUnnamed17() => [
      42,
      42,
    ];

void checkUnnamed17(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.List<core.int> buildUnnamed18() => [
      42,
      42,
    ];

void checkUnnamed18(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42),
  );
  unittest.expect(
    o[1],
    unittest.equals(42),
  );
}

core.int buildCounterVertex3DList = 0;
api.Vertex3DList buildVertex3DList() {
  final o = api.Vertex3DList();
  buildCounterVertex3DList++;
  if (buildCounterVertex3DList < 3) {
    o.xOffsets = buildUnnamed16();
    o.yOffsets = buildUnnamed17();
    o.zOffsets = buildUnnamed18();
  }
  buildCounterVertex3DList--;
  return o;
}

void checkVertex3DList(api.Vertex3DList o) {
  buildCounterVertex3DList++;
  if (buildCounterVertex3DList < 3) {
    checkUnnamed16(o.xOffsets!);
    checkUnnamed17(o.yOffsets!);
    checkUnnamed18(o.zOffsets!);
  }
  buildCounterVertex3DList--;
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

void main() {
  unittest.group('obj-schema-Area', () {
    unittest.test('to-json--from-json', () async {
      final o = buildArea();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Area.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkArea(od);
    });
  });

  unittest.group('obj-schema-BasemapZOrder', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBasemapZOrder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BasemapZOrder.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBasemapZOrder(od);
    });
  });

  unittest.group('obj-schema-ExtrudedArea', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExtrudedArea();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExtrudedArea.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExtrudedArea(od);
    });
  });

  unittest.group('obj-schema-Feature', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFeature();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Feature.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFeature(od);
    });
  });

  unittest.group('obj-schema-FeatureTile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFeatureTile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FeatureTile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFeatureTile(od);
    });
  });

  unittest.group('obj-schema-FirstDerivativeElevationGrid', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFirstDerivativeElevationGrid();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FirstDerivativeElevationGrid.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFirstDerivativeElevationGrid(od);
    });
  });

  unittest.group('obj-schema-Geometry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGeometry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Geometry.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGeometry(od);
    });
  });

  unittest.group('obj-schema-Line', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLine();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Line.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLine(od);
    });
  });

  unittest.group('obj-schema-ModeledVolume', () {
    unittest.test('to-json--from-json', () async {
      final o = buildModeledVolume();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ModeledVolume.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkModeledVolume(od);
    });
  });

  unittest.group('obj-schema-ProviderInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProviderInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProviderInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProviderInfo(od);
    });
  });

  unittest.group('obj-schema-Relation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRelation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Relation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRelation(od);
    });
  });

  unittest.group('obj-schema-RoadInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRoadInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.RoadInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRoadInfo(od);
    });
  });

  unittest.group('obj-schema-Row', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Row.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRow(od);
    });
  });

  unittest.group('obj-schema-SecondDerivativeElevationGrid', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecondDerivativeElevationGrid();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecondDerivativeElevationGrid.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSecondDerivativeElevationGrid(od);
    });
  });

  unittest.group('obj-schema-SegmentInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSegmentInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SegmentInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSegmentInfo(od);
    });
  });

  unittest.group('obj-schema-TerrainTile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTerrainTile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TerrainTile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTerrainTile(od);
    });
  });

  unittest.group('obj-schema-TileCoordinates', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTileCoordinates();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TileCoordinates.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTileCoordinates(od);
    });
  });

  unittest.group('obj-schema-TriangleStrip', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTriangleStrip();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TriangleStrip.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTriangleStrip(od);
    });
  });

  unittest.group('obj-schema-Vertex2DList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVertex2DList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Vertex2DList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVertex2DList(od);
    });
  });

  unittest.group('obj-schema-Vertex3DList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVertex3DList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Vertex3DList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVertex3DList(od);
    });
  });

  unittest.group('resource-FeaturetilesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SemanticTileApi(mock).featuretiles;
      final arg_name = 'foo';
      final arg_alwaysIncludeBuildingFootprints = true;
      final arg_clientInfo_apiClient = 'foo';
      final arg_clientInfo_applicationId = 'foo';
      final arg_clientInfo_applicationVersion = 'foo';
      final arg_clientInfo_deviceModel = 'foo';
      final arg_clientInfo_operatingSystem = 'foo';
      final arg_clientInfo_platform = 'foo';
      final arg_clientInfo_userId = 'foo';
      final arg_clientTileVersionId = 'foo';
      final arg_enableDetailedHighwayTypes = true;
      final arg_enableFeatureNames = true;
      final arg_enableModeledVolumes = true;
      final arg_enablePoliticalFeatures = true;
      final arg_enablePrivateRoads = true;
      final arg_enableUnclippedBuildings = true;
      final arg_languageCode = 'foo';
      final arg_regionCode = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          queryMap['alwaysIncludeBuildingFootprints']!.first,
          unittest.equals('$arg_alwaysIncludeBuildingFootprints'),
        );
        unittest.expect(
          queryMap['clientInfo.apiClient']!.first,
          unittest.equals(arg_clientInfo_apiClient),
        );
        unittest.expect(
          queryMap['clientInfo.applicationId']!.first,
          unittest.equals(arg_clientInfo_applicationId),
        );
        unittest.expect(
          queryMap['clientInfo.applicationVersion']!.first,
          unittest.equals(arg_clientInfo_applicationVersion),
        );
        unittest.expect(
          queryMap['clientInfo.deviceModel']!.first,
          unittest.equals(arg_clientInfo_deviceModel),
        );
        unittest.expect(
          queryMap['clientInfo.operatingSystem']!.first,
          unittest.equals(arg_clientInfo_operatingSystem),
        );
        unittest.expect(
          queryMap['clientInfo.platform']!.first,
          unittest.equals(arg_clientInfo_platform),
        );
        unittest.expect(
          queryMap['clientInfo.userId']!.first,
          unittest.equals(arg_clientInfo_userId),
        );
        unittest.expect(
          queryMap['clientTileVersionId']!.first,
          unittest.equals(arg_clientTileVersionId),
        );
        unittest.expect(
          queryMap['enableDetailedHighwayTypes']!.first,
          unittest.equals('$arg_enableDetailedHighwayTypes'),
        );
        unittest.expect(
          queryMap['enableFeatureNames']!.first,
          unittest.equals('$arg_enableFeatureNames'),
        );
        unittest.expect(
          queryMap['enableModeledVolumes']!.first,
          unittest.equals('$arg_enableModeledVolumes'),
        );
        unittest.expect(
          queryMap['enablePoliticalFeatures']!.first,
          unittest.equals('$arg_enablePoliticalFeatures'),
        );
        unittest.expect(
          queryMap['enablePrivateRoads']!.first,
          unittest.equals('$arg_enablePrivateRoads'),
        );
        unittest.expect(
          queryMap['enableUnclippedBuildings']!.first,
          unittest.equals('$arg_enableUnclippedBuildings'),
        );
        unittest.expect(
          queryMap['languageCode']!.first,
          unittest.equals(arg_languageCode),
        );
        unittest.expect(
          queryMap['regionCode']!.first,
          unittest.equals(arg_regionCode),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildFeatureTile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          alwaysIncludeBuildingFootprints: arg_alwaysIncludeBuildingFootprints,
          clientInfo_apiClient: arg_clientInfo_apiClient,
          clientInfo_applicationId: arg_clientInfo_applicationId,
          clientInfo_applicationVersion: arg_clientInfo_applicationVersion,
          clientInfo_deviceModel: arg_clientInfo_deviceModel,
          clientInfo_operatingSystem: arg_clientInfo_operatingSystem,
          clientInfo_platform: arg_clientInfo_platform,
          clientInfo_userId: arg_clientInfo_userId,
          clientTileVersionId: arg_clientTileVersionId,
          enableDetailedHighwayTypes: arg_enableDetailedHighwayTypes,
          enableFeatureNames: arg_enableFeatureNames,
          enableModeledVolumes: arg_enableModeledVolumes,
          enablePoliticalFeatures: arg_enablePoliticalFeatures,
          enablePrivateRoads: arg_enablePrivateRoads,
          enableUnclippedBuildings: arg_enableUnclippedBuildings,
          languageCode: arg_languageCode,
          regionCode: arg_regionCode,
          $fields: arg_$fields);
      checkFeatureTile(response as api.FeatureTile);
    });
  });

  unittest.group('resource-TerraintilesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SemanticTileApi(mock).terraintiles;
      final arg_name = 'foo';
      final arg_altitudePrecisionCentimeters = 42;
      final arg_clientInfo_apiClient = 'foo';
      final arg_clientInfo_applicationId = 'foo';
      final arg_clientInfo_applicationVersion = 'foo';
      final arg_clientInfo_deviceModel = 'foo';
      final arg_clientInfo_operatingSystem = 'foo';
      final arg_clientInfo_platform = 'foo';
      final arg_clientInfo_userId = 'foo';
      final arg_maxElevationResolutionCells = 42;
      final arg_minElevationResolutionCells = 42;
      final arg_terrainFormats = buildUnnamed19();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
          path.substring(pathOffset, pathOffset + 3),
          unittest.equals('v1/'),
        );
        pathOffset += 3;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          core.int.parse(queryMap['altitudePrecisionCentimeters']!.first),
          unittest.equals(arg_altitudePrecisionCentimeters),
        );
        unittest.expect(
          queryMap['clientInfo.apiClient']!.first,
          unittest.equals(arg_clientInfo_apiClient),
        );
        unittest.expect(
          queryMap['clientInfo.applicationId']!.first,
          unittest.equals(arg_clientInfo_applicationId),
        );
        unittest.expect(
          queryMap['clientInfo.applicationVersion']!.first,
          unittest.equals(arg_clientInfo_applicationVersion),
        );
        unittest.expect(
          queryMap['clientInfo.deviceModel']!.first,
          unittest.equals(arg_clientInfo_deviceModel),
        );
        unittest.expect(
          queryMap['clientInfo.operatingSystem']!.first,
          unittest.equals(arg_clientInfo_operatingSystem),
        );
        unittest.expect(
          queryMap['clientInfo.platform']!.first,
          unittest.equals(arg_clientInfo_platform),
        );
        unittest.expect(
          queryMap['clientInfo.userId']!.first,
          unittest.equals(arg_clientInfo_userId),
        );
        unittest.expect(
          core.int.parse(queryMap['maxElevationResolutionCells']!.first),
          unittest.equals(arg_maxElevationResolutionCells),
        );
        unittest.expect(
          core.int.parse(queryMap['minElevationResolutionCells']!.first),
          unittest.equals(arg_minElevationResolutionCells),
        );
        unittest.expect(
          queryMap['terrainFormats']!,
          unittest.equals(arg_terrainFormats),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildTerrainTile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name,
          altitudePrecisionCentimeters: arg_altitudePrecisionCentimeters,
          clientInfo_apiClient: arg_clientInfo_apiClient,
          clientInfo_applicationId: arg_clientInfo_applicationId,
          clientInfo_applicationVersion: arg_clientInfo_applicationVersion,
          clientInfo_deviceModel: arg_clientInfo_deviceModel,
          clientInfo_operatingSystem: arg_clientInfo_operatingSystem,
          clientInfo_platform: arg_clientInfo_platform,
          clientInfo_userId: arg_clientInfo_userId,
          maxElevationResolutionCells: arg_maxElevationResolutionCells,
          minElevationResolutionCells: arg_minElevationResolutionCells,
          terrainFormats: arg_terrainFormats,
          $fields: arg_$fields);
      checkTerrainTile(response as api.TerrainTile);
    });
  });
}
