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

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
        }
      });
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        return stream.toBytes().then((data) {
          return _callback(request, data);
        });
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

buildUnnamed5746() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5746(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5747() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5747(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5748() {
  var o = new core.Map<core.String, api.SuggestedTextStyle>();
  o["x"] = buildSuggestedTextStyle();
  o["y"] = buildSuggestedTextStyle();
  return o;
}

checkUnnamed5748(core.Map<core.String, api.SuggestedTextStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTextStyle(o["x"]);
  checkSuggestedTextStyle(o["y"]);
}

core.int buildCounterAutoText = 0;
buildAutoText() {
  var o = new api.AutoText();
  buildCounterAutoText++;
  if (buildCounterAutoText < 3) {
    o.suggestedDeletionIds = buildUnnamed5746();
    o.suggestedInsertionIds = buildUnnamed5747();
    o.suggestedTextStyleChanges = buildUnnamed5748();
    o.textStyle = buildTextStyle();
    o.type = "foo";
  }
  buildCounterAutoText--;
  return o;
}

checkAutoText(api.AutoText o) {
  buildCounterAutoText++;
  if (buildCounterAutoText < 3) {
    checkUnnamed5746(o.suggestedDeletionIds);
    checkUnnamed5747(o.suggestedInsertionIds);
    checkUnnamed5748(o.suggestedTextStyleChanges);
    checkTextStyle(o.textStyle);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterAutoText--;
}

core.int buildCounterBackground = 0;
buildBackground() {
  var o = new api.Background();
  buildCounterBackground++;
  if (buildCounterBackground < 3) {
    o.color = buildOptionalColor();
  }
  buildCounterBackground--;
  return o;
}

checkBackground(api.Background o) {
  buildCounterBackground++;
  if (buildCounterBackground < 3) {
    checkOptionalColor(o.color);
  }
  buildCounterBackground--;
}

core.int buildCounterBackgroundSuggestionState = 0;
buildBackgroundSuggestionState() {
  var o = new api.BackgroundSuggestionState();
  buildCounterBackgroundSuggestionState++;
  if (buildCounterBackgroundSuggestionState < 3) {
    o.backgroundColorSuggested = true;
  }
  buildCounterBackgroundSuggestionState--;
  return o;
}

checkBackgroundSuggestionState(api.BackgroundSuggestionState o) {
  buildCounterBackgroundSuggestionState++;
  if (buildCounterBackgroundSuggestionState < 3) {
    unittest.expect(o.backgroundColorSuggested, unittest.isTrue);
  }
  buildCounterBackgroundSuggestionState--;
}

buildUnnamed5749() {
  var o = new core.List<api.Request>();
  o.add(buildRequest());
  o.add(buildRequest());
  return o;
}

checkUnnamed5749(core.List<api.Request> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRequest(o[0]);
  checkRequest(o[1]);
}

core.int buildCounterBatchUpdateDocumentRequest = 0;
buildBatchUpdateDocumentRequest() {
  var o = new api.BatchUpdateDocumentRequest();
  buildCounterBatchUpdateDocumentRequest++;
  if (buildCounterBatchUpdateDocumentRequest < 3) {
    o.requests = buildUnnamed5749();
    o.writeControl = buildWriteControl();
  }
  buildCounterBatchUpdateDocumentRequest--;
  return o;
}

checkBatchUpdateDocumentRequest(api.BatchUpdateDocumentRequest o) {
  buildCounterBatchUpdateDocumentRequest++;
  if (buildCounterBatchUpdateDocumentRequest < 3) {
    checkUnnamed5749(o.requests);
    checkWriteControl(o.writeControl);
  }
  buildCounterBatchUpdateDocumentRequest--;
}

buildUnnamed5750() {
  var o = new core.List<api.Response>();
  o.add(buildResponse());
  o.add(buildResponse());
  return o;
}

checkUnnamed5750(core.List<api.Response> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResponse(o[0]);
  checkResponse(o[1]);
}

core.int buildCounterBatchUpdateDocumentResponse = 0;
buildBatchUpdateDocumentResponse() {
  var o = new api.BatchUpdateDocumentResponse();
  buildCounterBatchUpdateDocumentResponse++;
  if (buildCounterBatchUpdateDocumentResponse < 3) {
    o.documentId = "foo";
    o.replies = buildUnnamed5750();
    o.writeControl = buildWriteControl();
  }
  buildCounterBatchUpdateDocumentResponse--;
  return o;
}

checkBatchUpdateDocumentResponse(api.BatchUpdateDocumentResponse o) {
  buildCounterBatchUpdateDocumentResponse++;
  if (buildCounterBatchUpdateDocumentResponse < 3) {
    unittest.expect(o.documentId, unittest.equals('foo'));
    checkUnnamed5750(o.replies);
    checkWriteControl(o.writeControl);
  }
  buildCounterBatchUpdateDocumentResponse--;
}

buildUnnamed5751() {
  var o = new core.List<api.StructuralElement>();
  o.add(buildStructuralElement());
  o.add(buildStructuralElement());
  return o;
}

checkUnnamed5751(core.List<api.StructuralElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStructuralElement(o[0]);
  checkStructuralElement(o[1]);
}

core.int buildCounterBody = 0;
buildBody() {
  var o = new api.Body();
  buildCounterBody++;
  if (buildCounterBody < 3) {
    o.content = buildUnnamed5751();
  }
  buildCounterBody--;
  return o;
}

checkBody(api.Body o) {
  buildCounterBody++;
  if (buildCounterBody < 3) {
    checkUnnamed5751(o.content);
  }
  buildCounterBody--;
}

core.int buildCounterBullet = 0;
buildBullet() {
  var o = new api.Bullet();
  buildCounterBullet++;
  if (buildCounterBullet < 3) {
    o.listId = "foo";
    o.nestingLevel = 42;
    o.textStyle = buildTextStyle();
  }
  buildCounterBullet--;
  return o;
}

checkBullet(api.Bullet o) {
  buildCounterBullet++;
  if (buildCounterBullet < 3) {
    unittest.expect(o.listId, unittest.equals('foo'));
    unittest.expect(o.nestingLevel, unittest.equals(42));
    checkTextStyle(o.textStyle);
  }
  buildCounterBullet--;
}

core.int buildCounterBulletSuggestionState = 0;
buildBulletSuggestionState() {
  var o = new api.BulletSuggestionState();
  buildCounterBulletSuggestionState++;
  if (buildCounterBulletSuggestionState < 3) {
    o.listIdSuggested = true;
    o.nestingLevelSuggested = true;
    o.textStyleSuggestionState = buildTextStyleSuggestionState();
  }
  buildCounterBulletSuggestionState--;
  return o;
}

checkBulletSuggestionState(api.BulletSuggestionState o) {
  buildCounterBulletSuggestionState++;
  if (buildCounterBulletSuggestionState < 3) {
    unittest.expect(o.listIdSuggested, unittest.isTrue);
    unittest.expect(o.nestingLevelSuggested, unittest.isTrue);
    checkTextStyleSuggestionState(o.textStyleSuggestionState);
  }
  buildCounterBulletSuggestionState--;
}

core.int buildCounterColor = 0;
buildColor() {
  var o = new api.Color();
  buildCounterColor++;
  if (buildCounterColor < 3) {
    o.rgbColor = buildRgbColor();
  }
  buildCounterColor--;
  return o;
}

checkColor(api.Color o) {
  buildCounterColor++;
  if (buildCounterColor < 3) {
    checkRgbColor(o.rgbColor);
  }
  buildCounterColor--;
}

buildUnnamed5752() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5752(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5753() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5753(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5754() {
  var o = new core.Map<core.String, api.SuggestedTextStyle>();
  o["x"] = buildSuggestedTextStyle();
  o["y"] = buildSuggestedTextStyle();
  return o;
}

checkUnnamed5754(core.Map<core.String, api.SuggestedTextStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTextStyle(o["x"]);
  checkSuggestedTextStyle(o["y"]);
}

core.int buildCounterColumnBreak = 0;
buildColumnBreak() {
  var o = new api.ColumnBreak();
  buildCounterColumnBreak++;
  if (buildCounterColumnBreak < 3) {
    o.suggestedDeletionIds = buildUnnamed5752();
    o.suggestedInsertionIds = buildUnnamed5753();
    o.suggestedTextStyleChanges = buildUnnamed5754();
    o.textStyle = buildTextStyle();
  }
  buildCounterColumnBreak--;
  return o;
}

checkColumnBreak(api.ColumnBreak o) {
  buildCounterColumnBreak++;
  if (buildCounterColumnBreak < 3) {
    checkUnnamed5752(o.suggestedDeletionIds);
    checkUnnamed5753(o.suggestedInsertionIds);
    checkUnnamed5754(o.suggestedTextStyleChanges);
    checkTextStyle(o.textStyle);
  }
  buildCounterColumnBreak--;
}

core.int buildCounterCreateFooterRequest = 0;
buildCreateFooterRequest() {
  var o = new api.CreateFooterRequest();
  buildCounterCreateFooterRequest++;
  if (buildCounterCreateFooterRequest < 3) {
    o.sectionBreakLocation = buildLocation();
    o.type = "foo";
  }
  buildCounterCreateFooterRequest--;
  return o;
}

checkCreateFooterRequest(api.CreateFooterRequest o) {
  buildCounterCreateFooterRequest++;
  if (buildCounterCreateFooterRequest < 3) {
    checkLocation(o.sectionBreakLocation);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterCreateFooterRequest--;
}

core.int buildCounterCreateFooterResponse = 0;
buildCreateFooterResponse() {
  var o = new api.CreateFooterResponse();
  buildCounterCreateFooterResponse++;
  if (buildCounterCreateFooterResponse < 3) {
    o.footerId = "foo";
  }
  buildCounterCreateFooterResponse--;
  return o;
}

checkCreateFooterResponse(api.CreateFooterResponse o) {
  buildCounterCreateFooterResponse++;
  if (buildCounterCreateFooterResponse < 3) {
    unittest.expect(o.footerId, unittest.equals('foo'));
  }
  buildCounterCreateFooterResponse--;
}

core.int buildCounterCreateFootnoteRequest = 0;
buildCreateFootnoteRequest() {
  var o = new api.CreateFootnoteRequest();
  buildCounterCreateFootnoteRequest++;
  if (buildCounterCreateFootnoteRequest < 3) {
    o.endOfSegmentLocation = buildEndOfSegmentLocation();
    o.location = buildLocation();
  }
  buildCounterCreateFootnoteRequest--;
  return o;
}

checkCreateFootnoteRequest(api.CreateFootnoteRequest o) {
  buildCounterCreateFootnoteRequest++;
  if (buildCounterCreateFootnoteRequest < 3) {
    checkEndOfSegmentLocation(o.endOfSegmentLocation);
    checkLocation(o.location);
  }
  buildCounterCreateFootnoteRequest--;
}

core.int buildCounterCreateFootnoteResponse = 0;
buildCreateFootnoteResponse() {
  var o = new api.CreateFootnoteResponse();
  buildCounterCreateFootnoteResponse++;
  if (buildCounterCreateFootnoteResponse < 3) {
    o.footnoteId = "foo";
  }
  buildCounterCreateFootnoteResponse--;
  return o;
}

checkCreateFootnoteResponse(api.CreateFootnoteResponse o) {
  buildCounterCreateFootnoteResponse++;
  if (buildCounterCreateFootnoteResponse < 3) {
    unittest.expect(o.footnoteId, unittest.equals('foo'));
  }
  buildCounterCreateFootnoteResponse--;
}

core.int buildCounterCreateHeaderRequest = 0;
buildCreateHeaderRequest() {
  var o = new api.CreateHeaderRequest();
  buildCounterCreateHeaderRequest++;
  if (buildCounterCreateHeaderRequest < 3) {
    o.sectionBreakLocation = buildLocation();
    o.type = "foo";
  }
  buildCounterCreateHeaderRequest--;
  return o;
}

checkCreateHeaderRequest(api.CreateHeaderRequest o) {
  buildCounterCreateHeaderRequest++;
  if (buildCounterCreateHeaderRequest < 3) {
    checkLocation(o.sectionBreakLocation);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterCreateHeaderRequest--;
}

core.int buildCounterCreateHeaderResponse = 0;
buildCreateHeaderResponse() {
  var o = new api.CreateHeaderResponse();
  buildCounterCreateHeaderResponse++;
  if (buildCounterCreateHeaderResponse < 3) {
    o.headerId = "foo";
  }
  buildCounterCreateHeaderResponse--;
  return o;
}

checkCreateHeaderResponse(api.CreateHeaderResponse o) {
  buildCounterCreateHeaderResponse++;
  if (buildCounterCreateHeaderResponse < 3) {
    unittest.expect(o.headerId, unittest.equals('foo'));
  }
  buildCounterCreateHeaderResponse--;
}

core.int buildCounterCreateNamedRangeRequest = 0;
buildCreateNamedRangeRequest() {
  var o = new api.CreateNamedRangeRequest();
  buildCounterCreateNamedRangeRequest++;
  if (buildCounterCreateNamedRangeRequest < 3) {
    o.name = "foo";
    o.range = buildRange();
  }
  buildCounterCreateNamedRangeRequest--;
  return o;
}

checkCreateNamedRangeRequest(api.CreateNamedRangeRequest o) {
  buildCounterCreateNamedRangeRequest++;
  if (buildCounterCreateNamedRangeRequest < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkRange(o.range);
  }
  buildCounterCreateNamedRangeRequest--;
}

core.int buildCounterCreateNamedRangeResponse = 0;
buildCreateNamedRangeResponse() {
  var o = new api.CreateNamedRangeResponse();
  buildCounterCreateNamedRangeResponse++;
  if (buildCounterCreateNamedRangeResponse < 3) {
    o.namedRangeId = "foo";
  }
  buildCounterCreateNamedRangeResponse--;
  return o;
}

checkCreateNamedRangeResponse(api.CreateNamedRangeResponse o) {
  buildCounterCreateNamedRangeResponse++;
  if (buildCounterCreateNamedRangeResponse < 3) {
    unittest.expect(o.namedRangeId, unittest.equals('foo'));
  }
  buildCounterCreateNamedRangeResponse--;
}

core.int buildCounterCreateParagraphBulletsRequest = 0;
buildCreateParagraphBulletsRequest() {
  var o = new api.CreateParagraphBulletsRequest();
  buildCounterCreateParagraphBulletsRequest++;
  if (buildCounterCreateParagraphBulletsRequest < 3) {
    o.bulletPreset = "foo";
    o.range = buildRange();
  }
  buildCounterCreateParagraphBulletsRequest--;
  return o;
}

checkCreateParagraphBulletsRequest(api.CreateParagraphBulletsRequest o) {
  buildCounterCreateParagraphBulletsRequest++;
  if (buildCounterCreateParagraphBulletsRequest < 3) {
    unittest.expect(o.bulletPreset, unittest.equals('foo'));
    checkRange(o.range);
  }
  buildCounterCreateParagraphBulletsRequest--;
}

core.int buildCounterCropProperties = 0;
buildCropProperties() {
  var o = new api.CropProperties();
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

checkCropProperties(api.CropProperties o) {
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
buildCropPropertiesSuggestionState() {
  var o = new api.CropPropertiesSuggestionState();
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

checkCropPropertiesSuggestionState(api.CropPropertiesSuggestionState o) {
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
buildDeleteContentRangeRequest() {
  var o = new api.DeleteContentRangeRequest();
  buildCounterDeleteContentRangeRequest++;
  if (buildCounterDeleteContentRangeRequest < 3) {
    o.range = buildRange();
  }
  buildCounterDeleteContentRangeRequest--;
  return o;
}

checkDeleteContentRangeRequest(api.DeleteContentRangeRequest o) {
  buildCounterDeleteContentRangeRequest++;
  if (buildCounterDeleteContentRangeRequest < 3) {
    checkRange(o.range);
  }
  buildCounterDeleteContentRangeRequest--;
}

core.int buildCounterDeleteFooterRequest = 0;
buildDeleteFooterRequest() {
  var o = new api.DeleteFooterRequest();
  buildCounterDeleteFooterRequest++;
  if (buildCounterDeleteFooterRequest < 3) {
    o.footerId = "foo";
  }
  buildCounterDeleteFooterRequest--;
  return o;
}

checkDeleteFooterRequest(api.DeleteFooterRequest o) {
  buildCounterDeleteFooterRequest++;
  if (buildCounterDeleteFooterRequest < 3) {
    unittest.expect(o.footerId, unittest.equals('foo'));
  }
  buildCounterDeleteFooterRequest--;
}

core.int buildCounterDeleteHeaderRequest = 0;
buildDeleteHeaderRequest() {
  var o = new api.DeleteHeaderRequest();
  buildCounterDeleteHeaderRequest++;
  if (buildCounterDeleteHeaderRequest < 3) {
    o.headerId = "foo";
  }
  buildCounterDeleteHeaderRequest--;
  return o;
}

checkDeleteHeaderRequest(api.DeleteHeaderRequest o) {
  buildCounterDeleteHeaderRequest++;
  if (buildCounterDeleteHeaderRequest < 3) {
    unittest.expect(o.headerId, unittest.equals('foo'));
  }
  buildCounterDeleteHeaderRequest--;
}

core.int buildCounterDeleteNamedRangeRequest = 0;
buildDeleteNamedRangeRequest() {
  var o = new api.DeleteNamedRangeRequest();
  buildCounterDeleteNamedRangeRequest++;
  if (buildCounterDeleteNamedRangeRequest < 3) {
    o.name = "foo";
    o.namedRangeId = "foo";
  }
  buildCounterDeleteNamedRangeRequest--;
  return o;
}

checkDeleteNamedRangeRequest(api.DeleteNamedRangeRequest o) {
  buildCounterDeleteNamedRangeRequest++;
  if (buildCounterDeleteNamedRangeRequest < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.namedRangeId, unittest.equals('foo'));
  }
  buildCounterDeleteNamedRangeRequest--;
}

core.int buildCounterDeleteParagraphBulletsRequest = 0;
buildDeleteParagraphBulletsRequest() {
  var o = new api.DeleteParagraphBulletsRequest();
  buildCounterDeleteParagraphBulletsRequest++;
  if (buildCounterDeleteParagraphBulletsRequest < 3) {
    o.range = buildRange();
  }
  buildCounterDeleteParagraphBulletsRequest--;
  return o;
}

checkDeleteParagraphBulletsRequest(api.DeleteParagraphBulletsRequest o) {
  buildCounterDeleteParagraphBulletsRequest++;
  if (buildCounterDeleteParagraphBulletsRequest < 3) {
    checkRange(o.range);
  }
  buildCounterDeleteParagraphBulletsRequest--;
}

core.int buildCounterDeletePositionedObjectRequest = 0;
buildDeletePositionedObjectRequest() {
  var o = new api.DeletePositionedObjectRequest();
  buildCounterDeletePositionedObjectRequest++;
  if (buildCounterDeletePositionedObjectRequest < 3) {
    o.objectId = "foo";
  }
  buildCounterDeletePositionedObjectRequest--;
  return o;
}

checkDeletePositionedObjectRequest(api.DeletePositionedObjectRequest o) {
  buildCounterDeletePositionedObjectRequest++;
  if (buildCounterDeletePositionedObjectRequest < 3) {
    unittest.expect(o.objectId, unittest.equals('foo'));
  }
  buildCounterDeletePositionedObjectRequest--;
}

core.int buildCounterDeleteTableColumnRequest = 0;
buildDeleteTableColumnRequest() {
  var o = new api.DeleteTableColumnRequest();
  buildCounterDeleteTableColumnRequest++;
  if (buildCounterDeleteTableColumnRequest < 3) {
    o.tableCellLocation = buildTableCellLocation();
  }
  buildCounterDeleteTableColumnRequest--;
  return o;
}

checkDeleteTableColumnRequest(api.DeleteTableColumnRequest o) {
  buildCounterDeleteTableColumnRequest++;
  if (buildCounterDeleteTableColumnRequest < 3) {
    checkTableCellLocation(o.tableCellLocation);
  }
  buildCounterDeleteTableColumnRequest--;
}

core.int buildCounterDeleteTableRowRequest = 0;
buildDeleteTableRowRequest() {
  var o = new api.DeleteTableRowRequest();
  buildCounterDeleteTableRowRequest++;
  if (buildCounterDeleteTableRowRequest < 3) {
    o.tableCellLocation = buildTableCellLocation();
  }
  buildCounterDeleteTableRowRequest--;
  return o;
}

checkDeleteTableRowRequest(api.DeleteTableRowRequest o) {
  buildCounterDeleteTableRowRequest++;
  if (buildCounterDeleteTableRowRequest < 3) {
    checkTableCellLocation(o.tableCellLocation);
  }
  buildCounterDeleteTableRowRequest--;
}

core.int buildCounterDimension = 0;
buildDimension() {
  var o = new api.Dimension();
  buildCounterDimension++;
  if (buildCounterDimension < 3) {
    o.magnitude = 42.0;
    o.unit = "foo";
  }
  buildCounterDimension--;
  return o;
}

checkDimension(api.Dimension o) {
  buildCounterDimension++;
  if (buildCounterDimension < 3) {
    unittest.expect(o.magnitude, unittest.equals(42.0));
    unittest.expect(o.unit, unittest.equals('foo'));
  }
  buildCounterDimension--;
}

buildUnnamed5755() {
  var o = new core.Map<core.String, api.Footer>();
  o["x"] = buildFooter();
  o["y"] = buildFooter();
  return o;
}

checkUnnamed5755(core.Map<core.String, api.Footer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFooter(o["x"]);
  checkFooter(o["y"]);
}

buildUnnamed5756() {
  var o = new core.Map<core.String, api.Footnote>();
  o["x"] = buildFootnote();
  o["y"] = buildFootnote();
  return o;
}

checkUnnamed5756(core.Map<core.String, api.Footnote> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFootnote(o["x"]);
  checkFootnote(o["y"]);
}

buildUnnamed5757() {
  var o = new core.Map<core.String, api.Header>();
  o["x"] = buildHeader();
  o["y"] = buildHeader();
  return o;
}

checkUnnamed5757(core.Map<core.String, api.Header> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHeader(o["x"]);
  checkHeader(o["y"]);
}

buildUnnamed5758() {
  var o = new core.Map<core.String, api.InlineObject>();
  o["x"] = buildInlineObject();
  o["y"] = buildInlineObject();
  return o;
}

checkUnnamed5758(core.Map<core.String, api.InlineObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInlineObject(o["x"]);
  checkInlineObject(o["y"]);
}

buildUnnamed5759() {
  var o = new core.Map<core.String, api.List>();
  o["x"] = buildList();
  o["y"] = buildList();
  return o;
}

checkUnnamed5759(core.Map<core.String, api.List> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkList(o["x"]);
  checkList(o["y"]);
}

buildUnnamed5760() {
  var o = new core.Map<core.String, api.NamedRanges>();
  o["x"] = buildNamedRanges();
  o["y"] = buildNamedRanges();
  return o;
}

checkUnnamed5760(core.Map<core.String, api.NamedRanges> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamedRanges(o["x"]);
  checkNamedRanges(o["y"]);
}

buildUnnamed5761() {
  var o = new core.Map<core.String, api.PositionedObject>();
  o["x"] = buildPositionedObject();
  o["y"] = buildPositionedObject();
  return o;
}

checkUnnamed5761(core.Map<core.String, api.PositionedObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPositionedObject(o["x"]);
  checkPositionedObject(o["y"]);
}

buildUnnamed5762() {
  var o = new core.Map<core.String, api.SuggestedDocumentStyle>();
  o["x"] = buildSuggestedDocumentStyle();
  o["y"] = buildSuggestedDocumentStyle();
  return o;
}

checkUnnamed5762(core.Map<core.String, api.SuggestedDocumentStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedDocumentStyle(o["x"]);
  checkSuggestedDocumentStyle(o["y"]);
}

buildUnnamed5763() {
  var o = new core.Map<core.String, api.SuggestedNamedStyles>();
  o["x"] = buildSuggestedNamedStyles();
  o["y"] = buildSuggestedNamedStyles();
  return o;
}

checkUnnamed5763(core.Map<core.String, api.SuggestedNamedStyles> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedNamedStyles(o["x"]);
  checkSuggestedNamedStyles(o["y"]);
}

core.int buildCounterDocument = 0;
buildDocument() {
  var o = new api.Document();
  buildCounterDocument++;
  if (buildCounterDocument < 3) {
    o.body = buildBody();
    o.documentId = "foo";
    o.documentStyle = buildDocumentStyle();
    o.footers = buildUnnamed5755();
    o.footnotes = buildUnnamed5756();
    o.headers = buildUnnamed5757();
    o.inlineObjects = buildUnnamed5758();
    o.lists = buildUnnamed5759();
    o.namedRanges = buildUnnamed5760();
    o.namedStyles = buildNamedStyles();
    o.positionedObjects = buildUnnamed5761();
    o.revisionId = "foo";
    o.suggestedDocumentStyleChanges = buildUnnamed5762();
    o.suggestedNamedStylesChanges = buildUnnamed5763();
    o.suggestionsViewMode = "foo";
    o.title = "foo";
  }
  buildCounterDocument--;
  return o;
}

checkDocument(api.Document o) {
  buildCounterDocument++;
  if (buildCounterDocument < 3) {
    checkBody(o.body);
    unittest.expect(o.documentId, unittest.equals('foo'));
    checkDocumentStyle(o.documentStyle);
    checkUnnamed5755(o.footers);
    checkUnnamed5756(o.footnotes);
    checkUnnamed5757(o.headers);
    checkUnnamed5758(o.inlineObjects);
    checkUnnamed5759(o.lists);
    checkUnnamed5760(o.namedRanges);
    checkNamedStyles(o.namedStyles);
    checkUnnamed5761(o.positionedObjects);
    unittest.expect(o.revisionId, unittest.equals('foo'));
    checkUnnamed5762(o.suggestedDocumentStyleChanges);
    checkUnnamed5763(o.suggestedNamedStylesChanges);
    unittest.expect(o.suggestionsViewMode, unittest.equals('foo'));
    unittest.expect(o.title, unittest.equals('foo'));
  }
  buildCounterDocument--;
}

core.int buildCounterDocumentStyle = 0;
buildDocumentStyle() {
  var o = new api.DocumentStyle();
  buildCounterDocumentStyle++;
  if (buildCounterDocumentStyle < 3) {
    o.background = buildBackground();
    o.defaultFooterId = "foo";
    o.defaultHeaderId = "foo";
    o.evenPageFooterId = "foo";
    o.evenPageHeaderId = "foo";
    o.firstPageFooterId = "foo";
    o.firstPageHeaderId = "foo";
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

checkDocumentStyle(api.DocumentStyle o) {
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
buildDocumentStyleSuggestionState() {
  var o = new api.DocumentStyleSuggestionState();
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

checkDocumentStyleSuggestionState(api.DocumentStyleSuggestionState o) {
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
buildEmbeddedDrawingProperties() {
  var o = new api.EmbeddedDrawingProperties();
  buildCounterEmbeddedDrawingProperties++;
  if (buildCounterEmbeddedDrawingProperties < 3) {}
  buildCounterEmbeddedDrawingProperties--;
  return o;
}

checkEmbeddedDrawingProperties(api.EmbeddedDrawingProperties o) {
  buildCounterEmbeddedDrawingProperties++;
  if (buildCounterEmbeddedDrawingProperties < 3) {}
  buildCounterEmbeddedDrawingProperties--;
}

core.int buildCounterEmbeddedDrawingPropertiesSuggestionState = 0;
buildEmbeddedDrawingPropertiesSuggestionState() {
  var o = new api.EmbeddedDrawingPropertiesSuggestionState();
  buildCounterEmbeddedDrawingPropertiesSuggestionState++;
  if (buildCounterEmbeddedDrawingPropertiesSuggestionState < 3) {}
  buildCounterEmbeddedDrawingPropertiesSuggestionState--;
  return o;
}

checkEmbeddedDrawingPropertiesSuggestionState(
    api.EmbeddedDrawingPropertiesSuggestionState o) {
  buildCounterEmbeddedDrawingPropertiesSuggestionState++;
  if (buildCounterEmbeddedDrawingPropertiesSuggestionState < 3) {}
  buildCounterEmbeddedDrawingPropertiesSuggestionState--;
}

core.int buildCounterEmbeddedObject = 0;
buildEmbeddedObject() {
  var o = new api.EmbeddedObject();
  buildCounterEmbeddedObject++;
  if (buildCounterEmbeddedObject < 3) {
    o.description = "foo";
    o.embeddedDrawingProperties = buildEmbeddedDrawingProperties();
    o.embeddedObjectBorder = buildEmbeddedObjectBorder();
    o.imageProperties = buildImageProperties();
    o.linkedContentReference = buildLinkedContentReference();
    o.marginBottom = buildDimension();
    o.marginLeft = buildDimension();
    o.marginRight = buildDimension();
    o.marginTop = buildDimension();
    o.size = buildSize();
    o.title = "foo";
  }
  buildCounterEmbeddedObject--;
  return o;
}

checkEmbeddedObject(api.EmbeddedObject o) {
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
buildEmbeddedObjectBorder() {
  var o = new api.EmbeddedObjectBorder();
  buildCounterEmbeddedObjectBorder++;
  if (buildCounterEmbeddedObjectBorder < 3) {
    o.color = buildOptionalColor();
    o.dashStyle = "foo";
    o.propertyState = "foo";
    o.width = buildDimension();
  }
  buildCounterEmbeddedObjectBorder--;
  return o;
}

checkEmbeddedObjectBorder(api.EmbeddedObjectBorder o) {
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
buildEmbeddedObjectBorderSuggestionState() {
  var o = new api.EmbeddedObjectBorderSuggestionState();
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

checkEmbeddedObjectBorderSuggestionState(
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
buildEmbeddedObjectSuggestionState() {
  var o = new api.EmbeddedObjectSuggestionState();
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

checkEmbeddedObjectSuggestionState(api.EmbeddedObjectSuggestionState o) {
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
buildEndOfSegmentLocation() {
  var o = new api.EndOfSegmentLocation();
  buildCounterEndOfSegmentLocation++;
  if (buildCounterEndOfSegmentLocation < 3) {
    o.segmentId = "foo";
  }
  buildCounterEndOfSegmentLocation--;
  return o;
}

checkEndOfSegmentLocation(api.EndOfSegmentLocation o) {
  buildCounterEndOfSegmentLocation++;
  if (buildCounterEndOfSegmentLocation < 3) {
    unittest.expect(o.segmentId, unittest.equals('foo'));
  }
  buildCounterEndOfSegmentLocation--;
}

buildUnnamed5764() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5764(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5765() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5765(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEquation = 0;
buildEquation() {
  var o = new api.Equation();
  buildCounterEquation++;
  if (buildCounterEquation < 3) {
    o.suggestedDeletionIds = buildUnnamed5764();
    o.suggestedInsertionIds = buildUnnamed5765();
  }
  buildCounterEquation--;
  return o;
}

checkEquation(api.Equation o) {
  buildCounterEquation++;
  if (buildCounterEquation < 3) {
    checkUnnamed5764(o.suggestedDeletionIds);
    checkUnnamed5765(o.suggestedInsertionIds);
  }
  buildCounterEquation--;
}

buildUnnamed5766() {
  var o = new core.List<api.StructuralElement>();
  o.add(buildStructuralElement());
  o.add(buildStructuralElement());
  return o;
}

checkUnnamed5766(core.List<api.StructuralElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStructuralElement(o[0]);
  checkStructuralElement(o[1]);
}

core.int buildCounterFooter = 0;
buildFooter() {
  var o = new api.Footer();
  buildCounterFooter++;
  if (buildCounterFooter < 3) {
    o.content = buildUnnamed5766();
    o.footerId = "foo";
  }
  buildCounterFooter--;
  return o;
}

checkFooter(api.Footer o) {
  buildCounterFooter++;
  if (buildCounterFooter < 3) {
    checkUnnamed5766(o.content);
    unittest.expect(o.footerId, unittest.equals('foo'));
  }
  buildCounterFooter--;
}

buildUnnamed5767() {
  var o = new core.List<api.StructuralElement>();
  o.add(buildStructuralElement());
  o.add(buildStructuralElement());
  return o;
}

checkUnnamed5767(core.List<api.StructuralElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStructuralElement(o[0]);
  checkStructuralElement(o[1]);
}

core.int buildCounterFootnote = 0;
buildFootnote() {
  var o = new api.Footnote();
  buildCounterFootnote++;
  if (buildCounterFootnote < 3) {
    o.content = buildUnnamed5767();
    o.footnoteId = "foo";
  }
  buildCounterFootnote--;
  return o;
}

checkFootnote(api.Footnote o) {
  buildCounterFootnote++;
  if (buildCounterFootnote < 3) {
    checkUnnamed5767(o.content);
    unittest.expect(o.footnoteId, unittest.equals('foo'));
  }
  buildCounterFootnote--;
}

buildUnnamed5768() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5768(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5769() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5769(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5770() {
  var o = new core.Map<core.String, api.SuggestedTextStyle>();
  o["x"] = buildSuggestedTextStyle();
  o["y"] = buildSuggestedTextStyle();
  return o;
}

checkUnnamed5770(core.Map<core.String, api.SuggestedTextStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTextStyle(o["x"]);
  checkSuggestedTextStyle(o["y"]);
}

core.int buildCounterFootnoteReference = 0;
buildFootnoteReference() {
  var o = new api.FootnoteReference();
  buildCounterFootnoteReference++;
  if (buildCounterFootnoteReference < 3) {
    o.footnoteId = "foo";
    o.footnoteNumber = "foo";
    o.suggestedDeletionIds = buildUnnamed5768();
    o.suggestedInsertionIds = buildUnnamed5769();
    o.suggestedTextStyleChanges = buildUnnamed5770();
    o.textStyle = buildTextStyle();
  }
  buildCounterFootnoteReference--;
  return o;
}

checkFootnoteReference(api.FootnoteReference o) {
  buildCounterFootnoteReference++;
  if (buildCounterFootnoteReference < 3) {
    unittest.expect(o.footnoteId, unittest.equals('foo'));
    unittest.expect(o.footnoteNumber, unittest.equals('foo'));
    checkUnnamed5768(o.suggestedDeletionIds);
    checkUnnamed5769(o.suggestedInsertionIds);
    checkUnnamed5770(o.suggestedTextStyleChanges);
    checkTextStyle(o.textStyle);
  }
  buildCounterFootnoteReference--;
}

buildUnnamed5771() {
  var o = new core.List<api.StructuralElement>();
  o.add(buildStructuralElement());
  o.add(buildStructuralElement());
  return o;
}

checkUnnamed5771(core.List<api.StructuralElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStructuralElement(o[0]);
  checkStructuralElement(o[1]);
}

core.int buildCounterHeader = 0;
buildHeader() {
  var o = new api.Header();
  buildCounterHeader++;
  if (buildCounterHeader < 3) {
    o.content = buildUnnamed5771();
    o.headerId = "foo";
  }
  buildCounterHeader--;
  return o;
}

checkHeader(api.Header o) {
  buildCounterHeader++;
  if (buildCounterHeader < 3) {
    checkUnnamed5771(o.content);
    unittest.expect(o.headerId, unittest.equals('foo'));
  }
  buildCounterHeader--;
}

buildUnnamed5772() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5772(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5773() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5773(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5774() {
  var o = new core.Map<core.String, api.SuggestedTextStyle>();
  o["x"] = buildSuggestedTextStyle();
  o["y"] = buildSuggestedTextStyle();
  return o;
}

checkUnnamed5774(core.Map<core.String, api.SuggestedTextStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTextStyle(o["x"]);
  checkSuggestedTextStyle(o["y"]);
}

core.int buildCounterHorizontalRule = 0;
buildHorizontalRule() {
  var o = new api.HorizontalRule();
  buildCounterHorizontalRule++;
  if (buildCounterHorizontalRule < 3) {
    o.suggestedDeletionIds = buildUnnamed5772();
    o.suggestedInsertionIds = buildUnnamed5773();
    o.suggestedTextStyleChanges = buildUnnamed5774();
    o.textStyle = buildTextStyle();
  }
  buildCounterHorizontalRule--;
  return o;
}

checkHorizontalRule(api.HorizontalRule o) {
  buildCounterHorizontalRule++;
  if (buildCounterHorizontalRule < 3) {
    checkUnnamed5772(o.suggestedDeletionIds);
    checkUnnamed5773(o.suggestedInsertionIds);
    checkUnnamed5774(o.suggestedTextStyleChanges);
    checkTextStyle(o.textStyle);
  }
  buildCounterHorizontalRule--;
}

core.int buildCounterImageProperties = 0;
buildImageProperties() {
  var o = new api.ImageProperties();
  buildCounterImageProperties++;
  if (buildCounterImageProperties < 3) {
    o.angle = 42.0;
    o.brightness = 42.0;
    o.contentUri = "foo";
    o.contrast = 42.0;
    o.cropProperties = buildCropProperties();
    o.sourceUri = "foo";
    o.transparency = 42.0;
  }
  buildCounterImageProperties--;
  return o;
}

checkImageProperties(api.ImageProperties o) {
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
buildImagePropertiesSuggestionState() {
  var o = new api.ImagePropertiesSuggestionState();
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

checkImagePropertiesSuggestionState(api.ImagePropertiesSuggestionState o) {
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

buildUnnamed5775() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5775(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5776() {
  var o = new core.Map<core.String, api.SuggestedInlineObjectProperties>();
  o["x"] = buildSuggestedInlineObjectProperties();
  o["y"] = buildSuggestedInlineObjectProperties();
  return o;
}

checkUnnamed5776(core.Map<core.String, api.SuggestedInlineObjectProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedInlineObjectProperties(o["x"]);
  checkSuggestedInlineObjectProperties(o["y"]);
}

core.int buildCounterInlineObject = 0;
buildInlineObject() {
  var o = new api.InlineObject();
  buildCounterInlineObject++;
  if (buildCounterInlineObject < 3) {
    o.inlineObjectProperties = buildInlineObjectProperties();
    o.objectId = "foo";
    o.suggestedDeletionIds = buildUnnamed5775();
    o.suggestedInlineObjectPropertiesChanges = buildUnnamed5776();
    o.suggestedInsertionId = "foo";
  }
  buildCounterInlineObject--;
  return o;
}

checkInlineObject(api.InlineObject o) {
  buildCounterInlineObject++;
  if (buildCounterInlineObject < 3) {
    checkInlineObjectProperties(o.inlineObjectProperties);
    unittest.expect(o.objectId, unittest.equals('foo'));
    checkUnnamed5775(o.suggestedDeletionIds);
    checkUnnamed5776(o.suggestedInlineObjectPropertiesChanges);
    unittest.expect(o.suggestedInsertionId, unittest.equals('foo'));
  }
  buildCounterInlineObject--;
}

buildUnnamed5777() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5777(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5778() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5778(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5779() {
  var o = new core.Map<core.String, api.SuggestedTextStyle>();
  o["x"] = buildSuggestedTextStyle();
  o["y"] = buildSuggestedTextStyle();
  return o;
}

checkUnnamed5779(core.Map<core.String, api.SuggestedTextStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTextStyle(o["x"]);
  checkSuggestedTextStyle(o["y"]);
}

core.int buildCounterInlineObjectElement = 0;
buildInlineObjectElement() {
  var o = new api.InlineObjectElement();
  buildCounterInlineObjectElement++;
  if (buildCounterInlineObjectElement < 3) {
    o.inlineObjectId = "foo";
    o.suggestedDeletionIds = buildUnnamed5777();
    o.suggestedInsertionIds = buildUnnamed5778();
    o.suggestedTextStyleChanges = buildUnnamed5779();
    o.textStyle = buildTextStyle();
  }
  buildCounterInlineObjectElement--;
  return o;
}

checkInlineObjectElement(api.InlineObjectElement o) {
  buildCounterInlineObjectElement++;
  if (buildCounterInlineObjectElement < 3) {
    unittest.expect(o.inlineObjectId, unittest.equals('foo'));
    checkUnnamed5777(o.suggestedDeletionIds);
    checkUnnamed5778(o.suggestedInsertionIds);
    checkUnnamed5779(o.suggestedTextStyleChanges);
    checkTextStyle(o.textStyle);
  }
  buildCounterInlineObjectElement--;
}

core.int buildCounterInlineObjectProperties = 0;
buildInlineObjectProperties() {
  var o = new api.InlineObjectProperties();
  buildCounterInlineObjectProperties++;
  if (buildCounterInlineObjectProperties < 3) {
    o.embeddedObject = buildEmbeddedObject();
  }
  buildCounterInlineObjectProperties--;
  return o;
}

checkInlineObjectProperties(api.InlineObjectProperties o) {
  buildCounterInlineObjectProperties++;
  if (buildCounterInlineObjectProperties < 3) {
    checkEmbeddedObject(o.embeddedObject);
  }
  buildCounterInlineObjectProperties--;
}

core.int buildCounterInlineObjectPropertiesSuggestionState = 0;
buildInlineObjectPropertiesSuggestionState() {
  var o = new api.InlineObjectPropertiesSuggestionState();
  buildCounterInlineObjectPropertiesSuggestionState++;
  if (buildCounterInlineObjectPropertiesSuggestionState < 3) {
    o.embeddedObjectSuggestionState = buildEmbeddedObjectSuggestionState();
  }
  buildCounterInlineObjectPropertiesSuggestionState--;
  return o;
}

checkInlineObjectPropertiesSuggestionState(
    api.InlineObjectPropertiesSuggestionState o) {
  buildCounterInlineObjectPropertiesSuggestionState++;
  if (buildCounterInlineObjectPropertiesSuggestionState < 3) {
    checkEmbeddedObjectSuggestionState(o.embeddedObjectSuggestionState);
  }
  buildCounterInlineObjectPropertiesSuggestionState--;
}

core.int buildCounterInsertInlineImageRequest = 0;
buildInsertInlineImageRequest() {
  var o = new api.InsertInlineImageRequest();
  buildCounterInsertInlineImageRequest++;
  if (buildCounterInsertInlineImageRequest < 3) {
    o.endOfSegmentLocation = buildEndOfSegmentLocation();
    o.location = buildLocation();
    o.objectSize = buildSize();
    o.uri = "foo";
  }
  buildCounterInsertInlineImageRequest--;
  return o;
}

checkInsertInlineImageRequest(api.InsertInlineImageRequest o) {
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
buildInsertInlineImageResponse() {
  var o = new api.InsertInlineImageResponse();
  buildCounterInsertInlineImageResponse++;
  if (buildCounterInsertInlineImageResponse < 3) {
    o.objectId = "foo";
  }
  buildCounterInsertInlineImageResponse--;
  return o;
}

checkInsertInlineImageResponse(api.InsertInlineImageResponse o) {
  buildCounterInsertInlineImageResponse++;
  if (buildCounterInsertInlineImageResponse < 3) {
    unittest.expect(o.objectId, unittest.equals('foo'));
  }
  buildCounterInsertInlineImageResponse--;
}

core.int buildCounterInsertInlineSheetsChartResponse = 0;
buildInsertInlineSheetsChartResponse() {
  var o = new api.InsertInlineSheetsChartResponse();
  buildCounterInsertInlineSheetsChartResponse++;
  if (buildCounterInsertInlineSheetsChartResponse < 3) {
    o.objectId = "foo";
  }
  buildCounterInsertInlineSheetsChartResponse--;
  return o;
}

checkInsertInlineSheetsChartResponse(api.InsertInlineSheetsChartResponse o) {
  buildCounterInsertInlineSheetsChartResponse++;
  if (buildCounterInsertInlineSheetsChartResponse < 3) {
    unittest.expect(o.objectId, unittest.equals('foo'));
  }
  buildCounterInsertInlineSheetsChartResponse--;
}

core.int buildCounterInsertPageBreakRequest = 0;
buildInsertPageBreakRequest() {
  var o = new api.InsertPageBreakRequest();
  buildCounterInsertPageBreakRequest++;
  if (buildCounterInsertPageBreakRequest < 3) {
    o.endOfSegmentLocation = buildEndOfSegmentLocation();
    o.location = buildLocation();
  }
  buildCounterInsertPageBreakRequest--;
  return o;
}

checkInsertPageBreakRequest(api.InsertPageBreakRequest o) {
  buildCounterInsertPageBreakRequest++;
  if (buildCounterInsertPageBreakRequest < 3) {
    checkEndOfSegmentLocation(o.endOfSegmentLocation);
    checkLocation(o.location);
  }
  buildCounterInsertPageBreakRequest--;
}

core.int buildCounterInsertSectionBreakRequest = 0;
buildInsertSectionBreakRequest() {
  var o = new api.InsertSectionBreakRequest();
  buildCounterInsertSectionBreakRequest++;
  if (buildCounterInsertSectionBreakRequest < 3) {
    o.endOfSegmentLocation = buildEndOfSegmentLocation();
    o.location = buildLocation();
    o.sectionType = "foo";
  }
  buildCounterInsertSectionBreakRequest--;
  return o;
}

checkInsertSectionBreakRequest(api.InsertSectionBreakRequest o) {
  buildCounterInsertSectionBreakRequest++;
  if (buildCounterInsertSectionBreakRequest < 3) {
    checkEndOfSegmentLocation(o.endOfSegmentLocation);
    checkLocation(o.location);
    unittest.expect(o.sectionType, unittest.equals('foo'));
  }
  buildCounterInsertSectionBreakRequest--;
}

core.int buildCounterInsertTableColumnRequest = 0;
buildInsertTableColumnRequest() {
  var o = new api.InsertTableColumnRequest();
  buildCounterInsertTableColumnRequest++;
  if (buildCounterInsertTableColumnRequest < 3) {
    o.insertRight = true;
    o.tableCellLocation = buildTableCellLocation();
  }
  buildCounterInsertTableColumnRequest--;
  return o;
}

checkInsertTableColumnRequest(api.InsertTableColumnRequest o) {
  buildCounterInsertTableColumnRequest++;
  if (buildCounterInsertTableColumnRequest < 3) {
    unittest.expect(o.insertRight, unittest.isTrue);
    checkTableCellLocation(o.tableCellLocation);
  }
  buildCounterInsertTableColumnRequest--;
}

core.int buildCounterInsertTableRequest = 0;
buildInsertTableRequest() {
  var o = new api.InsertTableRequest();
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

checkInsertTableRequest(api.InsertTableRequest o) {
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
buildInsertTableRowRequest() {
  var o = new api.InsertTableRowRequest();
  buildCounterInsertTableRowRequest++;
  if (buildCounterInsertTableRowRequest < 3) {
    o.insertBelow = true;
    o.tableCellLocation = buildTableCellLocation();
  }
  buildCounterInsertTableRowRequest--;
  return o;
}

checkInsertTableRowRequest(api.InsertTableRowRequest o) {
  buildCounterInsertTableRowRequest++;
  if (buildCounterInsertTableRowRequest < 3) {
    unittest.expect(o.insertBelow, unittest.isTrue);
    checkTableCellLocation(o.tableCellLocation);
  }
  buildCounterInsertTableRowRequest--;
}

core.int buildCounterInsertTextRequest = 0;
buildInsertTextRequest() {
  var o = new api.InsertTextRequest();
  buildCounterInsertTextRequest++;
  if (buildCounterInsertTextRequest < 3) {
    o.endOfSegmentLocation = buildEndOfSegmentLocation();
    o.location = buildLocation();
    o.text = "foo";
  }
  buildCounterInsertTextRequest--;
  return o;
}

checkInsertTextRequest(api.InsertTextRequest o) {
  buildCounterInsertTextRequest++;
  if (buildCounterInsertTextRequest < 3) {
    checkEndOfSegmentLocation(o.endOfSegmentLocation);
    checkLocation(o.location);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterInsertTextRequest--;
}

core.int buildCounterLink = 0;
buildLink() {
  var o = new api.Link();
  buildCounterLink++;
  if (buildCounterLink < 3) {
    o.bookmarkId = "foo";
    o.headingId = "foo";
    o.url = "foo";
  }
  buildCounterLink--;
  return o;
}

checkLink(api.Link o) {
  buildCounterLink++;
  if (buildCounterLink < 3) {
    unittest.expect(o.bookmarkId, unittest.equals('foo'));
    unittest.expect(o.headingId, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterLink--;
}

core.int buildCounterLinkedContentReference = 0;
buildLinkedContentReference() {
  var o = new api.LinkedContentReference();
  buildCounterLinkedContentReference++;
  if (buildCounterLinkedContentReference < 3) {
    o.sheetsChartReference = buildSheetsChartReference();
  }
  buildCounterLinkedContentReference--;
  return o;
}

checkLinkedContentReference(api.LinkedContentReference o) {
  buildCounterLinkedContentReference++;
  if (buildCounterLinkedContentReference < 3) {
    checkSheetsChartReference(o.sheetsChartReference);
  }
  buildCounterLinkedContentReference--;
}

core.int buildCounterLinkedContentReferenceSuggestionState = 0;
buildLinkedContentReferenceSuggestionState() {
  var o = new api.LinkedContentReferenceSuggestionState();
  buildCounterLinkedContentReferenceSuggestionState++;
  if (buildCounterLinkedContentReferenceSuggestionState < 3) {
    o.sheetsChartReferenceSuggestionState =
        buildSheetsChartReferenceSuggestionState();
  }
  buildCounterLinkedContentReferenceSuggestionState--;
  return o;
}

checkLinkedContentReferenceSuggestionState(
    api.LinkedContentReferenceSuggestionState o) {
  buildCounterLinkedContentReferenceSuggestionState++;
  if (buildCounterLinkedContentReferenceSuggestionState < 3) {
    checkSheetsChartReferenceSuggestionState(
        o.sheetsChartReferenceSuggestionState);
  }
  buildCounterLinkedContentReferenceSuggestionState--;
}

buildUnnamed5780() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5780(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5781() {
  var o = new core.Map<core.String, api.SuggestedListProperties>();
  o["x"] = buildSuggestedListProperties();
  o["y"] = buildSuggestedListProperties();
  return o;
}

checkUnnamed5781(core.Map<core.String, api.SuggestedListProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedListProperties(o["x"]);
  checkSuggestedListProperties(o["y"]);
}

core.int buildCounterList = 0;
buildList() {
  var o = new api.List();
  buildCounterList++;
  if (buildCounterList < 3) {
    o.listProperties = buildListProperties();
    o.suggestedDeletionIds = buildUnnamed5780();
    o.suggestedInsertionId = "foo";
    o.suggestedListPropertiesChanges = buildUnnamed5781();
  }
  buildCounterList--;
  return o;
}

checkList(api.List o) {
  buildCounterList++;
  if (buildCounterList < 3) {
    checkListProperties(o.listProperties);
    checkUnnamed5780(o.suggestedDeletionIds);
    unittest.expect(o.suggestedInsertionId, unittest.equals('foo'));
    checkUnnamed5781(o.suggestedListPropertiesChanges);
  }
  buildCounterList--;
}

buildUnnamed5782() {
  var o = new core.List<api.NestingLevel>();
  o.add(buildNestingLevel());
  o.add(buildNestingLevel());
  return o;
}

checkUnnamed5782(core.List<api.NestingLevel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNestingLevel(o[0]);
  checkNestingLevel(o[1]);
}

core.int buildCounterListProperties = 0;
buildListProperties() {
  var o = new api.ListProperties();
  buildCounterListProperties++;
  if (buildCounterListProperties < 3) {
    o.nestingLevels = buildUnnamed5782();
  }
  buildCounterListProperties--;
  return o;
}

checkListProperties(api.ListProperties o) {
  buildCounterListProperties++;
  if (buildCounterListProperties < 3) {
    checkUnnamed5782(o.nestingLevels);
  }
  buildCounterListProperties--;
}

buildUnnamed5783() {
  var o = new core.List<api.NestingLevelSuggestionState>();
  o.add(buildNestingLevelSuggestionState());
  o.add(buildNestingLevelSuggestionState());
  return o;
}

checkUnnamed5783(core.List<api.NestingLevelSuggestionState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNestingLevelSuggestionState(o[0]);
  checkNestingLevelSuggestionState(o[1]);
}

core.int buildCounterListPropertiesSuggestionState = 0;
buildListPropertiesSuggestionState() {
  var o = new api.ListPropertiesSuggestionState();
  buildCounterListPropertiesSuggestionState++;
  if (buildCounterListPropertiesSuggestionState < 3) {
    o.nestingLevelsSuggestionStates = buildUnnamed5783();
  }
  buildCounterListPropertiesSuggestionState--;
  return o;
}

checkListPropertiesSuggestionState(api.ListPropertiesSuggestionState o) {
  buildCounterListPropertiesSuggestionState++;
  if (buildCounterListPropertiesSuggestionState < 3) {
    checkUnnamed5783(o.nestingLevelsSuggestionStates);
  }
  buildCounterListPropertiesSuggestionState--;
}

core.int buildCounterLocation = 0;
buildLocation() {
  var o = new api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.index = 42;
    o.segmentId = "foo";
  }
  buildCounterLocation--;
  return o;
}

checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.index, unittest.equals(42));
    unittest.expect(o.segmentId, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterMergeTableCellsRequest = 0;
buildMergeTableCellsRequest() {
  var o = new api.MergeTableCellsRequest();
  buildCounterMergeTableCellsRequest++;
  if (buildCounterMergeTableCellsRequest < 3) {
    o.tableRange = buildTableRange();
  }
  buildCounterMergeTableCellsRequest--;
  return o;
}

checkMergeTableCellsRequest(api.MergeTableCellsRequest o) {
  buildCounterMergeTableCellsRequest++;
  if (buildCounterMergeTableCellsRequest < 3) {
    checkTableRange(o.tableRange);
  }
  buildCounterMergeTableCellsRequest--;
}

buildUnnamed5784() {
  var o = new core.List<api.Range>();
  o.add(buildRange());
  o.add(buildRange());
  return o;
}

checkUnnamed5784(core.List<api.Range> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRange(o[0]);
  checkRange(o[1]);
}

core.int buildCounterNamedRange = 0;
buildNamedRange() {
  var o = new api.NamedRange();
  buildCounterNamedRange++;
  if (buildCounterNamedRange < 3) {
    o.name = "foo";
    o.namedRangeId = "foo";
    o.ranges = buildUnnamed5784();
  }
  buildCounterNamedRange--;
  return o;
}

checkNamedRange(api.NamedRange o) {
  buildCounterNamedRange++;
  if (buildCounterNamedRange < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.namedRangeId, unittest.equals('foo'));
    checkUnnamed5784(o.ranges);
  }
  buildCounterNamedRange--;
}

buildUnnamed5785() {
  var o = new core.List<api.NamedRange>();
  o.add(buildNamedRange());
  o.add(buildNamedRange());
  return o;
}

checkUnnamed5785(core.List<api.NamedRange> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamedRange(o[0]);
  checkNamedRange(o[1]);
}

core.int buildCounterNamedRanges = 0;
buildNamedRanges() {
  var o = new api.NamedRanges();
  buildCounterNamedRanges++;
  if (buildCounterNamedRanges < 3) {
    o.name = "foo";
    o.namedRanges = buildUnnamed5785();
  }
  buildCounterNamedRanges--;
  return o;
}

checkNamedRanges(api.NamedRanges o) {
  buildCounterNamedRanges++;
  if (buildCounterNamedRanges < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed5785(o.namedRanges);
  }
  buildCounterNamedRanges--;
}

core.int buildCounterNamedStyle = 0;
buildNamedStyle() {
  var o = new api.NamedStyle();
  buildCounterNamedStyle++;
  if (buildCounterNamedStyle < 3) {
    o.namedStyleType = "foo";
    o.paragraphStyle = buildParagraphStyle();
    o.textStyle = buildTextStyle();
  }
  buildCounterNamedStyle--;
  return o;
}

checkNamedStyle(api.NamedStyle o) {
  buildCounterNamedStyle++;
  if (buildCounterNamedStyle < 3) {
    unittest.expect(o.namedStyleType, unittest.equals('foo'));
    checkParagraphStyle(o.paragraphStyle);
    checkTextStyle(o.textStyle);
  }
  buildCounterNamedStyle--;
}

core.int buildCounterNamedStyleSuggestionState = 0;
buildNamedStyleSuggestionState() {
  var o = new api.NamedStyleSuggestionState();
  buildCounterNamedStyleSuggestionState++;
  if (buildCounterNamedStyleSuggestionState < 3) {
    o.namedStyleType = "foo";
    o.paragraphStyleSuggestionState = buildParagraphStyleSuggestionState();
    o.textStyleSuggestionState = buildTextStyleSuggestionState();
  }
  buildCounterNamedStyleSuggestionState--;
  return o;
}

checkNamedStyleSuggestionState(api.NamedStyleSuggestionState o) {
  buildCounterNamedStyleSuggestionState++;
  if (buildCounterNamedStyleSuggestionState < 3) {
    unittest.expect(o.namedStyleType, unittest.equals('foo'));
    checkParagraphStyleSuggestionState(o.paragraphStyleSuggestionState);
    checkTextStyleSuggestionState(o.textStyleSuggestionState);
  }
  buildCounterNamedStyleSuggestionState--;
}

buildUnnamed5786() {
  var o = new core.List<api.NamedStyle>();
  o.add(buildNamedStyle());
  o.add(buildNamedStyle());
  return o;
}

checkUnnamed5786(core.List<api.NamedStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamedStyle(o[0]);
  checkNamedStyle(o[1]);
}

core.int buildCounterNamedStyles = 0;
buildNamedStyles() {
  var o = new api.NamedStyles();
  buildCounterNamedStyles++;
  if (buildCounterNamedStyles < 3) {
    o.styles = buildUnnamed5786();
  }
  buildCounterNamedStyles--;
  return o;
}

checkNamedStyles(api.NamedStyles o) {
  buildCounterNamedStyles++;
  if (buildCounterNamedStyles < 3) {
    checkUnnamed5786(o.styles);
  }
  buildCounterNamedStyles--;
}

buildUnnamed5787() {
  var o = new core.List<api.NamedStyleSuggestionState>();
  o.add(buildNamedStyleSuggestionState());
  o.add(buildNamedStyleSuggestionState());
  return o;
}

checkUnnamed5787(core.List<api.NamedStyleSuggestionState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamedStyleSuggestionState(o[0]);
  checkNamedStyleSuggestionState(o[1]);
}

core.int buildCounterNamedStylesSuggestionState = 0;
buildNamedStylesSuggestionState() {
  var o = new api.NamedStylesSuggestionState();
  buildCounterNamedStylesSuggestionState++;
  if (buildCounterNamedStylesSuggestionState < 3) {
    o.stylesSuggestionStates = buildUnnamed5787();
  }
  buildCounterNamedStylesSuggestionState--;
  return o;
}

checkNamedStylesSuggestionState(api.NamedStylesSuggestionState o) {
  buildCounterNamedStylesSuggestionState++;
  if (buildCounterNamedStylesSuggestionState < 3) {
    checkUnnamed5787(o.stylesSuggestionStates);
  }
  buildCounterNamedStylesSuggestionState--;
}

core.int buildCounterNestingLevel = 0;
buildNestingLevel() {
  var o = new api.NestingLevel();
  buildCounterNestingLevel++;
  if (buildCounterNestingLevel < 3) {
    o.bulletAlignment = "foo";
    o.glyphFormat = "foo";
    o.glyphSymbol = "foo";
    o.glyphType = "foo";
    o.indentFirstLine = buildDimension();
    o.indentStart = buildDimension();
    o.startNumber = 42;
    o.textStyle = buildTextStyle();
  }
  buildCounterNestingLevel--;
  return o;
}

checkNestingLevel(api.NestingLevel o) {
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
buildNestingLevelSuggestionState() {
  var o = new api.NestingLevelSuggestionState();
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

checkNestingLevelSuggestionState(api.NestingLevelSuggestionState o) {
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

buildUnnamed5788() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5788(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterObjectReferences = 0;
buildObjectReferences() {
  var o = new api.ObjectReferences();
  buildCounterObjectReferences++;
  if (buildCounterObjectReferences < 3) {
    o.objectIds = buildUnnamed5788();
  }
  buildCounterObjectReferences--;
  return o;
}

checkObjectReferences(api.ObjectReferences o) {
  buildCounterObjectReferences++;
  if (buildCounterObjectReferences < 3) {
    checkUnnamed5788(o.objectIds);
  }
  buildCounterObjectReferences--;
}

core.int buildCounterOptionalColor = 0;
buildOptionalColor() {
  var o = new api.OptionalColor();
  buildCounterOptionalColor++;
  if (buildCounterOptionalColor < 3) {
    o.color = buildColor();
  }
  buildCounterOptionalColor--;
  return o;
}

checkOptionalColor(api.OptionalColor o) {
  buildCounterOptionalColor++;
  if (buildCounterOptionalColor < 3) {
    checkColor(o.color);
  }
  buildCounterOptionalColor--;
}

buildUnnamed5789() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5789(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5790() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5790(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5791() {
  var o = new core.Map<core.String, api.SuggestedTextStyle>();
  o["x"] = buildSuggestedTextStyle();
  o["y"] = buildSuggestedTextStyle();
  return o;
}

checkUnnamed5791(core.Map<core.String, api.SuggestedTextStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTextStyle(o["x"]);
  checkSuggestedTextStyle(o["y"]);
}

core.int buildCounterPageBreak = 0;
buildPageBreak() {
  var o = new api.PageBreak();
  buildCounterPageBreak++;
  if (buildCounterPageBreak < 3) {
    o.suggestedDeletionIds = buildUnnamed5789();
    o.suggestedInsertionIds = buildUnnamed5790();
    o.suggestedTextStyleChanges = buildUnnamed5791();
    o.textStyle = buildTextStyle();
  }
  buildCounterPageBreak--;
  return o;
}

checkPageBreak(api.PageBreak o) {
  buildCounterPageBreak++;
  if (buildCounterPageBreak < 3) {
    checkUnnamed5789(o.suggestedDeletionIds);
    checkUnnamed5790(o.suggestedInsertionIds);
    checkUnnamed5791(o.suggestedTextStyleChanges);
    checkTextStyle(o.textStyle);
  }
  buildCounterPageBreak--;
}

buildUnnamed5792() {
  var o = new core.List<api.ParagraphElement>();
  o.add(buildParagraphElement());
  o.add(buildParagraphElement());
  return o;
}

checkUnnamed5792(core.List<api.ParagraphElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParagraphElement(o[0]);
  checkParagraphElement(o[1]);
}

buildUnnamed5793() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5793(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5794() {
  var o = new core.Map<core.String, api.SuggestedBullet>();
  o["x"] = buildSuggestedBullet();
  o["y"] = buildSuggestedBullet();
  return o;
}

checkUnnamed5794(core.Map<core.String, api.SuggestedBullet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedBullet(o["x"]);
  checkSuggestedBullet(o["y"]);
}

buildUnnamed5795() {
  var o = new core.Map<core.String, api.SuggestedParagraphStyle>();
  o["x"] = buildSuggestedParagraphStyle();
  o["y"] = buildSuggestedParagraphStyle();
  return o;
}

checkUnnamed5795(core.Map<core.String, api.SuggestedParagraphStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedParagraphStyle(o["x"]);
  checkSuggestedParagraphStyle(o["y"]);
}

buildUnnamed5796() {
  var o = new core.Map<core.String, api.ObjectReferences>();
  o["x"] = buildObjectReferences();
  o["y"] = buildObjectReferences();
  return o;
}

checkUnnamed5796(core.Map<core.String, api.ObjectReferences> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkObjectReferences(o["x"]);
  checkObjectReferences(o["y"]);
}

core.int buildCounterParagraph = 0;
buildParagraph() {
  var o = new api.Paragraph();
  buildCounterParagraph++;
  if (buildCounterParagraph < 3) {
    o.bullet = buildBullet();
    o.elements = buildUnnamed5792();
    o.paragraphStyle = buildParagraphStyle();
    o.positionedObjectIds = buildUnnamed5793();
    o.suggestedBulletChanges = buildUnnamed5794();
    o.suggestedParagraphStyleChanges = buildUnnamed5795();
    o.suggestedPositionedObjectIds = buildUnnamed5796();
  }
  buildCounterParagraph--;
  return o;
}

checkParagraph(api.Paragraph o) {
  buildCounterParagraph++;
  if (buildCounterParagraph < 3) {
    checkBullet(o.bullet);
    checkUnnamed5792(o.elements);
    checkParagraphStyle(o.paragraphStyle);
    checkUnnamed5793(o.positionedObjectIds);
    checkUnnamed5794(o.suggestedBulletChanges);
    checkUnnamed5795(o.suggestedParagraphStyleChanges);
    checkUnnamed5796(o.suggestedPositionedObjectIds);
  }
  buildCounterParagraph--;
}

core.int buildCounterParagraphBorder = 0;
buildParagraphBorder() {
  var o = new api.ParagraphBorder();
  buildCounterParagraphBorder++;
  if (buildCounterParagraphBorder < 3) {
    o.color = buildOptionalColor();
    o.dashStyle = "foo";
    o.padding = buildDimension();
    o.width = buildDimension();
  }
  buildCounterParagraphBorder--;
  return o;
}

checkParagraphBorder(api.ParagraphBorder o) {
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
buildParagraphElement() {
  var o = new api.ParagraphElement();
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

checkParagraphElement(api.ParagraphElement o) {
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

buildUnnamed5797() {
  var o = new core.List<api.TabStop>();
  o.add(buildTabStop());
  o.add(buildTabStop());
  return o;
}

checkUnnamed5797(core.List<api.TabStop> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTabStop(o[0]);
  checkTabStop(o[1]);
}

core.int buildCounterParagraphStyle = 0;
buildParagraphStyle() {
  var o = new api.ParagraphStyle();
  buildCounterParagraphStyle++;
  if (buildCounterParagraphStyle < 3) {
    o.alignment = "foo";
    o.avoidWidowAndOrphan = true;
    o.borderBetween = buildParagraphBorder();
    o.borderBottom = buildParagraphBorder();
    o.borderLeft = buildParagraphBorder();
    o.borderRight = buildParagraphBorder();
    o.borderTop = buildParagraphBorder();
    o.direction = "foo";
    o.headingId = "foo";
    o.indentEnd = buildDimension();
    o.indentFirstLine = buildDimension();
    o.indentStart = buildDimension();
    o.keepLinesTogether = true;
    o.keepWithNext = true;
    o.lineSpacing = 42.0;
    o.namedStyleType = "foo";
    o.shading = buildShading();
    o.spaceAbove = buildDimension();
    o.spaceBelow = buildDimension();
    o.spacingMode = "foo";
    o.tabStops = buildUnnamed5797();
  }
  buildCounterParagraphStyle--;
  return o;
}

checkParagraphStyle(api.ParagraphStyle o) {
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
    checkUnnamed5797(o.tabStops);
  }
  buildCounterParagraphStyle--;
}

core.int buildCounterParagraphStyleSuggestionState = 0;
buildParagraphStyleSuggestionState() {
  var o = new api.ParagraphStyleSuggestionState();
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

checkParagraphStyleSuggestionState(api.ParagraphStyleSuggestionState o) {
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

buildUnnamed5798() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5798(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5799() {
  var o = new core.Map<core.String, api.SuggestedPositionedObjectProperties>();
  o["x"] = buildSuggestedPositionedObjectProperties();
  o["y"] = buildSuggestedPositionedObjectProperties();
  return o;
}

checkUnnamed5799(
    core.Map<core.String, api.SuggestedPositionedObjectProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedPositionedObjectProperties(o["x"]);
  checkSuggestedPositionedObjectProperties(o["y"]);
}

core.int buildCounterPositionedObject = 0;
buildPositionedObject() {
  var o = new api.PositionedObject();
  buildCounterPositionedObject++;
  if (buildCounterPositionedObject < 3) {
    o.objectId = "foo";
    o.positionedObjectProperties = buildPositionedObjectProperties();
    o.suggestedDeletionIds = buildUnnamed5798();
    o.suggestedInsertionId = "foo";
    o.suggestedPositionedObjectPropertiesChanges = buildUnnamed5799();
  }
  buildCounterPositionedObject--;
  return o;
}

checkPositionedObject(api.PositionedObject o) {
  buildCounterPositionedObject++;
  if (buildCounterPositionedObject < 3) {
    unittest.expect(o.objectId, unittest.equals('foo'));
    checkPositionedObjectProperties(o.positionedObjectProperties);
    checkUnnamed5798(o.suggestedDeletionIds);
    unittest.expect(o.suggestedInsertionId, unittest.equals('foo'));
    checkUnnamed5799(o.suggestedPositionedObjectPropertiesChanges);
  }
  buildCounterPositionedObject--;
}

core.int buildCounterPositionedObjectPositioning = 0;
buildPositionedObjectPositioning() {
  var o = new api.PositionedObjectPositioning();
  buildCounterPositionedObjectPositioning++;
  if (buildCounterPositionedObjectPositioning < 3) {
    o.layout = "foo";
    o.leftOffset = buildDimension();
    o.topOffset = buildDimension();
  }
  buildCounterPositionedObjectPositioning--;
  return o;
}

checkPositionedObjectPositioning(api.PositionedObjectPositioning o) {
  buildCounterPositionedObjectPositioning++;
  if (buildCounterPositionedObjectPositioning < 3) {
    unittest.expect(o.layout, unittest.equals('foo'));
    checkDimension(o.leftOffset);
    checkDimension(o.topOffset);
  }
  buildCounterPositionedObjectPositioning--;
}

core.int buildCounterPositionedObjectPositioningSuggestionState = 0;
buildPositionedObjectPositioningSuggestionState() {
  var o = new api.PositionedObjectPositioningSuggestionState();
  buildCounterPositionedObjectPositioningSuggestionState++;
  if (buildCounterPositionedObjectPositioningSuggestionState < 3) {
    o.layoutSuggested = true;
    o.leftOffsetSuggested = true;
    o.topOffsetSuggested = true;
  }
  buildCounterPositionedObjectPositioningSuggestionState--;
  return o;
}

checkPositionedObjectPositioningSuggestionState(
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
buildPositionedObjectProperties() {
  var o = new api.PositionedObjectProperties();
  buildCounterPositionedObjectProperties++;
  if (buildCounterPositionedObjectProperties < 3) {
    o.embeddedObject = buildEmbeddedObject();
    o.positioning = buildPositionedObjectPositioning();
  }
  buildCounterPositionedObjectProperties--;
  return o;
}

checkPositionedObjectProperties(api.PositionedObjectProperties o) {
  buildCounterPositionedObjectProperties++;
  if (buildCounterPositionedObjectProperties < 3) {
    checkEmbeddedObject(o.embeddedObject);
    checkPositionedObjectPositioning(o.positioning);
  }
  buildCounterPositionedObjectProperties--;
}

core.int buildCounterPositionedObjectPropertiesSuggestionState = 0;
buildPositionedObjectPropertiesSuggestionState() {
  var o = new api.PositionedObjectPropertiesSuggestionState();
  buildCounterPositionedObjectPropertiesSuggestionState++;
  if (buildCounterPositionedObjectPropertiesSuggestionState < 3) {
    o.embeddedObjectSuggestionState = buildEmbeddedObjectSuggestionState();
    o.positioningSuggestionState =
        buildPositionedObjectPositioningSuggestionState();
  }
  buildCounterPositionedObjectPropertiesSuggestionState--;
  return o;
}

checkPositionedObjectPropertiesSuggestionState(
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
buildRange() {
  var o = new api.Range();
  buildCounterRange++;
  if (buildCounterRange < 3) {
    o.endIndex = 42;
    o.segmentId = "foo";
    o.startIndex = 42;
  }
  buildCounterRange--;
  return o;
}

checkRange(api.Range o) {
  buildCounterRange++;
  if (buildCounterRange < 3) {
    unittest.expect(o.endIndex, unittest.equals(42));
    unittest.expect(o.segmentId, unittest.equals('foo'));
    unittest.expect(o.startIndex, unittest.equals(42));
  }
  buildCounterRange--;
}

core.int buildCounterReplaceAllTextRequest = 0;
buildReplaceAllTextRequest() {
  var o = new api.ReplaceAllTextRequest();
  buildCounterReplaceAllTextRequest++;
  if (buildCounterReplaceAllTextRequest < 3) {
    o.containsText = buildSubstringMatchCriteria();
    o.replaceText = "foo";
  }
  buildCounterReplaceAllTextRequest--;
  return o;
}

checkReplaceAllTextRequest(api.ReplaceAllTextRequest o) {
  buildCounterReplaceAllTextRequest++;
  if (buildCounterReplaceAllTextRequest < 3) {
    checkSubstringMatchCriteria(o.containsText);
    unittest.expect(o.replaceText, unittest.equals('foo'));
  }
  buildCounterReplaceAllTextRequest--;
}

core.int buildCounterReplaceAllTextResponse = 0;
buildReplaceAllTextResponse() {
  var o = new api.ReplaceAllTextResponse();
  buildCounterReplaceAllTextResponse++;
  if (buildCounterReplaceAllTextResponse < 3) {
    o.occurrencesChanged = 42;
  }
  buildCounterReplaceAllTextResponse--;
  return o;
}

checkReplaceAllTextResponse(api.ReplaceAllTextResponse o) {
  buildCounterReplaceAllTextResponse++;
  if (buildCounterReplaceAllTextResponse < 3) {
    unittest.expect(o.occurrencesChanged, unittest.equals(42));
  }
  buildCounterReplaceAllTextResponse--;
}

core.int buildCounterReplaceImageRequest = 0;
buildReplaceImageRequest() {
  var o = new api.ReplaceImageRequest();
  buildCounterReplaceImageRequest++;
  if (buildCounterReplaceImageRequest < 3) {
    o.imageObjectId = "foo";
    o.imageReplaceMethod = "foo";
    o.uri = "foo";
  }
  buildCounterReplaceImageRequest--;
  return o;
}

checkReplaceImageRequest(api.ReplaceImageRequest o) {
  buildCounterReplaceImageRequest++;
  if (buildCounterReplaceImageRequest < 3) {
    unittest.expect(o.imageObjectId, unittest.equals('foo'));
    unittest.expect(o.imageReplaceMethod, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterReplaceImageRequest--;
}

core.int buildCounterReplaceNamedRangeContentRequest = 0;
buildReplaceNamedRangeContentRequest() {
  var o = new api.ReplaceNamedRangeContentRequest();
  buildCounterReplaceNamedRangeContentRequest++;
  if (buildCounterReplaceNamedRangeContentRequest < 3) {
    o.namedRangeId = "foo";
    o.namedRangeName = "foo";
    o.text = "foo";
  }
  buildCounterReplaceNamedRangeContentRequest--;
  return o;
}

checkReplaceNamedRangeContentRequest(api.ReplaceNamedRangeContentRequest o) {
  buildCounterReplaceNamedRangeContentRequest++;
  if (buildCounterReplaceNamedRangeContentRequest < 3) {
    unittest.expect(o.namedRangeId, unittest.equals('foo'));
    unittest.expect(o.namedRangeName, unittest.equals('foo'));
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterReplaceNamedRangeContentRequest--;
}

core.int buildCounterRequest = 0;
buildRequest() {
  var o = new api.Request();
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

checkRequest(api.Request o) {
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
buildResponse() {
  var o = new api.Response();
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

checkResponse(api.Response o) {
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
buildRgbColor() {
  var o = new api.RgbColor();
  buildCounterRgbColor++;
  if (buildCounterRgbColor < 3) {
    o.blue = 42.0;
    o.green = 42.0;
    o.red = 42.0;
  }
  buildCounterRgbColor--;
  return o;
}

checkRgbColor(api.RgbColor o) {
  buildCounterRgbColor++;
  if (buildCounterRgbColor < 3) {
    unittest.expect(o.blue, unittest.equals(42.0));
    unittest.expect(o.green, unittest.equals(42.0));
    unittest.expect(o.red, unittest.equals(42.0));
  }
  buildCounterRgbColor--;
}

buildUnnamed5800() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5800(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5801() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5801(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSectionBreak = 0;
buildSectionBreak() {
  var o = new api.SectionBreak();
  buildCounterSectionBreak++;
  if (buildCounterSectionBreak < 3) {
    o.sectionStyle = buildSectionStyle();
    o.suggestedDeletionIds = buildUnnamed5800();
    o.suggestedInsertionIds = buildUnnamed5801();
  }
  buildCounterSectionBreak--;
  return o;
}

checkSectionBreak(api.SectionBreak o) {
  buildCounterSectionBreak++;
  if (buildCounterSectionBreak < 3) {
    checkSectionStyle(o.sectionStyle);
    checkUnnamed5800(o.suggestedDeletionIds);
    checkUnnamed5801(o.suggestedInsertionIds);
  }
  buildCounterSectionBreak--;
}

core.int buildCounterSectionColumnProperties = 0;
buildSectionColumnProperties() {
  var o = new api.SectionColumnProperties();
  buildCounterSectionColumnProperties++;
  if (buildCounterSectionColumnProperties < 3) {
    o.paddingEnd = buildDimension();
    o.width = buildDimension();
  }
  buildCounterSectionColumnProperties--;
  return o;
}

checkSectionColumnProperties(api.SectionColumnProperties o) {
  buildCounterSectionColumnProperties++;
  if (buildCounterSectionColumnProperties < 3) {
    checkDimension(o.paddingEnd);
    checkDimension(o.width);
  }
  buildCounterSectionColumnProperties--;
}

buildUnnamed5802() {
  var o = new core.List<api.SectionColumnProperties>();
  o.add(buildSectionColumnProperties());
  o.add(buildSectionColumnProperties());
  return o;
}

checkUnnamed5802(core.List<api.SectionColumnProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSectionColumnProperties(o[0]);
  checkSectionColumnProperties(o[1]);
}

core.int buildCounterSectionStyle = 0;
buildSectionStyle() {
  var o = new api.SectionStyle();
  buildCounterSectionStyle++;
  if (buildCounterSectionStyle < 3) {
    o.columnProperties = buildUnnamed5802();
    o.columnSeparatorStyle = "foo";
    o.contentDirection = "foo";
    o.defaultFooterId = "foo";
    o.defaultHeaderId = "foo";
    o.evenPageFooterId = "foo";
    o.evenPageHeaderId = "foo";
    o.firstPageFooterId = "foo";
    o.firstPageHeaderId = "foo";
    o.marginBottom = buildDimension();
    o.marginFooter = buildDimension();
    o.marginHeader = buildDimension();
    o.marginLeft = buildDimension();
    o.marginRight = buildDimension();
    o.marginTop = buildDimension();
    o.pageNumberStart = 42;
    o.sectionType = "foo";
    o.useFirstPageHeaderFooter = true;
  }
  buildCounterSectionStyle--;
  return o;
}

checkSectionStyle(api.SectionStyle o) {
  buildCounterSectionStyle++;
  if (buildCounterSectionStyle < 3) {
    checkUnnamed5802(o.columnProperties);
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
buildShading() {
  var o = new api.Shading();
  buildCounterShading++;
  if (buildCounterShading < 3) {
    o.backgroundColor = buildOptionalColor();
  }
  buildCounterShading--;
  return o;
}

checkShading(api.Shading o) {
  buildCounterShading++;
  if (buildCounterShading < 3) {
    checkOptionalColor(o.backgroundColor);
  }
  buildCounterShading--;
}

core.int buildCounterShadingSuggestionState = 0;
buildShadingSuggestionState() {
  var o = new api.ShadingSuggestionState();
  buildCounterShadingSuggestionState++;
  if (buildCounterShadingSuggestionState < 3) {
    o.backgroundColorSuggested = true;
  }
  buildCounterShadingSuggestionState--;
  return o;
}

checkShadingSuggestionState(api.ShadingSuggestionState o) {
  buildCounterShadingSuggestionState++;
  if (buildCounterShadingSuggestionState < 3) {
    unittest.expect(o.backgroundColorSuggested, unittest.isTrue);
  }
  buildCounterShadingSuggestionState--;
}

core.int buildCounterSheetsChartReference = 0;
buildSheetsChartReference() {
  var o = new api.SheetsChartReference();
  buildCounterSheetsChartReference++;
  if (buildCounterSheetsChartReference < 3) {
    o.chartId = 42;
    o.spreadsheetId = "foo";
  }
  buildCounterSheetsChartReference--;
  return o;
}

checkSheetsChartReference(api.SheetsChartReference o) {
  buildCounterSheetsChartReference++;
  if (buildCounterSheetsChartReference < 3) {
    unittest.expect(o.chartId, unittest.equals(42));
    unittest.expect(o.spreadsheetId, unittest.equals('foo'));
  }
  buildCounterSheetsChartReference--;
}

core.int buildCounterSheetsChartReferenceSuggestionState = 0;
buildSheetsChartReferenceSuggestionState() {
  var o = new api.SheetsChartReferenceSuggestionState();
  buildCounterSheetsChartReferenceSuggestionState++;
  if (buildCounterSheetsChartReferenceSuggestionState < 3) {
    o.chartIdSuggested = true;
    o.spreadsheetIdSuggested = true;
  }
  buildCounterSheetsChartReferenceSuggestionState--;
  return o;
}

checkSheetsChartReferenceSuggestionState(
    api.SheetsChartReferenceSuggestionState o) {
  buildCounterSheetsChartReferenceSuggestionState++;
  if (buildCounterSheetsChartReferenceSuggestionState < 3) {
    unittest.expect(o.chartIdSuggested, unittest.isTrue);
    unittest.expect(o.spreadsheetIdSuggested, unittest.isTrue);
  }
  buildCounterSheetsChartReferenceSuggestionState--;
}

core.int buildCounterSize = 0;
buildSize() {
  var o = new api.Size();
  buildCounterSize++;
  if (buildCounterSize < 3) {
    o.height = buildDimension();
    o.width = buildDimension();
  }
  buildCounterSize--;
  return o;
}

checkSize(api.Size o) {
  buildCounterSize++;
  if (buildCounterSize < 3) {
    checkDimension(o.height);
    checkDimension(o.width);
  }
  buildCounterSize--;
}

core.int buildCounterSizeSuggestionState = 0;
buildSizeSuggestionState() {
  var o = new api.SizeSuggestionState();
  buildCounterSizeSuggestionState++;
  if (buildCounterSizeSuggestionState < 3) {
    o.heightSuggested = true;
    o.widthSuggested = true;
  }
  buildCounterSizeSuggestionState--;
  return o;
}

checkSizeSuggestionState(api.SizeSuggestionState o) {
  buildCounterSizeSuggestionState++;
  if (buildCounterSizeSuggestionState < 3) {
    unittest.expect(o.heightSuggested, unittest.isTrue);
    unittest.expect(o.widthSuggested, unittest.isTrue);
  }
  buildCounterSizeSuggestionState--;
}

core.int buildCounterStructuralElement = 0;
buildStructuralElement() {
  var o = new api.StructuralElement();
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

checkStructuralElement(api.StructuralElement o) {
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
buildSubstringMatchCriteria() {
  var o = new api.SubstringMatchCriteria();
  buildCounterSubstringMatchCriteria++;
  if (buildCounterSubstringMatchCriteria < 3) {
    o.matchCase = true;
    o.text = "foo";
  }
  buildCounterSubstringMatchCriteria--;
  return o;
}

checkSubstringMatchCriteria(api.SubstringMatchCriteria o) {
  buildCounterSubstringMatchCriteria++;
  if (buildCounterSubstringMatchCriteria < 3) {
    unittest.expect(o.matchCase, unittest.isTrue);
    unittest.expect(o.text, unittest.equals('foo'));
  }
  buildCounterSubstringMatchCriteria--;
}

core.int buildCounterSuggestedBullet = 0;
buildSuggestedBullet() {
  var o = new api.SuggestedBullet();
  buildCounterSuggestedBullet++;
  if (buildCounterSuggestedBullet < 3) {
    o.bullet = buildBullet();
    o.bulletSuggestionState = buildBulletSuggestionState();
  }
  buildCounterSuggestedBullet--;
  return o;
}

checkSuggestedBullet(api.SuggestedBullet o) {
  buildCounterSuggestedBullet++;
  if (buildCounterSuggestedBullet < 3) {
    checkBullet(o.bullet);
    checkBulletSuggestionState(o.bulletSuggestionState);
  }
  buildCounterSuggestedBullet--;
}

core.int buildCounterSuggestedDocumentStyle = 0;
buildSuggestedDocumentStyle() {
  var o = new api.SuggestedDocumentStyle();
  buildCounterSuggestedDocumentStyle++;
  if (buildCounterSuggestedDocumentStyle < 3) {
    o.documentStyle = buildDocumentStyle();
    o.documentStyleSuggestionState = buildDocumentStyleSuggestionState();
  }
  buildCounterSuggestedDocumentStyle--;
  return o;
}

checkSuggestedDocumentStyle(api.SuggestedDocumentStyle o) {
  buildCounterSuggestedDocumentStyle++;
  if (buildCounterSuggestedDocumentStyle < 3) {
    checkDocumentStyle(o.documentStyle);
    checkDocumentStyleSuggestionState(o.documentStyleSuggestionState);
  }
  buildCounterSuggestedDocumentStyle--;
}

core.int buildCounterSuggestedInlineObjectProperties = 0;
buildSuggestedInlineObjectProperties() {
  var o = new api.SuggestedInlineObjectProperties();
  buildCounterSuggestedInlineObjectProperties++;
  if (buildCounterSuggestedInlineObjectProperties < 3) {
    o.inlineObjectProperties = buildInlineObjectProperties();
    o.inlineObjectPropertiesSuggestionState =
        buildInlineObjectPropertiesSuggestionState();
  }
  buildCounterSuggestedInlineObjectProperties--;
  return o;
}

checkSuggestedInlineObjectProperties(api.SuggestedInlineObjectProperties o) {
  buildCounterSuggestedInlineObjectProperties++;
  if (buildCounterSuggestedInlineObjectProperties < 3) {
    checkInlineObjectProperties(o.inlineObjectProperties);
    checkInlineObjectPropertiesSuggestionState(
        o.inlineObjectPropertiesSuggestionState);
  }
  buildCounterSuggestedInlineObjectProperties--;
}

core.int buildCounterSuggestedListProperties = 0;
buildSuggestedListProperties() {
  var o = new api.SuggestedListProperties();
  buildCounterSuggestedListProperties++;
  if (buildCounterSuggestedListProperties < 3) {
    o.listProperties = buildListProperties();
    o.listPropertiesSuggestionState = buildListPropertiesSuggestionState();
  }
  buildCounterSuggestedListProperties--;
  return o;
}

checkSuggestedListProperties(api.SuggestedListProperties o) {
  buildCounterSuggestedListProperties++;
  if (buildCounterSuggestedListProperties < 3) {
    checkListProperties(o.listProperties);
    checkListPropertiesSuggestionState(o.listPropertiesSuggestionState);
  }
  buildCounterSuggestedListProperties--;
}

core.int buildCounterSuggestedNamedStyles = 0;
buildSuggestedNamedStyles() {
  var o = new api.SuggestedNamedStyles();
  buildCounterSuggestedNamedStyles++;
  if (buildCounterSuggestedNamedStyles < 3) {
    o.namedStyles = buildNamedStyles();
    o.namedStylesSuggestionState = buildNamedStylesSuggestionState();
  }
  buildCounterSuggestedNamedStyles--;
  return o;
}

checkSuggestedNamedStyles(api.SuggestedNamedStyles o) {
  buildCounterSuggestedNamedStyles++;
  if (buildCounterSuggestedNamedStyles < 3) {
    checkNamedStyles(o.namedStyles);
    checkNamedStylesSuggestionState(o.namedStylesSuggestionState);
  }
  buildCounterSuggestedNamedStyles--;
}

core.int buildCounterSuggestedParagraphStyle = 0;
buildSuggestedParagraphStyle() {
  var o = new api.SuggestedParagraphStyle();
  buildCounterSuggestedParagraphStyle++;
  if (buildCounterSuggestedParagraphStyle < 3) {
    o.paragraphStyle = buildParagraphStyle();
    o.paragraphStyleSuggestionState = buildParagraphStyleSuggestionState();
  }
  buildCounterSuggestedParagraphStyle--;
  return o;
}

checkSuggestedParagraphStyle(api.SuggestedParagraphStyle o) {
  buildCounterSuggestedParagraphStyle++;
  if (buildCounterSuggestedParagraphStyle < 3) {
    checkParagraphStyle(o.paragraphStyle);
    checkParagraphStyleSuggestionState(o.paragraphStyleSuggestionState);
  }
  buildCounterSuggestedParagraphStyle--;
}

core.int buildCounterSuggestedPositionedObjectProperties = 0;
buildSuggestedPositionedObjectProperties() {
  var o = new api.SuggestedPositionedObjectProperties();
  buildCounterSuggestedPositionedObjectProperties++;
  if (buildCounterSuggestedPositionedObjectProperties < 3) {
    o.positionedObjectProperties = buildPositionedObjectProperties();
    o.positionedObjectPropertiesSuggestionState =
        buildPositionedObjectPropertiesSuggestionState();
  }
  buildCounterSuggestedPositionedObjectProperties--;
  return o;
}

checkSuggestedPositionedObjectProperties(
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
buildSuggestedTableCellStyle() {
  var o = new api.SuggestedTableCellStyle();
  buildCounterSuggestedTableCellStyle++;
  if (buildCounterSuggestedTableCellStyle < 3) {
    o.tableCellStyle = buildTableCellStyle();
    o.tableCellStyleSuggestionState = buildTableCellStyleSuggestionState();
  }
  buildCounterSuggestedTableCellStyle--;
  return o;
}

checkSuggestedTableCellStyle(api.SuggestedTableCellStyle o) {
  buildCounterSuggestedTableCellStyle++;
  if (buildCounterSuggestedTableCellStyle < 3) {
    checkTableCellStyle(o.tableCellStyle);
    checkTableCellStyleSuggestionState(o.tableCellStyleSuggestionState);
  }
  buildCounterSuggestedTableCellStyle--;
}

core.int buildCounterSuggestedTableRowStyle = 0;
buildSuggestedTableRowStyle() {
  var o = new api.SuggestedTableRowStyle();
  buildCounterSuggestedTableRowStyle++;
  if (buildCounterSuggestedTableRowStyle < 3) {
    o.tableRowStyle = buildTableRowStyle();
    o.tableRowStyleSuggestionState = buildTableRowStyleSuggestionState();
  }
  buildCounterSuggestedTableRowStyle--;
  return o;
}

checkSuggestedTableRowStyle(api.SuggestedTableRowStyle o) {
  buildCounterSuggestedTableRowStyle++;
  if (buildCounterSuggestedTableRowStyle < 3) {
    checkTableRowStyle(o.tableRowStyle);
    checkTableRowStyleSuggestionState(o.tableRowStyleSuggestionState);
  }
  buildCounterSuggestedTableRowStyle--;
}

core.int buildCounterSuggestedTextStyle = 0;
buildSuggestedTextStyle() {
  var o = new api.SuggestedTextStyle();
  buildCounterSuggestedTextStyle++;
  if (buildCounterSuggestedTextStyle < 3) {
    o.textStyle = buildTextStyle();
    o.textStyleSuggestionState = buildTextStyleSuggestionState();
  }
  buildCounterSuggestedTextStyle--;
  return o;
}

checkSuggestedTextStyle(api.SuggestedTextStyle o) {
  buildCounterSuggestedTextStyle++;
  if (buildCounterSuggestedTextStyle < 3) {
    checkTextStyle(o.textStyle);
    checkTextStyleSuggestionState(o.textStyleSuggestionState);
  }
  buildCounterSuggestedTextStyle--;
}

core.int buildCounterTabStop = 0;
buildTabStop() {
  var o = new api.TabStop();
  buildCounterTabStop++;
  if (buildCounterTabStop < 3) {
    o.alignment = "foo";
    o.offset = buildDimension();
  }
  buildCounterTabStop--;
  return o;
}

checkTabStop(api.TabStop o) {
  buildCounterTabStop++;
  if (buildCounterTabStop < 3) {
    unittest.expect(o.alignment, unittest.equals('foo'));
    checkDimension(o.offset);
  }
  buildCounterTabStop--;
}

buildUnnamed5803() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5803(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5804() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5804(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5805() {
  var o = new core.List<api.TableRow>();
  o.add(buildTableRow());
  o.add(buildTableRow());
  return o;
}

checkUnnamed5805(core.List<api.TableRow> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableRow(o[0]);
  checkTableRow(o[1]);
}

core.int buildCounterTable = 0;
buildTable() {
  var o = new api.Table();
  buildCounterTable++;
  if (buildCounterTable < 3) {
    o.columns = 42;
    o.rows = 42;
    o.suggestedDeletionIds = buildUnnamed5803();
    o.suggestedInsertionIds = buildUnnamed5804();
    o.tableRows = buildUnnamed5805();
    o.tableStyle = buildTableStyle();
  }
  buildCounterTable--;
  return o;
}

checkTable(api.Table o) {
  buildCounterTable++;
  if (buildCounterTable < 3) {
    unittest.expect(o.columns, unittest.equals(42));
    unittest.expect(o.rows, unittest.equals(42));
    checkUnnamed5803(o.suggestedDeletionIds);
    checkUnnamed5804(o.suggestedInsertionIds);
    checkUnnamed5805(o.tableRows);
    checkTableStyle(o.tableStyle);
  }
  buildCounterTable--;
}

buildUnnamed5806() {
  var o = new core.List<api.StructuralElement>();
  o.add(buildStructuralElement());
  o.add(buildStructuralElement());
  return o;
}

checkUnnamed5806(core.List<api.StructuralElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStructuralElement(o[0]);
  checkStructuralElement(o[1]);
}

buildUnnamed5807() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5807(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5808() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5808(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5809() {
  var o = new core.Map<core.String, api.SuggestedTableCellStyle>();
  o["x"] = buildSuggestedTableCellStyle();
  o["y"] = buildSuggestedTableCellStyle();
  return o;
}

checkUnnamed5809(core.Map<core.String, api.SuggestedTableCellStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTableCellStyle(o["x"]);
  checkSuggestedTableCellStyle(o["y"]);
}

core.int buildCounterTableCell = 0;
buildTableCell() {
  var o = new api.TableCell();
  buildCounterTableCell++;
  if (buildCounterTableCell < 3) {
    o.content = buildUnnamed5806();
    o.endIndex = 42;
    o.startIndex = 42;
    o.suggestedDeletionIds = buildUnnamed5807();
    o.suggestedInsertionIds = buildUnnamed5808();
    o.suggestedTableCellStyleChanges = buildUnnamed5809();
    o.tableCellStyle = buildTableCellStyle();
  }
  buildCounterTableCell--;
  return o;
}

checkTableCell(api.TableCell o) {
  buildCounterTableCell++;
  if (buildCounterTableCell < 3) {
    checkUnnamed5806(o.content);
    unittest.expect(o.endIndex, unittest.equals(42));
    unittest.expect(o.startIndex, unittest.equals(42));
    checkUnnamed5807(o.suggestedDeletionIds);
    checkUnnamed5808(o.suggestedInsertionIds);
    checkUnnamed5809(o.suggestedTableCellStyleChanges);
    checkTableCellStyle(o.tableCellStyle);
  }
  buildCounterTableCell--;
}

core.int buildCounterTableCellBorder = 0;
buildTableCellBorder() {
  var o = new api.TableCellBorder();
  buildCounterTableCellBorder++;
  if (buildCounterTableCellBorder < 3) {
    o.color = buildOptionalColor();
    o.dashStyle = "foo";
    o.width = buildDimension();
  }
  buildCounterTableCellBorder--;
  return o;
}

checkTableCellBorder(api.TableCellBorder o) {
  buildCounterTableCellBorder++;
  if (buildCounterTableCellBorder < 3) {
    checkOptionalColor(o.color);
    unittest.expect(o.dashStyle, unittest.equals('foo'));
    checkDimension(o.width);
  }
  buildCounterTableCellBorder--;
}

core.int buildCounterTableCellLocation = 0;
buildTableCellLocation() {
  var o = new api.TableCellLocation();
  buildCounterTableCellLocation++;
  if (buildCounterTableCellLocation < 3) {
    o.columnIndex = 42;
    o.rowIndex = 42;
    o.tableStartLocation = buildLocation();
  }
  buildCounterTableCellLocation--;
  return o;
}

checkTableCellLocation(api.TableCellLocation o) {
  buildCounterTableCellLocation++;
  if (buildCounterTableCellLocation < 3) {
    unittest.expect(o.columnIndex, unittest.equals(42));
    unittest.expect(o.rowIndex, unittest.equals(42));
    checkLocation(o.tableStartLocation);
  }
  buildCounterTableCellLocation--;
}

core.int buildCounterTableCellStyle = 0;
buildTableCellStyle() {
  var o = new api.TableCellStyle();
  buildCounterTableCellStyle++;
  if (buildCounterTableCellStyle < 3) {
    o.backgroundColor = buildOptionalColor();
    o.borderBottom = buildTableCellBorder();
    o.borderLeft = buildTableCellBorder();
    o.borderRight = buildTableCellBorder();
    o.borderTop = buildTableCellBorder();
    o.columnSpan = 42;
    o.contentAlignment = "foo";
    o.paddingBottom = buildDimension();
    o.paddingLeft = buildDimension();
    o.paddingRight = buildDimension();
    o.paddingTop = buildDimension();
    o.rowSpan = 42;
  }
  buildCounterTableCellStyle--;
  return o;
}

checkTableCellStyle(api.TableCellStyle o) {
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
buildTableCellStyleSuggestionState() {
  var o = new api.TableCellStyleSuggestionState();
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

checkTableCellStyleSuggestionState(api.TableCellStyleSuggestionState o) {
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
buildTableColumnProperties() {
  var o = new api.TableColumnProperties();
  buildCounterTableColumnProperties++;
  if (buildCounterTableColumnProperties < 3) {
    o.width = buildDimension();
    o.widthType = "foo";
  }
  buildCounterTableColumnProperties--;
  return o;
}

checkTableColumnProperties(api.TableColumnProperties o) {
  buildCounterTableColumnProperties++;
  if (buildCounterTableColumnProperties < 3) {
    checkDimension(o.width);
    unittest.expect(o.widthType, unittest.equals('foo'));
  }
  buildCounterTableColumnProperties--;
}

buildUnnamed5810() {
  var o = new core.List<api.StructuralElement>();
  o.add(buildStructuralElement());
  o.add(buildStructuralElement());
  return o;
}

checkUnnamed5810(core.List<api.StructuralElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStructuralElement(o[0]);
  checkStructuralElement(o[1]);
}

buildUnnamed5811() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5811(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5812() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5812(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTableOfContents = 0;
buildTableOfContents() {
  var o = new api.TableOfContents();
  buildCounterTableOfContents++;
  if (buildCounterTableOfContents < 3) {
    o.content = buildUnnamed5810();
    o.suggestedDeletionIds = buildUnnamed5811();
    o.suggestedInsertionIds = buildUnnamed5812();
  }
  buildCounterTableOfContents--;
  return o;
}

checkTableOfContents(api.TableOfContents o) {
  buildCounterTableOfContents++;
  if (buildCounterTableOfContents < 3) {
    checkUnnamed5810(o.content);
    checkUnnamed5811(o.suggestedDeletionIds);
    checkUnnamed5812(o.suggestedInsertionIds);
  }
  buildCounterTableOfContents--;
}

core.int buildCounterTableRange = 0;
buildTableRange() {
  var o = new api.TableRange();
  buildCounterTableRange++;
  if (buildCounterTableRange < 3) {
    o.columnSpan = 42;
    o.rowSpan = 42;
    o.tableCellLocation = buildTableCellLocation();
  }
  buildCounterTableRange--;
  return o;
}

checkTableRange(api.TableRange o) {
  buildCounterTableRange++;
  if (buildCounterTableRange < 3) {
    unittest.expect(o.columnSpan, unittest.equals(42));
    unittest.expect(o.rowSpan, unittest.equals(42));
    checkTableCellLocation(o.tableCellLocation);
  }
  buildCounterTableRange--;
}

buildUnnamed5813() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5813(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5814() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5814(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5815() {
  var o = new core.Map<core.String, api.SuggestedTableRowStyle>();
  o["x"] = buildSuggestedTableRowStyle();
  o["y"] = buildSuggestedTableRowStyle();
  return o;
}

checkUnnamed5815(core.Map<core.String, api.SuggestedTableRowStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTableRowStyle(o["x"]);
  checkSuggestedTableRowStyle(o["y"]);
}

buildUnnamed5816() {
  var o = new core.List<api.TableCell>();
  o.add(buildTableCell());
  o.add(buildTableCell());
  return o;
}

checkUnnamed5816(core.List<api.TableCell> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableCell(o[0]);
  checkTableCell(o[1]);
}

core.int buildCounterTableRow = 0;
buildTableRow() {
  var o = new api.TableRow();
  buildCounterTableRow++;
  if (buildCounterTableRow < 3) {
    o.endIndex = 42;
    o.startIndex = 42;
    o.suggestedDeletionIds = buildUnnamed5813();
    o.suggestedInsertionIds = buildUnnamed5814();
    o.suggestedTableRowStyleChanges = buildUnnamed5815();
    o.tableCells = buildUnnamed5816();
    o.tableRowStyle = buildTableRowStyle();
  }
  buildCounterTableRow--;
  return o;
}

checkTableRow(api.TableRow o) {
  buildCounterTableRow++;
  if (buildCounterTableRow < 3) {
    unittest.expect(o.endIndex, unittest.equals(42));
    unittest.expect(o.startIndex, unittest.equals(42));
    checkUnnamed5813(o.suggestedDeletionIds);
    checkUnnamed5814(o.suggestedInsertionIds);
    checkUnnamed5815(o.suggestedTableRowStyleChanges);
    checkUnnamed5816(o.tableCells);
    checkTableRowStyle(o.tableRowStyle);
  }
  buildCounterTableRow--;
}

core.int buildCounterTableRowStyle = 0;
buildTableRowStyle() {
  var o = new api.TableRowStyle();
  buildCounterTableRowStyle++;
  if (buildCounterTableRowStyle < 3) {
    o.minRowHeight = buildDimension();
  }
  buildCounterTableRowStyle--;
  return o;
}

checkTableRowStyle(api.TableRowStyle o) {
  buildCounterTableRowStyle++;
  if (buildCounterTableRowStyle < 3) {
    checkDimension(o.minRowHeight);
  }
  buildCounterTableRowStyle--;
}

core.int buildCounterTableRowStyleSuggestionState = 0;
buildTableRowStyleSuggestionState() {
  var o = new api.TableRowStyleSuggestionState();
  buildCounterTableRowStyleSuggestionState++;
  if (buildCounterTableRowStyleSuggestionState < 3) {
    o.minRowHeightSuggested = true;
  }
  buildCounterTableRowStyleSuggestionState--;
  return o;
}

checkTableRowStyleSuggestionState(api.TableRowStyleSuggestionState o) {
  buildCounterTableRowStyleSuggestionState++;
  if (buildCounterTableRowStyleSuggestionState < 3) {
    unittest.expect(o.minRowHeightSuggested, unittest.isTrue);
  }
  buildCounterTableRowStyleSuggestionState--;
}

buildUnnamed5817() {
  var o = new core.List<api.TableColumnProperties>();
  o.add(buildTableColumnProperties());
  o.add(buildTableColumnProperties());
  return o;
}

checkUnnamed5817(core.List<api.TableColumnProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableColumnProperties(o[0]);
  checkTableColumnProperties(o[1]);
}

core.int buildCounterTableStyle = 0;
buildTableStyle() {
  var o = new api.TableStyle();
  buildCounterTableStyle++;
  if (buildCounterTableStyle < 3) {
    o.tableColumnProperties = buildUnnamed5817();
  }
  buildCounterTableStyle--;
  return o;
}

checkTableStyle(api.TableStyle o) {
  buildCounterTableStyle++;
  if (buildCounterTableStyle < 3) {
    checkUnnamed5817(o.tableColumnProperties);
  }
  buildCounterTableStyle--;
}

buildUnnamed5818() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5818(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5819() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed5819(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed5820() {
  var o = new core.Map<core.String, api.SuggestedTextStyle>();
  o["x"] = buildSuggestedTextStyle();
  o["y"] = buildSuggestedTextStyle();
  return o;
}

checkUnnamed5820(core.Map<core.String, api.SuggestedTextStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTextStyle(o["x"]);
  checkSuggestedTextStyle(o["y"]);
}

core.int buildCounterTextRun = 0;
buildTextRun() {
  var o = new api.TextRun();
  buildCounterTextRun++;
  if (buildCounterTextRun < 3) {
    o.content = "foo";
    o.suggestedDeletionIds = buildUnnamed5818();
    o.suggestedInsertionIds = buildUnnamed5819();
    o.suggestedTextStyleChanges = buildUnnamed5820();
    o.textStyle = buildTextStyle();
  }
  buildCounterTextRun--;
  return o;
}

checkTextRun(api.TextRun o) {
  buildCounterTextRun++;
  if (buildCounterTextRun < 3) {
    unittest.expect(o.content, unittest.equals('foo'));
    checkUnnamed5818(o.suggestedDeletionIds);
    checkUnnamed5819(o.suggestedInsertionIds);
    checkUnnamed5820(o.suggestedTextStyleChanges);
    checkTextStyle(o.textStyle);
  }
  buildCounterTextRun--;
}

core.int buildCounterTextStyle = 0;
buildTextStyle() {
  var o = new api.TextStyle();
  buildCounterTextStyle++;
  if (buildCounterTextStyle < 3) {
    o.backgroundColor = buildOptionalColor();
    o.baselineOffset = "foo";
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

checkTextStyle(api.TextStyle o) {
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
buildTextStyleSuggestionState() {
  var o = new api.TextStyleSuggestionState();
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

checkTextStyleSuggestionState(api.TextStyleSuggestionState o) {
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
buildUnmergeTableCellsRequest() {
  var o = new api.UnmergeTableCellsRequest();
  buildCounterUnmergeTableCellsRequest++;
  if (buildCounterUnmergeTableCellsRequest < 3) {
    o.tableRange = buildTableRange();
  }
  buildCounterUnmergeTableCellsRequest--;
  return o;
}

checkUnmergeTableCellsRequest(api.UnmergeTableCellsRequest o) {
  buildCounterUnmergeTableCellsRequest++;
  if (buildCounterUnmergeTableCellsRequest < 3) {
    checkTableRange(o.tableRange);
  }
  buildCounterUnmergeTableCellsRequest--;
}

core.int buildCounterUpdateDocumentStyleRequest = 0;
buildUpdateDocumentStyleRequest() {
  var o = new api.UpdateDocumentStyleRequest();
  buildCounterUpdateDocumentStyleRequest++;
  if (buildCounterUpdateDocumentStyleRequest < 3) {
    o.documentStyle = buildDocumentStyle();
    o.fields = "foo";
  }
  buildCounterUpdateDocumentStyleRequest--;
  return o;
}

checkUpdateDocumentStyleRequest(api.UpdateDocumentStyleRequest o) {
  buildCounterUpdateDocumentStyleRequest++;
  if (buildCounterUpdateDocumentStyleRequest < 3) {
    checkDocumentStyle(o.documentStyle);
    unittest.expect(o.fields, unittest.equals('foo'));
  }
  buildCounterUpdateDocumentStyleRequest--;
}

core.int buildCounterUpdateParagraphStyleRequest = 0;
buildUpdateParagraphStyleRequest() {
  var o = new api.UpdateParagraphStyleRequest();
  buildCounterUpdateParagraphStyleRequest++;
  if (buildCounterUpdateParagraphStyleRequest < 3) {
    o.fields = "foo";
    o.paragraphStyle = buildParagraphStyle();
    o.range = buildRange();
  }
  buildCounterUpdateParagraphStyleRequest--;
  return o;
}

checkUpdateParagraphStyleRequest(api.UpdateParagraphStyleRequest o) {
  buildCounterUpdateParagraphStyleRequest++;
  if (buildCounterUpdateParagraphStyleRequest < 3) {
    unittest.expect(o.fields, unittest.equals('foo'));
    checkParagraphStyle(o.paragraphStyle);
    checkRange(o.range);
  }
  buildCounterUpdateParagraphStyleRequest--;
}

core.int buildCounterUpdateSectionStyleRequest = 0;
buildUpdateSectionStyleRequest() {
  var o = new api.UpdateSectionStyleRequest();
  buildCounterUpdateSectionStyleRequest++;
  if (buildCounterUpdateSectionStyleRequest < 3) {
    o.fields = "foo";
    o.range = buildRange();
    o.sectionStyle = buildSectionStyle();
  }
  buildCounterUpdateSectionStyleRequest--;
  return o;
}

checkUpdateSectionStyleRequest(api.UpdateSectionStyleRequest o) {
  buildCounterUpdateSectionStyleRequest++;
  if (buildCounterUpdateSectionStyleRequest < 3) {
    unittest.expect(o.fields, unittest.equals('foo'));
    checkRange(o.range);
    checkSectionStyle(o.sectionStyle);
  }
  buildCounterUpdateSectionStyleRequest--;
}

core.int buildCounterUpdateTableCellStyleRequest = 0;
buildUpdateTableCellStyleRequest() {
  var o = new api.UpdateTableCellStyleRequest();
  buildCounterUpdateTableCellStyleRequest++;
  if (buildCounterUpdateTableCellStyleRequest < 3) {
    o.fields = "foo";
    o.tableCellStyle = buildTableCellStyle();
    o.tableRange = buildTableRange();
    o.tableStartLocation = buildLocation();
  }
  buildCounterUpdateTableCellStyleRequest--;
  return o;
}

checkUpdateTableCellStyleRequest(api.UpdateTableCellStyleRequest o) {
  buildCounterUpdateTableCellStyleRequest++;
  if (buildCounterUpdateTableCellStyleRequest < 3) {
    unittest.expect(o.fields, unittest.equals('foo'));
    checkTableCellStyle(o.tableCellStyle);
    checkTableRange(o.tableRange);
    checkLocation(o.tableStartLocation);
  }
  buildCounterUpdateTableCellStyleRequest--;
}

buildUnnamed5821() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed5821(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterUpdateTableColumnPropertiesRequest = 0;
buildUpdateTableColumnPropertiesRequest() {
  var o = new api.UpdateTableColumnPropertiesRequest();
  buildCounterUpdateTableColumnPropertiesRequest++;
  if (buildCounterUpdateTableColumnPropertiesRequest < 3) {
    o.columnIndices = buildUnnamed5821();
    o.fields = "foo";
    o.tableColumnProperties = buildTableColumnProperties();
    o.tableStartLocation = buildLocation();
  }
  buildCounterUpdateTableColumnPropertiesRequest--;
  return o;
}

checkUpdateTableColumnPropertiesRequest(
    api.UpdateTableColumnPropertiesRequest o) {
  buildCounterUpdateTableColumnPropertiesRequest++;
  if (buildCounterUpdateTableColumnPropertiesRequest < 3) {
    checkUnnamed5821(o.columnIndices);
    unittest.expect(o.fields, unittest.equals('foo'));
    checkTableColumnProperties(o.tableColumnProperties);
    checkLocation(o.tableStartLocation);
  }
  buildCounterUpdateTableColumnPropertiesRequest--;
}

buildUnnamed5822() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed5822(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterUpdateTableRowStyleRequest = 0;
buildUpdateTableRowStyleRequest() {
  var o = new api.UpdateTableRowStyleRequest();
  buildCounterUpdateTableRowStyleRequest++;
  if (buildCounterUpdateTableRowStyleRequest < 3) {
    o.fields = "foo";
    o.rowIndices = buildUnnamed5822();
    o.tableRowStyle = buildTableRowStyle();
    o.tableStartLocation = buildLocation();
  }
  buildCounterUpdateTableRowStyleRequest--;
  return o;
}

checkUpdateTableRowStyleRequest(api.UpdateTableRowStyleRequest o) {
  buildCounterUpdateTableRowStyleRequest++;
  if (buildCounterUpdateTableRowStyleRequest < 3) {
    unittest.expect(o.fields, unittest.equals('foo'));
    checkUnnamed5822(o.rowIndices);
    checkTableRowStyle(o.tableRowStyle);
    checkLocation(o.tableStartLocation);
  }
  buildCounterUpdateTableRowStyleRequest--;
}

core.int buildCounterUpdateTextStyleRequest = 0;
buildUpdateTextStyleRequest() {
  var o = new api.UpdateTextStyleRequest();
  buildCounterUpdateTextStyleRequest++;
  if (buildCounterUpdateTextStyleRequest < 3) {
    o.fields = "foo";
    o.range = buildRange();
    o.textStyle = buildTextStyle();
  }
  buildCounterUpdateTextStyleRequest--;
  return o;
}

checkUpdateTextStyleRequest(api.UpdateTextStyleRequest o) {
  buildCounterUpdateTextStyleRequest++;
  if (buildCounterUpdateTextStyleRequest < 3) {
    unittest.expect(o.fields, unittest.equals('foo'));
    checkRange(o.range);
    checkTextStyle(o.textStyle);
  }
  buildCounterUpdateTextStyleRequest--;
}

core.int buildCounterWeightedFontFamily = 0;
buildWeightedFontFamily() {
  var o = new api.WeightedFontFamily();
  buildCounterWeightedFontFamily++;
  if (buildCounterWeightedFontFamily < 3) {
    o.fontFamily = "foo";
    o.weight = 42;
  }
  buildCounterWeightedFontFamily--;
  return o;
}

checkWeightedFontFamily(api.WeightedFontFamily o) {
  buildCounterWeightedFontFamily++;
  if (buildCounterWeightedFontFamily < 3) {
    unittest.expect(o.fontFamily, unittest.equals('foo'));
    unittest.expect(o.weight, unittest.equals(42));
  }
  buildCounterWeightedFontFamily--;
}

core.int buildCounterWriteControl = 0;
buildWriteControl() {
  var o = new api.WriteControl();
  buildCounterWriteControl++;
  if (buildCounterWriteControl < 3) {
    o.requiredRevisionId = "foo";
    o.targetRevisionId = "foo";
  }
  buildCounterWriteControl--;
  return o;
}

checkWriteControl(api.WriteControl o) {
  buildCounterWriteControl++;
  if (buildCounterWriteControl < 3) {
    unittest.expect(o.requiredRevisionId, unittest.equals('foo'));
    unittest.expect(o.targetRevisionId, unittest.equals('foo'));
  }
  buildCounterWriteControl--;
}

main() {
  unittest.group("obj-schema-AutoText", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutoText();
      var od = new api.AutoText.fromJson(o.toJson());
      checkAutoText(od);
    });
  });

  unittest.group("obj-schema-Background", () {
    unittest.test("to-json--from-json", () {
      var o = buildBackground();
      var od = new api.Background.fromJson(o.toJson());
      checkBackground(od);
    });
  });

  unittest.group("obj-schema-BackgroundSuggestionState", () {
    unittest.test("to-json--from-json", () {
      var o = buildBackgroundSuggestionState();
      var od = new api.BackgroundSuggestionState.fromJson(o.toJson());
      checkBackgroundSuggestionState(od);
    });
  });

  unittest.group("obj-schema-BatchUpdateDocumentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchUpdateDocumentRequest();
      var od = new api.BatchUpdateDocumentRequest.fromJson(o.toJson());
      checkBatchUpdateDocumentRequest(od);
    });
  });

  unittest.group("obj-schema-BatchUpdateDocumentResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchUpdateDocumentResponse();
      var od = new api.BatchUpdateDocumentResponse.fromJson(o.toJson());
      checkBatchUpdateDocumentResponse(od);
    });
  });

  unittest.group("obj-schema-Body", () {
    unittest.test("to-json--from-json", () {
      var o = buildBody();
      var od = new api.Body.fromJson(o.toJson());
      checkBody(od);
    });
  });

  unittest.group("obj-schema-Bullet", () {
    unittest.test("to-json--from-json", () {
      var o = buildBullet();
      var od = new api.Bullet.fromJson(o.toJson());
      checkBullet(od);
    });
  });

  unittest.group("obj-schema-BulletSuggestionState", () {
    unittest.test("to-json--from-json", () {
      var o = buildBulletSuggestionState();
      var od = new api.BulletSuggestionState.fromJson(o.toJson());
      checkBulletSuggestionState(od);
    });
  });

  unittest.group("obj-schema-Color", () {
    unittest.test("to-json--from-json", () {
      var o = buildColor();
      var od = new api.Color.fromJson(o.toJson());
      checkColor(od);
    });
  });

  unittest.group("obj-schema-ColumnBreak", () {
    unittest.test("to-json--from-json", () {
      var o = buildColumnBreak();
      var od = new api.ColumnBreak.fromJson(o.toJson());
      checkColumnBreak(od);
    });
  });

  unittest.group("obj-schema-CreateFooterRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateFooterRequest();
      var od = new api.CreateFooterRequest.fromJson(o.toJson());
      checkCreateFooterRequest(od);
    });
  });

  unittest.group("obj-schema-CreateFooterResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateFooterResponse();
      var od = new api.CreateFooterResponse.fromJson(o.toJson());
      checkCreateFooterResponse(od);
    });
  });

  unittest.group("obj-schema-CreateFootnoteRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateFootnoteRequest();
      var od = new api.CreateFootnoteRequest.fromJson(o.toJson());
      checkCreateFootnoteRequest(od);
    });
  });

  unittest.group("obj-schema-CreateFootnoteResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateFootnoteResponse();
      var od = new api.CreateFootnoteResponse.fromJson(o.toJson());
      checkCreateFootnoteResponse(od);
    });
  });

  unittest.group("obj-schema-CreateHeaderRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateHeaderRequest();
      var od = new api.CreateHeaderRequest.fromJson(o.toJson());
      checkCreateHeaderRequest(od);
    });
  });

  unittest.group("obj-schema-CreateHeaderResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateHeaderResponse();
      var od = new api.CreateHeaderResponse.fromJson(o.toJson());
      checkCreateHeaderResponse(od);
    });
  });

  unittest.group("obj-schema-CreateNamedRangeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateNamedRangeRequest();
      var od = new api.CreateNamedRangeRequest.fromJson(o.toJson());
      checkCreateNamedRangeRequest(od);
    });
  });

  unittest.group("obj-schema-CreateNamedRangeResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateNamedRangeResponse();
      var od = new api.CreateNamedRangeResponse.fromJson(o.toJson());
      checkCreateNamedRangeResponse(od);
    });
  });

  unittest.group("obj-schema-CreateParagraphBulletsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateParagraphBulletsRequest();
      var od = new api.CreateParagraphBulletsRequest.fromJson(o.toJson());
      checkCreateParagraphBulletsRequest(od);
    });
  });

  unittest.group("obj-schema-CropProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildCropProperties();
      var od = new api.CropProperties.fromJson(o.toJson());
      checkCropProperties(od);
    });
  });

  unittest.group("obj-schema-CropPropertiesSuggestionState", () {
    unittest.test("to-json--from-json", () {
      var o = buildCropPropertiesSuggestionState();
      var od = new api.CropPropertiesSuggestionState.fromJson(o.toJson());
      checkCropPropertiesSuggestionState(od);
    });
  });

  unittest.group("obj-schema-DeleteContentRangeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteContentRangeRequest();
      var od = new api.DeleteContentRangeRequest.fromJson(o.toJson());
      checkDeleteContentRangeRequest(od);
    });
  });

  unittest.group("obj-schema-DeleteFooterRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteFooterRequest();
      var od = new api.DeleteFooterRequest.fromJson(o.toJson());
      checkDeleteFooterRequest(od);
    });
  });

  unittest.group("obj-schema-DeleteHeaderRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteHeaderRequest();
      var od = new api.DeleteHeaderRequest.fromJson(o.toJson());
      checkDeleteHeaderRequest(od);
    });
  });

  unittest.group("obj-schema-DeleteNamedRangeRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteNamedRangeRequest();
      var od = new api.DeleteNamedRangeRequest.fromJson(o.toJson());
      checkDeleteNamedRangeRequest(od);
    });
  });

  unittest.group("obj-schema-DeleteParagraphBulletsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteParagraphBulletsRequest();
      var od = new api.DeleteParagraphBulletsRequest.fromJson(o.toJson());
      checkDeleteParagraphBulletsRequest(od);
    });
  });

  unittest.group("obj-schema-DeletePositionedObjectRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeletePositionedObjectRequest();
      var od = new api.DeletePositionedObjectRequest.fromJson(o.toJson());
      checkDeletePositionedObjectRequest(od);
    });
  });

  unittest.group("obj-schema-DeleteTableColumnRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteTableColumnRequest();
      var od = new api.DeleteTableColumnRequest.fromJson(o.toJson());
      checkDeleteTableColumnRequest(od);
    });
  });

  unittest.group("obj-schema-DeleteTableRowRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteTableRowRequest();
      var od = new api.DeleteTableRowRequest.fromJson(o.toJson());
      checkDeleteTableRowRequest(od);
    });
  });

  unittest.group("obj-schema-Dimension", () {
    unittest.test("to-json--from-json", () {
      var o = buildDimension();
      var od = new api.Dimension.fromJson(o.toJson());
      checkDimension(od);
    });
  });

  unittest.group("obj-schema-Document", () {
    unittest.test("to-json--from-json", () {
      var o = buildDocument();
      var od = new api.Document.fromJson(o.toJson());
      checkDocument(od);
    });
  });

  unittest.group("obj-schema-DocumentStyle", () {
    unittest.test("to-json--from-json", () {
      var o = buildDocumentStyle();
      var od = new api.DocumentStyle.fromJson(o.toJson());
      checkDocumentStyle(od);
    });
  });

  unittest.group("obj-schema-DocumentStyleSuggestionState", () {
    unittest.test("to-json--from-json", () {
      var o = buildDocumentStyleSuggestionState();
      var od = new api.DocumentStyleSuggestionState.fromJson(o.toJson());
      checkDocumentStyleSuggestionState(od);
    });
  });

  unittest.group("obj-schema-EmbeddedDrawingProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmbeddedDrawingProperties();
      var od = new api.EmbeddedDrawingProperties.fromJson(o.toJson());
      checkEmbeddedDrawingProperties(od);
    });
  });

  unittest.group("obj-schema-EmbeddedDrawingPropertiesSuggestionState", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmbeddedDrawingPropertiesSuggestionState();
      var od =
          new api.EmbeddedDrawingPropertiesSuggestionState.fromJson(o.toJson());
      checkEmbeddedDrawingPropertiesSuggestionState(od);
    });
  });

  unittest.group("obj-schema-EmbeddedObject", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmbeddedObject();
      var od = new api.EmbeddedObject.fromJson(o.toJson());
      checkEmbeddedObject(od);
    });
  });

  unittest.group("obj-schema-EmbeddedObjectBorder", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmbeddedObjectBorder();
      var od = new api.EmbeddedObjectBorder.fromJson(o.toJson());
      checkEmbeddedObjectBorder(od);
    });
  });

  unittest.group("obj-schema-EmbeddedObjectBorderSuggestionState", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmbeddedObjectBorderSuggestionState();
      var od = new api.EmbeddedObjectBorderSuggestionState.fromJson(o.toJson());
      checkEmbeddedObjectBorderSuggestionState(od);
    });
  });

  unittest.group("obj-schema-EmbeddedObjectSuggestionState", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmbeddedObjectSuggestionState();
      var od = new api.EmbeddedObjectSuggestionState.fromJson(o.toJson());
      checkEmbeddedObjectSuggestionState(od);
    });
  });

  unittest.group("obj-schema-EndOfSegmentLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildEndOfSegmentLocation();
      var od = new api.EndOfSegmentLocation.fromJson(o.toJson());
      checkEndOfSegmentLocation(od);
    });
  });

  unittest.group("obj-schema-Equation", () {
    unittest.test("to-json--from-json", () {
      var o = buildEquation();
      var od = new api.Equation.fromJson(o.toJson());
      checkEquation(od);
    });
  });

  unittest.group("obj-schema-Footer", () {
    unittest.test("to-json--from-json", () {
      var o = buildFooter();
      var od = new api.Footer.fromJson(o.toJson());
      checkFooter(od);
    });
  });

  unittest.group("obj-schema-Footnote", () {
    unittest.test("to-json--from-json", () {
      var o = buildFootnote();
      var od = new api.Footnote.fromJson(o.toJson());
      checkFootnote(od);
    });
  });

  unittest.group("obj-schema-FootnoteReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildFootnoteReference();
      var od = new api.FootnoteReference.fromJson(o.toJson());
      checkFootnoteReference(od);
    });
  });

  unittest.group("obj-schema-Header", () {
    unittest.test("to-json--from-json", () {
      var o = buildHeader();
      var od = new api.Header.fromJson(o.toJson());
      checkHeader(od);
    });
  });

  unittest.group("obj-schema-HorizontalRule", () {
    unittest.test("to-json--from-json", () {
      var o = buildHorizontalRule();
      var od = new api.HorizontalRule.fromJson(o.toJson());
      checkHorizontalRule(od);
    });
  });

  unittest.group("obj-schema-ImageProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildImageProperties();
      var od = new api.ImageProperties.fromJson(o.toJson());
      checkImageProperties(od);
    });
  });

  unittest.group("obj-schema-ImagePropertiesSuggestionState", () {
    unittest.test("to-json--from-json", () {
      var o = buildImagePropertiesSuggestionState();
      var od = new api.ImagePropertiesSuggestionState.fromJson(o.toJson());
      checkImagePropertiesSuggestionState(od);
    });
  });

  unittest.group("obj-schema-InlineObject", () {
    unittest.test("to-json--from-json", () {
      var o = buildInlineObject();
      var od = new api.InlineObject.fromJson(o.toJson());
      checkInlineObject(od);
    });
  });

  unittest.group("obj-schema-InlineObjectElement", () {
    unittest.test("to-json--from-json", () {
      var o = buildInlineObjectElement();
      var od = new api.InlineObjectElement.fromJson(o.toJson());
      checkInlineObjectElement(od);
    });
  });

  unittest.group("obj-schema-InlineObjectProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildInlineObjectProperties();
      var od = new api.InlineObjectProperties.fromJson(o.toJson());
      checkInlineObjectProperties(od);
    });
  });

  unittest.group("obj-schema-InlineObjectPropertiesSuggestionState", () {
    unittest.test("to-json--from-json", () {
      var o = buildInlineObjectPropertiesSuggestionState();
      var od =
          new api.InlineObjectPropertiesSuggestionState.fromJson(o.toJson());
      checkInlineObjectPropertiesSuggestionState(od);
    });
  });

  unittest.group("obj-schema-InsertInlineImageRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInsertInlineImageRequest();
      var od = new api.InsertInlineImageRequest.fromJson(o.toJson());
      checkInsertInlineImageRequest(od);
    });
  });

  unittest.group("obj-schema-InsertInlineImageResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildInsertInlineImageResponse();
      var od = new api.InsertInlineImageResponse.fromJson(o.toJson());
      checkInsertInlineImageResponse(od);
    });
  });

  unittest.group("obj-schema-InsertInlineSheetsChartResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildInsertInlineSheetsChartResponse();
      var od = new api.InsertInlineSheetsChartResponse.fromJson(o.toJson());
      checkInsertInlineSheetsChartResponse(od);
    });
  });

  unittest.group("obj-schema-InsertPageBreakRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInsertPageBreakRequest();
      var od = new api.InsertPageBreakRequest.fromJson(o.toJson());
      checkInsertPageBreakRequest(od);
    });
  });

  unittest.group("obj-schema-InsertSectionBreakRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInsertSectionBreakRequest();
      var od = new api.InsertSectionBreakRequest.fromJson(o.toJson());
      checkInsertSectionBreakRequest(od);
    });
  });

  unittest.group("obj-schema-InsertTableColumnRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInsertTableColumnRequest();
      var od = new api.InsertTableColumnRequest.fromJson(o.toJson());
      checkInsertTableColumnRequest(od);
    });
  });

  unittest.group("obj-schema-InsertTableRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInsertTableRequest();
      var od = new api.InsertTableRequest.fromJson(o.toJson());
      checkInsertTableRequest(od);
    });
  });

  unittest.group("obj-schema-InsertTableRowRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInsertTableRowRequest();
      var od = new api.InsertTableRowRequest.fromJson(o.toJson());
      checkInsertTableRowRequest(od);
    });
  });

  unittest.group("obj-schema-InsertTextRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildInsertTextRequest();
      var od = new api.InsertTextRequest.fromJson(o.toJson());
      checkInsertTextRequest(od);
    });
  });

  unittest.group("obj-schema-Link", () {
    unittest.test("to-json--from-json", () {
      var o = buildLink();
      var od = new api.Link.fromJson(o.toJson());
      checkLink(od);
    });
  });

  unittest.group("obj-schema-LinkedContentReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildLinkedContentReference();
      var od = new api.LinkedContentReference.fromJson(o.toJson());
      checkLinkedContentReference(od);
    });
  });

  unittest.group("obj-schema-LinkedContentReferenceSuggestionState", () {
    unittest.test("to-json--from-json", () {
      var o = buildLinkedContentReferenceSuggestionState();
      var od =
          new api.LinkedContentReferenceSuggestionState.fromJson(o.toJson());
      checkLinkedContentReferenceSuggestionState(od);
    });
  });

  unittest.group("obj-schema-List", () {
    unittest.test("to-json--from-json", () {
      var o = buildList();
      var od = new api.List.fromJson(o.toJson());
      checkList(od);
    });
  });

  unittest.group("obj-schema-ListProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildListProperties();
      var od = new api.ListProperties.fromJson(o.toJson());
      checkListProperties(od);
    });
  });

  unittest.group("obj-schema-ListPropertiesSuggestionState", () {
    unittest.test("to-json--from-json", () {
      var o = buildListPropertiesSuggestionState();
      var od = new api.ListPropertiesSuggestionState.fromJson(o.toJson());
      checkListPropertiesSuggestionState(od);
    });
  });

  unittest.group("obj-schema-Location", () {
    unittest.test("to-json--from-json", () {
      var o = buildLocation();
      var od = new api.Location.fromJson(o.toJson());
      checkLocation(od);
    });
  });

  unittest.group("obj-schema-MergeTableCellsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildMergeTableCellsRequest();
      var od = new api.MergeTableCellsRequest.fromJson(o.toJson());
      checkMergeTableCellsRequest(od);
    });
  });

  unittest.group("obj-schema-NamedRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildNamedRange();
      var od = new api.NamedRange.fromJson(o.toJson());
      checkNamedRange(od);
    });
  });

  unittest.group("obj-schema-NamedRanges", () {
    unittest.test("to-json--from-json", () {
      var o = buildNamedRanges();
      var od = new api.NamedRanges.fromJson(o.toJson());
      checkNamedRanges(od);
    });
  });

  unittest.group("obj-schema-NamedStyle", () {
    unittest.test("to-json--from-json", () {
      var o = buildNamedStyle();
      var od = new api.NamedStyle.fromJson(o.toJson());
      checkNamedStyle(od);
    });
  });

  unittest.group("obj-schema-NamedStyleSuggestionState", () {
    unittest.test("to-json--from-json", () {
      var o = buildNamedStyleSuggestionState();
      var od = new api.NamedStyleSuggestionState.fromJson(o.toJson());
      checkNamedStyleSuggestionState(od);
    });
  });

  unittest.group("obj-schema-NamedStyles", () {
    unittest.test("to-json--from-json", () {
      var o = buildNamedStyles();
      var od = new api.NamedStyles.fromJson(o.toJson());
      checkNamedStyles(od);
    });
  });

  unittest.group("obj-schema-NamedStylesSuggestionState", () {
    unittest.test("to-json--from-json", () {
      var o = buildNamedStylesSuggestionState();
      var od = new api.NamedStylesSuggestionState.fromJson(o.toJson());
      checkNamedStylesSuggestionState(od);
    });
  });

  unittest.group("obj-schema-NestingLevel", () {
    unittest.test("to-json--from-json", () {
      var o = buildNestingLevel();
      var od = new api.NestingLevel.fromJson(o.toJson());
      checkNestingLevel(od);
    });
  });

  unittest.group("obj-schema-NestingLevelSuggestionState", () {
    unittest.test("to-json--from-json", () {
      var o = buildNestingLevelSuggestionState();
      var od = new api.NestingLevelSuggestionState.fromJson(o.toJson());
      checkNestingLevelSuggestionState(od);
    });
  });

  unittest.group("obj-schema-ObjectReferences", () {
    unittest.test("to-json--from-json", () {
      var o = buildObjectReferences();
      var od = new api.ObjectReferences.fromJson(o.toJson());
      checkObjectReferences(od);
    });
  });

  unittest.group("obj-schema-OptionalColor", () {
    unittest.test("to-json--from-json", () {
      var o = buildOptionalColor();
      var od = new api.OptionalColor.fromJson(o.toJson());
      checkOptionalColor(od);
    });
  });

  unittest.group("obj-schema-PageBreak", () {
    unittest.test("to-json--from-json", () {
      var o = buildPageBreak();
      var od = new api.PageBreak.fromJson(o.toJson());
      checkPageBreak(od);
    });
  });

  unittest.group("obj-schema-Paragraph", () {
    unittest.test("to-json--from-json", () {
      var o = buildParagraph();
      var od = new api.Paragraph.fromJson(o.toJson());
      checkParagraph(od);
    });
  });

  unittest.group("obj-schema-ParagraphBorder", () {
    unittest.test("to-json--from-json", () {
      var o = buildParagraphBorder();
      var od = new api.ParagraphBorder.fromJson(o.toJson());
      checkParagraphBorder(od);
    });
  });

  unittest.group("obj-schema-ParagraphElement", () {
    unittest.test("to-json--from-json", () {
      var o = buildParagraphElement();
      var od = new api.ParagraphElement.fromJson(o.toJson());
      checkParagraphElement(od);
    });
  });

  unittest.group("obj-schema-ParagraphStyle", () {
    unittest.test("to-json--from-json", () {
      var o = buildParagraphStyle();
      var od = new api.ParagraphStyle.fromJson(o.toJson());
      checkParagraphStyle(od);
    });
  });

  unittest.group("obj-schema-ParagraphStyleSuggestionState", () {
    unittest.test("to-json--from-json", () {
      var o = buildParagraphStyleSuggestionState();
      var od = new api.ParagraphStyleSuggestionState.fromJson(o.toJson());
      checkParagraphStyleSuggestionState(od);
    });
  });

  unittest.group("obj-schema-PositionedObject", () {
    unittest.test("to-json--from-json", () {
      var o = buildPositionedObject();
      var od = new api.PositionedObject.fromJson(o.toJson());
      checkPositionedObject(od);
    });
  });

  unittest.group("obj-schema-PositionedObjectPositioning", () {
    unittest.test("to-json--from-json", () {
      var o = buildPositionedObjectPositioning();
      var od = new api.PositionedObjectPositioning.fromJson(o.toJson());
      checkPositionedObjectPositioning(od);
    });
  });

  unittest.group("obj-schema-PositionedObjectPositioningSuggestionState", () {
    unittest.test("to-json--from-json", () {
      var o = buildPositionedObjectPositioningSuggestionState();
      var od = new api.PositionedObjectPositioningSuggestionState.fromJson(
          o.toJson());
      checkPositionedObjectPositioningSuggestionState(od);
    });
  });

  unittest.group("obj-schema-PositionedObjectProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildPositionedObjectProperties();
      var od = new api.PositionedObjectProperties.fromJson(o.toJson());
      checkPositionedObjectProperties(od);
    });
  });

  unittest.group("obj-schema-PositionedObjectPropertiesSuggestionState", () {
    unittest.test("to-json--from-json", () {
      var o = buildPositionedObjectPropertiesSuggestionState();
      var od = new api.PositionedObjectPropertiesSuggestionState.fromJson(
          o.toJson());
      checkPositionedObjectPropertiesSuggestionState(od);
    });
  });

  unittest.group("obj-schema-Range", () {
    unittest.test("to-json--from-json", () {
      var o = buildRange();
      var od = new api.Range.fromJson(o.toJson());
      checkRange(od);
    });
  });

  unittest.group("obj-schema-ReplaceAllTextRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildReplaceAllTextRequest();
      var od = new api.ReplaceAllTextRequest.fromJson(o.toJson());
      checkReplaceAllTextRequest(od);
    });
  });

  unittest.group("obj-schema-ReplaceAllTextResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildReplaceAllTextResponse();
      var od = new api.ReplaceAllTextResponse.fromJson(o.toJson());
      checkReplaceAllTextResponse(od);
    });
  });

  unittest.group("obj-schema-ReplaceImageRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildReplaceImageRequest();
      var od = new api.ReplaceImageRequest.fromJson(o.toJson());
      checkReplaceImageRequest(od);
    });
  });

  unittest.group("obj-schema-ReplaceNamedRangeContentRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildReplaceNamedRangeContentRequest();
      var od = new api.ReplaceNamedRangeContentRequest.fromJson(o.toJson());
      checkReplaceNamedRangeContentRequest(od);
    });
  });

  unittest.group("obj-schema-Request", () {
    unittest.test("to-json--from-json", () {
      var o = buildRequest();
      var od = new api.Request.fromJson(o.toJson());
      checkRequest(od);
    });
  });

  unittest.group("obj-schema-Response", () {
    unittest.test("to-json--from-json", () {
      var o = buildResponse();
      var od = new api.Response.fromJson(o.toJson());
      checkResponse(od);
    });
  });

  unittest.group("obj-schema-RgbColor", () {
    unittest.test("to-json--from-json", () {
      var o = buildRgbColor();
      var od = new api.RgbColor.fromJson(o.toJson());
      checkRgbColor(od);
    });
  });

  unittest.group("obj-schema-SectionBreak", () {
    unittest.test("to-json--from-json", () {
      var o = buildSectionBreak();
      var od = new api.SectionBreak.fromJson(o.toJson());
      checkSectionBreak(od);
    });
  });

  unittest.group("obj-schema-SectionColumnProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildSectionColumnProperties();
      var od = new api.SectionColumnProperties.fromJson(o.toJson());
      checkSectionColumnProperties(od);
    });
  });

  unittest.group("obj-schema-SectionStyle", () {
    unittest.test("to-json--from-json", () {
      var o = buildSectionStyle();
      var od = new api.SectionStyle.fromJson(o.toJson());
      checkSectionStyle(od);
    });
  });

  unittest.group("obj-schema-Shading", () {
    unittest.test("to-json--from-json", () {
      var o = buildShading();
      var od = new api.Shading.fromJson(o.toJson());
      checkShading(od);
    });
  });

  unittest.group("obj-schema-ShadingSuggestionState", () {
    unittest.test("to-json--from-json", () {
      var o = buildShadingSuggestionState();
      var od = new api.ShadingSuggestionState.fromJson(o.toJson());
      checkShadingSuggestionState(od);
    });
  });

  unittest.group("obj-schema-SheetsChartReference", () {
    unittest.test("to-json--from-json", () {
      var o = buildSheetsChartReference();
      var od = new api.SheetsChartReference.fromJson(o.toJson());
      checkSheetsChartReference(od);
    });
  });

  unittest.group("obj-schema-SheetsChartReferenceSuggestionState", () {
    unittest.test("to-json--from-json", () {
      var o = buildSheetsChartReferenceSuggestionState();
      var od = new api.SheetsChartReferenceSuggestionState.fromJson(o.toJson());
      checkSheetsChartReferenceSuggestionState(od);
    });
  });

  unittest.group("obj-schema-Size", () {
    unittest.test("to-json--from-json", () {
      var o = buildSize();
      var od = new api.Size.fromJson(o.toJson());
      checkSize(od);
    });
  });

  unittest.group("obj-schema-SizeSuggestionState", () {
    unittest.test("to-json--from-json", () {
      var o = buildSizeSuggestionState();
      var od = new api.SizeSuggestionState.fromJson(o.toJson());
      checkSizeSuggestionState(od);
    });
  });

  unittest.group("obj-schema-StructuralElement", () {
    unittest.test("to-json--from-json", () {
      var o = buildStructuralElement();
      var od = new api.StructuralElement.fromJson(o.toJson());
      checkStructuralElement(od);
    });
  });

  unittest.group("obj-schema-SubstringMatchCriteria", () {
    unittest.test("to-json--from-json", () {
      var o = buildSubstringMatchCriteria();
      var od = new api.SubstringMatchCriteria.fromJson(o.toJson());
      checkSubstringMatchCriteria(od);
    });
  });

  unittest.group("obj-schema-SuggestedBullet", () {
    unittest.test("to-json--from-json", () {
      var o = buildSuggestedBullet();
      var od = new api.SuggestedBullet.fromJson(o.toJson());
      checkSuggestedBullet(od);
    });
  });

  unittest.group("obj-schema-SuggestedDocumentStyle", () {
    unittest.test("to-json--from-json", () {
      var o = buildSuggestedDocumentStyle();
      var od = new api.SuggestedDocumentStyle.fromJson(o.toJson());
      checkSuggestedDocumentStyle(od);
    });
  });

  unittest.group("obj-schema-SuggestedInlineObjectProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildSuggestedInlineObjectProperties();
      var od = new api.SuggestedInlineObjectProperties.fromJson(o.toJson());
      checkSuggestedInlineObjectProperties(od);
    });
  });

  unittest.group("obj-schema-SuggestedListProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildSuggestedListProperties();
      var od = new api.SuggestedListProperties.fromJson(o.toJson());
      checkSuggestedListProperties(od);
    });
  });

  unittest.group("obj-schema-SuggestedNamedStyles", () {
    unittest.test("to-json--from-json", () {
      var o = buildSuggestedNamedStyles();
      var od = new api.SuggestedNamedStyles.fromJson(o.toJson());
      checkSuggestedNamedStyles(od);
    });
  });

  unittest.group("obj-schema-SuggestedParagraphStyle", () {
    unittest.test("to-json--from-json", () {
      var o = buildSuggestedParagraphStyle();
      var od = new api.SuggestedParagraphStyle.fromJson(o.toJson());
      checkSuggestedParagraphStyle(od);
    });
  });

  unittest.group("obj-schema-SuggestedPositionedObjectProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildSuggestedPositionedObjectProperties();
      var od = new api.SuggestedPositionedObjectProperties.fromJson(o.toJson());
      checkSuggestedPositionedObjectProperties(od);
    });
  });

  unittest.group("obj-schema-SuggestedTableCellStyle", () {
    unittest.test("to-json--from-json", () {
      var o = buildSuggestedTableCellStyle();
      var od = new api.SuggestedTableCellStyle.fromJson(o.toJson());
      checkSuggestedTableCellStyle(od);
    });
  });

  unittest.group("obj-schema-SuggestedTableRowStyle", () {
    unittest.test("to-json--from-json", () {
      var o = buildSuggestedTableRowStyle();
      var od = new api.SuggestedTableRowStyle.fromJson(o.toJson());
      checkSuggestedTableRowStyle(od);
    });
  });

  unittest.group("obj-schema-SuggestedTextStyle", () {
    unittest.test("to-json--from-json", () {
      var o = buildSuggestedTextStyle();
      var od = new api.SuggestedTextStyle.fromJson(o.toJson());
      checkSuggestedTextStyle(od);
    });
  });

  unittest.group("obj-schema-TabStop", () {
    unittest.test("to-json--from-json", () {
      var o = buildTabStop();
      var od = new api.TabStop.fromJson(o.toJson());
      checkTabStop(od);
    });
  });

  unittest.group("obj-schema-Table", () {
    unittest.test("to-json--from-json", () {
      var o = buildTable();
      var od = new api.Table.fromJson(o.toJson());
      checkTable(od);
    });
  });

  unittest.group("obj-schema-TableCell", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableCell();
      var od = new api.TableCell.fromJson(o.toJson());
      checkTableCell(od);
    });
  });

  unittest.group("obj-schema-TableCellBorder", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableCellBorder();
      var od = new api.TableCellBorder.fromJson(o.toJson());
      checkTableCellBorder(od);
    });
  });

  unittest.group("obj-schema-TableCellLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableCellLocation();
      var od = new api.TableCellLocation.fromJson(o.toJson());
      checkTableCellLocation(od);
    });
  });

  unittest.group("obj-schema-TableCellStyle", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableCellStyle();
      var od = new api.TableCellStyle.fromJson(o.toJson());
      checkTableCellStyle(od);
    });
  });

  unittest.group("obj-schema-TableCellStyleSuggestionState", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableCellStyleSuggestionState();
      var od = new api.TableCellStyleSuggestionState.fromJson(o.toJson());
      checkTableCellStyleSuggestionState(od);
    });
  });

  unittest.group("obj-schema-TableColumnProperties", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableColumnProperties();
      var od = new api.TableColumnProperties.fromJson(o.toJson());
      checkTableColumnProperties(od);
    });
  });

  unittest.group("obj-schema-TableOfContents", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableOfContents();
      var od = new api.TableOfContents.fromJson(o.toJson());
      checkTableOfContents(od);
    });
  });

  unittest.group("obj-schema-TableRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableRange();
      var od = new api.TableRange.fromJson(o.toJson());
      checkTableRange(od);
    });
  });

  unittest.group("obj-schema-TableRow", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableRow();
      var od = new api.TableRow.fromJson(o.toJson());
      checkTableRow(od);
    });
  });

  unittest.group("obj-schema-TableRowStyle", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableRowStyle();
      var od = new api.TableRowStyle.fromJson(o.toJson());
      checkTableRowStyle(od);
    });
  });

  unittest.group("obj-schema-TableRowStyleSuggestionState", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableRowStyleSuggestionState();
      var od = new api.TableRowStyleSuggestionState.fromJson(o.toJson());
      checkTableRowStyleSuggestionState(od);
    });
  });

  unittest.group("obj-schema-TableStyle", () {
    unittest.test("to-json--from-json", () {
      var o = buildTableStyle();
      var od = new api.TableStyle.fromJson(o.toJson());
      checkTableStyle(od);
    });
  });

  unittest.group("obj-schema-TextRun", () {
    unittest.test("to-json--from-json", () {
      var o = buildTextRun();
      var od = new api.TextRun.fromJson(o.toJson());
      checkTextRun(od);
    });
  });

  unittest.group("obj-schema-TextStyle", () {
    unittest.test("to-json--from-json", () {
      var o = buildTextStyle();
      var od = new api.TextStyle.fromJson(o.toJson());
      checkTextStyle(od);
    });
  });

  unittest.group("obj-schema-TextStyleSuggestionState", () {
    unittest.test("to-json--from-json", () {
      var o = buildTextStyleSuggestionState();
      var od = new api.TextStyleSuggestionState.fromJson(o.toJson());
      checkTextStyleSuggestionState(od);
    });
  });

  unittest.group("obj-schema-UnmergeTableCellsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUnmergeTableCellsRequest();
      var od = new api.UnmergeTableCellsRequest.fromJson(o.toJson());
      checkUnmergeTableCellsRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateDocumentStyleRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateDocumentStyleRequest();
      var od = new api.UpdateDocumentStyleRequest.fromJson(o.toJson());
      checkUpdateDocumentStyleRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateParagraphStyleRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateParagraphStyleRequest();
      var od = new api.UpdateParagraphStyleRequest.fromJson(o.toJson());
      checkUpdateParagraphStyleRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateSectionStyleRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateSectionStyleRequest();
      var od = new api.UpdateSectionStyleRequest.fromJson(o.toJson());
      checkUpdateSectionStyleRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateTableCellStyleRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateTableCellStyleRequest();
      var od = new api.UpdateTableCellStyleRequest.fromJson(o.toJson());
      checkUpdateTableCellStyleRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateTableColumnPropertiesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateTableColumnPropertiesRequest();
      var od = new api.UpdateTableColumnPropertiesRequest.fromJson(o.toJson());
      checkUpdateTableColumnPropertiesRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateTableRowStyleRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateTableRowStyleRequest();
      var od = new api.UpdateTableRowStyleRequest.fromJson(o.toJson());
      checkUpdateTableRowStyleRequest(od);
    });
  });

  unittest.group("obj-schema-UpdateTextStyleRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildUpdateTextStyleRequest();
      var od = new api.UpdateTextStyleRequest.fromJson(o.toJson());
      checkUpdateTextStyleRequest(od);
    });
  });

  unittest.group("obj-schema-WeightedFontFamily", () {
    unittest.test("to-json--from-json", () {
      var o = buildWeightedFontFamily();
      var od = new api.WeightedFontFamily.fromJson(o.toJson());
      checkWeightedFontFamily(od);
    });
  });

  unittest.group("obj-schema-WriteControl", () {
    unittest.test("to-json--from-json", () {
      var o = buildWriteControl();
      var od = new api.WriteControl.fromJson(o.toJson());
      checkWriteControl(od);
    });
  });

  unittest.group("resource-DocumentsResourceApi", () {
    unittest.test("method--batchUpdate", () {
      var mock = new HttpServerMock();
      api.DocumentsResourceApi res = new api.DocsApi(mock).documents;
      var arg_request = buildBatchUpdateDocumentRequest();
      var arg_documentId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.BatchUpdateDocumentRequest.fromJson(json);
        checkBatchUpdateDocumentRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v1/documents/"));
        pathOffset += 13;
        index = path.indexOf(":batchUpdate", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_documentId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals(":batchUpdate"));
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildBatchUpdateDocumentResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .batchUpdate(arg_request, arg_documentId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkBatchUpdateDocumentResponse(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.DocumentsResourceApi res = new api.DocsApi(mock).documents;
      var arg_request = buildDocument();
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Document.fromJson(json);
        checkDocument(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 12),
            unittest.equals("v1/documents"));
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDocument());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDocument(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.DocumentsResourceApi res = new api.DocsApi(mock).documents;
      var arg_documentId = "foo";
      var arg_suggestionsViewMode = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("v1/documents/"));
        pathOffset += 13;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_documentId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["suggestionsViewMode"].first,
            unittest.equals(arg_suggestionsViewMode));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDocument());
        return new async.Future.value(stringResponse(200, h, resp));
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
