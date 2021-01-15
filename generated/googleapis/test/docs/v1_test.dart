// ignore_for_file: avoid_unused_constructor_parameters
// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: constant_identifier_names
// ignore_for_file: directives_ordering
// ignore_for_file: empty_constructor_bodies
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unused_field
// ignore_for_file: unused_import
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unused_local_variable

library googleapis.docs.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/docs/v1.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

core.List<core.String> buildUnnamed5441() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5441(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5442() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5442(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.SuggestedTextStyle> buildUnnamed5443() {
  var o = <core.String, api.SuggestedTextStyle>{};
  o['x'] = buildSuggestedTextStyle();
  o['y'] = buildSuggestedTextStyle();
  return o;
}

void checkUnnamed5443(core.Map<core.String, api.SuggestedTextStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTextStyle(o['x']);
  checkSuggestedTextStyle(o['y']);
}

core.int buildCounterAutoText = 0;
api.AutoText buildAutoText() {
  var o = api.AutoText();
  buildCounterAutoText++;
  if (buildCounterAutoText < 3) {
    o.suggestedDeletionIds = buildUnnamed5441();
    o.suggestedInsertionIds = buildUnnamed5442();
    o.suggestedTextStyleChanges = buildUnnamed5443();
    o.textStyle = buildTextStyle();
    o.type = 'foo';
  }
  buildCounterAutoText--;
  return o;
}

void checkAutoText(api.AutoText o) {
  buildCounterAutoText++;
  if (buildCounterAutoText < 3) {
    checkUnnamed5441(o.suggestedDeletionIds);
    checkUnnamed5442(o.suggestedInsertionIds);
    checkUnnamed5443(o.suggestedTextStyleChanges);
    checkTextStyle(o.textStyle);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterAutoText--;
}

core.int buildCounterBackground = 0;
api.Background buildBackground() {
  var o = api.Background();
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
    checkOptionalColor(o.color);
  }
  buildCounterBackground--;
}

core.int buildCounterBackgroundSuggestionState = 0;
api.BackgroundSuggestionState buildBackgroundSuggestionState() {
  var o = api.BackgroundSuggestionState();
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
    unittest.expect(o.backgroundColorSuggested, unittest.isTrue);
  }
  buildCounterBackgroundSuggestionState--;
}

core.List<api.Request> buildUnnamed5444() {
  var o = <api.Request>[];
  o.add(buildRequest());
  o.add(buildRequest());
  return o;
}

void checkUnnamed5444(core.List<api.Request> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRequest(o[0]);
  checkRequest(o[1]);
}

core.int buildCounterBatchUpdateDocumentRequest = 0;
api.BatchUpdateDocumentRequest buildBatchUpdateDocumentRequest() {
  var o = api.BatchUpdateDocumentRequest();
  buildCounterBatchUpdateDocumentRequest++;
  if (buildCounterBatchUpdateDocumentRequest < 3) {
    o.requests = buildUnnamed5444();
    o.writeControl = buildWriteControl();
  }
  buildCounterBatchUpdateDocumentRequest--;
  return o;
}

void checkBatchUpdateDocumentRequest(api.BatchUpdateDocumentRequest o) {
  buildCounterBatchUpdateDocumentRequest++;
  if (buildCounterBatchUpdateDocumentRequest < 3) {
    checkUnnamed5444(o.requests);
    checkWriteControl(o.writeControl);
  }
  buildCounterBatchUpdateDocumentRequest--;
}

core.List<api.Response> buildUnnamed5445() {
  var o = <api.Response>[];
  o.add(buildResponse());
  o.add(buildResponse());
  return o;
}

void checkUnnamed5445(core.List<api.Response> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResponse(o[0]);
  checkResponse(o[1]);
}

core.int buildCounterBatchUpdateDocumentResponse = 0;
api.BatchUpdateDocumentResponse buildBatchUpdateDocumentResponse() {
  var o = api.BatchUpdateDocumentResponse();
  buildCounterBatchUpdateDocumentResponse++;
  if (buildCounterBatchUpdateDocumentResponse < 3) {
    o.documentId = 'foo';
    o.replies = buildUnnamed5445();
    o.writeControl = buildWriteControl();
  }
  buildCounterBatchUpdateDocumentResponse--;
  return o;
}

void checkBatchUpdateDocumentResponse(api.BatchUpdateDocumentResponse o) {
  buildCounterBatchUpdateDocumentResponse++;
  if (buildCounterBatchUpdateDocumentResponse < 3) {
    unittest.expect(o.documentId, unittest.equals('foo'));
    checkUnnamed5445(o.replies);
    checkWriteControl(o.writeControl);
  }
  buildCounterBatchUpdateDocumentResponse--;
}

core.List<api.StructuralElement> buildUnnamed5446() {
  var o = <api.StructuralElement>[];
  o.add(buildStructuralElement());
  o.add(buildStructuralElement());
  return o;
}

void checkUnnamed5446(core.List<api.StructuralElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStructuralElement(o[0]);
  checkStructuralElement(o[1]);
}

core.int buildCounterBody = 0;
api.Body buildBody() {
  var o = api.Body();
  buildCounterBody++;
  if (buildCounterBody < 3) {
    o.content = buildUnnamed5446();
  }
  buildCounterBody--;
  return o;
}

void checkBody(api.Body o) {
  buildCounterBody++;
  if (buildCounterBody < 3) {
    checkUnnamed5446(o.content);
  }
  buildCounterBody--;
}

core.int buildCounterBullet = 0;
api.Bullet buildBullet() {
  var o = api.Bullet();
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
    unittest.expect(o.listId, unittest.equals('foo'));
    unittest.expect(o.nestingLevel, unittest.equals(42));
    checkTextStyle(o.textStyle);
  }
  buildCounterBullet--;
}

core.int buildCounterBulletSuggestionState = 0;
api.BulletSuggestionState buildBulletSuggestionState() {
  var o = api.BulletSuggestionState();
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
    unittest.expect(o.listIdSuggested, unittest.isTrue);
    unittest.expect(o.nestingLevelSuggested, unittest.isTrue);
    checkTextStyleSuggestionState(o.textStyleSuggestionState);
  }
  buildCounterBulletSuggestionState--;
}

core.int buildCounterColor = 0;
api.Color buildColor() {
  var o = api.Color();
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
    checkRgbColor(o.rgbColor);
  }
  buildCounterColor--;
}

core.List<core.String> buildUnnamed5447() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5447(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5448() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5448(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.SuggestedTextStyle> buildUnnamed5449() {
  var o = <core.String, api.SuggestedTextStyle>{};
  o['x'] = buildSuggestedTextStyle();
  o['y'] = buildSuggestedTextStyle();
  return o;
}

void checkUnnamed5449(core.Map<core.String, api.SuggestedTextStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTextStyle(o['x']);
  checkSuggestedTextStyle(o['y']);
}

core.int buildCounterColumnBreak = 0;
api.ColumnBreak buildColumnBreak() {
  var o = api.ColumnBreak();
  buildCounterColumnBreak++;
  if (buildCounterColumnBreak < 3) {
    o.suggestedDeletionIds = buildUnnamed5447();
    o.suggestedInsertionIds = buildUnnamed5448();
    o.suggestedTextStyleChanges = buildUnnamed5449();
    o.textStyle = buildTextStyle();
  }
  buildCounterColumnBreak--;
  return o;
}

void checkColumnBreak(api.ColumnBreak o) {
  buildCounterColumnBreak++;
  if (buildCounterColumnBreak < 3) {
    checkUnnamed5447(o.suggestedDeletionIds);
    checkUnnamed5448(o.suggestedInsertionIds);
    checkUnnamed5449(o.suggestedTextStyleChanges);
    checkTextStyle(o.textStyle);
  }
  buildCounterColumnBreak--;
}

core.int buildCounterCreateFooterRequest = 0;
api.CreateFooterRequest buildCreateFooterRequest() {
  var o = api.CreateFooterRequest();
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
    checkLocation(o.sectionBreakLocation);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterCreateFooterRequest--;
}

core.int buildCounterCreateFooterResponse = 0;
api.CreateFooterResponse buildCreateFooterResponse() {
  var o = api.CreateFooterResponse();
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
    unittest.expect(o.footerId, unittest.equals('foo'));
  }
  buildCounterCreateFooterResponse--;
}

core.int buildCounterCreateFootnoteRequest = 0;
api.CreateFootnoteRequest buildCreateFootnoteRequest() {
  var o = api.CreateFootnoteRequest();
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
    checkEndOfSegmentLocation(o.endOfSegmentLocation);
    checkLocation(o.location);
  }
  buildCounterCreateFootnoteRequest--;
}

core.int buildCounterCreateFootnoteResponse = 0;
api.CreateFootnoteResponse buildCreateFootnoteResponse() {
  var o = api.CreateFootnoteResponse();
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
    unittest.expect(o.footnoteId, unittest.equals('foo'));
  }
  buildCounterCreateFootnoteResponse--;
}

core.int buildCounterCreateHeaderRequest = 0;
api.CreateHeaderRequest buildCreateHeaderRequest() {
  var o = api.CreateHeaderRequest();
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
    checkLocation(o.sectionBreakLocation);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterCreateHeaderRequest--;
}

core.int buildCounterCreateHeaderResponse = 0;
api.CreateHeaderResponse buildCreateHeaderResponse() {
  var o = api.CreateHeaderResponse();
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
    unittest.expect(o.headerId, unittest.equals('foo'));
  }
  buildCounterCreateHeaderResponse--;
}

core.int buildCounterCreateNamedRangeRequest = 0;
api.CreateNamedRangeRequest buildCreateNamedRangeRequest() {
  var o = api.CreateNamedRangeRequest();
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
    unittest.expect(o.name, unittest.equals('foo'));
    checkRange(o.range);
  }
  buildCounterCreateNamedRangeRequest--;
}

core.int buildCounterCreateNamedRangeResponse = 0;
api.CreateNamedRangeResponse buildCreateNamedRangeResponse() {
  var o = api.CreateNamedRangeResponse();
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
    unittest.expect(o.namedRangeId, unittest.equals('foo'));
  }
  buildCounterCreateNamedRangeResponse--;
}

core.int buildCounterCreateParagraphBulletsRequest = 0;
api.CreateParagraphBulletsRequest buildCreateParagraphBulletsRequest() {
  var o = api.CreateParagraphBulletsRequest();
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
    unittest.expect(o.bulletPreset, unittest.equals('foo'));
    checkRange(o.range);
  }
  buildCounterCreateParagraphBulletsRequest--;
}

core.int buildCounterCropProperties = 0;
api.CropProperties buildCropProperties() {
  var o = api.CropProperties();
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
    unittest.expect(o.angle, unittest.equals(42.0));
    unittest.expect(o.offsetBottom, unittest.equals(42.0));
    unittest.expect(o.offsetLeft, unittest.equals(42.0));
    unittest.expect(o.offsetRight, unittest.equals(42.0));
    unittest.expect(o.offsetTop, unittest.equals(42.0));
  }
  buildCounterCropProperties--;
}

core.int buildCounterCropPropertiesSuggestionState = 0;
api.CropPropertiesSuggestionState buildCropPropertiesSuggestionState() {
  var o = api.CropPropertiesSuggestionState();
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
    unittest.expect(o.angleSuggested, unittest.isTrue);
    unittest.expect(o.offsetBottomSuggested, unittest.isTrue);
    unittest.expect(o.offsetLeftSuggested, unittest.isTrue);
    unittest.expect(o.offsetRightSuggested, unittest.isTrue);
    unittest.expect(o.offsetTopSuggested, unittest.isTrue);
  }
  buildCounterCropPropertiesSuggestionState--;
}

core.int buildCounterDeleteContentRangeRequest = 0;
api.DeleteContentRangeRequest buildDeleteContentRangeRequest() {
  var o = api.DeleteContentRangeRequest();
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
    checkRange(o.range);
  }
  buildCounterDeleteContentRangeRequest--;
}

core.int buildCounterDeleteFooterRequest = 0;
api.DeleteFooterRequest buildDeleteFooterRequest() {
  var o = api.DeleteFooterRequest();
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
    unittest.expect(o.footerId, unittest.equals('foo'));
  }
  buildCounterDeleteFooterRequest--;
}

core.int buildCounterDeleteHeaderRequest = 0;
api.DeleteHeaderRequest buildDeleteHeaderRequest() {
  var o = api.DeleteHeaderRequest();
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
    unittest.expect(o.headerId, unittest.equals('foo'));
  }
  buildCounterDeleteHeaderRequest--;
}

core.int buildCounterDeleteNamedRangeRequest = 0;
api.DeleteNamedRangeRequest buildDeleteNamedRangeRequest() {
  var o = api.DeleteNamedRangeRequest();
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
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.namedRangeId, unittest.equals('foo'));
  }
  buildCounterDeleteNamedRangeRequest--;
}

core.int buildCounterDeleteParagraphBulletsRequest = 0;
api.DeleteParagraphBulletsRequest buildDeleteParagraphBulletsRequest() {
  var o = api.DeleteParagraphBulletsRequest();
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
    checkRange(o.range);
  }
  buildCounterDeleteParagraphBulletsRequest--;
}

core.int buildCounterDeletePositionedObjectRequest = 0;
api.DeletePositionedObjectRequest buildDeletePositionedObjectRequest() {
  var o = api.DeletePositionedObjectRequest();
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
    unittest.expect(o.objectId, unittest.equals('foo'));
  }
  buildCounterDeletePositionedObjectRequest--;
}

core.int buildCounterDeleteTableColumnRequest = 0;
api.DeleteTableColumnRequest buildDeleteTableColumnRequest() {
  var o = api.DeleteTableColumnRequest();
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
    checkTableCellLocation(o.tableCellLocation);
  }
  buildCounterDeleteTableColumnRequest--;
}

core.int buildCounterDeleteTableRowRequest = 0;
api.DeleteTableRowRequest buildDeleteTableRowRequest() {
  var o = api.DeleteTableRowRequest();
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
    checkTableCellLocation(o.tableCellLocation);
  }
  buildCounterDeleteTableRowRequest--;
}

core.int buildCounterDimension = 0;
api.Dimension buildDimension() {
  var o = api.Dimension();
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
    unittest.expect(o.magnitude, unittest.equals(42.0));
    unittest.expect(o.unit, unittest.equals('foo'));
  }
  buildCounterDimension--;
}

core.Map<core.String, api.Footer> buildUnnamed5450() {
  var o = <core.String, api.Footer>{};
  o['x'] = buildFooter();
  o['y'] = buildFooter();
  return o;
}

void checkUnnamed5450(core.Map<core.String, api.Footer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFooter(o['x']);
  checkFooter(o['y']);
}

core.Map<core.String, api.Footnote> buildUnnamed5451() {
  var o = <core.String, api.Footnote>{};
  o['x'] = buildFootnote();
  o['y'] = buildFootnote();
  return o;
}

void checkUnnamed5451(core.Map<core.String, api.Footnote> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFootnote(o['x']);
  checkFootnote(o['y']);
}

core.Map<core.String, api.Header> buildUnnamed5452() {
  var o = <core.String, api.Header>{};
  o['x'] = buildHeader();
  o['y'] = buildHeader();
  return o;
}

void checkUnnamed5452(core.Map<core.String, api.Header> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHeader(o['x']);
  checkHeader(o['y']);
}

core.Map<core.String, api.InlineObject> buildUnnamed5453() {
  var o = <core.String, api.InlineObject>{};
  o['x'] = buildInlineObject();
  o['y'] = buildInlineObject();
  return o;
}

void checkUnnamed5453(core.Map<core.String, api.InlineObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInlineObject(o['x']);
  checkInlineObject(o['y']);
}

core.Map<core.String, api.List> buildUnnamed5454() {
  var o = <core.String, api.List>{};
  o['x'] = buildList();
  o['y'] = buildList();
  return o;
}

void checkUnnamed5454(core.Map<core.String, api.List> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkList(o['x']);
  checkList(o['y']);
}

core.Map<core.String, api.NamedRanges> buildUnnamed5455() {
  var o = <core.String, api.NamedRanges>{};
  o['x'] = buildNamedRanges();
  o['y'] = buildNamedRanges();
  return o;
}

void checkUnnamed5455(core.Map<core.String, api.NamedRanges> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamedRanges(o['x']);
  checkNamedRanges(o['y']);
}

core.Map<core.String, api.PositionedObject> buildUnnamed5456() {
  var o = <core.String, api.PositionedObject>{};
  o['x'] = buildPositionedObject();
  o['y'] = buildPositionedObject();
  return o;
}

void checkUnnamed5456(core.Map<core.String, api.PositionedObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPositionedObject(o['x']);
  checkPositionedObject(o['y']);
}

core.Map<core.String, api.SuggestedDocumentStyle> buildUnnamed5457() {
  var o = <core.String, api.SuggestedDocumentStyle>{};
  o['x'] = buildSuggestedDocumentStyle();
  o['y'] = buildSuggestedDocumentStyle();
  return o;
}

