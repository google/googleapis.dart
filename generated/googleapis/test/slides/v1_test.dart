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

import 'package:googleapis/slides/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAffineTransform = 0;
api.AffineTransform buildAffineTransform() {
  final o = api.AffineTransform();
  buildCounterAffineTransform++;
  if (buildCounterAffineTransform < 3) {
    o.scaleX = 42.0;
    o.scaleY = 42.0;
    o.shearX = 42.0;
    o.shearY = 42.0;
    o.translateX = 42.0;
    o.translateY = 42.0;
    o.unit = 'foo';
  }
  buildCounterAffineTransform--;
  return o;
}

void checkAffineTransform(api.AffineTransform o) {
  buildCounterAffineTransform++;
  if (buildCounterAffineTransform < 3) {
    unittest.expect(
      o.scaleX!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.scaleY!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.shearX!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.shearY!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.translateX!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.translateY!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
  }
  buildCounterAffineTransform--;
}

core.int buildCounterAutoText = 0;
api.AutoText buildAutoText() {
  final o = api.AutoText();
  buildCounterAutoText++;
  if (buildCounterAutoText < 3) {
    o.content = 'foo';
    o.style = buildTextStyle();
    o.type = 'foo';
  }
  buildCounterAutoText--;
  return o;
}

void checkAutoText(api.AutoText o) {
  buildCounterAutoText++;
  if (buildCounterAutoText < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkTextStyle(o.style!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterAutoText--;
}

core.int buildCounterAutofit = 0;
api.Autofit buildAutofit() {
  final o = api.Autofit();
  buildCounterAutofit++;
  if (buildCounterAutofit < 3) {
    o.autofitType = 'foo';
    o.fontScale = 42.0;
    o.lineSpacingReduction = 42.0;
  }
  buildCounterAutofit--;
  return o;
}

void checkAutofit(api.Autofit o) {
  buildCounterAutofit++;
  if (buildCounterAutofit < 3) {
    unittest.expect(
      o.autofitType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fontScale!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.lineSpacingReduction!,
      unittest.equals(42.0),
    );
  }
  buildCounterAutofit--;
}

core.List<api.Request> buildUnnamed2613() => [
      buildRequest(),
      buildRequest(),
    ];

void checkUnnamed2613(core.List<api.Request> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRequest(o[0]);
  checkRequest(o[1]);
}

core.int buildCounterBatchUpdatePresentationRequest = 0;
api.BatchUpdatePresentationRequest buildBatchUpdatePresentationRequest() {
  final o = api.BatchUpdatePresentationRequest();
  buildCounterBatchUpdatePresentationRequest++;
  if (buildCounterBatchUpdatePresentationRequest < 3) {
    o.requests = buildUnnamed2613();
    o.writeControl = buildWriteControl();
  }
  buildCounterBatchUpdatePresentationRequest--;
  return o;
}

void checkBatchUpdatePresentationRequest(api.BatchUpdatePresentationRequest o) {
  buildCounterBatchUpdatePresentationRequest++;
  if (buildCounterBatchUpdatePresentationRequest < 3) {
    checkUnnamed2613(o.requests!);
    checkWriteControl(o.writeControl!);
  }
  buildCounterBatchUpdatePresentationRequest--;
}

core.List<api.Response> buildUnnamed2614() => [
      buildResponse(),
      buildResponse(),
    ];

void checkUnnamed2614(core.List<api.Response> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResponse(o[0]);
  checkResponse(o[1]);
}

core.int buildCounterBatchUpdatePresentationResponse = 0;
api.BatchUpdatePresentationResponse buildBatchUpdatePresentationResponse() {
  final o = api.BatchUpdatePresentationResponse();
  buildCounterBatchUpdatePresentationResponse++;
  if (buildCounterBatchUpdatePresentationResponse < 3) {
    o.presentationId = 'foo';
    o.replies = buildUnnamed2614();
    o.writeControl = buildWriteControl();
  }
  buildCounterBatchUpdatePresentationResponse--;
  return o;
}

void checkBatchUpdatePresentationResponse(
    api.BatchUpdatePresentationResponse o) {
  buildCounterBatchUpdatePresentationResponse++;
  if (buildCounterBatchUpdatePresentationResponse < 3) {
    unittest.expect(
      o.presentationId!,
      unittest.equals('foo'),
    );
    checkUnnamed2614(o.replies!);
    checkWriteControl(o.writeControl!);
  }
  buildCounterBatchUpdatePresentationResponse--;
}

core.int buildCounterBullet = 0;
api.Bullet buildBullet() {
  final o = api.Bullet();
  buildCounterBullet++;
  if (buildCounterBullet < 3) {
    o.bulletStyle = buildTextStyle();
    o.glyph = 'foo';
    o.listId = 'foo';
    o.nestingLevel = 42;
  }
  buildCounterBullet--;
  return o;
}

void checkBullet(api.Bullet o) {
  buildCounterBullet++;
  if (buildCounterBullet < 3) {
    checkTextStyle(o.bulletStyle!);
    unittest.expect(
      o.glyph!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.listId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nestingLevel!,
      unittest.equals(42),
    );
  }
  buildCounterBullet--;
}

core.List<api.ThemeColorPair> buildUnnamed2615() => [
      buildThemeColorPair(),
      buildThemeColorPair(),
    ];

void checkUnnamed2615(core.List<api.ThemeColorPair> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkThemeColorPair(o[0]);
  checkThemeColorPair(o[1]);
}

core.int buildCounterColorScheme = 0;
api.ColorScheme buildColorScheme() {
  final o = api.ColorScheme();
  buildCounterColorScheme++;
  if (buildCounterColorScheme < 3) {
    o.colors = buildUnnamed2615();
  }
  buildCounterColorScheme--;
  return o;
}

void checkColorScheme(api.ColorScheme o) {
  buildCounterColorScheme++;
  if (buildCounterColorScheme < 3) {
    checkUnnamed2615(o.colors!);
  }
  buildCounterColorScheme--;
}

core.int buildCounterColorStop = 0;
api.ColorStop buildColorStop() {
  final o = api.ColorStop();
  buildCounterColorStop++;
  if (buildCounterColorStop < 3) {
    o.alpha = 42.0;
    o.color = buildOpaqueColor();
    o.position = 42.0;
  }
  buildCounterColorStop--;
  return o;
}

void checkColorStop(api.ColorStop o) {
  buildCounterColorStop++;
  if (buildCounterColorStop < 3) {
    unittest.expect(
      o.alpha!,
      unittest.equals(42.0),
    );
    checkOpaqueColor(o.color!);
    unittest.expect(
      o.position!,
      unittest.equals(42.0),
    );
  }
  buildCounterColorStop--;
}

core.int buildCounterCreateImageRequest = 0;
api.CreateImageRequest buildCreateImageRequest() {
  final o = api.CreateImageRequest();
  buildCounterCreateImageRequest++;
  if (buildCounterCreateImageRequest < 3) {
    o.elementProperties = buildPageElementProperties();
    o.objectId = 'foo';
    o.url = 'foo';
  }
  buildCounterCreateImageRequest--;
  return o;
}

void checkCreateImageRequest(api.CreateImageRequest o) {
  buildCounterCreateImageRequest++;
  if (buildCounterCreateImageRequest < 3) {
    checkPageElementProperties(o.elementProperties!);
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateImageRequest--;
}

core.int buildCounterCreateImageResponse = 0;
api.CreateImageResponse buildCreateImageResponse() {
  final o = api.CreateImageResponse();
  buildCounterCreateImageResponse++;
  if (buildCounterCreateImageResponse < 3) {
    o.objectId = 'foo';
  }
  buildCounterCreateImageResponse--;
  return o;
}

void checkCreateImageResponse(api.CreateImageResponse o) {
  buildCounterCreateImageResponse++;
  if (buildCounterCreateImageResponse < 3) {
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateImageResponse--;
}

core.int buildCounterCreateLineRequest = 0;
api.CreateLineRequest buildCreateLineRequest() {
  final o = api.CreateLineRequest();
  buildCounterCreateLineRequest++;
  if (buildCounterCreateLineRequest < 3) {
    o.category = 'foo';
    o.elementProperties = buildPageElementProperties();
    o.lineCategory = 'foo';
    o.objectId = 'foo';
  }
  buildCounterCreateLineRequest--;
  return o;
}

void checkCreateLineRequest(api.CreateLineRequest o) {
  buildCounterCreateLineRequest++;
  if (buildCounterCreateLineRequest < 3) {
    unittest.expect(
      o.category!,
      unittest.equals('foo'),
    );
    checkPageElementProperties(o.elementProperties!);
    unittest.expect(
      o.lineCategory!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateLineRequest--;
}

core.int buildCounterCreateLineResponse = 0;
api.CreateLineResponse buildCreateLineResponse() {
  final o = api.CreateLineResponse();
  buildCounterCreateLineResponse++;
  if (buildCounterCreateLineResponse < 3) {
    o.objectId = 'foo';
  }
  buildCounterCreateLineResponse--;
  return o;
}

void checkCreateLineResponse(api.CreateLineResponse o) {
  buildCounterCreateLineResponse++;
  if (buildCounterCreateLineResponse < 3) {
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateLineResponse--;
}

core.int buildCounterCreateParagraphBulletsRequest = 0;
api.CreateParagraphBulletsRequest buildCreateParagraphBulletsRequest() {
  final o = api.CreateParagraphBulletsRequest();
  buildCounterCreateParagraphBulletsRequest++;
  if (buildCounterCreateParagraphBulletsRequest < 3) {
    o.bulletPreset = 'foo';
    o.cellLocation = buildTableCellLocation();
    o.objectId = 'foo';
    o.textRange = buildRange();
  }
  buildCounterCreateParagraphBulletsRequest--;
  return o;
}

void checkCreateParagraphBulletsRequest(api.CreateParagraphBulletsRequest o) {
  buildCounterCreateParagraphBulletsRequest++;
  if (buildCounterCreateParagraphBulletsRequest < 3) {
    unittest.expect(
      o.bulletPreset!,
      unittest.equals('foo'),
    );
    checkTableCellLocation(o.cellLocation!);
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    checkRange(o.textRange!);
  }
  buildCounterCreateParagraphBulletsRequest--;
}

core.int buildCounterCreateShapeRequest = 0;
api.CreateShapeRequest buildCreateShapeRequest() {
  final o = api.CreateShapeRequest();
  buildCounterCreateShapeRequest++;
  if (buildCounterCreateShapeRequest < 3) {
    o.elementProperties = buildPageElementProperties();
    o.objectId = 'foo';
    o.shapeType = 'foo';
  }
  buildCounterCreateShapeRequest--;
  return o;
}

void checkCreateShapeRequest(api.CreateShapeRequest o) {
  buildCounterCreateShapeRequest++;
  if (buildCounterCreateShapeRequest < 3) {
    checkPageElementProperties(o.elementProperties!);
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shapeType!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateShapeRequest--;
}

core.int buildCounterCreateShapeResponse = 0;
api.CreateShapeResponse buildCreateShapeResponse() {
  final o = api.CreateShapeResponse();
  buildCounterCreateShapeResponse++;
  if (buildCounterCreateShapeResponse < 3) {
    o.objectId = 'foo';
  }
  buildCounterCreateShapeResponse--;
  return o;
}

void checkCreateShapeResponse(api.CreateShapeResponse o) {
  buildCounterCreateShapeResponse++;
  if (buildCounterCreateShapeResponse < 3) {
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateShapeResponse--;
}

core.int buildCounterCreateSheetsChartRequest = 0;
api.CreateSheetsChartRequest buildCreateSheetsChartRequest() {
  final o = api.CreateSheetsChartRequest();
  buildCounterCreateSheetsChartRequest++;
  if (buildCounterCreateSheetsChartRequest < 3) {
    o.chartId = 42;
    o.elementProperties = buildPageElementProperties();
    o.linkingMode = 'foo';
    o.objectId = 'foo';
    o.spreadsheetId = 'foo';
  }
  buildCounterCreateSheetsChartRequest--;
  return o;
}

void checkCreateSheetsChartRequest(api.CreateSheetsChartRequest o) {
  buildCounterCreateSheetsChartRequest++;
  if (buildCounterCreateSheetsChartRequest < 3) {
    unittest.expect(
      o.chartId!,
      unittest.equals(42),
    );
    checkPageElementProperties(o.elementProperties!);
    unittest.expect(
      o.linkingMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.spreadsheetId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateSheetsChartRequest--;
}

core.int buildCounterCreateSheetsChartResponse = 0;
api.CreateSheetsChartResponse buildCreateSheetsChartResponse() {
  final o = api.CreateSheetsChartResponse();
  buildCounterCreateSheetsChartResponse++;
  if (buildCounterCreateSheetsChartResponse < 3) {
    o.objectId = 'foo';
  }
  buildCounterCreateSheetsChartResponse--;
  return o;
}

void checkCreateSheetsChartResponse(api.CreateSheetsChartResponse o) {
  buildCounterCreateSheetsChartResponse++;
  if (buildCounterCreateSheetsChartResponse < 3) {
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateSheetsChartResponse--;
}

core.List<api.LayoutPlaceholderIdMapping> buildUnnamed2616() => [
      buildLayoutPlaceholderIdMapping(),
      buildLayoutPlaceholderIdMapping(),
    ];

void checkUnnamed2616(core.List<api.LayoutPlaceholderIdMapping> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLayoutPlaceholderIdMapping(o[0]);
  checkLayoutPlaceholderIdMapping(o[1]);
}

core.int buildCounterCreateSlideRequest = 0;
api.CreateSlideRequest buildCreateSlideRequest() {
  final o = api.CreateSlideRequest();
  buildCounterCreateSlideRequest++;
  if (buildCounterCreateSlideRequest < 3) {
    o.insertionIndex = 42;
    o.objectId = 'foo';
    o.placeholderIdMappings = buildUnnamed2616();
    o.slideLayoutReference = buildLayoutReference();
  }
  buildCounterCreateSlideRequest--;
  return o;
}

void checkCreateSlideRequest(api.CreateSlideRequest o) {
  buildCounterCreateSlideRequest++;
  if (buildCounterCreateSlideRequest < 3) {
    unittest.expect(
      o.insertionIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    checkUnnamed2616(o.placeholderIdMappings!);
    checkLayoutReference(o.slideLayoutReference!);
  }
  buildCounterCreateSlideRequest--;
}

core.int buildCounterCreateSlideResponse = 0;
api.CreateSlideResponse buildCreateSlideResponse() {
  final o = api.CreateSlideResponse();
  buildCounterCreateSlideResponse++;
  if (buildCounterCreateSlideResponse < 3) {
    o.objectId = 'foo';
  }
  buildCounterCreateSlideResponse--;
  return o;
}

void checkCreateSlideResponse(api.CreateSlideResponse o) {
  buildCounterCreateSlideResponse++;
  if (buildCounterCreateSlideResponse < 3) {
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateSlideResponse--;
}

core.int buildCounterCreateTableRequest = 0;
api.CreateTableRequest buildCreateTableRequest() {
  final o = api.CreateTableRequest();
  buildCounterCreateTableRequest++;
  if (buildCounterCreateTableRequest < 3) {
    o.columns = 42;
    o.elementProperties = buildPageElementProperties();
    o.objectId = 'foo';
    o.rows = 42;
  }
  buildCounterCreateTableRequest--;
  return o;
}

void checkCreateTableRequest(api.CreateTableRequest o) {
  buildCounterCreateTableRequest++;
  if (buildCounterCreateTableRequest < 3) {
    unittest.expect(
      o.columns!,
      unittest.equals(42),
    );
    checkPageElementProperties(o.elementProperties!);
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rows!,
      unittest.equals(42),
    );
  }
  buildCounterCreateTableRequest--;
}

core.int buildCounterCreateTableResponse = 0;
api.CreateTableResponse buildCreateTableResponse() {
  final o = api.CreateTableResponse();
  buildCounterCreateTableResponse++;
  if (buildCounterCreateTableResponse < 3) {
    o.objectId = 'foo';
  }
  buildCounterCreateTableResponse--;
  return o;
}

void checkCreateTableResponse(api.CreateTableResponse o) {
  buildCounterCreateTableResponse++;
  if (buildCounterCreateTableResponse < 3) {
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateTableResponse--;
}

core.int buildCounterCreateVideoRequest = 0;
api.CreateVideoRequest buildCreateVideoRequest() {
  final o = api.CreateVideoRequest();
  buildCounterCreateVideoRequest++;
  if (buildCounterCreateVideoRequest < 3) {
    o.elementProperties = buildPageElementProperties();
    o.id = 'foo';
    o.objectId = 'foo';
    o.source = 'foo';
  }
  buildCounterCreateVideoRequest--;
  return o;
}

void checkCreateVideoRequest(api.CreateVideoRequest o) {
  buildCounterCreateVideoRequest++;
  if (buildCounterCreateVideoRequest < 3) {
    checkPageElementProperties(o.elementProperties!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.source!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateVideoRequest--;
}

core.int buildCounterCreateVideoResponse = 0;
api.CreateVideoResponse buildCreateVideoResponse() {
  final o = api.CreateVideoResponse();
  buildCounterCreateVideoResponse++;
  if (buildCounterCreateVideoResponse < 3) {
    o.objectId = 'foo';
  }
  buildCounterCreateVideoResponse--;
  return o;
}

void checkCreateVideoResponse(api.CreateVideoResponse o) {
  buildCounterCreateVideoResponse++;
  if (buildCounterCreateVideoResponse < 3) {
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateVideoResponse--;
}

core.int buildCounterCropProperties = 0;
api.CropProperties buildCropProperties() {
  final o = api.CropProperties();
  buildCounterCropProperties++;
  if (buildCounterCropProperties < 3) {
    o.angle = 42.0;
    o.bottomOffset = 42.0;
    o.leftOffset = 42.0;
    o.rightOffset = 42.0;
    o.topOffset = 42.0;
  }
  buildCounterCropProperties--;
  return o;
}

void checkCropProperties(api.CropProperties o) {
  buildCounterCropProperties++;
  if (buildCounterCropProperties < 3) {
    unittest.expect(
      o.angle!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.bottomOffset!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.leftOffset!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.rightOffset!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.topOffset!,
      unittest.equals(42.0),
    );
  }
  buildCounterCropProperties--;
}

core.int buildCounterDeleteObjectRequest = 0;
api.DeleteObjectRequest buildDeleteObjectRequest() {
  final o = api.DeleteObjectRequest();
  buildCounterDeleteObjectRequest++;
  if (buildCounterDeleteObjectRequest < 3) {
    o.objectId = 'foo';
  }
  buildCounterDeleteObjectRequest--;
  return o;
}

void checkDeleteObjectRequest(api.DeleteObjectRequest o) {
  buildCounterDeleteObjectRequest++;
  if (buildCounterDeleteObjectRequest < 3) {
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeleteObjectRequest--;
}

core.int buildCounterDeleteParagraphBulletsRequest = 0;
api.DeleteParagraphBulletsRequest buildDeleteParagraphBulletsRequest() {
  final o = api.DeleteParagraphBulletsRequest();
  buildCounterDeleteParagraphBulletsRequest++;
  if (buildCounterDeleteParagraphBulletsRequest < 3) {
    o.cellLocation = buildTableCellLocation();
    o.objectId = 'foo';
    o.textRange = buildRange();
  }
  buildCounterDeleteParagraphBulletsRequest--;
  return o;
}

void checkDeleteParagraphBulletsRequest(api.DeleteParagraphBulletsRequest o) {
  buildCounterDeleteParagraphBulletsRequest++;
  if (buildCounterDeleteParagraphBulletsRequest < 3) {
    checkTableCellLocation(o.cellLocation!);
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    checkRange(o.textRange!);
  }
  buildCounterDeleteParagraphBulletsRequest--;
}

core.int buildCounterDeleteTableColumnRequest = 0;
api.DeleteTableColumnRequest buildDeleteTableColumnRequest() {
  final o = api.DeleteTableColumnRequest();
  buildCounterDeleteTableColumnRequest++;
  if (buildCounterDeleteTableColumnRequest < 3) {
    o.cellLocation = buildTableCellLocation();
    o.tableObjectId = 'foo';
  }
  buildCounterDeleteTableColumnRequest--;
  return o;
}

void checkDeleteTableColumnRequest(api.DeleteTableColumnRequest o) {
  buildCounterDeleteTableColumnRequest++;
  if (buildCounterDeleteTableColumnRequest < 3) {
    checkTableCellLocation(o.cellLocation!);
    unittest.expect(
      o.tableObjectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeleteTableColumnRequest--;
}

core.int buildCounterDeleteTableRowRequest = 0;
api.DeleteTableRowRequest buildDeleteTableRowRequest() {
  final o = api.DeleteTableRowRequest();
  buildCounterDeleteTableRowRequest++;
  if (buildCounterDeleteTableRowRequest < 3) {
    o.cellLocation = buildTableCellLocation();
    o.tableObjectId = 'foo';
  }
  buildCounterDeleteTableRowRequest--;
  return o;
}

void checkDeleteTableRowRequest(api.DeleteTableRowRequest o) {
  buildCounterDeleteTableRowRequest++;
  if (buildCounterDeleteTableRowRequest < 3) {
    checkTableCellLocation(o.cellLocation!);
    unittest.expect(
      o.tableObjectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeleteTableRowRequest--;
}

core.int buildCounterDeleteTextRequest = 0;
api.DeleteTextRequest buildDeleteTextRequest() {
  final o = api.DeleteTextRequest();
  buildCounterDeleteTextRequest++;
  if (buildCounterDeleteTextRequest < 3) {
    o.cellLocation = buildTableCellLocation();
    o.objectId = 'foo';
    o.textRange = buildRange();
  }
  buildCounterDeleteTextRequest--;
  return o;
}

void checkDeleteTextRequest(api.DeleteTextRequest o) {
  buildCounterDeleteTextRequest++;
  if (buildCounterDeleteTextRequest < 3) {
    checkTableCellLocation(o.cellLocation!);
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    checkRange(o.textRange!);
  }
  buildCounterDeleteTextRequest--;
}

core.int buildCounterDimension = 0;
api.Dimension buildDimension() {
  final o = api.Dimension();
  buildCounterDimension++;
  if (buildCounterDimension < 3) {
    o.magnitude = 42.0;
    o.unit = 'foo';
  }
  buildCounterDimension--;
  return o;
}

void checkDimension(api.Dimension o) {
  buildCounterDimension++;
  if (buildCounterDimension < 3) {
    unittest.expect(
      o.magnitude!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.unit!,
      unittest.equals('foo'),
    );
  }
  buildCounterDimension--;
}

core.Map<core.String, core.String> buildUnnamed2617() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed2617(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterDuplicateObjectRequest = 0;
api.DuplicateObjectRequest buildDuplicateObjectRequest() {
  final o = api.DuplicateObjectRequest();
  buildCounterDuplicateObjectRequest++;
  if (buildCounterDuplicateObjectRequest < 3) {
    o.objectId = 'foo';
    o.objectIds = buildUnnamed2617();
  }
  buildCounterDuplicateObjectRequest--;
  return o;
}

void checkDuplicateObjectRequest(api.DuplicateObjectRequest o) {
  buildCounterDuplicateObjectRequest++;
  if (buildCounterDuplicateObjectRequest < 3) {
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    checkUnnamed2617(o.objectIds!);
  }
  buildCounterDuplicateObjectRequest--;
}

core.int buildCounterDuplicateObjectResponse = 0;
api.DuplicateObjectResponse buildDuplicateObjectResponse() {
  final o = api.DuplicateObjectResponse();
  buildCounterDuplicateObjectResponse++;
  if (buildCounterDuplicateObjectResponse < 3) {
    o.objectId = 'foo';
  }
  buildCounterDuplicateObjectResponse--;
  return o;
}

void checkDuplicateObjectResponse(api.DuplicateObjectResponse o) {
  buildCounterDuplicateObjectResponse++;
  if (buildCounterDuplicateObjectResponse < 3) {
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDuplicateObjectResponse--;
}

core.List<api.PageElement> buildUnnamed2618() => [
      buildPageElement(),
      buildPageElement(),
    ];

void checkUnnamed2618(core.List<api.PageElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPageElement(o[0]);
  checkPageElement(o[1]);
}

core.int buildCounterGroup = 0;
api.Group buildGroup() {
  final o = api.Group();
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    o.children = buildUnnamed2618();
  }
  buildCounterGroup--;
  return o;
}

void checkGroup(api.Group o) {
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    checkUnnamed2618(o.children!);
  }
  buildCounterGroup--;
}

core.List<core.String> buildUnnamed2619() => [
      'foo',
      'foo',
    ];

void checkUnnamed2619(core.List<core.String> o) {
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

core.int buildCounterGroupObjectsRequest = 0;
api.GroupObjectsRequest buildGroupObjectsRequest() {
  final o = api.GroupObjectsRequest();
  buildCounterGroupObjectsRequest++;
  if (buildCounterGroupObjectsRequest < 3) {
    o.childrenObjectIds = buildUnnamed2619();
    o.groupObjectId = 'foo';
  }
  buildCounterGroupObjectsRequest--;
  return o;
}

void checkGroupObjectsRequest(api.GroupObjectsRequest o) {
  buildCounterGroupObjectsRequest++;
  if (buildCounterGroupObjectsRequest < 3) {
    checkUnnamed2619(o.childrenObjectIds!);
    unittest.expect(
      o.groupObjectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGroupObjectsRequest--;
}

core.int buildCounterGroupObjectsResponse = 0;
api.GroupObjectsResponse buildGroupObjectsResponse() {
  final o = api.GroupObjectsResponse();
  buildCounterGroupObjectsResponse++;
  if (buildCounterGroupObjectsResponse < 3) {
    o.objectId = 'foo';
  }
  buildCounterGroupObjectsResponse--;
  return o;
}

void checkGroupObjectsResponse(api.GroupObjectsResponse o) {
  buildCounterGroupObjectsResponse++;
  if (buildCounterGroupObjectsResponse < 3) {
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGroupObjectsResponse--;
}

core.int buildCounterImage = 0;
api.Image buildImage() {
  final o = api.Image();
  buildCounterImage++;
  if (buildCounterImage < 3) {
    o.contentUrl = 'foo';
    o.imageProperties = buildImageProperties();
    o.sourceUrl = 'foo';
  }
  buildCounterImage--;
  return o;
}

void checkImage(api.Image o) {
  buildCounterImage++;
  if (buildCounterImage < 3) {
    unittest.expect(
      o.contentUrl!,
      unittest.equals('foo'),
    );
    checkImageProperties(o.imageProperties!);
    unittest.expect(
      o.sourceUrl!,
      unittest.equals('foo'),
    );
  }
  buildCounterImage--;
}

core.int buildCounterImageProperties = 0;
api.ImageProperties buildImageProperties() {
  final o = api.ImageProperties();
  buildCounterImageProperties++;
  if (buildCounterImageProperties < 3) {
    o.brightness = 42.0;
    o.contrast = 42.0;
    o.cropProperties = buildCropProperties();
    o.link = buildLink();
    o.outline = buildOutline();
    o.recolor = buildRecolor();
    o.shadow = buildShadow();
    o.transparency = 42.0;
  }
  buildCounterImageProperties--;
  return o;
}

void checkImageProperties(api.ImageProperties o) {
  buildCounterImageProperties++;
  if (buildCounterImageProperties < 3) {
    unittest.expect(
      o.brightness!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.contrast!,
      unittest.equals(42.0),
    );
    checkCropProperties(o.cropProperties!);
    checkLink(o.link!);
    checkOutline(o.outline!);
    checkRecolor(o.recolor!);
    checkShadow(o.shadow!);
    unittest.expect(
      o.transparency!,
      unittest.equals(42.0),
    );
  }
  buildCounterImageProperties--;
}

core.int buildCounterInsertTableColumnsRequest = 0;
api.InsertTableColumnsRequest buildInsertTableColumnsRequest() {
  final o = api.InsertTableColumnsRequest();
  buildCounterInsertTableColumnsRequest++;
  if (buildCounterInsertTableColumnsRequest < 3) {
    o.cellLocation = buildTableCellLocation();
    o.insertRight = true;
    o.number = 42;
    o.tableObjectId = 'foo';
  }
  buildCounterInsertTableColumnsRequest--;
  return o;
}

void checkInsertTableColumnsRequest(api.InsertTableColumnsRequest o) {
  buildCounterInsertTableColumnsRequest++;
  if (buildCounterInsertTableColumnsRequest < 3) {
    checkTableCellLocation(o.cellLocation!);
    unittest.expect(o.insertRight!, unittest.isTrue);
    unittest.expect(
      o.number!,
      unittest.equals(42),
    );
    unittest.expect(
      o.tableObjectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterInsertTableColumnsRequest--;
}

core.int buildCounterInsertTableRowsRequest = 0;
api.InsertTableRowsRequest buildInsertTableRowsRequest() {
  final o = api.InsertTableRowsRequest();
  buildCounterInsertTableRowsRequest++;
  if (buildCounterInsertTableRowsRequest < 3) {
    o.cellLocation = buildTableCellLocation();
    o.insertBelow = true;
    o.number = 42;
    o.tableObjectId = 'foo';
  }
  buildCounterInsertTableRowsRequest--;
  return o;
}

void checkInsertTableRowsRequest(api.InsertTableRowsRequest o) {
  buildCounterInsertTableRowsRequest++;
  if (buildCounterInsertTableRowsRequest < 3) {
    checkTableCellLocation(o.cellLocation!);
    unittest.expect(o.insertBelow!, unittest.isTrue);
    unittest.expect(
      o.number!,
      unittest.equals(42),
    );
    unittest.expect(
      o.tableObjectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterInsertTableRowsRequest--;
}

core.int buildCounterInsertTextRequest = 0;
api.InsertTextRequest buildInsertTextRequest() {
  final o = api.InsertTextRequest();
  buildCounterInsertTextRequest++;
  if (buildCounterInsertTextRequest < 3) {
    o.cellLocation = buildTableCellLocation();
    o.insertionIndex = 42;
    o.objectId = 'foo';
    o.text = 'foo';
  }
  buildCounterInsertTextRequest--;
  return o;
}

void checkInsertTextRequest(api.InsertTextRequest o) {
  buildCounterInsertTextRequest++;
  if (buildCounterInsertTextRequest < 3) {
    checkTableCellLocation(o.cellLocation!);
    unittest.expect(
      o.insertionIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterInsertTextRequest--;
}

core.int buildCounterLayoutPlaceholderIdMapping = 0;
api.LayoutPlaceholderIdMapping buildLayoutPlaceholderIdMapping() {
  final o = api.LayoutPlaceholderIdMapping();
  buildCounterLayoutPlaceholderIdMapping++;
  if (buildCounterLayoutPlaceholderIdMapping < 3) {
    o.layoutPlaceholder = buildPlaceholder();
    o.layoutPlaceholderObjectId = 'foo';
    o.objectId = 'foo';
  }
  buildCounterLayoutPlaceholderIdMapping--;
  return o;
}

void checkLayoutPlaceholderIdMapping(api.LayoutPlaceholderIdMapping o) {
  buildCounterLayoutPlaceholderIdMapping++;
  if (buildCounterLayoutPlaceholderIdMapping < 3) {
    checkPlaceholder(o.layoutPlaceholder!);
    unittest.expect(
      o.layoutPlaceholderObjectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterLayoutPlaceholderIdMapping--;
}

core.int buildCounterLayoutProperties = 0;
api.LayoutProperties buildLayoutProperties() {
  final o = api.LayoutProperties();
  buildCounterLayoutProperties++;
  if (buildCounterLayoutProperties < 3) {
    o.displayName = 'foo';
    o.masterObjectId = 'foo';
    o.name = 'foo';
  }
  buildCounterLayoutProperties--;
  return o;
}

void checkLayoutProperties(api.LayoutProperties o) {
  buildCounterLayoutProperties++;
  if (buildCounterLayoutProperties < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.masterObjectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterLayoutProperties--;
}

core.int buildCounterLayoutReference = 0;
api.LayoutReference buildLayoutReference() {
  final o = api.LayoutReference();
  buildCounterLayoutReference++;
  if (buildCounterLayoutReference < 3) {
    o.layoutId = 'foo';
    o.predefinedLayout = 'foo';
  }
  buildCounterLayoutReference--;
  return o;
}

void checkLayoutReference(api.LayoutReference o) {
  buildCounterLayoutReference++;
  if (buildCounterLayoutReference < 3) {
    unittest.expect(
      o.layoutId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.predefinedLayout!,
      unittest.equals('foo'),
    );
  }
  buildCounterLayoutReference--;
}

core.int buildCounterLine = 0;
api.Line buildLine() {
  final o = api.Line();
  buildCounterLine++;
  if (buildCounterLine < 3) {
    o.lineCategory = 'foo';
    o.lineProperties = buildLineProperties();
    o.lineType = 'foo';
  }
  buildCounterLine--;
  return o;
}

void checkLine(api.Line o) {
  buildCounterLine++;
  if (buildCounterLine < 3) {
    unittest.expect(
      o.lineCategory!,
      unittest.equals('foo'),
    );
    checkLineProperties(o.lineProperties!);
    unittest.expect(
      o.lineType!,
      unittest.equals('foo'),
    );
  }
  buildCounterLine--;
}

core.int buildCounterLineConnection = 0;
api.LineConnection buildLineConnection() {
  final o = api.LineConnection();
  buildCounterLineConnection++;
  if (buildCounterLineConnection < 3) {
    o.connectedObjectId = 'foo';
    o.connectionSiteIndex = 42;
  }
  buildCounterLineConnection--;
  return o;
}

void checkLineConnection(api.LineConnection o) {
  buildCounterLineConnection++;
  if (buildCounterLineConnection < 3) {
    unittest.expect(
      o.connectedObjectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.connectionSiteIndex!,
      unittest.equals(42),
    );
  }
  buildCounterLineConnection--;
}

core.int buildCounterLineFill = 0;
api.LineFill buildLineFill() {
  final o = api.LineFill();
  buildCounterLineFill++;
  if (buildCounterLineFill < 3) {
    o.solidFill = buildSolidFill();
  }
  buildCounterLineFill--;
  return o;
}

void checkLineFill(api.LineFill o) {
  buildCounterLineFill++;
  if (buildCounterLineFill < 3) {
    checkSolidFill(o.solidFill!);
  }
  buildCounterLineFill--;
}

core.int buildCounterLineProperties = 0;
api.LineProperties buildLineProperties() {
  final o = api.LineProperties();
  buildCounterLineProperties++;
  if (buildCounterLineProperties < 3) {
    o.dashStyle = 'foo';
    o.endArrow = 'foo';
    o.endConnection = buildLineConnection();
    o.lineFill = buildLineFill();
    o.link = buildLink();
    o.startArrow = 'foo';
    o.startConnection = buildLineConnection();
    o.weight = buildDimension();
  }
  buildCounterLineProperties--;
  return o;
}

void checkLineProperties(api.LineProperties o) {
  buildCounterLineProperties++;
  if (buildCounterLineProperties < 3) {
    unittest.expect(
      o.dashStyle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endArrow!,
      unittest.equals('foo'),
    );
    checkLineConnection(o.endConnection!);
    checkLineFill(o.lineFill!);
    checkLink(o.link!);
    unittest.expect(
      o.startArrow!,
      unittest.equals('foo'),
    );
    checkLineConnection(o.startConnection!);
    checkDimension(o.weight!);
  }
  buildCounterLineProperties--;
}

core.int buildCounterLink = 0;
api.Link buildLink() {
  final o = api.Link();
  buildCounterLink++;
  if (buildCounterLink < 3) {
    o.pageObjectId = 'foo';
    o.relativeLink = 'foo';
    o.slideIndex = 42;
    o.url = 'foo';
  }
  buildCounterLink--;
  return o;
}

void checkLink(api.Link o) {
  buildCounterLink++;
  if (buildCounterLink < 3) {
    unittest.expect(
      o.pageObjectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.relativeLink!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.slideIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterLink--;
}

core.Map<core.String, api.NestingLevel> buildUnnamed2620() => {
      'x': buildNestingLevel(),
      'y': buildNestingLevel(),
    };

void checkUnnamed2620(core.Map<core.String, api.NestingLevel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNestingLevel(o['x']!);
  checkNestingLevel(o['y']!);
}

core.int buildCounterList = 0;
api.List buildList() {
  final o = api.List();
  buildCounterList++;
  if (buildCounterList < 3) {
    o.listId = 'foo';
    o.nestingLevel = buildUnnamed2620();
  }
  buildCounterList--;
  return o;
}

void checkList(api.List o) {
  buildCounterList++;
  if (buildCounterList < 3) {
    unittest.expect(
      o.listId!,
      unittest.equals('foo'),
    );
    checkUnnamed2620(o.nestingLevel!);
  }
  buildCounterList--;
}

core.int buildCounterMasterProperties = 0;
api.MasterProperties buildMasterProperties() {
  final o = api.MasterProperties();
  buildCounterMasterProperties++;
  if (buildCounterMasterProperties < 3) {
    o.displayName = 'foo';
  }
  buildCounterMasterProperties--;
  return o;
}

void checkMasterProperties(api.MasterProperties o) {
  buildCounterMasterProperties++;
  if (buildCounterMasterProperties < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterMasterProperties--;
}

core.int buildCounterMergeTableCellsRequest = 0;
api.MergeTableCellsRequest buildMergeTableCellsRequest() {
  final o = api.MergeTableCellsRequest();
  buildCounterMergeTableCellsRequest++;
  if (buildCounterMergeTableCellsRequest < 3) {
    o.objectId = 'foo';
    o.tableRange = buildTableRange();
  }
  buildCounterMergeTableCellsRequest--;
  return o;
}

void checkMergeTableCellsRequest(api.MergeTableCellsRequest o) {
  buildCounterMergeTableCellsRequest++;
  if (buildCounterMergeTableCellsRequest < 3) {
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    checkTableRange(o.tableRange!);
  }
  buildCounterMergeTableCellsRequest--;
}

core.int buildCounterNestingLevel = 0;
api.NestingLevel buildNestingLevel() {
  final o = api.NestingLevel();
  buildCounterNestingLevel++;
  if (buildCounterNestingLevel < 3) {
    o.bulletStyle = buildTextStyle();
  }
  buildCounterNestingLevel--;
  return o;
}

void checkNestingLevel(api.NestingLevel o) {
  buildCounterNestingLevel++;
  if (buildCounterNestingLevel < 3) {
    checkTextStyle(o.bulletStyle!);
  }
  buildCounterNestingLevel--;
}

core.int buildCounterNotesProperties = 0;
api.NotesProperties buildNotesProperties() {
  final o = api.NotesProperties();
  buildCounterNotesProperties++;
  if (buildCounterNotesProperties < 3) {
    o.speakerNotesObjectId = 'foo';
  }
  buildCounterNotesProperties--;
  return o;
}

void checkNotesProperties(api.NotesProperties o) {
  buildCounterNotesProperties++;
  if (buildCounterNotesProperties < 3) {
    unittest.expect(
      o.speakerNotesObjectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterNotesProperties--;
}

core.int buildCounterOpaqueColor = 0;
api.OpaqueColor buildOpaqueColor() {
  final o = api.OpaqueColor();
  buildCounterOpaqueColor++;
  if (buildCounterOpaqueColor < 3) {
    o.rgbColor = buildRgbColor();
    o.themeColor = 'foo';
  }
  buildCounterOpaqueColor--;
  return o;
}

void checkOpaqueColor(api.OpaqueColor o) {
  buildCounterOpaqueColor++;
  if (buildCounterOpaqueColor < 3) {
    checkRgbColor(o.rgbColor!);
    unittest.expect(
      o.themeColor!,
      unittest.equals('foo'),
    );
  }
  buildCounterOpaqueColor--;
}

core.int buildCounterOptionalColor = 0;
api.OptionalColor buildOptionalColor() {
  final o = api.OptionalColor();
  buildCounterOptionalColor++;
  if (buildCounterOptionalColor < 3) {
    o.opaqueColor = buildOpaqueColor();
  }
  buildCounterOptionalColor--;
  return o;
}

void checkOptionalColor(api.OptionalColor o) {
  buildCounterOptionalColor++;
  if (buildCounterOptionalColor < 3) {
    checkOpaqueColor(o.opaqueColor!);
  }
  buildCounterOptionalColor--;
}

core.int buildCounterOutline = 0;
api.Outline buildOutline() {
  final o = api.Outline();
  buildCounterOutline++;
  if (buildCounterOutline < 3) {
    o.dashStyle = 'foo';
    o.outlineFill = buildOutlineFill();
    o.propertyState = 'foo';
    o.weight = buildDimension();
  }
  buildCounterOutline--;
  return o;
}

void checkOutline(api.Outline o) {
  buildCounterOutline++;
  if (buildCounterOutline < 3) {
    unittest.expect(
      o.dashStyle!,
      unittest.equals('foo'),
    );
    checkOutlineFill(o.outlineFill!);
    unittest.expect(
      o.propertyState!,
      unittest.equals('foo'),
    );
    checkDimension(o.weight!);
  }
  buildCounterOutline--;
}

core.int buildCounterOutlineFill = 0;
api.OutlineFill buildOutlineFill() {
  final o = api.OutlineFill();
  buildCounterOutlineFill++;
  if (buildCounterOutlineFill < 3) {
    o.solidFill = buildSolidFill();
  }
  buildCounterOutlineFill--;
  return o;
}

void checkOutlineFill(api.OutlineFill o) {
  buildCounterOutlineFill++;
  if (buildCounterOutlineFill < 3) {
    checkSolidFill(o.solidFill!);
  }
  buildCounterOutlineFill--;
}

core.List<api.PageElement> buildUnnamed2621() => [
      buildPageElement(),
      buildPageElement(),
    ];

void checkUnnamed2621(core.List<api.PageElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPageElement(o[0]);
  checkPageElement(o[1]);
}

core.int buildCounterPage = 0;
api.Page buildPage() {
  final o = api.Page();
  buildCounterPage++;
  if (buildCounterPage < 3) {
    o.layoutProperties = buildLayoutProperties();
    o.masterProperties = buildMasterProperties();
    o.notesProperties = buildNotesProperties();
    o.objectId = 'foo';
    o.pageElements = buildUnnamed2621();
    o.pageProperties = buildPageProperties();
    o.pageType = 'foo';
    o.revisionId = 'foo';
    o.slideProperties = buildSlideProperties();
  }
  buildCounterPage--;
  return o;
}

void checkPage(api.Page o) {
  buildCounterPage++;
  if (buildCounterPage < 3) {
    checkLayoutProperties(o.layoutProperties!);
    checkMasterProperties(o.masterProperties!);
    checkNotesProperties(o.notesProperties!);
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    checkUnnamed2621(o.pageElements!);
    checkPageProperties(o.pageProperties!);
    unittest.expect(
      o.pageType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revisionId!,
      unittest.equals('foo'),
    );
    checkSlideProperties(o.slideProperties!);
  }
  buildCounterPage--;
}

core.int buildCounterPageBackgroundFill = 0;
api.PageBackgroundFill buildPageBackgroundFill() {
  final o = api.PageBackgroundFill();
  buildCounterPageBackgroundFill++;
  if (buildCounterPageBackgroundFill < 3) {
    o.propertyState = 'foo';
    o.solidFill = buildSolidFill();
    o.stretchedPictureFill = buildStretchedPictureFill();
  }
  buildCounterPageBackgroundFill--;
  return o;
}

void checkPageBackgroundFill(api.PageBackgroundFill o) {
  buildCounterPageBackgroundFill++;
  if (buildCounterPageBackgroundFill < 3) {
    unittest.expect(
      o.propertyState!,
      unittest.equals('foo'),
    );
    checkSolidFill(o.solidFill!);
    checkStretchedPictureFill(o.stretchedPictureFill!);
  }
  buildCounterPageBackgroundFill--;
}

core.int buildCounterPageElement = 0;
api.PageElement buildPageElement() {
  final o = api.PageElement();
  buildCounterPageElement++;
  if (buildCounterPageElement < 3) {
    o.description = 'foo';
    o.elementGroup = buildGroup();
    o.image = buildImage();
    o.line = buildLine();
    o.objectId = 'foo';
    o.shape = buildShape();
    o.sheetsChart = buildSheetsChart();
    o.size = buildSize();
    o.table = buildTable();
    o.title = 'foo';
    o.transform = buildAffineTransform();
    o.video = buildVideo();
    o.wordArt = buildWordArt();
  }
  buildCounterPageElement--;
  return o;
}

void checkPageElement(api.PageElement o) {
  buildCounterPageElement++;
  if (buildCounterPageElement < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkGroup(o.elementGroup!);
    checkImage(o.image!);
    checkLine(o.line!);
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    checkShape(o.shape!);
    checkSheetsChart(o.sheetsChart!);
    checkSize(o.size!);
    checkTable(o.table!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    checkAffineTransform(o.transform!);
    checkVideo(o.video!);
    checkWordArt(o.wordArt!);
  }
  buildCounterPageElement--;
}

core.int buildCounterPageElementProperties = 0;
api.PageElementProperties buildPageElementProperties() {
  final o = api.PageElementProperties();
  buildCounterPageElementProperties++;
  if (buildCounterPageElementProperties < 3) {
    o.pageObjectId = 'foo';
    o.size = buildSize();
    o.transform = buildAffineTransform();
  }
  buildCounterPageElementProperties--;
  return o;
}

void checkPageElementProperties(api.PageElementProperties o) {
  buildCounterPageElementProperties++;
  if (buildCounterPageElementProperties < 3) {
    unittest.expect(
      o.pageObjectId!,
      unittest.equals('foo'),
    );
    checkSize(o.size!);
    checkAffineTransform(o.transform!);
  }
  buildCounterPageElementProperties--;
}

core.int buildCounterPageProperties = 0;
api.PageProperties buildPageProperties() {
  final o = api.PageProperties();
  buildCounterPageProperties++;
  if (buildCounterPageProperties < 3) {
    o.colorScheme = buildColorScheme();
    o.pageBackgroundFill = buildPageBackgroundFill();
  }
  buildCounterPageProperties--;
  return o;
}

void checkPageProperties(api.PageProperties o) {
  buildCounterPageProperties++;
  if (buildCounterPageProperties < 3) {
    checkColorScheme(o.colorScheme!);
    checkPageBackgroundFill(o.pageBackgroundFill!);
  }
  buildCounterPageProperties--;
}

core.int buildCounterParagraphMarker = 0;
api.ParagraphMarker buildParagraphMarker() {
  final o = api.ParagraphMarker();
  buildCounterParagraphMarker++;
  if (buildCounterParagraphMarker < 3) {
    o.bullet = buildBullet();
    o.style = buildParagraphStyle();
  }
  buildCounterParagraphMarker--;
  return o;
}

void checkParagraphMarker(api.ParagraphMarker o) {
  buildCounterParagraphMarker++;
  if (buildCounterParagraphMarker < 3) {
    checkBullet(o.bullet!);
    checkParagraphStyle(o.style!);
  }
  buildCounterParagraphMarker--;
}

core.int buildCounterParagraphStyle = 0;
api.ParagraphStyle buildParagraphStyle() {
  final o = api.ParagraphStyle();
  buildCounterParagraphStyle++;
  if (buildCounterParagraphStyle < 3) {
    o.alignment = 'foo';
    o.direction = 'foo';
    o.indentEnd = buildDimension();
    o.indentFirstLine = buildDimension();
    o.indentStart = buildDimension();
    o.lineSpacing = 42.0;
    o.spaceAbove = buildDimension();
    o.spaceBelow = buildDimension();
    o.spacingMode = 'foo';
  }
  buildCounterParagraphStyle--;
  return o;
}

void checkParagraphStyle(api.ParagraphStyle o) {
  buildCounterParagraphStyle++;
  if (buildCounterParagraphStyle < 3) {
    unittest.expect(
      o.alignment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.direction!,
      unittest.equals('foo'),
    );
    checkDimension(o.indentEnd!);
    checkDimension(o.indentFirstLine!);
    checkDimension(o.indentStart!);
    unittest.expect(
      o.lineSpacing!,
      unittest.equals(42.0),
    );
    checkDimension(o.spaceAbove!);
    checkDimension(o.spaceBelow!);
    unittest.expect(
      o.spacingMode!,
      unittest.equals('foo'),
    );
  }
  buildCounterParagraphStyle--;
}

core.int buildCounterPlaceholder = 0;
api.Placeholder buildPlaceholder() {
  final o = api.Placeholder();
  buildCounterPlaceholder++;
  if (buildCounterPlaceholder < 3) {
    o.index = 42;
    o.parentObjectId = 'foo';
    o.type = 'foo';
  }
  buildCounterPlaceholder--;
  return o;
}

void checkPlaceholder(api.Placeholder o) {
  buildCounterPlaceholder++;
  if (buildCounterPlaceholder < 3) {
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
    unittest.expect(
      o.parentObjectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterPlaceholder--;
}

core.List<api.Page> buildUnnamed2622() => [
      buildPage(),
      buildPage(),
    ];

void checkUnnamed2622(core.List<api.Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPage(o[0]);
  checkPage(o[1]);
}

core.List<api.Page> buildUnnamed2623() => [
      buildPage(),
      buildPage(),
    ];

void checkUnnamed2623(core.List<api.Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPage(o[0]);
  checkPage(o[1]);
}

core.List<api.Page> buildUnnamed2624() => [
      buildPage(),
      buildPage(),
    ];

void checkUnnamed2624(core.List<api.Page> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPage(o[0]);
  checkPage(o[1]);
}

core.int buildCounterPresentation = 0;
api.Presentation buildPresentation() {
  final o = api.Presentation();
  buildCounterPresentation++;
  if (buildCounterPresentation < 3) {
    o.layouts = buildUnnamed2622();
    o.locale = 'foo';
    o.masters = buildUnnamed2623();
    o.notesMaster = buildPage();
    o.pageSize = buildSize();
    o.presentationId = 'foo';
    o.revisionId = 'foo';
    o.slides = buildUnnamed2624();
    o.title = 'foo';
  }
  buildCounterPresentation--;
  return o;
}

void checkPresentation(api.Presentation o) {
  buildCounterPresentation++;
  if (buildCounterPresentation < 3) {
    checkUnnamed2622(o.layouts!);
    unittest.expect(
      o.locale!,
      unittest.equals('foo'),
    );
    checkUnnamed2623(o.masters!);
    checkPage(o.notesMaster!);
    checkSize(o.pageSize!);
    unittest.expect(
      o.presentationId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.revisionId!,
      unittest.equals('foo'),
    );
    checkUnnamed2624(o.slides!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterPresentation--;
}

core.int buildCounterRange = 0;
api.Range buildRange() {
  final o = api.Range();
  buildCounterRange++;
  if (buildCounterRange < 3) {
    o.endIndex = 42;
    o.startIndex = 42;
    o.type = 'foo';
  }
  buildCounterRange--;
  return o;
}

void checkRange(api.Range o) {
  buildCounterRange++;
  if (buildCounterRange < 3) {
    unittest.expect(
      o.endIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterRange--;
}

core.List<api.ColorStop> buildUnnamed2625() => [
      buildColorStop(),
      buildColorStop(),
    ];

void checkUnnamed2625(core.List<api.ColorStop> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkColorStop(o[0]);
  checkColorStop(o[1]);
}

core.int buildCounterRecolor = 0;
api.Recolor buildRecolor() {
  final o = api.Recolor();
  buildCounterRecolor++;
  if (buildCounterRecolor < 3) {
    o.name = 'foo';
    o.recolorStops = buildUnnamed2625();
  }
  buildCounterRecolor--;
  return o;
}

void checkRecolor(api.Recolor o) {
  buildCounterRecolor++;
  if (buildCounterRecolor < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed2625(o.recolorStops!);
  }
  buildCounterRecolor--;
}

core.int buildCounterRefreshSheetsChartRequest = 0;
api.RefreshSheetsChartRequest buildRefreshSheetsChartRequest() {
  final o = api.RefreshSheetsChartRequest();
  buildCounterRefreshSheetsChartRequest++;
  if (buildCounterRefreshSheetsChartRequest < 3) {
    o.objectId = 'foo';
  }
  buildCounterRefreshSheetsChartRequest--;
  return o;
}

void checkRefreshSheetsChartRequest(api.RefreshSheetsChartRequest o) {
  buildCounterRefreshSheetsChartRequest++;
  if (buildCounterRefreshSheetsChartRequest < 3) {
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRefreshSheetsChartRequest--;
}

core.List<core.String> buildUnnamed2626() => [
      'foo',
      'foo',
    ];

void checkUnnamed2626(core.List<core.String> o) {
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

core.int buildCounterReplaceAllShapesWithImageRequest = 0;
api.ReplaceAllShapesWithImageRequest buildReplaceAllShapesWithImageRequest() {
  final o = api.ReplaceAllShapesWithImageRequest();
  buildCounterReplaceAllShapesWithImageRequest++;
  if (buildCounterReplaceAllShapesWithImageRequest < 3) {
    o.containsText = buildSubstringMatchCriteria();
    o.imageReplaceMethod = 'foo';
    o.imageUrl = 'foo';
    o.pageObjectIds = buildUnnamed2626();
    o.replaceMethod = 'foo';
  }
  buildCounterReplaceAllShapesWithImageRequest--;
  return o;
}

void checkReplaceAllShapesWithImageRequest(
    api.ReplaceAllShapesWithImageRequest o) {
  buildCounterReplaceAllShapesWithImageRequest++;
  if (buildCounterReplaceAllShapesWithImageRequest < 3) {
    checkSubstringMatchCriteria(o.containsText!);
    unittest.expect(
      o.imageReplaceMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageUrl!,
      unittest.equals('foo'),
    );
    checkUnnamed2626(o.pageObjectIds!);
    unittest.expect(
      o.replaceMethod!,
      unittest.equals('foo'),
    );
  }
  buildCounterReplaceAllShapesWithImageRequest--;
}

core.int buildCounterReplaceAllShapesWithImageResponse = 0;
api.ReplaceAllShapesWithImageResponse buildReplaceAllShapesWithImageResponse() {
  final o = api.ReplaceAllShapesWithImageResponse();
  buildCounterReplaceAllShapesWithImageResponse++;
  if (buildCounterReplaceAllShapesWithImageResponse < 3) {
    o.occurrencesChanged = 42;
  }
  buildCounterReplaceAllShapesWithImageResponse--;
  return o;
}

void checkReplaceAllShapesWithImageResponse(
    api.ReplaceAllShapesWithImageResponse o) {
  buildCounterReplaceAllShapesWithImageResponse++;
  if (buildCounterReplaceAllShapesWithImageResponse < 3) {
    unittest.expect(
      o.occurrencesChanged!,
      unittest.equals(42),
    );
  }
  buildCounterReplaceAllShapesWithImageResponse--;
}

core.List<core.String> buildUnnamed2627() => [
      'foo',
      'foo',
    ];

void checkUnnamed2627(core.List<core.String> o) {
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

core.int buildCounterReplaceAllShapesWithSheetsChartRequest = 0;
api.ReplaceAllShapesWithSheetsChartRequest
    buildReplaceAllShapesWithSheetsChartRequest() {
  final o = api.ReplaceAllShapesWithSheetsChartRequest();
  buildCounterReplaceAllShapesWithSheetsChartRequest++;
  if (buildCounterReplaceAllShapesWithSheetsChartRequest < 3) {
    o.chartId = 42;
    o.containsText = buildSubstringMatchCriteria();
    o.linkingMode = 'foo';
    o.pageObjectIds = buildUnnamed2627();
    o.spreadsheetId = 'foo';
  }
  buildCounterReplaceAllShapesWithSheetsChartRequest--;
  return o;
}

void checkReplaceAllShapesWithSheetsChartRequest(
    api.ReplaceAllShapesWithSheetsChartRequest o) {
  buildCounterReplaceAllShapesWithSheetsChartRequest++;
  if (buildCounterReplaceAllShapesWithSheetsChartRequest < 3) {
    unittest.expect(
      o.chartId!,
      unittest.equals(42),
    );
    checkSubstringMatchCriteria(o.containsText!);
    unittest.expect(
      o.linkingMode!,
      unittest.equals('foo'),
    );
    checkUnnamed2627(o.pageObjectIds!);
    unittest.expect(
      o.spreadsheetId!,
      unittest.equals('foo'),
    );
  }
  buildCounterReplaceAllShapesWithSheetsChartRequest--;
}

core.int buildCounterReplaceAllShapesWithSheetsChartResponse = 0;
api.ReplaceAllShapesWithSheetsChartResponse
    buildReplaceAllShapesWithSheetsChartResponse() {
  final o = api.ReplaceAllShapesWithSheetsChartResponse();
  buildCounterReplaceAllShapesWithSheetsChartResponse++;
  if (buildCounterReplaceAllShapesWithSheetsChartResponse < 3) {
    o.occurrencesChanged = 42;
  }
  buildCounterReplaceAllShapesWithSheetsChartResponse--;
  return o;
}

void checkReplaceAllShapesWithSheetsChartResponse(
    api.ReplaceAllShapesWithSheetsChartResponse o) {
  buildCounterReplaceAllShapesWithSheetsChartResponse++;
  if (buildCounterReplaceAllShapesWithSheetsChartResponse < 3) {
    unittest.expect(
      o.occurrencesChanged!,
      unittest.equals(42),
    );
  }
  buildCounterReplaceAllShapesWithSheetsChartResponse--;
}

core.List<core.String> buildUnnamed2628() => [
      'foo',
      'foo',
    ];

void checkUnnamed2628(core.List<core.String> o) {
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

core.int buildCounterReplaceAllTextRequest = 0;
api.ReplaceAllTextRequest buildReplaceAllTextRequest() {
  final o = api.ReplaceAllTextRequest();
  buildCounterReplaceAllTextRequest++;
  if (buildCounterReplaceAllTextRequest < 3) {
    o.containsText = buildSubstringMatchCriteria();
    o.pageObjectIds = buildUnnamed2628();
    o.replaceText = 'foo';
  }
  buildCounterReplaceAllTextRequest--;
  return o;
}

void checkReplaceAllTextRequest(api.ReplaceAllTextRequest o) {
  buildCounterReplaceAllTextRequest++;
  if (buildCounterReplaceAllTextRequest < 3) {
    checkSubstringMatchCriteria(o.containsText!);
    checkUnnamed2628(o.pageObjectIds!);
    unittest.expect(
      o.replaceText!,
      unittest.equals('foo'),
    );
  }
  buildCounterReplaceAllTextRequest--;
}

core.int buildCounterReplaceAllTextResponse = 0;
api.ReplaceAllTextResponse buildReplaceAllTextResponse() {
  final o = api.ReplaceAllTextResponse();
  buildCounterReplaceAllTextResponse++;
  if (buildCounterReplaceAllTextResponse < 3) {
    o.occurrencesChanged = 42;
  }
  buildCounterReplaceAllTextResponse--;
  return o;
}

void checkReplaceAllTextResponse(api.ReplaceAllTextResponse o) {
  buildCounterReplaceAllTextResponse++;
  if (buildCounterReplaceAllTextResponse < 3) {
    unittest.expect(
      o.occurrencesChanged!,
      unittest.equals(42),
    );
  }
  buildCounterReplaceAllTextResponse--;
}

core.int buildCounterReplaceImageRequest = 0;
api.ReplaceImageRequest buildReplaceImageRequest() {
  final o = api.ReplaceImageRequest();
  buildCounterReplaceImageRequest++;
  if (buildCounterReplaceImageRequest < 3) {
    o.imageObjectId = 'foo';
    o.imageReplaceMethod = 'foo';
    o.url = 'foo';
  }
  buildCounterReplaceImageRequest--;
  return o;
}

void checkReplaceImageRequest(api.ReplaceImageRequest o) {
  buildCounterReplaceImageRequest++;
  if (buildCounterReplaceImageRequest < 3) {
    unittest.expect(
      o.imageObjectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageReplaceMethod!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterReplaceImageRequest--;
}

core.int buildCounterRequest = 0;
api.Request buildRequest() {
  final o = api.Request();
  buildCounterRequest++;
  if (buildCounterRequest < 3) {
    o.createImage = buildCreateImageRequest();
    o.createLine = buildCreateLineRequest();
    o.createParagraphBullets = buildCreateParagraphBulletsRequest();
    o.createShape = buildCreateShapeRequest();
    o.createSheetsChart = buildCreateSheetsChartRequest();
    o.createSlide = buildCreateSlideRequest();
    o.createTable = buildCreateTableRequest();
    o.createVideo = buildCreateVideoRequest();
    o.deleteObject = buildDeleteObjectRequest();
    o.deleteParagraphBullets = buildDeleteParagraphBulletsRequest();
    o.deleteTableColumn = buildDeleteTableColumnRequest();
    o.deleteTableRow = buildDeleteTableRowRequest();
    o.deleteText = buildDeleteTextRequest();
    o.duplicateObject = buildDuplicateObjectRequest();
    o.groupObjects = buildGroupObjectsRequest();
    o.insertTableColumns = buildInsertTableColumnsRequest();
    o.insertTableRows = buildInsertTableRowsRequest();
    o.insertText = buildInsertTextRequest();
    o.mergeTableCells = buildMergeTableCellsRequest();
    o.refreshSheetsChart = buildRefreshSheetsChartRequest();
    o.replaceAllShapesWithImage = buildReplaceAllShapesWithImageRequest();
    o.replaceAllShapesWithSheetsChart =
        buildReplaceAllShapesWithSheetsChartRequest();
    o.replaceAllText = buildReplaceAllTextRequest();
    o.replaceImage = buildReplaceImageRequest();
    o.rerouteLine = buildRerouteLineRequest();
    o.ungroupObjects = buildUngroupObjectsRequest();
    o.unmergeTableCells = buildUnmergeTableCellsRequest();
    o.updateImageProperties = buildUpdateImagePropertiesRequest();
    o.updateLineCategory = buildUpdateLineCategoryRequest();
    o.updateLineProperties = buildUpdateLinePropertiesRequest();
    o.updatePageElementAltText = buildUpdatePageElementAltTextRequest();
    o.updatePageElementTransform = buildUpdatePageElementTransformRequest();
    o.updatePageElementsZOrder = buildUpdatePageElementsZOrderRequest();
    o.updatePageProperties = buildUpdatePagePropertiesRequest();
    o.updateParagraphStyle = buildUpdateParagraphStyleRequest();
    o.updateShapeProperties = buildUpdateShapePropertiesRequest();
    o.updateSlideProperties = buildUpdateSlidePropertiesRequest();
    o.updateSlidesPosition = buildUpdateSlidesPositionRequest();
    o.updateTableBorderProperties = buildUpdateTableBorderPropertiesRequest();
    o.updateTableCellProperties = buildUpdateTableCellPropertiesRequest();
    o.updateTableColumnProperties = buildUpdateTableColumnPropertiesRequest();
    o.updateTableRowProperties = buildUpdateTableRowPropertiesRequest();
    o.updateTextStyle = buildUpdateTextStyleRequest();
    o.updateVideoProperties = buildUpdateVideoPropertiesRequest();
  }
  buildCounterRequest--;
  return o;
}

void checkRequest(api.Request o) {
  buildCounterRequest++;
  if (buildCounterRequest < 3) {
    checkCreateImageRequest(o.createImage!);
    checkCreateLineRequest(o.createLine!);
    checkCreateParagraphBulletsRequest(o.createParagraphBullets!);
    checkCreateShapeRequest(o.createShape!);
    checkCreateSheetsChartRequest(o.createSheetsChart!);
    checkCreateSlideRequest(o.createSlide!);
    checkCreateTableRequest(o.createTable!);
    checkCreateVideoRequest(o.createVideo!);
    checkDeleteObjectRequest(o.deleteObject!);
    checkDeleteParagraphBulletsRequest(o.deleteParagraphBullets!);
    checkDeleteTableColumnRequest(o.deleteTableColumn!);
    checkDeleteTableRowRequest(o.deleteTableRow!);
    checkDeleteTextRequest(o.deleteText!);
    checkDuplicateObjectRequest(o.duplicateObject!);
    checkGroupObjectsRequest(o.groupObjects!);
    checkInsertTableColumnsRequest(o.insertTableColumns!);
    checkInsertTableRowsRequest(o.insertTableRows!);
    checkInsertTextRequest(o.insertText!);
    checkMergeTableCellsRequest(o.mergeTableCells!);
    checkRefreshSheetsChartRequest(o.refreshSheetsChart!);
    checkReplaceAllShapesWithImageRequest(o.replaceAllShapesWithImage!);
    checkReplaceAllShapesWithSheetsChartRequest(
        o.replaceAllShapesWithSheetsChart!);
    checkReplaceAllTextRequest(o.replaceAllText!);
    checkReplaceImageRequest(o.replaceImage!);
    checkRerouteLineRequest(o.rerouteLine!);
    checkUngroupObjectsRequest(o.ungroupObjects!);
    checkUnmergeTableCellsRequest(o.unmergeTableCells!);
    checkUpdateImagePropertiesRequest(o.updateImageProperties!);
    checkUpdateLineCategoryRequest(o.updateLineCategory!);
    checkUpdateLinePropertiesRequest(o.updateLineProperties!);
    checkUpdatePageElementAltTextRequest(o.updatePageElementAltText!);
    checkUpdatePageElementTransformRequest(o.updatePageElementTransform!);
    checkUpdatePageElementsZOrderRequest(o.updatePageElementsZOrder!);
    checkUpdatePagePropertiesRequest(o.updatePageProperties!);
    checkUpdateParagraphStyleRequest(o.updateParagraphStyle!);
    checkUpdateShapePropertiesRequest(o.updateShapeProperties!);
    checkUpdateSlidePropertiesRequest(o.updateSlideProperties!);
    checkUpdateSlidesPositionRequest(o.updateSlidesPosition!);
    checkUpdateTableBorderPropertiesRequest(o.updateTableBorderProperties!);
    checkUpdateTableCellPropertiesRequest(o.updateTableCellProperties!);
    checkUpdateTableColumnPropertiesRequest(o.updateTableColumnProperties!);
    checkUpdateTableRowPropertiesRequest(o.updateTableRowProperties!);
    checkUpdateTextStyleRequest(o.updateTextStyle!);
    checkUpdateVideoPropertiesRequest(o.updateVideoProperties!);
  }
  buildCounterRequest--;
}

core.int buildCounterRerouteLineRequest = 0;
api.RerouteLineRequest buildRerouteLineRequest() {
  final o = api.RerouteLineRequest();
  buildCounterRerouteLineRequest++;
  if (buildCounterRerouteLineRequest < 3) {
    o.objectId = 'foo';
  }
  buildCounterRerouteLineRequest--;
  return o;
}

void checkRerouteLineRequest(api.RerouteLineRequest o) {
  buildCounterRerouteLineRequest++;
  if (buildCounterRerouteLineRequest < 3) {
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRerouteLineRequest--;
}

core.int buildCounterResponse = 0;
api.Response buildResponse() {
  final o = api.Response();
  buildCounterResponse++;
  if (buildCounterResponse < 3) {
    o.createImage = buildCreateImageResponse();
    o.createLine = buildCreateLineResponse();
    o.createShape = buildCreateShapeResponse();
    o.createSheetsChart = buildCreateSheetsChartResponse();
    o.createSlide = buildCreateSlideResponse();
    o.createTable = buildCreateTableResponse();
    o.createVideo = buildCreateVideoResponse();
    o.duplicateObject = buildDuplicateObjectResponse();
    o.groupObjects = buildGroupObjectsResponse();
    o.replaceAllShapesWithImage = buildReplaceAllShapesWithImageResponse();
    o.replaceAllShapesWithSheetsChart =
        buildReplaceAllShapesWithSheetsChartResponse();
    o.replaceAllText = buildReplaceAllTextResponse();
  }
  buildCounterResponse--;
  return o;
}

void checkResponse(api.Response o) {
  buildCounterResponse++;
  if (buildCounterResponse < 3) {
    checkCreateImageResponse(o.createImage!);
    checkCreateLineResponse(o.createLine!);
    checkCreateShapeResponse(o.createShape!);
    checkCreateSheetsChartResponse(o.createSheetsChart!);
    checkCreateSlideResponse(o.createSlide!);
    checkCreateTableResponse(o.createTable!);
    checkCreateVideoResponse(o.createVideo!);
    checkDuplicateObjectResponse(o.duplicateObject!);
    checkGroupObjectsResponse(o.groupObjects!);
    checkReplaceAllShapesWithImageResponse(o.replaceAllShapesWithImage!);
    checkReplaceAllShapesWithSheetsChartResponse(
        o.replaceAllShapesWithSheetsChart!);
    checkReplaceAllTextResponse(o.replaceAllText!);
  }
  buildCounterResponse--;
}

core.int buildCounterRgbColor = 0;
api.RgbColor buildRgbColor() {
  final o = api.RgbColor();
  buildCounterRgbColor++;
  if (buildCounterRgbColor < 3) {
    o.blue = 42.0;
    o.green = 42.0;
    o.red = 42.0;
  }
  buildCounterRgbColor--;
  return o;
}

void checkRgbColor(api.RgbColor o) {
  buildCounterRgbColor++;
  if (buildCounterRgbColor < 3) {
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
  buildCounterRgbColor--;
}

core.int buildCounterShadow = 0;
api.Shadow buildShadow() {
  final o = api.Shadow();
  buildCounterShadow++;
  if (buildCounterShadow < 3) {
    o.alignment = 'foo';
    o.alpha = 42.0;
    o.blurRadius = buildDimension();
    o.color = buildOpaqueColor();
    o.propertyState = 'foo';
    o.rotateWithShape = true;
    o.transform = buildAffineTransform();
    o.type = 'foo';
  }
  buildCounterShadow--;
  return o;
}

void checkShadow(api.Shadow o) {
  buildCounterShadow++;
  if (buildCounterShadow < 3) {
    unittest.expect(
      o.alignment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.alpha!,
      unittest.equals(42.0),
    );
    checkDimension(o.blurRadius!);
    checkOpaqueColor(o.color!);
    unittest.expect(
      o.propertyState!,
      unittest.equals('foo'),
    );
    unittest.expect(o.rotateWithShape!, unittest.isTrue);
    checkAffineTransform(o.transform!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterShadow--;
}

core.int buildCounterShape = 0;
api.Shape buildShape() {
  final o = api.Shape();
  buildCounterShape++;
  if (buildCounterShape < 3) {
    o.placeholder = buildPlaceholder();
    o.shapeProperties = buildShapeProperties();
    o.shapeType = 'foo';
    o.text = buildTextContent();
  }
  buildCounterShape--;
  return o;
}

void checkShape(api.Shape o) {
  buildCounterShape++;
  if (buildCounterShape < 3) {
    checkPlaceholder(o.placeholder!);
    checkShapeProperties(o.shapeProperties!);
    unittest.expect(
      o.shapeType!,
      unittest.equals('foo'),
    );
    checkTextContent(o.text!);
  }
  buildCounterShape--;
}

core.int buildCounterShapeBackgroundFill = 0;
api.ShapeBackgroundFill buildShapeBackgroundFill() {
  final o = api.ShapeBackgroundFill();
  buildCounterShapeBackgroundFill++;
  if (buildCounterShapeBackgroundFill < 3) {
    o.propertyState = 'foo';
    o.solidFill = buildSolidFill();
  }
  buildCounterShapeBackgroundFill--;
  return o;
}

void checkShapeBackgroundFill(api.ShapeBackgroundFill o) {
  buildCounterShapeBackgroundFill++;
  if (buildCounterShapeBackgroundFill < 3) {
    unittest.expect(
      o.propertyState!,
      unittest.equals('foo'),
    );
    checkSolidFill(o.solidFill!);
  }
  buildCounterShapeBackgroundFill--;
}

core.int buildCounterShapeProperties = 0;
api.ShapeProperties buildShapeProperties() {
  final o = api.ShapeProperties();
  buildCounterShapeProperties++;
  if (buildCounterShapeProperties < 3) {
    o.autofit = buildAutofit();
    o.contentAlignment = 'foo';
    o.link = buildLink();
    o.outline = buildOutline();
    o.shadow = buildShadow();
    o.shapeBackgroundFill = buildShapeBackgroundFill();
  }
  buildCounterShapeProperties--;
  return o;
}

void checkShapeProperties(api.ShapeProperties o) {
  buildCounterShapeProperties++;
  if (buildCounterShapeProperties < 3) {
    checkAutofit(o.autofit!);
    unittest.expect(
      o.contentAlignment!,
      unittest.equals('foo'),
    );
    checkLink(o.link!);
    checkOutline(o.outline!);
    checkShadow(o.shadow!);
    checkShapeBackgroundFill(o.shapeBackgroundFill!);
  }
  buildCounterShapeProperties--;
}

core.int buildCounterSheetsChart = 0;
api.SheetsChart buildSheetsChart() {
  final o = api.SheetsChart();
  buildCounterSheetsChart++;
  if (buildCounterSheetsChart < 3) {
    o.chartId = 42;
    o.contentUrl = 'foo';
    o.sheetsChartProperties = buildSheetsChartProperties();
    o.spreadsheetId = 'foo';
  }
  buildCounterSheetsChart--;
  return o;
}

void checkSheetsChart(api.SheetsChart o) {
  buildCounterSheetsChart++;
  if (buildCounterSheetsChart < 3) {
    unittest.expect(
      o.chartId!,
      unittest.equals(42),
    );
    unittest.expect(
      o.contentUrl!,
      unittest.equals('foo'),
    );
    checkSheetsChartProperties(o.sheetsChartProperties!);
    unittest.expect(
      o.spreadsheetId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSheetsChart--;
}

core.int buildCounterSheetsChartProperties = 0;
api.SheetsChartProperties buildSheetsChartProperties() {
  final o = api.SheetsChartProperties();
  buildCounterSheetsChartProperties++;
  if (buildCounterSheetsChartProperties < 3) {
    o.chartImageProperties = buildImageProperties();
  }
  buildCounterSheetsChartProperties--;
  return o;
}

void checkSheetsChartProperties(api.SheetsChartProperties o) {
  buildCounterSheetsChartProperties++;
  if (buildCounterSheetsChartProperties < 3) {
    checkImageProperties(o.chartImageProperties!);
  }
  buildCounterSheetsChartProperties--;
}

core.int buildCounterSize = 0;
api.Size buildSize() {
  final o = api.Size();
  buildCounterSize++;
  if (buildCounterSize < 3) {
    o.height = buildDimension();
    o.width = buildDimension();
  }
  buildCounterSize--;
  return o;
}

void checkSize(api.Size o) {
  buildCounterSize++;
  if (buildCounterSize < 3) {
    checkDimension(o.height!);
    checkDimension(o.width!);
  }
  buildCounterSize--;
}

core.int buildCounterSlideProperties = 0;
api.SlideProperties buildSlideProperties() {
  final o = api.SlideProperties();
  buildCounterSlideProperties++;
  if (buildCounterSlideProperties < 3) {
    o.isSkipped = true;
    o.layoutObjectId = 'foo';
    o.masterObjectId = 'foo';
    o.notesPage = buildPage();
  }
  buildCounterSlideProperties--;
  return o;
}

void checkSlideProperties(api.SlideProperties o) {
  buildCounterSlideProperties++;
  if (buildCounterSlideProperties < 3) {
    unittest.expect(o.isSkipped!, unittest.isTrue);
    unittest.expect(
      o.layoutObjectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.masterObjectId!,
      unittest.equals('foo'),
    );
    checkPage(o.notesPage!);
  }
  buildCounterSlideProperties--;
}

core.int buildCounterSolidFill = 0;
api.SolidFill buildSolidFill() {
  final o = api.SolidFill();
  buildCounterSolidFill++;
  if (buildCounterSolidFill < 3) {
    o.alpha = 42.0;
    o.color = buildOpaqueColor();
  }
  buildCounterSolidFill--;
  return o;
}

void checkSolidFill(api.SolidFill o) {
  buildCounterSolidFill++;
  if (buildCounterSolidFill < 3) {
    unittest.expect(
      o.alpha!,
      unittest.equals(42.0),
    );
    checkOpaqueColor(o.color!);
  }
  buildCounterSolidFill--;
}

core.int buildCounterStretchedPictureFill = 0;
api.StretchedPictureFill buildStretchedPictureFill() {
  final o = api.StretchedPictureFill();
  buildCounterStretchedPictureFill++;
  if (buildCounterStretchedPictureFill < 3) {
    o.contentUrl = 'foo';
    o.size = buildSize();
  }
  buildCounterStretchedPictureFill--;
  return o;
}

void checkStretchedPictureFill(api.StretchedPictureFill o) {
  buildCounterStretchedPictureFill++;
  if (buildCounterStretchedPictureFill < 3) {
    unittest.expect(
      o.contentUrl!,
      unittest.equals('foo'),
    );
    checkSize(o.size!);
  }
  buildCounterStretchedPictureFill--;
}

core.int buildCounterSubstringMatchCriteria = 0;
api.SubstringMatchCriteria buildSubstringMatchCriteria() {
  final o = api.SubstringMatchCriteria();
  buildCounterSubstringMatchCriteria++;
  if (buildCounterSubstringMatchCriteria < 3) {
    o.matchCase = true;
    o.text = 'foo';
  }
  buildCounterSubstringMatchCriteria--;
  return o;
}

void checkSubstringMatchCriteria(api.SubstringMatchCriteria o) {
  buildCounterSubstringMatchCriteria++;
  if (buildCounterSubstringMatchCriteria < 3) {
    unittest.expect(o.matchCase!, unittest.isTrue);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterSubstringMatchCriteria--;
}

core.List<api.TableBorderRow> buildUnnamed2629() => [
      buildTableBorderRow(),
      buildTableBorderRow(),
    ];

void checkUnnamed2629(core.List<api.TableBorderRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableBorderRow(o[0]);
  checkTableBorderRow(o[1]);
}

core.List<api.TableColumnProperties> buildUnnamed2630() => [
      buildTableColumnProperties(),
      buildTableColumnProperties(),
    ];

void checkUnnamed2630(core.List<api.TableColumnProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableColumnProperties(o[0]);
  checkTableColumnProperties(o[1]);
}

core.List<api.TableRow> buildUnnamed2631() => [
      buildTableRow(),
      buildTableRow(),
    ];

void checkUnnamed2631(core.List<api.TableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableRow(o[0]);
  checkTableRow(o[1]);
}

core.List<api.TableBorderRow> buildUnnamed2632() => [
      buildTableBorderRow(),
      buildTableBorderRow(),
    ];

void checkUnnamed2632(core.List<api.TableBorderRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableBorderRow(o[0]);
  checkTableBorderRow(o[1]);
}

core.int buildCounterTable = 0;
api.Table buildTable() {
  final o = api.Table();
  buildCounterTable++;
  if (buildCounterTable < 3) {
    o.columns = 42;
    o.horizontalBorderRows = buildUnnamed2629();
    o.rows = 42;
    o.tableColumns = buildUnnamed2630();
    o.tableRows = buildUnnamed2631();
    o.verticalBorderRows = buildUnnamed2632();
  }
  buildCounterTable--;
  return o;
}

void checkTable(api.Table o) {
  buildCounterTable++;
  if (buildCounterTable < 3) {
    unittest.expect(
      o.columns!,
      unittest.equals(42),
    );
    checkUnnamed2629(o.horizontalBorderRows!);
    unittest.expect(
      o.rows!,
      unittest.equals(42),
    );
    checkUnnamed2630(o.tableColumns!);
    checkUnnamed2631(o.tableRows!);
    checkUnnamed2632(o.verticalBorderRows!);
  }
  buildCounterTable--;
}

core.int buildCounterTableBorderCell = 0;
api.TableBorderCell buildTableBorderCell() {
  final o = api.TableBorderCell();
  buildCounterTableBorderCell++;
  if (buildCounterTableBorderCell < 3) {
    o.location = buildTableCellLocation();
    o.tableBorderProperties = buildTableBorderProperties();
  }
  buildCounterTableBorderCell--;
  return o;
}

void checkTableBorderCell(api.TableBorderCell o) {
  buildCounterTableBorderCell++;
  if (buildCounterTableBorderCell < 3) {
    checkTableCellLocation(o.location!);
    checkTableBorderProperties(o.tableBorderProperties!);
  }
  buildCounterTableBorderCell--;
}

core.int buildCounterTableBorderFill = 0;
api.TableBorderFill buildTableBorderFill() {
  final o = api.TableBorderFill();
  buildCounterTableBorderFill++;
  if (buildCounterTableBorderFill < 3) {
    o.solidFill = buildSolidFill();
  }
  buildCounterTableBorderFill--;
  return o;
}

void checkTableBorderFill(api.TableBorderFill o) {
  buildCounterTableBorderFill++;
  if (buildCounterTableBorderFill < 3) {
    checkSolidFill(o.solidFill!);
  }
  buildCounterTableBorderFill--;
}

core.int buildCounterTableBorderProperties = 0;
api.TableBorderProperties buildTableBorderProperties() {
  final o = api.TableBorderProperties();
  buildCounterTableBorderProperties++;
  if (buildCounterTableBorderProperties < 3) {
    o.dashStyle = 'foo';
    o.tableBorderFill = buildTableBorderFill();
    o.weight = buildDimension();
  }
  buildCounterTableBorderProperties--;
  return o;
}

void checkTableBorderProperties(api.TableBorderProperties o) {
  buildCounterTableBorderProperties++;
  if (buildCounterTableBorderProperties < 3) {
    unittest.expect(
      o.dashStyle!,
      unittest.equals('foo'),
    );
    checkTableBorderFill(o.tableBorderFill!);
    checkDimension(o.weight!);
  }
  buildCounterTableBorderProperties--;
}

core.List<api.TableBorderCell> buildUnnamed2633() => [
      buildTableBorderCell(),
      buildTableBorderCell(),
    ];

void checkUnnamed2633(core.List<api.TableBorderCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableBorderCell(o[0]);
  checkTableBorderCell(o[1]);
}

core.int buildCounterTableBorderRow = 0;
api.TableBorderRow buildTableBorderRow() {
  final o = api.TableBorderRow();
  buildCounterTableBorderRow++;
  if (buildCounterTableBorderRow < 3) {
    o.tableBorderCells = buildUnnamed2633();
  }
  buildCounterTableBorderRow--;
  return o;
}

void checkTableBorderRow(api.TableBorderRow o) {
  buildCounterTableBorderRow++;
  if (buildCounterTableBorderRow < 3) {
    checkUnnamed2633(o.tableBorderCells!);
  }
  buildCounterTableBorderRow--;
}

core.int buildCounterTableCell = 0;
api.TableCell buildTableCell() {
  final o = api.TableCell();
  buildCounterTableCell++;
  if (buildCounterTableCell < 3) {
    o.columnSpan = 42;
    o.location = buildTableCellLocation();
    o.rowSpan = 42;
    o.tableCellProperties = buildTableCellProperties();
    o.text = buildTextContent();
  }
  buildCounterTableCell--;
  return o;
}

void checkTableCell(api.TableCell o) {
  buildCounterTableCell++;
  if (buildCounterTableCell < 3) {
    unittest.expect(
      o.columnSpan!,
      unittest.equals(42),
    );
    checkTableCellLocation(o.location!);
    unittest.expect(
      o.rowSpan!,
      unittest.equals(42),
    );
    checkTableCellProperties(o.tableCellProperties!);
    checkTextContent(o.text!);
  }
  buildCounterTableCell--;
}

core.int buildCounterTableCellBackgroundFill = 0;
api.TableCellBackgroundFill buildTableCellBackgroundFill() {
  final o = api.TableCellBackgroundFill();
  buildCounterTableCellBackgroundFill++;
  if (buildCounterTableCellBackgroundFill < 3) {
    o.propertyState = 'foo';
    o.solidFill = buildSolidFill();
  }
  buildCounterTableCellBackgroundFill--;
  return o;
}

void checkTableCellBackgroundFill(api.TableCellBackgroundFill o) {
  buildCounterTableCellBackgroundFill++;
  if (buildCounterTableCellBackgroundFill < 3) {
    unittest.expect(
      o.propertyState!,
      unittest.equals('foo'),
    );
    checkSolidFill(o.solidFill!);
  }
  buildCounterTableCellBackgroundFill--;
}

core.int buildCounterTableCellLocation = 0;
api.TableCellLocation buildTableCellLocation() {
  final o = api.TableCellLocation();
  buildCounterTableCellLocation++;
  if (buildCounterTableCellLocation < 3) {
    o.columnIndex = 42;
    o.rowIndex = 42;
  }
  buildCounterTableCellLocation--;
  return o;
}

void checkTableCellLocation(api.TableCellLocation o) {
  buildCounterTableCellLocation++;
  if (buildCounterTableCellLocation < 3) {
    unittest.expect(
      o.columnIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.rowIndex!,
      unittest.equals(42),
    );
  }
  buildCounterTableCellLocation--;
}

core.int buildCounterTableCellProperties = 0;
api.TableCellProperties buildTableCellProperties() {
  final o = api.TableCellProperties();
  buildCounterTableCellProperties++;
  if (buildCounterTableCellProperties < 3) {
    o.contentAlignment = 'foo';
    o.tableCellBackgroundFill = buildTableCellBackgroundFill();
  }
  buildCounterTableCellProperties--;
  return o;
}

void checkTableCellProperties(api.TableCellProperties o) {
  buildCounterTableCellProperties++;
  if (buildCounterTableCellProperties < 3) {
    unittest.expect(
      o.contentAlignment!,
      unittest.equals('foo'),
    );
    checkTableCellBackgroundFill(o.tableCellBackgroundFill!);
  }
  buildCounterTableCellProperties--;
}

core.int buildCounterTableColumnProperties = 0;
api.TableColumnProperties buildTableColumnProperties() {
  final o = api.TableColumnProperties();
  buildCounterTableColumnProperties++;
  if (buildCounterTableColumnProperties < 3) {
    o.columnWidth = buildDimension();
  }
  buildCounterTableColumnProperties--;
  return o;
}

void checkTableColumnProperties(api.TableColumnProperties o) {
  buildCounterTableColumnProperties++;
  if (buildCounterTableColumnProperties < 3) {
    checkDimension(o.columnWidth!);
  }
  buildCounterTableColumnProperties--;
}

core.int buildCounterTableRange = 0;
api.TableRange buildTableRange() {
  final o = api.TableRange();
  buildCounterTableRange++;
  if (buildCounterTableRange < 3) {
    o.columnSpan = 42;
    o.location = buildTableCellLocation();
    o.rowSpan = 42;
  }
  buildCounterTableRange--;
  return o;
}

void checkTableRange(api.TableRange o) {
  buildCounterTableRange++;
  if (buildCounterTableRange < 3) {
    unittest.expect(
      o.columnSpan!,
      unittest.equals(42),
    );
    checkTableCellLocation(o.location!);
    unittest.expect(
      o.rowSpan!,
      unittest.equals(42),
    );
  }
  buildCounterTableRange--;
}

core.List<api.TableCell> buildUnnamed2634() => [
      buildTableCell(),
      buildTableCell(),
    ];

void checkUnnamed2634(core.List<api.TableCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableCell(o[0]);
  checkTableCell(o[1]);
}

core.int buildCounterTableRow = 0;
api.TableRow buildTableRow() {
  final o = api.TableRow();
  buildCounterTableRow++;
  if (buildCounterTableRow < 3) {
    o.rowHeight = buildDimension();
    o.tableCells = buildUnnamed2634();
    o.tableRowProperties = buildTableRowProperties();
  }
  buildCounterTableRow--;
  return o;
}

void checkTableRow(api.TableRow o) {
  buildCounterTableRow++;
  if (buildCounterTableRow < 3) {
    checkDimension(o.rowHeight!);
    checkUnnamed2634(o.tableCells!);
    checkTableRowProperties(o.tableRowProperties!);
  }
  buildCounterTableRow--;
}

core.int buildCounterTableRowProperties = 0;
api.TableRowProperties buildTableRowProperties() {
  final o = api.TableRowProperties();
  buildCounterTableRowProperties++;
  if (buildCounterTableRowProperties < 3) {
    o.minRowHeight = buildDimension();
  }
  buildCounterTableRowProperties--;
  return o;
}

void checkTableRowProperties(api.TableRowProperties o) {
  buildCounterTableRowProperties++;
  if (buildCounterTableRowProperties < 3) {
    checkDimension(o.minRowHeight!);
  }
  buildCounterTableRowProperties--;
}

core.Map<core.String, api.List> buildUnnamed2635() => {
      'x': buildList(),
      'y': buildList(),
    };

void checkUnnamed2635(core.Map<core.String, api.List> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkList(o['x']!);
  checkList(o['y']!);
}

core.List<api.TextElement> buildUnnamed2636() => [
      buildTextElement(),
      buildTextElement(),
    ];

void checkUnnamed2636(core.List<api.TextElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTextElement(o[0]);
  checkTextElement(o[1]);
}

core.int buildCounterTextContent = 0;
api.TextContent buildTextContent() {
  final o = api.TextContent();
  buildCounterTextContent++;
  if (buildCounterTextContent < 3) {
    o.lists = buildUnnamed2635();
    o.textElements = buildUnnamed2636();
  }
  buildCounterTextContent--;
  return o;
}

void checkTextContent(api.TextContent o) {
  buildCounterTextContent++;
  if (buildCounterTextContent < 3) {
    checkUnnamed2635(o.lists!);
    checkUnnamed2636(o.textElements!);
  }
  buildCounterTextContent--;
}

core.int buildCounterTextElement = 0;
api.TextElement buildTextElement() {
  final o = api.TextElement();
  buildCounterTextElement++;
  if (buildCounterTextElement < 3) {
    o.autoText = buildAutoText();
    o.endIndex = 42;
    o.paragraphMarker = buildParagraphMarker();
    o.startIndex = 42;
    o.textRun = buildTextRun();
  }
  buildCounterTextElement--;
  return o;
}

void checkTextElement(api.TextElement o) {
  buildCounterTextElement++;
  if (buildCounterTextElement < 3) {
    checkAutoText(o.autoText!);
    unittest.expect(
      o.endIndex!,
      unittest.equals(42),
    );
    checkParagraphMarker(o.paragraphMarker!);
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    checkTextRun(o.textRun!);
  }
  buildCounterTextElement--;
}

core.int buildCounterTextRun = 0;
api.TextRun buildTextRun() {
  final o = api.TextRun();
  buildCounterTextRun++;
  if (buildCounterTextRun < 3) {
    o.content = 'foo';
    o.style = buildTextStyle();
  }
  buildCounterTextRun--;
  return o;
}

void checkTextRun(api.TextRun o) {
  buildCounterTextRun++;
  if (buildCounterTextRun < 3) {
    unittest.expect(
      o.content!,
      unittest.equals('foo'),
    );
    checkTextStyle(o.style!);
  }
  buildCounterTextRun--;
}

core.int buildCounterTextStyle = 0;
api.TextStyle buildTextStyle() {
  final o = api.TextStyle();
  buildCounterTextStyle++;
  if (buildCounterTextStyle < 3) {
    o.backgroundColor = buildOptionalColor();
    o.baselineOffset = 'foo';
    o.bold = true;
    o.fontFamily = 'foo';
    o.fontSize = buildDimension();
    o.foregroundColor = buildOptionalColor();
    o.italic = true;
    o.link = buildLink();
    o.smallCaps = true;
    o.strikethrough = true;
    o.underline = true;
    o.weightedFontFamily = buildWeightedFontFamily();
  }
  buildCounterTextStyle--;
  return o;
}

void checkTextStyle(api.TextStyle o) {
  buildCounterTextStyle++;
  if (buildCounterTextStyle < 3) {
    checkOptionalColor(o.backgroundColor!);
    unittest.expect(
      o.baselineOffset!,
      unittest.equals('foo'),
    );
    unittest.expect(o.bold!, unittest.isTrue);
    unittest.expect(
      o.fontFamily!,
      unittest.equals('foo'),
    );
    checkDimension(o.fontSize!);
    checkOptionalColor(o.foregroundColor!);
    unittest.expect(o.italic!, unittest.isTrue);
    checkLink(o.link!);
    unittest.expect(o.smallCaps!, unittest.isTrue);
    unittest.expect(o.strikethrough!, unittest.isTrue);
    unittest.expect(o.underline!, unittest.isTrue);
    checkWeightedFontFamily(o.weightedFontFamily!);
  }
  buildCounterTextStyle--;
}

core.int buildCounterThemeColorPair = 0;
api.ThemeColorPair buildThemeColorPair() {
  final o = api.ThemeColorPair();
  buildCounterThemeColorPair++;
  if (buildCounterThemeColorPair < 3) {
    o.color = buildRgbColor();
    o.type = 'foo';
  }
  buildCounterThemeColorPair--;
  return o;
}

void checkThemeColorPair(api.ThemeColorPair o) {
  buildCounterThemeColorPair++;
  if (buildCounterThemeColorPair < 3) {
    checkRgbColor(o.color!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterThemeColorPair--;
}

core.int buildCounterThumbnail = 0;
api.Thumbnail buildThumbnail() {
  final o = api.Thumbnail();
  buildCounterThumbnail++;
  if (buildCounterThumbnail < 3) {
    o.contentUrl = 'foo';
    o.height = 42;
    o.width = 42;
  }
  buildCounterThumbnail--;
  return o;
}

void checkThumbnail(api.Thumbnail o) {
  buildCounterThumbnail++;
  if (buildCounterThumbnail < 3) {
    unittest.expect(
      o.contentUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.height!,
      unittest.equals(42),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42),
    );
  }
  buildCounterThumbnail--;
}

core.List<core.String> buildUnnamed2637() => [
      'foo',
      'foo',
    ];

void checkUnnamed2637(core.List<core.String> o) {
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

core.int buildCounterUngroupObjectsRequest = 0;
api.UngroupObjectsRequest buildUngroupObjectsRequest() {
  final o = api.UngroupObjectsRequest();
  buildCounterUngroupObjectsRequest++;
  if (buildCounterUngroupObjectsRequest < 3) {
    o.objectIds = buildUnnamed2637();
  }
  buildCounterUngroupObjectsRequest--;
  return o;
}

void checkUngroupObjectsRequest(api.UngroupObjectsRequest o) {
  buildCounterUngroupObjectsRequest++;
  if (buildCounterUngroupObjectsRequest < 3) {
    checkUnnamed2637(o.objectIds!);
  }
  buildCounterUngroupObjectsRequest--;
}

core.int buildCounterUnmergeTableCellsRequest = 0;
api.UnmergeTableCellsRequest buildUnmergeTableCellsRequest() {
  final o = api.UnmergeTableCellsRequest();
  buildCounterUnmergeTableCellsRequest++;
  if (buildCounterUnmergeTableCellsRequest < 3) {
    o.objectId = 'foo';
    o.tableRange = buildTableRange();
  }
  buildCounterUnmergeTableCellsRequest--;
  return o;
}

void checkUnmergeTableCellsRequest(api.UnmergeTableCellsRequest o) {
  buildCounterUnmergeTableCellsRequest++;
  if (buildCounterUnmergeTableCellsRequest < 3) {
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    checkTableRange(o.tableRange!);
  }
  buildCounterUnmergeTableCellsRequest--;
}

core.int buildCounterUpdateImagePropertiesRequest = 0;
api.UpdateImagePropertiesRequest buildUpdateImagePropertiesRequest() {
  final o = api.UpdateImagePropertiesRequest();
  buildCounterUpdateImagePropertiesRequest++;
  if (buildCounterUpdateImagePropertiesRequest < 3) {
    o.fields = 'foo';
    o.imageProperties = buildImageProperties();
    o.objectId = 'foo';
  }
  buildCounterUpdateImagePropertiesRequest--;
  return o;
}

void checkUpdateImagePropertiesRequest(api.UpdateImagePropertiesRequest o) {
  buildCounterUpdateImagePropertiesRequest++;
  if (buildCounterUpdateImagePropertiesRequest < 3) {
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
    checkImageProperties(o.imageProperties!);
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateImagePropertiesRequest--;
}

core.int buildCounterUpdateLineCategoryRequest = 0;
api.UpdateLineCategoryRequest buildUpdateLineCategoryRequest() {
  final o = api.UpdateLineCategoryRequest();
  buildCounterUpdateLineCategoryRequest++;
  if (buildCounterUpdateLineCategoryRequest < 3) {
    o.lineCategory = 'foo';
    o.objectId = 'foo';
  }
  buildCounterUpdateLineCategoryRequest--;
  return o;
}

void checkUpdateLineCategoryRequest(api.UpdateLineCategoryRequest o) {
  buildCounterUpdateLineCategoryRequest++;
  if (buildCounterUpdateLineCategoryRequest < 3) {
    unittest.expect(
      o.lineCategory!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateLineCategoryRequest--;
}

core.int buildCounterUpdateLinePropertiesRequest = 0;
api.UpdateLinePropertiesRequest buildUpdateLinePropertiesRequest() {
  final o = api.UpdateLinePropertiesRequest();
  buildCounterUpdateLinePropertiesRequest++;
  if (buildCounterUpdateLinePropertiesRequest < 3) {
    o.fields = 'foo';
    o.lineProperties = buildLineProperties();
    o.objectId = 'foo';
  }
  buildCounterUpdateLinePropertiesRequest--;
  return o;
}

void checkUpdateLinePropertiesRequest(api.UpdateLinePropertiesRequest o) {
  buildCounterUpdateLinePropertiesRequest++;
  if (buildCounterUpdateLinePropertiesRequest < 3) {
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
    checkLineProperties(o.lineProperties!);
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateLinePropertiesRequest--;
}

core.int buildCounterUpdatePageElementAltTextRequest = 0;
api.UpdatePageElementAltTextRequest buildUpdatePageElementAltTextRequest() {
  final o = api.UpdatePageElementAltTextRequest();
  buildCounterUpdatePageElementAltTextRequest++;
  if (buildCounterUpdatePageElementAltTextRequest < 3) {
    o.description = 'foo';
    o.objectId = 'foo';
    o.title = 'foo';
  }
  buildCounterUpdatePageElementAltTextRequest--;
  return o;
}

void checkUpdatePageElementAltTextRequest(
    api.UpdatePageElementAltTextRequest o) {
  buildCounterUpdatePageElementAltTextRequest++;
  if (buildCounterUpdatePageElementAltTextRequest < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdatePageElementAltTextRequest--;
}

core.int buildCounterUpdatePageElementTransformRequest = 0;
api.UpdatePageElementTransformRequest buildUpdatePageElementTransformRequest() {
  final o = api.UpdatePageElementTransformRequest();
  buildCounterUpdatePageElementTransformRequest++;
  if (buildCounterUpdatePageElementTransformRequest < 3) {
    o.applyMode = 'foo';
    o.objectId = 'foo';
    o.transform = buildAffineTransform();
  }
  buildCounterUpdatePageElementTransformRequest--;
  return o;
}

void checkUpdatePageElementTransformRequest(
    api.UpdatePageElementTransformRequest o) {
  buildCounterUpdatePageElementTransformRequest++;
  if (buildCounterUpdatePageElementTransformRequest < 3) {
    unittest.expect(
      o.applyMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    checkAffineTransform(o.transform!);
  }
  buildCounterUpdatePageElementTransformRequest--;
}

core.List<core.String> buildUnnamed2638() => [
      'foo',
      'foo',
    ];

void checkUnnamed2638(core.List<core.String> o) {
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

core.int buildCounterUpdatePageElementsZOrderRequest = 0;
api.UpdatePageElementsZOrderRequest buildUpdatePageElementsZOrderRequest() {
  final o = api.UpdatePageElementsZOrderRequest();
  buildCounterUpdatePageElementsZOrderRequest++;
  if (buildCounterUpdatePageElementsZOrderRequest < 3) {
    o.operation = 'foo';
    o.pageElementObjectIds = buildUnnamed2638();
  }
  buildCounterUpdatePageElementsZOrderRequest--;
  return o;
}

void checkUpdatePageElementsZOrderRequest(
    api.UpdatePageElementsZOrderRequest o) {
  buildCounterUpdatePageElementsZOrderRequest++;
  if (buildCounterUpdatePageElementsZOrderRequest < 3) {
    unittest.expect(
      o.operation!,
      unittest.equals('foo'),
    );
    checkUnnamed2638(o.pageElementObjectIds!);
  }
  buildCounterUpdatePageElementsZOrderRequest--;
}

core.int buildCounterUpdatePagePropertiesRequest = 0;
api.UpdatePagePropertiesRequest buildUpdatePagePropertiesRequest() {
  final o = api.UpdatePagePropertiesRequest();
  buildCounterUpdatePagePropertiesRequest++;
  if (buildCounterUpdatePagePropertiesRequest < 3) {
    o.fields = 'foo';
    o.objectId = 'foo';
    o.pageProperties = buildPageProperties();
  }
  buildCounterUpdatePagePropertiesRequest--;
  return o;
}

void checkUpdatePagePropertiesRequest(api.UpdatePagePropertiesRequest o) {
  buildCounterUpdatePagePropertiesRequest++;
  if (buildCounterUpdatePagePropertiesRequest < 3) {
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    checkPageProperties(o.pageProperties!);
  }
  buildCounterUpdatePagePropertiesRequest--;
}

core.int buildCounterUpdateParagraphStyleRequest = 0;
api.UpdateParagraphStyleRequest buildUpdateParagraphStyleRequest() {
  final o = api.UpdateParagraphStyleRequest();
  buildCounterUpdateParagraphStyleRequest++;
  if (buildCounterUpdateParagraphStyleRequest < 3) {
    o.cellLocation = buildTableCellLocation();
    o.fields = 'foo';
    o.objectId = 'foo';
    o.style = buildParagraphStyle();
    o.textRange = buildRange();
  }
  buildCounterUpdateParagraphStyleRequest--;
  return o;
}

void checkUpdateParagraphStyleRequest(api.UpdateParagraphStyleRequest o) {
  buildCounterUpdateParagraphStyleRequest++;
  if (buildCounterUpdateParagraphStyleRequest < 3) {
    checkTableCellLocation(o.cellLocation!);
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    checkParagraphStyle(o.style!);
    checkRange(o.textRange!);
  }
  buildCounterUpdateParagraphStyleRequest--;
}

core.int buildCounterUpdateShapePropertiesRequest = 0;
api.UpdateShapePropertiesRequest buildUpdateShapePropertiesRequest() {
  final o = api.UpdateShapePropertiesRequest();
  buildCounterUpdateShapePropertiesRequest++;
  if (buildCounterUpdateShapePropertiesRequest < 3) {
    o.fields = 'foo';
    o.objectId = 'foo';
    o.shapeProperties = buildShapeProperties();
  }
  buildCounterUpdateShapePropertiesRequest--;
  return o;
}

void checkUpdateShapePropertiesRequest(api.UpdateShapePropertiesRequest o) {
  buildCounterUpdateShapePropertiesRequest++;
  if (buildCounterUpdateShapePropertiesRequest < 3) {
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    checkShapeProperties(o.shapeProperties!);
  }
  buildCounterUpdateShapePropertiesRequest--;
}

core.int buildCounterUpdateSlidePropertiesRequest = 0;
api.UpdateSlidePropertiesRequest buildUpdateSlidePropertiesRequest() {
  final o = api.UpdateSlidePropertiesRequest();
  buildCounterUpdateSlidePropertiesRequest++;
  if (buildCounterUpdateSlidePropertiesRequest < 3) {
    o.fields = 'foo';
    o.objectId = 'foo';
    o.slideProperties = buildSlideProperties();
  }
  buildCounterUpdateSlidePropertiesRequest--;
  return o;
}

void checkUpdateSlidePropertiesRequest(api.UpdateSlidePropertiesRequest o) {
  buildCounterUpdateSlidePropertiesRequest++;
  if (buildCounterUpdateSlidePropertiesRequest < 3) {
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    checkSlideProperties(o.slideProperties!);
  }
  buildCounterUpdateSlidePropertiesRequest--;
}

core.List<core.String> buildUnnamed2639() => [
      'foo',
      'foo',
    ];

void checkUnnamed2639(core.List<core.String> o) {
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

core.int buildCounterUpdateSlidesPositionRequest = 0;
api.UpdateSlidesPositionRequest buildUpdateSlidesPositionRequest() {
  final o = api.UpdateSlidesPositionRequest();
  buildCounterUpdateSlidesPositionRequest++;
  if (buildCounterUpdateSlidesPositionRequest < 3) {
    o.insertionIndex = 42;
    o.slideObjectIds = buildUnnamed2639();
  }
  buildCounterUpdateSlidesPositionRequest--;
  return o;
}

void checkUpdateSlidesPositionRequest(api.UpdateSlidesPositionRequest o) {
  buildCounterUpdateSlidesPositionRequest++;
  if (buildCounterUpdateSlidesPositionRequest < 3) {
    unittest.expect(
      o.insertionIndex!,
      unittest.equals(42),
    );
    checkUnnamed2639(o.slideObjectIds!);
  }
  buildCounterUpdateSlidesPositionRequest--;
}

core.int buildCounterUpdateTableBorderPropertiesRequest = 0;
api.UpdateTableBorderPropertiesRequest
    buildUpdateTableBorderPropertiesRequest() {
  final o = api.UpdateTableBorderPropertiesRequest();
  buildCounterUpdateTableBorderPropertiesRequest++;
  if (buildCounterUpdateTableBorderPropertiesRequest < 3) {
    o.borderPosition = 'foo';
    o.fields = 'foo';
    o.objectId = 'foo';
    o.tableBorderProperties = buildTableBorderProperties();
    o.tableRange = buildTableRange();
  }
  buildCounterUpdateTableBorderPropertiesRequest--;
  return o;
}

void checkUpdateTableBorderPropertiesRequest(
    api.UpdateTableBorderPropertiesRequest o) {
  buildCounterUpdateTableBorderPropertiesRequest++;
  if (buildCounterUpdateTableBorderPropertiesRequest < 3) {
    unittest.expect(
      o.borderPosition!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    checkTableBorderProperties(o.tableBorderProperties!);
    checkTableRange(o.tableRange!);
  }
  buildCounterUpdateTableBorderPropertiesRequest--;
}

core.int buildCounterUpdateTableCellPropertiesRequest = 0;
api.UpdateTableCellPropertiesRequest buildUpdateTableCellPropertiesRequest() {
  final o = api.UpdateTableCellPropertiesRequest();
  buildCounterUpdateTableCellPropertiesRequest++;
  if (buildCounterUpdateTableCellPropertiesRequest < 3) {
    o.fields = 'foo';
    o.objectId = 'foo';
    o.tableCellProperties = buildTableCellProperties();
    o.tableRange = buildTableRange();
  }
  buildCounterUpdateTableCellPropertiesRequest--;
  return o;
}

void checkUpdateTableCellPropertiesRequest(
    api.UpdateTableCellPropertiesRequest o) {
  buildCounterUpdateTableCellPropertiesRequest++;
  if (buildCounterUpdateTableCellPropertiesRequest < 3) {
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    checkTableCellProperties(o.tableCellProperties!);
    checkTableRange(o.tableRange!);
  }
  buildCounterUpdateTableCellPropertiesRequest--;
}

core.List<core.int> buildUnnamed2640() => [
      42,
      42,
    ];

void checkUnnamed2640(core.List<core.int> o) {
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

core.int buildCounterUpdateTableColumnPropertiesRequest = 0;
api.UpdateTableColumnPropertiesRequest
    buildUpdateTableColumnPropertiesRequest() {
  final o = api.UpdateTableColumnPropertiesRequest();
  buildCounterUpdateTableColumnPropertiesRequest++;
  if (buildCounterUpdateTableColumnPropertiesRequest < 3) {
    o.columnIndices = buildUnnamed2640();
    o.fields = 'foo';
    o.objectId = 'foo';
    o.tableColumnProperties = buildTableColumnProperties();
  }
  buildCounterUpdateTableColumnPropertiesRequest--;
  return o;
}

void checkUpdateTableColumnPropertiesRequest(
    api.UpdateTableColumnPropertiesRequest o) {
  buildCounterUpdateTableColumnPropertiesRequest++;
  if (buildCounterUpdateTableColumnPropertiesRequest < 3) {
    checkUnnamed2640(o.columnIndices!);
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    checkTableColumnProperties(o.tableColumnProperties!);
  }
  buildCounterUpdateTableColumnPropertiesRequest--;
}

core.List<core.int> buildUnnamed2641() => [
      42,
      42,
    ];

void checkUnnamed2641(core.List<core.int> o) {
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

core.int buildCounterUpdateTableRowPropertiesRequest = 0;
api.UpdateTableRowPropertiesRequest buildUpdateTableRowPropertiesRequest() {
  final o = api.UpdateTableRowPropertiesRequest();
  buildCounterUpdateTableRowPropertiesRequest++;
  if (buildCounterUpdateTableRowPropertiesRequest < 3) {
    o.fields = 'foo';
    o.objectId = 'foo';
    o.rowIndices = buildUnnamed2641();
    o.tableRowProperties = buildTableRowProperties();
  }
  buildCounterUpdateTableRowPropertiesRequest--;
  return o;
}

void checkUpdateTableRowPropertiesRequest(
    api.UpdateTableRowPropertiesRequest o) {
  buildCounterUpdateTableRowPropertiesRequest++;
  if (buildCounterUpdateTableRowPropertiesRequest < 3) {
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    checkUnnamed2641(o.rowIndices!);
    checkTableRowProperties(o.tableRowProperties!);
  }
  buildCounterUpdateTableRowPropertiesRequest--;
}

core.int buildCounterUpdateTextStyleRequest = 0;
api.UpdateTextStyleRequest buildUpdateTextStyleRequest() {
  final o = api.UpdateTextStyleRequest();
  buildCounterUpdateTextStyleRequest++;
  if (buildCounterUpdateTextStyleRequest < 3) {
    o.cellLocation = buildTableCellLocation();
    o.fields = 'foo';
    o.objectId = 'foo';
    o.style = buildTextStyle();
    o.textRange = buildRange();
  }
  buildCounterUpdateTextStyleRequest--;
  return o;
}

void checkUpdateTextStyleRequest(api.UpdateTextStyleRequest o) {
  buildCounterUpdateTextStyleRequest++;
  if (buildCounterUpdateTextStyleRequest < 3) {
    checkTableCellLocation(o.cellLocation!);
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    checkTextStyle(o.style!);
    checkRange(o.textRange!);
  }
  buildCounterUpdateTextStyleRequest--;
}

core.int buildCounterUpdateVideoPropertiesRequest = 0;
api.UpdateVideoPropertiesRequest buildUpdateVideoPropertiesRequest() {
  final o = api.UpdateVideoPropertiesRequest();
  buildCounterUpdateVideoPropertiesRequest++;
  if (buildCounterUpdateVideoPropertiesRequest < 3) {
    o.fields = 'foo';
    o.objectId = 'foo';
    o.videoProperties = buildVideoProperties();
  }
  buildCounterUpdateVideoPropertiesRequest--;
  return o;
}

void checkUpdateVideoPropertiesRequest(api.UpdateVideoPropertiesRequest o) {
  buildCounterUpdateVideoPropertiesRequest++;
  if (buildCounterUpdateVideoPropertiesRequest < 3) {
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    checkVideoProperties(o.videoProperties!);
  }
  buildCounterUpdateVideoPropertiesRequest--;
}

core.int buildCounterVideo = 0;
api.Video buildVideo() {
  final o = api.Video();
  buildCounterVideo++;
  if (buildCounterVideo < 3) {
    o.id = 'foo';
    o.source = 'foo';
    o.url = 'foo';
    o.videoProperties = buildVideoProperties();
  }
  buildCounterVideo--;
  return o;
}

void checkVideo(api.Video o) {
  buildCounterVideo++;
  if (buildCounterVideo < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.source!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
    checkVideoProperties(o.videoProperties!);
  }
  buildCounterVideo--;
}

core.int buildCounterVideoProperties = 0;
api.VideoProperties buildVideoProperties() {
  final o = api.VideoProperties();
  buildCounterVideoProperties++;
  if (buildCounterVideoProperties < 3) {
    o.autoPlay = true;
    o.end = 42;
    o.mute = true;
    o.outline = buildOutline();
    o.start = 42;
  }
  buildCounterVideoProperties--;
  return o;
}

void checkVideoProperties(api.VideoProperties o) {
  buildCounterVideoProperties++;
  if (buildCounterVideoProperties < 3) {
    unittest.expect(o.autoPlay!, unittest.isTrue);
    unittest.expect(
      o.end!,
      unittest.equals(42),
    );
    unittest.expect(o.mute!, unittest.isTrue);
    checkOutline(o.outline!);
    unittest.expect(
      o.start!,
      unittest.equals(42),
    );
  }
  buildCounterVideoProperties--;
}

core.int buildCounterWeightedFontFamily = 0;
api.WeightedFontFamily buildWeightedFontFamily() {
  final o = api.WeightedFontFamily();
  buildCounterWeightedFontFamily++;
  if (buildCounterWeightedFontFamily < 3) {
    o.fontFamily = 'foo';
    o.weight = 42;
  }
  buildCounterWeightedFontFamily--;
  return o;
}

void checkWeightedFontFamily(api.WeightedFontFamily o) {
  buildCounterWeightedFontFamily++;
  if (buildCounterWeightedFontFamily < 3) {
    unittest.expect(
      o.fontFamily!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.weight!,
      unittest.equals(42),
    );
  }
  buildCounterWeightedFontFamily--;
}

core.int buildCounterWordArt = 0;
api.WordArt buildWordArt() {
  final o = api.WordArt();
  buildCounterWordArt++;
  if (buildCounterWordArt < 3) {
    o.renderedText = 'foo';
  }
  buildCounterWordArt--;
  return o;
}

void checkWordArt(api.WordArt o) {
  buildCounterWordArt++;
  if (buildCounterWordArt < 3) {
    unittest.expect(
      o.renderedText!,
      unittest.equals('foo'),
    );
  }
  buildCounterWordArt--;
}

core.int buildCounterWriteControl = 0;
api.WriteControl buildWriteControl() {
  final o = api.WriteControl();
  buildCounterWriteControl++;
  if (buildCounterWriteControl < 3) {
    o.requiredRevisionId = 'foo';
  }
  buildCounterWriteControl--;
  return o;
}

void checkWriteControl(api.WriteControl o) {
  buildCounterWriteControl++;
  if (buildCounterWriteControl < 3) {
    unittest.expect(
      o.requiredRevisionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterWriteControl--;
}

void main() {
  unittest.group('obj-schema-AffineTransform', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAffineTransform();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AffineTransform.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAffineTransform(od);
    });
  });

  unittest.group('obj-schema-AutoText', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutoText();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AutoText.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAutoText(od);
    });
  });

  unittest.group('obj-schema-Autofit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutofit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Autofit.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAutofit(od);
    });
  });

  unittest.group('obj-schema-BatchUpdatePresentationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdatePresentationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdatePresentationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdatePresentationRequest(od);
    });
  });

  unittest.group('obj-schema-BatchUpdatePresentationResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdatePresentationResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdatePresentationResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdatePresentationResponse(od);
    });
  });

  unittest.group('obj-schema-Bullet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBullet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Bullet.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBullet(od);
    });
  });

  unittest.group('obj-schema-ColorScheme', () {
    unittest.test('to-json--from-json', () async {
      final o = buildColorScheme();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ColorScheme.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkColorScheme(od);
    });
  });

  unittest.group('obj-schema-ColorStop', () {
    unittest.test('to-json--from-json', () async {
      final o = buildColorStop();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ColorStop.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkColorStop(od);
    });
  });

  unittest.group('obj-schema-CreateImageRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateImageRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateImageRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateImageRequest(od);
    });
  });

  unittest.group('obj-schema-CreateImageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateImageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateImageResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateImageResponse(od);
    });
  });

  unittest.group('obj-schema-CreateLineRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateLineRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateLineRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateLineRequest(od);
    });
  });

  unittest.group('obj-schema-CreateLineResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateLineResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateLineResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateLineResponse(od);
    });
  });

  unittest.group('obj-schema-CreateParagraphBulletsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateParagraphBulletsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateParagraphBulletsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateParagraphBulletsRequest(od);
    });
  });

  unittest.group('obj-schema-CreateShapeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateShapeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateShapeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateShapeRequest(od);
    });
  });

  unittest.group('obj-schema-CreateShapeResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateShapeResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateShapeResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateShapeResponse(od);
    });
  });

  unittest.group('obj-schema-CreateSheetsChartRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateSheetsChartRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateSheetsChartRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateSheetsChartRequest(od);
    });
  });

  unittest.group('obj-schema-CreateSheetsChartResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateSheetsChartResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateSheetsChartResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateSheetsChartResponse(od);
    });
  });

  unittest.group('obj-schema-CreateSlideRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateSlideRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateSlideRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateSlideRequest(od);
    });
  });

  unittest.group('obj-schema-CreateSlideResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateSlideResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateSlideResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateSlideResponse(od);
    });
  });

  unittest.group('obj-schema-CreateTableRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateTableRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateTableRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateTableRequest(od);
    });
  });

  unittest.group('obj-schema-CreateTableResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateTableResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateTableResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateTableResponse(od);
    });
  });

  unittest.group('obj-schema-CreateVideoRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateVideoRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateVideoRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateVideoRequest(od);
    });
  });

  unittest.group('obj-schema-CreateVideoResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateVideoResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateVideoResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateVideoResponse(od);
    });
  });

  unittest.group('obj-schema-CropProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCropProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CropProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCropProperties(od);
    });
  });

  unittest.group('obj-schema-DeleteObjectRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteObjectRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteObjectRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteObjectRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteParagraphBulletsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteParagraphBulletsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteParagraphBulletsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteParagraphBulletsRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteTableColumnRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteTableColumnRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteTableColumnRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteTableColumnRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteTableRowRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteTableRowRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteTableRowRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteTableRowRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteTextRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteTextRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteTextRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteTextRequest(od);
    });
  });

  unittest.group('obj-schema-Dimension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Dimension.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDimension(od);
    });
  });

  unittest.group('obj-schema-DuplicateObjectRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDuplicateObjectRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DuplicateObjectRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDuplicateObjectRequest(od);
    });
  });

  unittest.group('obj-schema-DuplicateObjectResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDuplicateObjectResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DuplicateObjectResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDuplicateObjectResponse(od);
    });
  });

  unittest.group('obj-schema-Group', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Group.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGroup(od);
    });
  });

  unittest.group('obj-schema-GroupObjectsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroupObjectsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GroupObjectsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGroupObjectsRequest(od);
    });
  });

  unittest.group('obj-schema-GroupObjectsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroupObjectsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GroupObjectsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGroupObjectsResponse(od);
    });
  });

  unittest.group('obj-schema-Image', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Image.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkImage(od);
    });
  });

  unittest.group('obj-schema-ImageProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImageProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImageProperties(od);
    });
  });

  unittest.group('obj-schema-InsertTableColumnsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertTableColumnsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertTableColumnsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInsertTableColumnsRequest(od);
    });
  });

  unittest.group('obj-schema-InsertTableRowsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertTableRowsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertTableRowsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInsertTableRowsRequest(od);
    });
  });

  unittest.group('obj-schema-InsertTextRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertTextRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertTextRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInsertTextRequest(od);
    });
  });

  unittest.group('obj-schema-LayoutPlaceholderIdMapping', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLayoutPlaceholderIdMapping();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LayoutPlaceholderIdMapping.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLayoutPlaceholderIdMapping(od);
    });
  });

  unittest.group('obj-schema-LayoutProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLayoutProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LayoutProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLayoutProperties(od);
    });
  });

  unittest.group('obj-schema-LayoutReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLayoutReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LayoutReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLayoutReference(od);
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

  unittest.group('obj-schema-LineConnection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLineConnection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LineConnection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLineConnection(od);
    });
  });

  unittest.group('obj-schema-LineFill', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLineFill();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.LineFill.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLineFill(od);
    });
  });

  unittest.group('obj-schema-LineProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLineProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LineProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLineProperties(od);
    });
  });

  unittest.group('obj-schema-Link', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Link.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLink(od);
    });
  });

  unittest.group('obj-schema-List', () {
    unittest.test('to-json--from-json', () async {
      final o = buildList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.List.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkList(od);
    });
  });

  unittest.group('obj-schema-MasterProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMasterProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MasterProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMasterProperties(od);
    });
  });

  unittest.group('obj-schema-MergeTableCellsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMergeTableCellsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MergeTableCellsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMergeTableCellsRequest(od);
    });
  });

  unittest.group('obj-schema-NestingLevel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNestingLevel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NestingLevel.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNestingLevel(od);
    });
  });

  unittest.group('obj-schema-NotesProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNotesProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NotesProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNotesProperties(od);
    });
  });

  unittest.group('obj-schema-OpaqueColor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOpaqueColor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OpaqueColor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOpaqueColor(od);
    });
  });

  unittest.group('obj-schema-OptionalColor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOptionalColor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OptionalColor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOptionalColor(od);
    });
  });

  unittest.group('obj-schema-Outline', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOutline();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Outline.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOutline(od);
    });
  });

  unittest.group('obj-schema-OutlineFill', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOutlineFill();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OutlineFill.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOutlineFill(od);
    });
  });

  unittest.group('obj-schema-Page', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Page.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPage(od);
    });
  });

  unittest.group('obj-schema-PageBackgroundFill', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPageBackgroundFill();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PageBackgroundFill.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPageBackgroundFill(od);
    });
  });

  unittest.group('obj-schema-PageElement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPageElement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PageElement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPageElement(od);
    });
  });

  unittest.group('obj-schema-PageElementProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPageElementProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PageElementProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPageElementProperties(od);
    });
  });

  unittest.group('obj-schema-PageProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPageProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PageProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPageProperties(od);
    });
  });

  unittest.group('obj-schema-ParagraphMarker', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParagraphMarker();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ParagraphMarker.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkParagraphMarker(od);
    });
  });

  unittest.group('obj-schema-ParagraphStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParagraphStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ParagraphStyle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkParagraphStyle(od);
    });
  });

  unittest.group('obj-schema-Placeholder', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlaceholder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Placeholder.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlaceholder(od);
    });
  });

  unittest.group('obj-schema-Presentation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPresentation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Presentation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPresentation(od);
    });
  });

  unittest.group('obj-schema-Range', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Range.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRange(od);
    });
  });

  unittest.group('obj-schema-Recolor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRecolor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Recolor.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRecolor(od);
    });
  });

  unittest.group('obj-schema-RefreshSheetsChartRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRefreshSheetsChartRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RefreshSheetsChartRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRefreshSheetsChartRequest(od);
    });
  });

  unittest.group('obj-schema-ReplaceAllShapesWithImageRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplaceAllShapesWithImageRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplaceAllShapesWithImageRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReplaceAllShapesWithImageRequest(od);
    });
  });

  unittest.group('obj-schema-ReplaceAllShapesWithImageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplaceAllShapesWithImageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplaceAllShapesWithImageResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReplaceAllShapesWithImageResponse(od);
    });
  });

  unittest.group('obj-schema-ReplaceAllShapesWithSheetsChartRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplaceAllShapesWithSheetsChartRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplaceAllShapesWithSheetsChartRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReplaceAllShapesWithSheetsChartRequest(od);
    });
  });

  unittest.group('obj-schema-ReplaceAllShapesWithSheetsChartResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplaceAllShapesWithSheetsChartResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplaceAllShapesWithSheetsChartResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReplaceAllShapesWithSheetsChartResponse(od);
    });
  });

  unittest.group('obj-schema-ReplaceAllTextRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplaceAllTextRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplaceAllTextRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReplaceAllTextRequest(od);
    });
  });

  unittest.group('obj-schema-ReplaceAllTextResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplaceAllTextResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplaceAllTextResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReplaceAllTextResponse(od);
    });
  });

  unittest.group('obj-schema-ReplaceImageRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplaceImageRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplaceImageRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReplaceImageRequest(od);
    });
  });

  unittest.group('obj-schema-Request', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Request.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRequest(od);
    });
  });

  unittest.group('obj-schema-RerouteLineRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRerouteLineRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RerouteLineRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRerouteLineRequest(od);
    });
  });

  unittest.group('obj-schema-Response', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Response.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkResponse(od);
    });
  });

  unittest.group('obj-schema-RgbColor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRgbColor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.RgbColor.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRgbColor(od);
    });
  });

  unittest.group('obj-schema-Shadow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShadow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Shadow.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkShadow(od);
    });
  });

  unittest.group('obj-schema-Shape', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShape();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Shape.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkShape(od);
    });
  });

  unittest.group('obj-schema-ShapeBackgroundFill', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShapeBackgroundFill();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShapeBackgroundFill.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkShapeBackgroundFill(od);
    });
  });

  unittest.group('obj-schema-ShapeProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShapeProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShapeProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkShapeProperties(od);
    });
  });

  unittest.group('obj-schema-SheetsChart', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSheetsChart();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SheetsChart.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSheetsChart(od);
    });
  });

  unittest.group('obj-schema-SheetsChartProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSheetsChartProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SheetsChartProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSheetsChartProperties(od);
    });
  });

  unittest.group('obj-schema-Size', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSize();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Size.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSize(od);
    });
  });

  unittest.group('obj-schema-SlideProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSlideProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SlideProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSlideProperties(od);
    });
  });

  unittest.group('obj-schema-SolidFill', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSolidFill();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SolidFill.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSolidFill(od);
    });
  });

  unittest.group('obj-schema-StretchedPictureFill', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStretchedPictureFill();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StretchedPictureFill.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStretchedPictureFill(od);
    });
  });

  unittest.group('obj-schema-SubstringMatchCriteria', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubstringMatchCriteria();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubstringMatchCriteria.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSubstringMatchCriteria(od);
    });
  });

  unittest.group('obj-schema-Table', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Table.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTable(od);
    });
  });

  unittest.group('obj-schema-TableBorderCell', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableBorderCell();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableBorderCell.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableBorderCell(od);
    });
  });

  unittest.group('obj-schema-TableBorderFill', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableBorderFill();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableBorderFill.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableBorderFill(od);
    });
  });

  unittest.group('obj-schema-TableBorderProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableBorderProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableBorderProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableBorderProperties(od);
    });
  });

  unittest.group('obj-schema-TableBorderRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableBorderRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableBorderRow.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableBorderRow(od);
    });
  });

  unittest.group('obj-schema-TableCell', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableCell();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TableCell.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTableCell(od);
    });
  });

  unittest.group('obj-schema-TableCellBackgroundFill', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableCellBackgroundFill();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableCellBackgroundFill.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableCellBackgroundFill(od);
    });
  });

  unittest.group('obj-schema-TableCellLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableCellLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableCellLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableCellLocation(od);
    });
  });

  unittest.group('obj-schema-TableCellProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableCellProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableCellProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableCellProperties(od);
    });
  });

  unittest.group('obj-schema-TableColumnProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableColumnProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableColumnProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableColumnProperties(od);
    });
  });

  unittest.group('obj-schema-TableRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TableRange.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTableRange(od);
    });
  });

  unittest.group('obj-schema-TableRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TableRow.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTableRow(od);
    });
  });

  unittest.group('obj-schema-TableRowProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableRowProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableRowProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableRowProperties(od);
    });
  });

  unittest.group('obj-schema-TextContent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextContent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextContent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTextContent(od);
    });
  });

  unittest.group('obj-schema-TextElement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextElement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextElement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTextElement(od);
    });
  });

  unittest.group('obj-schema-TextRun', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextRun();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TextRun.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTextRun(od);
    });
  });

  unittest.group('obj-schema-TextStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TextStyle.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTextStyle(od);
    });
  });

  unittest.group('obj-schema-ThemeColorPair', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThemeColorPair();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ThemeColorPair.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkThemeColorPair(od);
    });
  });

  unittest.group('obj-schema-Thumbnail', () {
    unittest.test('to-json--from-json', () async {
      final o = buildThumbnail();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Thumbnail.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkThumbnail(od);
    });
  });

  unittest.group('obj-schema-UngroupObjectsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUngroupObjectsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UngroupObjectsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUngroupObjectsRequest(od);
    });
  });

  unittest.group('obj-schema-UnmergeTableCellsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnmergeTableCellsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnmergeTableCellsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUnmergeTableCellsRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateImagePropertiesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateImagePropertiesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateImagePropertiesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateImagePropertiesRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateLineCategoryRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateLineCategoryRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateLineCategoryRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateLineCategoryRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateLinePropertiesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateLinePropertiesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateLinePropertiesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateLinePropertiesRequest(od);
    });
  });

  unittest.group('obj-schema-UpdatePageElementAltTextRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdatePageElementAltTextRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdatePageElementAltTextRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdatePageElementAltTextRequest(od);
    });
  });

  unittest.group('obj-schema-UpdatePageElementTransformRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdatePageElementTransformRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdatePageElementTransformRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdatePageElementTransformRequest(od);
    });
  });

  unittest.group('obj-schema-UpdatePageElementsZOrderRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdatePageElementsZOrderRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdatePageElementsZOrderRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdatePageElementsZOrderRequest(od);
    });
  });

  unittest.group('obj-schema-UpdatePagePropertiesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdatePagePropertiesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdatePagePropertiesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdatePagePropertiesRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateParagraphStyleRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateParagraphStyleRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateParagraphStyleRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateParagraphStyleRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateShapePropertiesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateShapePropertiesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateShapePropertiesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateShapePropertiesRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateSlidePropertiesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateSlidePropertiesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateSlidePropertiesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateSlidePropertiesRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateSlidesPositionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateSlidesPositionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateSlidesPositionRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateSlidesPositionRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateTableBorderPropertiesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateTableBorderPropertiesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateTableBorderPropertiesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateTableBorderPropertiesRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateTableCellPropertiesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateTableCellPropertiesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateTableCellPropertiesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateTableCellPropertiesRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateTableColumnPropertiesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateTableColumnPropertiesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateTableColumnPropertiesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateTableColumnPropertiesRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateTableRowPropertiesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateTableRowPropertiesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateTableRowPropertiesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateTableRowPropertiesRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateTextStyleRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateTextStyleRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateTextStyleRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateTextStyleRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateVideoPropertiesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateVideoPropertiesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateVideoPropertiesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateVideoPropertiesRequest(od);
    });
  });

  unittest.group('obj-schema-Video', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Video.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkVideo(od);
    });
  });

  unittest.group('obj-schema-VideoProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVideoProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VideoProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVideoProperties(od);
    });
  });

  unittest.group('obj-schema-WeightedFontFamily', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWeightedFontFamily();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WeightedFontFamily.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWeightedFontFamily(od);
    });
  });

  unittest.group('obj-schema-WordArt', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWordArt();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.WordArt.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWordArt(od);
    });
  });

  unittest.group('obj-schema-WriteControl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWriteControl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WriteControl.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWriteControl(od);
    });
  });

  unittest.group('resource-PresentationsResource', () {
    unittest.test('method--batchUpdate', () async {
      final mock = HttpServerMock();
      final res = api.SlidesApi(mock).presentations;
      final arg_request = buildBatchUpdatePresentationRequest();
      final arg_presentationId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchUpdatePresentationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchUpdatePresentationRequest(obj);

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
          unittest.equals('v1/presentations/'),
        );
        pathOffset += 17;
        index = path.indexOf(':batchUpdate', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_presentationId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals(':batchUpdate'),
        );
        pathOffset += 12;

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
        final resp =
            convert.json.encode(buildBatchUpdatePresentationResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchUpdate(arg_request, arg_presentationId,
          $fields: arg_$fields);
      checkBatchUpdatePresentationResponse(
          response as api.BatchUpdatePresentationResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.SlidesApi(mock).presentations;
      final arg_request = buildPresentation();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.Presentation.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkPresentation(obj);

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
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('v1/presentations'),
        );
        pathOffset += 16;

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
        final resp = convert.json.encode(buildPresentation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkPresentation(response as api.Presentation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SlidesApi(mock).presentations;
      final arg_presentationId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v1/presentations/'),
        );
        pathOffset += 17;
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
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildPresentation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_presentationId, $fields: arg_$fields);
      checkPresentation(response as api.Presentation);
    });
  });

  unittest.group('resource-PresentationsPagesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.SlidesApi(mock).presentations.pages;
      final arg_presentationId = 'foo';
      final arg_pageObjectId = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v1/presentations/'),
        );
        pathOffset += 17;
        index = path.indexOf('/pages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_presentationId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/pages/'),
        );
        pathOffset += 7;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_pageObjectId'),
        );

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
        final resp = convert.json.encode(buildPage());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_presentationId, arg_pageObjectId,
          $fields: arg_$fields);
      checkPage(response as api.Page);
    });

    unittest.test('method--getThumbnail', () async {
      final mock = HttpServerMock();
      final res = api.SlidesApi(mock).presentations.pages;
      final arg_presentationId = 'foo';
      final arg_pageObjectId = 'foo';
      final arg_thumbnailProperties_mimeType = 'foo';
      final arg_thumbnailProperties_thumbnailSize = 'foo';
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
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('v1/presentations/'),
        );
        pathOffset += 17;
        index = path.indexOf('/pages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_presentationId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('/pages/'),
        );
        pathOffset += 7;
        index = path.indexOf('/thumbnail', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_pageObjectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/thumbnail'),
        );
        pathOffset += 10;

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
          queryMap['thumbnailProperties.mimeType']!.first,
          unittest.equals(arg_thumbnailProperties_mimeType),
        );
        unittest.expect(
          queryMap['thumbnailProperties.thumbnailSize']!.first,
          unittest.equals(arg_thumbnailProperties_thumbnailSize),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildThumbnail());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getThumbnail(
          arg_presentationId, arg_pageObjectId,
          thumbnailProperties_mimeType: arg_thumbnailProperties_mimeType,
          thumbnailProperties_thumbnailSize:
              arg_thumbnailProperties_thumbnailSize,
          $fields: arg_$fields);
      checkThumbnail(response as api.Thumbnail);
    });
  });
}
