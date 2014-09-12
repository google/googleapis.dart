library googleapis.mapsengine.v1.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;
import 'package:googleapis/common/common.dart' as common;
import 'package:googleapis/src/common_internal.dart' as common_internal;
import '../common/common_internal_test.dart' as common_test;

import 'package:googleapis/mapsengine/v1.dart' as api;



core.int buildCounterAcquisitionTime = 0;
buildAcquisitionTime() {
  var o = new api.AcquisitionTime();
  buildCounterAcquisitionTime++;
  if (buildCounterAcquisitionTime < 3) {
    o.end = core.DateTime.parse("2002-02-27T14:01:02");
    o.precision = "foo";
    o.start = core.DateTime.parse("2002-02-27T14:01:02");
  }
  buildCounterAcquisitionTime--;
  return o;
}

checkAcquisitionTime(api.AcquisitionTime o) {
  buildCounterAcquisitionTime++;
  if (buildCounterAcquisitionTime < 3) {
    unittest.expect(o.end, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.precision, unittest.equals('foo'));
    unittest.expect(o.start, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
  }
  buildCounterAcquisitionTime--;
}

buildUnnamed91() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed91(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed92() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed92(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAsset = 0;
buildAsset() {
  var o = new api.Asset();
  buildCounterAsset++;
  if (buildCounterAsset < 3) {
    o.bbox = buildUnnamed91();
    o.creationTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.description = "foo";
    o.etag = "foo";
    o.id = "foo";
    o.lastModifiedTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = "foo";
    o.projectId = "foo";
    o.resource = "foo";
    o.tags = buildUnnamed92();
    o.type = "foo";
  }
  buildCounterAsset--;
  return o;
}

checkAsset(api.Asset o) {
  buildCounterAsset++;
  if (buildCounterAsset < 3) {
    checkUnnamed91(o.bbox);
    unittest.expect(o.creationTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.lastModifiedTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.resource, unittest.equals('foo'));
    checkUnnamed92(o.tags);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterAsset--;
}

buildUnnamed93() {
  var o = new core.List<api.Asset>();
  o.add(buildAsset());
  o.add(buildAsset());
  return o;
}

checkUnnamed93(core.List<api.Asset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAsset(o[0]);
  checkAsset(o[1]);
}

core.int buildCounterAssetsListResponse = 0;
buildAssetsListResponse() {
  var o = new api.AssetsListResponse();
  buildCounterAssetsListResponse++;
  if (buildCounterAssetsListResponse < 3) {
    o.assets = buildUnnamed93();
    o.nextPageToken = "foo";
  }
  buildCounterAssetsListResponse--;
  return o;
}

checkAssetsListResponse(api.AssetsListResponse o) {
  buildCounterAssetsListResponse++;
  if (buildCounterAssetsListResponse < 3) {
    checkUnnamed93(o.assets);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterAssetsListResponse--;
}

core.int buildCounterBorder = 0;
buildBorder() {
  var o = new api.Border();
  buildCounterBorder++;
  if (buildCounterBorder < 3) {
    o.color = "foo";
    o.opacity = 42.0;
    o.width = 42.0;
  }
  buildCounterBorder--;
  return o;
}

checkBorder(api.Border o) {
  buildCounterBorder++;
  if (buildCounterBorder < 3) {
    unittest.expect(o.color, unittest.equals('foo'));
    unittest.expect(o.opacity, unittest.equals(42.0));
    unittest.expect(o.width, unittest.equals(42.0));
  }
  buildCounterBorder--;
}

core.int buildCounterColor = 0;
buildColor() {
  var o = new api.Color();
  buildCounterColor++;
  if (buildCounterColor < 3) {
    o.color = "foo";
    o.opacity = 42.0;
  }
  buildCounterColor--;
  return o;
}

checkColor(api.Color o) {
  buildCounterColor++;
  if (buildCounterColor < 3) {
    unittest.expect(o.color, unittest.equals('foo'));
    unittest.expect(o.opacity, unittest.equals(42.0));
  }
  buildCounterColor--;
}

core.int buildCounterDatasource = 0;
buildDatasource() {
  var o = new api.Datasource();
  buildCounterDatasource++;
  if (buildCounterDatasource < 3) {
    o.id = "foo";
  }
  buildCounterDatasource--;
  return o;
}

checkDatasource(api.Datasource o) {
  buildCounterDatasource++;
  if (buildCounterDatasource < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
  }
  buildCounterDatasource--;
}

buildDatasources() {
  var o = new api.Datasources();
  o.add(buildDatasource());
  o.add(buildDatasource());
  return o;
}

checkDatasources(api.Datasources o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatasource(o[0]);
  checkDatasource(o[1]);
}

buildUnnamed94() {
  var o = new core.List<api.Filter>();
  o.add(buildFilter());
  o.add(buildFilter());
  return o;
}

checkUnnamed94(core.List<api.Filter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFilter(o[0]);
  checkFilter(o[1]);
}

core.int buildCounterDisplayRule = 0;
buildDisplayRule() {
  var o = new api.DisplayRule();
  buildCounterDisplayRule++;
  if (buildCounterDisplayRule < 3) {
    o.filters = buildUnnamed94();
    o.lineOptions = buildLineStyle();
    o.name = "foo";
    o.pointOptions = buildPointStyle();
    o.polygonOptions = buildPolygonStyle();
    o.zoomLevels = buildZoomLevels();
  }
  buildCounterDisplayRule--;
  return o;
}

checkDisplayRule(api.DisplayRule o) {
  buildCounterDisplayRule++;
  if (buildCounterDisplayRule < 3) {
    checkUnnamed94(o.filters);
    checkLineStyle(o.lineOptions);
    unittest.expect(o.name, unittest.equals('foo'));
    checkPointStyle(o.pointOptions);
    checkPolygonStyle(o.polygonOptions);
    checkZoomLevels(o.zoomLevels);
  }
  buildCounterDisplayRule--;
}

core.int buildCounterFeature = 0;
buildFeature() {
  var o = new api.Feature();
  buildCounterFeature++;
  if (buildCounterFeature < 3) {
    o.geometry = buildGeoJsonGeometry();
    o.properties = buildGeoJsonProperties();
    o.type = "foo";
  }
  buildCounterFeature--;
  return o;
}

checkFeature(api.Feature o) {
  buildCounterFeature++;
  if (buildCounterFeature < 3) {
    checkGeoJsonGeometry(o.geometry);
    checkGeoJsonProperties(o.properties);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterFeature--;
}

core.int buildCounterFeatureInfo = 0;
buildFeatureInfo() {
  var o = new api.FeatureInfo();
  buildCounterFeatureInfo++;
  if (buildCounterFeatureInfo < 3) {
    o.content = "foo";
  }
  buildCounterFeatureInfo--;
  return o;
}

checkFeatureInfo(api.FeatureInfo o) {
  buildCounterFeatureInfo++;
  if (buildCounterFeatureInfo < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
  }
  buildCounterFeatureInfo--;
}

buildUnnamed95() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed95(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed96() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed96(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterFeaturesBatchDeleteRequest = 0;
buildFeaturesBatchDeleteRequest() {
  var o = new api.FeaturesBatchDeleteRequest();
  buildCounterFeaturesBatchDeleteRequest++;
  if (buildCounterFeaturesBatchDeleteRequest < 3) {
    o.gxIds = buildUnnamed95();
    o.primaryKeys = buildUnnamed96();
  }
  buildCounterFeaturesBatchDeleteRequest--;
  return o;
}

checkFeaturesBatchDeleteRequest(api.FeaturesBatchDeleteRequest o) {
  buildCounterFeaturesBatchDeleteRequest++;
  if (buildCounterFeaturesBatchDeleteRequest < 3) {
    checkUnnamed95(o.gxIds);
    checkUnnamed96(o.primaryKeys);
  }
  buildCounterFeaturesBatchDeleteRequest--;
}

buildUnnamed97() {
  var o = new core.List<api.Feature>();
  o.add(buildFeature());
  o.add(buildFeature());
  return o;
}

checkUnnamed97(core.List<api.Feature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFeature(o[0]);
  checkFeature(o[1]);
}

core.int buildCounterFeaturesBatchInsertRequest = 0;
buildFeaturesBatchInsertRequest() {
  var o = new api.FeaturesBatchInsertRequest();
  buildCounterFeaturesBatchInsertRequest++;
  if (buildCounterFeaturesBatchInsertRequest < 3) {
    o.features = buildUnnamed97();
    o.normalizeGeometries = true;
  }
  buildCounterFeaturesBatchInsertRequest--;
  return o;
}

checkFeaturesBatchInsertRequest(api.FeaturesBatchInsertRequest o) {
  buildCounterFeaturesBatchInsertRequest++;
  if (buildCounterFeaturesBatchInsertRequest < 3) {
    checkUnnamed97(o.features);
    unittest.expect(o.normalizeGeometries, unittest.isTrue);
  }
  buildCounterFeaturesBatchInsertRequest--;
}

buildUnnamed98() {
  var o = new core.List<api.Feature>();
  o.add(buildFeature());
  o.add(buildFeature());
  return o;
}

checkUnnamed98(core.List<api.Feature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFeature(o[0]);
  checkFeature(o[1]);
}

core.int buildCounterFeaturesBatchPatchRequest = 0;
buildFeaturesBatchPatchRequest() {
  var o = new api.FeaturesBatchPatchRequest();
  buildCounterFeaturesBatchPatchRequest++;
  if (buildCounterFeaturesBatchPatchRequest < 3) {
    o.features = buildUnnamed98();
    o.normalizeGeometries = true;
  }
  buildCounterFeaturesBatchPatchRequest--;
  return o;
}

checkFeaturesBatchPatchRequest(api.FeaturesBatchPatchRequest o) {
  buildCounterFeaturesBatchPatchRequest++;
  if (buildCounterFeaturesBatchPatchRequest < 3) {
    checkUnnamed98(o.features);
    unittest.expect(o.normalizeGeometries, unittest.isTrue);
  }
  buildCounterFeaturesBatchPatchRequest--;
}

buildUnnamed99() {
  var o = new core.List<api.Feature>();
  o.add(buildFeature());
  o.add(buildFeature());
  return o;
}

checkUnnamed99(core.List<api.Feature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFeature(o[0]);
  checkFeature(o[1]);
}

core.int buildCounterFeaturesListResponse = 0;
buildFeaturesListResponse() {
  var o = new api.FeaturesListResponse();
  buildCounterFeaturesListResponse++;
  if (buildCounterFeaturesListResponse < 3) {
    o.allowedQueriesPerSecond = 42.0;
    o.features = buildUnnamed99();
    o.nextPageToken = "foo";
    o.schema = buildSchema();
    o.type = "foo";
  }
  buildCounterFeaturesListResponse--;
  return o;
}

checkFeaturesListResponse(api.FeaturesListResponse o) {
  buildCounterFeaturesListResponse++;
  if (buildCounterFeaturesListResponse < 3) {
    unittest.expect(o.allowedQueriesPerSecond, unittest.equals(42.0));
    checkUnnamed99(o.features);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkSchema(o.schema);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterFeaturesListResponse--;
}

core.int buildCounterFile = 0;
buildFile() {
  var o = new api.File();
  buildCounterFile++;
  if (buildCounterFile < 3) {
    o.filename = "foo";
    o.size = "foo";
    o.uploadStatus = "foo";
  }
  buildCounterFile--;
  return o;
}

checkFile(api.File o) {
  buildCounterFile++;
  if (buildCounterFile < 3) {
    unittest.expect(o.filename, unittest.equals('foo'));
    unittest.expect(o.size, unittest.equals('foo'));
    unittest.expect(o.uploadStatus, unittest.equals('foo'));
  }
  buildCounterFile--;
}

core.int buildCounterFilter = 0;
buildFilter() {
  var o = new api.Filter();
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    o.column = "foo";
    o.operator = "foo";
    o.value = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  }
  buildCounterFilter--;
  return o;
}

checkFilter(api.Filter o) {
  buildCounterFilter++;
  if (buildCounterFilter < 3) {
    unittest.expect(o.column, unittest.equals('foo'));
    unittest.expect(o.operator, unittest.equals('foo'));
    var casted1 = (o.value) as core.Map; unittest.expect(casted1, unittest.hasLength(3)); unittest.expect(casted1["list"], unittest.equals([1, 2, 3])); unittest.expect(casted1["bool"], unittest.equals(true)); unittest.expect(casted1["string"], unittest.equals('foo')); 
  }
  buildCounterFilter--;
}

buildGeoJsonGeometry() {
  return buildGeoJsonGeometryCollection();
}

checkGeoJsonGeometry(api.GeoJsonGeometry o) {
  checkGeoJsonGeometryCollection(api.GeoJsonGeometryCollection o) {
  buildCounterGeoJsonGeometryCollection++;
  if (buildCounterGeoJsonGeometryCollection < 3) {
    checkUnnamed100(o.geometries);
  }
  buildCounterGeoJsonGeometryCollection--;
}

(o);
}

buildUnnamed100() {
  var o = new core.List<api.GeoJsonGeometry>();
  o.add(buildGeoJsonGeometry());
  o.add(buildGeoJsonGeometry());
  return o;
}

checkUnnamed100(core.List<api.GeoJsonGeometry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGeoJsonGeometry(o[0]);
  checkGeoJsonGeometry(o[1]);
}

core.int buildCounterGeoJsonGeometryCollection = 0;
buildGeoJsonGeometryCollection() {
  var o = new api.GeoJsonGeometryCollection();
  buildCounterGeoJsonGeometryCollection++;
  if (buildCounterGeoJsonGeometryCollection < 3) {
    o.geometries = buildUnnamed100();
  }
  buildCounterGeoJsonGeometryCollection--;
  return o;
}

checkGeoJsonGeometryCollection(api.GeoJsonGeometryCollection o) {
  buildCounterGeoJsonGeometryCollection++;
  if (buildCounterGeoJsonGeometryCollection < 3) {
    checkUnnamed100(o.geometries);
  }
  buildCounterGeoJsonGeometryCollection--;
}

buildUnnamed101() {
  var o = new core.List<api.GeoJsonPosition>();
  o.add(buildGeoJsonPosition());
  o.add(buildGeoJsonPosition());
  return o;
}

checkUnnamed101(core.List<api.GeoJsonPosition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGeoJsonPosition(o[0]);
  checkGeoJsonPosition(o[1]);
}

core.int buildCounterGeoJsonLineString = 0;
buildGeoJsonLineString() {
  var o = new api.GeoJsonLineString();
  buildCounterGeoJsonLineString++;
  if (buildCounterGeoJsonLineString < 3) {
    o.coordinates = buildUnnamed101();
  }
  buildCounterGeoJsonLineString--;
  return o;
}

checkGeoJsonLineString(api.GeoJsonLineString o) {
  buildCounterGeoJsonLineString++;
  if (buildCounterGeoJsonLineString < 3) {
    checkUnnamed101(o.coordinates);
  }
  buildCounterGeoJsonLineString--;
}

buildUnnamed102() {
  var o = new core.List<api.GeoJsonPosition>();
  o.add(buildGeoJsonPosition());
  o.add(buildGeoJsonPosition());
  return o;
}

checkUnnamed102(core.List<api.GeoJsonPosition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGeoJsonPosition(o[0]);
  checkGeoJsonPosition(o[1]);
}

buildUnnamed103() {
  var o = new core.List<core.List<api.GeoJsonPosition>>();
  o.add(buildUnnamed102());
  o.add(buildUnnamed102());
  return o;
}

checkUnnamed103(core.List<core.List<api.GeoJsonPosition>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed102(o[0]);
  checkUnnamed102(o[1]);
}

core.int buildCounterGeoJsonMultiLineString = 0;
buildGeoJsonMultiLineString() {
  var o = new api.GeoJsonMultiLineString();
  buildCounterGeoJsonMultiLineString++;
  if (buildCounterGeoJsonMultiLineString < 3) {
    o.coordinates = buildUnnamed103();
  }
  buildCounterGeoJsonMultiLineString--;
  return o;
}

checkGeoJsonMultiLineString(api.GeoJsonMultiLineString o) {
  buildCounterGeoJsonMultiLineString++;
  if (buildCounterGeoJsonMultiLineString < 3) {
    checkUnnamed103(o.coordinates);
  }
  buildCounterGeoJsonMultiLineString--;
}

buildUnnamed104() {
  var o = new core.List<api.GeoJsonPosition>();
  o.add(buildGeoJsonPosition());
  o.add(buildGeoJsonPosition());
  return o;
}

checkUnnamed104(core.List<api.GeoJsonPosition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGeoJsonPosition(o[0]);
  checkGeoJsonPosition(o[1]);
}

core.int buildCounterGeoJsonMultiPoint = 0;
buildGeoJsonMultiPoint() {
  var o = new api.GeoJsonMultiPoint();
  buildCounterGeoJsonMultiPoint++;
  if (buildCounterGeoJsonMultiPoint < 3) {
    o.coordinates = buildUnnamed104();
  }
  buildCounterGeoJsonMultiPoint--;
  return o;
}

checkGeoJsonMultiPoint(api.GeoJsonMultiPoint o) {
  buildCounterGeoJsonMultiPoint++;
  if (buildCounterGeoJsonMultiPoint < 3) {
    checkUnnamed104(o.coordinates);
  }
  buildCounterGeoJsonMultiPoint--;
}

buildUnnamed105() {
  var o = new core.List<api.GeoJsonPosition>();
  o.add(buildGeoJsonPosition());
  o.add(buildGeoJsonPosition());
  return o;
}

checkUnnamed105(core.List<api.GeoJsonPosition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGeoJsonPosition(o[0]);
  checkGeoJsonPosition(o[1]);
}

buildUnnamed106() {
  var o = new core.List<core.List<api.GeoJsonPosition>>();
  o.add(buildUnnamed105());
  o.add(buildUnnamed105());
  return o;
}

checkUnnamed106(core.List<core.List<api.GeoJsonPosition>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed105(o[0]);
  checkUnnamed105(o[1]);
}

buildUnnamed107() {
  var o = new core.List<core.List<core.List<api.GeoJsonPosition>>>();
  o.add(buildUnnamed106());
  o.add(buildUnnamed106());
  return o;
}

checkUnnamed107(core.List<core.List<core.List<api.GeoJsonPosition>>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed106(o[0]);
  checkUnnamed106(o[1]);
}

core.int buildCounterGeoJsonMultiPolygon = 0;
buildGeoJsonMultiPolygon() {
  var o = new api.GeoJsonMultiPolygon();
  buildCounterGeoJsonMultiPolygon++;
  if (buildCounterGeoJsonMultiPolygon < 3) {
    o.coordinates = buildUnnamed107();
  }
  buildCounterGeoJsonMultiPolygon--;
  return o;
}

checkGeoJsonMultiPolygon(api.GeoJsonMultiPolygon o) {
  buildCounterGeoJsonMultiPolygon++;
  if (buildCounterGeoJsonMultiPolygon < 3) {
    checkUnnamed107(o.coordinates);
  }
  buildCounterGeoJsonMultiPolygon--;
}

core.int buildCounterGeoJsonPoint = 0;
buildGeoJsonPoint() {
  var o = new api.GeoJsonPoint();
  buildCounterGeoJsonPoint++;
  if (buildCounterGeoJsonPoint < 3) {
    o.coordinates = buildGeoJsonPosition();
  }
  buildCounterGeoJsonPoint--;
  return o;
}

checkGeoJsonPoint(api.GeoJsonPoint o) {
  buildCounterGeoJsonPoint++;
  if (buildCounterGeoJsonPoint < 3) {
    checkGeoJsonPosition(o.coordinates);
  }
  buildCounterGeoJsonPoint--;
}

buildUnnamed108() {
  var o = new core.List<api.GeoJsonPosition>();
  o.add(buildGeoJsonPosition());
  o.add(buildGeoJsonPosition());
  return o;
}

checkUnnamed108(core.List<api.GeoJsonPosition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGeoJsonPosition(o[0]);
  checkGeoJsonPosition(o[1]);
}

buildUnnamed109() {
  var o = new core.List<core.List<api.GeoJsonPosition>>();
  o.add(buildUnnamed108());
  o.add(buildUnnamed108());
  return o;
}

checkUnnamed109(core.List<core.List<api.GeoJsonPosition>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed108(o[0]);
  checkUnnamed108(o[1]);
}

core.int buildCounterGeoJsonPolygon = 0;
buildGeoJsonPolygon() {
  var o = new api.GeoJsonPolygon();
  buildCounterGeoJsonPolygon++;
  if (buildCounterGeoJsonPolygon < 3) {
    o.coordinates = buildUnnamed109();
  }
  buildCounterGeoJsonPolygon--;
  return o;
}

checkGeoJsonPolygon(api.GeoJsonPolygon o) {
  buildCounterGeoJsonPolygon++;
  if (buildCounterGeoJsonPolygon < 3) {
    checkUnnamed109(o.coordinates);
  }
  buildCounterGeoJsonPolygon--;
}

buildGeoJsonPosition() {
  var o = new api.GeoJsonPosition();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkGeoJsonPosition(api.GeoJsonPosition o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildGeoJsonProperties() {
  var o = new api.GeoJsonProperties();
  o["a"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["b"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkGeoJsonProperties(api.GeoJsonProperties o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted2 = (o["a"]) as core.Map; unittest.expect(casted2, unittest.hasLength(3)); unittest.expect(casted2["list"], unittest.equals([1, 2, 3])); unittest.expect(casted2["bool"], unittest.equals(true)); unittest.expect(casted2["string"], unittest.equals('foo')); 
  var casted3 = (o["b"]) as core.Map; unittest.expect(casted3, unittest.hasLength(3)); unittest.expect(casted3["list"], unittest.equals([1, 2, 3])); unittest.expect(casted3["bool"], unittest.equals(true)); unittest.expect(casted3["string"], unittest.equals('foo')); 
}

core.int buildCounterIcon = 0;
buildIcon() {
  var o = new api.Icon();
  buildCounterIcon++;
  if (buildCounterIcon < 3) {
    o.description = "foo";
    o.id = "foo";
    o.name = "foo";
  }
  buildCounterIcon--;
  return o;
}

checkIcon(api.Icon o) {
  buildCounterIcon++;
  if (buildCounterIcon < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterIcon--;
}

core.int buildCounterIconStyle = 0;
buildIconStyle() {
  var o = new api.IconStyle();
  buildCounterIconStyle++;
  if (buildCounterIconStyle < 3) {
    o.id = "foo";
    o.name = "foo";
    o.scaledShape = buildScaledShape();
    o.scalingFunction = buildScalingFunction();
  }
  buildCounterIconStyle--;
  return o;
}

checkIconStyle(api.IconStyle o) {
  buildCounterIconStyle++;
  if (buildCounterIconStyle < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkScaledShape(o.scaledShape);
    checkScalingFunction(o.scalingFunction);
  }
  buildCounterIconStyle--;
}

buildUnnamed110() {
  var o = new core.List<api.Icon>();
  o.add(buildIcon());
  o.add(buildIcon());
  return o;
}

checkUnnamed110(core.List<api.Icon> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIcon(o[0]);
  checkIcon(o[1]);
}

core.int buildCounterIconsListResponse = 0;
buildIconsListResponse() {
  var o = new api.IconsListResponse();
  buildCounterIconsListResponse++;
  if (buildCounterIconsListResponse < 3) {
    o.icons = buildUnnamed110();
    o.nextPageToken = "foo";
  }
  buildCounterIconsListResponse--;
  return o;
}

checkIconsListResponse(api.IconsListResponse o) {
  buildCounterIconsListResponse++;
  if (buildCounterIconsListResponse < 3) {
    checkUnnamed110(o.icons);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterIconsListResponse--;
}

core.int buildCounterLabelStyle = 0;
buildLabelStyle() {
  var o = new api.LabelStyle();
  buildCounterLabelStyle++;
  if (buildCounterLabelStyle < 3) {
    o.color = "foo";
    o.column = "foo";
    o.fontStyle = "foo";
    o.fontWeight = "foo";
    o.opacity = 42.0;
    o.outline = buildColor();
    o.size = 42.0;
  }
  buildCounterLabelStyle--;
  return o;
}

checkLabelStyle(api.LabelStyle o) {
  buildCounterLabelStyle++;
  if (buildCounterLabelStyle < 3) {
    unittest.expect(o.color, unittest.equals('foo'));
    unittest.expect(o.column, unittest.equals('foo'));
    unittest.expect(o.fontStyle, unittest.equals('foo'));
    unittest.expect(o.fontWeight, unittest.equals('foo'));
    unittest.expect(o.opacity, unittest.equals(42.0));
    checkColor(o.outline);
    unittest.expect(o.size, unittest.equals(42.0));
  }
  buildCounterLabelStyle--;
}

buildLatLngBox() {
  var o = new api.LatLngBox();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkLatLngBox(api.LatLngBox o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed111() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed111(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterLayer = 0;
buildLayer() {
  var o = new api.Layer();
  buildCounterLayer++;
  if (buildCounterLayer < 3) {
    o.bbox = buildUnnamed111();
    o.creationTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.datasourceType = "foo";
    o.datasources = buildDatasources();
    o.description = "foo";
    o.draftAccessList = "foo";
    o.etag = "foo";
    o.id = "foo";
    o.lastModifiedTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.layerType = "foo";
    o.name = "foo";
    o.processingStatus = "foo";
    o.projectId = "foo";
    o.publishedAccessList = "foo";
    o.publishingStatus = "foo";
    o.style = buildVectorStyle();
    o.tags = buildTags();
  }
  buildCounterLayer--;
  return o;
}

checkLayer(api.Layer o) {
  buildCounterLayer++;
  if (buildCounterLayer < 3) {
    checkUnnamed111(o.bbox);
    unittest.expect(o.creationTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.datasourceType, unittest.equals('foo'));
    checkDatasources(o.datasources);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.draftAccessList, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.lastModifiedTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.layerType, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.processingStatus, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.publishedAccessList, unittest.equals('foo'));
    unittest.expect(o.publishingStatus, unittest.equals('foo'));
    checkVectorStyle(o.style);
    checkTags(o.tags);
  }
  buildCounterLayer--;
}

buildUnnamed112() {
  var o = new core.List<api.Layer>();
  o.add(buildLayer());
  o.add(buildLayer());
  return o;
}

checkUnnamed112(core.List<api.Layer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLayer(o[0]);
  checkLayer(o[1]);
}

core.int buildCounterLayersListResponse = 0;
buildLayersListResponse() {
  var o = new api.LayersListResponse();
  buildCounterLayersListResponse++;
  if (buildCounterLayersListResponse < 3) {
    o.layers = buildUnnamed112();
    o.nextPageToken = "foo";
  }
  buildCounterLayersListResponse--;
  return o;
}

checkLayersListResponse(api.LayersListResponse o) {
  buildCounterLayersListResponse++;
  if (buildCounterLayersListResponse < 3) {
    checkUnnamed112(o.layers);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterLayersListResponse--;
}

buildUnnamed113() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed113(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterLineStyleStroke = 0;
buildLineStyleStroke() {
  var o = new api.LineStyleStroke();
  buildCounterLineStyleStroke++;
  if (buildCounterLineStyleStroke < 3) {
    o.color = "foo";
    o.opacity = 42.0;
    o.width = 42.0;
  }
  buildCounterLineStyleStroke--;
  return o;
}

checkLineStyleStroke(api.LineStyleStroke o) {
  buildCounterLineStyleStroke++;
  if (buildCounterLineStyleStroke < 3) {
    unittest.expect(o.color, unittest.equals('foo'));
    unittest.expect(o.opacity, unittest.equals(42.0));
    unittest.expect(o.width, unittest.equals(42.0));
  }
  buildCounterLineStyleStroke--;
}

core.int buildCounterLineStyle = 0;
buildLineStyle() {
  var o = new api.LineStyle();
  buildCounterLineStyle++;
  if (buildCounterLineStyle < 3) {
    o.border = buildBorder();
    o.dash = buildUnnamed113();
    o.label = buildLabelStyle();
    o.stroke = buildLineStyleStroke();
  }
  buildCounterLineStyle--;
  return o;
}

checkLineStyle(api.LineStyle o) {
  buildCounterLineStyle++;
  if (buildCounterLineStyle < 3) {
    checkBorder(o.border);
    checkUnnamed113(o.dash);
    checkLabelStyle(o.label);
    checkLineStyleStroke(o.stroke);
  }
  buildCounterLineStyle--;
}

buildUnnamed114() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed114(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed115() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed115(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMap = 0;
buildMap() {
  var o = new api.Map();
  buildCounterMap++;
  if (buildCounterMap < 3) {
    o.bbox = buildUnnamed114();
    o.contents = buildMapContents();
    o.creationTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.defaultViewport = buildLatLngBox();
    o.description = "foo";
    o.draftAccessList = "foo";
    o.etag = "foo";
    o.id = "foo";
    o.lastModifiedTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = "foo";
    o.processingStatus = "foo";
    o.projectId = "foo";
    o.publishedAccessList = "foo";
    o.publishingStatus = "foo";
    o.tags = buildTags();
    o.versions = buildUnnamed115();
  }
  buildCounterMap--;
  return o;
}

checkMap(api.Map o) {
  buildCounterMap++;
  if (buildCounterMap < 3) {
    checkUnnamed114(o.bbox);
    checkMapContents(o.contents);
    unittest.expect(o.creationTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    checkLatLngBox(o.defaultViewport);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.draftAccessList, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.lastModifiedTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.processingStatus, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.publishedAccessList, unittest.equals('foo'));
    unittest.expect(o.publishingStatus, unittest.equals('foo'));
    checkTags(o.tags);
    checkUnnamed115(o.versions);
  }
  buildCounterMap--;
}

buildMapContents() {
  var o = new api.MapContents();
  o.add(buildMapItem());
  o.add(buildMapItem());
  return o;
}

checkMapContents(api.MapContents o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMapItem(o[0]);
  checkMapItem(o[1]);
}

buildUnnamed116() {
  var o = new core.List<api.MapItem>();
  o.add(buildMapItem());
  o.add(buildMapItem());
  return o;
}

checkUnnamed116(core.List<api.MapItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMapItem(o[0]);
  checkMapItem(o[1]);
}

buildUnnamed117() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed117(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterMapFolder = 0;
buildMapFolder() {
  var o = new api.MapFolder();
  buildCounterMapFolder++;
  if (buildCounterMapFolder < 3) {
    o.contents = buildUnnamed116();
    o.defaultViewport = buildUnnamed117();
    o.expandable = true;
    o.key = "foo";
    o.name = "foo";
    o.visibility = "foo";
  }
  buildCounterMapFolder--;
  return o;
}

checkMapFolder(api.MapFolder o) {
  buildCounterMapFolder++;
  if (buildCounterMapFolder < 3) {
    checkUnnamed116(o.contents);
    checkUnnamed117(o.defaultViewport);
    unittest.expect(o.expandable, unittest.isTrue);
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.visibility, unittest.equals('foo'));
  }
  buildCounterMapFolder--;
}

buildMapItem() {
  return buildMapFolder();
}

checkMapItem(api.MapItem o) {
  checkMapFolder(api.MapFolder o) {
  buildCounterMapFolder++;
  if (buildCounterMapFolder < 3) {
    checkUnnamed116(o.contents);
    checkUnnamed117(o.defaultViewport);
    unittest.expect(o.expandable, unittest.isTrue);
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.visibility, unittest.equals('foo'));
  }
  buildCounterMapFolder--;
}

(o);
}

buildUnnamed118() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed118(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterMapKmlLink = 0;
buildMapKmlLink() {
  var o = new api.MapKmlLink();
  buildCounterMapKmlLink++;
  if (buildCounterMapKmlLink < 3) {
    o.defaultViewport = buildUnnamed118();
    o.kmlUrl = "foo";
    o.name = "foo";
    o.visibility = "foo";
  }
  buildCounterMapKmlLink--;
  return o;
}

checkMapKmlLink(api.MapKmlLink o) {
  buildCounterMapKmlLink++;
  if (buildCounterMapKmlLink < 3) {
    checkUnnamed118(o.defaultViewport);
    unittest.expect(o.kmlUrl, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.visibility, unittest.equals('foo'));
  }
  buildCounterMapKmlLink--;
}

buildUnnamed119() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed119(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterMapLayer = 0;
buildMapLayer() {
  var o = new api.MapLayer();
  buildCounterMapLayer++;
  if (buildCounterMapLayer < 3) {
    o.defaultViewport = buildUnnamed119();
    o.id = "foo";
    o.key = "foo";
    o.name = "foo";
    o.visibility = "foo";
  }
  buildCounterMapLayer--;
  return o;
}

checkMapLayer(api.MapLayer o) {
  buildCounterMapLayer++;
  if (buildCounterMapLayer < 3) {
    checkUnnamed119(o.defaultViewport);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.visibility, unittest.equals('foo'));
  }
  buildCounterMapLayer--;
}

buildUnnamed120() {
  var o = new core.List<api.Map>();
  o.add(buildMap());
  o.add(buildMap());
  return o;
}

checkUnnamed120(core.List<api.Map> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMap(o[0]);
  checkMap(o[1]);
}

core.int buildCounterMapsListResponse = 0;
buildMapsListResponse() {
  var o = new api.MapsListResponse();
  buildCounterMapsListResponse++;
  if (buildCounterMapsListResponse < 3) {
    o.maps = buildUnnamed120();
    o.nextPageToken = "foo";
  }
  buildCounterMapsListResponse--;
  return o;
}

checkMapsListResponse(api.MapsListResponse o) {
  buildCounterMapsListResponse++;
  if (buildCounterMapsListResponse < 3) {
    checkUnnamed120(o.maps);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterMapsListResponse--;
}

core.int buildCounterParent = 0;
buildParent() {
  var o = new api.Parent();
  buildCounterParent++;
  if (buildCounterParent < 3) {
    o.id = "foo";
  }
  buildCounterParent--;
  return o;
}

checkParent(api.Parent o) {
  buildCounterParent++;
  if (buildCounterParent < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
  }
  buildCounterParent--;
}

buildUnnamed121() {
  var o = new core.List<api.Parent>();
  o.add(buildParent());
  o.add(buildParent());
  return o;
}

checkUnnamed121(core.List<api.Parent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParent(o[0]);
  checkParent(o[1]);
}

core.int buildCounterParentsListResponse = 0;
buildParentsListResponse() {
  var o = new api.ParentsListResponse();
  buildCounterParentsListResponse++;
  if (buildCounterParentsListResponse < 3) {
    o.nextPageToken = "foo";
    o.parents = buildUnnamed121();
  }
  buildCounterParentsListResponse--;
  return o;
}

checkParentsListResponse(api.ParentsListResponse o) {
  buildCounterParentsListResponse++;
  if (buildCounterParentsListResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed121(o.parents);
  }
  buildCounterParentsListResponse--;
}

core.int buildCounterPointStyle = 0;
buildPointStyle() {
  var o = new api.PointStyle();
  buildCounterPointStyle++;
  if (buildCounterPointStyle < 3) {
    o.icon = buildIconStyle();
    o.label = buildLabelStyle();
  }
  buildCounterPointStyle--;
  return o;
}

checkPointStyle(api.PointStyle o) {
  buildCounterPointStyle++;
  if (buildCounterPointStyle < 3) {
    checkIconStyle(o.icon);
    checkLabelStyle(o.label);
  }
  buildCounterPointStyle--;
}

core.int buildCounterPolygonStyle = 0;
buildPolygonStyle() {
  var o = new api.PolygonStyle();
  buildCounterPolygonStyle++;
  if (buildCounterPolygonStyle < 3) {
    o.fill = buildColor();
    o.stroke = buildBorder();
  }
  buildCounterPolygonStyle--;
  return o;
}

checkPolygonStyle(api.PolygonStyle o) {
  buildCounterPolygonStyle++;
  if (buildCounterPolygonStyle < 3) {
    checkColor(o.fill);
    checkBorder(o.stroke);
  }
  buildCounterPolygonStyle--;
}

core.int buildCounterProcessResponse = 0;
buildProcessResponse() {
  var o = new api.ProcessResponse();
  buildCounterProcessResponse++;
  if (buildCounterProcessResponse < 3) {
  }
  buildCounterProcessResponse--;
  return o;
}

checkProcessResponse(api.ProcessResponse o) {
  buildCounterProcessResponse++;
  if (buildCounterProcessResponse < 3) {
  }
  buildCounterProcessResponse--;
}

core.int buildCounterProject = 0;
buildProject() {
  var o = new api.Project();
  buildCounterProject++;
  if (buildCounterProject < 3) {
    o.id = "foo";
    o.name = "foo";
  }
  buildCounterProject--;
  return o;
}

checkProject(api.Project o) {
  buildCounterProject++;
  if (buildCounterProject < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterProject--;
}

buildUnnamed122() {
  var o = new core.List<api.Project>();
  o.add(buildProject());
  o.add(buildProject());
  return o;
}

checkUnnamed122(core.List<api.Project> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProject(o[0]);
  checkProject(o[1]);
}

core.int buildCounterProjectsListResponse = 0;
buildProjectsListResponse() {
  var o = new api.ProjectsListResponse();
  buildCounterProjectsListResponse++;
  if (buildCounterProjectsListResponse < 3) {
    o.projects = buildUnnamed122();
  }
  buildCounterProjectsListResponse--;
  return o;
}

checkProjectsListResponse(api.ProjectsListResponse o) {
  buildCounterProjectsListResponse++;
  if (buildCounterProjectsListResponse < 3) {
    checkUnnamed122(o.projects);
  }
  buildCounterProjectsListResponse--;
}

core.int buildCounterPublishResponse = 0;
buildPublishResponse() {
  var o = new api.PublishResponse();
  buildCounterPublishResponse++;
  if (buildCounterPublishResponse < 3) {
  }
  buildCounterPublishResponse--;
  return o;
}

checkPublishResponse(api.PublishResponse o) {
  buildCounterPublishResponse++;
  if (buildCounterPublishResponse < 3) {
  }
  buildCounterPublishResponse--;
}

core.int buildCounterPublishedLayer = 0;
buildPublishedLayer() {
  var o = new api.PublishedLayer();
  buildCounterPublishedLayer++;
  if (buildCounterPublishedLayer < 3) {
    o.description = "foo";
    o.etag = "foo";
    o.id = "foo";
    o.layerType = "foo";
    o.name = "foo";
    o.projectId = "foo";
  }
  buildCounterPublishedLayer--;
  return o;
}

checkPublishedLayer(api.PublishedLayer o) {
  buildCounterPublishedLayer++;
  if (buildCounterPublishedLayer < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.layerType, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterPublishedLayer--;
}

buildUnnamed123() {
  var o = new core.List<api.PublishedLayer>();
  o.add(buildPublishedLayer());
  o.add(buildPublishedLayer());
  return o;
}

checkUnnamed123(core.List<api.PublishedLayer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPublishedLayer(o[0]);
  checkPublishedLayer(o[1]);
}

core.int buildCounterPublishedLayersListResponse = 0;
buildPublishedLayersListResponse() {
  var o = new api.PublishedLayersListResponse();
  buildCounterPublishedLayersListResponse++;
  if (buildCounterPublishedLayersListResponse < 3) {
    o.layers = buildUnnamed123();
    o.nextPageToken = "foo";
  }
  buildCounterPublishedLayersListResponse--;
  return o;
}

checkPublishedLayersListResponse(api.PublishedLayersListResponse o) {
  buildCounterPublishedLayersListResponse++;
  if (buildCounterPublishedLayersListResponse < 3) {
    checkUnnamed123(o.layers);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterPublishedLayersListResponse--;
}

core.int buildCounterPublishedMap = 0;
buildPublishedMap() {
  var o = new api.PublishedMap();
  buildCounterPublishedMap++;
  if (buildCounterPublishedMap < 3) {
    o.contents = buildMapContents();
    o.defaultViewport = buildLatLngBox();
    o.description = "foo";
    o.etag = "foo";
    o.id = "foo";
    o.name = "foo";
    o.projectId = "foo";
  }
  buildCounterPublishedMap--;
  return o;
}

checkPublishedMap(api.PublishedMap o) {
  buildCounterPublishedMap++;
  if (buildCounterPublishedMap < 3) {
    checkMapContents(o.contents);
    checkLatLngBox(o.defaultViewport);
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterPublishedMap--;
}

buildUnnamed124() {
  var o = new core.List<api.PublishedMap>();
  o.add(buildPublishedMap());
  o.add(buildPublishedMap());
  return o;
}

checkUnnamed124(core.List<api.PublishedMap> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPublishedMap(o[0]);
  checkPublishedMap(o[1]);
}

core.int buildCounterPublishedMapsListResponse = 0;
buildPublishedMapsListResponse() {
  var o = new api.PublishedMapsListResponse();
  buildCounterPublishedMapsListResponse++;
  if (buildCounterPublishedMapsListResponse < 3) {
    o.maps = buildUnnamed124();
    o.nextPageToken = "foo";
  }
  buildCounterPublishedMapsListResponse--;
  return o;
}

checkPublishedMapsListResponse(api.PublishedMapsListResponse o) {
  buildCounterPublishedMapsListResponse++;
  if (buildCounterPublishedMapsListResponse < 3) {
    checkUnnamed124(o.maps);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterPublishedMapsListResponse--;
}

buildUnnamed125() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed125(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed126() {
  var o = new core.List<api.File>();
  o.add(buildFile());
  o.add(buildFile());
  return o;
}

checkUnnamed126(core.List<api.File> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFile(o[0]);
  checkFile(o[1]);
}

core.int buildCounterRaster = 0;
buildRaster() {
  var o = new api.Raster();
  buildCounterRaster++;
  if (buildCounterRaster < 3) {
    o.acquisitionTime = buildAcquisitionTime();
    o.attribution = "foo";
    o.bbox = buildUnnamed125();
    o.creationTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.description = "foo";
    o.draftAccessList = "foo";
    o.etag = "foo";
    o.files = buildUnnamed126();
    o.id = "foo";
    o.lastModifiedTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.maskType = "foo";
    o.name = "foo";
    o.processingStatus = "foo";
    o.projectId = "foo";
    o.rasterType = "foo";
    o.tags = buildTags();
  }
  buildCounterRaster--;
  return o;
}

checkRaster(api.Raster o) {
  buildCounterRaster++;
  if (buildCounterRaster < 3) {
    checkAcquisitionTime(o.acquisitionTime);
    unittest.expect(o.attribution, unittest.equals('foo'));
    checkUnnamed125(o.bbox);
    unittest.expect(o.creationTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.draftAccessList, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed126(o.files);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.lastModifiedTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.maskType, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.processingStatus, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.rasterType, unittest.equals('foo'));
    checkTags(o.tags);
  }
  buildCounterRaster--;
}

buildUnnamed127() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed127(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterRasterCollection = 0;
buildRasterCollection() {
  var o = new api.RasterCollection();
  buildCounterRasterCollection++;
  if (buildCounterRasterCollection < 3) {
    o.attribution = "foo";
    o.bbox = buildUnnamed127();
    o.creationTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.description = "foo";
    o.draftAccessList = "foo";
    o.etag = "foo";
    o.id = "foo";
    o.lastModifiedTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.mosaic = true;
    o.name = "foo";
    o.processingStatus = "foo";
    o.projectId = "foo";
    o.rasterType = "foo";
    o.tags = buildTags();
  }
  buildCounterRasterCollection--;
  return o;
}

checkRasterCollection(api.RasterCollection o) {
  buildCounterRasterCollection++;
  if (buildCounterRasterCollection < 3) {
    unittest.expect(o.attribution, unittest.equals('foo'));
    checkUnnamed127(o.bbox);
    unittest.expect(o.creationTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.draftAccessList, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.lastModifiedTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.mosaic, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.processingStatus, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.rasterType, unittest.equals('foo'));
    checkTags(o.tags);
  }
  buildCounterRasterCollection--;
}

buildUnnamed128() {
  var o = new core.List<api.RasterCollection>();
  o.add(buildRasterCollection());
  o.add(buildRasterCollection());
  return o;
}

checkUnnamed128(core.List<api.RasterCollection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRasterCollection(o[0]);
  checkRasterCollection(o[1]);
}

core.int buildCounterRasterCollectionsListResponse = 0;
buildRasterCollectionsListResponse() {
  var o = new api.RasterCollectionsListResponse();
  buildCounterRasterCollectionsListResponse++;
  if (buildCounterRasterCollectionsListResponse < 3) {
    o.nextPageToken = "foo";
    o.rasterCollections = buildUnnamed128();
  }
  buildCounterRasterCollectionsListResponse--;
  return o;
}

checkRasterCollectionsListResponse(api.RasterCollectionsListResponse o) {
  buildCounterRasterCollectionsListResponse++;
  if (buildCounterRasterCollectionsListResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed128(o.rasterCollections);
  }
  buildCounterRasterCollectionsListResponse--;
}

buildUnnamed129() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed129(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed130() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed130(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRasterCollectionsRaster = 0;
buildRasterCollectionsRaster() {
  var o = new api.RasterCollectionsRaster();
  buildCounterRasterCollectionsRaster++;
  if (buildCounterRasterCollectionsRaster < 3) {
    o.bbox = buildUnnamed129();
    o.creationTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.description = "foo";
    o.id = "foo";
    o.lastModifiedTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = "foo";
    o.projectId = "foo";
    o.rasterType = "foo";
    o.tags = buildUnnamed130();
  }
  buildCounterRasterCollectionsRaster--;
  return o;
}

checkRasterCollectionsRaster(api.RasterCollectionsRaster o) {
  buildCounterRasterCollectionsRaster++;
  if (buildCounterRasterCollectionsRaster < 3) {
    checkUnnamed129(o.bbox);
    unittest.expect(o.creationTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.lastModifiedTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.rasterType, unittest.equals('foo'));
    checkUnnamed130(o.tags);
  }
  buildCounterRasterCollectionsRaster--;
}

buildUnnamed131() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed131(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRasterCollectionsRasterBatchDeleteRequest = 0;
buildRasterCollectionsRasterBatchDeleteRequest() {
  var o = new api.RasterCollectionsRasterBatchDeleteRequest();
  buildCounterRasterCollectionsRasterBatchDeleteRequest++;
  if (buildCounterRasterCollectionsRasterBatchDeleteRequest < 3) {
    o.ids = buildUnnamed131();
  }
  buildCounterRasterCollectionsRasterBatchDeleteRequest--;
  return o;
}

checkRasterCollectionsRasterBatchDeleteRequest(api.RasterCollectionsRasterBatchDeleteRequest o) {
  buildCounterRasterCollectionsRasterBatchDeleteRequest++;
  if (buildCounterRasterCollectionsRasterBatchDeleteRequest < 3) {
    checkUnnamed131(o.ids);
  }
  buildCounterRasterCollectionsRasterBatchDeleteRequest--;
}

core.int buildCounterRasterCollectionsRastersBatchDeleteResponse = 0;
buildRasterCollectionsRastersBatchDeleteResponse() {
  var o = new api.RasterCollectionsRastersBatchDeleteResponse();
  buildCounterRasterCollectionsRastersBatchDeleteResponse++;
  if (buildCounterRasterCollectionsRastersBatchDeleteResponse < 3) {
  }
  buildCounterRasterCollectionsRastersBatchDeleteResponse--;
  return o;
}

checkRasterCollectionsRastersBatchDeleteResponse(api.RasterCollectionsRastersBatchDeleteResponse o) {
  buildCounterRasterCollectionsRastersBatchDeleteResponse++;
  if (buildCounterRasterCollectionsRastersBatchDeleteResponse < 3) {
  }
  buildCounterRasterCollectionsRastersBatchDeleteResponse--;
}

buildUnnamed132() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed132(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRasterCollectionsRastersBatchInsertRequest = 0;
buildRasterCollectionsRastersBatchInsertRequest() {
  var o = new api.RasterCollectionsRastersBatchInsertRequest();
  buildCounterRasterCollectionsRastersBatchInsertRequest++;
  if (buildCounterRasterCollectionsRastersBatchInsertRequest < 3) {
    o.ids = buildUnnamed132();
  }
  buildCounterRasterCollectionsRastersBatchInsertRequest--;
  return o;
}

checkRasterCollectionsRastersBatchInsertRequest(api.RasterCollectionsRastersBatchInsertRequest o) {
  buildCounterRasterCollectionsRastersBatchInsertRequest++;
  if (buildCounterRasterCollectionsRastersBatchInsertRequest < 3) {
    checkUnnamed132(o.ids);
  }
  buildCounterRasterCollectionsRastersBatchInsertRequest--;
}

core.int buildCounterRasterCollectionsRastersBatchInsertResponse = 0;
buildRasterCollectionsRastersBatchInsertResponse() {
  var o = new api.RasterCollectionsRastersBatchInsertResponse();
  buildCounterRasterCollectionsRastersBatchInsertResponse++;
  if (buildCounterRasterCollectionsRastersBatchInsertResponse < 3) {
  }
  buildCounterRasterCollectionsRastersBatchInsertResponse--;
  return o;
}

checkRasterCollectionsRastersBatchInsertResponse(api.RasterCollectionsRastersBatchInsertResponse o) {
  buildCounterRasterCollectionsRastersBatchInsertResponse++;
  if (buildCounterRasterCollectionsRastersBatchInsertResponse < 3) {
  }
  buildCounterRasterCollectionsRastersBatchInsertResponse--;
}

buildUnnamed133() {
  var o = new core.List<api.RasterCollectionsRaster>();
  o.add(buildRasterCollectionsRaster());
  o.add(buildRasterCollectionsRaster());
  return o;
}

checkUnnamed133(core.List<api.RasterCollectionsRaster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRasterCollectionsRaster(o[0]);
  checkRasterCollectionsRaster(o[1]);
}

core.int buildCounterRasterCollectionsRastersListResponse = 0;
buildRasterCollectionsRastersListResponse() {
  var o = new api.RasterCollectionsRastersListResponse();
  buildCounterRasterCollectionsRastersListResponse++;
  if (buildCounterRasterCollectionsRastersListResponse < 3) {
    o.nextPageToken = "foo";
    o.rasters = buildUnnamed133();
  }
  buildCounterRasterCollectionsRastersListResponse--;
  return o;
}

checkRasterCollectionsRastersListResponse(api.RasterCollectionsRastersListResponse o) {
  buildCounterRasterCollectionsRastersListResponse++;
  if (buildCounterRasterCollectionsRastersListResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed133(o.rasters);
  }
  buildCounterRasterCollectionsRastersListResponse--;
}

buildUnnamed134() {
  var o = new core.List<api.Raster>();
  o.add(buildRaster());
  o.add(buildRaster());
  return o;
}

checkUnnamed134(core.List<api.Raster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRaster(o[0]);
  checkRaster(o[1]);
}

core.int buildCounterRastersListResponse = 0;
buildRastersListResponse() {
  var o = new api.RastersListResponse();
  buildCounterRastersListResponse++;
  if (buildCounterRastersListResponse < 3) {
    o.nextPageToken = "foo";
    o.rasters = buildUnnamed134();
  }
  buildCounterRastersListResponse--;
  return o;
}

checkRastersListResponse(api.RastersListResponse o) {
  buildCounterRastersListResponse++;
  if (buildCounterRastersListResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed134(o.rasters);
  }
  buildCounterRastersListResponse--;
}

core.int buildCounterScaledShape = 0;
buildScaledShape() {
  var o = new api.ScaledShape();
  buildCounterScaledShape++;
  if (buildCounterScaledShape < 3) {
    o.border = buildBorder();
    o.fill = buildColor();
    o.shape = "foo";
  }
  buildCounterScaledShape--;
  return o;
}

checkScaledShape(api.ScaledShape o) {
  buildCounterScaledShape++;
  if (buildCounterScaledShape < 3) {
    checkBorder(o.border);
    checkColor(o.fill);
    unittest.expect(o.shape, unittest.equals('foo'));
  }
  buildCounterScaledShape--;
}

core.int buildCounterScalingFunction = 0;
buildScalingFunction() {
  var o = new api.ScalingFunction();
  buildCounterScalingFunction++;
  if (buildCounterScalingFunction < 3) {
    o.column = "foo";
    o.scalingType = "foo";
    o.sizeRange = buildSizeRange();
    o.valueRange = buildValueRange();
  }
  buildCounterScalingFunction--;
  return o;
}

checkScalingFunction(api.ScalingFunction o) {
  buildCounterScalingFunction++;
  if (buildCounterScalingFunction < 3) {
    unittest.expect(o.column, unittest.equals('foo'));
    unittest.expect(o.scalingType, unittest.equals('foo'));
    checkSizeRange(o.sizeRange);
    checkValueRange(o.valueRange);
  }
  buildCounterScalingFunction--;
}

buildUnnamed135() {
  var o = new core.List<api.TableColumn>();
  o.add(buildTableColumn());
  o.add(buildTableColumn());
  return o;
}

checkUnnamed135(core.List<api.TableColumn> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableColumn(o[0]);
  checkTableColumn(o[1]);
}

core.int buildCounterSchema = 0;
buildSchema() {
  var o = new api.Schema();
  buildCounterSchema++;
  if (buildCounterSchema < 3) {
    o.columns = buildUnnamed135();
    o.primaryGeometry = "foo";
    o.primaryKey = "foo";
  }
  buildCounterSchema--;
  return o;
}

checkSchema(api.Schema o) {
  buildCounterSchema++;
  if (buildCounterSchema < 3) {
    checkUnnamed135(o.columns);
    unittest.expect(o.primaryGeometry, unittest.equals('foo'));
    unittest.expect(o.primaryKey, unittest.equals('foo'));
  }
  buildCounterSchema--;
}

core.int buildCounterSizeRange = 0;
buildSizeRange() {
  var o = new api.SizeRange();
  buildCounterSizeRange++;
  if (buildCounterSizeRange < 3) {
    o.max = 42.0;
    o.min = 42.0;
  }
  buildCounterSizeRange--;
  return o;
}

checkSizeRange(api.SizeRange o) {
  buildCounterSizeRange++;
  if (buildCounterSizeRange < 3) {
    unittest.expect(o.max, unittest.equals(42.0));
    unittest.expect(o.min, unittest.equals(42.0));
  }
  buildCounterSizeRange--;
}

buildUnnamed136() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed136(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed137() {
  var o = new core.List<api.File>();
  o.add(buildFile());
  o.add(buildFile());
  return o;
}

checkUnnamed137(core.List<api.File> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFile(o[0]);
  checkFile(o[1]);
}

core.int buildCounterTable = 0;
buildTable() {
  var o = new api.Table();
  buildCounterTable++;
  if (buildCounterTable < 3) {
    o.bbox = buildUnnamed136();
    o.creationTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.description = "foo";
    o.draftAccessList = "foo";
    o.etag = "foo";
    o.files = buildUnnamed137();
    o.id = "foo";
    o.lastModifiedTime = core.DateTime.parse("2002-02-27T14:01:02");
    o.name = "foo";
    o.processingStatus = "foo";
    o.projectId = "foo";
    o.publishedAccessList = "foo";
    o.schema = buildSchema();
    o.sourceEncoding = "foo";
    o.tags = buildTags();
  }
  buildCounterTable--;
  return o;
}

checkTable(api.Table o) {
  buildCounterTable++;
  if (buildCounterTable < 3) {
    checkUnnamed136(o.bbox);
    unittest.expect(o.creationTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.draftAccessList, unittest.equals('foo'));
    unittest.expect(o.etag, unittest.equals('foo'));
    checkUnnamed137(o.files);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.lastModifiedTime, unittest.equals(core.DateTime.parse("2002-02-27T14:01:02")));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.processingStatus, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.publishedAccessList, unittest.equals('foo'));
    checkSchema(o.schema);
    unittest.expect(o.sourceEncoding, unittest.equals('foo'));
    checkTags(o.tags);
  }
  buildCounterTable--;
}

core.int buildCounterTableColumn = 0;
buildTableColumn() {
  var o = new api.TableColumn();
  buildCounterTableColumn++;
  if (buildCounterTableColumn < 3) {
    o.name = "foo";
    o.type = "foo";
  }
  buildCounterTableColumn--;
  return o;
}

checkTableColumn(api.TableColumn o) {
  buildCounterTableColumn++;
  if (buildCounterTableColumn < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterTableColumn--;
}

buildUnnamed138() {
  var o = new core.List<api.Table>();
  o.add(buildTable());
  o.add(buildTable());
  return o;
}

checkUnnamed138(core.List<api.Table> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTable(o[0]);
  checkTable(o[1]);
}

core.int buildCounterTablesListResponse = 0;
buildTablesListResponse() {
  var o = new api.TablesListResponse();
  buildCounterTablesListResponse++;
  if (buildCounterTablesListResponse < 3) {
    o.nextPageToken = "foo";
    o.tables = buildUnnamed138();
  }
  buildCounterTablesListResponse--;
  return o;
}

checkTablesListResponse(api.TablesListResponse o) {
  buildCounterTablesListResponse++;
  if (buildCounterTablesListResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed138(o.tables);
  }
  buildCounterTablesListResponse--;
}

buildTags() {
  var o = new api.Tags();
  o.add("foo");
  o.add("foo");
  return o;
}

checkTags(api.Tags o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterValueRange = 0;
buildValueRange() {
  var o = new api.ValueRange();
  buildCounterValueRange++;
  if (buildCounterValueRange < 3) {
    o.max = 42.0;
    o.min = 42.0;
  }
  buildCounterValueRange--;
  return o;
}

checkValueRange(api.ValueRange o) {
  buildCounterValueRange++;
  if (buildCounterValueRange < 3) {
    unittest.expect(o.max, unittest.equals(42.0));
    unittest.expect(o.min, unittest.equals(42.0));
  }
  buildCounterValueRange--;
}

buildUnnamed139() {
  var o = new core.List<api.DisplayRule>();
  o.add(buildDisplayRule());
  o.add(buildDisplayRule());
  return o;
}

checkUnnamed139(core.List<api.DisplayRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisplayRule(o[0]);
  checkDisplayRule(o[1]);
}

core.int buildCounterVectorStyle = 0;
buildVectorStyle() {
  var o = new api.VectorStyle();
  buildCounterVectorStyle++;
  if (buildCounterVectorStyle < 3) {
    o.displayRules = buildUnnamed139();
    o.featureInfo = buildFeatureInfo();
    o.type = "foo";
  }
  buildCounterVectorStyle--;
  return o;
}

checkVectorStyle(api.VectorStyle o) {
  buildCounterVectorStyle++;
  if (buildCounterVectorStyle < 3) {
    checkUnnamed139(o.displayRules);
    checkFeatureInfo(o.featureInfo);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterVectorStyle--;
}

core.int buildCounterZoomLevels = 0;
buildZoomLevels() {
  var o = new api.ZoomLevels();
  buildCounterZoomLevels++;
  if (buildCounterZoomLevels < 3) {
    o.max = 42;
    o.min = 42;
  }
  buildCounterZoomLevels--;
  return o;
}

checkZoomLevels(api.ZoomLevels o) {
  buildCounterZoomLevels++;
  if (buildCounterZoomLevels < 3) {
    unittest.expect(o.max, unittest.equals(42));
    unittest.expect(o.min, unittest.equals(42));
  }
  buildCounterZoomLevels--;
}


main() {
  unittest.group("obj-schema-AcquisitionTime", () {
    unittest.test("to-json--from-json", () {
      var o = buildAcquisitionTime();
      var od = new api.AcquisitionTime.fromJson(o.toJson());
      checkAcquisitionTime(od);
    });
  });


  unittest.group("obj-schema-Asset", () {
    unittest.test("to-json--from-json", () {
      var o = buildAsset();
      var od = new api.Asset.fromJson(o.toJson());
      checkAsset(od);
    });
  });


  unittest.group("obj-schema-AssetsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAssetsListResponse();
      var od = new api.AssetsListResponse.fromJson(o.toJson());
      checkAssetsListResponse(od);
    });
  });


  unittest.group("obj-schema-Border", () {
    unittest.test("to-json--from-json", () {
      var o = buildBorder();
      var od = new api.Border.fromJson(o.toJson());
      checkBorder(od);
    });
  });


  unittest.group("obj-schema-Color", () {
    unittest.test("to-json--from-json", () {
      var o = buildColor();
      var od = new api.Color.fromJson(o.toJson());
      checkColor(od);
    });
  });


  unittest.group("obj-schema-Datasource", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatasource();
      var od = new api.Datasource.fromJson(o.toJson());
      checkDatasource(od);
    });
  });


  unittest.group("obj-schema-Datasources", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatasources();
      var od = new api.Datasources.fromJson(o.toJson());
      checkDatasources(od);
    });
  });


  unittest.group("obj-schema-DisplayRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildDisplayRule();
      var od = new api.DisplayRule.fromJson(o.toJson());
      checkDisplayRule(od);
    });
  });


  unittest.group("obj-schema-Feature", () {
    unittest.test("to-json--from-json", () {
      var o = buildFeature();
      var od = new api.Feature.fromJson(o.toJson());
      checkFeature(od);
    });
  });


  unittest.group("obj-schema-FeatureInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildFeatureInfo();
      var od = new api.FeatureInfo.fromJson(o.toJson());
      checkFeatureInfo(od);
    });
  });


  unittest.group("obj-schema-FeaturesBatchDeleteRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildFeaturesBatchDeleteRequest();
      var od = new api.FeaturesBatchDeleteRequest.fromJson(o.toJson());
      checkFeaturesBatchDeleteRequest(od);
    });
  });


  unittest.group("obj-schema-FeaturesBatchInsertRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildFeaturesBatchInsertRequest();
      var od = new api.FeaturesBatchInsertRequest.fromJson(o.toJson());
      checkFeaturesBatchInsertRequest(od);
    });
  });


  unittest.group("obj-schema-FeaturesBatchPatchRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildFeaturesBatchPatchRequest();
      var od = new api.FeaturesBatchPatchRequest.fromJson(o.toJson());
      checkFeaturesBatchPatchRequest(od);
    });
  });


  unittest.group("obj-schema-FeaturesListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildFeaturesListResponse();
      var od = new api.FeaturesListResponse.fromJson(o.toJson());
      checkFeaturesListResponse(od);
    });
  });


  unittest.group("obj-schema-File", () {
    unittest.test("to-json--from-json", () {
      var o = buildFile();
      var od = new api.File.fromJson(o.toJson());
      checkFile(od);
    });
  });


  unittest.group("obj-schema-Filter", () {
    unittest.test("to-json--from-json", () {
      var o = buildFilter();
      var od = new api.Filter.fromJson(o.toJson());
      checkFilter(od);
    });
  });


  unittest.group("obj-schema-GeoJsonGeometry", () {
    unittest.test("to-json--from-json", () {
      var o = buildGeoJsonGeometry();
      var od = new api.GeoJsonGeometry.fromJson(o.toJson());
      checkGeoJsonGeometry(od);
    });
  });


  unittest.group("obj-schema-GeoJsonGeometryCollection", () {
    unittest.test("to-json--from-json", () {
      var o = buildGeoJsonGeometryCollection();
      var od = new api.GeoJsonGeometryCollection.fromJson(o.toJson());
      checkGeoJsonGeometryCollection(od);
    });
  });


  unittest.group("obj-schema-GeoJsonLineString", () {
    unittest.test("to-json--from-json", () {
      var o = buildGeoJsonLineString();
      var od = new api.GeoJsonLineString.fromJson(o.toJson());
      checkGeoJsonLineString(od);
    });
  });


  unittest.group("obj-schema-GeoJsonMultiLineString", () {
    unittest.test("to-json--from-json", () {
      var o = buildGeoJsonMultiLineString();
      var od = new api.GeoJsonMultiLineString.fromJson(o.toJson());
      checkGeoJsonMultiLineString(od);
    });
  });


  unittest.group("obj-schema-GeoJsonMultiPoint", () {
    unittest.test("to-json--from-json", () {
      var o = buildGeoJsonMultiPoint();
      var od = new api.GeoJsonMultiPoint.fromJson(o.toJson());
      checkGeoJsonMultiPoint(od);
    });
  });


  unittest.group("obj-schema-GeoJsonMultiPolygon", () {
    unittest.test("to-json--from-json", () {
      var o = buildGeoJsonMultiPolygon();
      var od = new api.GeoJsonMultiPolygon.fromJson(o.toJson());
      checkGeoJsonMultiPolygon(od);
    });
  });


  unittest.group("obj-schema-GeoJsonPoint", () {
    unittest.test("to-json--from-json", () {
      var o = buildGeoJsonPoint();
      var od = new api.GeoJsonPoint.fromJson(o.toJson());
      checkGeoJsonPoint(od);
    });
  });


  unittest.group("obj-schema-GeoJsonPolygon", () {
    unittest.test("to-json--from-json", () {
      var o = buildGeoJsonPolygon();
      var od = new api.GeoJsonPolygon.fromJson(o.toJson());
      checkGeoJsonPolygon(od);
    });
  });


  unittest.group("obj-schema-GeoJsonPosition", () {
    unittest.test("to-json--from-json", () {
      var o = buildGeoJsonPosition();
      var od = new api.GeoJsonPosition.fromJson(o.toJson());
      checkGeoJsonPosition(od);
    });
  });


  unittest.group("obj-schema-GeoJsonProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildGeoJsonProperties();
      var od = new api.GeoJsonProperties.fromJson(o.toJson());
      checkGeoJsonProperties(od);
    });
  });


  unittest.group("obj-schema-Icon", () {
    unittest.test("to-json--from-json", () {
      var o = buildIcon();
      var od = new api.Icon.fromJson(o.toJson());
      checkIcon(od);
    });
  });


  unittest.group("obj-schema-IconStyle", () {
    unittest.test("to-json--from-json", () {
      var o = buildIconStyle();
      var od = new api.IconStyle.fromJson(o.toJson());
      checkIconStyle(od);
    });
  });


  unittest.group("obj-schema-IconsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildIconsListResponse();
      var od = new api.IconsListResponse.fromJson(o.toJson());
      checkIconsListResponse(od);
    });
  });


  unittest.group("obj-schema-LabelStyle", () {
    unittest.test("to-json--from-json", () {
      var o = buildLabelStyle();
      var od = new api.LabelStyle.fromJson(o.toJson());
      checkLabelStyle(od);
    });
  });


  unittest.group("obj-schema-LatLngBox", () {
    unittest.test("to-json--from-json", () {
      var o = buildLatLngBox();
      var od = new api.LatLngBox.fromJson(o.toJson());
      checkLatLngBox(od);
    });
  });


  unittest.group("obj-schema-Layer", () {
    unittest.test("to-json--from-json", () {
      var o = buildLayer();
      var od = new api.Layer.fromJson(o.toJson());
      checkLayer(od);
    });
  });


  unittest.group("obj-schema-LayersListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildLayersListResponse();
      var od = new api.LayersListResponse.fromJson(o.toJson());
      checkLayersListResponse(od);
    });
  });


  unittest.group("obj-schema-LineStyleStroke", () {
    unittest.test("to-json--from-json", () {
      var o = buildLineStyleStroke();
      var od = new api.LineStyleStroke.fromJson(o.toJson());
      checkLineStyleStroke(od);
    });
  });


  unittest.group("obj-schema-LineStyle", () {
    unittest.test("to-json--from-json", () {
      var o = buildLineStyle();
      var od = new api.LineStyle.fromJson(o.toJson());
      checkLineStyle(od);
    });
  });


  unittest.group("obj-schema-Map", () {
    unittest.test("to-json--from-json", () {
      var o = buildMap();
      var od = new api.Map.fromJson(o.toJson());
      checkMap(od);
    });
  });


  unittest.group("obj-schema-MapContents", () {
    unittest.test("to-json--from-json", () {
      var o = buildMapContents();
      var od = new api.MapContents.fromJson(o.toJson());
      checkMapContents(od);
    });
  });


  unittest.group("obj-schema-MapFolder", () {
    unittest.test("to-json--from-json", () {
      var o = buildMapFolder();
      var od = new api.MapFolder.fromJson(o.toJson());
      checkMapFolder(od);
    });
  });


  unittest.group("obj-schema-MapItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildMapItem();
      var od = new api.MapItem.fromJson(o.toJson());
      checkMapItem(od);
    });
  });


  unittest.group("obj-schema-MapKmlLink", () {
    unittest.test("to-json--from-json", () {
      var o = buildMapKmlLink();
      var od = new api.MapKmlLink.fromJson(o.toJson());
      checkMapKmlLink(od);
    });
  });


  unittest.group("obj-schema-MapLayer", () {
    unittest.test("to-json--from-json", () {
      var o = buildMapLayer();
      var od = new api.MapLayer.fromJson(o.toJson());
      checkMapLayer(od);
    });
  });


  unittest.group("obj-schema-MapsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildMapsListResponse();
      var od = new api.MapsListResponse.fromJson(o.toJson());
      checkMapsListResponse(od);
    });
  });


  unittest.group("obj-schema-Parent", () {
    unittest.test("to-json--from-json", () {
      var o = buildParent();
      var od = new api.Parent.fromJson(o.toJson());
      checkParent(od);
    });
  });


  unittest.group("obj-schema-ParentsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildParentsListResponse();
      var od = new api.ParentsListResponse.fromJson(o.toJson());
      checkParentsListResponse(od);
    });
  });


  unittest.group("obj-schema-PointStyle", () {
    unittest.test("to-json--from-json", () {
      var o = buildPointStyle();
      var od = new api.PointStyle.fromJson(o.toJson());
      checkPointStyle(od);
    });
  });


  unittest.group("obj-schema-PolygonStyle", () {
    unittest.test("to-json--from-json", () {
      var o = buildPolygonStyle();
      var od = new api.PolygonStyle.fromJson(o.toJson());
      checkPolygonStyle(od);
    });
  });


  unittest.group("obj-schema-ProcessResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildProcessResponse();
      var od = new api.ProcessResponse.fromJson(o.toJson());
      checkProcessResponse(od);
    });
  });


  unittest.group("obj-schema-Project", () {
    unittest.test("to-json--from-json", () {
      var o = buildProject();
      var od = new api.Project.fromJson(o.toJson());
      checkProject(od);
    });
  });


  unittest.group("obj-schema-ProjectsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildProjectsListResponse();
      var od = new api.ProjectsListResponse.fromJson(o.toJson());
      checkProjectsListResponse(od);
    });
  });


  unittest.group("obj-schema-PublishResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPublishResponse();
      var od = new api.PublishResponse.fromJson(o.toJson());
      checkPublishResponse(od);
    });
  });


  unittest.group("obj-schema-PublishedLayer", () {
    unittest.test("to-json--from-json", () {
      var o = buildPublishedLayer();
      var od = new api.PublishedLayer.fromJson(o.toJson());
      checkPublishedLayer(od);
    });
  });


  unittest.group("obj-schema-PublishedLayersListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPublishedLayersListResponse();
      var od = new api.PublishedLayersListResponse.fromJson(o.toJson());
      checkPublishedLayersListResponse(od);
    });
  });


  unittest.group("obj-schema-PublishedMap", () {
    unittest.test("to-json--from-json", () {
      var o = buildPublishedMap();
      var od = new api.PublishedMap.fromJson(o.toJson());
      checkPublishedMap(od);
    });
  });


  unittest.group("obj-schema-PublishedMapsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildPublishedMapsListResponse();
      var od = new api.PublishedMapsListResponse.fromJson(o.toJson());
      checkPublishedMapsListResponse(od);
    });
  });


  unittest.group("obj-schema-Raster", () {
    unittest.test("to-json--from-json", () {
      var o = buildRaster();
      var od = new api.Raster.fromJson(o.toJson());
      checkRaster(od);
    });
  });


  unittest.group("obj-schema-RasterCollection", () {
    unittest.test("to-json--from-json", () {
      var o = buildRasterCollection();
      var od = new api.RasterCollection.fromJson(o.toJson());
      checkRasterCollection(od);
    });
  });


  unittest.group("obj-schema-RasterCollectionsListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildRasterCollectionsListResponse();
      var od = new api.RasterCollectionsListResponse.fromJson(o.toJson());
      checkRasterCollectionsListResponse(od);
    });
  });


  unittest.group("obj-schema-RasterCollectionsRaster", () {
    unittest.test("to-json--from-json", () {
      var o = buildRasterCollectionsRaster();
      var od = new api.RasterCollectionsRaster.fromJson(o.toJson());
      checkRasterCollectionsRaster(od);
    });
  });


  unittest.group("obj-schema-RasterCollectionsRasterBatchDeleteRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRasterCollectionsRasterBatchDeleteRequest();
      var od = new api.RasterCollectionsRasterBatchDeleteRequest.fromJson(o.toJson());
      checkRasterCollectionsRasterBatchDeleteRequest(od);
    });
  });


  unittest.group("obj-schema-RasterCollectionsRastersBatchDeleteResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildRasterCollectionsRastersBatchDeleteResponse();
      var od = new api.RasterCollectionsRastersBatchDeleteResponse.fromJson(o.toJson());
      checkRasterCollectionsRastersBatchDeleteResponse(od);
    });
  });


  unittest.group("obj-schema-RasterCollectionsRastersBatchInsertRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildRasterCollectionsRastersBatchInsertRequest();
      var od = new api.RasterCollectionsRastersBatchInsertRequest.fromJson(o.toJson());
      checkRasterCollectionsRastersBatchInsertRequest(od);
    });
  });


  unittest.group("obj-schema-RasterCollectionsRastersBatchInsertResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildRasterCollectionsRastersBatchInsertResponse();
      var od = new api.RasterCollectionsRastersBatchInsertResponse.fromJson(o.toJson());
      checkRasterCollectionsRastersBatchInsertResponse(od);
    });
  });


  unittest.group("obj-schema-RasterCollectionsRastersListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildRasterCollectionsRastersListResponse();
      var od = new api.RasterCollectionsRastersListResponse.fromJson(o.toJson());
      checkRasterCollectionsRastersListResponse(od);
    });
  });


  unittest.group("obj-schema-RastersListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildRastersListResponse();
      var od = new api.RastersListResponse.fromJson(o.toJson());
      checkRastersListResponse(od);
    });
  });


  unittest.group("obj-schema-ScaledShape", () {
    unittest.test("to-json--from-json", () {
      var o = buildScaledShape();
      var od = new api.ScaledShape.fromJson(o.toJson());
      checkScaledShape(od);
    });
  });


  unittest.group("obj-schema-ScalingFunction", () {
    unittest.test("to-json--from-json", () {
      var o = buildScalingFunction();
      var od = new api.ScalingFunction.fromJson(o.toJson());
      checkScalingFunction(od);
    });
  });


  unittest.group("obj-schema-Schema", () {
    unittest.test("to-json--from-json", () {
      var o = buildSchema();
      var od = new api.Schema.fromJson(o.toJson());
      checkSchema(od);
    });
  });


  unittest.group("obj-schema-SizeRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildSizeRange();
      var od = new api.SizeRange.fromJson(o.toJson());
      checkSizeRange(od);
    });
  });


  unittest.group("obj-schema-Table", () {
    unittest.test("to-json--from-json", () {
      var o = buildTable();
      var od = new api.Table.fromJson(o.toJson());
      checkTable(od);
    });
  });


  unittest.group("obj-schema-TableColumn", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableColumn();
      var od = new api.TableColumn.fromJson(o.toJson());
      checkTableColumn(od);
    });
  });


  unittest.group("obj-schema-TablesListResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildTablesListResponse();
      var od = new api.TablesListResponse.fromJson(o.toJson());
      checkTablesListResponse(od);
    });
  });


  unittest.group("obj-schema-Tags", () {
    unittest.test("to-json--from-json", () {
      var o = buildTags();
      var od = new api.Tags.fromJson(o.toJson());
      checkTags(od);
    });
  });


  unittest.group("obj-schema-ValueRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildValueRange();
      var od = new api.ValueRange.fromJson(o.toJson());
      checkValueRange(od);
    });
  });


  unittest.group("obj-schema-VectorStyle", () {
    unittest.test("to-json--from-json", () {
      var o = buildVectorStyle();
      var od = new api.VectorStyle.fromJson(o.toJson());
      checkVectorStyle(od);
    });
  });


  unittest.group("obj-schema-ZoomLevels", () {
    unittest.test("to-json--from-json", () {
      var o = buildZoomLevels();
      var od = new api.ZoomLevels.fromJson(o.toJson());
      checkZoomLevels(od);
    });
  });


  unittest.group("resource-AssetsResourceApi", () {
    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.AssetsResourceApi res = new api.MapsengineApi(mock).assets;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("assets/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAsset());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_id).then(unittest.expectAsync(((api.Asset response) {
        checkAsset(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.AssetsResourceApi res = new api.MapsengineApi(mock).assets;
      var arg_bbox = "foo";
      var arg_createdAfter = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_createdBefore = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_creatorEmail = "foo";
      var arg_maxResults = 42;
      var arg_modifiedAfter = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_modifiedBefore = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_pageToken = "foo";
      var arg_projectId = "foo";
      var arg_role = "foo";
      var arg_search = "foo";
      var arg_tags = "foo";
      var arg_type = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("assets"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["bbox"].first, unittest.equals(arg_bbox));
        unittest.expect(core.DateTime.parse(queryMap["createdAfter"].first), unittest.equals(arg_createdAfter));
        unittest.expect(core.DateTime.parse(queryMap["createdBefore"].first), unittest.equals(arg_createdBefore));
        unittest.expect(queryMap["creatorEmail"].first, unittest.equals(arg_creatorEmail));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(core.DateTime.parse(queryMap["modifiedAfter"].first), unittest.equals(arg_modifiedAfter));
        unittest.expect(core.DateTime.parse(queryMap["modifiedBefore"].first), unittest.equals(arg_modifiedBefore));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(queryMap["role"].first, unittest.equals(arg_role));
        unittest.expect(queryMap["search"].first, unittest.equals(arg_search));
        unittest.expect(queryMap["tags"].first, unittest.equals(arg_tags));
        unittest.expect(queryMap["type"].first, unittest.equals(arg_type));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAssetsListResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(bbox: arg_bbox, createdAfter: arg_createdAfter, createdBefore: arg_createdBefore, creatorEmail: arg_creatorEmail, maxResults: arg_maxResults, modifiedAfter: arg_modifiedAfter, modifiedBefore: arg_modifiedBefore, pageToken: arg_pageToken, projectId: arg_projectId, role: arg_role, search: arg_search, tags: arg_tags, type: arg_type).then(unittest.expectAsync(((api.AssetsListResponse response) {
        checkAssetsListResponse(response);
      })));
    });

  });


  unittest.group("resource-AssetsParentsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.AssetsParentsResourceApi res = new api.MapsengineApi(mock).assets.parents;
      var arg_id = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("assets/"));
        pathOffset += 7;
        index = path.indexOf("/parents", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/parents"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildParentsListResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_id, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ParentsListResponse response) {
        checkParentsListResponse(response);
      })));
    });

  });


  unittest.group("resource-LayersResourceApi", () {
    unittest.test("method--cancelProcessing", () {

      var mock = new common_test.HttpServerMock();
      api.LayersResourceApi res = new api.MapsengineApi(mock).layers;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("layers/"));
        pathOffset += 7;
        index = path.indexOf("/cancelProcessing", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/cancelProcessing"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildProcessResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.cancelProcessing(arg_id).then(unittest.expectAsync(((api.ProcessResponse response) {
        checkProcessResponse(response);
      })));
    });

    unittest.test("method--create", () {

      var mock = new common_test.HttpServerMock();
      api.LayersResourceApi res = new api.MapsengineApi(mock).layers;
      var arg_request = buildLayer();
      var arg_process_1 = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Layer.fromJson(json);
        checkLayer(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("layers"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["process"].first, unittest.equals("$arg_process_1"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLayer());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, process_1: arg_process_1).then(unittest.expectAsync(((api.Layer response) {
        checkLayer(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.LayersResourceApi res = new api.MapsengineApi(mock).layers;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("layers/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_id).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.LayersResourceApi res = new api.MapsengineApi(mock).layers;
      var arg_id = "foo";
      var arg_version = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("layers/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["version"].first, unittest.equals(arg_version));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLayer());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_id, version: arg_version).then(unittest.expectAsync(((api.Layer response) {
        checkLayer(response);
      })));
    });

    unittest.test("method--getPublished", () {

      var mock = new common_test.HttpServerMock();
      api.LayersResourceApi res = new api.MapsengineApi(mock).layers;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("layers/"));
        pathOffset += 7;
        index = path.indexOf("/published", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/published"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPublishedLayer());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.getPublished(arg_id).then(unittest.expectAsync(((api.PublishedLayer response) {
        checkPublishedLayer(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.LayersResourceApi res = new api.MapsengineApi(mock).layers;
      var arg_bbox = "foo";
      var arg_createdAfter = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_createdBefore = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_creatorEmail = "foo";
      var arg_maxResults = 42;
      var arg_modifiedAfter = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_modifiedBefore = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_pageToken = "foo";
      var arg_processingStatus = "foo";
      var arg_projectId = "foo";
      var arg_role = "foo";
      var arg_search = "foo";
      var arg_tags = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("layers"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["bbox"].first, unittest.equals(arg_bbox));
        unittest.expect(core.DateTime.parse(queryMap["createdAfter"].first), unittest.equals(arg_createdAfter));
        unittest.expect(core.DateTime.parse(queryMap["createdBefore"].first), unittest.equals(arg_createdBefore));
        unittest.expect(queryMap["creatorEmail"].first, unittest.equals(arg_creatorEmail));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(core.DateTime.parse(queryMap["modifiedAfter"].first), unittest.equals(arg_modifiedAfter));
        unittest.expect(core.DateTime.parse(queryMap["modifiedBefore"].first), unittest.equals(arg_modifiedBefore));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["processingStatus"].first, unittest.equals(arg_processingStatus));
        unittest.expect(queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(queryMap["role"].first, unittest.equals(arg_role));
        unittest.expect(queryMap["search"].first, unittest.equals(arg_search));
        unittest.expect(queryMap["tags"].first, unittest.equals(arg_tags));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildLayersListResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(bbox: arg_bbox, createdAfter: arg_createdAfter, createdBefore: arg_createdBefore, creatorEmail: arg_creatorEmail, maxResults: arg_maxResults, modifiedAfter: arg_modifiedAfter, modifiedBefore: arg_modifiedBefore, pageToken: arg_pageToken, processingStatus: arg_processingStatus, projectId: arg_projectId, role: arg_role, search: arg_search, tags: arg_tags).then(unittest.expectAsync(((api.LayersListResponse response) {
        checkLayersListResponse(response);
      })));
    });

    unittest.test("method--listPublished", () {

      var mock = new common_test.HttpServerMock();
      api.LayersResourceApi res = new api.MapsengineApi(mock).layers;
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_projectId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("layers/published"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["projectId"].first, unittest.equals(arg_projectId));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPublishedLayersListResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.listPublished(maxResults: arg_maxResults, pageToken: arg_pageToken, projectId: arg_projectId).then(unittest.expectAsync(((api.PublishedLayersListResponse response) {
        checkPublishedLayersListResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.LayersResourceApi res = new api.MapsengineApi(mock).layers;
      var arg_request = buildLayer();
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Layer.fromJson(json);
        checkLayer(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("layers/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_id).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--process", () {

      var mock = new common_test.HttpServerMock();
      api.LayersResourceApi res = new api.MapsengineApi(mock).layers;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("layers/"));
        pathOffset += 7;
        index = path.indexOf("/process", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/process"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildProcessResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.process(arg_id).then(unittest.expectAsync(((api.ProcessResponse response) {
        checkProcessResponse(response);
      })));
    });

    unittest.test("method--publish", () {

      var mock = new common_test.HttpServerMock();
      api.LayersResourceApi res = new api.MapsengineApi(mock).layers;
      var arg_id = "foo";
      var arg_force = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("layers/"));
        pathOffset += 7;
        index = path.indexOf("/publish", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/publish"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["force"].first, unittest.equals("$arg_force"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPublishResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.publish(arg_id, force: arg_force).then(unittest.expectAsync(((api.PublishResponse response) {
        checkPublishResponse(response);
      })));
    });

    unittest.test("method--unpublish", () {

      var mock = new common_test.HttpServerMock();
      api.LayersResourceApi res = new api.MapsengineApi(mock).layers;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("layers/"));
        pathOffset += 7;
        index = path.indexOf("/unpublish", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/unpublish"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPublishResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.unpublish(arg_id).then(unittest.expectAsync(((api.PublishResponse response) {
        checkPublishResponse(response);
      })));
    });

  });


  unittest.group("resource-LayersParentsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.LayersParentsResourceApi res = new api.MapsengineApi(mock).layers.parents;
      var arg_id = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("layers/"));
        pathOffset += 7;
        index = path.indexOf("/parents", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/parents"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildParentsListResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_id, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ParentsListResponse response) {
        checkParentsListResponse(response);
      })));
    });

  });


  unittest.group("resource-MapsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new common_test.HttpServerMock();
      api.MapsResourceApi res = new api.MapsengineApi(mock).maps;
      var arg_request = buildMap();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Map.fromJson(json);
        checkMap(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 4), unittest.equals("maps"));
        pathOffset += 4;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMap());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.create(arg_request).then(unittest.expectAsync(((api.Map response) {
        checkMap(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.MapsResourceApi res = new api.MapsengineApi(mock).maps;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("maps/"));
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_id).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.MapsResourceApi res = new api.MapsengineApi(mock).maps;
      var arg_id = "foo";
      var arg_version = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("maps/"));
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["version"].first, unittest.equals(arg_version));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMap());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_id, version: arg_version).then(unittest.expectAsync(((api.Map response) {
        checkMap(response);
      })));
    });

    unittest.test("method--getPublished", () {

      var mock = new common_test.HttpServerMock();
      api.MapsResourceApi res = new api.MapsengineApi(mock).maps;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("maps/"));
        pathOffset += 5;
        index = path.indexOf("/published", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/published"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPublishedMap());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.getPublished(arg_id).then(unittest.expectAsync(((api.PublishedMap response) {
        checkPublishedMap(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.MapsResourceApi res = new api.MapsengineApi(mock).maps;
      var arg_bbox = "foo";
      var arg_createdAfter = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_createdBefore = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_creatorEmail = "foo";
      var arg_maxResults = 42;
      var arg_modifiedAfter = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_modifiedBefore = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_pageToken = "foo";
      var arg_processingStatus = "foo";
      var arg_projectId = "foo";
      var arg_role = "foo";
      var arg_search = "foo";
      var arg_tags = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 4), unittest.equals("maps"));
        pathOffset += 4;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["bbox"].first, unittest.equals(arg_bbox));
        unittest.expect(core.DateTime.parse(queryMap["createdAfter"].first), unittest.equals(arg_createdAfter));
        unittest.expect(core.DateTime.parse(queryMap["createdBefore"].first), unittest.equals(arg_createdBefore));
        unittest.expect(queryMap["creatorEmail"].first, unittest.equals(arg_creatorEmail));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(core.DateTime.parse(queryMap["modifiedAfter"].first), unittest.equals(arg_modifiedAfter));
        unittest.expect(core.DateTime.parse(queryMap["modifiedBefore"].first), unittest.equals(arg_modifiedBefore));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["processingStatus"].first, unittest.equals(arg_processingStatus));
        unittest.expect(queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(queryMap["role"].first, unittest.equals(arg_role));
        unittest.expect(queryMap["search"].first, unittest.equals(arg_search));
        unittest.expect(queryMap["tags"].first, unittest.equals(arg_tags));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildMapsListResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(bbox: arg_bbox, createdAfter: arg_createdAfter, createdBefore: arg_createdBefore, creatorEmail: arg_creatorEmail, maxResults: arg_maxResults, modifiedAfter: arg_modifiedAfter, modifiedBefore: arg_modifiedBefore, pageToken: arg_pageToken, processingStatus: arg_processingStatus, projectId: arg_projectId, role: arg_role, search: arg_search, tags: arg_tags).then(unittest.expectAsync(((api.MapsListResponse response) {
        checkMapsListResponse(response);
      })));
    });

    unittest.test("method--listPublished", () {

      var mock = new common_test.HttpServerMock();
      api.MapsResourceApi res = new api.MapsengineApi(mock).maps;
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      var arg_projectId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("maps/published"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["projectId"].first, unittest.equals(arg_projectId));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPublishedMapsListResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.listPublished(maxResults: arg_maxResults, pageToken: arg_pageToken, projectId: arg_projectId).then(unittest.expectAsync(((api.PublishedMapsListResponse response) {
        checkPublishedMapsListResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.MapsResourceApi res = new api.MapsengineApi(mock).maps;
      var arg_request = buildMap();
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Map.fromJson(json);
        checkMap(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("maps/"));
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_id).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--publish", () {

      var mock = new common_test.HttpServerMock();
      api.MapsResourceApi res = new api.MapsengineApi(mock).maps;
      var arg_id = "foo";
      var arg_force = true;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("maps/"));
        pathOffset += 5;
        index = path.indexOf("/publish", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/publish"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["force"].first, unittest.equals("$arg_force"));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPublishResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.publish(arg_id, force: arg_force).then(unittest.expectAsync(((api.PublishResponse response) {
        checkPublishResponse(response);
      })));
    });

    unittest.test("method--unpublish", () {

      var mock = new common_test.HttpServerMock();
      api.MapsResourceApi res = new api.MapsengineApi(mock).maps;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("maps/"));
        pathOffset += 5;
        index = path.indexOf("/unpublish", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/unpublish"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildPublishResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.unpublish(arg_id).then(unittest.expectAsync(((api.PublishResponse response) {
        checkPublishResponse(response);
      })));
    });

  });


  unittest.group("resource-ProjectsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.ProjectsResourceApi res = new api.MapsengineApi(mock).projects;
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("projects"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildProjectsListResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list().then(unittest.expectAsync(((api.ProjectsListResponse response) {
        checkProjectsListResponse(response);
      })));
    });

  });


  unittest.group("resource-ProjectsIconsResourceApi", () {
    unittest.test("method--create", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new common_test.HttpServerMock();
      api.ProjectsIconsResourceApi res = new api.MapsengineApi(mock).projects.icons;
      var arg_request = buildIcon();
      var arg_projectId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Icon.fromJson(json);
        checkIcon(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/icons", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/icons"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildIcon());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_projectId).then(unittest.expectAsync(((api.Icon response) {
        checkIcon(response);
      })));
    });

    unittest.test("method--get", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new common_test.HttpServerMock();
      api.ProjectsIconsResourceApi res = new api.MapsengineApi(mock).projects.icons;
      var arg_projectId = "foo";
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/icons/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/icons/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildIcon());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_projectId, arg_id).then(unittest.expectAsync(((api.Icon response) {
        checkIcon(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.ProjectsIconsResourceApi res = new api.MapsengineApi(mock).projects.icons;
      var arg_projectId = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("projects/"));
        pathOffset += 9;
        index = path.indexOf("/icons", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/icons"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildIconsListResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectId, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.IconsListResponse response) {
        checkIconsListResponse(response);
      })));
    });

  });


  unittest.group("resource-RasterCollectionsResourceApi", () {
    unittest.test("method--cancelProcessing", () {

      var mock = new common_test.HttpServerMock();
      api.RasterCollectionsResourceApi res = new api.MapsengineApi(mock).rasterCollections;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("rasterCollections/"));
        pathOffset += 18;
        index = path.indexOf("/cancelProcessing", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/cancelProcessing"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildProcessResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.cancelProcessing(arg_id).then(unittest.expectAsync(((api.ProcessResponse response) {
        checkProcessResponse(response);
      })));
    });

    unittest.test("method--create", () {

      var mock = new common_test.HttpServerMock();
      api.RasterCollectionsResourceApi res = new api.MapsengineApi(mock).rasterCollections;
      var arg_request = buildRasterCollection();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.RasterCollection.fromJson(json);
        checkRasterCollection(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("rasterCollections"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRasterCollection());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.create(arg_request).then(unittest.expectAsync(((api.RasterCollection response) {
        checkRasterCollection(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.RasterCollectionsResourceApi res = new api.MapsengineApi(mock).rasterCollections;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("rasterCollections/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_id).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.RasterCollectionsResourceApi res = new api.MapsengineApi(mock).rasterCollections;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("rasterCollections/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRasterCollection());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_id).then(unittest.expectAsync(((api.RasterCollection response) {
        checkRasterCollection(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.RasterCollectionsResourceApi res = new api.MapsengineApi(mock).rasterCollections;
      var arg_bbox = "foo";
      var arg_createdAfter = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_createdBefore = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_creatorEmail = "foo";
      var arg_maxResults = 42;
      var arg_modifiedAfter = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_modifiedBefore = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_pageToken = "foo";
      var arg_processingStatus = "foo";
      var arg_projectId = "foo";
      var arg_role = "foo";
      var arg_search = "foo";
      var arg_tags = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("rasterCollections"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["bbox"].first, unittest.equals(arg_bbox));
        unittest.expect(core.DateTime.parse(queryMap["createdAfter"].first), unittest.equals(arg_createdAfter));
        unittest.expect(core.DateTime.parse(queryMap["createdBefore"].first), unittest.equals(arg_createdBefore));
        unittest.expect(queryMap["creatorEmail"].first, unittest.equals(arg_creatorEmail));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(core.DateTime.parse(queryMap["modifiedAfter"].first), unittest.equals(arg_modifiedAfter));
        unittest.expect(core.DateTime.parse(queryMap["modifiedBefore"].first), unittest.equals(arg_modifiedBefore));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["processingStatus"].first, unittest.equals(arg_processingStatus));
        unittest.expect(queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(queryMap["role"].first, unittest.equals(arg_role));
        unittest.expect(queryMap["search"].first, unittest.equals(arg_search));
        unittest.expect(queryMap["tags"].first, unittest.equals(arg_tags));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRasterCollectionsListResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(bbox: arg_bbox, createdAfter: arg_createdAfter, createdBefore: arg_createdBefore, creatorEmail: arg_creatorEmail, maxResults: arg_maxResults, modifiedAfter: arg_modifiedAfter, modifiedBefore: arg_modifiedBefore, pageToken: arg_pageToken, processingStatus: arg_processingStatus, projectId: arg_projectId, role: arg_role, search: arg_search, tags: arg_tags).then(unittest.expectAsync(((api.RasterCollectionsListResponse response) {
        checkRasterCollectionsListResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.RasterCollectionsResourceApi res = new api.MapsengineApi(mock).rasterCollections;
      var arg_request = buildRasterCollection();
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.RasterCollection.fromJson(json);
        checkRasterCollection(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("rasterCollections/"));
        pathOffset += 18;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_id).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--process", () {

      var mock = new common_test.HttpServerMock();
      api.RasterCollectionsResourceApi res = new api.MapsengineApi(mock).rasterCollections;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("rasterCollections/"));
        pathOffset += 18;
        index = path.indexOf("/process", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/process"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildProcessResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.process(arg_id).then(unittest.expectAsync(((api.ProcessResponse response) {
        checkProcessResponse(response);
      })));
    });

  });


  unittest.group("resource-RasterCollectionsParentsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.RasterCollectionsParentsResourceApi res = new api.MapsengineApi(mock).rasterCollections.parents;
      var arg_id = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("rasterCollections/"));
        pathOffset += 18;
        index = path.indexOf("/parents", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/parents"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildParentsListResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_id, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ParentsListResponse response) {
        checkParentsListResponse(response);
      })));
    });

  });


  unittest.group("resource-RasterCollectionsRastersResourceApi", () {
    unittest.test("method--batchDelete", () {

      var mock = new common_test.HttpServerMock();
      api.RasterCollectionsRastersResourceApi res = new api.MapsengineApi(mock).rasterCollections.rasters;
      var arg_request = buildRasterCollectionsRasterBatchDeleteRequest();
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.RasterCollectionsRasterBatchDeleteRequest.fromJson(json);
        checkRasterCollectionsRasterBatchDeleteRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("rasterCollections/"));
        pathOffset += 18;
        index = path.indexOf("/rasters/batchDelete", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20), unittest.equals("/rasters/batchDelete"));
        pathOffset += 20;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRasterCollectionsRastersBatchDeleteResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.batchDelete(arg_request, arg_id).then(unittest.expectAsync(((api.RasterCollectionsRastersBatchDeleteResponse response) {
        checkRasterCollectionsRastersBatchDeleteResponse(response);
      })));
    });

    unittest.test("method--batchInsert", () {

      var mock = new common_test.HttpServerMock();
      api.RasterCollectionsRastersResourceApi res = new api.MapsengineApi(mock).rasterCollections.rasters;
      var arg_request = buildRasterCollectionsRastersBatchInsertRequest();
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.RasterCollectionsRastersBatchInsertRequest.fromJson(json);
        checkRasterCollectionsRastersBatchInsertRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("rasterCollections/"));
        pathOffset += 18;
        index = path.indexOf("/rasters/batchInsert", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20), unittest.equals("/rasters/batchInsert"));
        pathOffset += 20;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRasterCollectionsRastersBatchInsertResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.batchInsert(arg_request, arg_id).then(unittest.expectAsync(((api.RasterCollectionsRastersBatchInsertResponse response) {
        checkRasterCollectionsRastersBatchInsertResponse(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.RasterCollectionsRastersResourceApi res = new api.MapsengineApi(mock).rasterCollections.rasters;
      var arg_id = "foo";
      var arg_bbox = "foo";
      var arg_createdAfter = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_createdBefore = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_creatorEmail = "foo";
      var arg_maxResults = 42;
      var arg_modifiedAfter = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_modifiedBefore = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_pageToken = "foo";
      var arg_role = "foo";
      var arg_search = "foo";
      var arg_tags = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("rasterCollections/"));
        pathOffset += 18;
        index = path.indexOf("/rasters", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/rasters"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["bbox"].first, unittest.equals(arg_bbox));
        unittest.expect(core.DateTime.parse(queryMap["createdAfter"].first), unittest.equals(arg_createdAfter));
        unittest.expect(core.DateTime.parse(queryMap["createdBefore"].first), unittest.equals(arg_createdBefore));
        unittest.expect(queryMap["creatorEmail"].first, unittest.equals(arg_creatorEmail));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(core.DateTime.parse(queryMap["modifiedAfter"].first), unittest.equals(arg_modifiedAfter));
        unittest.expect(core.DateTime.parse(queryMap["modifiedBefore"].first), unittest.equals(arg_modifiedBefore));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["role"].first, unittest.equals(arg_role));
        unittest.expect(queryMap["search"].first, unittest.equals(arg_search));
        unittest.expect(queryMap["tags"].first, unittest.equals(arg_tags));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRasterCollectionsRastersListResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_id, bbox: arg_bbox, createdAfter: arg_createdAfter, createdBefore: arg_createdBefore, creatorEmail: arg_creatorEmail, maxResults: arg_maxResults, modifiedAfter: arg_modifiedAfter, modifiedBefore: arg_modifiedBefore, pageToken: arg_pageToken, role: arg_role, search: arg_search, tags: arg_tags).then(unittest.expectAsync(((api.RasterCollectionsRastersListResponse response) {
        checkRasterCollectionsRastersListResponse(response);
      })));
    });

  });


  unittest.group("resource-RastersResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.RastersResourceApi res = new api.MapsengineApi(mock).rasters;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("rasters/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_id).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.RastersResourceApi res = new api.MapsengineApi(mock).rasters;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("rasters/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRaster());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_id).then(unittest.expectAsync(((api.Raster response) {
        checkRaster(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.RastersResourceApi res = new api.MapsengineApi(mock).rasters;
      var arg_projectId = "foo";
      var arg_bbox = "foo";
      var arg_createdAfter = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_createdBefore = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_creatorEmail = "foo";
      var arg_maxResults = 42;
      var arg_modifiedAfter = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_modifiedBefore = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_pageToken = "foo";
      var arg_processingStatus = "foo";
      var arg_role = "foo";
      var arg_search = "foo";
      var arg_tags = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("rasters"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(queryMap["bbox"].first, unittest.equals(arg_bbox));
        unittest.expect(core.DateTime.parse(queryMap["createdAfter"].first), unittest.equals(arg_createdAfter));
        unittest.expect(core.DateTime.parse(queryMap["createdBefore"].first), unittest.equals(arg_createdBefore));
        unittest.expect(queryMap["creatorEmail"].first, unittest.equals(arg_creatorEmail));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(core.DateTime.parse(queryMap["modifiedAfter"].first), unittest.equals(arg_modifiedAfter));
        unittest.expect(core.DateTime.parse(queryMap["modifiedBefore"].first), unittest.equals(arg_modifiedBefore));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["processingStatus"].first, unittest.equals(arg_processingStatus));
        unittest.expect(queryMap["role"].first, unittest.equals(arg_role));
        unittest.expect(queryMap["search"].first, unittest.equals(arg_search));
        unittest.expect(queryMap["tags"].first, unittest.equals(arg_tags));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRastersListResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectId, bbox: arg_bbox, createdAfter: arg_createdAfter, createdBefore: arg_createdBefore, creatorEmail: arg_creatorEmail, maxResults: arg_maxResults, modifiedAfter: arg_modifiedAfter, modifiedBefore: arg_modifiedBefore, pageToken: arg_pageToken, processingStatus: arg_processingStatus, role: arg_role, search: arg_search, tags: arg_tags).then(unittest.expectAsync(((api.RastersListResponse response) {
        checkRastersListResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.RastersResourceApi res = new api.MapsengineApi(mock).rasters;
      var arg_request = buildRaster();
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Raster.fromJson(json);
        checkRaster(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("rasters/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_id).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--process", () {

      var mock = new common_test.HttpServerMock();
      api.RastersResourceApi res = new api.MapsengineApi(mock).rasters;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("rasters/"));
        pathOffset += 8;
        index = path.indexOf("/process", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/process"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildProcessResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.process(arg_id).then(unittest.expectAsync(((api.ProcessResponse response) {
        checkProcessResponse(response);
      })));
    });

    unittest.test("method--upload", () {

      var mock = new common_test.HttpServerMock();
      api.RastersResourceApi res = new api.MapsengineApi(mock).rasters;
      var arg_request = buildRaster();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Raster.fromJson(json);
        checkRaster(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("rasters/upload"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildRaster());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.upload(arg_request).then(unittest.expectAsync(((api.Raster response) {
        checkRaster(response);
      })));
    });

  });


  unittest.group("resource-RastersFilesResourceApi", () {
    unittest.test("method--insert", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new common_test.HttpServerMock();
      api.RastersFilesResourceApi res = new api.MapsengineApi(mock).rasters.files;
      var arg_id = "foo";
      var arg_filename = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("rasters/"));
        pathOffset += 8;
        index = path.indexOf("/files", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/files"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filename"].first, unittest.equals(arg_filename));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_id, arg_filename).then(unittest.expectAsync((_) {}));
    });

  });


  unittest.group("resource-RastersParentsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.RastersParentsResourceApi res = new api.MapsengineApi(mock).rasters.parents;
      var arg_id = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("rasters/"));
        pathOffset += 8;
        index = path.indexOf("/parents", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/parents"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildParentsListResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_id, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ParentsListResponse response) {
        checkParentsListResponse(response);
      })));
    });

  });


  unittest.group("resource-TablesResourceApi", () {
    unittest.test("method--create", () {

      var mock = new common_test.HttpServerMock();
      api.TablesResourceApi res = new api.MapsengineApi(mock).tables;
      var arg_request = buildTable();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Table.fromJson(json);
        checkTable(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("tables"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTable());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.create(arg_request).then(unittest.expectAsync(((api.Table response) {
        checkTable(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.TablesResourceApi res = new api.MapsengineApi(mock).tables;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("tables/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_id).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.TablesResourceApi res = new api.MapsengineApi(mock).tables;
      var arg_id = "foo";
      var arg_version = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("tables/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["version"].first, unittest.equals(arg_version));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTable());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_id, version: arg_version).then(unittest.expectAsync(((api.Table response) {
        checkTable(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.TablesResourceApi res = new api.MapsengineApi(mock).tables;
      var arg_bbox = "foo";
      var arg_createdAfter = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_createdBefore = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_creatorEmail = "foo";
      var arg_maxResults = 42;
      var arg_modifiedAfter = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_modifiedBefore = core.DateTime.parse("2002-02-27T14:01:02");
      var arg_pageToken = "foo";
      var arg_processingStatus = "foo";
      var arg_projectId = "foo";
      var arg_role = "foo";
      var arg_search = "foo";
      var arg_tags = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("tables"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["bbox"].first, unittest.equals(arg_bbox));
        unittest.expect(core.DateTime.parse(queryMap["createdAfter"].first), unittest.equals(arg_createdAfter));
        unittest.expect(core.DateTime.parse(queryMap["createdBefore"].first), unittest.equals(arg_createdBefore));
        unittest.expect(queryMap["creatorEmail"].first, unittest.equals(arg_creatorEmail));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(core.DateTime.parse(queryMap["modifiedAfter"].first), unittest.equals(arg_modifiedAfter));
        unittest.expect(core.DateTime.parse(queryMap["modifiedBefore"].first), unittest.equals(arg_modifiedBefore));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["processingStatus"].first, unittest.equals(arg_processingStatus));
        unittest.expect(queryMap["projectId"].first, unittest.equals(arg_projectId));
        unittest.expect(queryMap["role"].first, unittest.equals(arg_role));
        unittest.expect(queryMap["search"].first, unittest.equals(arg_search));
        unittest.expect(queryMap["tags"].first, unittest.equals(arg_tags));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTablesListResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(bbox: arg_bbox, createdAfter: arg_createdAfter, createdBefore: arg_createdBefore, creatorEmail: arg_creatorEmail, maxResults: arg_maxResults, modifiedAfter: arg_modifiedAfter, modifiedBefore: arg_modifiedBefore, pageToken: arg_pageToken, processingStatus: arg_processingStatus, projectId: arg_projectId, role: arg_role, search: arg_search, tags: arg_tags).then(unittest.expectAsync(((api.TablesListResponse response) {
        checkTablesListResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.TablesResourceApi res = new api.MapsengineApi(mock).tables;
      var arg_request = buildTable();
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Table.fromJson(json);
        checkTable(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("tables/"));
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_id).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--process", () {

      var mock = new common_test.HttpServerMock();
      api.TablesResourceApi res = new api.MapsengineApi(mock).tables;
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("tables/"));
        pathOffset += 7;
        index = path.indexOf("/process", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/process"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildProcessResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.process(arg_id).then(unittest.expectAsync(((api.ProcessResponse response) {
        checkProcessResponse(response);
      })));
    });

    unittest.test("method--upload", () {

      var mock = new common_test.HttpServerMock();
      api.TablesResourceApi res = new api.MapsengineApi(mock).tables;
      var arg_request = buildTable();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Table.fromJson(json);
        checkTable(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 13), unittest.equals("tables/upload"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildTable());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.upload(arg_request).then(unittest.expectAsync(((api.Table response) {
        checkTable(response);
      })));
    });

  });


  unittest.group("resource-TablesFeaturesResourceApi", () {
    unittest.test("method--batchDelete", () {

      var mock = new common_test.HttpServerMock();
      api.TablesFeaturesResourceApi res = new api.MapsengineApi(mock).tables.features;
      var arg_request = buildFeaturesBatchDeleteRequest();
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.FeaturesBatchDeleteRequest.fromJson(json);
        checkFeaturesBatchDeleteRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("tables/"));
        pathOffset += 7;
        index = path.indexOf("/features/batchDelete", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("/features/batchDelete"));
        pathOffset += 21;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.batchDelete(arg_request, arg_id).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--batchInsert", () {

      var mock = new common_test.HttpServerMock();
      api.TablesFeaturesResourceApi res = new api.MapsengineApi(mock).tables.features;
      var arg_request = buildFeaturesBatchInsertRequest();
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.FeaturesBatchInsertRequest.fromJson(json);
        checkFeaturesBatchInsertRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("tables/"));
        pathOffset += 7;
        index = path.indexOf("/features/batchInsert", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("/features/batchInsert"));
        pathOffset += 21;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.batchInsert(arg_request, arg_id).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--batchPatch", () {

      var mock = new common_test.HttpServerMock();
      api.TablesFeaturesResourceApi res = new api.MapsengineApi(mock).tables.features;
      var arg_request = buildFeaturesBatchPatchRequest();
      var arg_id = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.FeaturesBatchPatchRequest.fromJson(json);
        checkFeaturesBatchPatchRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("tables/"));
        pathOffset += 7;
        index = path.indexOf("/features/batchPatch", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 20), unittest.equals("/features/batchPatch"));
        pathOffset += 20;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.batchPatch(arg_request, arg_id).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.TablesFeaturesResourceApi res = new api.MapsengineApi(mock).tables.features;
      var arg_tableId = "foo";
      var arg_id = "foo";
      var arg_select = "foo";
      var arg_version = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("tables/"));
        pathOffset += 7;
        index = path.indexOf("/features/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_tableId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10), unittest.equals("/features/"));
        pathOffset += 10;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_id"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["select"].first, unittest.equals(arg_select));
        unittest.expect(queryMap["version"].first, unittest.equals(arg_version));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildFeature());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_tableId, arg_id, select: arg_select, version: arg_version).then(unittest.expectAsync(((api.Feature response) {
        checkFeature(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.TablesFeaturesResourceApi res = new api.MapsengineApi(mock).tables.features;
      var arg_id = "foo";
      var arg_include = "foo";
      var arg_intersects = "foo";
      var arg_limit = 42;
      var arg_maxResults = 42;
      var arg_orderBy = "foo";
      var arg_pageToken = "foo";
      var arg_select = "foo";
      var arg_version = "foo";
      var arg_where = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("tables/"));
        pathOffset += 7;
        index = path.indexOf("/features", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/features"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["include"].first, unittest.equals(arg_include));
        unittest.expect(queryMap["intersects"].first, unittest.equals(arg_intersects));
        unittest.expect(core.int.parse(queryMap["limit"].first), unittest.equals(arg_limit));
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["orderBy"].first, unittest.equals(arg_orderBy));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["select"].first, unittest.equals(arg_select));
        unittest.expect(queryMap["version"].first, unittest.equals(arg_version));
        unittest.expect(queryMap["where"].first, unittest.equals(arg_where));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildFeaturesListResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_id, include: arg_include, intersects: arg_intersects, limit: arg_limit, maxResults: arg_maxResults, orderBy: arg_orderBy, pageToken: arg_pageToken, select: arg_select, version: arg_version, where: arg_where).then(unittest.expectAsync(((api.FeaturesListResponse response) {
        checkFeaturesListResponse(response);
      })));
    });

  });


  unittest.group("resource-TablesFilesResourceApi", () {
    unittest.test("method--insert", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new common_test.HttpServerMock();
      api.TablesFilesResourceApi res = new api.MapsengineApi(mock).tables.files;
      var arg_id = "foo";
      var arg_filename = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("tables/"));
        pathOffset += 7;
        index = path.indexOf("/files", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/files"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["filename"].first, unittest.equals(arg_filename));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.insert(arg_id, arg_filename).then(unittest.expectAsync((_) {}));
    });

  });


  unittest.group("resource-TablesParentsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.TablesParentsResourceApi res = new api.MapsengineApi(mock).tables.parents;
      var arg_id = "foo";
      var arg_maxResults = 42;
      var arg_pageToken = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/mapsengine/v1/"));
        pathOffset += 15;
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("tables/"));
        pathOffset += 7;
        index = path.indexOf("/parents", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_id"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("/parents"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
        addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);
        parseBool(n) {
          if (n == "true") return true;
          if (n == "false") return false;
          if (n == null) return null;
          throw new core.ArgumentError("Invalid boolean: $n");
        }
        if (query.length > 0) {
          for (var part in query.split("&")) {
            var keyvalue = part.split("=");
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["maxResults"].first), unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildParentsListResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_id, maxResults: arg_maxResults, pageToken: arg_pageToken).then(unittest.expectAsync(((api.ParentsListResponse response) {
        checkParentsListResponse(response);
      })));
    });

  });


}