void checkUnnamed5457(core.Map<core.String, api.SuggestedDocumentStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedDocumentStyle(o['x']);
  checkSuggestedDocumentStyle(o['y']);
}

core.Map<core.String, api.SuggestedNamedStyles> buildUnnamed5458() {
  var o = <core.String, api.SuggestedNamedStyles>{};
  o['x'] = buildSuggestedNamedStyles();
  o['y'] = buildSuggestedNamedStyles();
  return o;
}

void checkUnnamed5458(core.Map<core.String, api.SuggestedNamedStyles> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedNamedStyles(o['x']);
  checkSuggestedNamedStyles(o['y']);
}

core.int buildCounterDocument = 0;
api.Document buildDocument() {
  var o = api.Document();
  buildCounterDocument++;
  if (buildCounterDocument < 3) {
    o.body = buildBody();
    o.documentId = 'foo';
    o.documentStyle = buildDocumentStyle();
    o.footers = buildUnnamed5450();
    o.footnotes = buildUnnamed5451();
    o.headers = buildUnnamed5452();
    o.inlineObjects = buildUnnamed5453();
    o.lists = buildUnnamed5454();
    o.namedRanges = buildUnnamed5455();
    o.namedStyles = buildNamedStyles();
    o.positionedObjects = buildUnnamed5456();
    o.revisionId = 'foo';
    o.suggestedDocumentStyleChanges = buildUnnamed5457();
    o.suggestedNamedStylesChanges = buildUnnamed5458();
    o.suggestionsViewMode = 'foo';
    o.title = 'foo';
  }
  buildCounterDocument--;
  return o;
}

void checkDocument(api.Document o) {
  buildCounterDocument++;
  if (buildCounterDocument < 3) {
    checkBody(o.body);
    unittest.expect(o.documentId, unittest.equals('foo'));
    checkDocumentStyle(o.documentStyle);
    checkUnnamed5450(o.footers);
    checkUnnamed5451(o.footnotes);
    checkUnnamed5452(o.headers);
    checkUnnamed5453(o.inlineObjects);
    checkUnnamed5454(o.lists);
    checkUnnamed5455(o.namedRanges);
    checkNamedStyles(o.namedStyles);
    checkUnnamed5456(o.positionedObjects);
    unittest.expect(o.revisionId, unittest.equals('foo'));
    checkUnnamed5457(o.suggestedDocumentStyleChanges);
    checkUnnamed5458(o.suggestedNamedStylesChanges);
    unittest.expect(o.suggestionsViewMode, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterDocument--;
}

core.int buildCounterDocumentStyle = 0;
api.DocumentStyle buildDocumentStyle() {
  var o = api.DocumentStyle();
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
    checkBackground(o.background);
    unittest.expect(o.defaultFooterId, unittest.equals('foo'));
    unittest.expect(o.defaultHeaderId, unittest.equals('foo'));
    unittest.expect(o.evenPageFooterId, unittest.equals('foo'));
    unittest.expect(o.evenPageHeaderId, unittest.equals('foo'));
    unittest.expect(o.firstPageFooterId, unittest.equals('foo'));
    unittest.expect(o.firstPageHeaderId, unittest.equals('foo'));
    checkDimension(o.marginBottom);
    checkDimension(o.marginFooter);
    checkDimension(o.marginHeader);
    checkDimension(o.marginLeft);
    checkDimension(o.marginRight);
    checkDimension(o.marginTop);
    unittest.expect(o.pageNumberStart, unittest.equals(42));
    checkSize(o.pageSize);
    unittest.expect(o.useCustomHeaderFooterMargins, unittest.isTrue);
    unittest.expect(o.useEvenPageHeaderFooter, unittest.isTrue);
    unittest.expect(o.useFirstPageHeaderFooter, unittest.isTrue);
  }
  buildCounterDocumentStyle--;
}

core.int buildCounterDocumentStyleSuggestionState = 0;
api.DocumentStyleSuggestionState buildDocumentStyleSuggestionState() {
  var o = api.DocumentStyleSuggestionState();
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
    checkBackgroundSuggestionState(o.backgroundSuggestionState);
    unittest.expect(o.defaultFooterIdSuggested, unittest.isTrue);
    unittest.expect(o.defaultHeaderIdSuggested, unittest.isTrue);
    unittest.expect(o.evenPageFooterIdSuggested, unittest.isTrue);
    unittest.expect(o.evenPageHeaderIdSuggested, unittest.isTrue);
    unittest.expect(o.firstPageFooterIdSuggested, unittest.isTrue);
    unittest.expect(o.firstPageHeaderIdSuggested, unittest.isTrue);
    unittest.expect(o.marginBottomSuggested, unittest.isTrue);
    unittest.expect(o.marginFooterSuggested, unittest.isTrue);
    unittest.expect(o.marginHeaderSuggested, unittest.isTrue);
    unittest.expect(o.marginLeftSuggested, unittest.isTrue);
    unittest.expect(o.marginRightSuggested, unittest.isTrue);
    unittest.expect(o.marginTopSuggested, unittest.isTrue);
    unittest.expect(o.pageNumberStartSuggested, unittest.isTrue);
    checkSizeSuggestionState(o.pageSizeSuggestionState);
    unittest.expect(o.useCustomHeaderFooterMarginsSuggested, unittest.isTrue);
    unittest.expect(o.useEvenPageHeaderFooterSuggested, unittest.isTrue);
    unittest.expect(o.useFirstPageHeaderFooterSuggested, unittest.isTrue);
  }
  buildCounterDocumentStyleSuggestionState--;
}

core.int buildCounterEmbeddedDrawingProperties = 0;
api.EmbeddedDrawingProperties buildEmbeddedDrawingProperties() {
  var o = api.EmbeddedDrawingProperties();
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
  var o = api.EmbeddedDrawingPropertiesSuggestionState();
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
  var o = api.EmbeddedObject();
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
    unittest.expect(o.description, unittest.equals('foo'));
    checkEmbeddedDrawingProperties(o.embeddedDrawingProperties);
    checkEmbeddedObjectBorder(o.embeddedObjectBorder);
    checkImageProperties(o.imageProperties);
    checkLinkedContentReference(o.linkedContentReference);
    checkDimension(o.marginBottom);
    checkDimension(o.marginLeft);
    checkDimension(o.marginRight);
    checkDimension(o.marginTop);
    checkSize(o.size);
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterEmbeddedObject--;
}

core.int buildCounterEmbeddedObjectBorder = 0;
api.EmbeddedObjectBorder buildEmbeddedObjectBorder() {
  var o = api.EmbeddedObjectBorder();
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
    checkOptionalColor(o.color);
    unittest.expect(o.dashStyle, unittest.equals('foo'));
    unittest.expect(o.propertyState, unittest.equals('foo'));
    checkDimension(o.width);
  }
  buildCounterEmbeddedObjectBorder--;
}

core.int buildCounterEmbeddedObjectBorderSuggestionState = 0;
api.EmbeddedObjectBorderSuggestionState
    buildEmbeddedObjectBorderSuggestionState() {
  var o = api.EmbeddedObjectBorderSuggestionState();
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
    unittest.expect(o.colorSuggested, unittest.isTrue);
    unittest.expect(o.dashStyleSuggested, unittest.isTrue);
    unittest.expect(o.propertyStateSuggested, unittest.isTrue);
    unittest.expect(o.widthSuggested, unittest.isTrue);
  }
  buildCounterEmbeddedObjectBorderSuggestionState--;
}

core.int buildCounterEmbeddedObjectSuggestionState = 0;
api.EmbeddedObjectSuggestionState buildEmbeddedObjectSuggestionState() {
  var o = api.EmbeddedObjectSuggestionState();
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
    unittest.expect(o.descriptionSuggested, unittest.isTrue);
    checkEmbeddedDrawingPropertiesSuggestionState(
        o.embeddedDrawingPropertiesSuggestionState);
    checkEmbeddedObjectBorderSuggestionState(
        o.embeddedObjectBorderSuggestionState);
    checkImagePropertiesSuggestionState(o.imagePropertiesSuggestionState);
    checkLinkedContentReferenceSuggestionState(
        o.linkedContentReferenceSuggestionState);
    unittest.expect(o.marginBottomSuggested, unittest.isTrue);
    unittest.expect(o.marginLeftSuggested, unittest.isTrue);
    unittest.expect(o.marginRightSuggested, unittest.isTrue);
    unittest.expect(o.marginTopSuggested, unittest.isTrue);
    checkSizeSuggestionState(o.sizeSuggestionState);
    unittest.expect(o.titleSuggested, unittest.isTrue);
  }
  buildCounterEmbeddedObjectSuggestionState--;
}

core.int buildCounterEndOfSegmentLocation = 0;
api.EndOfSegmentLocation buildEndOfSegmentLocation() {
  var o = api.EndOfSegmentLocation();
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
    unittest.expect(o.segmentId, unittest.equals('foo'));
  }
  buildCounterEndOfSegmentLocation--;
}

core.List<core.String> buildUnnamed5459() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5459(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5460() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5460(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEquation = 0;
api.Equation buildEquation() {
  var o = api.Equation();
  buildCounterEquation++;
  if (buildCounterEquation < 3) {
    o.suggestedDeletionIds = buildUnnamed5459();
    o.suggestedInsertionIds = buildUnnamed5460();
  }
  buildCounterEquation--;
  return o;
}

void checkEquation(api.Equation o) {
  buildCounterEquation++;
  if (buildCounterEquation < 3) {
    checkUnnamed5459(o.suggestedDeletionIds);
    checkUnnamed5460(o.suggestedInsertionIds);
  }
  buildCounterEquation--;
}

core.List<api.StructuralElement> buildUnnamed5461() {
  var o = <api.StructuralElement>[];
  o.add(buildStructuralElement());
  o.add(buildStructuralElement());
  return o;
}

void checkUnnamed5461(core.List<api.StructuralElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStructuralElement(o[0]);
  checkStructuralElement(o[1]);
}

core.int buildCounterFooter = 0;
api.Footer buildFooter() {
  var o = api.Footer();
  buildCounterFooter++;
  if (buildCounterFooter < 3) {
    o.content = buildUnnamed5461();
    o.footerId = 'foo';
  }
  buildCounterFooter--;
  return o;
}

void checkFooter(api.Footer o) {
  buildCounterFooter++;
  if (buildCounterFooter < 3) {
    checkUnnamed5461(o.content);
    unittest.expect(o.footerId, unittest.equals('foo'));
  }
  buildCounterFooter--;
}

core.List<api.StructuralElement> buildUnnamed5462() {
  var o = <api.StructuralElement>[];
  o.add(buildStructuralElement());
  o.add(buildStructuralElement());
  return o;
}

void checkUnnamed5462(core.List<api.StructuralElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStructuralElement(o[0]);
  checkStructuralElement(o[1]);
}

core.int buildCounterFootnote = 0;
api.Footnote buildFootnote() {
  var o = api.Footnote();
  buildCounterFootnote++;
  if (buildCounterFootnote < 3) {
    o.content = buildUnnamed5462();
    o.footnoteId = 'foo';
  }
  buildCounterFootnote--;
  return o;
}

void checkFootnote(api.Footnote o) {
  buildCounterFootnote++;
  if (buildCounterFootnote < 3) {
    checkUnnamed5462(o.content);
    unittest.expect(o.footnoteId, unittest.equals('foo'));
  }
  buildCounterFootnote--;
}

core.List<core.String> buildUnnamed5463() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5463(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5464() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5464(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.SuggestedTextStyle> buildUnnamed5465() {
  var o = <core.String, api.SuggestedTextStyle>{};
  o['x'] = buildSuggestedTextStyle();
  o['y'] = buildSuggestedTextStyle();
  return o;
}

void checkUnnamed5465(core.Map<core.String, api.SuggestedTextStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTextStyle(o['x']);
  checkSuggestedTextStyle(o['y']);
}

core.int buildCounterFootnoteReference = 0;
api.FootnoteReference buildFootnoteReference() {
  var o = api.FootnoteReference();
  buildCounterFootnoteReference++;
  if (buildCounterFootnoteReference < 3) {
    o.footnoteId = 'foo';
    o.footnoteNumber = 'foo';
    o.suggestedDeletionIds = buildUnnamed5463();
    o.suggestedInsertionIds = buildUnnamed5464();
    o.suggestedTextStyleChanges = buildUnnamed5465();
    o.textStyle = buildTextStyle();
  }
  buildCounterFootnoteReference--;
  return o;
}

void checkFootnoteReference(api.FootnoteReference o) {
  buildCounterFootnoteReference++;
  if (buildCounterFootnoteReference < 3) {
    unittest.expect(o.footnoteId, unittest.equals('foo'));
    unittest.expect(o.footnoteNumber, unittest.equals('foo'));
    checkUnnamed5463(o.suggestedDeletionIds);
    checkUnnamed5464(o.suggestedInsertionIds);
    checkUnnamed5465(o.suggestedTextStyleChanges);
    checkTextStyle(o.textStyle);
  }
  buildCounterFootnoteReference--;
}

core.List<api.StructuralElement> buildUnnamed5466() {
  var o = <api.StructuralElement>[];
  o.add(buildStructuralElement());
  o.add(buildStructuralElement());
  return o;
}

void checkUnnamed5466(core.List<api.StructuralElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStructuralElement(o[0]);
  checkStructuralElement(o[1]);
}

core.int buildCounterHeader = 0;
api.Header buildHeader() {
  var o = api.Header();
  buildCounterHeader++;
  if (buildCounterHeader < 3) {
    o.content = buildUnnamed5466();
    o.headerId = 'foo';
  }
  buildCounterHeader--;
  return o;
}

void checkHeader(api.Header o) {
  buildCounterHeader++;
  if (buildCounterHeader < 3) {
    checkUnnamed5466(o.content);
    unittest.expect(o.headerId, unittest.equals('foo'));
  }
  buildCounterHeader--;
}

core.List<core.String> buildUnnamed5467() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5467(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5468() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5468(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.SuggestedTextStyle> buildUnnamed5469() {
  var o = <core.String, api.SuggestedTextStyle>{};
  o['x'] = buildSuggestedTextStyle();
  o['y'] = buildSuggestedTextStyle();
  return o;
}

void checkUnnamed5469(core.Map<core.String, api.SuggestedTextStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTextStyle(o['x']);
  checkSuggestedTextStyle(o['y']);
}

core.int buildCounterHorizontalRule = 0;
api.HorizontalRule buildHorizontalRule() {
  var o = api.HorizontalRule();
  buildCounterHorizontalRule++;
  if (buildCounterHorizontalRule < 3) {
    o.suggestedDeletionIds = buildUnnamed5467();
    o.suggestedInsertionIds = buildUnnamed5468();
    o.suggestedTextStyleChanges = buildUnnamed5469();
    o.textStyle = buildTextStyle();
  }
  buildCounterHorizontalRule--;
  return o;
}

void checkHorizontalRule(api.HorizontalRule o) {
  buildCounterHorizontalRule++;
  if (buildCounterHorizontalRule < 3) {
    checkUnnamed5467(o.suggestedDeletionIds);
    checkUnnamed5468(o.suggestedInsertionIds);
    checkUnnamed5469(o.suggestedTextStyleChanges);
    checkTextStyle(o.textStyle);
  }
  buildCounterHorizontalRule--;
}

core.int buildCounterImageProperties = 0;
api.ImageProperties buildImageProperties() {
  var o = api.ImageProperties();
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
    unittest.expect(o.angle, unittest.equals(42.0));
    unittest.expect(o.brightness, unittest.equals(42.0));
    unittest.expect(o.contentUri, unittest.equals('foo'));
    unittest.expect(o.contrast, unittest.equals(42.0));
    checkCropProperties(o.cropProperties);
    unittest.expect(o.sourceUri, unittest.equals('foo'));
    unittest.expect(o.transparency, unittest.equals(42.0));
  }
  buildCounterImageProperties--;
}

core.int buildCounterImagePropertiesSuggestionState = 0;
api.ImagePropertiesSuggestionState buildImagePropertiesSuggestionState() {
  var o = api.ImagePropertiesSuggestionState();
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
    unittest.expect(o.angleSuggested, unittest.isTrue);
    unittest.expect(o.brightnessSuggested, unittest.isTrue);
    unittest.expect(o.contentUriSuggested, unittest.isTrue);
    unittest.expect(o.contrastSuggested, unittest.isTrue);
    checkCropPropertiesSuggestionState(o.cropPropertiesSuggestionState);
    unittest.expect(o.sourceUriSuggested, unittest.isTrue);
    unittest.expect(o.transparencySuggested, unittest.isTrue);
  }
  buildCounterImagePropertiesSuggestionState--;
}

core.List<core.String> buildUnnamed5470() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5470(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.SuggestedInlineObjectProperties> buildUnnamed5471() {
  var o = <core.String, api.SuggestedInlineObjectProperties>{};
  o['x'] = buildSuggestedInlineObjectProperties();
  o['y'] = buildSuggestedInlineObjectProperties();
  return o;
}

void checkUnnamed5471(
    core.Map<core.String, api.SuggestedInlineObjectProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedInlineObjectProperties(o['x']);
  checkSuggestedInlineObjectProperties(o['y']);
}

core.int buildCounterInlineObject = 0;
api.InlineObject buildInlineObject() {
  var o = api.InlineObject();
  buildCounterInlineObject++;
  if (buildCounterInlineObject < 3) {
    o.inlineObjectProperties = buildInlineObjectProperties();
    o.objectId = 'foo';
    o.suggestedDeletionIds = buildUnnamed5470();
    o.suggestedInlineObjectPropertiesChanges = buildUnnamed5471();
    o.suggestedInsertionId = 'foo';
  }
  buildCounterInlineObject--;
  return o;
}

void checkInlineObject(api.InlineObject o) {
  buildCounterInlineObject++;
  if (buildCounterInlineObject < 3) {
    checkInlineObjectProperties(o.inlineObjectProperties);
    unittest.expect(o.objectId, unittest.equals('foo'));
    checkUnnamed5470(o.suggestedDeletionIds);
    checkUnnamed5471(o.suggestedInlineObjectPropertiesChanges);
    unittest.expect(o.suggestedInsertionId, unittest.equals('foo'));
  }
  buildCounterInlineObject--;
}

core.List<core.String> buildUnnamed5472() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5472(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5473() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5473(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.SuggestedTextStyle> buildUnnamed5474() {
  var o = <core.String, api.SuggestedTextStyle>{};
  o['x'] = buildSuggestedTextStyle();
  o['y'] = buildSuggestedTextStyle();
  return o;
}

void checkUnnamed5474(core.Map<core.String, api.SuggestedTextStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTextStyle(o['x']);
  checkSuggestedTextStyle(o['y']);
}

core.int buildCounterInlineObjectElement = 0;
api.InlineObjectElement buildInlineObjectElement() {
  var o = api.InlineObjectElement();
  buildCounterInlineObjectElement++;
  if (buildCounterInlineObjectElement < 3) {
    o.inlineObjectId = 'foo';
    o.suggestedDeletionIds = buildUnnamed5472();
    o.suggestedInsertionIds = buildUnnamed5473();
    o.suggestedTextStyleChanges = buildUnnamed5474();
    o.textStyle = buildTextStyle();
  }
  buildCounterInlineObjectElement--;
  return o;
}

void checkInlineObjectElement(api.InlineObjectElement o) {
  buildCounterInlineObjectElement++;
  if (buildCounterInlineObjectElement < 3) {
    unittest.expect(o.inlineObjectId, unittest.equals('foo'));
    checkUnnamed5472(o.suggestedDeletionIds);
    checkUnnamed5473(o.suggestedInsertionIds);
    checkUnnamed5474(o.suggestedTextStyleChanges);
    checkTextStyle(o.textStyle);
  }
  buildCounterInlineObjectElement--;
}

core.int buildCounterInlineObjectProperties = 0;
api.InlineObjectProperties buildInlineObjectProperties() {
  var o = api.InlineObjectProperties();
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
    checkEmbeddedObject(o.embeddedObject);
  }
  buildCounterInlineObjectProperties--;
}

core.int buildCounterInlineObjectPropertiesSuggestionState = 0;
api.InlineObjectPropertiesSuggestionState
    buildInlineObjectPropertiesSuggestionState() {
  var o = api.InlineObjectPropertiesSuggestionState();
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
    checkEmbeddedObjectSuggestionState(o.embeddedObjectSuggestionState);
  }
  buildCounterInlineObjectPropertiesSuggestionState--;
}

core.int buildCounterInsertInlineImageRequest = 0;
api.InsertInlineImageRequest buildInsertInlineImageRequest() {
  var o = api.InsertInlineImageRequest();
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
    checkEndOfSegmentLocation(o.endOfSegmentLocation);
    checkLocation(o.location);
    checkSize(o.objectSize);
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterInsertInlineImageRequest--;
}

core.int buildCounterInsertInlineImageResponse = 0;
api.InsertInlineImageResponse buildInsertInlineImageResponse() {
  var o = api.InsertInlineImageResponse();
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
    unittest.expect(o.objectId, unittest.equals('foo'));
  }
  buildCounterInsertInlineImageResponse--;
}

core.int buildCounterInsertInlineSheetsChartResponse = 0;
api.InsertInlineSheetsChartResponse buildInsertInlineSheetsChartResponse() {
  var o = api.InsertInlineSheetsChartResponse();
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
    unittest.expect(o.objectId, unittest.equals('foo'));
  }
  buildCounterInsertInlineSheetsChartResponse--;
}

core.int buildCounterInsertPageBreakRequest = 0;
api.InsertPageBreakRequest buildInsertPageBreakRequest() {
  var o = api.InsertPageBreakRequest();
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
    checkEndOfSegmentLocation(o.endOfSegmentLocation);
    checkLocation(o.location);
  }
  buildCounterInsertPageBreakRequest--;
}

core.int buildCounterInsertSectionBreakRequest = 0;
api.InsertSectionBreakRequest buildInsertSectionBreakRequest() {
  var o = api.InsertSectionBreakRequest();
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
    checkEndOfSegmentLocation(o.endOfSegmentLocation);
    checkLocation(o.location);
    unittest.expect(o.sectionType, unittest.equals('foo'));
  }
  buildCounterInsertSectionBreakRequest--;
}

core.int buildCounterInsertTableColumnRequest = 0;
api.InsertTableColumnRequest buildInsertTableColumnRequest() {
  var o = api.InsertTableColumnRequest();
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
    unittest.expect(o.insertRight, unittest.isTrue);
    checkTableCellLocation(o.tableCellLocation);
  }
  buildCounterInsertTableColumnRequest--;
}

