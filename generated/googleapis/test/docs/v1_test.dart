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

import 'package:googleapis/docs/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.List<core.String> buildUnnamed7363() => [
      'foo',
      'foo',
    ];

void checkUnnamed7363(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7364() => [
      'foo',
      'foo',
    ];

void checkUnnamed7364(core.List<core.String> o) {
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

core.Map<core.String, api.SuggestedTextStyle> buildUnnamed7365() => {
      'x': buildSuggestedTextStyle(),
      'y': buildSuggestedTextStyle(),
    };

void checkUnnamed7365(core.Map<core.String, api.SuggestedTextStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTextStyle(o['x']!);
  checkSuggestedTextStyle(o['y']!);
}

core.int buildCounterAutoText = 0;
api.AutoText buildAutoText() {
  final o = api.AutoText();
  buildCounterAutoText++;
  if (buildCounterAutoText < 3) {
    o.suggestedDeletionIds = buildUnnamed7363();
    o.suggestedInsertionIds = buildUnnamed7364();
    o.suggestedTextStyleChanges = buildUnnamed7365();
    o.textStyle = buildTextStyle();
    o.type = 'foo';
  }
  buildCounterAutoText--;
  return o;
}

void checkAutoText(api.AutoText o) {
  buildCounterAutoText++;
  if (buildCounterAutoText < 3) {
    checkUnnamed7363(o.suggestedDeletionIds!);
    checkUnnamed7364(o.suggestedInsertionIds!);
    checkUnnamed7365(o.suggestedTextStyleChanges!);
    checkTextStyle(o.textStyle!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterAutoText--;
}

core.int buildCounterBackground = 0;
api.Background buildBackground() {
  final o = api.Background();
  buildCounterBackground++;
  if (buildCounterBackground < 3) {
    o.color = buildOptionalColor();
  }
  buildCounterBackground--;
  return o;
}

void checkBackground(api.Background o) {
  buildCounterBackground++;
  if (buildCounterBackground < 3) {
    checkOptionalColor(o.color!);
  }
  buildCounterBackground--;
}

core.int buildCounterBackgroundSuggestionState = 0;
api.BackgroundSuggestionState buildBackgroundSuggestionState() {
  final o = api.BackgroundSuggestionState();
  buildCounterBackgroundSuggestionState++;
  if (buildCounterBackgroundSuggestionState < 3) {
    o.backgroundColorSuggested = true;
  }
  buildCounterBackgroundSuggestionState--;
  return o;
}

void checkBackgroundSuggestionState(api.BackgroundSuggestionState o) {
  buildCounterBackgroundSuggestionState++;
  if (buildCounterBackgroundSuggestionState < 3) {
    unittest.expect(o.backgroundColorSuggested!, unittest.isTrue);
  }
  buildCounterBackgroundSuggestionState--;
}

core.List<api.Request> buildUnnamed7366() => [
      buildRequest(),
      buildRequest(),
    ];

void checkUnnamed7366(core.List<api.Request> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRequest(o[0]);
  checkRequest(o[1]);
}

core.int buildCounterBatchUpdateDocumentRequest = 0;
api.BatchUpdateDocumentRequest buildBatchUpdateDocumentRequest() {
  final o = api.BatchUpdateDocumentRequest();
  buildCounterBatchUpdateDocumentRequest++;
  if (buildCounterBatchUpdateDocumentRequest < 3) {
    o.requests = buildUnnamed7366();
    o.writeControl = buildWriteControl();
  }
  buildCounterBatchUpdateDocumentRequest--;
  return o;
}

void checkBatchUpdateDocumentRequest(api.BatchUpdateDocumentRequest o) {
  buildCounterBatchUpdateDocumentRequest++;
  if (buildCounterBatchUpdateDocumentRequest < 3) {
    checkUnnamed7366(o.requests!);
    checkWriteControl(o.writeControl!);
  }
  buildCounterBatchUpdateDocumentRequest--;
}

core.List<api.Response> buildUnnamed7367() => [
      buildResponse(),
      buildResponse(),
    ];

void checkUnnamed7367(core.List<api.Response> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResponse(o[0]);
  checkResponse(o[1]);
}

core.int buildCounterBatchUpdateDocumentResponse = 0;
api.BatchUpdateDocumentResponse buildBatchUpdateDocumentResponse() {
  final o = api.BatchUpdateDocumentResponse();
  buildCounterBatchUpdateDocumentResponse++;
  if (buildCounterBatchUpdateDocumentResponse < 3) {
    o.documentId = 'foo';
    o.replies = buildUnnamed7367();
    o.writeControl = buildWriteControl();
  }
  buildCounterBatchUpdateDocumentResponse--;
  return o;
}

void checkBatchUpdateDocumentResponse(api.BatchUpdateDocumentResponse o) {
  buildCounterBatchUpdateDocumentResponse++;
  if (buildCounterBatchUpdateDocumentResponse < 3) {
    unittest.expect(
      o.documentId!,
      unittest.equals('foo'),
    );
    checkUnnamed7367(o.replies!);
    checkWriteControl(o.writeControl!);
  }
  buildCounterBatchUpdateDocumentResponse--;
}

core.List<api.StructuralElement> buildUnnamed7368() => [
      buildStructuralElement(),
      buildStructuralElement(),
    ];

void checkUnnamed7368(core.List<api.StructuralElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStructuralElement(o[0]);
  checkStructuralElement(o[1]);
}

core.int buildCounterBody = 0;
api.Body buildBody() {
  final o = api.Body();
  buildCounterBody++;
  if (buildCounterBody < 3) {
    o.content = buildUnnamed7368();
  }
  buildCounterBody--;
  return o;
}

void checkBody(api.Body o) {
  buildCounterBody++;
  if (buildCounterBody < 3) {
    checkUnnamed7368(o.content!);
  }
  buildCounterBody--;
}

core.int buildCounterBullet = 0;
api.Bullet buildBullet() {
  final o = api.Bullet();
  buildCounterBullet++;
  if (buildCounterBullet < 3) {
    o.listId = 'foo';
    o.nestingLevel = 42;
    o.textStyle = buildTextStyle();
  }
  buildCounterBullet--;
  return o;
}

void checkBullet(api.Bullet o) {
  buildCounterBullet++;
  if (buildCounterBullet < 3) {
    unittest.expect(
      o.listId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nestingLevel!,
      unittest.equals(42),
    );
    checkTextStyle(o.textStyle!);
  }
  buildCounterBullet--;
}

core.int buildCounterBulletSuggestionState = 0;
api.BulletSuggestionState buildBulletSuggestionState() {
  final o = api.BulletSuggestionState();
  buildCounterBulletSuggestionState++;
  if (buildCounterBulletSuggestionState < 3) {
    o.listIdSuggested = true;
    o.nestingLevelSuggested = true;
    o.textStyleSuggestionState = buildTextStyleSuggestionState();
  }
  buildCounterBulletSuggestionState--;
  return o;
}

void checkBulletSuggestionState(api.BulletSuggestionState o) {
  buildCounterBulletSuggestionState++;
  if (buildCounterBulletSuggestionState < 3) {
    unittest.expect(o.listIdSuggested!, unittest.isTrue);
    unittest.expect(o.nestingLevelSuggested!, unittest.isTrue);
    checkTextStyleSuggestionState(o.textStyleSuggestionState!);
  }
  buildCounterBulletSuggestionState--;
}

core.int buildCounterColor = 0;
api.Color buildColor() {
  final o = api.Color();
  buildCounterColor++;
  if (buildCounterColor < 3) {
    o.rgbColor = buildRgbColor();
  }
  buildCounterColor--;
  return o;
}

void checkColor(api.Color o) {
  buildCounterColor++;
  if (buildCounterColor < 3) {
    checkRgbColor(o.rgbColor!);
  }
  buildCounterColor--;
}

core.List<core.String> buildUnnamed7369() => [
      'foo',
      'foo',
    ];

void checkUnnamed7369(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7370() => [
      'foo',
      'foo',
    ];

void checkUnnamed7370(core.List<core.String> o) {
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

core.Map<core.String, api.SuggestedTextStyle> buildUnnamed7371() => {
      'x': buildSuggestedTextStyle(),
      'y': buildSuggestedTextStyle(),
    };

void checkUnnamed7371(core.Map<core.String, api.SuggestedTextStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTextStyle(o['x']!);
  checkSuggestedTextStyle(o['y']!);
}

core.int buildCounterColumnBreak = 0;
api.ColumnBreak buildColumnBreak() {
  final o = api.ColumnBreak();
  buildCounterColumnBreak++;
  if (buildCounterColumnBreak < 3) {
    o.suggestedDeletionIds = buildUnnamed7369();
    o.suggestedInsertionIds = buildUnnamed7370();
    o.suggestedTextStyleChanges = buildUnnamed7371();
    o.textStyle = buildTextStyle();
  }
  buildCounterColumnBreak--;
  return o;
}

void checkColumnBreak(api.ColumnBreak o) {
  buildCounterColumnBreak++;
  if (buildCounterColumnBreak < 3) {
    checkUnnamed7369(o.suggestedDeletionIds!);
    checkUnnamed7370(o.suggestedInsertionIds!);
    checkUnnamed7371(o.suggestedTextStyleChanges!);
    checkTextStyle(o.textStyle!);
  }
  buildCounterColumnBreak--;
}

core.int buildCounterCreateFooterRequest = 0;
api.CreateFooterRequest buildCreateFooterRequest() {
  final o = api.CreateFooterRequest();
  buildCounterCreateFooterRequest++;
  if (buildCounterCreateFooterRequest < 3) {
    o.sectionBreakLocation = buildLocation();
    o.type = 'foo';
  }
  buildCounterCreateFooterRequest--;
  return o;
}

void checkCreateFooterRequest(api.CreateFooterRequest o) {
  buildCounterCreateFooterRequest++;
  if (buildCounterCreateFooterRequest < 3) {
    checkLocation(o.sectionBreakLocation!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateFooterRequest--;
}

core.int buildCounterCreateFooterResponse = 0;
api.CreateFooterResponse buildCreateFooterResponse() {
  final o = api.CreateFooterResponse();
  buildCounterCreateFooterResponse++;
  if (buildCounterCreateFooterResponse < 3) {
    o.footerId = 'foo';
  }
  buildCounterCreateFooterResponse--;
  return o;
}

void checkCreateFooterResponse(api.CreateFooterResponse o) {
  buildCounterCreateFooterResponse++;
  if (buildCounterCreateFooterResponse < 3) {
    unittest.expect(
      o.footerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateFooterResponse--;
}

core.int buildCounterCreateFootnoteRequest = 0;
api.CreateFootnoteRequest buildCreateFootnoteRequest() {
  final o = api.CreateFootnoteRequest();
  buildCounterCreateFootnoteRequest++;
  if (buildCounterCreateFootnoteRequest < 3) {
    o.endOfSegmentLocation = buildEndOfSegmentLocation();
    o.location = buildLocation();
  }
  buildCounterCreateFootnoteRequest--;
  return o;
}

void checkCreateFootnoteRequest(api.CreateFootnoteRequest o) {
  buildCounterCreateFootnoteRequest++;
  if (buildCounterCreateFootnoteRequest < 3) {
    checkEndOfSegmentLocation(o.endOfSegmentLocation!);
    checkLocation(o.location!);
  }
  buildCounterCreateFootnoteRequest--;
}

core.int buildCounterCreateFootnoteResponse = 0;
api.CreateFootnoteResponse buildCreateFootnoteResponse() {
  final o = api.CreateFootnoteResponse();
  buildCounterCreateFootnoteResponse++;
  if (buildCounterCreateFootnoteResponse < 3) {
    o.footnoteId = 'foo';
  }
  buildCounterCreateFootnoteResponse--;
  return o;
}

void checkCreateFootnoteResponse(api.CreateFootnoteResponse o) {
  buildCounterCreateFootnoteResponse++;
  if (buildCounterCreateFootnoteResponse < 3) {
    unittest.expect(
      o.footnoteId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateFootnoteResponse--;
}

core.int buildCounterCreateHeaderRequest = 0;
api.CreateHeaderRequest buildCreateHeaderRequest() {
  final o = api.CreateHeaderRequest();
  buildCounterCreateHeaderRequest++;
  if (buildCounterCreateHeaderRequest < 3) {
    o.sectionBreakLocation = buildLocation();
    o.type = 'foo';
  }
  buildCounterCreateHeaderRequest--;
  return o;
}

void checkCreateHeaderRequest(api.CreateHeaderRequest o) {
  buildCounterCreateHeaderRequest++;
  if (buildCounterCreateHeaderRequest < 3) {
    checkLocation(o.sectionBreakLocation!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateHeaderRequest--;
}

core.int buildCounterCreateHeaderResponse = 0;
api.CreateHeaderResponse buildCreateHeaderResponse() {
  final o = api.CreateHeaderResponse();
  buildCounterCreateHeaderResponse++;
  if (buildCounterCreateHeaderResponse < 3) {
    o.headerId = 'foo';
  }
  buildCounterCreateHeaderResponse--;
  return o;
}

void checkCreateHeaderResponse(api.CreateHeaderResponse o) {
  buildCounterCreateHeaderResponse++;
  if (buildCounterCreateHeaderResponse < 3) {
    unittest.expect(
      o.headerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateHeaderResponse--;
}

core.int buildCounterCreateNamedRangeRequest = 0;
api.CreateNamedRangeRequest buildCreateNamedRangeRequest() {
  final o = api.CreateNamedRangeRequest();
  buildCounterCreateNamedRangeRequest++;
  if (buildCounterCreateNamedRangeRequest < 3) {
    o.name = 'foo';
    o.range = buildRange();
  }
  buildCounterCreateNamedRangeRequest--;
  return o;
}

void checkCreateNamedRangeRequest(api.CreateNamedRangeRequest o) {
  buildCounterCreateNamedRangeRequest++;
  if (buildCounterCreateNamedRangeRequest < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkRange(o.range!);
  }
  buildCounterCreateNamedRangeRequest--;
}

core.int buildCounterCreateNamedRangeResponse = 0;
api.CreateNamedRangeResponse buildCreateNamedRangeResponse() {
  final o = api.CreateNamedRangeResponse();
  buildCounterCreateNamedRangeResponse++;
  if (buildCounterCreateNamedRangeResponse < 3) {
    o.namedRangeId = 'foo';
  }
  buildCounterCreateNamedRangeResponse--;
  return o;
}

void checkCreateNamedRangeResponse(api.CreateNamedRangeResponse o) {
  buildCounterCreateNamedRangeResponse++;
  if (buildCounterCreateNamedRangeResponse < 3) {
    unittest.expect(
      o.namedRangeId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCreateNamedRangeResponse--;
}

core.int buildCounterCreateParagraphBulletsRequest = 0;
api.CreateParagraphBulletsRequest buildCreateParagraphBulletsRequest() {
  final o = api.CreateParagraphBulletsRequest();
  buildCounterCreateParagraphBulletsRequest++;
  if (buildCounterCreateParagraphBulletsRequest < 3) {
    o.bulletPreset = 'foo';
    o.range = buildRange();
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
    checkRange(o.range!);
  }
  buildCounterCreateParagraphBulletsRequest--;
}

core.int buildCounterCropProperties = 0;
api.CropProperties buildCropProperties() {
  final o = api.CropProperties();
  buildCounterCropProperties++;
  if (buildCounterCropProperties < 3) {
    o.angle = 42.0;
    o.offsetBottom = 42.0;
    o.offsetLeft = 42.0;
    o.offsetRight = 42.0;
    o.offsetTop = 42.0;
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
      o.offsetBottom!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.offsetLeft!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.offsetRight!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.offsetTop!,
      unittest.equals(42.0),
    );
  }
  buildCounterCropProperties--;
}

core.int buildCounterCropPropertiesSuggestionState = 0;
api.CropPropertiesSuggestionState buildCropPropertiesSuggestionState() {
  final o = api.CropPropertiesSuggestionState();
  buildCounterCropPropertiesSuggestionState++;
  if (buildCounterCropPropertiesSuggestionState < 3) {
    o.angleSuggested = true;
    o.offsetBottomSuggested = true;
    o.offsetLeftSuggested = true;
    o.offsetRightSuggested = true;
    o.offsetTopSuggested = true;
  }
  buildCounterCropPropertiesSuggestionState--;
  return o;
}

void checkCropPropertiesSuggestionState(api.CropPropertiesSuggestionState o) {
  buildCounterCropPropertiesSuggestionState++;
  if (buildCounterCropPropertiesSuggestionState < 3) {
    unittest.expect(o.angleSuggested!, unittest.isTrue);
    unittest.expect(o.offsetBottomSuggested!, unittest.isTrue);
    unittest.expect(o.offsetLeftSuggested!, unittest.isTrue);
    unittest.expect(o.offsetRightSuggested!, unittest.isTrue);
    unittest.expect(o.offsetTopSuggested!, unittest.isTrue);
  }
  buildCounterCropPropertiesSuggestionState--;
}

core.int buildCounterDeleteContentRangeRequest = 0;
api.DeleteContentRangeRequest buildDeleteContentRangeRequest() {
  final o = api.DeleteContentRangeRequest();
  buildCounterDeleteContentRangeRequest++;
  if (buildCounterDeleteContentRangeRequest < 3) {
    o.range = buildRange();
  }
  buildCounterDeleteContentRangeRequest--;
  return o;
}

void checkDeleteContentRangeRequest(api.DeleteContentRangeRequest o) {
  buildCounterDeleteContentRangeRequest++;
  if (buildCounterDeleteContentRangeRequest < 3) {
    checkRange(o.range!);
  }
  buildCounterDeleteContentRangeRequest--;
}

core.int buildCounterDeleteFooterRequest = 0;
api.DeleteFooterRequest buildDeleteFooterRequest() {
  final o = api.DeleteFooterRequest();
  buildCounterDeleteFooterRequest++;
  if (buildCounterDeleteFooterRequest < 3) {
    o.footerId = 'foo';
  }
  buildCounterDeleteFooterRequest--;
  return o;
}

void checkDeleteFooterRequest(api.DeleteFooterRequest o) {
  buildCounterDeleteFooterRequest++;
  if (buildCounterDeleteFooterRequest < 3) {
    unittest.expect(
      o.footerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeleteFooterRequest--;
}

core.int buildCounterDeleteHeaderRequest = 0;
api.DeleteHeaderRequest buildDeleteHeaderRequest() {
  final o = api.DeleteHeaderRequest();
  buildCounterDeleteHeaderRequest++;
  if (buildCounterDeleteHeaderRequest < 3) {
    o.headerId = 'foo';
  }
  buildCounterDeleteHeaderRequest--;
  return o;
}

void checkDeleteHeaderRequest(api.DeleteHeaderRequest o) {
  buildCounterDeleteHeaderRequest++;
  if (buildCounterDeleteHeaderRequest < 3) {
    unittest.expect(
      o.headerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeleteHeaderRequest--;
}

core.int buildCounterDeleteNamedRangeRequest = 0;
api.DeleteNamedRangeRequest buildDeleteNamedRangeRequest() {
  final o = api.DeleteNamedRangeRequest();
  buildCounterDeleteNamedRangeRequest++;
  if (buildCounterDeleteNamedRangeRequest < 3) {
    o.name = 'foo';
    o.namedRangeId = 'foo';
  }
  buildCounterDeleteNamedRangeRequest--;
  return o;
}

void checkDeleteNamedRangeRequest(api.DeleteNamedRangeRequest o) {
  buildCounterDeleteNamedRangeRequest++;
  if (buildCounterDeleteNamedRangeRequest < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.namedRangeId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeleteNamedRangeRequest--;
}

core.int buildCounterDeleteParagraphBulletsRequest = 0;
api.DeleteParagraphBulletsRequest buildDeleteParagraphBulletsRequest() {
  final o = api.DeleteParagraphBulletsRequest();
  buildCounterDeleteParagraphBulletsRequest++;
  if (buildCounterDeleteParagraphBulletsRequest < 3) {
    o.range = buildRange();
  }
  buildCounterDeleteParagraphBulletsRequest--;
  return o;
}

void checkDeleteParagraphBulletsRequest(api.DeleteParagraphBulletsRequest o) {
  buildCounterDeleteParagraphBulletsRequest++;
  if (buildCounterDeleteParagraphBulletsRequest < 3) {
    checkRange(o.range!);
  }
  buildCounterDeleteParagraphBulletsRequest--;
}

core.int buildCounterDeletePositionedObjectRequest = 0;
api.DeletePositionedObjectRequest buildDeletePositionedObjectRequest() {
  final o = api.DeletePositionedObjectRequest();
  buildCounterDeletePositionedObjectRequest++;
  if (buildCounterDeletePositionedObjectRequest < 3) {
    o.objectId = 'foo';
  }
  buildCounterDeletePositionedObjectRequest--;
  return o;
}

void checkDeletePositionedObjectRequest(api.DeletePositionedObjectRequest o) {
  buildCounterDeletePositionedObjectRequest++;
  if (buildCounterDeletePositionedObjectRequest < 3) {
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDeletePositionedObjectRequest--;
}

core.int buildCounterDeleteTableColumnRequest = 0;
api.DeleteTableColumnRequest buildDeleteTableColumnRequest() {
  final o = api.DeleteTableColumnRequest();
  buildCounterDeleteTableColumnRequest++;
  if (buildCounterDeleteTableColumnRequest < 3) {
    o.tableCellLocation = buildTableCellLocation();
  }
  buildCounterDeleteTableColumnRequest--;
  return o;
}

void checkDeleteTableColumnRequest(api.DeleteTableColumnRequest o) {
  buildCounterDeleteTableColumnRequest++;
  if (buildCounterDeleteTableColumnRequest < 3) {
    checkTableCellLocation(o.tableCellLocation!);
  }
  buildCounterDeleteTableColumnRequest--;
}

core.int buildCounterDeleteTableRowRequest = 0;
api.DeleteTableRowRequest buildDeleteTableRowRequest() {
  final o = api.DeleteTableRowRequest();
  buildCounterDeleteTableRowRequest++;
  if (buildCounterDeleteTableRowRequest < 3) {
    o.tableCellLocation = buildTableCellLocation();
  }
  buildCounterDeleteTableRowRequest--;
  return o;
}

void checkDeleteTableRowRequest(api.DeleteTableRowRequest o) {
  buildCounterDeleteTableRowRequest++;
  if (buildCounterDeleteTableRowRequest < 3) {
    checkTableCellLocation(o.tableCellLocation!);
  }
  buildCounterDeleteTableRowRequest--;
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

core.Map<core.String, api.Footer> buildUnnamed7372() => {
      'x': buildFooter(),
      'y': buildFooter(),
    };

void checkUnnamed7372(core.Map<core.String, api.Footer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFooter(o['x']!);
  checkFooter(o['y']!);
}

core.Map<core.String, api.Footnote> buildUnnamed7373() => {
      'x': buildFootnote(),
      'y': buildFootnote(),
    };

void checkUnnamed7373(core.Map<core.String, api.Footnote> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFootnote(o['x']!);
  checkFootnote(o['y']!);
}

core.Map<core.String, api.Header> buildUnnamed7374() => {
      'x': buildHeader(),
      'y': buildHeader(),
    };

void checkUnnamed7374(core.Map<core.String, api.Header> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHeader(o['x']!);
  checkHeader(o['y']!);
}

core.Map<core.String, api.InlineObject> buildUnnamed7375() => {
      'x': buildInlineObject(),
      'y': buildInlineObject(),
    };

void checkUnnamed7375(core.Map<core.String, api.InlineObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInlineObject(o['x']!);
  checkInlineObject(o['y']!);
}

core.Map<core.String, api.List> buildUnnamed7376() => {
      'x': buildList(),
      'y': buildList(),
    };

void checkUnnamed7376(core.Map<core.String, api.List> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkList(o['x']!);
  checkList(o['y']!);
}

core.Map<core.String, api.NamedRanges> buildUnnamed7377() => {
      'x': buildNamedRanges(),
      'y': buildNamedRanges(),
    };

void checkUnnamed7377(core.Map<core.String, api.NamedRanges> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamedRanges(o['x']!);
  checkNamedRanges(o['y']!);
}

core.Map<core.String, api.PositionedObject> buildUnnamed7378() => {
      'x': buildPositionedObject(),
      'y': buildPositionedObject(),
    };

void checkUnnamed7378(core.Map<core.String, api.PositionedObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPositionedObject(o['x']!);
  checkPositionedObject(o['y']!);
}

core.Map<core.String, api.SuggestedDocumentStyle> buildUnnamed7379() => {
      'x': buildSuggestedDocumentStyle(),
      'y': buildSuggestedDocumentStyle(),
    };

void checkUnnamed7379(core.Map<core.String, api.SuggestedDocumentStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedDocumentStyle(o['x']!);
  checkSuggestedDocumentStyle(o['y']!);
}

core.Map<core.String, api.SuggestedNamedStyles> buildUnnamed7380() => {
      'x': buildSuggestedNamedStyles(),
      'y': buildSuggestedNamedStyles(),
    };

void checkUnnamed7380(core.Map<core.String, api.SuggestedNamedStyles> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedNamedStyles(o['x']!);
  checkSuggestedNamedStyles(o['y']!);
}

core.int buildCounterDocument = 0;
api.Document buildDocument() {
  final o = api.Document();
  buildCounterDocument++;
  if (buildCounterDocument < 3) {
    o.body = buildBody();
    o.documentId = 'foo';
    o.documentStyle = buildDocumentStyle();
    o.footers = buildUnnamed7372();
    o.footnotes = buildUnnamed7373();
    o.headers = buildUnnamed7374();
    o.inlineObjects = buildUnnamed7375();
    o.lists = buildUnnamed7376();
    o.namedRanges = buildUnnamed7377();
    o.namedStyles = buildNamedStyles();
    o.positionedObjects = buildUnnamed7378();
    o.revisionId = 'foo';
    o.suggestedDocumentStyleChanges = buildUnnamed7379();
    o.suggestedNamedStylesChanges = buildUnnamed7380();
    o.suggestionsViewMode = 'foo';
    o.title = 'foo';
  }
  buildCounterDocument--;
  return o;
}

void checkDocument(api.Document o) {
  buildCounterDocument++;
  if (buildCounterDocument < 3) {
    checkBody(o.body!);
    unittest.expect(
      o.documentId!,
      unittest.equals('foo'),
    );
    checkDocumentStyle(o.documentStyle!);
    checkUnnamed7372(o.footers!);
    checkUnnamed7373(o.footnotes!);
    checkUnnamed7374(o.headers!);
    checkUnnamed7375(o.inlineObjects!);
    checkUnnamed7376(o.lists!);
    checkUnnamed7377(o.namedRanges!);
    checkNamedStyles(o.namedStyles!);
    checkUnnamed7378(o.positionedObjects!);
    unittest.expect(
      o.revisionId!,
      unittest.equals('foo'),
    );
    checkUnnamed7379(o.suggestedDocumentStyleChanges!);
    checkUnnamed7380(o.suggestedNamedStylesChanges!);
    unittest.expect(
      o.suggestionsViewMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterDocument--;
}

core.int buildCounterDocumentStyle = 0;
api.DocumentStyle buildDocumentStyle() {
  final o = api.DocumentStyle();
  buildCounterDocumentStyle++;
  if (buildCounterDocumentStyle < 3) {
    o.background = buildBackground();
    o.defaultFooterId = 'foo';
    o.defaultHeaderId = 'foo';
    o.evenPageFooterId = 'foo';
    o.evenPageHeaderId = 'foo';
    o.firstPageFooterId = 'foo';
    o.firstPageHeaderId = 'foo';
    o.marginBottom = buildDimension();
    o.marginFooter = buildDimension();
    o.marginHeader = buildDimension();
    o.marginLeft = buildDimension();
    o.marginRight = buildDimension();
    o.marginTop = buildDimension();
    o.pageNumberStart = 42;
    o.pageSize = buildSize();
    o.useCustomHeaderFooterMargins = true;
    o.useEvenPageHeaderFooter = true;
    o.useFirstPageHeaderFooter = true;
  }
  buildCounterDocumentStyle--;
  return o;
}

void checkDocumentStyle(api.DocumentStyle o) {
  buildCounterDocumentStyle++;
  if (buildCounterDocumentStyle < 3) {
    checkBackground(o.background!);
    unittest.expect(
      o.defaultFooterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultHeaderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.evenPageFooterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.evenPageHeaderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firstPageFooterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firstPageHeaderId!,
      unittest.equals('foo'),
    );
    checkDimension(o.marginBottom!);
    checkDimension(o.marginFooter!);
    checkDimension(o.marginHeader!);
    checkDimension(o.marginLeft!);
    checkDimension(o.marginRight!);
    checkDimension(o.marginTop!);
    unittest.expect(
      o.pageNumberStart!,
      unittest.equals(42),
    );
    checkSize(o.pageSize!);
    unittest.expect(o.useCustomHeaderFooterMargins!, unittest.isTrue);
    unittest.expect(o.useEvenPageHeaderFooter!, unittest.isTrue);
    unittest.expect(o.useFirstPageHeaderFooter!, unittest.isTrue);
  }
  buildCounterDocumentStyle--;
}

core.int buildCounterDocumentStyleSuggestionState = 0;
api.DocumentStyleSuggestionState buildDocumentStyleSuggestionState() {
  final o = api.DocumentStyleSuggestionState();
  buildCounterDocumentStyleSuggestionState++;
  if (buildCounterDocumentStyleSuggestionState < 3) {
    o.backgroundSuggestionState = buildBackgroundSuggestionState();
    o.defaultFooterIdSuggested = true;
    o.defaultHeaderIdSuggested = true;
    o.evenPageFooterIdSuggested = true;
    o.evenPageHeaderIdSuggested = true;
    o.firstPageFooterIdSuggested = true;
    o.firstPageHeaderIdSuggested = true;
    o.marginBottomSuggested = true;
    o.marginFooterSuggested = true;
    o.marginHeaderSuggested = true;
    o.marginLeftSuggested = true;
    o.marginRightSuggested = true;
    o.marginTopSuggested = true;
    o.pageNumberStartSuggested = true;
    o.pageSizeSuggestionState = buildSizeSuggestionState();
    o.useCustomHeaderFooterMarginsSuggested = true;
    o.useEvenPageHeaderFooterSuggested = true;
    o.useFirstPageHeaderFooterSuggested = true;
  }
  buildCounterDocumentStyleSuggestionState--;
  return o;
}

void checkDocumentStyleSuggestionState(api.DocumentStyleSuggestionState o) {
  buildCounterDocumentStyleSuggestionState++;
  if (buildCounterDocumentStyleSuggestionState < 3) {
    checkBackgroundSuggestionState(o.backgroundSuggestionState!);
    unittest.expect(o.defaultFooterIdSuggested!, unittest.isTrue);
    unittest.expect(o.defaultHeaderIdSuggested!, unittest.isTrue);
    unittest.expect(o.evenPageFooterIdSuggested!, unittest.isTrue);
    unittest.expect(o.evenPageHeaderIdSuggested!, unittest.isTrue);
    unittest.expect(o.firstPageFooterIdSuggested!, unittest.isTrue);
    unittest.expect(o.firstPageHeaderIdSuggested!, unittest.isTrue);
    unittest.expect(o.marginBottomSuggested!, unittest.isTrue);
    unittest.expect(o.marginFooterSuggested!, unittest.isTrue);
    unittest.expect(o.marginHeaderSuggested!, unittest.isTrue);
    unittest.expect(o.marginLeftSuggested!, unittest.isTrue);
    unittest.expect(o.marginRightSuggested!, unittest.isTrue);
    unittest.expect(o.marginTopSuggested!, unittest.isTrue);
    unittest.expect(o.pageNumberStartSuggested!, unittest.isTrue);
    checkSizeSuggestionState(o.pageSizeSuggestionState!);
    unittest.expect(o.useCustomHeaderFooterMarginsSuggested!, unittest.isTrue);
    unittest.expect(o.useEvenPageHeaderFooterSuggested!, unittest.isTrue);
    unittest.expect(o.useFirstPageHeaderFooterSuggested!, unittest.isTrue);
  }
  buildCounterDocumentStyleSuggestionState--;
}

core.int buildCounterEmbeddedDrawingProperties = 0;
api.EmbeddedDrawingProperties buildEmbeddedDrawingProperties() {
  final o = api.EmbeddedDrawingProperties();
  buildCounterEmbeddedDrawingProperties++;
  if (buildCounterEmbeddedDrawingProperties < 3) {}
  buildCounterEmbeddedDrawingProperties--;
  return o;
}

void checkEmbeddedDrawingProperties(api.EmbeddedDrawingProperties o) {
  buildCounterEmbeddedDrawingProperties++;
  if (buildCounterEmbeddedDrawingProperties < 3) {}
  buildCounterEmbeddedDrawingProperties--;
}

core.int buildCounterEmbeddedDrawingPropertiesSuggestionState = 0;
api.EmbeddedDrawingPropertiesSuggestionState
    buildEmbeddedDrawingPropertiesSuggestionState() {
  final o = api.EmbeddedDrawingPropertiesSuggestionState();
  buildCounterEmbeddedDrawingPropertiesSuggestionState++;
  if (buildCounterEmbeddedDrawingPropertiesSuggestionState < 3) {}
  buildCounterEmbeddedDrawingPropertiesSuggestionState--;
  return o;
}

void checkEmbeddedDrawingPropertiesSuggestionState(
    api.EmbeddedDrawingPropertiesSuggestionState o) {
  buildCounterEmbeddedDrawingPropertiesSuggestionState++;
  if (buildCounterEmbeddedDrawingPropertiesSuggestionState < 3) {}
  buildCounterEmbeddedDrawingPropertiesSuggestionState--;
}

core.int buildCounterEmbeddedObject = 0;
api.EmbeddedObject buildEmbeddedObject() {
  final o = api.EmbeddedObject();
  buildCounterEmbeddedObject++;
  if (buildCounterEmbeddedObject < 3) {
    o.description = 'foo';
    o.embeddedDrawingProperties = buildEmbeddedDrawingProperties();
    o.embeddedObjectBorder = buildEmbeddedObjectBorder();
    o.imageProperties = buildImageProperties();
    o.linkedContentReference = buildLinkedContentReference();
    o.marginBottom = buildDimension();
    o.marginLeft = buildDimension();
    o.marginRight = buildDimension();
    o.marginTop = buildDimension();
    o.size = buildSize();
    o.title = 'foo';
  }
  buildCounterEmbeddedObject--;
  return o;
}

void checkEmbeddedObject(api.EmbeddedObject o) {
  buildCounterEmbeddedObject++;
  if (buildCounterEmbeddedObject < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    checkEmbeddedDrawingProperties(o.embeddedDrawingProperties!);
    checkEmbeddedObjectBorder(o.embeddedObjectBorder!);
    checkImageProperties(o.imageProperties!);
    checkLinkedContentReference(o.linkedContentReference!);
    checkDimension(o.marginBottom!);
    checkDimension(o.marginLeft!);
    checkDimension(o.marginRight!);
    checkDimension(o.marginTop!);
    checkSize(o.size!);
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
  }
  buildCounterEmbeddedObject--;
}

core.int buildCounterEmbeddedObjectBorder = 0;
api.EmbeddedObjectBorder buildEmbeddedObjectBorder() {
  final o = api.EmbeddedObjectBorder();
  buildCounterEmbeddedObjectBorder++;
  if (buildCounterEmbeddedObjectBorder < 3) {
    o.color = buildOptionalColor();
    o.dashStyle = 'foo';
    o.propertyState = 'foo';
    o.width = buildDimension();
  }
  buildCounterEmbeddedObjectBorder--;
  return o;
}

void checkEmbeddedObjectBorder(api.EmbeddedObjectBorder o) {
  buildCounterEmbeddedObjectBorder++;
  if (buildCounterEmbeddedObjectBorder < 3) {
    checkOptionalColor(o.color!);
    unittest.expect(
      o.dashStyle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.propertyState!,
      unittest.equals('foo'),
    );
    checkDimension(o.width!);
  }
  buildCounterEmbeddedObjectBorder--;
}

core.int buildCounterEmbeddedObjectBorderSuggestionState = 0;
api.EmbeddedObjectBorderSuggestionState
    buildEmbeddedObjectBorderSuggestionState() {
  final o = api.EmbeddedObjectBorderSuggestionState();
  buildCounterEmbeddedObjectBorderSuggestionState++;
  if (buildCounterEmbeddedObjectBorderSuggestionState < 3) {
    o.colorSuggested = true;
    o.dashStyleSuggested = true;
    o.propertyStateSuggested = true;
    o.widthSuggested = true;
  }
  buildCounterEmbeddedObjectBorderSuggestionState--;
  return o;
}

void checkEmbeddedObjectBorderSuggestionState(
    api.EmbeddedObjectBorderSuggestionState o) {
  buildCounterEmbeddedObjectBorderSuggestionState++;
  if (buildCounterEmbeddedObjectBorderSuggestionState < 3) {
    unittest.expect(o.colorSuggested!, unittest.isTrue);
    unittest.expect(o.dashStyleSuggested!, unittest.isTrue);
    unittest.expect(o.propertyStateSuggested!, unittest.isTrue);
    unittest.expect(o.widthSuggested!, unittest.isTrue);
  }
  buildCounterEmbeddedObjectBorderSuggestionState--;
}

core.int buildCounterEmbeddedObjectSuggestionState = 0;
api.EmbeddedObjectSuggestionState buildEmbeddedObjectSuggestionState() {
  final o = api.EmbeddedObjectSuggestionState();
  buildCounterEmbeddedObjectSuggestionState++;
  if (buildCounterEmbeddedObjectSuggestionState < 3) {
    o.descriptionSuggested = true;
    o.embeddedDrawingPropertiesSuggestionState =
        buildEmbeddedDrawingPropertiesSuggestionState();
    o.embeddedObjectBorderSuggestionState =
        buildEmbeddedObjectBorderSuggestionState();
    o.imagePropertiesSuggestionState = buildImagePropertiesSuggestionState();
    o.linkedContentReferenceSuggestionState =
        buildLinkedContentReferenceSuggestionState();
    o.marginBottomSuggested = true;
    o.marginLeftSuggested = true;
    o.marginRightSuggested = true;
    o.marginTopSuggested = true;
    o.sizeSuggestionState = buildSizeSuggestionState();
    o.titleSuggested = true;
  }
  buildCounterEmbeddedObjectSuggestionState--;
  return o;
}

void checkEmbeddedObjectSuggestionState(api.EmbeddedObjectSuggestionState o) {
  buildCounterEmbeddedObjectSuggestionState++;
  if (buildCounterEmbeddedObjectSuggestionState < 3) {
    unittest.expect(o.descriptionSuggested!, unittest.isTrue);
    checkEmbeddedDrawingPropertiesSuggestionState(
        o.embeddedDrawingPropertiesSuggestionState!);
    checkEmbeddedObjectBorderSuggestionState(
        o.embeddedObjectBorderSuggestionState!);
    checkImagePropertiesSuggestionState(o.imagePropertiesSuggestionState!);
    checkLinkedContentReferenceSuggestionState(
        o.linkedContentReferenceSuggestionState!);
    unittest.expect(o.marginBottomSuggested!, unittest.isTrue);
    unittest.expect(o.marginLeftSuggested!, unittest.isTrue);
    unittest.expect(o.marginRightSuggested!, unittest.isTrue);
    unittest.expect(o.marginTopSuggested!, unittest.isTrue);
    checkSizeSuggestionState(o.sizeSuggestionState!);
    unittest.expect(o.titleSuggested!, unittest.isTrue);
  }
  buildCounterEmbeddedObjectSuggestionState--;
}

core.int buildCounterEndOfSegmentLocation = 0;
api.EndOfSegmentLocation buildEndOfSegmentLocation() {
  final o = api.EndOfSegmentLocation();
  buildCounterEndOfSegmentLocation++;
  if (buildCounterEndOfSegmentLocation < 3) {
    o.segmentId = 'foo';
  }
  buildCounterEndOfSegmentLocation--;
  return o;
}

void checkEndOfSegmentLocation(api.EndOfSegmentLocation o) {
  buildCounterEndOfSegmentLocation++;
  if (buildCounterEndOfSegmentLocation < 3) {
    unittest.expect(
      o.segmentId!,
      unittest.equals('foo'),
    );
  }
  buildCounterEndOfSegmentLocation--;
}

core.List<core.String> buildUnnamed7381() => [
      'foo',
      'foo',
    ];

void checkUnnamed7381(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7382() => [
      'foo',
      'foo',
    ];

void checkUnnamed7382(core.List<core.String> o) {
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

core.int buildCounterEquation = 0;
api.Equation buildEquation() {
  final o = api.Equation();
  buildCounterEquation++;
  if (buildCounterEquation < 3) {
    o.suggestedDeletionIds = buildUnnamed7381();
    o.suggestedInsertionIds = buildUnnamed7382();
  }
  buildCounterEquation--;
  return o;
}

void checkEquation(api.Equation o) {
  buildCounterEquation++;
  if (buildCounterEquation < 3) {
    checkUnnamed7381(o.suggestedDeletionIds!);
    checkUnnamed7382(o.suggestedInsertionIds!);
  }
  buildCounterEquation--;
}

core.List<api.StructuralElement> buildUnnamed7383() => [
      buildStructuralElement(),
      buildStructuralElement(),
    ];

void checkUnnamed7383(core.List<api.StructuralElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStructuralElement(o[0]);
  checkStructuralElement(o[1]);
}

core.int buildCounterFooter = 0;
api.Footer buildFooter() {
  final o = api.Footer();
  buildCounterFooter++;
  if (buildCounterFooter < 3) {
    o.content = buildUnnamed7383();
    o.footerId = 'foo';
  }
  buildCounterFooter--;
  return o;
}

void checkFooter(api.Footer o) {
  buildCounterFooter++;
  if (buildCounterFooter < 3) {
    checkUnnamed7383(o.content!);
    unittest.expect(
      o.footerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterFooter--;
}

core.List<api.StructuralElement> buildUnnamed7384() => [
      buildStructuralElement(),
      buildStructuralElement(),
    ];

void checkUnnamed7384(core.List<api.StructuralElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStructuralElement(o[0]);
  checkStructuralElement(o[1]);
}

core.int buildCounterFootnote = 0;
api.Footnote buildFootnote() {
  final o = api.Footnote();
  buildCounterFootnote++;
  if (buildCounterFootnote < 3) {
    o.content = buildUnnamed7384();
    o.footnoteId = 'foo';
  }
  buildCounterFootnote--;
  return o;
}

void checkFootnote(api.Footnote o) {
  buildCounterFootnote++;
  if (buildCounterFootnote < 3) {
    checkUnnamed7384(o.content!);
    unittest.expect(
      o.footnoteId!,
      unittest.equals('foo'),
    );
  }
  buildCounterFootnote--;
}

core.List<core.String> buildUnnamed7385() => [
      'foo',
      'foo',
    ];

void checkUnnamed7385(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7386() => [
      'foo',
      'foo',
    ];

void checkUnnamed7386(core.List<core.String> o) {
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

core.Map<core.String, api.SuggestedTextStyle> buildUnnamed7387() => {
      'x': buildSuggestedTextStyle(),
      'y': buildSuggestedTextStyle(),
    };

void checkUnnamed7387(core.Map<core.String, api.SuggestedTextStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTextStyle(o['x']!);
  checkSuggestedTextStyle(o['y']!);
}

core.int buildCounterFootnoteReference = 0;
api.FootnoteReference buildFootnoteReference() {
  final o = api.FootnoteReference();
  buildCounterFootnoteReference++;
  if (buildCounterFootnoteReference < 3) {
    o.footnoteId = 'foo';
    o.footnoteNumber = 'foo';
    o.suggestedDeletionIds = buildUnnamed7385();
    o.suggestedInsertionIds = buildUnnamed7386();
    o.suggestedTextStyleChanges = buildUnnamed7387();
    o.textStyle = buildTextStyle();
  }
  buildCounterFootnoteReference--;
  return o;
}

void checkFootnoteReference(api.FootnoteReference o) {
  buildCounterFootnoteReference++;
  if (buildCounterFootnoteReference < 3) {
    unittest.expect(
      o.footnoteId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.footnoteNumber!,
      unittest.equals('foo'),
    );
    checkUnnamed7385(o.suggestedDeletionIds!);
    checkUnnamed7386(o.suggestedInsertionIds!);
    checkUnnamed7387(o.suggestedTextStyleChanges!);
    checkTextStyle(o.textStyle!);
  }
  buildCounterFootnoteReference--;
}

core.List<api.StructuralElement> buildUnnamed7388() => [
      buildStructuralElement(),
      buildStructuralElement(),
    ];

void checkUnnamed7388(core.List<api.StructuralElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStructuralElement(o[0]);
  checkStructuralElement(o[1]);
}

core.int buildCounterHeader = 0;
api.Header buildHeader() {
  final o = api.Header();
  buildCounterHeader++;
  if (buildCounterHeader < 3) {
    o.content = buildUnnamed7388();
    o.headerId = 'foo';
  }
  buildCounterHeader--;
  return o;
}

void checkHeader(api.Header o) {
  buildCounterHeader++;
  if (buildCounterHeader < 3) {
    checkUnnamed7388(o.content!);
    unittest.expect(
      o.headerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterHeader--;
}

core.List<core.String> buildUnnamed7389() => [
      'foo',
      'foo',
    ];

void checkUnnamed7389(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7390() => [
      'foo',
      'foo',
    ];

void checkUnnamed7390(core.List<core.String> o) {
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

core.Map<core.String, api.SuggestedTextStyle> buildUnnamed7391() => {
      'x': buildSuggestedTextStyle(),
      'y': buildSuggestedTextStyle(),
    };

void checkUnnamed7391(core.Map<core.String, api.SuggestedTextStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTextStyle(o['x']!);
  checkSuggestedTextStyle(o['y']!);
}

core.int buildCounterHorizontalRule = 0;
api.HorizontalRule buildHorizontalRule() {
  final o = api.HorizontalRule();
  buildCounterHorizontalRule++;
  if (buildCounterHorizontalRule < 3) {
    o.suggestedDeletionIds = buildUnnamed7389();
    o.suggestedInsertionIds = buildUnnamed7390();
    o.suggestedTextStyleChanges = buildUnnamed7391();
    o.textStyle = buildTextStyle();
  }
  buildCounterHorizontalRule--;
  return o;
}

void checkHorizontalRule(api.HorizontalRule o) {
  buildCounterHorizontalRule++;
  if (buildCounterHorizontalRule < 3) {
    checkUnnamed7389(o.suggestedDeletionIds!);
    checkUnnamed7390(o.suggestedInsertionIds!);
    checkUnnamed7391(o.suggestedTextStyleChanges!);
    checkTextStyle(o.textStyle!);
  }
  buildCounterHorizontalRule--;
}

core.int buildCounterImageProperties = 0;
api.ImageProperties buildImageProperties() {
  final o = api.ImageProperties();
  buildCounterImageProperties++;
  if (buildCounterImageProperties < 3) {
    o.angle = 42.0;
    o.brightness = 42.0;
    o.contentUri = 'foo';
    o.contrast = 42.0;
    o.cropProperties = buildCropProperties();
    o.sourceUri = 'foo';
    o.transparency = 42.0;
  }
  buildCounterImageProperties--;
  return o;
}

void checkImageProperties(api.ImageProperties o) {
  buildCounterImageProperties++;
  if (buildCounterImageProperties < 3) {
    unittest.expect(
      o.angle!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.brightness!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.contentUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contrast!,
      unittest.equals(42.0),
    );
    checkCropProperties(o.cropProperties!);
    unittest.expect(
      o.sourceUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.transparency!,
      unittest.equals(42.0),
    );
  }
  buildCounterImageProperties--;
}

core.int buildCounterImagePropertiesSuggestionState = 0;
api.ImagePropertiesSuggestionState buildImagePropertiesSuggestionState() {
  final o = api.ImagePropertiesSuggestionState();
  buildCounterImagePropertiesSuggestionState++;
  if (buildCounterImagePropertiesSuggestionState < 3) {
    o.angleSuggested = true;
    o.brightnessSuggested = true;
    o.contentUriSuggested = true;
    o.contrastSuggested = true;
    o.cropPropertiesSuggestionState = buildCropPropertiesSuggestionState();
    o.sourceUriSuggested = true;
    o.transparencySuggested = true;
  }
  buildCounterImagePropertiesSuggestionState--;
  return o;
}

void checkImagePropertiesSuggestionState(api.ImagePropertiesSuggestionState o) {
  buildCounterImagePropertiesSuggestionState++;
  if (buildCounterImagePropertiesSuggestionState < 3) {
    unittest.expect(o.angleSuggested!, unittest.isTrue);
    unittest.expect(o.brightnessSuggested!, unittest.isTrue);
    unittest.expect(o.contentUriSuggested!, unittest.isTrue);
    unittest.expect(o.contrastSuggested!, unittest.isTrue);
    checkCropPropertiesSuggestionState(o.cropPropertiesSuggestionState!);
    unittest.expect(o.sourceUriSuggested!, unittest.isTrue);
    unittest.expect(o.transparencySuggested!, unittest.isTrue);
  }
  buildCounterImagePropertiesSuggestionState--;
}

core.List<core.String> buildUnnamed7392() => [
      'foo',
      'foo',
    ];

void checkUnnamed7392(core.List<core.String> o) {
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

core.Map<core.String, api.SuggestedInlineObjectProperties> buildUnnamed7393() =>
    {
      'x': buildSuggestedInlineObjectProperties(),
      'y': buildSuggestedInlineObjectProperties(),
    };

void checkUnnamed7393(
    core.Map<core.String, api.SuggestedInlineObjectProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedInlineObjectProperties(o['x']!);
  checkSuggestedInlineObjectProperties(o['y']!);
}

core.int buildCounterInlineObject = 0;
api.InlineObject buildInlineObject() {
  final o = api.InlineObject();
  buildCounterInlineObject++;
  if (buildCounterInlineObject < 3) {
    o.inlineObjectProperties = buildInlineObjectProperties();
    o.objectId = 'foo';
    o.suggestedDeletionIds = buildUnnamed7392();
    o.suggestedInlineObjectPropertiesChanges = buildUnnamed7393();
    o.suggestedInsertionId = 'foo';
  }
  buildCounterInlineObject--;
  return o;
}

void checkInlineObject(api.InlineObject o) {
  buildCounterInlineObject++;
  if (buildCounterInlineObject < 3) {
    checkInlineObjectProperties(o.inlineObjectProperties!);
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    checkUnnamed7392(o.suggestedDeletionIds!);
    checkUnnamed7393(o.suggestedInlineObjectPropertiesChanges!);
    unittest.expect(
      o.suggestedInsertionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterInlineObject--;
}

core.List<core.String> buildUnnamed7394() => [
      'foo',
      'foo',
    ];

void checkUnnamed7394(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7395() => [
      'foo',
      'foo',
    ];

void checkUnnamed7395(core.List<core.String> o) {
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

core.Map<core.String, api.SuggestedTextStyle> buildUnnamed7396() => {
      'x': buildSuggestedTextStyle(),
      'y': buildSuggestedTextStyle(),
    };

void checkUnnamed7396(core.Map<core.String, api.SuggestedTextStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTextStyle(o['x']!);
  checkSuggestedTextStyle(o['y']!);
}

core.int buildCounterInlineObjectElement = 0;
api.InlineObjectElement buildInlineObjectElement() {
  final o = api.InlineObjectElement();
  buildCounterInlineObjectElement++;
  if (buildCounterInlineObjectElement < 3) {
    o.inlineObjectId = 'foo';
    o.suggestedDeletionIds = buildUnnamed7394();
    o.suggestedInsertionIds = buildUnnamed7395();
    o.suggestedTextStyleChanges = buildUnnamed7396();
    o.textStyle = buildTextStyle();
  }
  buildCounterInlineObjectElement--;
  return o;
}

void checkInlineObjectElement(api.InlineObjectElement o) {
  buildCounterInlineObjectElement++;
  if (buildCounterInlineObjectElement < 3) {
    unittest.expect(
      o.inlineObjectId!,
      unittest.equals('foo'),
    );
    checkUnnamed7394(o.suggestedDeletionIds!);
    checkUnnamed7395(o.suggestedInsertionIds!);
    checkUnnamed7396(o.suggestedTextStyleChanges!);
    checkTextStyle(o.textStyle!);
  }
  buildCounterInlineObjectElement--;
}

core.int buildCounterInlineObjectProperties = 0;
api.InlineObjectProperties buildInlineObjectProperties() {
  final o = api.InlineObjectProperties();
  buildCounterInlineObjectProperties++;
  if (buildCounterInlineObjectProperties < 3) {
    o.embeddedObject = buildEmbeddedObject();
  }
  buildCounterInlineObjectProperties--;
  return o;
}

void checkInlineObjectProperties(api.InlineObjectProperties o) {
  buildCounterInlineObjectProperties++;
  if (buildCounterInlineObjectProperties < 3) {
    checkEmbeddedObject(o.embeddedObject!);
  }
  buildCounterInlineObjectProperties--;
}

core.int buildCounterInlineObjectPropertiesSuggestionState = 0;
api.InlineObjectPropertiesSuggestionState
    buildInlineObjectPropertiesSuggestionState() {
  final o = api.InlineObjectPropertiesSuggestionState();
  buildCounterInlineObjectPropertiesSuggestionState++;
  if (buildCounterInlineObjectPropertiesSuggestionState < 3) {
    o.embeddedObjectSuggestionState = buildEmbeddedObjectSuggestionState();
  }
  buildCounterInlineObjectPropertiesSuggestionState--;
  return o;
}

void checkInlineObjectPropertiesSuggestionState(
    api.InlineObjectPropertiesSuggestionState o) {
  buildCounterInlineObjectPropertiesSuggestionState++;
  if (buildCounterInlineObjectPropertiesSuggestionState < 3) {
    checkEmbeddedObjectSuggestionState(o.embeddedObjectSuggestionState!);
  }
  buildCounterInlineObjectPropertiesSuggestionState--;
}

core.int buildCounterInsertInlineImageRequest = 0;
api.InsertInlineImageRequest buildInsertInlineImageRequest() {
  final o = api.InsertInlineImageRequest();
  buildCounterInsertInlineImageRequest++;
  if (buildCounterInsertInlineImageRequest < 3) {
    o.endOfSegmentLocation = buildEndOfSegmentLocation();
    o.location = buildLocation();
    o.objectSize = buildSize();
    o.uri = 'foo';
  }
  buildCounterInsertInlineImageRequest--;
  return o;
}

void checkInsertInlineImageRequest(api.InsertInlineImageRequest o) {
  buildCounterInsertInlineImageRequest++;
  if (buildCounterInsertInlineImageRequest < 3) {
    checkEndOfSegmentLocation(o.endOfSegmentLocation!);
    checkLocation(o.location!);
    checkSize(o.objectSize!);
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterInsertInlineImageRequest--;
}

core.int buildCounterInsertInlineImageResponse = 0;
api.InsertInlineImageResponse buildInsertInlineImageResponse() {
  final o = api.InsertInlineImageResponse();
  buildCounterInsertInlineImageResponse++;
  if (buildCounterInsertInlineImageResponse < 3) {
    o.objectId = 'foo';
  }
  buildCounterInsertInlineImageResponse--;
  return o;
}

void checkInsertInlineImageResponse(api.InsertInlineImageResponse o) {
  buildCounterInsertInlineImageResponse++;
  if (buildCounterInsertInlineImageResponse < 3) {
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterInsertInlineImageResponse--;
}

core.int buildCounterInsertInlineSheetsChartResponse = 0;
api.InsertInlineSheetsChartResponse buildInsertInlineSheetsChartResponse() {
  final o = api.InsertInlineSheetsChartResponse();
  buildCounterInsertInlineSheetsChartResponse++;
  if (buildCounterInsertInlineSheetsChartResponse < 3) {
    o.objectId = 'foo';
  }
  buildCounterInsertInlineSheetsChartResponse--;
  return o;
}

void checkInsertInlineSheetsChartResponse(
    api.InsertInlineSheetsChartResponse o) {
  buildCounterInsertInlineSheetsChartResponse++;
  if (buildCounterInsertInlineSheetsChartResponse < 3) {
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterInsertInlineSheetsChartResponse--;
}

core.int buildCounterInsertPageBreakRequest = 0;
api.InsertPageBreakRequest buildInsertPageBreakRequest() {
  final o = api.InsertPageBreakRequest();
  buildCounterInsertPageBreakRequest++;
  if (buildCounterInsertPageBreakRequest < 3) {
    o.endOfSegmentLocation = buildEndOfSegmentLocation();
    o.location = buildLocation();
  }
  buildCounterInsertPageBreakRequest--;
  return o;
}

void checkInsertPageBreakRequest(api.InsertPageBreakRequest o) {
  buildCounterInsertPageBreakRequest++;
  if (buildCounterInsertPageBreakRequest < 3) {
    checkEndOfSegmentLocation(o.endOfSegmentLocation!);
    checkLocation(o.location!);
  }
  buildCounterInsertPageBreakRequest--;
}

core.int buildCounterInsertSectionBreakRequest = 0;
api.InsertSectionBreakRequest buildInsertSectionBreakRequest() {
  final o = api.InsertSectionBreakRequest();
  buildCounterInsertSectionBreakRequest++;
  if (buildCounterInsertSectionBreakRequest < 3) {
    o.endOfSegmentLocation = buildEndOfSegmentLocation();
    o.location = buildLocation();
    o.sectionType = 'foo';
  }
  buildCounterInsertSectionBreakRequest--;
  return o;
}

void checkInsertSectionBreakRequest(api.InsertSectionBreakRequest o) {
  buildCounterInsertSectionBreakRequest++;
  if (buildCounterInsertSectionBreakRequest < 3) {
    checkEndOfSegmentLocation(o.endOfSegmentLocation!);
    checkLocation(o.location!);
    unittest.expect(
      o.sectionType!,
      unittest.equals('foo'),
    );
  }
  buildCounterInsertSectionBreakRequest--;
}

core.int buildCounterInsertTableColumnRequest = 0;
api.InsertTableColumnRequest buildInsertTableColumnRequest() {
  final o = api.InsertTableColumnRequest();
  buildCounterInsertTableColumnRequest++;
  if (buildCounterInsertTableColumnRequest < 3) {
    o.insertRight = true;
    o.tableCellLocation = buildTableCellLocation();
  }
  buildCounterInsertTableColumnRequest--;
  return o;
}

void checkInsertTableColumnRequest(api.InsertTableColumnRequest o) {
  buildCounterInsertTableColumnRequest++;
  if (buildCounterInsertTableColumnRequest < 3) {
    unittest.expect(o.insertRight!, unittest.isTrue);
    checkTableCellLocation(o.tableCellLocation!);
  }
  buildCounterInsertTableColumnRequest--;
}

core.int buildCounterInsertTableRequest = 0;
api.InsertTableRequest buildInsertTableRequest() {
  final o = api.InsertTableRequest();
  buildCounterInsertTableRequest++;
  if (buildCounterInsertTableRequest < 3) {
    o.columns = 42;
    o.endOfSegmentLocation = buildEndOfSegmentLocation();
    o.location = buildLocation();
    o.rows = 42;
  }
  buildCounterInsertTableRequest--;
  return o;
}

void checkInsertTableRequest(api.InsertTableRequest o) {
  buildCounterInsertTableRequest++;
  if (buildCounterInsertTableRequest < 3) {
    unittest.expect(
      o.columns!,
      unittest.equals(42),
    );
    checkEndOfSegmentLocation(o.endOfSegmentLocation!);
    checkLocation(o.location!);
    unittest.expect(
      o.rows!,
      unittest.equals(42),
    );
  }
  buildCounterInsertTableRequest--;
}

core.int buildCounterInsertTableRowRequest = 0;
api.InsertTableRowRequest buildInsertTableRowRequest() {
  final o = api.InsertTableRowRequest();
  buildCounterInsertTableRowRequest++;
  if (buildCounterInsertTableRowRequest < 3) {
    o.insertBelow = true;
    o.tableCellLocation = buildTableCellLocation();
  }
  buildCounterInsertTableRowRequest--;
  return o;
}

void checkInsertTableRowRequest(api.InsertTableRowRequest o) {
  buildCounterInsertTableRowRequest++;
  if (buildCounterInsertTableRowRequest < 3) {
    unittest.expect(o.insertBelow!, unittest.isTrue);
    checkTableCellLocation(o.tableCellLocation!);
  }
  buildCounterInsertTableRowRequest--;
}

core.int buildCounterInsertTextRequest = 0;
api.InsertTextRequest buildInsertTextRequest() {
  final o = api.InsertTextRequest();
  buildCounterInsertTextRequest++;
  if (buildCounterInsertTextRequest < 3) {
    o.endOfSegmentLocation = buildEndOfSegmentLocation();
    o.location = buildLocation();
    o.text = 'foo';
  }
  buildCounterInsertTextRequest--;
  return o;
}

void checkInsertTextRequest(api.InsertTextRequest o) {
  buildCounterInsertTextRequest++;
  if (buildCounterInsertTextRequest < 3) {
    checkEndOfSegmentLocation(o.endOfSegmentLocation!);
    checkLocation(o.location!);
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterInsertTextRequest--;
}

core.int buildCounterLink = 0;
api.Link buildLink() {
  final o = api.Link();
  buildCounterLink++;
  if (buildCounterLink < 3) {
    o.bookmarkId = 'foo';
    o.headingId = 'foo';
    o.url = 'foo';
  }
  buildCounterLink--;
  return o;
}

void checkLink(api.Link o) {
  buildCounterLink++;
  if (buildCounterLink < 3) {
    unittest.expect(
      o.bookmarkId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.headingId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterLink--;
}

core.int buildCounterLinkedContentReference = 0;
api.LinkedContentReference buildLinkedContentReference() {
  final o = api.LinkedContentReference();
  buildCounterLinkedContentReference++;
  if (buildCounterLinkedContentReference < 3) {
    o.sheetsChartReference = buildSheetsChartReference();
  }
  buildCounterLinkedContentReference--;
  return o;
}

void checkLinkedContentReference(api.LinkedContentReference o) {
  buildCounterLinkedContentReference++;
  if (buildCounterLinkedContentReference < 3) {
    checkSheetsChartReference(o.sheetsChartReference!);
  }
  buildCounterLinkedContentReference--;
}

core.int buildCounterLinkedContentReferenceSuggestionState = 0;
api.LinkedContentReferenceSuggestionState
    buildLinkedContentReferenceSuggestionState() {
  final o = api.LinkedContentReferenceSuggestionState();
  buildCounterLinkedContentReferenceSuggestionState++;
  if (buildCounterLinkedContentReferenceSuggestionState < 3) {
    o.sheetsChartReferenceSuggestionState =
        buildSheetsChartReferenceSuggestionState();
  }
  buildCounterLinkedContentReferenceSuggestionState--;
  return o;
}

void checkLinkedContentReferenceSuggestionState(
    api.LinkedContentReferenceSuggestionState o) {
  buildCounterLinkedContentReferenceSuggestionState++;
  if (buildCounterLinkedContentReferenceSuggestionState < 3) {
    checkSheetsChartReferenceSuggestionState(
        o.sheetsChartReferenceSuggestionState!);
  }
  buildCounterLinkedContentReferenceSuggestionState--;
}

core.List<core.String> buildUnnamed7397() => [
      'foo',
      'foo',
    ];

void checkUnnamed7397(core.List<core.String> o) {
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

core.Map<core.String, api.SuggestedListProperties> buildUnnamed7398() => {
      'x': buildSuggestedListProperties(),
      'y': buildSuggestedListProperties(),
    };

void checkUnnamed7398(core.Map<core.String, api.SuggestedListProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedListProperties(o['x']!);
  checkSuggestedListProperties(o['y']!);
}

core.int buildCounterList = 0;
api.List buildList() {
  final o = api.List();
  buildCounterList++;
  if (buildCounterList < 3) {
    o.listProperties = buildListProperties();
    o.suggestedDeletionIds = buildUnnamed7397();
    o.suggestedInsertionId = 'foo';
    o.suggestedListPropertiesChanges = buildUnnamed7398();
  }
  buildCounterList--;
  return o;
}

void checkList(api.List o) {
  buildCounterList++;
  if (buildCounterList < 3) {
    checkListProperties(o.listProperties!);
    checkUnnamed7397(o.suggestedDeletionIds!);
    unittest.expect(
      o.suggestedInsertionId!,
      unittest.equals('foo'),
    );
    checkUnnamed7398(o.suggestedListPropertiesChanges!);
  }
  buildCounterList--;
}

core.List<api.NestingLevel> buildUnnamed7399() => [
      buildNestingLevel(),
      buildNestingLevel(),
    ];

void checkUnnamed7399(core.List<api.NestingLevel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNestingLevel(o[0]);
  checkNestingLevel(o[1]);
}

core.int buildCounterListProperties = 0;
api.ListProperties buildListProperties() {
  final o = api.ListProperties();
  buildCounterListProperties++;
  if (buildCounterListProperties < 3) {
    o.nestingLevels = buildUnnamed7399();
  }
  buildCounterListProperties--;
  return o;
}

void checkListProperties(api.ListProperties o) {
  buildCounterListProperties++;
  if (buildCounterListProperties < 3) {
    checkUnnamed7399(o.nestingLevels!);
  }
  buildCounterListProperties--;
}

core.List<api.NestingLevelSuggestionState> buildUnnamed7400() => [
      buildNestingLevelSuggestionState(),
      buildNestingLevelSuggestionState(),
    ];

void checkUnnamed7400(core.List<api.NestingLevelSuggestionState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNestingLevelSuggestionState(o[0]);
  checkNestingLevelSuggestionState(o[1]);
}

core.int buildCounterListPropertiesSuggestionState = 0;
api.ListPropertiesSuggestionState buildListPropertiesSuggestionState() {
  final o = api.ListPropertiesSuggestionState();
  buildCounterListPropertiesSuggestionState++;
  if (buildCounterListPropertiesSuggestionState < 3) {
    o.nestingLevelsSuggestionStates = buildUnnamed7400();
  }
  buildCounterListPropertiesSuggestionState--;
  return o;
}

void checkListPropertiesSuggestionState(api.ListPropertiesSuggestionState o) {
  buildCounterListPropertiesSuggestionState++;
  if (buildCounterListPropertiesSuggestionState < 3) {
    checkUnnamed7400(o.nestingLevelsSuggestionStates!);
  }
  buildCounterListPropertiesSuggestionState--;
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.index = 42;
    o.segmentId = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
    unittest.expect(
      o.segmentId!,
      unittest.equals('foo'),
    );
  }
  buildCounterLocation--;
}

core.int buildCounterMergeTableCellsRequest = 0;
api.MergeTableCellsRequest buildMergeTableCellsRequest() {
  final o = api.MergeTableCellsRequest();
  buildCounterMergeTableCellsRequest++;
  if (buildCounterMergeTableCellsRequest < 3) {
    o.tableRange = buildTableRange();
  }
  buildCounterMergeTableCellsRequest--;
  return o;
}

void checkMergeTableCellsRequest(api.MergeTableCellsRequest o) {
  buildCounterMergeTableCellsRequest++;
  if (buildCounterMergeTableCellsRequest < 3) {
    checkTableRange(o.tableRange!);
  }
  buildCounterMergeTableCellsRequest--;
}

core.List<api.Range> buildUnnamed7401() => [
      buildRange(),
      buildRange(),
    ];

void checkUnnamed7401(core.List<api.Range> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRange(o[0]);
  checkRange(o[1]);
}

core.int buildCounterNamedRange = 0;
api.NamedRange buildNamedRange() {
  final o = api.NamedRange();
  buildCounterNamedRange++;
  if (buildCounterNamedRange < 3) {
    o.name = 'foo';
    o.namedRangeId = 'foo';
    o.ranges = buildUnnamed7401();
  }
  buildCounterNamedRange--;
  return o;
}

void checkNamedRange(api.NamedRange o) {
  buildCounterNamedRange++;
  if (buildCounterNamedRange < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.namedRangeId!,
      unittest.equals('foo'),
    );
    checkUnnamed7401(o.ranges!);
  }
  buildCounterNamedRange--;
}

core.List<api.NamedRange> buildUnnamed7402() => [
      buildNamedRange(),
      buildNamedRange(),
    ];

void checkUnnamed7402(core.List<api.NamedRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamedRange(o[0]);
  checkNamedRange(o[1]);
}

core.int buildCounterNamedRanges = 0;
api.NamedRanges buildNamedRanges() {
  final o = api.NamedRanges();
  buildCounterNamedRanges++;
  if (buildCounterNamedRanges < 3) {
    o.name = 'foo';
    o.namedRanges = buildUnnamed7402();
  }
  buildCounterNamedRanges--;
  return o;
}

void checkNamedRanges(api.NamedRanges o) {
  buildCounterNamedRanges++;
  if (buildCounterNamedRanges < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed7402(o.namedRanges!);
  }
  buildCounterNamedRanges--;
}

core.int buildCounterNamedStyle = 0;
api.NamedStyle buildNamedStyle() {
  final o = api.NamedStyle();
  buildCounterNamedStyle++;
  if (buildCounterNamedStyle < 3) {
    o.namedStyleType = 'foo';
    o.paragraphStyle = buildParagraphStyle();
    o.textStyle = buildTextStyle();
  }
  buildCounterNamedStyle--;
  return o;
}

void checkNamedStyle(api.NamedStyle o) {
  buildCounterNamedStyle++;
  if (buildCounterNamedStyle < 3) {
    unittest.expect(
      o.namedStyleType!,
      unittest.equals('foo'),
    );
    checkParagraphStyle(o.paragraphStyle!);
    checkTextStyle(o.textStyle!);
  }
  buildCounterNamedStyle--;
}

core.int buildCounterNamedStyleSuggestionState = 0;
api.NamedStyleSuggestionState buildNamedStyleSuggestionState() {
  final o = api.NamedStyleSuggestionState();
  buildCounterNamedStyleSuggestionState++;
  if (buildCounterNamedStyleSuggestionState < 3) {
    o.namedStyleType = 'foo';
    o.paragraphStyleSuggestionState = buildParagraphStyleSuggestionState();
    o.textStyleSuggestionState = buildTextStyleSuggestionState();
  }
  buildCounterNamedStyleSuggestionState--;
  return o;
}

void checkNamedStyleSuggestionState(api.NamedStyleSuggestionState o) {
  buildCounterNamedStyleSuggestionState++;
  if (buildCounterNamedStyleSuggestionState < 3) {
    unittest.expect(
      o.namedStyleType!,
      unittest.equals('foo'),
    );
    checkParagraphStyleSuggestionState(o.paragraphStyleSuggestionState!);
    checkTextStyleSuggestionState(o.textStyleSuggestionState!);
  }
  buildCounterNamedStyleSuggestionState--;
}

core.List<api.NamedStyle> buildUnnamed7403() => [
      buildNamedStyle(),
      buildNamedStyle(),
    ];

void checkUnnamed7403(core.List<api.NamedStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamedStyle(o[0]);
  checkNamedStyle(o[1]);
}

core.int buildCounterNamedStyles = 0;
api.NamedStyles buildNamedStyles() {
  final o = api.NamedStyles();
  buildCounterNamedStyles++;
  if (buildCounterNamedStyles < 3) {
    o.styles = buildUnnamed7403();
  }
  buildCounterNamedStyles--;
  return o;
}

void checkNamedStyles(api.NamedStyles o) {
  buildCounterNamedStyles++;
  if (buildCounterNamedStyles < 3) {
    checkUnnamed7403(o.styles!);
  }
  buildCounterNamedStyles--;
}

core.List<api.NamedStyleSuggestionState> buildUnnamed7404() => [
      buildNamedStyleSuggestionState(),
      buildNamedStyleSuggestionState(),
    ];

void checkUnnamed7404(core.List<api.NamedStyleSuggestionState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamedStyleSuggestionState(o[0]);
  checkNamedStyleSuggestionState(o[1]);
}

core.int buildCounterNamedStylesSuggestionState = 0;
api.NamedStylesSuggestionState buildNamedStylesSuggestionState() {
  final o = api.NamedStylesSuggestionState();
  buildCounterNamedStylesSuggestionState++;
  if (buildCounterNamedStylesSuggestionState < 3) {
    o.stylesSuggestionStates = buildUnnamed7404();
  }
  buildCounterNamedStylesSuggestionState--;
  return o;
}

void checkNamedStylesSuggestionState(api.NamedStylesSuggestionState o) {
  buildCounterNamedStylesSuggestionState++;
  if (buildCounterNamedStylesSuggestionState < 3) {
    checkUnnamed7404(o.stylesSuggestionStates!);
  }
  buildCounterNamedStylesSuggestionState--;
}

core.int buildCounterNestingLevel = 0;
api.NestingLevel buildNestingLevel() {
  final o = api.NestingLevel();
  buildCounterNestingLevel++;
  if (buildCounterNestingLevel < 3) {
    o.bulletAlignment = 'foo';
    o.glyphFormat = 'foo';
    o.glyphSymbol = 'foo';
    o.glyphType = 'foo';
    o.indentFirstLine = buildDimension();
    o.indentStart = buildDimension();
    o.startNumber = 42;
    o.textStyle = buildTextStyle();
  }
  buildCounterNestingLevel--;
  return o;
}

void checkNestingLevel(api.NestingLevel o) {
  buildCounterNestingLevel++;
  if (buildCounterNestingLevel < 3) {
    unittest.expect(
      o.bulletAlignment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.glyphFormat!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.glyphSymbol!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.glyphType!,
      unittest.equals('foo'),
    );
    checkDimension(o.indentFirstLine!);
    checkDimension(o.indentStart!);
    unittest.expect(
      o.startNumber!,
      unittest.equals(42),
    );
    checkTextStyle(o.textStyle!);
  }
  buildCounterNestingLevel--;
}

core.int buildCounterNestingLevelSuggestionState = 0;
api.NestingLevelSuggestionState buildNestingLevelSuggestionState() {
  final o = api.NestingLevelSuggestionState();
  buildCounterNestingLevelSuggestionState++;
  if (buildCounterNestingLevelSuggestionState < 3) {
    o.bulletAlignmentSuggested = true;
    o.glyphFormatSuggested = true;
    o.glyphSymbolSuggested = true;
    o.glyphTypeSuggested = true;
    o.indentFirstLineSuggested = true;
    o.indentStartSuggested = true;
    o.startNumberSuggested = true;
    o.textStyleSuggestionState = buildTextStyleSuggestionState();
  }
  buildCounterNestingLevelSuggestionState--;
  return o;
}

void checkNestingLevelSuggestionState(api.NestingLevelSuggestionState o) {
  buildCounterNestingLevelSuggestionState++;
  if (buildCounterNestingLevelSuggestionState < 3) {
    unittest.expect(o.bulletAlignmentSuggested!, unittest.isTrue);
    unittest.expect(o.glyphFormatSuggested!, unittest.isTrue);
    unittest.expect(o.glyphSymbolSuggested!, unittest.isTrue);
    unittest.expect(o.glyphTypeSuggested!, unittest.isTrue);
    unittest.expect(o.indentFirstLineSuggested!, unittest.isTrue);
    unittest.expect(o.indentStartSuggested!, unittest.isTrue);
    unittest.expect(o.startNumberSuggested!, unittest.isTrue);
    checkTextStyleSuggestionState(o.textStyleSuggestionState!);
  }
  buildCounterNestingLevelSuggestionState--;
}

core.List<core.String> buildUnnamed7405() => [
      'foo',
      'foo',
    ];

void checkUnnamed7405(core.List<core.String> o) {
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

core.int buildCounterObjectReferences = 0;
api.ObjectReferences buildObjectReferences() {
  final o = api.ObjectReferences();
  buildCounterObjectReferences++;
  if (buildCounterObjectReferences < 3) {
    o.objectIds = buildUnnamed7405();
  }
  buildCounterObjectReferences--;
  return o;
}

void checkObjectReferences(api.ObjectReferences o) {
  buildCounterObjectReferences++;
  if (buildCounterObjectReferences < 3) {
    checkUnnamed7405(o.objectIds!);
  }
  buildCounterObjectReferences--;
}

core.int buildCounterOptionalColor = 0;
api.OptionalColor buildOptionalColor() {
  final o = api.OptionalColor();
  buildCounterOptionalColor++;
  if (buildCounterOptionalColor < 3) {
    o.color = buildColor();
  }
  buildCounterOptionalColor--;
  return o;
}

void checkOptionalColor(api.OptionalColor o) {
  buildCounterOptionalColor++;
  if (buildCounterOptionalColor < 3) {
    checkColor(o.color!);
  }
  buildCounterOptionalColor--;
}

core.List<core.String> buildUnnamed7406() => [
      'foo',
      'foo',
    ];

void checkUnnamed7406(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7407() => [
      'foo',
      'foo',
    ];

void checkUnnamed7407(core.List<core.String> o) {
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

core.Map<core.String, api.SuggestedTextStyle> buildUnnamed7408() => {
      'x': buildSuggestedTextStyle(),
      'y': buildSuggestedTextStyle(),
    };

void checkUnnamed7408(core.Map<core.String, api.SuggestedTextStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTextStyle(o['x']!);
  checkSuggestedTextStyle(o['y']!);
}

core.int buildCounterPageBreak = 0;
api.PageBreak buildPageBreak() {
  final o = api.PageBreak();
  buildCounterPageBreak++;
  if (buildCounterPageBreak < 3) {
    o.suggestedDeletionIds = buildUnnamed7406();
    o.suggestedInsertionIds = buildUnnamed7407();
    o.suggestedTextStyleChanges = buildUnnamed7408();
    o.textStyle = buildTextStyle();
  }
  buildCounterPageBreak--;
  return o;
}

void checkPageBreak(api.PageBreak o) {
  buildCounterPageBreak++;
  if (buildCounterPageBreak < 3) {
    checkUnnamed7406(o.suggestedDeletionIds!);
    checkUnnamed7407(o.suggestedInsertionIds!);
    checkUnnamed7408(o.suggestedTextStyleChanges!);
    checkTextStyle(o.textStyle!);
  }
  buildCounterPageBreak--;
}

core.List<api.ParagraphElement> buildUnnamed7409() => [
      buildParagraphElement(),
      buildParagraphElement(),
    ];

void checkUnnamed7409(core.List<api.ParagraphElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParagraphElement(o[0]);
  checkParagraphElement(o[1]);
}

core.List<core.String> buildUnnamed7410() => [
      'foo',
      'foo',
    ];

void checkUnnamed7410(core.List<core.String> o) {
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

core.Map<core.String, api.SuggestedBullet> buildUnnamed7411() => {
      'x': buildSuggestedBullet(),
      'y': buildSuggestedBullet(),
    };

void checkUnnamed7411(core.Map<core.String, api.SuggestedBullet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedBullet(o['x']!);
  checkSuggestedBullet(o['y']!);
}

core.Map<core.String, api.SuggestedParagraphStyle> buildUnnamed7412() => {
      'x': buildSuggestedParagraphStyle(),
      'y': buildSuggestedParagraphStyle(),
    };

void checkUnnamed7412(core.Map<core.String, api.SuggestedParagraphStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedParagraphStyle(o['x']!);
  checkSuggestedParagraphStyle(o['y']!);
}

core.Map<core.String, api.ObjectReferences> buildUnnamed7413() => {
      'x': buildObjectReferences(),
      'y': buildObjectReferences(),
    };

void checkUnnamed7413(core.Map<core.String, api.ObjectReferences> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObjectReferences(o['x']!);
  checkObjectReferences(o['y']!);
}

core.int buildCounterParagraph = 0;
api.Paragraph buildParagraph() {
  final o = api.Paragraph();
  buildCounterParagraph++;
  if (buildCounterParagraph < 3) {
    o.bullet = buildBullet();
    o.elements = buildUnnamed7409();
    o.paragraphStyle = buildParagraphStyle();
    o.positionedObjectIds = buildUnnamed7410();
    o.suggestedBulletChanges = buildUnnamed7411();
    o.suggestedParagraphStyleChanges = buildUnnamed7412();
    o.suggestedPositionedObjectIds = buildUnnamed7413();
  }
  buildCounterParagraph--;
  return o;
}

void checkParagraph(api.Paragraph o) {
  buildCounterParagraph++;
  if (buildCounterParagraph < 3) {
    checkBullet(o.bullet!);
    checkUnnamed7409(o.elements!);
    checkParagraphStyle(o.paragraphStyle!);
    checkUnnamed7410(o.positionedObjectIds!);
    checkUnnamed7411(o.suggestedBulletChanges!);
    checkUnnamed7412(o.suggestedParagraphStyleChanges!);
    checkUnnamed7413(o.suggestedPositionedObjectIds!);
  }
  buildCounterParagraph--;
}

core.int buildCounterParagraphBorder = 0;
api.ParagraphBorder buildParagraphBorder() {
  final o = api.ParagraphBorder();
  buildCounterParagraphBorder++;
  if (buildCounterParagraphBorder < 3) {
    o.color = buildOptionalColor();
    o.dashStyle = 'foo';
    o.padding = buildDimension();
    o.width = buildDimension();
  }
  buildCounterParagraphBorder--;
  return o;
}

void checkParagraphBorder(api.ParagraphBorder o) {
  buildCounterParagraphBorder++;
  if (buildCounterParagraphBorder < 3) {
    checkOptionalColor(o.color!);
    unittest.expect(
      o.dashStyle!,
      unittest.equals('foo'),
    );
    checkDimension(o.padding!);
    checkDimension(o.width!);
  }
  buildCounterParagraphBorder--;
}

core.int buildCounterParagraphElement = 0;
api.ParagraphElement buildParagraphElement() {
  final o = api.ParagraphElement();
  buildCounterParagraphElement++;
  if (buildCounterParagraphElement < 3) {
    o.autoText = buildAutoText();
    o.columnBreak = buildColumnBreak();
    o.endIndex = 42;
    o.equation = buildEquation();
    o.footnoteReference = buildFootnoteReference();
    o.horizontalRule = buildHorizontalRule();
    o.inlineObjectElement = buildInlineObjectElement();
    o.pageBreak = buildPageBreak();
    o.person = buildPerson();
    o.richLink = buildRichLink();
    o.startIndex = 42;
    o.textRun = buildTextRun();
  }
  buildCounterParagraphElement--;
  return o;
}

void checkParagraphElement(api.ParagraphElement o) {
  buildCounterParagraphElement++;
  if (buildCounterParagraphElement < 3) {
    checkAutoText(o.autoText!);
    checkColumnBreak(o.columnBreak!);
    unittest.expect(
      o.endIndex!,
      unittest.equals(42),
    );
    checkEquation(o.equation!);
    checkFootnoteReference(o.footnoteReference!);
    checkHorizontalRule(o.horizontalRule!);
    checkInlineObjectElement(o.inlineObjectElement!);
    checkPageBreak(o.pageBreak!);
    checkPerson(o.person!);
    checkRichLink(o.richLink!);
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    checkTextRun(o.textRun!);
  }
  buildCounterParagraphElement--;
}

core.List<api.TabStop> buildUnnamed7414() => [
      buildTabStop(),
      buildTabStop(),
    ];

void checkUnnamed7414(core.List<api.TabStop> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTabStop(o[0]);
  checkTabStop(o[1]);
}

core.int buildCounterParagraphStyle = 0;
api.ParagraphStyle buildParagraphStyle() {
  final o = api.ParagraphStyle();
  buildCounterParagraphStyle++;
  if (buildCounterParagraphStyle < 3) {
    o.alignment = 'foo';
    o.avoidWidowAndOrphan = true;
    o.borderBetween = buildParagraphBorder();
    o.borderBottom = buildParagraphBorder();
    o.borderLeft = buildParagraphBorder();
    o.borderRight = buildParagraphBorder();
    o.borderTop = buildParagraphBorder();
    o.direction = 'foo';
    o.headingId = 'foo';
    o.indentEnd = buildDimension();
    o.indentFirstLine = buildDimension();
    o.indentStart = buildDimension();
    o.keepLinesTogether = true;
    o.keepWithNext = true;
    o.lineSpacing = 42.0;
    o.namedStyleType = 'foo';
    o.shading = buildShading();
    o.spaceAbove = buildDimension();
    o.spaceBelow = buildDimension();
    o.spacingMode = 'foo';
    o.tabStops = buildUnnamed7414();
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
    unittest.expect(o.avoidWidowAndOrphan!, unittest.isTrue);
    checkParagraphBorder(o.borderBetween!);
    checkParagraphBorder(o.borderBottom!);
    checkParagraphBorder(o.borderLeft!);
    checkParagraphBorder(o.borderRight!);
    checkParagraphBorder(o.borderTop!);
    unittest.expect(
      o.direction!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.headingId!,
      unittest.equals('foo'),
    );
    checkDimension(o.indentEnd!);
    checkDimension(o.indentFirstLine!);
    checkDimension(o.indentStart!);
    unittest.expect(o.keepLinesTogether!, unittest.isTrue);
    unittest.expect(o.keepWithNext!, unittest.isTrue);
    unittest.expect(
      o.lineSpacing!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.namedStyleType!,
      unittest.equals('foo'),
    );
    checkShading(o.shading!);
    checkDimension(o.spaceAbove!);
    checkDimension(o.spaceBelow!);
    unittest.expect(
      o.spacingMode!,
      unittest.equals('foo'),
    );
    checkUnnamed7414(o.tabStops!);
  }
  buildCounterParagraphStyle--;
}

core.int buildCounterParagraphStyleSuggestionState = 0;
api.ParagraphStyleSuggestionState buildParagraphStyleSuggestionState() {
  final o = api.ParagraphStyleSuggestionState();
  buildCounterParagraphStyleSuggestionState++;
  if (buildCounterParagraphStyleSuggestionState < 3) {
    o.alignmentSuggested = true;
    o.avoidWidowAndOrphanSuggested = true;
    o.borderBetweenSuggested = true;
    o.borderBottomSuggested = true;
    o.borderLeftSuggested = true;
    o.borderRightSuggested = true;
    o.borderTopSuggested = true;
    o.directionSuggested = true;
    o.headingIdSuggested = true;
    o.indentEndSuggested = true;
    o.indentFirstLineSuggested = true;
    o.indentStartSuggested = true;
    o.keepLinesTogetherSuggested = true;
    o.keepWithNextSuggested = true;
    o.lineSpacingSuggested = true;
    o.namedStyleTypeSuggested = true;
    o.shadingSuggestionState = buildShadingSuggestionState();
    o.spaceAboveSuggested = true;
    o.spaceBelowSuggested = true;
    o.spacingModeSuggested = true;
  }
  buildCounterParagraphStyleSuggestionState--;
  return o;
}

void checkParagraphStyleSuggestionState(api.ParagraphStyleSuggestionState o) {
  buildCounterParagraphStyleSuggestionState++;
  if (buildCounterParagraphStyleSuggestionState < 3) {
    unittest.expect(o.alignmentSuggested!, unittest.isTrue);
    unittest.expect(o.avoidWidowAndOrphanSuggested!, unittest.isTrue);
    unittest.expect(o.borderBetweenSuggested!, unittest.isTrue);
    unittest.expect(o.borderBottomSuggested!, unittest.isTrue);
    unittest.expect(o.borderLeftSuggested!, unittest.isTrue);
    unittest.expect(o.borderRightSuggested!, unittest.isTrue);
    unittest.expect(o.borderTopSuggested!, unittest.isTrue);
    unittest.expect(o.directionSuggested!, unittest.isTrue);
    unittest.expect(o.headingIdSuggested!, unittest.isTrue);
    unittest.expect(o.indentEndSuggested!, unittest.isTrue);
    unittest.expect(o.indentFirstLineSuggested!, unittest.isTrue);
    unittest.expect(o.indentStartSuggested!, unittest.isTrue);
    unittest.expect(o.keepLinesTogetherSuggested!, unittest.isTrue);
    unittest.expect(o.keepWithNextSuggested!, unittest.isTrue);
    unittest.expect(o.lineSpacingSuggested!, unittest.isTrue);
    unittest.expect(o.namedStyleTypeSuggested!, unittest.isTrue);
    checkShadingSuggestionState(o.shadingSuggestionState!);
    unittest.expect(o.spaceAboveSuggested!, unittest.isTrue);
    unittest.expect(o.spaceBelowSuggested!, unittest.isTrue);
    unittest.expect(o.spacingModeSuggested!, unittest.isTrue);
  }
  buildCounterParagraphStyleSuggestionState--;
}

core.List<core.String> buildUnnamed7415() => [
      'foo',
      'foo',
    ];

void checkUnnamed7415(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7416() => [
      'foo',
      'foo',
    ];

void checkUnnamed7416(core.List<core.String> o) {
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

core.Map<core.String, api.SuggestedTextStyle> buildUnnamed7417() => {
      'x': buildSuggestedTextStyle(),
      'y': buildSuggestedTextStyle(),
    };

void checkUnnamed7417(core.Map<core.String, api.SuggestedTextStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTextStyle(o['x']!);
  checkSuggestedTextStyle(o['y']!);
}

core.int buildCounterPerson = 0;
api.Person buildPerson() {
  final o = api.Person();
  buildCounterPerson++;
  if (buildCounterPerson < 3) {
    o.personId = 'foo';
    o.personProperties = buildPersonProperties();
    o.suggestedDeletionIds = buildUnnamed7415();
    o.suggestedInsertionIds = buildUnnamed7416();
    o.suggestedTextStyleChanges = buildUnnamed7417();
    o.textStyle = buildTextStyle();
  }
  buildCounterPerson--;
  return o;
}

void checkPerson(api.Person o) {
  buildCounterPerson++;
  if (buildCounterPerson < 3) {
    unittest.expect(
      o.personId!,
      unittest.equals('foo'),
    );
    checkPersonProperties(o.personProperties!);
    checkUnnamed7415(o.suggestedDeletionIds!);
    checkUnnamed7416(o.suggestedInsertionIds!);
    checkUnnamed7417(o.suggestedTextStyleChanges!);
    checkTextStyle(o.textStyle!);
  }
  buildCounterPerson--;
}

core.int buildCounterPersonProperties = 0;
api.PersonProperties buildPersonProperties() {
  final o = api.PersonProperties();
  buildCounterPersonProperties++;
  if (buildCounterPersonProperties < 3) {
    o.email = 'foo';
    o.name = 'foo';
  }
  buildCounterPersonProperties--;
  return o;
}

void checkPersonProperties(api.PersonProperties o) {
  buildCounterPersonProperties++;
  if (buildCounterPersonProperties < 3) {
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterPersonProperties--;
}

core.List<core.String> buildUnnamed7418() => [
      'foo',
      'foo',
    ];

void checkUnnamed7418(core.List<core.String> o) {
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

core.Map<core.String, api.SuggestedPositionedObjectProperties>
    buildUnnamed7419() => {
          'x': buildSuggestedPositionedObjectProperties(),
          'y': buildSuggestedPositionedObjectProperties(),
        };

void checkUnnamed7419(
    core.Map<core.String, api.SuggestedPositionedObjectProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedPositionedObjectProperties(o['x']!);
  checkSuggestedPositionedObjectProperties(o['y']!);
}

core.int buildCounterPositionedObject = 0;
api.PositionedObject buildPositionedObject() {
  final o = api.PositionedObject();
  buildCounterPositionedObject++;
  if (buildCounterPositionedObject < 3) {
    o.objectId = 'foo';
    o.positionedObjectProperties = buildPositionedObjectProperties();
    o.suggestedDeletionIds = buildUnnamed7418();
    o.suggestedInsertionId = 'foo';
    o.suggestedPositionedObjectPropertiesChanges = buildUnnamed7419();
  }
  buildCounterPositionedObject--;
  return o;
}

void checkPositionedObject(api.PositionedObject o) {
  buildCounterPositionedObject++;
  if (buildCounterPositionedObject < 3) {
    unittest.expect(
      o.objectId!,
      unittest.equals('foo'),
    );
    checkPositionedObjectProperties(o.positionedObjectProperties!);
    checkUnnamed7418(o.suggestedDeletionIds!);
    unittest.expect(
      o.suggestedInsertionId!,
      unittest.equals('foo'),
    );
    checkUnnamed7419(o.suggestedPositionedObjectPropertiesChanges!);
  }
  buildCounterPositionedObject--;
}

core.int buildCounterPositionedObjectPositioning = 0;
api.PositionedObjectPositioning buildPositionedObjectPositioning() {
  final o = api.PositionedObjectPositioning();
  buildCounterPositionedObjectPositioning++;
  if (buildCounterPositionedObjectPositioning < 3) {
    o.layout = 'foo';
    o.leftOffset = buildDimension();
    o.topOffset = buildDimension();
  }
  buildCounterPositionedObjectPositioning--;
  return o;
}

void checkPositionedObjectPositioning(api.PositionedObjectPositioning o) {
  buildCounterPositionedObjectPositioning++;
  if (buildCounterPositionedObjectPositioning < 3) {
    unittest.expect(
      o.layout!,
      unittest.equals('foo'),
    );
    checkDimension(o.leftOffset!);
    checkDimension(o.topOffset!);
  }
  buildCounterPositionedObjectPositioning--;
}

core.int buildCounterPositionedObjectPositioningSuggestionState = 0;
api.PositionedObjectPositioningSuggestionState
    buildPositionedObjectPositioningSuggestionState() {
  final o = api.PositionedObjectPositioningSuggestionState();
  buildCounterPositionedObjectPositioningSuggestionState++;
  if (buildCounterPositionedObjectPositioningSuggestionState < 3) {
    o.layoutSuggested = true;
    o.leftOffsetSuggested = true;
    o.topOffsetSuggested = true;
  }
  buildCounterPositionedObjectPositioningSuggestionState--;
  return o;
}

void checkPositionedObjectPositioningSuggestionState(
    api.PositionedObjectPositioningSuggestionState o) {
  buildCounterPositionedObjectPositioningSuggestionState++;
  if (buildCounterPositionedObjectPositioningSuggestionState < 3) {
    unittest.expect(o.layoutSuggested!, unittest.isTrue);
    unittest.expect(o.leftOffsetSuggested!, unittest.isTrue);
    unittest.expect(o.topOffsetSuggested!, unittest.isTrue);
  }
  buildCounterPositionedObjectPositioningSuggestionState--;
}

core.int buildCounterPositionedObjectProperties = 0;
api.PositionedObjectProperties buildPositionedObjectProperties() {
  final o = api.PositionedObjectProperties();
  buildCounterPositionedObjectProperties++;
  if (buildCounterPositionedObjectProperties < 3) {
    o.embeddedObject = buildEmbeddedObject();
    o.positioning = buildPositionedObjectPositioning();
  }
  buildCounterPositionedObjectProperties--;
  return o;
}

void checkPositionedObjectProperties(api.PositionedObjectProperties o) {
  buildCounterPositionedObjectProperties++;
  if (buildCounterPositionedObjectProperties < 3) {
    checkEmbeddedObject(o.embeddedObject!);
    checkPositionedObjectPositioning(o.positioning!);
  }
  buildCounterPositionedObjectProperties--;
}

core.int buildCounterPositionedObjectPropertiesSuggestionState = 0;
api.PositionedObjectPropertiesSuggestionState
    buildPositionedObjectPropertiesSuggestionState() {
  final o = api.PositionedObjectPropertiesSuggestionState();
  buildCounterPositionedObjectPropertiesSuggestionState++;
  if (buildCounterPositionedObjectPropertiesSuggestionState < 3) {
    o.embeddedObjectSuggestionState = buildEmbeddedObjectSuggestionState();
    o.positioningSuggestionState =
        buildPositionedObjectPositioningSuggestionState();
  }
  buildCounterPositionedObjectPropertiesSuggestionState--;
  return o;
}

void checkPositionedObjectPropertiesSuggestionState(
    api.PositionedObjectPropertiesSuggestionState o) {
  buildCounterPositionedObjectPropertiesSuggestionState++;
  if (buildCounterPositionedObjectPropertiesSuggestionState < 3) {
    checkEmbeddedObjectSuggestionState(o.embeddedObjectSuggestionState!);
    checkPositionedObjectPositioningSuggestionState(
        o.positioningSuggestionState!);
  }
  buildCounterPositionedObjectPropertiesSuggestionState--;
}

core.int buildCounterRange = 0;
api.Range buildRange() {
  final o = api.Range();
  buildCounterRange++;
  if (buildCounterRange < 3) {
    o.endIndex = 42;
    o.segmentId = 'foo';
    o.startIndex = 42;
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
      o.segmentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
  }
  buildCounterRange--;
}

core.int buildCounterReplaceAllTextRequest = 0;
api.ReplaceAllTextRequest buildReplaceAllTextRequest() {
  final o = api.ReplaceAllTextRequest();
  buildCounterReplaceAllTextRequest++;
  if (buildCounterReplaceAllTextRequest < 3) {
    o.containsText = buildSubstringMatchCriteria();
    o.replaceText = 'foo';
  }
  buildCounterReplaceAllTextRequest--;
  return o;
}

void checkReplaceAllTextRequest(api.ReplaceAllTextRequest o) {
  buildCounterReplaceAllTextRequest++;
  if (buildCounterReplaceAllTextRequest < 3) {
    checkSubstringMatchCriteria(o.containsText!);
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
    o.uri = 'foo';
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
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterReplaceImageRequest--;
}

core.int buildCounterReplaceNamedRangeContentRequest = 0;
api.ReplaceNamedRangeContentRequest buildReplaceNamedRangeContentRequest() {
  final o = api.ReplaceNamedRangeContentRequest();
  buildCounterReplaceNamedRangeContentRequest++;
  if (buildCounterReplaceNamedRangeContentRequest < 3) {
    o.namedRangeId = 'foo';
    o.namedRangeName = 'foo';
    o.text = 'foo';
  }
  buildCounterReplaceNamedRangeContentRequest--;
  return o;
}

void checkReplaceNamedRangeContentRequest(
    api.ReplaceNamedRangeContentRequest o) {
  buildCounterReplaceNamedRangeContentRequest++;
  if (buildCounterReplaceNamedRangeContentRequest < 3) {
    unittest.expect(
      o.namedRangeId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.namedRangeName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterReplaceNamedRangeContentRequest--;
}

core.int buildCounterRequest = 0;
api.Request buildRequest() {
  final o = api.Request();
  buildCounterRequest++;
  if (buildCounterRequest < 3) {
    o.createFooter = buildCreateFooterRequest();
    o.createFootnote = buildCreateFootnoteRequest();
    o.createHeader = buildCreateHeaderRequest();
    o.createNamedRange = buildCreateNamedRangeRequest();
    o.createParagraphBullets = buildCreateParagraphBulletsRequest();
    o.deleteContentRange = buildDeleteContentRangeRequest();
    o.deleteFooter = buildDeleteFooterRequest();
    o.deleteHeader = buildDeleteHeaderRequest();
    o.deleteNamedRange = buildDeleteNamedRangeRequest();
    o.deleteParagraphBullets = buildDeleteParagraphBulletsRequest();
    o.deletePositionedObject = buildDeletePositionedObjectRequest();
    o.deleteTableColumn = buildDeleteTableColumnRequest();
    o.deleteTableRow = buildDeleteTableRowRequest();
    o.insertInlineImage = buildInsertInlineImageRequest();
    o.insertPageBreak = buildInsertPageBreakRequest();
    o.insertSectionBreak = buildInsertSectionBreakRequest();
    o.insertTable = buildInsertTableRequest();
    o.insertTableColumn = buildInsertTableColumnRequest();
    o.insertTableRow = buildInsertTableRowRequest();
    o.insertText = buildInsertTextRequest();
    o.mergeTableCells = buildMergeTableCellsRequest();
    o.replaceAllText = buildReplaceAllTextRequest();
    o.replaceImage = buildReplaceImageRequest();
    o.replaceNamedRangeContent = buildReplaceNamedRangeContentRequest();
    o.unmergeTableCells = buildUnmergeTableCellsRequest();
    o.updateDocumentStyle = buildUpdateDocumentStyleRequest();
    o.updateParagraphStyle = buildUpdateParagraphStyleRequest();
    o.updateSectionStyle = buildUpdateSectionStyleRequest();
    o.updateTableCellStyle = buildUpdateTableCellStyleRequest();
    o.updateTableColumnProperties = buildUpdateTableColumnPropertiesRequest();
    o.updateTableRowStyle = buildUpdateTableRowStyleRequest();
    o.updateTextStyle = buildUpdateTextStyleRequest();
  }
  buildCounterRequest--;
  return o;
}

void checkRequest(api.Request o) {
  buildCounterRequest++;
  if (buildCounterRequest < 3) {
    checkCreateFooterRequest(o.createFooter!);
    checkCreateFootnoteRequest(o.createFootnote!);
    checkCreateHeaderRequest(o.createHeader!);
    checkCreateNamedRangeRequest(o.createNamedRange!);
    checkCreateParagraphBulletsRequest(o.createParagraphBullets!);
    checkDeleteContentRangeRequest(o.deleteContentRange!);
    checkDeleteFooterRequest(o.deleteFooter!);
    checkDeleteHeaderRequest(o.deleteHeader!);
    checkDeleteNamedRangeRequest(o.deleteNamedRange!);
    checkDeleteParagraphBulletsRequest(o.deleteParagraphBullets!);
    checkDeletePositionedObjectRequest(o.deletePositionedObject!);
    checkDeleteTableColumnRequest(o.deleteTableColumn!);
    checkDeleteTableRowRequest(o.deleteTableRow!);
    checkInsertInlineImageRequest(o.insertInlineImage!);
    checkInsertPageBreakRequest(o.insertPageBreak!);
    checkInsertSectionBreakRequest(o.insertSectionBreak!);
    checkInsertTableRequest(o.insertTable!);
    checkInsertTableColumnRequest(o.insertTableColumn!);
    checkInsertTableRowRequest(o.insertTableRow!);
    checkInsertTextRequest(o.insertText!);
    checkMergeTableCellsRequest(o.mergeTableCells!);
    checkReplaceAllTextRequest(o.replaceAllText!);
    checkReplaceImageRequest(o.replaceImage!);
    checkReplaceNamedRangeContentRequest(o.replaceNamedRangeContent!);
    checkUnmergeTableCellsRequest(o.unmergeTableCells!);
    checkUpdateDocumentStyleRequest(o.updateDocumentStyle!);
    checkUpdateParagraphStyleRequest(o.updateParagraphStyle!);
    checkUpdateSectionStyleRequest(o.updateSectionStyle!);
    checkUpdateTableCellStyleRequest(o.updateTableCellStyle!);
    checkUpdateTableColumnPropertiesRequest(o.updateTableColumnProperties!);
    checkUpdateTableRowStyleRequest(o.updateTableRowStyle!);
    checkUpdateTextStyleRequest(o.updateTextStyle!);
  }
  buildCounterRequest--;
}

core.int buildCounterResponse = 0;
api.Response buildResponse() {
  final o = api.Response();
  buildCounterResponse++;
  if (buildCounterResponse < 3) {
    o.createFooter = buildCreateFooterResponse();
    o.createFootnote = buildCreateFootnoteResponse();
    o.createHeader = buildCreateHeaderResponse();
    o.createNamedRange = buildCreateNamedRangeResponse();
    o.insertInlineImage = buildInsertInlineImageResponse();
    o.insertInlineSheetsChart = buildInsertInlineSheetsChartResponse();
    o.replaceAllText = buildReplaceAllTextResponse();
  }
  buildCounterResponse--;
  return o;
}

void checkResponse(api.Response o) {
  buildCounterResponse++;
  if (buildCounterResponse < 3) {
    checkCreateFooterResponse(o.createFooter!);
    checkCreateFootnoteResponse(o.createFootnote!);
    checkCreateHeaderResponse(o.createHeader!);
    checkCreateNamedRangeResponse(o.createNamedRange!);
    checkInsertInlineImageResponse(o.insertInlineImage!);
    checkInsertInlineSheetsChartResponse(o.insertInlineSheetsChart!);
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

core.List<core.String> buildUnnamed7420() => [
      'foo',
      'foo',
    ];

void checkUnnamed7420(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7421() => [
      'foo',
      'foo',
    ];

void checkUnnamed7421(core.List<core.String> o) {
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

core.Map<core.String, api.SuggestedTextStyle> buildUnnamed7422() => {
      'x': buildSuggestedTextStyle(),
      'y': buildSuggestedTextStyle(),
    };

void checkUnnamed7422(core.Map<core.String, api.SuggestedTextStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTextStyle(o['x']!);
  checkSuggestedTextStyle(o['y']!);
}

core.int buildCounterRichLink = 0;
api.RichLink buildRichLink() {
  final o = api.RichLink();
  buildCounterRichLink++;
  if (buildCounterRichLink < 3) {
    o.richLinkId = 'foo';
    o.richLinkProperties = buildRichLinkProperties();
    o.suggestedDeletionIds = buildUnnamed7420();
    o.suggestedInsertionIds = buildUnnamed7421();
    o.suggestedTextStyleChanges = buildUnnamed7422();
    o.textStyle = buildTextStyle();
  }
  buildCounterRichLink--;
  return o;
}

void checkRichLink(api.RichLink o) {
  buildCounterRichLink++;
  if (buildCounterRichLink < 3) {
    unittest.expect(
      o.richLinkId!,
      unittest.equals('foo'),
    );
    checkRichLinkProperties(o.richLinkProperties!);
    checkUnnamed7420(o.suggestedDeletionIds!);
    checkUnnamed7421(o.suggestedInsertionIds!);
    checkUnnamed7422(o.suggestedTextStyleChanges!);
    checkTextStyle(o.textStyle!);
  }
  buildCounterRichLink--;
}

core.int buildCounterRichLinkProperties = 0;
api.RichLinkProperties buildRichLinkProperties() {
  final o = api.RichLinkProperties();
  buildCounterRichLinkProperties++;
  if (buildCounterRichLinkProperties < 3) {
    o.mimeType = 'foo';
    o.title = 'foo';
    o.uri = 'foo';
  }
  buildCounterRichLinkProperties--;
  return o;
}

void checkRichLinkProperties(api.RichLinkProperties o) {
  buildCounterRichLinkProperties++;
  if (buildCounterRichLinkProperties < 3) {
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.title!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterRichLinkProperties--;
}

core.List<core.String> buildUnnamed7423() => [
      'foo',
      'foo',
    ];

void checkUnnamed7423(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7424() => [
      'foo',
      'foo',
    ];

void checkUnnamed7424(core.List<core.String> o) {
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

core.int buildCounterSectionBreak = 0;
api.SectionBreak buildSectionBreak() {
  final o = api.SectionBreak();
  buildCounterSectionBreak++;
  if (buildCounterSectionBreak < 3) {
    o.sectionStyle = buildSectionStyle();
    o.suggestedDeletionIds = buildUnnamed7423();
    o.suggestedInsertionIds = buildUnnamed7424();
  }
  buildCounterSectionBreak--;
  return o;
}

void checkSectionBreak(api.SectionBreak o) {
  buildCounterSectionBreak++;
  if (buildCounterSectionBreak < 3) {
    checkSectionStyle(o.sectionStyle!);
    checkUnnamed7423(o.suggestedDeletionIds!);
    checkUnnamed7424(o.suggestedInsertionIds!);
  }
  buildCounterSectionBreak--;
}

core.int buildCounterSectionColumnProperties = 0;
api.SectionColumnProperties buildSectionColumnProperties() {
  final o = api.SectionColumnProperties();
  buildCounterSectionColumnProperties++;
  if (buildCounterSectionColumnProperties < 3) {
    o.paddingEnd = buildDimension();
    o.width = buildDimension();
  }
  buildCounterSectionColumnProperties--;
  return o;
}

void checkSectionColumnProperties(api.SectionColumnProperties o) {
  buildCounterSectionColumnProperties++;
  if (buildCounterSectionColumnProperties < 3) {
    checkDimension(o.paddingEnd!);
    checkDimension(o.width!);
  }
  buildCounterSectionColumnProperties--;
}

core.List<api.SectionColumnProperties> buildUnnamed7425() => [
      buildSectionColumnProperties(),
      buildSectionColumnProperties(),
    ];

void checkUnnamed7425(core.List<api.SectionColumnProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSectionColumnProperties(o[0]);
  checkSectionColumnProperties(o[1]);
}

core.int buildCounterSectionStyle = 0;
api.SectionStyle buildSectionStyle() {
  final o = api.SectionStyle();
  buildCounterSectionStyle++;
  if (buildCounterSectionStyle < 3) {
    o.columnProperties = buildUnnamed7425();
    o.columnSeparatorStyle = 'foo';
    o.contentDirection = 'foo';
    o.defaultFooterId = 'foo';
    o.defaultHeaderId = 'foo';
    o.evenPageFooterId = 'foo';
    o.evenPageHeaderId = 'foo';
    o.firstPageFooterId = 'foo';
    o.firstPageHeaderId = 'foo';
    o.marginBottom = buildDimension();
    o.marginFooter = buildDimension();
    o.marginHeader = buildDimension();
    o.marginLeft = buildDimension();
    o.marginRight = buildDimension();
    o.marginTop = buildDimension();
    o.pageNumberStart = 42;
    o.sectionType = 'foo';
    o.useFirstPageHeaderFooter = true;
  }
  buildCounterSectionStyle--;
  return o;
}

void checkSectionStyle(api.SectionStyle o) {
  buildCounterSectionStyle++;
  if (buildCounterSectionStyle < 3) {
    checkUnnamed7425(o.columnProperties!);
    unittest.expect(
      o.columnSeparatorStyle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.contentDirection!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultFooterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.defaultHeaderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.evenPageFooterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.evenPageHeaderId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firstPageFooterId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firstPageHeaderId!,
      unittest.equals('foo'),
    );
    checkDimension(o.marginBottom!);
    checkDimension(o.marginFooter!);
    checkDimension(o.marginHeader!);
    checkDimension(o.marginLeft!);
    checkDimension(o.marginRight!);
    checkDimension(o.marginTop!);
    unittest.expect(
      o.pageNumberStart!,
      unittest.equals(42),
    );
    unittest.expect(
      o.sectionType!,
      unittest.equals('foo'),
    );
    unittest.expect(o.useFirstPageHeaderFooter!, unittest.isTrue);
  }
  buildCounterSectionStyle--;
}

core.int buildCounterShading = 0;
api.Shading buildShading() {
  final o = api.Shading();
  buildCounterShading++;
  if (buildCounterShading < 3) {
    o.backgroundColor = buildOptionalColor();
  }
  buildCounterShading--;
  return o;
}

void checkShading(api.Shading o) {
  buildCounterShading++;
  if (buildCounterShading < 3) {
    checkOptionalColor(o.backgroundColor!);
  }
  buildCounterShading--;
}

core.int buildCounterShadingSuggestionState = 0;
api.ShadingSuggestionState buildShadingSuggestionState() {
  final o = api.ShadingSuggestionState();
  buildCounterShadingSuggestionState++;
  if (buildCounterShadingSuggestionState < 3) {
    o.backgroundColorSuggested = true;
  }
  buildCounterShadingSuggestionState--;
  return o;
}

void checkShadingSuggestionState(api.ShadingSuggestionState o) {
  buildCounterShadingSuggestionState++;
  if (buildCounterShadingSuggestionState < 3) {
    unittest.expect(o.backgroundColorSuggested!, unittest.isTrue);
  }
  buildCounterShadingSuggestionState--;
}

core.int buildCounterSheetsChartReference = 0;
api.SheetsChartReference buildSheetsChartReference() {
  final o = api.SheetsChartReference();
  buildCounterSheetsChartReference++;
  if (buildCounterSheetsChartReference < 3) {
    o.chartId = 42;
    o.spreadsheetId = 'foo';
  }
  buildCounterSheetsChartReference--;
  return o;
}

void checkSheetsChartReference(api.SheetsChartReference o) {
  buildCounterSheetsChartReference++;
  if (buildCounterSheetsChartReference < 3) {
    unittest.expect(
      o.chartId!,
      unittest.equals(42),
    );
    unittest.expect(
      o.spreadsheetId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSheetsChartReference--;
}

core.int buildCounterSheetsChartReferenceSuggestionState = 0;
api.SheetsChartReferenceSuggestionState
    buildSheetsChartReferenceSuggestionState() {
  final o = api.SheetsChartReferenceSuggestionState();
  buildCounterSheetsChartReferenceSuggestionState++;
  if (buildCounterSheetsChartReferenceSuggestionState < 3) {
    o.chartIdSuggested = true;
    o.spreadsheetIdSuggested = true;
  }
  buildCounterSheetsChartReferenceSuggestionState--;
  return o;
}

void checkSheetsChartReferenceSuggestionState(
    api.SheetsChartReferenceSuggestionState o) {
  buildCounterSheetsChartReferenceSuggestionState++;
  if (buildCounterSheetsChartReferenceSuggestionState < 3) {
    unittest.expect(o.chartIdSuggested!, unittest.isTrue);
    unittest.expect(o.spreadsheetIdSuggested!, unittest.isTrue);
  }
  buildCounterSheetsChartReferenceSuggestionState--;
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

core.int buildCounterSizeSuggestionState = 0;
api.SizeSuggestionState buildSizeSuggestionState() {
  final o = api.SizeSuggestionState();
  buildCounterSizeSuggestionState++;
  if (buildCounterSizeSuggestionState < 3) {
    o.heightSuggested = true;
    o.widthSuggested = true;
  }
  buildCounterSizeSuggestionState--;
  return o;
}

void checkSizeSuggestionState(api.SizeSuggestionState o) {
  buildCounterSizeSuggestionState++;
  if (buildCounterSizeSuggestionState < 3) {
    unittest.expect(o.heightSuggested!, unittest.isTrue);
    unittest.expect(o.widthSuggested!, unittest.isTrue);
  }
  buildCounterSizeSuggestionState--;
}

core.int buildCounterStructuralElement = 0;
api.StructuralElement buildStructuralElement() {
  final o = api.StructuralElement();
  buildCounterStructuralElement++;
  if (buildCounterStructuralElement < 3) {
    o.endIndex = 42;
    o.paragraph = buildParagraph();
    o.sectionBreak = buildSectionBreak();
    o.startIndex = 42;
    o.table = buildTable();
    o.tableOfContents = buildTableOfContents();
  }
  buildCounterStructuralElement--;
  return o;
}

void checkStructuralElement(api.StructuralElement o) {
  buildCounterStructuralElement++;
  if (buildCounterStructuralElement < 3) {
    unittest.expect(
      o.endIndex!,
      unittest.equals(42),
    );
    checkParagraph(o.paragraph!);
    checkSectionBreak(o.sectionBreak!);
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    checkTable(o.table!);
    checkTableOfContents(o.tableOfContents!);
  }
  buildCounterStructuralElement--;
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

core.int buildCounterSuggestedBullet = 0;
api.SuggestedBullet buildSuggestedBullet() {
  final o = api.SuggestedBullet();
  buildCounterSuggestedBullet++;
  if (buildCounterSuggestedBullet < 3) {
    o.bullet = buildBullet();
    o.bulletSuggestionState = buildBulletSuggestionState();
  }
  buildCounterSuggestedBullet--;
  return o;
}

void checkSuggestedBullet(api.SuggestedBullet o) {
  buildCounterSuggestedBullet++;
  if (buildCounterSuggestedBullet < 3) {
    checkBullet(o.bullet!);
    checkBulletSuggestionState(o.bulletSuggestionState!);
  }
  buildCounterSuggestedBullet--;
}

core.int buildCounterSuggestedDocumentStyle = 0;
api.SuggestedDocumentStyle buildSuggestedDocumentStyle() {
  final o = api.SuggestedDocumentStyle();
  buildCounterSuggestedDocumentStyle++;
  if (buildCounterSuggestedDocumentStyle < 3) {
    o.documentStyle = buildDocumentStyle();
    o.documentStyleSuggestionState = buildDocumentStyleSuggestionState();
  }
  buildCounterSuggestedDocumentStyle--;
  return o;
}

void checkSuggestedDocumentStyle(api.SuggestedDocumentStyle o) {
  buildCounterSuggestedDocumentStyle++;
  if (buildCounterSuggestedDocumentStyle < 3) {
    checkDocumentStyle(o.documentStyle!);
    checkDocumentStyleSuggestionState(o.documentStyleSuggestionState!);
  }
  buildCounterSuggestedDocumentStyle--;
}

core.int buildCounterSuggestedInlineObjectProperties = 0;
api.SuggestedInlineObjectProperties buildSuggestedInlineObjectProperties() {
  final o = api.SuggestedInlineObjectProperties();
  buildCounterSuggestedInlineObjectProperties++;
  if (buildCounterSuggestedInlineObjectProperties < 3) {
    o.inlineObjectProperties = buildInlineObjectProperties();
    o.inlineObjectPropertiesSuggestionState =
        buildInlineObjectPropertiesSuggestionState();
  }
  buildCounterSuggestedInlineObjectProperties--;
  return o;
}

void checkSuggestedInlineObjectProperties(
    api.SuggestedInlineObjectProperties o) {
  buildCounterSuggestedInlineObjectProperties++;
  if (buildCounterSuggestedInlineObjectProperties < 3) {
    checkInlineObjectProperties(o.inlineObjectProperties!);
    checkInlineObjectPropertiesSuggestionState(
        o.inlineObjectPropertiesSuggestionState!);
  }
  buildCounterSuggestedInlineObjectProperties--;
}

core.int buildCounterSuggestedListProperties = 0;
api.SuggestedListProperties buildSuggestedListProperties() {
  final o = api.SuggestedListProperties();
  buildCounterSuggestedListProperties++;
  if (buildCounterSuggestedListProperties < 3) {
    o.listProperties = buildListProperties();
    o.listPropertiesSuggestionState = buildListPropertiesSuggestionState();
  }
  buildCounterSuggestedListProperties--;
  return o;
}

void checkSuggestedListProperties(api.SuggestedListProperties o) {
  buildCounterSuggestedListProperties++;
  if (buildCounterSuggestedListProperties < 3) {
    checkListProperties(o.listProperties!);
    checkListPropertiesSuggestionState(o.listPropertiesSuggestionState!);
  }
  buildCounterSuggestedListProperties--;
}

core.int buildCounterSuggestedNamedStyles = 0;
api.SuggestedNamedStyles buildSuggestedNamedStyles() {
  final o = api.SuggestedNamedStyles();
  buildCounterSuggestedNamedStyles++;
  if (buildCounterSuggestedNamedStyles < 3) {
    o.namedStyles = buildNamedStyles();
    o.namedStylesSuggestionState = buildNamedStylesSuggestionState();
  }
  buildCounterSuggestedNamedStyles--;
  return o;
}

void checkSuggestedNamedStyles(api.SuggestedNamedStyles o) {
  buildCounterSuggestedNamedStyles++;
  if (buildCounterSuggestedNamedStyles < 3) {
    checkNamedStyles(o.namedStyles!);
    checkNamedStylesSuggestionState(o.namedStylesSuggestionState!);
  }
  buildCounterSuggestedNamedStyles--;
}

core.int buildCounterSuggestedParagraphStyle = 0;
api.SuggestedParagraphStyle buildSuggestedParagraphStyle() {
  final o = api.SuggestedParagraphStyle();
  buildCounterSuggestedParagraphStyle++;
  if (buildCounterSuggestedParagraphStyle < 3) {
    o.paragraphStyle = buildParagraphStyle();
    o.paragraphStyleSuggestionState = buildParagraphStyleSuggestionState();
  }
  buildCounterSuggestedParagraphStyle--;
  return o;
}

void checkSuggestedParagraphStyle(api.SuggestedParagraphStyle o) {
  buildCounterSuggestedParagraphStyle++;
  if (buildCounterSuggestedParagraphStyle < 3) {
    checkParagraphStyle(o.paragraphStyle!);
    checkParagraphStyleSuggestionState(o.paragraphStyleSuggestionState!);
  }
  buildCounterSuggestedParagraphStyle--;
}

core.int buildCounterSuggestedPositionedObjectProperties = 0;
api.SuggestedPositionedObjectProperties
    buildSuggestedPositionedObjectProperties() {
  final o = api.SuggestedPositionedObjectProperties();
  buildCounterSuggestedPositionedObjectProperties++;
  if (buildCounterSuggestedPositionedObjectProperties < 3) {
    o.positionedObjectProperties = buildPositionedObjectProperties();
    o.positionedObjectPropertiesSuggestionState =
        buildPositionedObjectPropertiesSuggestionState();
  }
  buildCounterSuggestedPositionedObjectProperties--;
  return o;
}

void checkSuggestedPositionedObjectProperties(
    api.SuggestedPositionedObjectProperties o) {
  buildCounterSuggestedPositionedObjectProperties++;
  if (buildCounterSuggestedPositionedObjectProperties < 3) {
    checkPositionedObjectProperties(o.positionedObjectProperties!);
    checkPositionedObjectPropertiesSuggestionState(
        o.positionedObjectPropertiesSuggestionState!);
  }
  buildCounterSuggestedPositionedObjectProperties--;
}

core.int buildCounterSuggestedTableCellStyle = 0;
api.SuggestedTableCellStyle buildSuggestedTableCellStyle() {
  final o = api.SuggestedTableCellStyle();
  buildCounterSuggestedTableCellStyle++;
  if (buildCounterSuggestedTableCellStyle < 3) {
    o.tableCellStyle = buildTableCellStyle();
    o.tableCellStyleSuggestionState = buildTableCellStyleSuggestionState();
  }
  buildCounterSuggestedTableCellStyle--;
  return o;
}

void checkSuggestedTableCellStyle(api.SuggestedTableCellStyle o) {
  buildCounterSuggestedTableCellStyle++;
  if (buildCounterSuggestedTableCellStyle < 3) {
    checkTableCellStyle(o.tableCellStyle!);
    checkTableCellStyleSuggestionState(o.tableCellStyleSuggestionState!);
  }
  buildCounterSuggestedTableCellStyle--;
}

core.int buildCounterSuggestedTableRowStyle = 0;
api.SuggestedTableRowStyle buildSuggestedTableRowStyle() {
  final o = api.SuggestedTableRowStyle();
  buildCounterSuggestedTableRowStyle++;
  if (buildCounterSuggestedTableRowStyle < 3) {
    o.tableRowStyle = buildTableRowStyle();
    o.tableRowStyleSuggestionState = buildTableRowStyleSuggestionState();
  }
  buildCounterSuggestedTableRowStyle--;
  return o;
}

void checkSuggestedTableRowStyle(api.SuggestedTableRowStyle o) {
  buildCounterSuggestedTableRowStyle++;
  if (buildCounterSuggestedTableRowStyle < 3) {
    checkTableRowStyle(o.tableRowStyle!);
    checkTableRowStyleSuggestionState(o.tableRowStyleSuggestionState!);
  }
  buildCounterSuggestedTableRowStyle--;
}

core.int buildCounterSuggestedTextStyle = 0;
api.SuggestedTextStyle buildSuggestedTextStyle() {
  final o = api.SuggestedTextStyle();
  buildCounterSuggestedTextStyle++;
  if (buildCounterSuggestedTextStyle < 3) {
    o.textStyle = buildTextStyle();
    o.textStyleSuggestionState = buildTextStyleSuggestionState();
  }
  buildCounterSuggestedTextStyle--;
  return o;
}

void checkSuggestedTextStyle(api.SuggestedTextStyle o) {
  buildCounterSuggestedTextStyle++;
  if (buildCounterSuggestedTextStyle < 3) {
    checkTextStyle(o.textStyle!);
    checkTextStyleSuggestionState(o.textStyleSuggestionState!);
  }
  buildCounterSuggestedTextStyle--;
}

core.int buildCounterTabStop = 0;
api.TabStop buildTabStop() {
  final o = api.TabStop();
  buildCounterTabStop++;
  if (buildCounterTabStop < 3) {
    o.alignment = 'foo';
    o.offset = buildDimension();
  }
  buildCounterTabStop--;
  return o;
}

void checkTabStop(api.TabStop o) {
  buildCounterTabStop++;
  if (buildCounterTabStop < 3) {
    unittest.expect(
      o.alignment!,
      unittest.equals('foo'),
    );
    checkDimension(o.offset!);
  }
  buildCounterTabStop--;
}

core.List<core.String> buildUnnamed7426() => [
      'foo',
      'foo',
    ];

void checkUnnamed7426(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7427() => [
      'foo',
      'foo',
    ];

void checkUnnamed7427(core.List<core.String> o) {
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

core.List<api.TableRow> buildUnnamed7428() => [
      buildTableRow(),
      buildTableRow(),
    ];

void checkUnnamed7428(core.List<api.TableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableRow(o[0]);
  checkTableRow(o[1]);
}

core.int buildCounterTable = 0;
api.Table buildTable() {
  final o = api.Table();
  buildCounterTable++;
  if (buildCounterTable < 3) {
    o.columns = 42;
    o.rows = 42;
    o.suggestedDeletionIds = buildUnnamed7426();
    o.suggestedInsertionIds = buildUnnamed7427();
    o.tableRows = buildUnnamed7428();
    o.tableStyle = buildTableStyle();
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
    unittest.expect(
      o.rows!,
      unittest.equals(42),
    );
    checkUnnamed7426(o.suggestedDeletionIds!);
    checkUnnamed7427(o.suggestedInsertionIds!);
    checkUnnamed7428(o.tableRows!);
    checkTableStyle(o.tableStyle!);
  }
  buildCounterTable--;
}

core.List<api.StructuralElement> buildUnnamed7429() => [
      buildStructuralElement(),
      buildStructuralElement(),
    ];

void checkUnnamed7429(core.List<api.StructuralElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStructuralElement(o[0]);
  checkStructuralElement(o[1]);
}

core.List<core.String> buildUnnamed7430() => [
      'foo',
      'foo',
    ];

void checkUnnamed7430(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7431() => [
      'foo',
      'foo',
    ];

void checkUnnamed7431(core.List<core.String> o) {
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

core.Map<core.String, api.SuggestedTableCellStyle> buildUnnamed7432() => {
      'x': buildSuggestedTableCellStyle(),
      'y': buildSuggestedTableCellStyle(),
    };

void checkUnnamed7432(core.Map<core.String, api.SuggestedTableCellStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTableCellStyle(o['x']!);
  checkSuggestedTableCellStyle(o['y']!);
}

core.int buildCounterTableCell = 0;
api.TableCell buildTableCell() {
  final o = api.TableCell();
  buildCounterTableCell++;
  if (buildCounterTableCell < 3) {
    o.content = buildUnnamed7429();
    o.endIndex = 42;
    o.startIndex = 42;
    o.suggestedDeletionIds = buildUnnamed7430();
    o.suggestedInsertionIds = buildUnnamed7431();
    o.suggestedTableCellStyleChanges = buildUnnamed7432();
    o.tableCellStyle = buildTableCellStyle();
  }
  buildCounterTableCell--;
  return o;
}

void checkTableCell(api.TableCell o) {
  buildCounterTableCell++;
  if (buildCounterTableCell < 3) {
    checkUnnamed7429(o.content!);
    unittest.expect(
      o.endIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    checkUnnamed7430(o.suggestedDeletionIds!);
    checkUnnamed7431(o.suggestedInsertionIds!);
    checkUnnamed7432(o.suggestedTableCellStyleChanges!);
    checkTableCellStyle(o.tableCellStyle!);
  }
  buildCounterTableCell--;
}

core.int buildCounterTableCellBorder = 0;
api.TableCellBorder buildTableCellBorder() {
  final o = api.TableCellBorder();
  buildCounterTableCellBorder++;
  if (buildCounterTableCellBorder < 3) {
    o.color = buildOptionalColor();
    o.dashStyle = 'foo';
    o.width = buildDimension();
  }
  buildCounterTableCellBorder--;
  return o;
}

void checkTableCellBorder(api.TableCellBorder o) {
  buildCounterTableCellBorder++;
  if (buildCounterTableCellBorder < 3) {
    checkOptionalColor(o.color!);
    unittest.expect(
      o.dashStyle!,
      unittest.equals('foo'),
    );
    checkDimension(o.width!);
  }
  buildCounterTableCellBorder--;
}

core.int buildCounterTableCellLocation = 0;
api.TableCellLocation buildTableCellLocation() {
  final o = api.TableCellLocation();
  buildCounterTableCellLocation++;
  if (buildCounterTableCellLocation < 3) {
    o.columnIndex = 42;
    o.rowIndex = 42;
    o.tableStartLocation = buildLocation();
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
    checkLocation(o.tableStartLocation!);
  }
  buildCounterTableCellLocation--;
}

core.int buildCounterTableCellStyle = 0;
api.TableCellStyle buildTableCellStyle() {
  final o = api.TableCellStyle();
  buildCounterTableCellStyle++;
  if (buildCounterTableCellStyle < 3) {
    o.backgroundColor = buildOptionalColor();
    o.borderBottom = buildTableCellBorder();
    o.borderLeft = buildTableCellBorder();
    o.borderRight = buildTableCellBorder();
    o.borderTop = buildTableCellBorder();
    o.columnSpan = 42;
    o.contentAlignment = 'foo';
    o.paddingBottom = buildDimension();
    o.paddingLeft = buildDimension();
    o.paddingRight = buildDimension();
    o.paddingTop = buildDimension();
    o.rowSpan = 42;
  }
  buildCounterTableCellStyle--;
  return o;
}

void checkTableCellStyle(api.TableCellStyle o) {
  buildCounterTableCellStyle++;
  if (buildCounterTableCellStyle < 3) {
    checkOptionalColor(o.backgroundColor!);
    checkTableCellBorder(o.borderBottom!);
    checkTableCellBorder(o.borderLeft!);
    checkTableCellBorder(o.borderRight!);
    checkTableCellBorder(o.borderTop!);
    unittest.expect(
      o.columnSpan!,
      unittest.equals(42),
    );
    unittest.expect(
      o.contentAlignment!,
      unittest.equals('foo'),
    );
    checkDimension(o.paddingBottom!);
    checkDimension(o.paddingLeft!);
    checkDimension(o.paddingRight!);
    checkDimension(o.paddingTop!);
    unittest.expect(
      o.rowSpan!,
      unittest.equals(42),
    );
  }
  buildCounterTableCellStyle--;
}

core.int buildCounterTableCellStyleSuggestionState = 0;
api.TableCellStyleSuggestionState buildTableCellStyleSuggestionState() {
  final o = api.TableCellStyleSuggestionState();
  buildCounterTableCellStyleSuggestionState++;
  if (buildCounterTableCellStyleSuggestionState < 3) {
    o.backgroundColorSuggested = true;
    o.borderBottomSuggested = true;
    o.borderLeftSuggested = true;
    o.borderRightSuggested = true;
    o.borderTopSuggested = true;
    o.columnSpanSuggested = true;
    o.contentAlignmentSuggested = true;
    o.paddingBottomSuggested = true;
    o.paddingLeftSuggested = true;
    o.paddingRightSuggested = true;
    o.paddingTopSuggested = true;
    o.rowSpanSuggested = true;
  }
  buildCounterTableCellStyleSuggestionState--;
  return o;
}

void checkTableCellStyleSuggestionState(api.TableCellStyleSuggestionState o) {
  buildCounterTableCellStyleSuggestionState++;
  if (buildCounterTableCellStyleSuggestionState < 3) {
    unittest.expect(o.backgroundColorSuggested!, unittest.isTrue);
    unittest.expect(o.borderBottomSuggested!, unittest.isTrue);
    unittest.expect(o.borderLeftSuggested!, unittest.isTrue);
    unittest.expect(o.borderRightSuggested!, unittest.isTrue);
    unittest.expect(o.borderTopSuggested!, unittest.isTrue);
    unittest.expect(o.columnSpanSuggested!, unittest.isTrue);
    unittest.expect(o.contentAlignmentSuggested!, unittest.isTrue);
    unittest.expect(o.paddingBottomSuggested!, unittest.isTrue);
    unittest.expect(o.paddingLeftSuggested!, unittest.isTrue);
    unittest.expect(o.paddingRightSuggested!, unittest.isTrue);
    unittest.expect(o.paddingTopSuggested!, unittest.isTrue);
    unittest.expect(o.rowSpanSuggested!, unittest.isTrue);
  }
  buildCounterTableCellStyleSuggestionState--;
}

core.int buildCounterTableColumnProperties = 0;
api.TableColumnProperties buildTableColumnProperties() {
  final o = api.TableColumnProperties();
  buildCounterTableColumnProperties++;
  if (buildCounterTableColumnProperties < 3) {
    o.width = buildDimension();
    o.widthType = 'foo';
  }
  buildCounterTableColumnProperties--;
  return o;
}

void checkTableColumnProperties(api.TableColumnProperties o) {
  buildCounterTableColumnProperties++;
  if (buildCounterTableColumnProperties < 3) {
    checkDimension(o.width!);
    unittest.expect(
      o.widthType!,
      unittest.equals('foo'),
    );
  }
  buildCounterTableColumnProperties--;
}

core.List<api.StructuralElement> buildUnnamed7433() => [
      buildStructuralElement(),
      buildStructuralElement(),
    ];

void checkUnnamed7433(core.List<api.StructuralElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStructuralElement(o[0]);
  checkStructuralElement(o[1]);
}

core.List<core.String> buildUnnamed7434() => [
      'foo',
      'foo',
    ];

void checkUnnamed7434(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7435() => [
      'foo',
      'foo',
    ];

void checkUnnamed7435(core.List<core.String> o) {
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

core.int buildCounterTableOfContents = 0;
api.TableOfContents buildTableOfContents() {
  final o = api.TableOfContents();
  buildCounterTableOfContents++;
  if (buildCounterTableOfContents < 3) {
    o.content = buildUnnamed7433();
    o.suggestedDeletionIds = buildUnnamed7434();
    o.suggestedInsertionIds = buildUnnamed7435();
  }
  buildCounterTableOfContents--;
  return o;
}

void checkTableOfContents(api.TableOfContents o) {
  buildCounterTableOfContents++;
  if (buildCounterTableOfContents < 3) {
    checkUnnamed7433(o.content!);
    checkUnnamed7434(o.suggestedDeletionIds!);
    checkUnnamed7435(o.suggestedInsertionIds!);
  }
  buildCounterTableOfContents--;
}

core.int buildCounterTableRange = 0;
api.TableRange buildTableRange() {
  final o = api.TableRange();
  buildCounterTableRange++;
  if (buildCounterTableRange < 3) {
    o.columnSpan = 42;
    o.rowSpan = 42;
    o.tableCellLocation = buildTableCellLocation();
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
    unittest.expect(
      o.rowSpan!,
      unittest.equals(42),
    );
    checkTableCellLocation(o.tableCellLocation!);
  }
  buildCounterTableRange--;
}

core.List<core.String> buildUnnamed7436() => [
      'foo',
      'foo',
    ];

void checkUnnamed7436(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7437() => [
      'foo',
      'foo',
    ];

void checkUnnamed7437(core.List<core.String> o) {
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

core.Map<core.String, api.SuggestedTableRowStyle> buildUnnamed7438() => {
      'x': buildSuggestedTableRowStyle(),
      'y': buildSuggestedTableRowStyle(),
    };

void checkUnnamed7438(core.Map<core.String, api.SuggestedTableRowStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTableRowStyle(o['x']!);
  checkSuggestedTableRowStyle(o['y']!);
}

core.List<api.TableCell> buildUnnamed7439() => [
      buildTableCell(),
      buildTableCell(),
    ];

void checkUnnamed7439(core.List<api.TableCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableCell(o[0]);
  checkTableCell(o[1]);
}

core.int buildCounterTableRow = 0;
api.TableRow buildTableRow() {
  final o = api.TableRow();
  buildCounterTableRow++;
  if (buildCounterTableRow < 3) {
    o.endIndex = 42;
    o.startIndex = 42;
    o.suggestedDeletionIds = buildUnnamed7436();
    o.suggestedInsertionIds = buildUnnamed7437();
    o.suggestedTableRowStyleChanges = buildUnnamed7438();
    o.tableCells = buildUnnamed7439();
    o.tableRowStyle = buildTableRowStyle();
  }
  buildCounterTableRow--;
  return o;
}

void checkTableRow(api.TableRow o) {
  buildCounterTableRow++;
  if (buildCounterTableRow < 3) {
    unittest.expect(
      o.endIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.startIndex!,
      unittest.equals(42),
    );
    checkUnnamed7436(o.suggestedDeletionIds!);
    checkUnnamed7437(o.suggestedInsertionIds!);
    checkUnnamed7438(o.suggestedTableRowStyleChanges!);
    checkUnnamed7439(o.tableCells!);
    checkTableRowStyle(o.tableRowStyle!);
  }
  buildCounterTableRow--;
}

core.int buildCounterTableRowStyle = 0;
api.TableRowStyle buildTableRowStyle() {
  final o = api.TableRowStyle();
  buildCounterTableRowStyle++;
  if (buildCounterTableRowStyle < 3) {
    o.minRowHeight = buildDimension();
  }
  buildCounterTableRowStyle--;
  return o;
}

void checkTableRowStyle(api.TableRowStyle o) {
  buildCounterTableRowStyle++;
  if (buildCounterTableRowStyle < 3) {
    checkDimension(o.minRowHeight!);
  }
  buildCounterTableRowStyle--;
}

core.int buildCounterTableRowStyleSuggestionState = 0;
api.TableRowStyleSuggestionState buildTableRowStyleSuggestionState() {
  final o = api.TableRowStyleSuggestionState();
  buildCounterTableRowStyleSuggestionState++;
  if (buildCounterTableRowStyleSuggestionState < 3) {
    o.minRowHeightSuggested = true;
  }
  buildCounterTableRowStyleSuggestionState--;
  return o;
}

void checkTableRowStyleSuggestionState(api.TableRowStyleSuggestionState o) {
  buildCounterTableRowStyleSuggestionState++;
  if (buildCounterTableRowStyleSuggestionState < 3) {
    unittest.expect(o.minRowHeightSuggested!, unittest.isTrue);
  }
  buildCounterTableRowStyleSuggestionState--;
}

core.List<api.TableColumnProperties> buildUnnamed7440() => [
      buildTableColumnProperties(),
      buildTableColumnProperties(),
    ];

void checkUnnamed7440(core.List<api.TableColumnProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableColumnProperties(o[0]);
  checkTableColumnProperties(o[1]);
}

core.int buildCounterTableStyle = 0;
api.TableStyle buildTableStyle() {
  final o = api.TableStyle();
  buildCounterTableStyle++;
  if (buildCounterTableStyle < 3) {
    o.tableColumnProperties = buildUnnamed7440();
  }
  buildCounterTableStyle--;
  return o;
}

void checkTableStyle(api.TableStyle o) {
  buildCounterTableStyle++;
  if (buildCounterTableStyle < 3) {
    checkUnnamed7440(o.tableColumnProperties!);
  }
  buildCounterTableStyle--;
}

core.List<core.String> buildUnnamed7441() => [
      'foo',
      'foo',
    ];

void checkUnnamed7441(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed7442() => [
      'foo',
      'foo',
    ];

void checkUnnamed7442(core.List<core.String> o) {
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

core.Map<core.String, api.SuggestedTextStyle> buildUnnamed7443() => {
      'x': buildSuggestedTextStyle(),
      'y': buildSuggestedTextStyle(),
    };

void checkUnnamed7443(core.Map<core.String, api.SuggestedTextStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTextStyle(o['x']!);
  checkSuggestedTextStyle(o['y']!);
}

core.int buildCounterTextRun = 0;
api.TextRun buildTextRun() {
  final o = api.TextRun();
  buildCounterTextRun++;
  if (buildCounterTextRun < 3) {
    o.content = 'foo';
    o.suggestedDeletionIds = buildUnnamed7441();
    o.suggestedInsertionIds = buildUnnamed7442();
    o.suggestedTextStyleChanges = buildUnnamed7443();
    o.textStyle = buildTextStyle();
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
    checkUnnamed7441(o.suggestedDeletionIds!);
    checkUnnamed7442(o.suggestedInsertionIds!);
    checkUnnamed7443(o.suggestedTextStyleChanges!);
    checkTextStyle(o.textStyle!);
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

core.int buildCounterTextStyleSuggestionState = 0;
api.TextStyleSuggestionState buildTextStyleSuggestionState() {
  final o = api.TextStyleSuggestionState();
  buildCounterTextStyleSuggestionState++;
  if (buildCounterTextStyleSuggestionState < 3) {
    o.backgroundColorSuggested = true;
    o.baselineOffsetSuggested = true;
    o.boldSuggested = true;
    o.fontSizeSuggested = true;
    o.foregroundColorSuggested = true;
    o.italicSuggested = true;
    o.linkSuggested = true;
    o.smallCapsSuggested = true;
    o.strikethroughSuggested = true;
    o.underlineSuggested = true;
    o.weightedFontFamilySuggested = true;
  }
  buildCounterTextStyleSuggestionState--;
  return o;
}

void checkTextStyleSuggestionState(api.TextStyleSuggestionState o) {
  buildCounterTextStyleSuggestionState++;
  if (buildCounterTextStyleSuggestionState < 3) {
    unittest.expect(o.backgroundColorSuggested!, unittest.isTrue);
    unittest.expect(o.baselineOffsetSuggested!, unittest.isTrue);
    unittest.expect(o.boldSuggested!, unittest.isTrue);
    unittest.expect(o.fontSizeSuggested!, unittest.isTrue);
    unittest.expect(o.foregroundColorSuggested!, unittest.isTrue);
    unittest.expect(o.italicSuggested!, unittest.isTrue);
    unittest.expect(o.linkSuggested!, unittest.isTrue);
    unittest.expect(o.smallCapsSuggested!, unittest.isTrue);
    unittest.expect(o.strikethroughSuggested!, unittest.isTrue);
    unittest.expect(o.underlineSuggested!, unittest.isTrue);
    unittest.expect(o.weightedFontFamilySuggested!, unittest.isTrue);
  }
  buildCounterTextStyleSuggestionState--;
}

core.int buildCounterUnmergeTableCellsRequest = 0;
api.UnmergeTableCellsRequest buildUnmergeTableCellsRequest() {
  final o = api.UnmergeTableCellsRequest();
  buildCounterUnmergeTableCellsRequest++;
  if (buildCounterUnmergeTableCellsRequest < 3) {
    o.tableRange = buildTableRange();
  }
  buildCounterUnmergeTableCellsRequest--;
  return o;
}

void checkUnmergeTableCellsRequest(api.UnmergeTableCellsRequest o) {
  buildCounterUnmergeTableCellsRequest++;
  if (buildCounterUnmergeTableCellsRequest < 3) {
    checkTableRange(o.tableRange!);
  }
  buildCounterUnmergeTableCellsRequest--;
}

core.int buildCounterUpdateDocumentStyleRequest = 0;
api.UpdateDocumentStyleRequest buildUpdateDocumentStyleRequest() {
  final o = api.UpdateDocumentStyleRequest();
  buildCounterUpdateDocumentStyleRequest++;
  if (buildCounterUpdateDocumentStyleRequest < 3) {
    o.documentStyle = buildDocumentStyle();
    o.fields = 'foo';
  }
  buildCounterUpdateDocumentStyleRequest--;
  return o;
}

void checkUpdateDocumentStyleRequest(api.UpdateDocumentStyleRequest o) {
  buildCounterUpdateDocumentStyleRequest++;
  if (buildCounterUpdateDocumentStyleRequest < 3) {
    checkDocumentStyle(o.documentStyle!);
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateDocumentStyleRequest--;
}

core.int buildCounterUpdateParagraphStyleRequest = 0;
api.UpdateParagraphStyleRequest buildUpdateParagraphStyleRequest() {
  final o = api.UpdateParagraphStyleRequest();
  buildCounterUpdateParagraphStyleRequest++;
  if (buildCounterUpdateParagraphStyleRequest < 3) {
    o.fields = 'foo';
    o.paragraphStyle = buildParagraphStyle();
    o.range = buildRange();
  }
  buildCounterUpdateParagraphStyleRequest--;
  return o;
}

void checkUpdateParagraphStyleRequest(api.UpdateParagraphStyleRequest o) {
  buildCounterUpdateParagraphStyleRequest++;
  if (buildCounterUpdateParagraphStyleRequest < 3) {
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
    checkParagraphStyle(o.paragraphStyle!);
    checkRange(o.range!);
  }
  buildCounterUpdateParagraphStyleRequest--;
}

core.int buildCounterUpdateSectionStyleRequest = 0;
api.UpdateSectionStyleRequest buildUpdateSectionStyleRequest() {
  final o = api.UpdateSectionStyleRequest();
  buildCounterUpdateSectionStyleRequest++;
  if (buildCounterUpdateSectionStyleRequest < 3) {
    o.fields = 'foo';
    o.range = buildRange();
    o.sectionStyle = buildSectionStyle();
  }
  buildCounterUpdateSectionStyleRequest--;
  return o;
}

void checkUpdateSectionStyleRequest(api.UpdateSectionStyleRequest o) {
  buildCounterUpdateSectionStyleRequest++;
  if (buildCounterUpdateSectionStyleRequest < 3) {
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
    checkRange(o.range!);
    checkSectionStyle(o.sectionStyle!);
  }
  buildCounterUpdateSectionStyleRequest--;
}

core.int buildCounterUpdateTableCellStyleRequest = 0;
api.UpdateTableCellStyleRequest buildUpdateTableCellStyleRequest() {
  final o = api.UpdateTableCellStyleRequest();
  buildCounterUpdateTableCellStyleRequest++;
  if (buildCounterUpdateTableCellStyleRequest < 3) {
    o.fields = 'foo';
    o.tableCellStyle = buildTableCellStyle();
    o.tableRange = buildTableRange();
    o.tableStartLocation = buildLocation();
  }
  buildCounterUpdateTableCellStyleRequest--;
  return o;
}

void checkUpdateTableCellStyleRequest(api.UpdateTableCellStyleRequest o) {
  buildCounterUpdateTableCellStyleRequest++;
  if (buildCounterUpdateTableCellStyleRequest < 3) {
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
    checkTableCellStyle(o.tableCellStyle!);
    checkTableRange(o.tableRange!);
    checkLocation(o.tableStartLocation!);
  }
  buildCounterUpdateTableCellStyleRequest--;
}

core.List<core.int> buildUnnamed7444() => [
      42,
      42,
    ];

void checkUnnamed7444(core.List<core.int> o) {
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
    o.columnIndices = buildUnnamed7444();
    o.fields = 'foo';
    o.tableColumnProperties = buildTableColumnProperties();
    o.tableStartLocation = buildLocation();
  }
  buildCounterUpdateTableColumnPropertiesRequest--;
  return o;
}

void checkUpdateTableColumnPropertiesRequest(
    api.UpdateTableColumnPropertiesRequest o) {
  buildCounterUpdateTableColumnPropertiesRequest++;
  if (buildCounterUpdateTableColumnPropertiesRequest < 3) {
    checkUnnamed7444(o.columnIndices!);
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
    checkTableColumnProperties(o.tableColumnProperties!);
    checkLocation(o.tableStartLocation!);
  }
  buildCounterUpdateTableColumnPropertiesRequest--;
}

core.List<core.int> buildUnnamed7445() => [
      42,
      42,
    ];

void checkUnnamed7445(core.List<core.int> o) {
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

core.int buildCounterUpdateTableRowStyleRequest = 0;
api.UpdateTableRowStyleRequest buildUpdateTableRowStyleRequest() {
  final o = api.UpdateTableRowStyleRequest();
  buildCounterUpdateTableRowStyleRequest++;
  if (buildCounterUpdateTableRowStyleRequest < 3) {
    o.fields = 'foo';
    o.rowIndices = buildUnnamed7445();
    o.tableRowStyle = buildTableRowStyle();
    o.tableStartLocation = buildLocation();
  }
  buildCounterUpdateTableRowStyleRequest--;
  return o;
}

void checkUpdateTableRowStyleRequest(api.UpdateTableRowStyleRequest o) {
  buildCounterUpdateTableRowStyleRequest++;
  if (buildCounterUpdateTableRowStyleRequest < 3) {
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
    checkUnnamed7445(o.rowIndices!);
    checkTableRowStyle(o.tableRowStyle!);
    checkLocation(o.tableStartLocation!);
  }
  buildCounterUpdateTableRowStyleRequest--;
}

core.int buildCounterUpdateTextStyleRequest = 0;
api.UpdateTextStyleRequest buildUpdateTextStyleRequest() {
  final o = api.UpdateTextStyleRequest();
  buildCounterUpdateTextStyleRequest++;
  if (buildCounterUpdateTextStyleRequest < 3) {
    o.fields = 'foo';
    o.range = buildRange();
    o.textStyle = buildTextStyle();
  }
  buildCounterUpdateTextStyleRequest--;
  return o;
}

void checkUpdateTextStyleRequest(api.UpdateTextStyleRequest o) {
  buildCounterUpdateTextStyleRequest++;
  if (buildCounterUpdateTextStyleRequest < 3) {
    unittest.expect(
      o.fields!,
      unittest.equals('foo'),
    );
    checkRange(o.range!);
    checkTextStyle(o.textStyle!);
  }
  buildCounterUpdateTextStyleRequest--;
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

core.int buildCounterWriteControl = 0;
api.WriteControl buildWriteControl() {
  final o = api.WriteControl();
  buildCounterWriteControl++;
  if (buildCounterWriteControl < 3) {
    o.requiredRevisionId = 'foo';
    o.targetRevisionId = 'foo';
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
    unittest.expect(
      o.targetRevisionId!,
      unittest.equals('foo'),
    );
  }
  buildCounterWriteControl--;
}

void main() {
  unittest.group('obj-schema-AutoText', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutoText();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AutoText.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAutoText(od);
    });
  });

  unittest.group('obj-schema-Background', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackground();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Background.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBackground(od);
    });
  });

  unittest.group('obj-schema-BackgroundSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackgroundSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackgroundSuggestionState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBackgroundSuggestionState(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateDocumentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateDocumentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateDocumentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateDocumentRequest(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateDocumentResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateDocumentResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateDocumentResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateDocumentResponse(od);
    });
  });

  unittest.group('obj-schema-Body', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBody();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Body.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkBody(od);
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

  unittest.group('obj-schema-BulletSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBulletSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BulletSuggestionState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBulletSuggestionState(od);
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

  unittest.group('obj-schema-ColumnBreak', () {
    unittest.test('to-json--from-json', () async {
      final o = buildColumnBreak();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ColumnBreak.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkColumnBreak(od);
    });
  });

  unittest.group('obj-schema-CreateFooterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateFooterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateFooterRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateFooterRequest(od);
    });
  });

  unittest.group('obj-schema-CreateFooterResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateFooterResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateFooterResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateFooterResponse(od);
    });
  });

  unittest.group('obj-schema-CreateFootnoteRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateFootnoteRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateFootnoteRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateFootnoteRequest(od);
    });
  });

  unittest.group('obj-schema-CreateFootnoteResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateFootnoteResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateFootnoteResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateFootnoteResponse(od);
    });
  });

  unittest.group('obj-schema-CreateHeaderRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateHeaderRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateHeaderRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateHeaderRequest(od);
    });
  });

  unittest.group('obj-schema-CreateHeaderResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateHeaderResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateHeaderResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateHeaderResponse(od);
    });
  });

  unittest.group('obj-schema-CreateNamedRangeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateNamedRangeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateNamedRangeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateNamedRangeRequest(od);
    });
  });

  unittest.group('obj-schema-CreateNamedRangeResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateNamedRangeResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateNamedRangeResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateNamedRangeResponse(od);
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

  unittest.group('obj-schema-CropProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCropProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CropProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCropProperties(od);
    });
  });

  unittest.group('obj-schema-CropPropertiesSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCropPropertiesSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CropPropertiesSuggestionState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCropPropertiesSuggestionState(od);
    });
  });

  unittest.group('obj-schema-DeleteContentRangeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteContentRangeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteContentRangeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteContentRangeRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteFooterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteFooterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteFooterRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteFooterRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteHeaderRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteHeaderRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteHeaderRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteHeaderRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteNamedRangeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteNamedRangeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteNamedRangeRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteNamedRangeRequest(od);
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

  unittest.group('obj-schema-DeletePositionedObjectRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeletePositionedObjectRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeletePositionedObjectRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeletePositionedObjectRequest(od);
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

  unittest.group('obj-schema-Dimension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Dimension.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDimension(od);
    });
  });

  unittest.group('obj-schema-Document', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocument();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Document.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDocument(od);
    });
  });

  unittest.group('obj-schema-DocumentStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DocumentStyle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDocumentStyle(od);
    });
  });

  unittest.group('obj-schema-DocumentStyleSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentStyleSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DocumentStyleSuggestionState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDocumentStyleSuggestionState(od);
    });
  });

  unittest.group('obj-schema-EmbeddedDrawingProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmbeddedDrawingProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EmbeddedDrawingProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEmbeddedDrawingProperties(od);
    });
  });

  unittest.group('obj-schema-EmbeddedDrawingPropertiesSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmbeddedDrawingPropertiesSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EmbeddedDrawingPropertiesSuggestionState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEmbeddedDrawingPropertiesSuggestionState(od);
    });
  });

  unittest.group('obj-schema-EmbeddedObject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmbeddedObject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EmbeddedObject.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEmbeddedObject(od);
    });
  });

  unittest.group('obj-schema-EmbeddedObjectBorder', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmbeddedObjectBorder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EmbeddedObjectBorder.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEmbeddedObjectBorder(od);
    });
  });

  unittest.group('obj-schema-EmbeddedObjectBorderSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmbeddedObjectBorderSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EmbeddedObjectBorderSuggestionState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEmbeddedObjectBorderSuggestionState(od);
    });
  });

  unittest.group('obj-schema-EmbeddedObjectSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmbeddedObjectSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EmbeddedObjectSuggestionState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEmbeddedObjectSuggestionState(od);
    });
  });

  unittest.group('obj-schema-EndOfSegmentLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEndOfSegmentLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EndOfSegmentLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEndOfSegmentLocation(od);
    });
  });

  unittest.group('obj-schema-Equation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEquation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Equation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEquation(od);
    });
  });

  unittest.group('obj-schema-Footer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFooter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Footer.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFooter(od);
    });
  });

  unittest.group('obj-schema-Footnote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFootnote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Footnote.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFootnote(od);
    });
  });

  unittest.group('obj-schema-FootnoteReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFootnoteReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FootnoteReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFootnoteReference(od);
    });
  });

  unittest.group('obj-schema-Header', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Header.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHeader(od);
    });
  });

  unittest.group('obj-schema-HorizontalRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHorizontalRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HorizontalRule.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHorizontalRule(od);
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

  unittest.group('obj-schema-ImagePropertiesSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImagePropertiesSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImagePropertiesSuggestionState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImagePropertiesSuggestionState(od);
    });
  });

  unittest.group('obj-schema-InlineObject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInlineObject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InlineObject.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInlineObject(od);
    });
  });

  unittest.group('obj-schema-InlineObjectElement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInlineObjectElement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InlineObjectElement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInlineObjectElement(od);
    });
  });

  unittest.group('obj-schema-InlineObjectProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInlineObjectProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InlineObjectProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInlineObjectProperties(od);
    });
  });

  unittest.group('obj-schema-InlineObjectPropertiesSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInlineObjectPropertiesSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InlineObjectPropertiesSuggestionState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInlineObjectPropertiesSuggestionState(od);
    });
  });

  unittest.group('obj-schema-InsertInlineImageRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertInlineImageRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertInlineImageRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInsertInlineImageRequest(od);
    });
  });

  unittest.group('obj-schema-InsertInlineImageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertInlineImageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertInlineImageResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInsertInlineImageResponse(od);
    });
  });

  unittest.group('obj-schema-InsertInlineSheetsChartResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertInlineSheetsChartResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertInlineSheetsChartResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInsertInlineSheetsChartResponse(od);
    });
  });

  unittest.group('obj-schema-InsertPageBreakRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertPageBreakRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertPageBreakRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInsertPageBreakRequest(od);
    });
  });

  unittest.group('obj-schema-InsertSectionBreakRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertSectionBreakRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertSectionBreakRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInsertSectionBreakRequest(od);
    });
  });

  unittest.group('obj-schema-InsertTableColumnRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertTableColumnRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertTableColumnRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInsertTableColumnRequest(od);
    });
  });

  unittest.group('obj-schema-InsertTableRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertTableRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertTableRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInsertTableRequest(od);
    });
  });

  unittest.group('obj-schema-InsertTableRowRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertTableRowRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertTableRowRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInsertTableRowRequest(od);
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

  unittest.group('obj-schema-Link', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Link.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLink(od);
    });
  });

  unittest.group('obj-schema-LinkedContentReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLinkedContentReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LinkedContentReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLinkedContentReference(od);
    });
  });

  unittest.group('obj-schema-LinkedContentReferenceSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLinkedContentReferenceSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LinkedContentReferenceSuggestionState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLinkedContentReferenceSuggestionState(od);
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

  unittest.group('obj-schema-ListProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListProperties(od);
    });
  });

  unittest.group('obj-schema-ListPropertiesSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPropertiesSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPropertiesSuggestionState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPropertiesSuggestionState(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od);
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

  unittest.group('obj-schema-NamedRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNamedRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.NamedRange.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNamedRange(od);
    });
  });

  unittest.group('obj-schema-NamedRanges', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNamedRanges();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NamedRanges.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNamedRanges(od);
    });
  });

  unittest.group('obj-schema-NamedStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNamedStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.NamedStyle.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNamedStyle(od);
    });
  });

  unittest.group('obj-schema-NamedStyleSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNamedStyleSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NamedStyleSuggestionState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNamedStyleSuggestionState(od);
    });
  });

  unittest.group('obj-schema-NamedStyles', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNamedStyles();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NamedStyles.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNamedStyles(od);
    });
  });

  unittest.group('obj-schema-NamedStylesSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNamedStylesSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NamedStylesSuggestionState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNamedStylesSuggestionState(od);
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

  unittest.group('obj-schema-NestingLevelSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNestingLevelSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NestingLevelSuggestionState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNestingLevelSuggestionState(od);
    });
  });

  unittest.group('obj-schema-ObjectReferences', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObjectReferences();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ObjectReferences.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkObjectReferences(od);
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

  unittest.group('obj-schema-PageBreak', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPageBreak();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.PageBreak.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPageBreak(od);
    });
  });

  unittest.group('obj-schema-Paragraph', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParagraph();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Paragraph.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkParagraph(od);
    });
  });

  unittest.group('obj-schema-ParagraphBorder', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParagraphBorder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ParagraphBorder.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkParagraphBorder(od);
    });
  });

  unittest.group('obj-schema-ParagraphElement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParagraphElement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ParagraphElement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkParagraphElement(od);
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

  unittest.group('obj-schema-ParagraphStyleSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParagraphStyleSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ParagraphStyleSuggestionState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkParagraphStyleSuggestionState(od);
    });
  });

  unittest.group('obj-schema-Person', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPerson();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Person.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPerson(od);
    });
  });

  unittest.group('obj-schema-PersonProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPersonProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PersonProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPersonProperties(od);
    });
  });

  unittest.group('obj-schema-PositionedObject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPositionedObject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PositionedObject.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPositionedObject(od);
    });
  });

  unittest.group('obj-schema-PositionedObjectPositioning', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPositionedObjectPositioning();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PositionedObjectPositioning.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPositionedObjectPositioning(od);
    });
  });

  unittest.group('obj-schema-PositionedObjectPositioningSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPositionedObjectPositioningSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PositionedObjectPositioningSuggestionState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPositionedObjectPositioningSuggestionState(od);
    });
  });

  unittest.group('obj-schema-PositionedObjectProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPositionedObjectProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PositionedObjectProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPositionedObjectProperties(od);
    });
  });

  unittest.group('obj-schema-PositionedObjectPropertiesSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPositionedObjectPropertiesSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PositionedObjectPropertiesSuggestionState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPositionedObjectPropertiesSuggestionState(od);
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

  unittest.group('obj-schema-ReplaceNamedRangeContentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplaceNamedRangeContentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplaceNamedRangeContentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReplaceNamedRangeContentRequest(od);
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

  unittest.group('obj-schema-RichLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRichLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.RichLink.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkRichLink(od);
    });
  });

  unittest.group('obj-schema-RichLinkProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRichLinkProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RichLinkProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRichLinkProperties(od);
    });
  });

  unittest.group('obj-schema-SectionBreak', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSectionBreak();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SectionBreak.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSectionBreak(od);
    });
  });

  unittest.group('obj-schema-SectionColumnProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSectionColumnProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SectionColumnProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSectionColumnProperties(od);
    });
  });

  unittest.group('obj-schema-SectionStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSectionStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SectionStyle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSectionStyle(od);
    });
  });

  unittest.group('obj-schema-Shading', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShading();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Shading.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkShading(od);
    });
  });

  unittest.group('obj-schema-ShadingSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShadingSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShadingSuggestionState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkShadingSuggestionState(od);
    });
  });

  unittest.group('obj-schema-SheetsChartReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSheetsChartReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SheetsChartReference.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSheetsChartReference(od);
    });
  });

  unittest.group('obj-schema-SheetsChartReferenceSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSheetsChartReferenceSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SheetsChartReferenceSuggestionState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSheetsChartReferenceSuggestionState(od);
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

  unittest.group('obj-schema-SizeSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSizeSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SizeSuggestionState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSizeSuggestionState(od);
    });
  });

  unittest.group('obj-schema-StructuralElement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStructuralElement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StructuralElement.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStructuralElement(od);
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

  unittest.group('obj-schema-SuggestedBullet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuggestedBullet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuggestedBullet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSuggestedBullet(od);
    });
  });

  unittest.group('obj-schema-SuggestedDocumentStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuggestedDocumentStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuggestedDocumentStyle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSuggestedDocumentStyle(od);
    });
  });

  unittest.group('obj-schema-SuggestedInlineObjectProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuggestedInlineObjectProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuggestedInlineObjectProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSuggestedInlineObjectProperties(od);
    });
  });

  unittest.group('obj-schema-SuggestedListProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuggestedListProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuggestedListProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSuggestedListProperties(od);
    });
  });

  unittest.group('obj-schema-SuggestedNamedStyles', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuggestedNamedStyles();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuggestedNamedStyles.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSuggestedNamedStyles(od);
    });
  });

  unittest.group('obj-schema-SuggestedParagraphStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuggestedParagraphStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuggestedParagraphStyle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSuggestedParagraphStyle(od);
    });
  });

  unittest.group('obj-schema-SuggestedPositionedObjectProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuggestedPositionedObjectProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuggestedPositionedObjectProperties.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSuggestedPositionedObjectProperties(od);
    });
  });

  unittest.group('obj-schema-SuggestedTableCellStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuggestedTableCellStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuggestedTableCellStyle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSuggestedTableCellStyle(od);
    });
  });

  unittest.group('obj-schema-SuggestedTableRowStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuggestedTableRowStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuggestedTableRowStyle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSuggestedTableRowStyle(od);
    });
  });

  unittest.group('obj-schema-SuggestedTextStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuggestedTextStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuggestedTextStyle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSuggestedTextStyle(od);
    });
  });

  unittest.group('obj-schema-TabStop', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTabStop();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TabStop.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTabStop(od);
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

  unittest.group('obj-schema-TableCell', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableCell();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TableCell.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTableCell(od);
    });
  });

  unittest.group('obj-schema-TableCellBorder', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableCellBorder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableCellBorder.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableCellBorder(od);
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

  unittest.group('obj-schema-TableCellStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableCellStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableCellStyle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableCellStyle(od);
    });
  });

  unittest.group('obj-schema-TableCellStyleSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableCellStyleSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableCellStyleSuggestionState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableCellStyleSuggestionState(od);
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

  unittest.group('obj-schema-TableOfContents', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableOfContents();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableOfContents.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableOfContents(od);
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

  unittest.group('obj-schema-TableRowStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableRowStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableRowStyle.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableRowStyle(od);
    });
  });

  unittest.group('obj-schema-TableRowStyleSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableRowStyleSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableRowStyleSuggestionState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTableRowStyleSuggestionState(od);
    });
  });

  unittest.group('obj-schema-TableStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.TableStyle.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTableStyle(od);
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

  unittest.group('obj-schema-TextStyleSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextStyleSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextStyleSuggestionState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTextStyleSuggestionState(od);
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

  unittest.group('obj-schema-UpdateDocumentStyleRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateDocumentStyleRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateDocumentStyleRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateDocumentStyleRequest(od);
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

  unittest.group('obj-schema-UpdateSectionStyleRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateSectionStyleRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateSectionStyleRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateSectionStyleRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateTableCellStyleRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateTableCellStyleRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateTableCellStyleRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateTableCellStyleRequest(od);
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

  unittest.group('obj-schema-UpdateTableRowStyleRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateTableRowStyleRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateTableRowStyleRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateTableRowStyleRequest(od);
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

  unittest.group('obj-schema-WeightedFontFamily', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWeightedFontFamily();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WeightedFontFamily.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWeightedFontFamily(od);
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

  unittest.group('resource-DocumentsResource', () {
    unittest.test('method--batchUpdate', () async {
      final mock = HttpServerMock();
      final res = api.DocsApi(mock).documents;
      final arg_request = buildBatchUpdateDocumentRequest();
      final arg_documentId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchUpdateDocumentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkBatchUpdateDocumentRequest(obj);

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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('v1/documents/'),
        );
        pathOffset += 13;
        index = path.indexOf(':batchUpdate', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_documentId'),
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
        final resp = convert.json.encode(buildBatchUpdateDocumentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.batchUpdate(arg_request, arg_documentId,
          $fields: arg_$fields);
      checkBatchUpdateDocumentResponse(
          response as api.BatchUpdateDocumentResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DocsApi(mock).documents;
      final arg_request = buildDocument();
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Document.fromJson(json as core.Map<core.String, core.dynamic>);
        checkDocument(obj);

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
          path.substring(pathOffset, pathOffset + 12),
          unittest.equals('v1/documents'),
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
        final resp = convert.json.encode(buildDocument());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkDocument(response as api.Document);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DocsApi(mock).documents;
      final arg_documentId = 'foo';
      final arg_suggestionsViewMode = 'foo';
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
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('v1/documents/'),
        );
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_documentId'),
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
          queryMap['suggestionsViewMode']!.first,
          unittest.equals(arg_suggestionsViewMode),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDocument());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_documentId,
          suggestionsViewMode: arg_suggestionsViewMode, $fields: arg_$fields);
      checkDocument(response as api.Document);
    });
  });
}