core.int buildCounterInsertTableRequest = 0;
api.InsertTableRequest buildInsertTableRequest() {
  var o = api.InsertTableRequest();
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
    unittest.expect(o.columns, unittest.equals(42));
    checkEndOfSegmentLocation(o.endOfSegmentLocation);
    checkLocation(o.location);
    unittest.expect(o.rows, unittest.equals(42));
  }
  buildCounterInsertTableRequest--;
}

core.int buildCounterInsertTableRowRequest = 0;
api.InsertTableRowRequest buildInsertTableRowRequest() {
  var o = api.InsertTableRowRequest();
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
    unittest.expect(o.insertBelow, unittest.isTrue);
    checkTableCellLocation(o.tableCellLocation);
  }
  buildCounterInsertTableRowRequest--;
}

core.int buildCounterInsertTextRequest = 0;
api.InsertTextRequest buildInsertTextRequest() {
  var o = api.InsertTextRequest();
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
    checkEndOfSegmentLocation(o.endOfSegmentLocation);
    checkLocation(o.location);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterInsertTextRequest--;
}

core.int buildCounterLink = 0;
api.Link buildLink() {
  var o = api.Link();
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
    unittest.expect(o.bookmarkId, unittest.equals('foo'));
    unittest.expect(o.headingId, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterLink--;
}

core.int buildCounterLinkedContentReference = 0;
api.LinkedContentReference buildLinkedContentReference() {
  var o = api.LinkedContentReference();
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
    checkSheetsChartReference(o.sheetsChartReference);
  }
  buildCounterLinkedContentReference--;
}

core.int buildCounterLinkedContentReferenceSuggestionState = 0;
api.LinkedContentReferenceSuggestionState
    buildLinkedContentReferenceSuggestionState() {
  var o = api.LinkedContentReferenceSuggestionState();
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
        o.sheetsChartReferenceSuggestionState);
  }
  buildCounterLinkedContentReferenceSuggestionState--;
}

core.List<core.String> buildUnnamed5475() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5475(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.SuggestedListProperties> buildUnnamed5476() {
  var o = <core.String, api.SuggestedListProperties>{};
  o['x'] = buildSuggestedListProperties();
  o['y'] = buildSuggestedListProperties();
  return o;
}

void checkUnnamed5476(core.Map<core.String, api.SuggestedListProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedListProperties(o['x']);
  checkSuggestedListProperties(o['y']);
}

core.int buildCounterList = 0;
api.List buildList() {
  var o = api.List();
  buildCounterList++;
  if (buildCounterList < 3) {
    o.listProperties = buildListProperties();
    o.suggestedDeletionIds = buildUnnamed5475();
    o.suggestedInsertionId = 'foo';
    o.suggestedListPropertiesChanges = buildUnnamed5476();
  }
  buildCounterList--;
  return o;
}

void checkList(api.List o) {
  buildCounterList++;
  if (buildCounterList < 3) {
    checkListProperties(o.listProperties);
    checkUnnamed5475(o.suggestedDeletionIds);
    unittest.expect(o.suggestedInsertionId, unittest.equals('foo'));
    checkUnnamed5476(o.suggestedListPropertiesChanges);
  }
  buildCounterList--;
}

core.List<api.NestingLevel> buildUnnamed5477() {
  var o = <api.NestingLevel>[];
  o.add(buildNestingLevel());
  o.add(buildNestingLevel());
  return o;
}

void checkUnnamed5477(core.List<api.NestingLevel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNestingLevel(o[0]);
  checkNestingLevel(o[1]);
}

core.int buildCounterListProperties = 0;
api.ListProperties buildListProperties() {
  var o = api.ListProperties();
  buildCounterListProperties++;
  if (buildCounterListProperties < 3) {
    o.nestingLevels = buildUnnamed5477();
  }
  buildCounterListProperties--;
  return o;
}

void checkListProperties(api.ListProperties o) {
  buildCounterListProperties++;
  if (buildCounterListProperties < 3) {
    checkUnnamed5477(o.nestingLevels);
  }
  buildCounterListProperties--;
}

core.List<api.NestingLevelSuggestionState> buildUnnamed5478() {
  var o = <api.NestingLevelSuggestionState>[];
  o.add(buildNestingLevelSuggestionState());
  o.add(buildNestingLevelSuggestionState());
  return o;
}

void checkUnnamed5478(core.List<api.NestingLevelSuggestionState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNestingLevelSuggestionState(o[0]);
  checkNestingLevelSuggestionState(o[1]);
}

core.int buildCounterListPropertiesSuggestionState = 0;
api.ListPropertiesSuggestionState buildListPropertiesSuggestionState() {
  var o = api.ListPropertiesSuggestionState();
  buildCounterListPropertiesSuggestionState++;
  if (buildCounterListPropertiesSuggestionState < 3) {
    o.nestingLevelsSuggestionStates = buildUnnamed5478();
  }
  buildCounterListPropertiesSuggestionState--;
  return o;
}

void checkListPropertiesSuggestionState(api.ListPropertiesSuggestionState o) {
  buildCounterListPropertiesSuggestionState++;
  if (buildCounterListPropertiesSuggestionState < 3) {
    checkUnnamed5478(o.nestingLevelsSuggestionStates);
  }
  buildCounterListPropertiesSuggestionState--;
}

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  var o = api.Location();
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
    unittest.expect(o.index, unittest.equals(42));
    unittest.expect(o.segmentId, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterMergeTableCellsRequest = 0;
api.MergeTableCellsRequest buildMergeTableCellsRequest() {
  var o = api.MergeTableCellsRequest();
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
    checkTableRange(o.tableRange);
  }
  buildCounterMergeTableCellsRequest--;
}

core.List<api.Range> buildUnnamed5479() {
  var o = <api.Range>[];
  o.add(buildRange());
  o.add(buildRange());
  return o;
}

void checkUnnamed5479(core.List<api.Range> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRange(o[0]);
  checkRange(o[1]);
}

core.int buildCounterNamedRange = 0;
api.NamedRange buildNamedRange() {
  var o = api.NamedRange();
  buildCounterNamedRange++;
  if (buildCounterNamedRange < 3) {
    o.name = 'foo';
    o.namedRangeId = 'foo';
    o.ranges = buildUnnamed5479();
  }
  buildCounterNamedRange--;
  return o;
}

void checkNamedRange(api.NamedRange o) {
  buildCounterNamedRange++;
  if (buildCounterNamedRange < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.namedRangeId, unittest.equals('foo'));
    checkUnnamed5479(o.ranges);
  }
  buildCounterNamedRange--;
}

core.List<api.NamedRange> buildUnnamed5480() {
  var o = <api.NamedRange>[];
  o.add(buildNamedRange());
  o.add(buildNamedRange());
  return o;
}

void checkUnnamed5480(core.List<api.NamedRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamedRange(o[0]);
  checkNamedRange(o[1]);
}

core.int buildCounterNamedRanges = 0;
api.NamedRanges buildNamedRanges() {
  var o = api.NamedRanges();
  buildCounterNamedRanges++;
  if (buildCounterNamedRanges < 3) {
    o.name = 'foo';
    o.namedRanges = buildUnnamed5480();
  }
  buildCounterNamedRanges--;
  return o;
}

void checkNamedRanges(api.NamedRanges o) {
  buildCounterNamedRanges++;
  if (buildCounterNamedRanges < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5480(o.namedRanges);
  }
  buildCounterNamedRanges--;
}

core.int buildCounterNamedStyle = 0;
api.NamedStyle buildNamedStyle() {
  var o = api.NamedStyle();
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
    unittest.expect(o.namedStyleType, unittest.equals('foo'));
    checkParagraphStyle(o.paragraphStyle);
    checkTextStyle(o.textStyle);
  }
  buildCounterNamedStyle--;
}

core.int buildCounterNamedStyleSuggestionState = 0;
api.NamedStyleSuggestionState buildNamedStyleSuggestionState() {
  var o = api.NamedStyleSuggestionState();
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
    unittest.expect(o.namedStyleType, unittest.equals('foo'));
    checkParagraphStyleSuggestionState(o.paragraphStyleSuggestionState);
    checkTextStyleSuggestionState(o.textStyleSuggestionState);
  }
  buildCounterNamedStyleSuggestionState--;
}

core.List<api.NamedStyle> buildUnnamed5481() {
  var o = <api.NamedStyle>[];
  o.add(buildNamedStyle());
  o.add(buildNamedStyle());
  return o;
}

void checkUnnamed5481(core.List<api.NamedStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamedStyle(o[0]);
  checkNamedStyle(o[1]);
}

core.int buildCounterNamedStyles = 0;
api.NamedStyles buildNamedStyles() {
  var o = api.NamedStyles();
  buildCounterNamedStyles++;
  if (buildCounterNamedStyles < 3) {
    o.styles = buildUnnamed5481();
  }
  buildCounterNamedStyles--;
  return o;
}

void checkNamedStyles(api.NamedStyles o) {
  buildCounterNamedStyles++;
  if (buildCounterNamedStyles < 3) {
    checkUnnamed5481(o.styles);
  }
  buildCounterNamedStyles--;
}

core.List<api.NamedStyleSuggestionState> buildUnnamed5482() {
  var o = <api.NamedStyleSuggestionState>[];
  o.add(buildNamedStyleSuggestionState());
  o.add(buildNamedStyleSuggestionState());
  return o;
}

void checkUnnamed5482(core.List<api.NamedStyleSuggestionState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamedStyleSuggestionState(o[0]);
  checkNamedStyleSuggestionState(o[1]);
}

core.int buildCounterNamedStylesSuggestionState = 0;
api.NamedStylesSuggestionState buildNamedStylesSuggestionState() {
  var o = api.NamedStylesSuggestionState();
  buildCounterNamedStylesSuggestionState++;
  if (buildCounterNamedStylesSuggestionState < 3) {
    o.stylesSuggestionStates = buildUnnamed5482();
  }
  buildCounterNamedStylesSuggestionState--;
  return o;
}

void checkNamedStylesSuggestionState(api.NamedStylesSuggestionState o) {
  buildCounterNamedStylesSuggestionState++;
  if (buildCounterNamedStylesSuggestionState < 3) {
    checkUnnamed5482(o.stylesSuggestionStates);
  }
  buildCounterNamedStylesSuggestionState--;
}

core.int buildCounterNestingLevel = 0;
api.NestingLevel buildNestingLevel() {
  var o = api.NestingLevel();
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
    unittest.expect(o.bulletAlignment, unittest.equals('foo'));
    unittest.expect(o.glyphFormat, unittest.equals('foo'));
    unittest.expect(o.glyphSymbol, unittest.equals('foo'));
    unittest.expect(o.glyphType, unittest.equals('foo'));
    checkDimension(o.indentFirstLine);
    checkDimension(o.indentStart);
    unittest.expect(o.startNumber, unittest.equals(42));
    checkTextStyle(o.textStyle);
  }
  buildCounterNestingLevel--;
}

core.int buildCounterNestingLevelSuggestionState = 0;
api.NestingLevelSuggestionState buildNestingLevelSuggestionState() {
  var o = api.NestingLevelSuggestionState();
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
    unittest.expect(o.bulletAlignmentSuggested, unittest.isTrue);
    unittest.expect(o.glyphFormatSuggested, unittest.isTrue);
    unittest.expect(o.glyphSymbolSuggested, unittest.isTrue);
    unittest.expect(o.glyphTypeSuggested, unittest.isTrue);
    unittest.expect(o.indentFirstLineSuggested, unittest.isTrue);
    unittest.expect(o.indentStartSuggested, unittest.isTrue);
    unittest.expect(o.startNumberSuggested, unittest.isTrue);
    checkTextStyleSuggestionState(o.textStyleSuggestionState);
  }
  buildCounterNestingLevelSuggestionState--;
}

core.List<core.String> buildUnnamed5483() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5483(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterObjectReferences = 0;
api.ObjectReferences buildObjectReferences() {
  var o = api.ObjectReferences();
  buildCounterObjectReferences++;
  if (buildCounterObjectReferences < 3) {
    o.objectIds = buildUnnamed5483();
  }
  buildCounterObjectReferences--;
  return o;
}

void checkObjectReferences(api.ObjectReferences o) {
  buildCounterObjectReferences++;
  if (buildCounterObjectReferences < 3) {
    checkUnnamed5483(o.objectIds);
  }
  buildCounterObjectReferences--;
}

core.int buildCounterOptionalColor = 0;
api.OptionalColor buildOptionalColor() {
  var o = api.OptionalColor();
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
    checkColor(o.color);
  }
  buildCounterOptionalColor--;
}

core.List<core.String> buildUnnamed5484() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5484(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5485() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5485(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.SuggestedTextStyle> buildUnnamed5486() {
  var o = <core.String, api.SuggestedTextStyle>{};
  o['x'] = buildSuggestedTextStyle();
  o['y'] = buildSuggestedTextStyle();
  return o;
}

void checkUnnamed5486(core.Map<core.String, api.SuggestedTextStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTextStyle(o['x']);
  checkSuggestedTextStyle(o['y']);
}

core.int buildCounterPageBreak = 0;
api.PageBreak buildPageBreak() {
  var o = api.PageBreak();
  buildCounterPageBreak++;
  if (buildCounterPageBreak < 3) {
    o.suggestedDeletionIds = buildUnnamed5484();
    o.suggestedInsertionIds = buildUnnamed5485();
    o.suggestedTextStyleChanges = buildUnnamed5486();
    o.textStyle = buildTextStyle();
  }
  buildCounterPageBreak--;
  return o;
}

void checkPageBreak(api.PageBreak o) {
  buildCounterPageBreak++;
  if (buildCounterPageBreak < 3) {
    checkUnnamed5484(o.suggestedDeletionIds);
    checkUnnamed5485(o.suggestedInsertionIds);
    checkUnnamed5486(o.suggestedTextStyleChanges);
    checkTextStyle(o.textStyle);
  }
  buildCounterPageBreak--;
}

core.List<api.ParagraphElement> buildUnnamed5487() {
  var o = <api.ParagraphElement>[];
  o.add(buildParagraphElement());
  o.add(buildParagraphElement());
  return o;
}

void checkUnnamed5487(core.List<api.ParagraphElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParagraphElement(o[0]);
  checkParagraphElement(o[1]);
}

core.List<core.String> buildUnnamed5488() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5488(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.SuggestedBullet> buildUnnamed5489() {
  var o = <core.String, api.SuggestedBullet>{};
  o['x'] = buildSuggestedBullet();
  o['y'] = buildSuggestedBullet();
  return o;
}

void checkUnnamed5489(core.Map<core.String, api.SuggestedBullet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedBullet(o['x']);
  checkSuggestedBullet(o['y']);
}

core.Map<core.String, api.SuggestedParagraphStyle> buildUnnamed5490() {
  var o = <core.String, api.SuggestedParagraphStyle>{};
  o['x'] = buildSuggestedParagraphStyle();
  o['y'] = buildSuggestedParagraphStyle();
  return o;
}

void checkUnnamed5490(core.Map<core.String, api.SuggestedParagraphStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedParagraphStyle(o['x']);
  checkSuggestedParagraphStyle(o['y']);
}

core.Map<core.String, api.ObjectReferences> buildUnnamed5491() {
  var o = <core.String, api.ObjectReferences>{};
  o['x'] = buildObjectReferences();
  o['y'] = buildObjectReferences();
  return o;
}

void checkUnnamed5491(core.Map<core.String, api.ObjectReferences> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObjectReferences(o['x']);
  checkObjectReferences(o['y']);
}

core.int buildCounterParagraph = 0;
api.Paragraph buildParagraph() {
  var o = api.Paragraph();
  buildCounterParagraph++;
  if (buildCounterParagraph < 3) {
    o.bullet = buildBullet();
    o.elements = buildUnnamed5487();
    o.paragraphStyle = buildParagraphStyle();
    o.positionedObjectIds = buildUnnamed5488();
    o.suggestedBulletChanges = buildUnnamed5489();
    o.suggestedParagraphStyleChanges = buildUnnamed5490();
    o.suggestedPositionedObjectIds = buildUnnamed5491();
  }
  buildCounterParagraph--;
  return o;
}

void checkParagraph(api.Paragraph o) {
  buildCounterParagraph++;
  if (buildCounterParagraph < 3) {
    checkBullet(o.bullet);
    checkUnnamed5487(o.elements);
    checkParagraphStyle(o.paragraphStyle);
    checkUnnamed5488(o.positionedObjectIds);
    checkUnnamed5489(o.suggestedBulletChanges);
    checkUnnamed5490(o.suggestedParagraphStyleChanges);
    checkUnnamed5491(o.suggestedPositionedObjectIds);
  }
  buildCounterParagraph--;
}

core.int buildCounterParagraphBorder = 0;
api.ParagraphBorder buildParagraphBorder() {
  var o = api.ParagraphBorder();
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
    checkOptionalColor(o.color);
    unittest.expect(o.dashStyle, unittest.equals('foo'));
    checkDimension(o.padding);
    checkDimension(o.width);
  }
  buildCounterParagraphBorder--;
}

core.int buildCounterParagraphElement = 0;
api.ParagraphElement buildParagraphElement() {
  var o = api.ParagraphElement();
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
    o.startIndex = 42;
    o.textRun = buildTextRun();
  }
  buildCounterParagraphElement--;
  return o;
}

void checkParagraphElement(api.ParagraphElement o) {
  buildCounterParagraphElement++;
  if (buildCounterParagraphElement < 3) {
    checkAutoText(o.autoText);
    checkColumnBreak(o.columnBreak);
    unittest.expect(o.endIndex, unittest.equals(42));
    checkEquation(o.equation);
    checkFootnoteReference(o.footnoteReference);
    checkHorizontalRule(o.horizontalRule);
    checkInlineObjectElement(o.inlineObjectElement);
    checkPageBreak(o.pageBreak);
    unittest.expect(o.startIndex, unittest.equals(42));
    checkTextRun(o.textRun);
  }
  buildCounterParagraphElement--;
}

core.List<api.TabStop> buildUnnamed5492() {
  var o = <api.TabStop>[];
  o.add(buildTabStop());
  o.add(buildTabStop());
  return o;
}

void checkUnnamed5492(core.List<api.TabStop> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTabStop(o[0]);
  checkTabStop(o[1]);
}

core.int buildCounterParagraphStyle = 0;
api.ParagraphStyle buildParagraphStyle() {
  var o = api.ParagraphStyle();
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
    o.tabStops = buildUnnamed5492();
  }
  buildCounterParagraphStyle--;
  return o;
}

void checkParagraphStyle(api.ParagraphStyle o) {
  buildCounterParagraphStyle++;
  if (buildCounterParagraphStyle < 3) {
    unittest.expect(o.alignment, unittest.equals('foo'));
    unittest.expect(o.avoidWidowAndOrphan, unittest.isTrue);
    checkParagraphBorder(o.borderBetween);
    checkParagraphBorder(o.borderBottom);
    checkParagraphBorder(o.borderLeft);
    checkParagraphBorder(o.borderRight);
    checkParagraphBorder(o.borderTop);
    unittest.expect(o.direction, unittest.equals('foo'));
    unittest.expect(o.headingId, unittest.equals('foo'));
    checkDimension(o.indentEnd);
    checkDimension(o.indentFirstLine);
    checkDimension(o.indentStart);
    unittest.expect(o.keepLinesTogether, unittest.isTrue);
    unittest.expect(o.keepWithNext, unittest.isTrue);
    unittest.expect(o.lineSpacing, unittest.equals(42.0));
    unittest.expect(o.namedStyleType, unittest.equals('foo'));
    checkShading(o.shading);
    checkDimension(o.spaceAbove);
    checkDimension(o.spaceBelow);
    unittest.expect(o.spacingMode, unittest.equals('foo'));
    checkUnnamed5492(o.tabStops);
  }
  buildCounterParagraphStyle--;
}

core.int buildCounterParagraphStyleSuggestionState = 0;
api.ParagraphStyleSuggestionState buildParagraphStyleSuggestionState() {
  var o = api.ParagraphStyleSuggestionState();
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
    unittest.expect(o.alignmentSuggested, unittest.isTrue);
    unittest.expect(o.avoidWidowAndOrphanSuggested, unittest.isTrue);
    unittest.expect(o.borderBetweenSuggested, unittest.isTrue);
    unittest.expect(o.borderBottomSuggested, unittest.isTrue);
    unittest.expect(o.borderLeftSuggested, unittest.isTrue);
    unittest.expect(o.borderRightSuggested, unittest.isTrue);
    unittest.expect(o.borderTopSuggested, unittest.isTrue);
    unittest.expect(o.directionSuggested, unittest.isTrue);
    unittest.expect(o.headingIdSuggested, unittest.isTrue);
    unittest.expect(o.indentEndSuggested, unittest.isTrue);
    unittest.expect(o.indentFirstLineSuggested, unittest.isTrue);
    unittest.expect(o.indentStartSuggested, unittest.isTrue);
    unittest.expect(o.keepLinesTogetherSuggested, unittest.isTrue);
    unittest.expect(o.keepWithNextSuggested, unittest.isTrue);
    unittest.expect(o.lineSpacingSuggested, unittest.isTrue);
    unittest.expect(o.namedStyleTypeSuggested, unittest.isTrue);
    checkShadingSuggestionState(o.shadingSuggestionState);
    unittest.expect(o.spaceAboveSuggested, unittest.isTrue);
    unittest.expect(o.spaceBelowSuggested, unittest.isTrue);
    unittest.expect(o.spacingModeSuggested, unittest.isTrue);
  }
  buildCounterParagraphStyleSuggestionState--;
}

core.List<core.String> buildUnnamed5493() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5493(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.SuggestedPositionedObjectProperties>
    buildUnnamed5494() {
  var o = <core.String, api.SuggestedPositionedObjectProperties>{};
  o['x'] = buildSuggestedPositionedObjectProperties();
  o['y'] = buildSuggestedPositionedObjectProperties();
  return o;
}

void checkUnnamed5494(
    core.Map<core.String, api.SuggestedPositionedObjectProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedPositionedObjectProperties(o['x']);
  checkSuggestedPositionedObjectProperties(o['y']);
}

core.int buildCounterPositionedObject = 0;
api.PositionedObject buildPositionedObject() {
  var o = api.PositionedObject();
  buildCounterPositionedObject++;
  if (buildCounterPositionedObject < 3) {
    o.objectId = 'foo';
    o.positionedObjectProperties = buildPositionedObjectProperties();
    o.suggestedDeletionIds = buildUnnamed5493();
    o.suggestedInsertionId = 'foo';
    o.suggestedPositionedObjectPropertiesChanges = buildUnnamed5494();
  }
  buildCounterPositionedObject--;
  return o;
}

void checkPositionedObject(api.PositionedObject o) {
  buildCounterPositionedObject++;
  if (buildCounterPositionedObject < 3) {
    unittest.expect(o.objectId, unittest.equals('foo'));
    checkPositionedObjectProperties(o.positionedObjectProperties);
    checkUnnamed5493(o.suggestedDeletionIds);
    unittest.expect(o.suggestedInsertionId, unittest.equals('foo'));
    checkUnnamed5494(o.suggestedPositionedObjectPropertiesChanges);
  }
  buildCounterPositionedObject--;
}

core.int buildCounterPositionedObjectPositioning = 0;
api.PositionedObjectPositioning buildPositionedObjectPositioning() {
  var o = api.PositionedObjectPositioning();
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
    unittest.expect(o.layout, unittest.equals('foo'));
    checkDimension(o.leftOffset);
    checkDimension(o.topOffset);
  }
  buildCounterPositionedObjectPositioning--;
}

core.int buildCounterPositionedObjectPositioningSuggestionState = 0;
api.PositionedObjectPositioningSuggestionState
    buildPositionedObjectPositioningSuggestionState() {
  var o = api.PositionedObjectPositioningSuggestionState();
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
    unittest.expect(o.layoutSuggested, unittest.isTrue);
    unittest.expect(o.leftOffsetSuggested, unittest.isTrue);
    unittest.expect(o.topOffsetSuggested, unittest.isTrue);
  }
  buildCounterPositionedObjectPositioningSuggestionState--;
}

core.int buildCounterPositionedObjectProperties = 0;
api.PositionedObjectProperties buildPositionedObjectProperties() {
  var o = api.PositionedObjectProperties();
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
    checkEmbeddedObject(o.embeddedObject);
    checkPositionedObjectPositioning(o.positioning);
  }
  buildCounterPositionedObjectProperties--;
}

core.int buildCounterPositionedObjectPropertiesSuggestionState = 0;
api.PositionedObjectPropertiesSuggestionState
    buildPositionedObjectPropertiesSuggestionState() {
  var o = api.PositionedObjectPropertiesSuggestionState();
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
    checkEmbeddedObjectSuggestionState(o.embeddedObjectSuggestionState);
    checkPositionedObjectPositioningSuggestionState(
        o.positioningSuggestionState);
  }
  buildCounterPositionedObjectPropertiesSuggestionState--;
}

core.int buildCounterRange = 0;
api.Range buildRange() {
  var o = api.Range();
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
    unittest.expect(o.endIndex, unittest.equals(42));
    unittest.expect(o.segmentId, unittest.equals('foo'));
    unittest.expect(o.startIndex, unittest.equals(42));
  }
  buildCounterRange--;
}

core.int buildCounterReplaceAllTextRequest = 0;
api.ReplaceAllTextRequest buildReplaceAllTextRequest() {
  var o = api.ReplaceAllTextRequest();
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
    checkSubstringMatchCriteria(o.containsText);
    unittest.expect(o.replaceText, unittest.equals('foo'));
  }
  buildCounterReplaceAllTextRequest--;
}

core.int buildCounterReplaceAllTextResponse = 0;
api.ReplaceAllTextResponse buildReplaceAllTextResponse() {
  var o = api.ReplaceAllTextResponse();
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
    unittest.expect(o.occurrencesChanged, unittest.equals(42));
  }
  buildCounterReplaceAllTextResponse--;
}

core.int buildCounterReplaceImageRequest = 0;
api.ReplaceImageRequest buildReplaceImageRequest() {
  var o = api.ReplaceImageRequest();
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
    unittest.expect(o.imageObjectId, unittest.equals('foo'));
    unittest.expect(o.imageReplaceMethod, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterReplaceImageRequest--;
}

core.int buildCounterReplaceNamedRangeContentRequest = 0;
api.ReplaceNamedRangeContentRequest buildReplaceNamedRangeContentRequest() {
  var o = api.ReplaceNamedRangeContentRequest();
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
    unittest.expect(o.namedRangeId, unittest.equals('foo'));
    unittest.expect(o.namedRangeName, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterReplaceNamedRangeContentRequest--;
}

core.int buildCounterRequest = 0;
api.Request buildRequest() {
  var o = api.Request();
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
    checkCreateFooterRequest(o.createFooter);
    checkCreateFootnoteRequest(o.createFootnote);
    checkCreateHeaderRequest(o.createHeader);
    checkCreateNamedRangeRequest(o.createNamedRange);
    checkCreateParagraphBulletsRequest(o.createParagraphBullets);
    checkDeleteContentRangeRequest(o.deleteContentRange);
    checkDeleteFooterRequest(o.deleteFooter);
    checkDeleteHeaderRequest(o.deleteHeader);
    checkDeleteNamedRangeRequest(o.deleteNamedRange);
    checkDeleteParagraphBulletsRequest(o.deleteParagraphBullets);
    checkDeletePositionedObjectRequest(o.deletePositionedObject);
    checkDeleteTableColumnRequest(o.deleteTableColumn);
    checkDeleteTableRowRequest(o.deleteTableRow);
    checkInsertInlineImageRequest(o.insertInlineImage);
    checkInsertPageBreakRequest(o.insertPageBreak);
    checkInsertSectionBreakRequest(o.insertSectionBreak);
    checkInsertTableRequest(o.insertTable);
    checkInsertTableColumnRequest(o.insertTableColumn);
    checkInsertTableRowRequest(o.insertTableRow);
    checkInsertTextRequest(o.insertText);
    checkMergeTableCellsRequest(o.mergeTableCells);
    checkReplaceAllTextRequest(o.replaceAllText);
    checkReplaceImageRequest(o.replaceImage);
    checkReplaceNamedRangeContentRequest(o.replaceNamedRangeContent);
    checkUnmergeTableCellsRequest(o.unmergeTableCells);
    checkUpdateDocumentStyleRequest(o.updateDocumentStyle);
    checkUpdateParagraphStyleRequest(o.updateParagraphStyle);
    checkUpdateSectionStyleRequest(o.updateSectionStyle);
    checkUpdateTableCellStyleRequest(o.updateTableCellStyle);
    checkUpdateTableColumnPropertiesRequest(o.updateTableColumnProperties);
    checkUpdateTableRowStyleRequest(o.updateTableRowStyle);
    checkUpdateTextStyleRequest(o.updateTextStyle);
  }
  buildCounterRequest--;
}

core.int buildCounterResponse = 0;
api.Response buildResponse() {
  var o = api.Response();
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
    checkCreateFooterResponse(o.createFooter);
    checkCreateFootnoteResponse(o.createFootnote);
    checkCreateHeaderResponse(o.createHeader);
    checkCreateNamedRangeResponse(o.createNamedRange);
    checkInsertInlineImageResponse(o.insertInlineImage);
    checkInsertInlineSheetsChartResponse(o.insertInlineSheetsChart);
    checkReplaceAllTextResponse(o.replaceAllText);
  }
  buildCounterResponse--;
}

core.int buildCounterRgbColor = 0;
api.RgbColor buildRgbColor() {
  var o = api.RgbColor();
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
    unittest.expect(o.blue, unittest.equals(42.0));
    unittest.expect(o.green, unittest.equals(42.0));
    unittest.expect(o.red, unittest.equals(42.0));
  }
  buildCounterRgbColor--;
}

core.List<core.String> buildUnnamed5495() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5495(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5496() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5496(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSectionBreak = 0;
api.SectionBreak buildSectionBreak() {
  var o = api.SectionBreak();
  buildCounterSectionBreak++;
  if (buildCounterSectionBreak < 3) {
    o.sectionStyle = buildSectionStyle();
    o.suggestedDeletionIds = buildUnnamed5495();
    o.suggestedInsertionIds = buildUnnamed5496();
  }
  buildCounterSectionBreak--;
  return o;
}

void checkSectionBreak(api.SectionBreak o) {
  buildCounterSectionBreak++;
  if (buildCounterSectionBreak < 3) {
    checkSectionStyle(o.sectionStyle);
    checkUnnamed5495(o.suggestedDeletionIds);
    checkUnnamed5496(o.suggestedInsertionIds);
  }
  buildCounterSectionBreak--;
}

core.int buildCounterSectionColumnProperties = 0;
api.SectionColumnProperties buildSectionColumnProperties() {
  var o = api.SectionColumnProperties();
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
    checkDimension(o.paddingEnd);
    checkDimension(o.width);
  }
  buildCounterSectionColumnProperties--;
}

core.List<api.SectionColumnProperties> buildUnnamed5497() {
  var o = <api.SectionColumnProperties>[];
  o.add(buildSectionColumnProperties());
  o.add(buildSectionColumnProperties());
  return o;
}

void checkUnnamed5497(core.List<api.SectionColumnProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSectionColumnProperties(o[0]);
  checkSectionColumnProperties(o[1]);
}

core.int buildCounterSectionStyle = 0;
api.SectionStyle buildSectionStyle() {
  var o = api.SectionStyle();
  buildCounterSectionStyle++;
  if (buildCounterSectionStyle < 3) {
    o.columnProperties = buildUnnamed5497();
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
    checkUnnamed5497(o.columnProperties);
    unittest.expect(o.columnSeparatorStyle, unittest.equals('foo'));
    unittest.expect(o.contentDirection, unittest.equals('foo'));
    unittest.expect(o.defaultFooterId, unittest.equals('foo'));
    unittest.expect(o.defaultHeaderId, unittest.equals('foo'));
    unittest.expect(o.evenPageFooterId, unittest.equals('foo'));
    unittest.expect(o.evenPageHeaderId, unittest.equals('foo'));
    unittest.expect(o.firstPageFooterId, unittest.equals('foo'));
    unittest.expect(o.firstPageHeaderId, unittest.equals('foo'));
    checkDimension(o.marginBottom);
    checkDimension(o.marginFooter);
    checkDimension(o.marginHeader);
    checkDimension(o.marginLeft);
    checkDimension(o.marginRight);
    checkDimension(o.marginTop);
    unittest.expect(o.pageNumberStart, unittest.equals(42));
    unittest.expect(o.sectionType, unittest.equals('foo'));
    unittest.expect(o.useFirstPageHeaderFooter, unittest.isTrue);
  }
  buildCounterSectionStyle--;
}

core.int buildCounterShading = 0;
api.Shading buildShading() {
  var o = api.Shading();
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
    checkOptionalColor(o.backgroundColor);
  }
  buildCounterShading--;
}

core.int buildCounterShadingSuggestionState = 0;
api.ShadingSuggestionState buildShadingSuggestionState() {
  var o = api.ShadingSuggestionState();
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
    unittest.expect(o.backgroundColorSuggested, unittest.isTrue);
  }
  buildCounterShadingSuggestionState--;
}

core.int buildCounterSheetsChartReference = 0;
api.SheetsChartReference buildSheetsChartReference() {
  var o = api.SheetsChartReference();
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
    unittest.expect(o.chartId, unittest.equals(42));
    unittest.expect(o.spreadsheetId, unittest.equals('foo'));
  }
  buildCounterSheetsChartReference--;
}

core.int buildCounterSheetsChartReferenceSuggestionState = 0;
api.SheetsChartReferenceSuggestionState
    buildSheetsChartReferenceSuggestionState() {
  var o = api.SheetsChartReferenceSuggestionState();
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
    unittest.expect(o.chartIdSuggested, unittest.isTrue);
    unittest.expect(o.spreadsheetIdSuggested, unittest.isTrue);
  }
  buildCounterSheetsChartReferenceSuggestionState--;
}

core.int buildCounterSize = 0;
api.Size buildSize() {
  var o = api.Size();
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
    checkDimension(o.height);
    checkDimension(o.width);
  }
  buildCounterSize--;
}

core.int buildCounterSizeSuggestionState = 0;
api.SizeSuggestionState buildSizeSuggestionState() {
  var o = api.SizeSuggestionState();
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
    unittest.expect(o.heightSuggested, unittest.isTrue);
    unittest.expect(o.widthSuggested, unittest.isTrue);
  }
  buildCounterSizeSuggestionState--;
}

core.int buildCounterStructuralElement = 0;
api.StructuralElement buildStructuralElement() {
  var o = api.StructuralElement();
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
    unittest.expect(o.endIndex, unittest.equals(42));
    checkParagraph(o.paragraph);
    checkSectionBreak(o.sectionBreak);
    unittest.expect(o.startIndex, unittest.equals(42));
    checkTable(o.table);
    checkTableOfContents(o.tableOfContents);
  }
  buildCounterStructuralElement--;
}

core.int buildCounterSubstringMatchCriteria = 0;
api.SubstringMatchCriteria buildSubstringMatchCriteria() {
  var o = api.SubstringMatchCriteria();
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
    unittest.expect(o.matchCase, unittest.isTrue);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterSubstringMatchCriteria--;
}

core.int buildCounterSuggestedBullet = 0;
api.SuggestedBullet buildSuggestedBullet() {
  var o = api.SuggestedBullet();
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
    checkBullet(o.bullet);
    checkBulletSuggestionState(o.bulletSuggestionState);
  }
  buildCounterSuggestedBullet--;
}

core.int buildCounterSuggestedDocumentStyle = 0;
api.SuggestedDocumentStyle buildSuggestedDocumentStyle() {
  var o = api.SuggestedDocumentStyle();
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
    checkDocumentStyle(o.documentStyle);
    checkDocumentStyleSuggestionState(o.documentStyleSuggestionState);
  }
  buildCounterSuggestedDocumentStyle--;
}

core.int buildCounterSuggestedInlineObjectProperties = 0;
api.SuggestedInlineObjectProperties buildSuggestedInlineObjectProperties() {
  var o = api.SuggestedInlineObjectProperties();
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
    checkInlineObjectProperties(o.inlineObjectProperties);
    checkInlineObjectPropertiesSuggestionState(
        o.inlineObjectPropertiesSuggestionState);
  }
  buildCounterSuggestedInlineObjectProperties--;
}

core.int buildCounterSuggestedListProperties = 0;
api.SuggestedListProperties buildSuggestedListProperties() {
  var o = api.SuggestedListProperties();
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
    checkListProperties(o.listProperties);
    checkListPropertiesSuggestionState(o.listPropertiesSuggestionState);
  }
  buildCounterSuggestedListProperties--;
}

core.int buildCounterSuggestedNamedStyles = 0;
api.SuggestedNamedStyles buildSuggestedNamedStyles() {
  var o = api.SuggestedNamedStyles();
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
    checkNamedStyles(o.namedStyles);
    checkNamedStylesSuggestionState(o.namedStylesSuggestionState);
  }
  buildCounterSuggestedNamedStyles--;
}

core.int buildCounterSuggestedParagraphStyle = 0;
api.SuggestedParagraphStyle buildSuggestedParagraphStyle() {
  var o = api.SuggestedParagraphStyle();
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
    checkParagraphStyle(o.paragraphStyle);
    checkParagraphStyleSuggestionState(o.paragraphStyleSuggestionState);
  }
  buildCounterSuggestedParagraphStyle--;
}

core.int buildCounterSuggestedPositionedObjectProperties = 0;
api.SuggestedPositionedObjectProperties
    buildSuggestedPositionedObjectProperties() {
  var o = api.SuggestedPositionedObjectProperties();
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
    checkPositionedObjectProperties(o.positionedObjectProperties);
    checkPositionedObjectPropertiesSuggestionState(
        o.positionedObjectPropertiesSuggestionState);
  }
  buildCounterSuggestedPositionedObjectProperties--;
}

core.int buildCounterSuggestedTableCellStyle = 0;
api.SuggestedTableCellStyle buildSuggestedTableCellStyle() {
  var o = api.SuggestedTableCellStyle();
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
    checkTableCellStyle(o.tableCellStyle);
    checkTableCellStyleSuggestionState(o.tableCellStyleSuggestionState);
  }
  buildCounterSuggestedTableCellStyle--;
}

core.int buildCounterSuggestedTableRowStyle = 0;
api.SuggestedTableRowStyle buildSuggestedTableRowStyle() {
  var o = api.SuggestedTableRowStyle();
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
    checkTableRowStyle(o.tableRowStyle);
    checkTableRowStyleSuggestionState(o.tableRowStyleSuggestionState);
  }
  buildCounterSuggestedTableRowStyle--;
}

core.int buildCounterSuggestedTextStyle = 0;
api.SuggestedTextStyle buildSuggestedTextStyle() {
  var o = api.SuggestedTextStyle();
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
    checkTextStyle(o.textStyle);
    checkTextStyleSuggestionState(o.textStyleSuggestionState);
  }
  buildCounterSuggestedTextStyle--;
}

core.int buildCounterTabStop = 0;
api.TabStop buildTabStop() {
  var o = api.TabStop();
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
    unittest.expect(o.alignment, unittest.equals('foo'));
    checkDimension(o.offset);
  }
  buildCounterTabStop--;
}

core.List<core.String> buildUnnamed5498() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5498(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5499() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5499(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.TableRow> buildUnnamed5500() {
  var o = <api.TableRow>[];
  o.add(buildTableRow());
  o.add(buildTableRow());
  return o;
}

void checkUnnamed5500(core.List<api.TableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableRow(o[0]);
  checkTableRow(o[1]);
}

core.int buildCounterTable = 0;
api.Table buildTable() {
  var o = api.Table();
  buildCounterTable++;
  if (buildCounterTable < 3) {
    o.columns = 42;
    o.rows = 42;
    o.suggestedDeletionIds = buildUnnamed5498();
    o.suggestedInsertionIds = buildUnnamed5499();
    o.tableRows = buildUnnamed5500();
    o.tableStyle = buildTableStyle();
  }
  buildCounterTable--;
  return o;
}

void checkTable(api.Table o) {
  buildCounterTable++;
  if (buildCounterTable < 3) {
    unittest.expect(o.columns, unittest.equals(42));
    unittest.expect(o.rows, unittest.equals(42));
    checkUnnamed5498(o.suggestedDeletionIds);
    checkUnnamed5499(o.suggestedInsertionIds);
    checkUnnamed5500(o.tableRows);
    checkTableStyle(o.tableStyle);
  }
  buildCounterTable--;
}

core.List<api.StructuralElement> buildUnnamed5501() {
  var o = <api.StructuralElement>[];
  o.add(buildStructuralElement());
  o.add(buildStructuralElement());
  return o;
}

void checkUnnamed5501(core.List<api.StructuralElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStructuralElement(o[0]);
  checkStructuralElement(o[1]);
}

core.List<core.String> buildUnnamed5502() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5502(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5503() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5503(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.SuggestedTableCellStyle> buildUnnamed5504() {
  var o = <core.String, api.SuggestedTableCellStyle>{};
  o['x'] = buildSuggestedTableCellStyle();
  o['y'] = buildSuggestedTableCellStyle();
  return o;
}

void checkUnnamed5504(core.Map<core.String, api.SuggestedTableCellStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTableCellStyle(o['x']);
  checkSuggestedTableCellStyle(o['y']);
}

core.int buildCounterTableCell = 0;
api.TableCell buildTableCell() {
  var o = api.TableCell();
  buildCounterTableCell++;
  if (buildCounterTableCell < 3) {
    o.content = buildUnnamed5501();
    o.endIndex = 42;
    o.startIndex = 42;
    o.suggestedDeletionIds = buildUnnamed5502();
    o.suggestedInsertionIds = buildUnnamed5503();
    o.suggestedTableCellStyleChanges = buildUnnamed5504();
    o.tableCellStyle = buildTableCellStyle();
  }
  buildCounterTableCell--;
  return o;
}

void checkTableCell(api.TableCell o) {
  buildCounterTableCell++;
  if (buildCounterTableCell < 3) {
    checkUnnamed5501(o.content);
    unittest.expect(o.endIndex, unittest.equals(42));
    unittest.expect(o.startIndex, unittest.equals(42));
    checkUnnamed5502(o.suggestedDeletionIds);
    checkUnnamed5503(o.suggestedInsertionIds);
    checkUnnamed5504(o.suggestedTableCellStyleChanges);
    checkTableCellStyle(o.tableCellStyle);
  }
  buildCounterTableCell--;
}

core.int buildCounterTableCellBorder = 0;
api.TableCellBorder buildTableCellBorder() {
  var o = api.TableCellBorder();
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
    checkOptionalColor(o.color);
    unittest.expect(o.dashStyle, unittest.equals('foo'));
    checkDimension(o.width);
  }
  buildCounterTableCellBorder--;
}

core.int buildCounterTableCellLocation = 0;
api.TableCellLocation buildTableCellLocation() {
  var o = api.TableCellLocation();
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
    unittest.expect(o.columnIndex, unittest.equals(42));
    unittest.expect(o.rowIndex, unittest.equals(42));
    checkLocation(o.tableStartLocation);
  }
  buildCounterTableCellLocation--;
}

core.int buildCounterTableCellStyle = 0;
api.TableCellStyle buildTableCellStyle() {
  var o = api.TableCellStyle();
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
    checkOptionalColor(o.backgroundColor);
    checkTableCellBorder(o.borderBottom);
    checkTableCellBorder(o.borderLeft);
    checkTableCellBorder(o.borderRight);
    checkTableCellBorder(o.borderTop);
    unittest.expect(o.columnSpan, unittest.equals(42));
    unittest.expect(o.contentAlignment, unittest.equals('foo'));
    checkDimension(o.paddingBottom);
    checkDimension(o.paddingLeft);
    checkDimension(o.paddingRight);
    checkDimension(o.paddingTop);
    unittest.expect(o.rowSpan, unittest.equals(42));
  }
  buildCounterTableCellStyle--;
}

core.int buildCounterTableCellStyleSuggestionState = 0;
api.TableCellStyleSuggestionState buildTableCellStyleSuggestionState() {
  var o = api.TableCellStyleSuggestionState();
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
    unittest.expect(o.backgroundColorSuggested, unittest.isTrue);
    unittest.expect(o.borderBottomSuggested, unittest.isTrue);
    unittest.expect(o.borderLeftSuggested, unittest.isTrue);
    unittest.expect(o.borderRightSuggested, unittest.isTrue);
    unittest.expect(o.borderTopSuggested, unittest.isTrue);
    unittest.expect(o.columnSpanSuggested, unittest.isTrue);
    unittest.expect(o.contentAlignmentSuggested, unittest.isTrue);
    unittest.expect(o.paddingBottomSuggested, unittest.isTrue);
    unittest.expect(o.paddingLeftSuggested, unittest.isTrue);
    unittest.expect(o.paddingRightSuggested, unittest.isTrue);
    unittest.expect(o.paddingTopSuggested, unittest.isTrue);
    unittest.expect(o.rowSpanSuggested, unittest.isTrue);
  }
  buildCounterTableCellStyleSuggestionState--;
}

core.int buildCounterTableColumnProperties = 0;
api.TableColumnProperties buildTableColumnProperties() {
  var o = api.TableColumnProperties();
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
    checkDimension(o.width);
    unittest.expect(o.widthType, unittest.equals('foo'));
  }
  buildCounterTableColumnProperties--;
}

core.List<api.StructuralElement> buildUnnamed5505() {
  var o = <api.StructuralElement>[];
  o.add(buildStructuralElement());
  o.add(buildStructuralElement());
  return o;
}

void checkUnnamed5505(core.List<api.StructuralElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStructuralElement(o[0]);
  checkStructuralElement(o[1]);
}

core.List<core.String> buildUnnamed5506() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5506(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5507() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5507(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTableOfContents = 0;
api.TableOfContents buildTableOfContents() {
  var o = api.TableOfContents();
  buildCounterTableOfContents++;
  if (buildCounterTableOfContents < 3) {
    o.content = buildUnnamed5505();
    o.suggestedDeletionIds = buildUnnamed5506();
    o.suggestedInsertionIds = buildUnnamed5507();
  }
  buildCounterTableOfContents--;
  return o;
}

void checkTableOfContents(api.TableOfContents o) {
  buildCounterTableOfContents++;
  if (buildCounterTableOfContents < 3) {
    checkUnnamed5505(o.content);
    checkUnnamed5506(o.suggestedDeletionIds);
    checkUnnamed5507(o.suggestedInsertionIds);
  }
  buildCounterTableOfContents--;
}

core.int buildCounterTableRange = 0;
api.TableRange buildTableRange() {
  var o = api.TableRange();
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
    unittest.expect(o.columnSpan, unittest.equals(42));
    unittest.expect(o.rowSpan, unittest.equals(42));
    checkTableCellLocation(o.tableCellLocation);
  }
  buildCounterTableRange--;
}

core.List<core.String> buildUnnamed5508() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5508(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5509() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5509(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.SuggestedTableRowStyle> buildUnnamed5510() {
  var o = <core.String, api.SuggestedTableRowStyle>{};
  o['x'] = buildSuggestedTableRowStyle();
  o['y'] = buildSuggestedTableRowStyle();
  return o;
}

void checkUnnamed5510(core.Map<core.String, api.SuggestedTableRowStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTableRowStyle(o['x']);
  checkSuggestedTableRowStyle(o['y']);
}

core.List<api.TableCell> buildUnnamed5511() {
  var o = <api.TableCell>[];
  o.add(buildTableCell());
  o.add(buildTableCell());
  return o;
}

void checkUnnamed5511(core.List<api.TableCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableCell(o[0]);
  checkTableCell(o[1]);
}

core.int buildCounterTableRow = 0;
api.TableRow buildTableRow() {
  var o = api.TableRow();
  buildCounterTableRow++;
  if (buildCounterTableRow < 3) {
    o.endIndex = 42;
    o.startIndex = 42;
    o.suggestedDeletionIds = buildUnnamed5508();
    o.suggestedInsertionIds = buildUnnamed5509();
    o.suggestedTableRowStyleChanges = buildUnnamed5510();
    o.tableCells = buildUnnamed5511();
    o.tableRowStyle = buildTableRowStyle();
  }
  buildCounterTableRow--;
  return o;
}

void checkTableRow(api.TableRow o) {
  buildCounterTableRow++;
  if (buildCounterTableRow < 3) {
    unittest.expect(o.endIndex, unittest.equals(42));
    unittest.expect(o.startIndex, unittest.equals(42));
    checkUnnamed5508(o.suggestedDeletionIds);
    checkUnnamed5509(o.suggestedInsertionIds);
    checkUnnamed5510(o.suggestedTableRowStyleChanges);
    checkUnnamed5511(o.tableCells);
    checkTableRowStyle(o.tableRowStyle);
  }
  buildCounterTableRow--;
}

core.int buildCounterTableRowStyle = 0;
api.TableRowStyle buildTableRowStyle() {
  var o = api.TableRowStyle();
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
    checkDimension(o.minRowHeight);
  }
  buildCounterTableRowStyle--;
}

core.int buildCounterTableRowStyleSuggestionState = 0;
api.TableRowStyleSuggestionState buildTableRowStyleSuggestionState() {
  var o = api.TableRowStyleSuggestionState();
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
    unittest.expect(o.minRowHeightSuggested, unittest.isTrue);
  }
  buildCounterTableRowStyleSuggestionState--;
}

core.List<api.TableColumnProperties> buildUnnamed5512() {
  var o = <api.TableColumnProperties>[];
  o.add(buildTableColumnProperties());
  o.add(buildTableColumnProperties());
  return o;
}

void checkUnnamed5512(core.List<api.TableColumnProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableColumnProperties(o[0]);
  checkTableColumnProperties(o[1]);
}

core.int buildCounterTableStyle = 0;
api.TableStyle buildTableStyle() {
  var o = api.TableStyle();
  buildCounterTableStyle++;
  if (buildCounterTableStyle < 3) {
    o.tableColumnProperties = buildUnnamed5512();
  }
  buildCounterTableStyle--;
  return o;
}

void checkTableStyle(api.TableStyle o) {
  buildCounterTableStyle++;
  if (buildCounterTableStyle < 3) {
    checkUnnamed5512(o.tableColumnProperties);
  }
  buildCounterTableStyle--;
}

core.List<core.String> buildUnnamed5513() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5513(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed5514() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed5514(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.SuggestedTextStyle> buildUnnamed5515() {
  var o = <core.String, api.SuggestedTextStyle>{};
  o['x'] = buildSuggestedTextStyle();
  o['y'] = buildSuggestedTextStyle();
  return o;
}

void checkUnnamed5515(core.Map<core.String, api.SuggestedTextStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTextStyle(o['x']);
  checkSuggestedTextStyle(o['y']);
}

core.int buildCounterTextRun = 0;
api.TextRun buildTextRun() {
  var o = api.TextRun();
  buildCounterTextRun++;
  if (buildCounterTextRun < 3) {
    o.content = 'foo';
    o.suggestedDeletionIds = buildUnnamed5513();
    o.suggestedInsertionIds = buildUnnamed5514();
    o.suggestedTextStyleChanges = buildUnnamed5515();
    o.textStyle = buildTextStyle();
  }
  buildCounterTextRun--;
  return o;
}

void checkTextRun(api.TextRun o) {
  buildCounterTextRun++;
  if (buildCounterTextRun < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    checkUnnamed5513(o.suggestedDeletionIds);
    checkUnnamed5514(o.suggestedInsertionIds);
    checkUnnamed5515(o.suggestedTextStyleChanges);
    checkTextStyle(o.textStyle);
  }
  buildCounterTextRun--;
}

core.int buildCounterTextStyle = 0;
api.TextStyle buildTextStyle() {
  var o = api.TextStyle();
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
    checkOptionalColor(o.backgroundColor);
    unittest.expect(o.baselineOffset, unittest.equals('foo'));
    unittest.expect(o.bold, unittest.isTrue);
    checkDimension(o.fontSize);
    checkOptionalColor(o.foregroundColor);
    unittest.expect(o.italic, unittest.isTrue);
    checkLink(o.link);
    unittest.expect(o.smallCaps, unittest.isTrue);
    unittest.expect(o.strikethrough, unittest.isTrue);
    unittest.expect(o.underline, unittest.isTrue);
    checkWeightedFontFamily(o.weightedFontFamily);
  }
  buildCounterTextStyle--;
}

core.int buildCounterTextStyleSuggestionState = 0;
api.TextStyleSuggestionState buildTextStyleSuggestionState() {
  var o = api.TextStyleSuggestionState();
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
    unittest.expect(o.backgroundColorSuggested, unittest.isTrue);
    unittest.expect(o.baselineOffsetSuggested, unittest.isTrue);
    unittest.expect(o.boldSuggested, unittest.isTrue);
    unittest.expect(o.fontSizeSuggested, unittest.isTrue);
    unittest.expect(o.foregroundColorSuggested, unittest.isTrue);
    unittest.expect(o.italicSuggested, unittest.isTrue);
    unittest.expect(o.linkSuggested, unittest.isTrue);
    unittest.expect(o.smallCapsSuggested, unittest.isTrue);
    unittest.expect(o.strikethroughSuggested, unittest.isTrue);
    unittest.expect(o.underlineSuggested, unittest.isTrue);
    unittest.expect(o.weightedFontFamilySuggested, unittest.isTrue);
  }
  buildCounterTextStyleSuggestionState--;
}

core.int buildCounterUnmergeTableCellsRequest = 0;
api.UnmergeTableCellsRequest buildUnmergeTableCellsRequest() {
  var o = api.UnmergeTableCellsRequest();
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
    checkTableRange(o.tableRange);
  }
  buildCounterUnmergeTableCellsRequest--;
}

core.int buildCounterUpdateDocumentStyleRequest = 0;
api.UpdateDocumentStyleRequest buildUpdateDocumentStyleRequest() {
  var o = api.UpdateDocumentStyleRequest();
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
    checkDocumentStyle(o.documentStyle);
    unittest.expect(o.fields, unittest.equals('foo'));
  }
  buildCounterUpdateDocumentStyleRequest--;
}

core.int buildCounterUpdateParagraphStyleRequest = 0;
api.UpdateParagraphStyleRequest buildUpdateParagraphStyleRequest() {
  var o = api.UpdateParagraphStyleRequest();
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
    unittest.expect(o.fields, unittest.equals('foo'));
    checkParagraphStyle(o.paragraphStyle);
    checkRange(o.range);
  }
  buildCounterUpdateParagraphStyleRequest--;
}

core.int buildCounterUpdateSectionStyleRequest = 0;
api.UpdateSectionStyleRequest buildUpdateSectionStyleRequest() {
  var o = api.UpdateSectionStyleRequest();
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
    unittest.expect(o.fields, unittest.equals('foo'));
    checkRange(o.range);
    checkSectionStyle(o.sectionStyle);
  }
  buildCounterUpdateSectionStyleRequest--;
}

core.int buildCounterUpdateTableCellStyleRequest = 0;
api.UpdateTableCellStyleRequest buildUpdateTableCellStyleRequest() {
  var o = api.UpdateTableCellStyleRequest();
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
    unittest.expect(o.fields, unittest.equals('foo'));
    checkTableCellStyle(o.tableCellStyle);
    checkTableRange(o.tableRange);
    checkLocation(o.tableStartLocation);
  }
  buildCounterUpdateTableCellStyleRequest--;
}

core.List<core.int> buildUnnamed5516() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed5516(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterUpdateTableColumnPropertiesRequest = 0;
api.UpdateTableColumnPropertiesRequest
    buildUpdateTableColumnPropertiesRequest() {
  var o = api.UpdateTableColumnPropertiesRequest();
  buildCounterUpdateTableColumnPropertiesRequest++;
  if (buildCounterUpdateTableColumnPropertiesRequest < 3) {
    o.columnIndices = buildUnnamed5516();
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
    checkUnnamed5516(o.columnIndices);
    unittest.expect(o.fields, unittest.equals('foo'));
    checkTableColumnProperties(o.tableColumnProperties);
    checkLocation(o.tableStartLocation);
  }
  buildCounterUpdateTableColumnPropertiesRequest--;
}

core.List<core.int> buildUnnamed5517() {
  var o = <core.int>[];
  o.add(42);
  o.add(42);
  return o;
}

void checkUnnamed5517(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterUpdateTableRowStyleRequest = 0;
api.UpdateTableRowStyleRequest buildUpdateTableRowStyleRequest() {
  var o = api.UpdateTableRowStyleRequest();
  buildCounterUpdateTableRowStyleRequest++;
  if (buildCounterUpdateTableRowStyleRequest < 3) {
    o.fields = 'foo';
    o.rowIndices = buildUnnamed5517();
    o.tableRowStyle = buildTableRowStyle();
    o.tableStartLocation = buildLocation();
  }
  buildCounterUpdateTableRowStyleRequest--;
  return o;
}

void checkUpdateTableRowStyleRequest(api.UpdateTableRowStyleRequest o) {
  buildCounterUpdateTableRowStyleRequest++;
  if (buildCounterUpdateTableRowStyleRequest < 3) {
    unittest.expect(o.fields, unittest.equals('foo'));
    checkUnnamed5517(o.rowIndices);
    checkTableRowStyle(o.tableRowStyle);
    checkLocation(o.tableStartLocation);
  }
  buildCounterUpdateTableRowStyleRequest--;
}

core.int buildCounterUpdateTextStyleRequest = 0;
api.UpdateTextStyleRequest buildUpdateTextStyleRequest() {
  var o = api.UpdateTextStyleRequest();
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
    unittest.expect(o.fields, unittest.equals('foo'));
    checkRange(o.range);
    checkTextStyle(o.textStyle);
  }
  buildCounterUpdateTextStyleRequest--;
}

core.int buildCounterWeightedFontFamily = 0;
api.WeightedFontFamily buildWeightedFontFamily() {
  var o = api.WeightedFontFamily();
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
    unittest.expect(o.fontFamily, unittest.equals('foo'));
    unittest.expect(o.weight, unittest.equals(42));
  }
  buildCounterWeightedFontFamily--;
}

core.int buildCounterWriteControl = 0;
api.WriteControl buildWriteControl() {
  var o = api.WriteControl();
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
    unittest.expect(o.requiredRevisionId, unittest.equals('foo'));
    unittest.expect(o.targetRevisionId, unittest.equals('foo'));
  }
  buildCounterWriteControl--;
}

void main() {
  unittest.group('obj-schema-AutoText', () {
    unittest.test('to-json--from-json', () {
      var o = buildAutoText();
      var od = api.AutoText.fromJson(o.toJson());
      checkAutoText(od);
    });
  });

  unittest.group('obj-schema-Background', () {
    unittest.test('to-json--from-json', () {
      var o = buildBackground();
      var od = api.Background.fromJson(o.toJson());
      checkBackground(od);
    });
  });

  unittest.group('obj-schema-BackgroundSuggestionState', () {
    unittest.test('to-json--from-json', () {
      var o = buildBackgroundSuggestionState();
      var od = api.BackgroundSuggestionState.fromJson(o.toJson());
      checkBackgroundSuggestionState(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateDocumentRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchUpdateDocumentRequest();
      var od = api.BatchUpdateDocumentRequest.fromJson(o.toJson());
      checkBatchUpdateDocumentRequest(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateDocumentResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildBatchUpdateDocumentResponse();
      var od = api.BatchUpdateDocumentResponse.fromJson(o.toJson());
      checkBatchUpdateDocumentResponse(od);
    });
  });

  unittest.group('obj-schema-Body', () {
    unittest.test('to-json--from-json', () {
      var o = buildBody();
      var od = api.Body.fromJson(o.toJson());
      checkBody(od);
    });
  });

  unittest.group('obj-schema-Bullet', () {
    unittest.test('to-json--from-json', () {
      var o = buildBullet();
      var od = api.Bullet.fromJson(o.toJson());
      checkBullet(od);
    });
  });

  unittest.group('obj-schema-BulletSuggestionState', () {
    unittest.test('to-json--from-json', () {
      var o = buildBulletSuggestionState();
      var od = api.BulletSuggestionState.fromJson(o.toJson());
      checkBulletSuggestionState(od);
    });
  });

  unittest.group('obj-schema-Color', () {
    unittest.test('to-json--from-json', () {
      var o = buildColor();
      var od = api.Color.fromJson(o.toJson());
      checkColor(od);
    });
  });

  unittest.group('obj-schema-ColumnBreak', () {
    unittest.test('to-json--from-json', () {
      var o = buildColumnBreak();
      var od = api.ColumnBreak.fromJson(o.toJson());
      checkColumnBreak(od);
    });
  });

  unittest.group('obj-schema-CreateFooterRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateFooterRequest();
      var od = api.CreateFooterRequest.fromJson(o.toJson());
      checkCreateFooterRequest(od);
    });
  });

  unittest.group('obj-schema-CreateFooterResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateFooterResponse();
      var od = api.CreateFooterResponse.fromJson(o.toJson());
      checkCreateFooterResponse(od);
    });
  });

  unittest.group('obj-schema-CreateFootnoteRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateFootnoteRequest();
      var od = api.CreateFootnoteRequest.fromJson(o.toJson());
      checkCreateFootnoteRequest(od);
    });
  });

  unittest.group('obj-schema-CreateFootnoteResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateFootnoteResponse();
      var od = api.CreateFootnoteResponse.fromJson(o.toJson());
      checkCreateFootnoteResponse(od);
    });
  });

  unittest.group('obj-schema-CreateHeaderRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateHeaderRequest();
      var od = api.CreateHeaderRequest.fromJson(o.toJson());
      checkCreateHeaderRequest(od);
    });
  });

  unittest.group('obj-schema-CreateHeaderResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateHeaderResponse();
      var od = api.CreateHeaderResponse.fromJson(o.toJson());
      checkCreateHeaderResponse(od);
    });
  });

  unittest.group('obj-schema-CreateNamedRangeRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateNamedRangeRequest();
      var od = api.CreateNamedRangeRequest.fromJson(o.toJson());
      checkCreateNamedRangeRequest(od);
    });
  });

  unittest.group('obj-schema-CreateNamedRangeResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateNamedRangeResponse();
      var od = api.CreateNamedRangeResponse.fromJson(o.toJson());
      checkCreateNamedRangeResponse(od);
    });
  });

  unittest.group('obj-schema-CreateParagraphBulletsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateParagraphBulletsRequest();
      var od = api.CreateParagraphBulletsRequest.fromJson(o.toJson());
      checkCreateParagraphBulletsRequest(od);
    });
  });

  unittest.group('obj-schema-CropProperties', () {
    unittest.test('to-json--from-json', () {
      var o = buildCropProperties();
      var od = api.CropProperties.fromJson(o.toJson());
      checkCropProperties(od);
    });
  });

  unittest.group('obj-schema-CropPropertiesSuggestionState', () {
    unittest.test('to-json--from-json', () {
      var o = buildCropPropertiesSuggestionState();
      var od = api.CropPropertiesSuggestionState.fromJson(o.toJson());
      checkCropPropertiesSuggestionState(od);
    });
  });

  unittest.group('obj-schema-DeleteContentRangeRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteContentRangeRequest();
      var od = api.DeleteContentRangeRequest.fromJson(o.toJson());
      checkDeleteContentRangeRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteFooterRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteFooterRequest();
      var od = api.DeleteFooterRequest.fromJson(o.toJson());
      checkDeleteFooterRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteHeaderRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteHeaderRequest();
      var od = api.DeleteHeaderRequest.fromJson(o.toJson());
      checkDeleteHeaderRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteNamedRangeRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteNamedRangeRequest();
      var od = api.DeleteNamedRangeRequest.fromJson(o.toJson());
      checkDeleteNamedRangeRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteParagraphBulletsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteParagraphBulletsRequest();
      var od = api.DeleteParagraphBulletsRequest.fromJson(o.toJson());
      checkDeleteParagraphBulletsRequest(od);
    });
  });

  unittest.group('obj-schema-DeletePositionedObjectRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeletePositionedObjectRequest();
      var od = api.DeletePositionedObjectRequest.fromJson(o.toJson());
      checkDeletePositionedObjectRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteTableColumnRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteTableColumnRequest();
      var od = api.DeleteTableColumnRequest.fromJson(o.toJson());
      checkDeleteTableColumnRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteTableRowRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteTableRowRequest();
      var od = api.DeleteTableRowRequest.fromJson(o.toJson());
      checkDeleteTableRowRequest(od);
    });
  });

  unittest.group('obj-schema-Dimension', () {
    unittest.test('to-json--from-json', () {
      var o = buildDimension();
      var od = api.Dimension.fromJson(o.toJson());
      checkDimension(od);
    });
  });

  unittest.group('obj-schema-Document', () {
    unittest.test('to-json--from-json', () {
      var o = buildDocument();
      var od = api.Document.fromJson(o.toJson());
      checkDocument(od);
    });
  });

  unittest.group('obj-schema-DocumentStyle', () {
    unittest.test('to-json--from-json', () {
      var o = buildDocumentStyle();
      var od = api.DocumentStyle.fromJson(o.toJson());
      checkDocumentStyle(od);
    });
  });

  unittest.group('obj-schema-DocumentStyleSuggestionState', () {
    unittest.test('to-json--from-json', () {
      var o = buildDocumentStyleSuggestionState();
      var od = api.DocumentStyleSuggestionState.fromJson(o.toJson());
      checkDocumentStyleSuggestionState(od);
    });
  });

  unittest.group('obj-schema-EmbeddedDrawingProperties', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmbeddedDrawingProperties();
      var od = api.EmbeddedDrawingProperties.fromJson(o.toJson());
      checkEmbeddedDrawingProperties(od);
    });
  });

  unittest.group('obj-schema-EmbeddedDrawingPropertiesSuggestionState', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmbeddedDrawingPropertiesSuggestionState();
      var od =
          api.EmbeddedDrawingPropertiesSuggestionState.fromJson(o.toJson());
      checkEmbeddedDrawingPropertiesSuggestionState(od);
    });
  });

  unittest.group('obj-schema-EmbeddedObject', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmbeddedObject();
      var od = api.EmbeddedObject.fromJson(o.toJson());
      checkEmbeddedObject(od);
    });
  });

  unittest.group('obj-schema-EmbeddedObjectBorder', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmbeddedObjectBorder();
      var od = api.EmbeddedObjectBorder.fromJson(o.toJson());
      checkEmbeddedObjectBorder(od);
    });
  });

  unittest.group('obj-schema-EmbeddedObjectBorderSuggestionState', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmbeddedObjectBorderSuggestionState();
      var od = api.EmbeddedObjectBorderSuggestionState.fromJson(o.toJson());
      checkEmbeddedObjectBorderSuggestionState(od);
    });
  });

  unittest.group('obj-schema-EmbeddedObjectSuggestionState', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmbeddedObjectSuggestionState();
      var od = api.EmbeddedObjectSuggestionState.fromJson(o.toJson());
      checkEmbeddedObjectSuggestionState(od);
    });
  });

  unittest.group('obj-schema-EndOfSegmentLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildEndOfSegmentLocation();
      var od = api.EndOfSegmentLocation.fromJson(o.toJson());
      checkEndOfSegmentLocation(od);
    });
  });

  unittest.group('obj-schema-Equation', () {
    unittest.test('to-json--from-json', () {
      var o = buildEquation();
      var od = api.Equation.fromJson(o.toJson());
      checkEquation(od);
    });
  });

  unittest.group('obj-schema-Footer', () {
    unittest.test('to-json--from-json', () {
      var o = buildFooter();
      var od = api.Footer.fromJson(o.toJson());
      checkFooter(od);
    });
  });

  unittest.group('obj-schema-Footnote', () {
    unittest.test('to-json--from-json', () {
      var o = buildFootnote();
      var od = api.Footnote.fromJson(o.toJson());
      checkFootnote(od);
    });
  });

  unittest.group('obj-schema-FootnoteReference', () {
    unittest.test('to-json--from-json', () {
      var o = buildFootnoteReference();
      var od = api.FootnoteReference.fromJson(o.toJson());
      checkFootnoteReference(od);
    });
  });

  unittest.group('obj-schema-Header', () {
    unittest.test('to-json--from-json', () {
      var o = buildHeader();
      var od = api.Header.fromJson(o.toJson());
      checkHeader(od);
    });
  });

  unittest.group('obj-schema-HorizontalRule', () {
    unittest.test('to-json--from-json', () {
      var o = buildHorizontalRule();
      var od = api.HorizontalRule.fromJson(o.toJson());
      checkHorizontalRule(od);
    });
  });

  unittest.group('obj-schema-ImageProperties', () {
    unittest.test('to-json--from-json', () {
      var o = buildImageProperties();
      var od = api.ImageProperties.fromJson(o.toJson());
      checkImageProperties(od);
    });
  });

  unittest.group('obj-schema-ImagePropertiesSuggestionState', () {
    unittest.test('to-json--from-json', () {
      var o = buildImagePropertiesSuggestionState();
      var od = api.ImagePropertiesSuggestionState.fromJson(o.toJson());
      checkImagePropertiesSuggestionState(od);
    });
  });

  unittest.group('obj-schema-InlineObject', () {
    unittest.test('to-json--from-json', () {
      var o = buildInlineObject();
      var od = api.InlineObject.fromJson(o.toJson());
      checkInlineObject(od);
    });
  });

  unittest.group('obj-schema-InlineObjectElement', () {
    unittest.test('to-json--from-json', () {
      var o = buildInlineObjectElement();
      var od = api.InlineObjectElement.fromJson(o.toJson());
      checkInlineObjectElement(od);
    });
  });

  unittest.group('obj-schema-InlineObjectProperties', () {
    unittest.test('to-json--from-json', () {
      var o = buildInlineObjectProperties();
      var od = api.InlineObjectProperties.fromJson(o.toJson());
      checkInlineObjectProperties(od);
    });
  });

  unittest.group('obj-schema-InlineObjectPropertiesSuggestionState', () {
    unittest.test('to-json--from-json', () {
      var o = buildInlineObjectPropertiesSuggestionState();
      var od = api.InlineObjectPropertiesSuggestionState.fromJson(o.toJson());
      checkInlineObjectPropertiesSuggestionState(od);
    });
  });

  unittest.group('obj-schema-InsertInlineImageRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildInsertInlineImageRequest();
      var od = api.InsertInlineImageRequest.fromJson(o.toJson());
      checkInsertInlineImageRequest(od);
    });
  });

  unittest.group('obj-schema-InsertInlineImageResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildInsertInlineImageResponse();
      var od = api.InsertInlineImageResponse.fromJson(o.toJson());
      checkInsertInlineImageResponse(od);
    });
  });

  unittest.group('obj-schema-InsertInlineSheetsChartResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildInsertInlineSheetsChartResponse();
      var od = api.InsertInlineSheetsChartResponse.fromJson(o.toJson());
      checkInsertInlineSheetsChartResponse(od);
    });
  });

  unittest.group('obj-schema-InsertPageBreakRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildInsertPageBreakRequest();
      var od = api.InsertPageBreakRequest.fromJson(o.toJson());
      checkInsertPageBreakRequest(od);
    });
  });

  unittest.group('obj-schema-InsertSectionBreakRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildInsertSectionBreakRequest();
      var od = api.InsertSectionBreakRequest.fromJson(o.toJson());
      checkInsertSectionBreakRequest(od);
    });
  });

  unittest.group('obj-schema-InsertTableColumnRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildInsertTableColumnRequest();
      var od = api.InsertTableColumnRequest.fromJson(o.toJson());
      checkInsertTableColumnRequest(od);
    });
  });

  unittest.group('obj-schema-InsertTableRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildInsertTableRequest();
      var od = api.InsertTableRequest.fromJson(o.toJson());
      checkInsertTableRequest(od);
    });
  });

  unittest.group('obj-schema-InsertTableRowRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildInsertTableRowRequest();
      var od = api.InsertTableRowRequest.fromJson(o.toJson());
      checkInsertTableRowRequest(od);
    });
  });

  unittest.group('obj-schema-InsertTextRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildInsertTextRequest();
      var od = api.InsertTextRequest.fromJson(o.toJson());
      checkInsertTextRequest(od);
    });
  });

  unittest.group('obj-schema-Link', () {
    unittest.test('to-json--from-json', () {
      var o = buildLink();
      var od = api.Link.fromJson(o.toJson());
      checkLink(od);
    });
  });

  unittest.group('obj-schema-LinkedContentReference', () {
    unittest.test('to-json--from-json', () {
      var o = buildLinkedContentReference();
      var od = api.LinkedContentReference.fromJson(o.toJson());
      checkLinkedContentReference(od);
    });
  });

  unittest.group('obj-schema-LinkedContentReferenceSuggestionState', () {
    unittest.test('to-json--from-json', () {
      var o = buildLinkedContentReferenceSuggestionState();
      var od = api.LinkedContentReferenceSuggestionState.fromJson(o.toJson());
      checkLinkedContentReferenceSuggestionState(od);
    });
  });

  unittest.group('obj-schema-List', () {
    unittest.test('to-json--from-json', () {
      var o = buildList();
      var od = api.List.fromJson(o.toJson());
      checkList(od);
    });
  });

  unittest.group('obj-schema-ListProperties', () {
    unittest.test('to-json--from-json', () {
      var o = buildListProperties();
      var od = api.ListProperties.fromJson(o.toJson());
      checkListProperties(od);
    });
  });

  unittest.group('obj-schema-ListPropertiesSuggestionState', () {
    unittest.test('to-json--from-json', () {
      var o = buildListPropertiesSuggestionState();
      var od = api.ListPropertiesSuggestionState.fromJson(o.toJson());
      checkListPropertiesSuggestionState(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () {
      var o = buildLocation();
      var od = api.Location.fromJson(o.toJson());
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-MergeTableCellsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildMergeTableCellsRequest();
      var od = api.MergeTableCellsRequest.fromJson(o.toJson());
      checkMergeTableCellsRequest(od);
    });
  });

  unittest.group('obj-schema-NamedRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildNamedRange();
      var od = api.NamedRange.fromJson(o.toJson());
      checkNamedRange(od);
    });
  });

  unittest.group('obj-schema-NamedRanges', () {
    unittest.test('to-json--from-json', () {
      var o = buildNamedRanges();
      var od = api.NamedRanges.fromJson(o.toJson());
      checkNamedRanges(od);
    });
  });

  unittest.group('obj-schema-NamedStyle', () {
    unittest.test('to-json--from-json', () {
      var o = buildNamedStyle();
      var od = api.NamedStyle.fromJson(o.toJson());
      checkNamedStyle(od);
    });
  });

  unittest.group('obj-schema-NamedStyleSuggestionState', () {
    unittest.test('to-json--from-json', () {
      var o = buildNamedStyleSuggestionState();
      var od = api.NamedStyleSuggestionState.fromJson(o.toJson());
      checkNamedStyleSuggestionState(od);
    });
  });

  unittest.group('obj-schema-NamedStyles', () {
    unittest.test('to-json--from-json', () {
      var o = buildNamedStyles();
      var od = api.NamedStyles.fromJson(o.toJson());
      checkNamedStyles(od);
    });
  });

  unittest.group('obj-schema-NamedStylesSuggestionState', () {
    unittest.test('to-json--from-json', () {
      var o = buildNamedStylesSuggestionState();
      var od = api.NamedStylesSuggestionState.fromJson(o.toJson());
      checkNamedStylesSuggestionState(od);
    });
  });

  unittest.group('obj-schema-NestingLevel', () {
    unittest.test('to-json--from-json', () {
      var o = buildNestingLevel();
      var od = api.NestingLevel.fromJson(o.toJson());
      checkNestingLevel(od);
    });
  });

  unittest.group('obj-schema-NestingLevelSuggestionState', () {
    unittest.test('to-json--from-json', () {
      var o = buildNestingLevelSuggestionState();
      var od = api.NestingLevelSuggestionState.fromJson(o.toJson());
      checkNestingLevelSuggestionState(od);
    });
  });

  unittest.group('obj-schema-ObjectReferences', () {
    unittest.test('to-json--from-json', () {
      var o = buildObjectReferences();
      var od = api.ObjectReferences.fromJson(o.toJson());
      checkObjectReferences(od);
    });
  });

  unittest.group('obj-schema-OptionalColor', () {
    unittest.test('to-json--from-json', () {
      var o = buildOptionalColor();
      var od = api.OptionalColor.fromJson(o.toJson());
      checkOptionalColor(od);
    });
  });

  unittest.group('obj-schema-PageBreak', () {
    unittest.test('to-json--from-json', () {
      var o = buildPageBreak();
      var od = api.PageBreak.fromJson(o.toJson());
      checkPageBreak(od);
    });
  });

  unittest.group('obj-schema-Paragraph', () {
    unittest.test('to-json--from-json', () {
      var o = buildParagraph();
      var od = api.Paragraph.fromJson(o.toJson());
      checkParagraph(od);
    });
  });

  unittest.group('obj-schema-ParagraphBorder', () {
    unittest.test('to-json--from-json', () {
      var o = buildParagraphBorder();
      var od = api.ParagraphBorder.fromJson(o.toJson());
      checkParagraphBorder(od);
    });
  });

  unittest.group('obj-schema-ParagraphElement', () {
    unittest.test('to-json--from-json', () {
      var o = buildParagraphElement();
      var od = api.ParagraphElement.fromJson(o.toJson());
      checkParagraphElement(od);
    });
  });

  unittest.group('obj-schema-ParagraphStyle', () {
    unittest.test('to-json--from-json', () {
      var o = buildParagraphStyle();
      var od = api.ParagraphStyle.fromJson(o.toJson());
      checkParagraphStyle(od);
    });
  });

  unittest.group('obj-schema-ParagraphStyleSuggestionState', () {
    unittest.test('to-json--from-json', () {
      var o = buildParagraphStyleSuggestionState();
      var od = api.ParagraphStyleSuggestionState.fromJson(o.toJson());
      checkParagraphStyleSuggestionState(od);
    });
  });

  unittest.group('obj-schema-PositionedObject', () {
    unittest.test('to-json--from-json', () {
      var o = buildPositionedObject();
      var od = api.PositionedObject.fromJson(o.toJson());
      checkPositionedObject(od);
    });
  });

  unittest.group('obj-schema-PositionedObjectPositioning', () {
    unittest.test('to-json--from-json', () {
      var o = buildPositionedObjectPositioning();
      var od = api.PositionedObjectPositioning.fromJson(o.toJson());
      checkPositionedObjectPositioning(od);
    });
  });

  unittest.group('obj-schema-PositionedObjectPositioningSuggestionState', () {
    unittest.test('to-json--from-json', () {
      var o = buildPositionedObjectPositioningSuggestionState();
      var od =
          api.PositionedObjectPositioningSuggestionState.fromJson(o.toJson());
      checkPositionedObjectPositioningSuggestionState(od);
    });
  });

  unittest.group('obj-schema-PositionedObjectProperties', () {
    unittest.test('to-json--from-json', () {
      var o = buildPositionedObjectProperties();
      var od = api.PositionedObjectProperties.fromJson(o.toJson());
      checkPositionedObjectProperties(od);
    });
  });

  unittest.group('obj-schema-PositionedObjectPropertiesSuggestionState', () {
    unittest.test('to-json--from-json', () {
      var o = buildPositionedObjectPropertiesSuggestionState();
      var od =
          api.PositionedObjectPropertiesSuggestionState.fromJson(o.toJson());
      checkPositionedObjectPropertiesSuggestionState(od);
    });
  });

  unittest.group('obj-schema-Range', () {
    unittest.test('to-json--from-json', () {
      var o = buildRange();
      var od = api.Range.fromJson(o.toJson());
      checkRange(od);
    });
  });

  unittest.group('obj-schema-ReplaceAllTextRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildReplaceAllTextRequest();
      var od = api.ReplaceAllTextRequest.fromJson(o.toJson());
      checkReplaceAllTextRequest(od);
    });
  });

  unittest.group('obj-schema-ReplaceAllTextResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildReplaceAllTextResponse();
      var od = api.ReplaceAllTextResponse.fromJson(o.toJson());
      checkReplaceAllTextResponse(od);
    });
  });

  unittest.group('obj-schema-ReplaceImageRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildReplaceImageRequest();
      var od = api.ReplaceImageRequest.fromJson(o.toJson());
      checkReplaceImageRequest(od);
    });
  });

  unittest.group('obj-schema-ReplaceNamedRangeContentRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildReplaceNamedRangeContentRequest();
      var od = api.ReplaceNamedRangeContentRequest.fromJson(o.toJson());
      checkReplaceNamedRangeContentRequest(od);
    });
  });

  unittest.group('obj-schema-Request', () {
    unittest.test('to-json--from-json', () {
      var o = buildRequest();
      var od = api.Request.fromJson(o.toJson());
      checkRequest(od);
    });
  });

  unittest.group('obj-schema-Response', () {
    unittest.test('to-json--from-json', () {
      var o = buildResponse();
      var od = api.Response.fromJson(o.toJson());
      checkResponse(od);
    });
  });

  unittest.group('obj-schema-RgbColor', () {
    unittest.test('to-json--from-json', () {
      var o = buildRgbColor();
      var od = api.RgbColor.fromJson(o.toJson());
      checkRgbColor(od);
    });
  });

  unittest.group('obj-schema-SectionBreak', () {
    unittest.test('to-json--from-json', () {
      var o = buildSectionBreak();
      var od = api.SectionBreak.fromJson(o.toJson());
      checkSectionBreak(od);
    });
  });

  unittest.group('obj-schema-SectionColumnProperties', () {
    unittest.test('to-json--from-json', () {
      var o = buildSectionColumnProperties();
      var od = api.SectionColumnProperties.fromJson(o.toJson());
      checkSectionColumnProperties(od);
    });
  });

  unittest.group('obj-schema-SectionStyle', () {
    unittest.test('to-json--from-json', () {
      var o = buildSectionStyle();
      var od = api.SectionStyle.fromJson(o.toJson());
      checkSectionStyle(od);
    });
  });

  unittest.group('obj-schema-Shading', () {
    unittest.test('to-json--from-json', () {
      var o = buildShading();
      var od = api.Shading.fromJson(o.toJson());
      checkShading(od);
    });
  });

  unittest.group('obj-schema-ShadingSuggestionState', () {
    unittest.test('to-json--from-json', () {
      var o = buildShadingSuggestionState();
      var od = api.ShadingSuggestionState.fromJson(o.toJson());
      checkShadingSuggestionState(od);
    });
  });

  unittest.group('obj-schema-SheetsChartReference', () {
    unittest.test('to-json--from-json', () {
      var o = buildSheetsChartReference();
      var od = api.SheetsChartReference.fromJson(o.toJson());
      checkSheetsChartReference(od);
    });
  });

  unittest.group('obj-schema-SheetsChartReferenceSuggestionState', () {
    unittest.test('to-json--from-json', () {
      var o = buildSheetsChartReferenceSuggestionState();
      var od = api.SheetsChartReferenceSuggestionState.fromJson(o.toJson());
      checkSheetsChartReferenceSuggestionState(od);
    });
  });

  unittest.group('obj-schema-Size', () {
    unittest.test('to-json--from-json', () {
      var o = buildSize();
      var od = api.Size.fromJson(o.toJson());
      checkSize(od);
    });
  });

  unittest.group('obj-schema-SizeSuggestionState', () {
    unittest.test('to-json--from-json', () {
      var o = buildSizeSuggestionState();
      var od = api.SizeSuggestionState.fromJson(o.toJson());
      checkSizeSuggestionState(od);
    });
  });

  unittest.group('obj-schema-StructuralElement', () {
    unittest.test('to-json--from-json', () {
      var o = buildStructuralElement();
      var od = api.StructuralElement.fromJson(o.toJson());
      checkStructuralElement(od);
    });
  });

  unittest.group('obj-schema-SubstringMatchCriteria', () {
    unittest.test('to-json--from-json', () {
      var o = buildSubstringMatchCriteria();
      var od = api.SubstringMatchCriteria.fromJson(o.toJson());
      checkSubstringMatchCriteria(od);
    });
  });

  unittest.group('obj-schema-SuggestedBullet', () {
    unittest.test('to-json--from-json', () {
      var o = buildSuggestedBullet();
      var od = api.SuggestedBullet.fromJson(o.toJson());
      checkSuggestedBullet(od);
    });
  });

  unittest.group('obj-schema-SuggestedDocumentStyle', () {
    unittest.test('to-json--from-json', () {
      var o = buildSuggestedDocumentStyle();
      var od = api.SuggestedDocumentStyle.fromJson(o.toJson());
      checkSuggestedDocumentStyle(od);
    });
  });

  unittest.group('obj-schema-SuggestedInlineObjectProperties', () {
    unittest.test('to-json--from-json', () {
      var o = buildSuggestedInlineObjectProperties();
      var od = api.SuggestedInlineObjectProperties.fromJson(o.toJson());
      checkSuggestedInlineObjectProperties(od);
    });
  });

  unittest.group('obj-schema-SuggestedListProperties', () {
    unittest.test('to-json--from-json', () {
      var o = buildSuggestedListProperties();
      var od = api.SuggestedListProperties.fromJson(o.toJson());
      checkSuggestedListProperties(od);
    });
  });

  unittest.group('obj-schema-SuggestedNamedStyles', () {
    unittest.test('to-json--from-json', () {
      var o = buildSuggestedNamedStyles();
      var od = api.SuggestedNamedStyles.fromJson(o.toJson());
      checkSuggestedNamedStyles(od);
    });
  });

  unittest.group('obj-schema-SuggestedParagraphStyle', () {
    unittest.test('to-json--from-json', () {
      var o = buildSuggestedParagraphStyle();
      var od = api.SuggestedParagraphStyle.fromJson(o.toJson());
      checkSuggestedParagraphStyle(od);
    });
  });

  unittest.group('obj-schema-SuggestedPositionedObjectProperties', () {
    unittest.test('to-json--from-json', () {
      var o = buildSuggestedPositionedObjectProperties();
      var od = api.SuggestedPositionedObjectProperties.fromJson(o.toJson());
      checkSuggestedPositionedObjectProperties(od);
    });
  });

  unittest.group('obj-schema-SuggestedTableCellStyle', () {
    unittest.test('to-json--from-json', () {
      var o = buildSuggestedTableCellStyle();
      var od = api.SuggestedTableCellStyle.fromJson(o.toJson());
      checkSuggestedTableCellStyle(od);
    });
  });

  unittest.group('obj-schema-SuggestedTableRowStyle', () {
    unittest.test('to-json--from-json', () {
      var o = buildSuggestedTableRowStyle();
      var od = api.SuggestedTableRowStyle.fromJson(o.toJson());
      checkSuggestedTableRowStyle(od);
    });
  });

  unittest.group('obj-schema-SuggestedTextStyle', () {
    unittest.test('to-json--from-json', () {
      var o = buildSuggestedTextStyle();
      var od = api.SuggestedTextStyle.fromJson(o.toJson());
      checkSuggestedTextStyle(od);
    });
  });

  unittest.group('obj-schema-TabStop', () {
    unittest.test('to-json--from-json', () {
      var o = buildTabStop();
      var od = api.TabStop.fromJson(o.toJson());
      checkTabStop(od);
    });
  });

  unittest.group('obj-schema-Table', () {
    unittest.test('to-json--from-json', () {
      var o = buildTable();
      var od = api.Table.fromJson(o.toJson());
      checkTable(od);
    });
  });

  unittest.group('obj-schema-TableCell', () {
    unittest.test('to-json--from-json', () {
      var o = buildTableCell();
      var od = api.TableCell.fromJson(o.toJson());
      checkTableCell(od);
    });
  });

  unittest.group('obj-schema-TableCellBorder', () {
    unittest.test('to-json--from-json', () {
      var o = buildTableCellBorder();
      var od = api.TableCellBorder.fromJson(o.toJson());
      checkTableCellBorder(od);
    });
  });

  unittest.group('obj-schema-TableCellLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildTableCellLocation();
      var od = api.TableCellLocation.fromJson(o.toJson());
      checkTableCellLocation(od);
    });
  });

  unittest.group('obj-schema-TableCellStyle', () {
    unittest.test('to-json--from-json', () {
      var o = buildTableCellStyle();
      var od = api.TableCellStyle.fromJson(o.toJson());
      checkTableCellStyle(od);
    });
  });

  unittest.group('obj-schema-TableCellStyleSuggestionState', () {
    unittest.test('to-json--from-json', () {
      var o = buildTableCellStyleSuggestionState();
      var od = api.TableCellStyleSuggestionState.fromJson(o.toJson());
      checkTableCellStyleSuggestionState(od);
    });
  });

  unittest.group('obj-schema-TableColumnProperties', () {
    unittest.test('to-json--from-json', () {
      var o = buildTableColumnProperties();
      var od = api.TableColumnProperties.fromJson(o.toJson());
      checkTableColumnProperties(od);
    });
  });

  unittest.group('obj-schema-TableOfContents', () {
    unittest.test('to-json--from-json', () {
      var o = buildTableOfContents();
      var od = api.TableOfContents.fromJson(o.toJson());
      checkTableOfContents(od);
    });
  });

  unittest.group('obj-schema-TableRange', () {
    unittest.test('to-json--from-json', () {
      var o = buildTableRange();
      var od = api.TableRange.fromJson(o.toJson());
      checkTableRange(od);
    });
  });

  unittest.group('obj-schema-TableRow', () {
    unittest.test('to-json--from-json', () {
      var o = buildTableRow();
      var od = api.TableRow.fromJson(o.toJson());
      checkTableRow(od);
    });
  });

  unittest.group('obj-schema-TableRowStyle', () {
    unittest.test('to-json--from-json', () {
      var o = buildTableRowStyle();
      var od = api.TableRowStyle.fromJson(o.toJson());
      checkTableRowStyle(od);
    });
  });

  unittest.group('obj-schema-TableRowStyleSuggestionState', () {
    unittest.test('to-json--from-json', () {
      var o = buildTableRowStyleSuggestionState();
      var od = api.TableRowStyleSuggestionState.fromJson(o.toJson());
      checkTableRowStyleSuggestionState(od);
    });
  });

  unittest.group('obj-schema-TableStyle', () {
    unittest.test('to-json--from-json', () {
      var o = buildTableStyle();
      var od = api.TableStyle.fromJson(o.toJson());
      checkTableStyle(od);
    });
  });

  unittest.group('obj-schema-TextRun', () {
    unittest.test('to-json--from-json', () {
      var o = buildTextRun();
      var od = api.TextRun.fromJson(o.toJson());
      checkTextRun(od);
    });
  });

  unittest.group('obj-schema-TextStyle', () {
    unittest.test('to-json--from-json', () {
      var o = buildTextStyle();
      var od = api.TextStyle.fromJson(o.toJson());
      checkTextStyle(od);
    });
  });

  unittest.group('obj-schema-TextStyleSuggestionState', () {
    unittest.test('to-json--from-json', () {
      var o = buildTextStyleSuggestionState();
      var od = api.TextStyleSuggestionState.fromJson(o.toJson());
      checkTextStyleSuggestionState(od);
    });
  });

  unittest.group('obj-schema-UnmergeTableCellsRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUnmergeTableCellsRequest();
      var od = api.UnmergeTableCellsRequest.fromJson(o.toJson());
      checkUnmergeTableCellsRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateDocumentStyleRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateDocumentStyleRequest();
      var od = api.UpdateDocumentStyleRequest.fromJson(o.toJson());
      checkUpdateDocumentStyleRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateParagraphStyleRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateParagraphStyleRequest();
      var od = api.UpdateParagraphStyleRequest.fromJson(o.toJson());
      checkUpdateParagraphStyleRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateSectionStyleRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateSectionStyleRequest();
      var od = api.UpdateSectionStyleRequest.fromJson(o.toJson());
      checkUpdateSectionStyleRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateTableCellStyleRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateTableCellStyleRequest();
      var od = api.UpdateTableCellStyleRequest.fromJson(o.toJson());
      checkUpdateTableCellStyleRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateTableColumnPropertiesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateTableColumnPropertiesRequest();
      var od = api.UpdateTableColumnPropertiesRequest.fromJson(o.toJson());
      checkUpdateTableColumnPropertiesRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateTableRowStyleRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateTableRowStyleRequest();
      var od = api.UpdateTableRowStyleRequest.fromJson(o.toJson());
      checkUpdateTableRowStyleRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateTextStyleRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildUpdateTextStyleRequest();
      var od = api.UpdateTextStyleRequest.fromJson(o.toJson());
      checkUpdateTextStyleRequest(od);
    });
  });

  unittest.group('obj-schema-WeightedFontFamily', () {
    unittest.test('to-json--from-json', () {
      var o = buildWeightedFontFamily();
      var od = api.WeightedFontFamily.fromJson(o.toJson());
      checkWeightedFontFamily(od);
    });
  });

  unittest.group('obj-schema-WriteControl', () {
    unittest.test('to-json--from-json', () {
      var o = buildWriteControl();
      var od = api.WriteControl.fromJson(o.toJson());
      checkWriteControl(od);
    });
  });

  unittest.group('resource-DocumentsResourceApi', () {
    unittest.test('method--batchUpdate', () {
      var mock = HttpServerMock();
      api.DocumentsResourceApi res = api.DocsApi(mock).documents;
      var arg_request = buildBatchUpdateDocumentRequest();
      var arg_documentId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.BatchUpdateDocumentRequest.fromJson(json);
        checkBatchUpdateDocumentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v1/documents/"));
        pathOffset += 13;
        index = path.indexOf(':batchUpdate', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_documentId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals(":batchUpdate"));
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildBatchUpdateDocumentResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchUpdate(arg_request, arg_documentId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchUpdateDocumentResponse(response);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.DocumentsResourceApi res = api.DocsApi(mock).documents;
      var arg_request = buildDocument();
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Document.fromJson(json);
        checkDocument(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/documents"));
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDocument());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDocument(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.DocumentsResourceApi res = api.DocsApi(mock).documents;
      var arg_documentId = 'foo';
      var arg_suggestionsViewMode = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v1/documents/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_documentId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["suggestionsViewMode"].first,
            unittest.equals(arg_suggestionsViewMode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDocument());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_documentId,
              suggestionsViewMode: arg_suggestionsViewMode,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDocument(response);
      })));
    });
  });
}
