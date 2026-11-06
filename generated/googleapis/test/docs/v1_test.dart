// Copyright 2019 Google LLC
//
// Use of this source code is governed by a BSD-style
// license that can be found in the LICENSE file or at
// https://developers.google.com/open-source/licenses/bsd

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

import 'package:googleapis/docs/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAcceptSuggestionRequest = 0;
api.AcceptSuggestionRequest buildAcceptSuggestionRequest() {
  final o = api.AcceptSuggestionRequest();
  buildCounterAcceptSuggestionRequest++;
  if (buildCounterAcceptSuggestionRequest < 3) {
    o.suggestionId = 'foo';
  }
  buildCounterAcceptSuggestionRequest--;
  return o;
}

void checkAcceptSuggestionRequest(api.AcceptSuggestionRequest o) {
  buildCounterAcceptSuggestionRequest++;
  if (buildCounterAcceptSuggestionRequest < 3) {
    unittest.expect(o.suggestionId!, unittest.equals('foo'));
  }
  buildCounterAcceptSuggestionRequest--;
}

core.int buildCounterAddCommentReplyRequest = 0;
api.AddCommentReplyRequest buildAddCommentReplyRequest() {
  final o = api.AddCommentReplyRequest();
  buildCounterAddCommentReplyRequest++;
  if (buildCounterAddCommentReplyRequest < 3) {
    o.commentId = 'foo';
    o.post = buildPost();
    o.suggestionId = 'foo';
  }
  buildCounterAddCommentReplyRequest--;
  return o;
}

void checkAddCommentReplyRequest(api.AddCommentReplyRequest o) {
  buildCounterAddCommentReplyRequest++;
  if (buildCounterAddCommentReplyRequest < 3) {
    unittest.expect(o.commentId!, unittest.equals('foo'));
    checkPost(o.post!);
    unittest.expect(o.suggestionId!, unittest.equals('foo'));
  }
  buildCounterAddCommentReplyRequest--;
}

core.int buildCounterAddCommentReplyResponse = 0;
api.AddCommentReplyResponse buildAddCommentReplyResponse() {
  final o = api.AddCommentReplyResponse();
  buildCounterAddCommentReplyResponse++;
  if (buildCounterAddCommentReplyResponse < 3) {
    o.post = buildPost();
  }
  buildCounterAddCommentReplyResponse--;
  return o;
}

void checkAddCommentReplyResponse(api.AddCommentReplyResponse o) {
  buildCounterAddCommentReplyResponse++;
  if (buildCounterAddCommentReplyResponse < 3) {
    checkPost(o.post!);
  }
  buildCounterAddCommentReplyResponse--;
}

core.int buildCounterAddDocumentTabRequest = 0;
api.AddDocumentTabRequest buildAddDocumentTabRequest() {
  final o = api.AddDocumentTabRequest();
  buildCounterAddDocumentTabRequest++;
  if (buildCounterAddDocumentTabRequest < 3) {
    o.tabProperties = buildTabProperties();
  }
  buildCounterAddDocumentTabRequest--;
  return o;
}

void checkAddDocumentTabRequest(api.AddDocumentTabRequest o) {
  buildCounterAddDocumentTabRequest++;
  if (buildCounterAddDocumentTabRequest < 3) {
    checkTabProperties(o.tabProperties!);
  }
  buildCounterAddDocumentTabRequest--;
}

core.int buildCounterAddDocumentTabResponse = 0;
api.AddDocumentTabResponse buildAddDocumentTabResponse() {
  final o = api.AddDocumentTabResponse();
  buildCounterAddDocumentTabResponse++;
  if (buildCounterAddDocumentTabResponse < 3) {
    o.tabProperties = buildTabProperties();
  }
  buildCounterAddDocumentTabResponse--;
  return o;
}

void checkAddDocumentTabResponse(api.AddDocumentTabResponse o) {
  buildCounterAddDocumentTabResponse++;
  if (buildCounterAddDocumentTabResponse < 3) {
    checkTabProperties(o.tabProperties!);
  }
  buildCounterAddDocumentTabResponse--;
}

core.List<core.String> buildUnnamed0() => ['foo', 'foo'];

void checkUnnamed0(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.SuggestedTextStyle> buildUnnamed2() => {
  'x': buildSuggestedTextStyle(),
  'y': buildSuggestedTextStyle(),
};

void checkUnnamed2(core.Map<core.String, api.SuggestedTextStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTextStyle(o['x']!);
  checkSuggestedTextStyle(o['y']!);
}

core.int buildCounterAutoText = 0;
api.AutoText buildAutoText() {
  final o = api.AutoText();
  buildCounterAutoText++;
  if (buildCounterAutoText < 3) {
    o.suggestedDeletionIds = buildUnnamed0();
    o.suggestedInsertionIds = buildUnnamed1();
    o.suggestedTextStyleChanges = buildUnnamed2();
    o.textStyle = buildTextStyle();
    o.type = 'foo';
  }
  buildCounterAutoText--;
  return o;
}

void checkAutoText(api.AutoText o) {
  buildCounterAutoText++;
  if (buildCounterAutoText < 3) {
    checkUnnamed0(o.suggestedDeletionIds!);
    checkUnnamed1(o.suggestedInsertionIds!);
    checkUnnamed2(o.suggestedTextStyleChanges!);
    checkTextStyle(o.textStyle!);
    unittest.expect(o.type!, unittest.equals('foo'));
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

core.List<api.Request> buildUnnamed3() => [buildRequest(), buildRequest()];

void checkUnnamed3(core.List<api.Request> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRequest(o[0]);
  checkRequest(o[1]);
}

core.int buildCounterBatchUpdateDocumentRequest = 0;
api.BatchUpdateDocumentRequest buildBatchUpdateDocumentRequest() {
  final o = api.BatchUpdateDocumentRequest();
  buildCounterBatchUpdateDocumentRequest++;
  if (buildCounterBatchUpdateDocumentRequest < 3) {
    o.requests = buildUnnamed3();
    o.writeControl = buildWriteControl();
  }
  buildCounterBatchUpdateDocumentRequest--;
  return o;
}

void checkBatchUpdateDocumentRequest(api.BatchUpdateDocumentRequest o) {
  buildCounterBatchUpdateDocumentRequest++;
  if (buildCounterBatchUpdateDocumentRequest < 3) {
    checkUnnamed3(o.requests!);
    checkWriteControl(o.writeControl!);
  }
  buildCounterBatchUpdateDocumentRequest--;
}

core.List<api.Response> buildUnnamed4() => [buildResponse(), buildResponse()];

void checkUnnamed4(core.List<api.Response> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResponse(o[0]);
  checkResponse(o[1]);
}

core.List<api.SuggestionResponse> buildUnnamed5() => [
  buildSuggestionResponse(),
  buildSuggestionResponse(),
];

void checkUnnamed5(core.List<api.SuggestionResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestionResponse(o[0]);
  checkSuggestionResponse(o[1]);
}

core.int buildCounterBatchUpdateDocumentResponse = 0;
api.BatchUpdateDocumentResponse buildBatchUpdateDocumentResponse() {
  final o = api.BatchUpdateDocumentResponse();
  buildCounterBatchUpdateDocumentResponse++;
  if (buildCounterBatchUpdateDocumentResponse < 3) {
    o.commentUpdateState = 'foo';
    o.documentId = 'foo';
    o.replies = buildUnnamed4();
    o.suggestionResponses = buildUnnamed5();
    o.writeControl = buildWriteControl();
  }
  buildCounterBatchUpdateDocumentResponse--;
  return o;
}

void checkBatchUpdateDocumentResponse(api.BatchUpdateDocumentResponse o) {
  buildCounterBatchUpdateDocumentResponse++;
  if (buildCounterBatchUpdateDocumentResponse < 3) {
    unittest.expect(o.commentUpdateState!, unittest.equals('foo'));
    unittest.expect(o.documentId!, unittest.equals('foo'));
    checkUnnamed4(o.replies!);
    checkUnnamed5(o.suggestionResponses!);
    checkWriteControl(o.writeControl!);
  }
  buildCounterBatchUpdateDocumentResponse--;
}

core.List<api.StructuralElement> buildUnnamed6() => [
  buildStructuralElement(),
  buildStructuralElement(),
];

void checkUnnamed6(core.List<api.StructuralElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStructuralElement(o[0]);
  checkStructuralElement(o[1]);
}

core.int buildCounterBody = 0;
api.Body buildBody() {
  final o = api.Body();
  buildCounterBody++;
  if (buildCounterBody < 3) {
    o.content = buildUnnamed6();
  }
  buildCounterBody--;
  return o;
}

void checkBody(api.Body o) {
  buildCounterBody++;
  if (buildCounterBody < 3) {
    checkUnnamed6(o.content!);
  }
  buildCounterBody--;
}

core.int buildCounterBookmarkLink = 0;
api.BookmarkLink buildBookmarkLink() {
  final o = api.BookmarkLink();
  buildCounterBookmarkLink++;
  if (buildCounterBookmarkLink < 3) {
    o.id = 'foo';
    o.tabId = 'foo';
  }
  buildCounterBookmarkLink--;
  return o;
}

void checkBookmarkLink(api.BookmarkLink o) {
  buildCounterBookmarkLink++;
  if (buildCounterBookmarkLink < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.tabId!, unittest.equals('foo'));
  }
  buildCounterBookmarkLink--;
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
    unittest.expect(o.listId!, unittest.equals('foo'));
    unittest.expect(o.nestingLevel!, unittest.equals(42));
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

core.List<core.String> buildUnnamed7() => ['foo', 'foo'];

void checkUnnamed7(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.SuggestedTextStyle> buildUnnamed9() => {
  'x': buildSuggestedTextStyle(),
  'y': buildSuggestedTextStyle(),
};

void checkUnnamed9(core.Map<core.String, api.SuggestedTextStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTextStyle(o['x']!);
  checkSuggestedTextStyle(o['y']!);
}

core.int buildCounterColumnBreak = 0;
api.ColumnBreak buildColumnBreak() {
  final o = api.ColumnBreak();
  buildCounterColumnBreak++;
  if (buildCounterColumnBreak < 3) {
    o.suggestedDeletionIds = buildUnnamed7();
    o.suggestedInsertionIds = buildUnnamed8();
    o.suggestedTextStyleChanges = buildUnnamed9();
    o.textStyle = buildTextStyle();
  }
  buildCounterColumnBreak--;
  return o;
}

void checkColumnBreak(api.ColumnBreak o) {
  buildCounterColumnBreak++;
  if (buildCounterColumnBreak < 3) {
    checkUnnamed7(o.suggestedDeletionIds!);
    checkUnnamed8(o.suggestedInsertionIds!);
    checkUnnamed9(o.suggestedTextStyleChanges!);
    checkTextStyle(o.textStyle!);
  }
  buildCounterColumnBreak--;
}

core.List<api.Range> buildUnnamed10() => [buildRange(), buildRange()];

void checkUnnamed10(core.List<api.Range> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRange(o[0]);
  checkRange(o[1]);
}

core.int buildCounterCommentAnchor = 0;
api.CommentAnchor buildCommentAnchor() {
  final o = api.CommentAnchor();
  buildCounterCommentAnchor++;
  if (buildCounterCommentAnchor < 3) {
    o.anchorId = 'foo';
    o.ranges = buildUnnamed10();
  }
  buildCounterCommentAnchor--;
  return o;
}

void checkCommentAnchor(api.CommentAnchor o) {
  buildCounterCommentAnchor++;
  if (buildCounterCommentAnchor < 3) {
    unittest.expect(o.anchorId!, unittest.equals('foo'));
    checkUnnamed10(o.ranges!);
  }
  buildCounterCommentAnchor--;
}

core.List<api.Post> buildUnnamed11() => [buildPost(), buildPost()];

void checkUnnamed11(core.List<api.Post> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPost(o[0]);
  checkPost(o[1]);
}

core.int buildCounterCommentThread = 0;
api.CommentThread buildCommentThread() {
  final o = api.CommentThread();
  buildCounterCommentThread++;
  if (buildCounterCommentThread < 3) {
    o.anchorId = 'foo';
    o.commentId = 'foo';
    o.headPost = buildPost();
    o.plainTextQuote = 'foo';
    o.replies = buildUnnamed11();
    o.status = 'foo';
  }
  buildCounterCommentThread--;
  return o;
}

void checkCommentThread(api.CommentThread o) {
  buildCounterCommentThread++;
  if (buildCounterCommentThread < 3) {
    unittest.expect(o.anchorId!, unittest.equals('foo'));
    unittest.expect(o.commentId!, unittest.equals('foo'));
    checkPost(o.headPost!);
    unittest.expect(o.plainTextQuote!, unittest.equals('foo'));
    checkUnnamed11(o.replies!);
    unittest.expect(o.status!, unittest.equals('foo'));
  }
  buildCounterCommentThread--;
}

core.int buildCounterCreateDropdownDefinitionRequest = 0;
api.CreateDropdownDefinitionRequest buildCreateDropdownDefinitionRequest() {
  final o = api.CreateDropdownDefinitionRequest();
  buildCounterCreateDropdownDefinitionRequest++;
  if (buildCounterCreateDropdownDefinitionRequest < 3) {
    o.dropdownDefinition = buildDropdownDefinition();
    o.tabId = 'foo';
  }
  buildCounterCreateDropdownDefinitionRequest--;
  return o;
}

void checkCreateDropdownDefinitionRequest(
  api.CreateDropdownDefinitionRequest o,
) {
  buildCounterCreateDropdownDefinitionRequest++;
  if (buildCounterCreateDropdownDefinitionRequest < 3) {
    checkDropdownDefinition(o.dropdownDefinition!);
    unittest.expect(o.tabId!, unittest.equals('foo'));
  }
  buildCounterCreateDropdownDefinitionRequest--;
}

core.int buildCounterCreateDropdownDefinitionResponse = 0;
api.CreateDropdownDefinitionResponse buildCreateDropdownDefinitionResponse() {
  final o = api.CreateDropdownDefinitionResponse();
  buildCounterCreateDropdownDefinitionResponse++;
  if (buildCounterCreateDropdownDefinitionResponse < 3) {
    o.dropdownDefinition = buildDropdownDefinition();
  }
  buildCounterCreateDropdownDefinitionResponse--;
  return o;
}

void checkCreateDropdownDefinitionResponse(
  api.CreateDropdownDefinitionResponse o,
) {
  buildCounterCreateDropdownDefinitionResponse++;
  if (buildCounterCreateDropdownDefinitionResponse < 3) {
    checkDropdownDefinition(o.dropdownDefinition!);
  }
  buildCounterCreateDropdownDefinitionResponse--;
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
    unittest.expect(o.type!, unittest.equals('foo'));
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
    unittest.expect(o.footerId!, unittest.equals('foo'));
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
    unittest.expect(o.footnoteId!, unittest.equals('foo'));
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
    unittest.expect(o.type!, unittest.equals('foo'));
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
    unittest.expect(o.headerId!, unittest.equals('foo'));
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
    unittest.expect(o.name!, unittest.equals('foo'));
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
    unittest.expect(o.namedRangeId!, unittest.equals('foo'));
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
    unittest.expect(o.bulletPreset!, unittest.equals('foo'));
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
    unittest.expect(o.angle!, unittest.equals(42.0));
    unittest.expect(o.offsetBottom!, unittest.equals(42.0));
    unittest.expect(o.offsetLeft!, unittest.equals(42.0));
    unittest.expect(o.offsetRight!, unittest.equals(42.0));
    unittest.expect(o.offsetTop!, unittest.equals(42.0));
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

core.Map<core.String, api.SuggestedDateElementProperties> buildUnnamed12() => {
  'x': buildSuggestedDateElementProperties(),
  'y': buildSuggestedDateElementProperties(),
};

void checkUnnamed12(
  core.Map<core.String, api.SuggestedDateElementProperties> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedDateElementProperties(o['x']!);
  checkSuggestedDateElementProperties(o['y']!);
}

core.List<core.String> buildUnnamed13() => ['foo', 'foo'];

void checkUnnamed13(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed14() => ['foo', 'foo'];

void checkUnnamed14(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.SuggestedTextStyle> buildUnnamed15() => {
  'x': buildSuggestedTextStyle(),
  'y': buildSuggestedTextStyle(),
};

void checkUnnamed15(core.Map<core.String, api.SuggestedTextStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTextStyle(o['x']!);
  checkSuggestedTextStyle(o['y']!);
}

core.int buildCounterDateElement = 0;
api.DateElement buildDateElement() {
  final o = api.DateElement();
  buildCounterDateElement++;
  if (buildCounterDateElement < 3) {
    o.dateElementProperties = buildDateElementProperties();
    o.dateId = 'foo';
    o.suggestedDateElementPropertiesChanges = buildUnnamed12();
    o.suggestedDeletionIds = buildUnnamed13();
    o.suggestedInsertionIds = buildUnnamed14();
    o.suggestedTextStyleChanges = buildUnnamed15();
    o.textStyle = buildTextStyle();
  }
  buildCounterDateElement--;
  return o;
}

void checkDateElement(api.DateElement o) {
  buildCounterDateElement++;
  if (buildCounterDateElement < 3) {
    checkDateElementProperties(o.dateElementProperties!);
    unittest.expect(o.dateId!, unittest.equals('foo'));
    checkUnnamed12(o.suggestedDateElementPropertiesChanges!);
    checkUnnamed13(o.suggestedDeletionIds!);
    checkUnnamed14(o.suggestedInsertionIds!);
    checkUnnamed15(o.suggestedTextStyleChanges!);
    checkTextStyle(o.textStyle!);
  }
  buildCounterDateElement--;
}

core.int buildCounterDateElementProperties = 0;
api.DateElementProperties buildDateElementProperties() {
  final o = api.DateElementProperties();
  buildCounterDateElementProperties++;
  if (buildCounterDateElementProperties < 3) {
    o.dateFormat = 'foo';
    o.displayText = 'foo';
    o.locale = 'foo';
    o.timeFormat = 'foo';
    o.timeZoneId = 'foo';
    o.timestamp = 'foo';
  }
  buildCounterDateElementProperties--;
  return o;
}

void checkDateElementProperties(api.DateElementProperties o) {
  buildCounterDateElementProperties++;
  if (buildCounterDateElementProperties < 3) {
    unittest.expect(o.dateFormat!, unittest.equals('foo'));
    unittest.expect(o.displayText!, unittest.equals('foo'));
    unittest.expect(o.locale!, unittest.equals('foo'));
    unittest.expect(o.timeFormat!, unittest.equals('foo'));
    unittest.expect(o.timeZoneId!, unittest.equals('foo'));
    unittest.expect(o.timestamp!, unittest.equals('foo'));
  }
  buildCounterDateElementProperties--;
}

core.int buildCounterDateElementPropertiesSuggestionState = 0;
api.DateElementPropertiesSuggestionState
buildDateElementPropertiesSuggestionState() {
  final o = api.DateElementPropertiesSuggestionState();
  buildCounterDateElementPropertiesSuggestionState++;
  if (buildCounterDateElementPropertiesSuggestionState < 3) {
    o.dateFormatSuggested = true;
    o.localeSuggested = true;
    o.timeFormatSuggested = true;
    o.timeZoneIdSuggested = true;
    o.timestampSuggested = true;
  }
  buildCounterDateElementPropertiesSuggestionState--;
  return o;
}

void checkDateElementPropertiesSuggestionState(
  api.DateElementPropertiesSuggestionState o,
) {
  buildCounterDateElementPropertiesSuggestionState++;
  if (buildCounterDateElementPropertiesSuggestionState < 3) {
    unittest.expect(o.dateFormatSuggested!, unittest.isTrue);
    unittest.expect(o.localeSuggested!, unittest.isTrue);
    unittest.expect(o.timeFormatSuggested!, unittest.isTrue);
    unittest.expect(o.timeZoneIdSuggested!, unittest.isTrue);
    unittest.expect(o.timestampSuggested!, unittest.isTrue);
  }
  buildCounterDateElementPropertiesSuggestionState--;
}

core.int buildCounterDeleteCommentReplyRequest = 0;
api.DeleteCommentReplyRequest buildDeleteCommentReplyRequest() {
  final o = api.DeleteCommentReplyRequest();
  buildCounterDeleteCommentReplyRequest++;
  if (buildCounterDeleteCommentReplyRequest < 3) {
    o.commentId = 'foo';
    o.postId = 'foo';
    o.suggestionId = 'foo';
  }
  buildCounterDeleteCommentReplyRequest--;
  return o;
}

void checkDeleteCommentReplyRequest(api.DeleteCommentReplyRequest o) {
  buildCounterDeleteCommentReplyRequest++;
  if (buildCounterDeleteCommentReplyRequest < 3) {
    unittest.expect(o.commentId!, unittest.equals('foo'));
    unittest.expect(o.postId!, unittest.equals('foo'));
    unittest.expect(o.suggestionId!, unittest.equals('foo'));
  }
  buildCounterDeleteCommentReplyRequest--;
}

core.int buildCounterDeleteCommentRequest = 0;
api.DeleteCommentRequest buildDeleteCommentRequest() {
  final o = api.DeleteCommentRequest();
  buildCounterDeleteCommentRequest++;
  if (buildCounterDeleteCommentRequest < 3) {
    o.commentId = 'foo';
  }
  buildCounterDeleteCommentRequest--;
  return o;
}

void checkDeleteCommentRequest(api.DeleteCommentRequest o) {
  buildCounterDeleteCommentRequest++;
  if (buildCounterDeleteCommentRequest < 3) {
    unittest.expect(o.commentId!, unittest.equals('foo'));
  }
  buildCounterDeleteCommentRequest--;
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

core.int buildCounterDeleteDropdownDefinitionRequest = 0;
api.DeleteDropdownDefinitionRequest buildDeleteDropdownDefinitionRequest() {
  final o = api.DeleteDropdownDefinitionRequest();
  buildCounterDeleteDropdownDefinitionRequest++;
  if (buildCounterDeleteDropdownDefinitionRequest < 3) {
    o.dropdownDefinitionId = 'foo';
    o.tabId = 'foo';
  }
  buildCounterDeleteDropdownDefinitionRequest--;
  return o;
}

void checkDeleteDropdownDefinitionRequest(
  api.DeleteDropdownDefinitionRequest o,
) {
  buildCounterDeleteDropdownDefinitionRequest++;
  if (buildCounterDeleteDropdownDefinitionRequest < 3) {
    unittest.expect(o.dropdownDefinitionId!, unittest.equals('foo'));
    unittest.expect(o.tabId!, unittest.equals('foo'));
  }
  buildCounterDeleteDropdownDefinitionRequest--;
}

core.int buildCounterDeleteFooterRequest = 0;
api.DeleteFooterRequest buildDeleteFooterRequest() {
  final o = api.DeleteFooterRequest();
  buildCounterDeleteFooterRequest++;
  if (buildCounterDeleteFooterRequest < 3) {
    o.footerId = 'foo';
    o.tabId = 'foo';
  }
  buildCounterDeleteFooterRequest--;
  return o;
}

void checkDeleteFooterRequest(api.DeleteFooterRequest o) {
  buildCounterDeleteFooterRequest++;
  if (buildCounterDeleteFooterRequest < 3) {
    unittest.expect(o.footerId!, unittest.equals('foo'));
    unittest.expect(o.tabId!, unittest.equals('foo'));
  }
  buildCounterDeleteFooterRequest--;
}

core.int buildCounterDeleteHeaderRequest = 0;
api.DeleteHeaderRequest buildDeleteHeaderRequest() {
  final o = api.DeleteHeaderRequest();
  buildCounterDeleteHeaderRequest++;
  if (buildCounterDeleteHeaderRequest < 3) {
    o.headerId = 'foo';
    o.tabId = 'foo';
  }
  buildCounterDeleteHeaderRequest--;
  return o;
}

void checkDeleteHeaderRequest(api.DeleteHeaderRequest o) {
  buildCounterDeleteHeaderRequest++;
  if (buildCounterDeleteHeaderRequest < 3) {
    unittest.expect(o.headerId!, unittest.equals('foo'));
    unittest.expect(o.tabId!, unittest.equals('foo'));
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
    o.tabsCriteria = buildTabsCriteria();
  }
  buildCounterDeleteNamedRangeRequest--;
  return o;
}

void checkDeleteNamedRangeRequest(api.DeleteNamedRangeRequest o) {
  buildCounterDeleteNamedRangeRequest++;
  if (buildCounterDeleteNamedRangeRequest < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.namedRangeId!, unittest.equals('foo'));
    checkTabsCriteria(o.tabsCriteria!);
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
    o.tabId = 'foo';
  }
  buildCounterDeletePositionedObjectRequest--;
  return o;
}

void checkDeletePositionedObjectRequest(api.DeletePositionedObjectRequest o) {
  buildCounterDeletePositionedObjectRequest++;
  if (buildCounterDeletePositionedObjectRequest < 3) {
    unittest.expect(o.objectId!, unittest.equals('foo'));
    unittest.expect(o.tabId!, unittest.equals('foo'));
  }
  buildCounterDeletePositionedObjectRequest--;
}

core.int buildCounterDeleteSuggestionRequest = 0;
api.DeleteSuggestionRequest buildDeleteSuggestionRequest() {
  final o = api.DeleteSuggestionRequest();
  buildCounterDeleteSuggestionRequest++;
  if (buildCounterDeleteSuggestionRequest < 3) {
    o.suggestionId = 'foo';
  }
  buildCounterDeleteSuggestionRequest--;
  return o;
}

void checkDeleteSuggestionRequest(api.DeleteSuggestionRequest o) {
  buildCounterDeleteSuggestionRequest++;
  if (buildCounterDeleteSuggestionRequest < 3) {
    unittest.expect(o.suggestionId!, unittest.equals('foo'));
  }
  buildCounterDeleteSuggestionRequest--;
}

core.int buildCounterDeleteTabRequest = 0;
api.DeleteTabRequest buildDeleteTabRequest() {
  final o = api.DeleteTabRequest();
  buildCounterDeleteTabRequest++;
  if (buildCounterDeleteTabRequest < 3) {
    o.tabId = 'foo';
  }
  buildCounterDeleteTabRequest--;
  return o;
}

void checkDeleteTabRequest(api.DeleteTabRequest o) {
  buildCounterDeleteTabRequest++;
  if (buildCounterDeleteTabRequest < 3) {
    unittest.expect(o.tabId!, unittest.equals('foo'));
  }
  buildCounterDeleteTabRequest--;
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
    unittest.expect(o.magnitude!, unittest.equals(42.0));
    unittest.expect(o.unit!, unittest.equals('foo'));
  }
  buildCounterDimension--;
}

core.List<api.CommentThread> buildUnnamed16() => [
  buildCommentThread(),
  buildCommentThread(),
];

void checkUnnamed16(core.List<api.CommentThread> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommentThread(o[0]);
  checkCommentThread(o[1]);
}

core.Map<core.String, api.Footer> buildUnnamed17() => {
  'x': buildFooter(),
  'y': buildFooter(),
};

void checkUnnamed17(core.Map<core.String, api.Footer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFooter(o['x']!);
  checkFooter(o['y']!);
}

core.Map<core.String, api.Footnote> buildUnnamed18() => {
  'x': buildFootnote(),
  'y': buildFootnote(),
};

void checkUnnamed18(core.Map<core.String, api.Footnote> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFootnote(o['x']!);
  checkFootnote(o['y']!);
}

core.Map<core.String, api.Header> buildUnnamed19() => {
  'x': buildHeader(),
  'y': buildHeader(),
};

void checkUnnamed19(core.Map<core.String, api.Header> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHeader(o['x']!);
  checkHeader(o['y']!);
}

core.Map<core.String, api.InlineObject> buildUnnamed20() => {
  'x': buildInlineObject(),
  'y': buildInlineObject(),
};

void checkUnnamed20(core.Map<core.String, api.InlineObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInlineObject(o['x']!);
  checkInlineObject(o['y']!);
}

core.Map<core.String, api.List> buildUnnamed21() => {
  'x': buildList(),
  'y': buildList(),
};

void checkUnnamed21(core.Map<core.String, api.List> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkList(o['x']!);
  checkList(o['y']!);
}

core.Map<core.String, api.NamedRanges> buildUnnamed22() => {
  'x': buildNamedRanges(),
  'y': buildNamedRanges(),
};

void checkUnnamed22(core.Map<core.String, api.NamedRanges> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamedRanges(o['x']!);
  checkNamedRanges(o['y']!);
}

core.Map<core.String, api.PositionedObject> buildUnnamed23() => {
  'x': buildPositionedObject(),
  'y': buildPositionedObject(),
};

void checkUnnamed23(core.Map<core.String, api.PositionedObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPositionedObject(o['x']!);
  checkPositionedObject(o['y']!);
}

core.Map<core.String, api.SuggestedDocumentStyle> buildUnnamed24() => {
  'x': buildSuggestedDocumentStyle(),
  'y': buildSuggestedDocumentStyle(),
};

void checkUnnamed24(core.Map<core.String, api.SuggestedDocumentStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedDocumentStyle(o['x']!);
  checkSuggestedDocumentStyle(o['y']!);
}

core.Map<core.String, api.SuggestedNamedStyles> buildUnnamed25() => {
  'x': buildSuggestedNamedStyles(),
  'y': buildSuggestedNamedStyles(),
};

void checkUnnamed25(core.Map<core.String, api.SuggestedNamedStyles> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedNamedStyles(o['x']!);
  checkSuggestedNamedStyles(o['y']!);
}

core.List<api.SuggestionThread> buildUnnamed26() => [
  buildSuggestionThread(),
  buildSuggestionThread(),
];

void checkUnnamed26(core.List<api.SuggestionThread> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestionThread(o[0]);
  checkSuggestionThread(o[1]);
}

core.List<api.Tab> buildUnnamed27() => [buildTab(), buildTab()];

void checkUnnamed27(core.List<api.Tab> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTab(o[0]);
  checkTab(o[1]);
}

core.int buildCounterDocument = 0;
api.Document buildDocument() {
  final o = api.Document();
  buildCounterDocument++;
  if (buildCounterDocument < 3) {
    o.body = buildBody();
    o.comments = buildUnnamed16();
    o.commentsViewMode = 'foo';
    o.documentId = 'foo';
    o.documentStyle = buildDocumentStyle();
    o.footers = buildUnnamed17();
    o.footnotes = buildUnnamed18();
    o.headers = buildUnnamed19();
    o.inlineObjects = buildUnnamed20();
    o.lists = buildUnnamed21();
    o.namedRanges = buildUnnamed22();
    o.namedStyles = buildNamedStyles();
    o.positionedObjects = buildUnnamed23();
    o.revisionId = 'foo';
    o.suggestedDocumentStyleChanges = buildUnnamed24();
    o.suggestedNamedStylesChanges = buildUnnamed25();
    o.suggestions = buildUnnamed26();
    o.suggestionsViewMode = 'foo';
    o.tabs = buildUnnamed27();
    o.title = 'foo';
  }
  buildCounterDocument--;
  return o;
}

void checkDocument(api.Document o) {
  buildCounterDocument++;
  if (buildCounterDocument < 3) {
    checkBody(o.body!);
    checkUnnamed16(o.comments!);
    unittest.expect(o.commentsViewMode!, unittest.equals('foo'));
    unittest.expect(o.documentId!, unittest.equals('foo'));
    checkDocumentStyle(o.documentStyle!);
    checkUnnamed17(o.footers!);
    checkUnnamed18(o.footnotes!);
    checkUnnamed19(o.headers!);
    checkUnnamed20(o.inlineObjects!);
    checkUnnamed21(o.lists!);
    checkUnnamed22(o.namedRanges!);
    checkNamedStyles(o.namedStyles!);
    checkUnnamed23(o.positionedObjects!);
    unittest.expect(o.revisionId!, unittest.equals('foo'));
    checkUnnamed24(o.suggestedDocumentStyleChanges!);
    checkUnnamed25(o.suggestedNamedStylesChanges!);
    checkUnnamed26(o.suggestions!);
    unittest.expect(o.suggestionsViewMode!, unittest.equals('foo'));
    checkUnnamed27(o.tabs!);
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterDocument--;
}

core.int buildCounterDocumentFormat = 0;
api.DocumentFormat buildDocumentFormat() {
  final o = api.DocumentFormat();
  buildCounterDocumentFormat++;
  if (buildCounterDocumentFormat < 3) {
    o.documentMode = 'foo';
  }
  buildCounterDocumentFormat--;
  return o;
}

void checkDocumentFormat(api.DocumentFormat o) {
  buildCounterDocumentFormat++;
  if (buildCounterDocumentFormat < 3) {
    unittest.expect(o.documentMode!, unittest.equals('foo'));
  }
  buildCounterDocumentFormat--;
}

core.int buildCounterDocumentStyle = 0;
api.DocumentStyle buildDocumentStyle() {
  final o = api.DocumentStyle();
  buildCounterDocumentStyle++;
  if (buildCounterDocumentStyle < 3) {
    o.background = buildBackground();
    o.defaultFooterId = 'foo';
    o.defaultHeaderId = 'foo';
    o.documentFormat = buildDocumentFormat();
    o.evenPageFooterId = 'foo';
    o.evenPageHeaderId = 'foo';
    o.firstPageFooterId = 'foo';
    o.firstPageHeaderId = 'foo';
    o.flipPageOrientation = true;
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
    unittest.expect(o.defaultFooterId!, unittest.equals('foo'));
    unittest.expect(o.defaultHeaderId!, unittest.equals('foo'));
    checkDocumentFormat(o.documentFormat!);
    unittest.expect(o.evenPageFooterId!, unittest.equals('foo'));
    unittest.expect(o.evenPageHeaderId!, unittest.equals('foo'));
    unittest.expect(o.firstPageFooterId!, unittest.equals('foo'));
    unittest.expect(o.firstPageHeaderId!, unittest.equals('foo'));
    unittest.expect(o.flipPageOrientation!, unittest.isTrue);
    checkDimension(o.marginBottom!);
    checkDimension(o.marginFooter!);
    checkDimension(o.marginHeader!);
    checkDimension(o.marginLeft!);
    checkDimension(o.marginRight!);
    checkDimension(o.marginTop!);
    unittest.expect(o.pageNumberStart!, unittest.equals(42));
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
    o.flipPageOrientationSuggested = true;
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
    unittest.expect(o.flipPageOrientationSuggested!, unittest.isTrue);
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

core.Map<core.String, api.CommentAnchor> buildUnnamed28() => {
  'x': buildCommentAnchor(),
  'y': buildCommentAnchor(),
};

void checkUnnamed28(core.Map<core.String, api.CommentAnchor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCommentAnchor(o['x']!);
  checkCommentAnchor(o['y']!);
}

core.Map<core.String, api.DropdownDefinition> buildUnnamed29() => {
  'x': buildDropdownDefinition(),
  'y': buildDropdownDefinition(),
};

void checkUnnamed29(core.Map<core.String, api.DropdownDefinition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDropdownDefinition(o['x']!);
  checkDropdownDefinition(o['y']!);
}

core.Map<core.String, api.Footer> buildUnnamed30() => {
  'x': buildFooter(),
  'y': buildFooter(),
};

void checkUnnamed30(core.Map<core.String, api.Footer> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFooter(o['x']!);
  checkFooter(o['y']!);
}

core.Map<core.String, api.Footnote> buildUnnamed31() => {
  'x': buildFootnote(),
  'y': buildFootnote(),
};

void checkUnnamed31(core.Map<core.String, api.Footnote> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFootnote(o['x']!);
  checkFootnote(o['y']!);
}

core.Map<core.String, api.Header> buildUnnamed32() => {
  'x': buildHeader(),
  'y': buildHeader(),
};

void checkUnnamed32(core.Map<core.String, api.Header> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHeader(o['x']!);
  checkHeader(o['y']!);
}

core.Map<core.String, api.InlineObject> buildUnnamed33() => {
  'x': buildInlineObject(),
  'y': buildInlineObject(),
};

void checkUnnamed33(core.Map<core.String, api.InlineObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInlineObject(o['x']!);
  checkInlineObject(o['y']!);
}

core.Map<core.String, api.List> buildUnnamed34() => {
  'x': buildList(),
  'y': buildList(),
};

void checkUnnamed34(core.Map<core.String, api.List> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkList(o['x']!);
  checkList(o['y']!);
}

core.Map<core.String, api.NamedRanges> buildUnnamed35() => {
  'x': buildNamedRanges(),
  'y': buildNamedRanges(),
};

void checkUnnamed35(core.Map<core.String, api.NamedRanges> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamedRanges(o['x']!);
  checkNamedRanges(o['y']!);
}

core.Map<core.String, api.PositionedObject> buildUnnamed36() => {
  'x': buildPositionedObject(),
  'y': buildPositionedObject(),
};

void checkUnnamed36(core.Map<core.String, api.PositionedObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPositionedObject(o['x']!);
  checkPositionedObject(o['y']!);
}

core.Map<core.String, api.SuggestedDocumentStyle> buildUnnamed37() => {
  'x': buildSuggestedDocumentStyle(),
  'y': buildSuggestedDocumentStyle(),
};

void checkUnnamed37(core.Map<core.String, api.SuggestedDocumentStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedDocumentStyle(o['x']!);
  checkSuggestedDocumentStyle(o['y']!);
}

core.Map<core.String, api.SuggestedNamedStyles> buildUnnamed38() => {
  'x': buildSuggestedNamedStyles(),
  'y': buildSuggestedNamedStyles(),
};

void checkUnnamed38(core.Map<core.String, api.SuggestedNamedStyles> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedNamedStyles(o['x']!);
  checkSuggestedNamedStyles(o['y']!);
}

core.int buildCounterDocumentTab = 0;
api.DocumentTab buildDocumentTab() {
  final o = api.DocumentTab();
  buildCounterDocumentTab++;
  if (buildCounterDocumentTab < 3) {
    o.body = buildBody();
    o.commentAnchors = buildUnnamed28();
    o.documentStyle = buildDocumentStyle();
    o.dropdownDefinitions = buildUnnamed29();
    o.footers = buildUnnamed30();
    o.footnotes = buildUnnamed31();
    o.headers = buildUnnamed32();
    o.inlineObjects = buildUnnamed33();
    o.lists = buildUnnamed34();
    o.namedRanges = buildUnnamed35();
    o.namedStyles = buildNamedStyles();
    o.positionedObjects = buildUnnamed36();
    o.suggestedDocumentStyleChanges = buildUnnamed37();
    o.suggestedNamedStylesChanges = buildUnnamed38();
  }
  buildCounterDocumentTab--;
  return o;
}

void checkDocumentTab(api.DocumentTab o) {
  buildCounterDocumentTab++;
  if (buildCounterDocumentTab < 3) {
    checkBody(o.body!);
    checkUnnamed28(o.commentAnchors!);
    checkDocumentStyle(o.documentStyle!);
    checkUnnamed29(o.dropdownDefinitions!);
    checkUnnamed30(o.footers!);
    checkUnnamed31(o.footnotes!);
    checkUnnamed32(o.headers!);
    checkUnnamed33(o.inlineObjects!);
    checkUnnamed34(o.lists!);
    checkUnnamed35(o.namedRanges!);
    checkNamedStyles(o.namedStyles!);
    checkUnnamed36(o.positionedObjects!);
    checkUnnamed37(o.suggestedDocumentStyleChanges!);
    checkUnnamed38(o.suggestedNamedStylesChanges!);
  }
  buildCounterDocumentTab--;
}

core.List<core.String> buildUnnamed39() => ['foo', 'foo'];

void checkUnnamed39(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.SuggestedDropdownProperties> buildUnnamed40() => {
  'x': buildSuggestedDropdownProperties(),
  'y': buildSuggestedDropdownProperties(),
};

void checkUnnamed40(core.Map<core.String, api.SuggestedDropdownProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedDropdownProperties(o['x']!);
  checkSuggestedDropdownProperties(o['y']!);
}

core.List<core.String> buildUnnamed41() => ['foo', 'foo'];

void checkUnnamed41(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.SuggestedTextStyle> buildUnnamed42() => {
  'x': buildSuggestedTextStyle(),
  'y': buildSuggestedTextStyle(),
};

void checkUnnamed42(core.Map<core.String, api.SuggestedTextStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTextStyle(o['x']!);
  checkSuggestedTextStyle(o['y']!);
}

core.int buildCounterDropdown = 0;
api.Dropdown buildDropdown() {
  final o = api.Dropdown();
  buildCounterDropdown++;
  if (buildCounterDropdown < 3) {
    o.dropdownId = 'foo';
    o.dropdownProperties = buildDropdownProperties();
    o.suggestedDeletionIds = buildUnnamed39();
    o.suggestedDropdownPropertiesChanges = buildUnnamed40();
    o.suggestedInsertionIds = buildUnnamed41();
    o.suggestedTextStyleChanges = buildUnnamed42();
    o.textStyle = buildTextStyle();
  }
  buildCounterDropdown--;
  return o;
}

void checkDropdown(api.Dropdown o) {
  buildCounterDropdown++;
  if (buildCounterDropdown < 3) {
    unittest.expect(o.dropdownId!, unittest.equals('foo'));
    checkDropdownProperties(o.dropdownProperties!);
    checkUnnamed39(o.suggestedDeletionIds!);
    checkUnnamed40(o.suggestedDropdownPropertiesChanges!);
    checkUnnamed41(o.suggestedInsertionIds!);
    checkUnnamed42(o.suggestedTextStyleChanges!);
    checkTextStyle(o.textStyle!);
  }
  buildCounterDropdown--;
}

core.Map<core.String, api.SuggestedDropdownDefinitionProperties>
buildUnnamed43() => {
  'x': buildSuggestedDropdownDefinitionProperties(),
  'y': buildSuggestedDropdownDefinitionProperties(),
};

void checkUnnamed43(
  core.Map<core.String, api.SuggestedDropdownDefinitionProperties> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedDropdownDefinitionProperties(o['x']!);
  checkSuggestedDropdownDefinitionProperties(o['y']!);
}

core.int buildCounterDropdownDefinition = 0;
api.DropdownDefinition buildDropdownDefinition() {
  final o = api.DropdownDefinition();
  buildCounterDropdownDefinition++;
  if (buildCounterDropdownDefinition < 3) {
    o.dropdownDefinitionId = 'foo';
    o.dropdownDefinitionProperties = buildDropdownDefinitionProperties();
    o.suggestedDeletionId = 'foo';
    o.suggestedDropdownDefinitionPropertiesChanges = buildUnnamed43();
    o.suggestedInsertionId = 'foo';
  }
  buildCounterDropdownDefinition--;
  return o;
}

void checkDropdownDefinition(api.DropdownDefinition o) {
  buildCounterDropdownDefinition++;
  if (buildCounterDropdownDefinition < 3) {
    unittest.expect(o.dropdownDefinitionId!, unittest.equals('foo'));
    checkDropdownDefinitionProperties(o.dropdownDefinitionProperties!);
    unittest.expect(o.suggestedDeletionId!, unittest.equals('foo'));
    checkUnnamed43(o.suggestedDropdownDefinitionPropertiesChanges!);
    unittest.expect(o.suggestedInsertionId!, unittest.equals('foo'));
  }
  buildCounterDropdownDefinition--;
}

core.List<api.DropdownOption> buildUnnamed44() => [
  buildDropdownOption(),
  buildDropdownOption(),
];

void checkUnnamed44(core.List<api.DropdownOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDropdownOption(o[0]);
  checkDropdownOption(o[1]);
}

core.int buildCounterDropdownDefinitionProperties = 0;
api.DropdownDefinitionProperties buildDropdownDefinitionProperties() {
  final o = api.DropdownDefinitionProperties();
  buildCounterDropdownDefinitionProperties++;
  if (buildCounterDropdownDefinitionProperties < 3) {
    o.options = buildUnnamed44();
    o.title = 'foo';
  }
  buildCounterDropdownDefinitionProperties--;
  return o;
}

void checkDropdownDefinitionProperties(api.DropdownDefinitionProperties o) {
  buildCounterDropdownDefinitionProperties++;
  if (buildCounterDropdownDefinitionProperties < 3) {
    checkUnnamed44(o.options!);
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterDropdownDefinitionProperties--;
}

core.int buildCounterDropdownDefinitionPropertiesSuggestionState = 0;
api.DropdownDefinitionPropertiesSuggestionState
buildDropdownDefinitionPropertiesSuggestionState() {
  final o = api.DropdownDefinitionPropertiesSuggestionState();
  buildCounterDropdownDefinitionPropertiesSuggestionState++;
  if (buildCounterDropdownDefinitionPropertiesSuggestionState < 3) {
    o.optionsSuggested = true;
    o.titleSuggested = true;
  }
  buildCounterDropdownDefinitionPropertiesSuggestionState--;
  return o;
}

void checkDropdownDefinitionPropertiesSuggestionState(
  api.DropdownDefinitionPropertiesSuggestionState o,
) {
  buildCounterDropdownDefinitionPropertiesSuggestionState++;
  if (buildCounterDropdownDefinitionPropertiesSuggestionState < 3) {
    unittest.expect(o.optionsSuggested!, unittest.isTrue);
    unittest.expect(o.titleSuggested!, unittest.isTrue);
  }
  buildCounterDropdownDefinitionPropertiesSuggestionState--;
}

core.int buildCounterDropdownOption = 0;
api.DropdownOption buildDropdownOption() {
  final o = api.DropdownOption();
  buildCounterDropdownOption++;
  if (buildCounterDropdownOption < 3) {
    o.displayValue = 'foo';
    o.optionId = 'foo';
    o.textStyle = buildTextStyle();
  }
  buildCounterDropdownOption--;
  return o;
}

void checkDropdownOption(api.DropdownOption o) {
  buildCounterDropdownOption++;
  if (buildCounterDropdownOption < 3) {
    unittest.expect(o.displayValue!, unittest.equals('foo'));
    unittest.expect(o.optionId!, unittest.equals('foo'));
    checkTextStyle(o.textStyle!);
  }
  buildCounterDropdownOption--;
}

core.int buildCounterDropdownProperties = 0;
api.DropdownProperties buildDropdownProperties() {
  final o = api.DropdownProperties();
  buildCounterDropdownProperties++;
  if (buildCounterDropdownProperties < 3) {
    o.displayValue = 'foo';
    o.dropdownDefinitionId = 'foo';
    o.selectedOptionId = 'foo';
  }
  buildCounterDropdownProperties--;
  return o;
}

void checkDropdownProperties(api.DropdownProperties o) {
  buildCounterDropdownProperties++;
  if (buildCounterDropdownProperties < 3) {
    unittest.expect(o.displayValue!, unittest.equals('foo'));
    unittest.expect(o.dropdownDefinitionId!, unittest.equals('foo'));
    unittest.expect(o.selectedOptionId!, unittest.equals('foo'));
  }
  buildCounterDropdownProperties--;
}

core.int buildCounterDropdownPropertiesSuggestionState = 0;
api.DropdownPropertiesSuggestionState buildDropdownPropertiesSuggestionState() {
  final o = api.DropdownPropertiesSuggestionState();
  buildCounterDropdownPropertiesSuggestionState++;
  if (buildCounterDropdownPropertiesSuggestionState < 3) {
    o.selectedOptionIdSuggested = true;
  }
  buildCounterDropdownPropertiesSuggestionState--;
  return o;
}

void checkDropdownPropertiesSuggestionState(
  api.DropdownPropertiesSuggestionState o,
) {
  buildCounterDropdownPropertiesSuggestionState++;
  if (buildCounterDropdownPropertiesSuggestionState < 3) {
    unittest.expect(o.selectedOptionIdSuggested!, unittest.isTrue);
  }
  buildCounterDropdownPropertiesSuggestionState--;
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
  api.EmbeddedDrawingPropertiesSuggestionState o,
) {
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
    unittest.expect(o.description!, unittest.equals('foo'));
    checkEmbeddedDrawingProperties(o.embeddedDrawingProperties!);
    checkEmbeddedObjectBorder(o.embeddedObjectBorder!);
    checkImageProperties(o.imageProperties!);
    checkLinkedContentReference(o.linkedContentReference!);
    checkDimension(o.marginBottom!);
    checkDimension(o.marginLeft!);
    checkDimension(o.marginRight!);
    checkDimension(o.marginTop!);
    checkSize(o.size!);
    unittest.expect(o.title!, unittest.equals('foo'));
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
    unittest.expect(o.dashStyle!, unittest.equals('foo'));
    unittest.expect(o.propertyState!, unittest.equals('foo'));
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
  api.EmbeddedObjectBorderSuggestionState o,
) {
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
      o.embeddedDrawingPropertiesSuggestionState!,
    );
    checkEmbeddedObjectBorderSuggestionState(
      o.embeddedObjectBorderSuggestionState!,
    );
    checkImagePropertiesSuggestionState(o.imagePropertiesSuggestionState!);
    checkLinkedContentReferenceSuggestionState(
      o.linkedContentReferenceSuggestionState!,
    );
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
    o.tabId = 'foo';
  }
  buildCounterEndOfSegmentLocation--;
  return o;
}

void checkEndOfSegmentLocation(api.EndOfSegmentLocation o) {
  buildCounterEndOfSegmentLocation++;
  if (buildCounterEndOfSegmentLocation < 3) {
    unittest.expect(o.segmentId!, unittest.equals('foo'));
    unittest.expect(o.tabId!, unittest.equals('foo'));
  }
  buildCounterEndOfSegmentLocation--;
}

core.List<core.String> buildUnnamed45() => ['foo', 'foo'];

void checkUnnamed45(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed46() => ['foo', 'foo'];

void checkUnnamed46(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterEquation = 0;
api.Equation buildEquation() {
  final o = api.Equation();
  buildCounterEquation++;
  if (buildCounterEquation < 3) {
    o.suggestedDeletionIds = buildUnnamed45();
    o.suggestedInsertionIds = buildUnnamed46();
  }
  buildCounterEquation--;
  return o;
}

void checkEquation(api.Equation o) {
  buildCounterEquation++;
  if (buildCounterEquation < 3) {
    checkUnnamed45(o.suggestedDeletionIds!);
    checkUnnamed46(o.suggestedInsertionIds!);
  }
  buildCounterEquation--;
}

core.List<api.StructuralElement> buildUnnamed47() => [
  buildStructuralElement(),
  buildStructuralElement(),
];

void checkUnnamed47(core.List<api.StructuralElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStructuralElement(o[0]);
  checkStructuralElement(o[1]);
}

core.int buildCounterFooter = 0;
api.Footer buildFooter() {
  final o = api.Footer();
  buildCounterFooter++;
  if (buildCounterFooter < 3) {
    o.content = buildUnnamed47();
    o.footerId = 'foo';
  }
  buildCounterFooter--;
  return o;
}

void checkFooter(api.Footer o) {
  buildCounterFooter++;
  if (buildCounterFooter < 3) {
    checkUnnamed47(o.content!);
    unittest.expect(o.footerId!, unittest.equals('foo'));
  }
  buildCounterFooter--;
}

core.List<api.StructuralElement> buildUnnamed48() => [
  buildStructuralElement(),
  buildStructuralElement(),
];

void checkUnnamed48(core.List<api.StructuralElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStructuralElement(o[0]);
  checkStructuralElement(o[1]);
}

core.int buildCounterFootnote = 0;
api.Footnote buildFootnote() {
  final o = api.Footnote();
  buildCounterFootnote++;
  if (buildCounterFootnote < 3) {
    o.content = buildUnnamed48();
    o.footnoteId = 'foo';
  }
  buildCounterFootnote--;
  return o;
}

void checkFootnote(api.Footnote o) {
  buildCounterFootnote++;
  if (buildCounterFootnote < 3) {
    checkUnnamed48(o.content!);
    unittest.expect(o.footnoteId!, unittest.equals('foo'));
  }
  buildCounterFootnote--;
}

core.List<core.String> buildUnnamed49() => ['foo', 'foo'];

void checkUnnamed49(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed50() => ['foo', 'foo'];

void checkUnnamed50(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.SuggestedTextStyle> buildUnnamed51() => {
  'x': buildSuggestedTextStyle(),
  'y': buildSuggestedTextStyle(),
};

void checkUnnamed51(core.Map<core.String, api.SuggestedTextStyle> o) {
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
    o.suggestedDeletionIds = buildUnnamed49();
    o.suggestedInsertionIds = buildUnnamed50();
    o.suggestedTextStyleChanges = buildUnnamed51();
    o.textStyle = buildTextStyle();
  }
  buildCounterFootnoteReference--;
  return o;
}

void checkFootnoteReference(api.FootnoteReference o) {
  buildCounterFootnoteReference++;
  if (buildCounterFootnoteReference < 3) {
    unittest.expect(o.footnoteId!, unittest.equals('foo'));
    unittest.expect(o.footnoteNumber!, unittest.equals('foo'));
    checkUnnamed49(o.suggestedDeletionIds!);
    checkUnnamed50(o.suggestedInsertionIds!);
    checkUnnamed51(o.suggestedTextStyleChanges!);
    checkTextStyle(o.textStyle!);
  }
  buildCounterFootnoteReference--;
}

core.List<api.StructuralElement> buildUnnamed52() => [
  buildStructuralElement(),
  buildStructuralElement(),
];

void checkUnnamed52(core.List<api.StructuralElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStructuralElement(o[0]);
  checkStructuralElement(o[1]);
}

core.int buildCounterHeader = 0;
api.Header buildHeader() {
  final o = api.Header();
  buildCounterHeader++;
  if (buildCounterHeader < 3) {
    o.content = buildUnnamed52();
    o.headerId = 'foo';
  }
  buildCounterHeader--;
  return o;
}

void checkHeader(api.Header o) {
  buildCounterHeader++;
  if (buildCounterHeader < 3) {
    checkUnnamed52(o.content!);
    unittest.expect(o.headerId!, unittest.equals('foo'));
  }
  buildCounterHeader--;
}

core.int buildCounterHeadingLink = 0;
api.HeadingLink buildHeadingLink() {
  final o = api.HeadingLink();
  buildCounterHeadingLink++;
  if (buildCounterHeadingLink < 3) {
    o.id = 'foo';
    o.tabId = 'foo';
  }
  buildCounterHeadingLink--;
  return o;
}

void checkHeadingLink(api.HeadingLink o) {
  buildCounterHeadingLink++;
  if (buildCounterHeadingLink < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.tabId!, unittest.equals('foo'));
  }
  buildCounterHeadingLink--;
}

core.List<core.String> buildUnnamed53() => ['foo', 'foo'];

void checkUnnamed53(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed54() => ['foo', 'foo'];

void checkUnnamed54(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.SuggestedTextStyle> buildUnnamed55() => {
  'x': buildSuggestedTextStyle(),
  'y': buildSuggestedTextStyle(),
};

void checkUnnamed55(core.Map<core.String, api.SuggestedTextStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTextStyle(o['x']!);
  checkSuggestedTextStyle(o['y']!);
}

core.int buildCounterHorizontalRule = 0;
api.HorizontalRule buildHorizontalRule() {
  final o = api.HorizontalRule();
  buildCounterHorizontalRule++;
  if (buildCounterHorizontalRule < 3) {
    o.suggestedDeletionIds = buildUnnamed53();
    o.suggestedInsertionIds = buildUnnamed54();
    o.suggestedTextStyleChanges = buildUnnamed55();
    o.textStyle = buildTextStyle();
  }
  buildCounterHorizontalRule--;
  return o;
}

void checkHorizontalRule(api.HorizontalRule o) {
  buildCounterHorizontalRule++;
  if (buildCounterHorizontalRule < 3) {
    checkUnnamed53(o.suggestedDeletionIds!);
    checkUnnamed54(o.suggestedInsertionIds!);
    checkUnnamed55(o.suggestedTextStyleChanges!);
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
    unittest.expect(o.angle!, unittest.equals(42.0));
    unittest.expect(o.brightness!, unittest.equals(42.0));
    unittest.expect(o.contentUri!, unittest.equals('foo'));
    unittest.expect(o.contrast!, unittest.equals(42.0));
    checkCropProperties(o.cropProperties!);
    unittest.expect(o.sourceUri!, unittest.equals('foo'));
    unittest.expect(o.transparency!, unittest.equals(42.0));
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

core.List<core.String> buildUnnamed56() => ['foo', 'foo'];

void checkUnnamed56(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.SuggestedInlineObjectProperties> buildUnnamed57() => {
  'x': buildSuggestedInlineObjectProperties(),
  'y': buildSuggestedInlineObjectProperties(),
};

void checkUnnamed57(
  core.Map<core.String, api.SuggestedInlineObjectProperties> o,
) {
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
    o.suggestedDeletionIds = buildUnnamed56();
    o.suggestedInlineObjectPropertiesChanges = buildUnnamed57();
    o.suggestedInsertionId = 'foo';
  }
  buildCounterInlineObject--;
  return o;
}

void checkInlineObject(api.InlineObject o) {
  buildCounterInlineObject++;
  if (buildCounterInlineObject < 3) {
    checkInlineObjectProperties(o.inlineObjectProperties!);
    unittest.expect(o.objectId!, unittest.equals('foo'));
    checkUnnamed56(o.suggestedDeletionIds!);
    checkUnnamed57(o.suggestedInlineObjectPropertiesChanges!);
    unittest.expect(o.suggestedInsertionId!, unittest.equals('foo'));
  }
  buildCounterInlineObject--;
}

core.List<core.String> buildUnnamed58() => ['foo', 'foo'];

void checkUnnamed58(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed59() => ['foo', 'foo'];

void checkUnnamed59(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.SuggestedTextStyle> buildUnnamed60() => {
  'x': buildSuggestedTextStyle(),
  'y': buildSuggestedTextStyle(),
};

void checkUnnamed60(core.Map<core.String, api.SuggestedTextStyle> o) {
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
    o.suggestedDeletionIds = buildUnnamed58();
    o.suggestedInsertionIds = buildUnnamed59();
    o.suggestedTextStyleChanges = buildUnnamed60();
    o.textStyle = buildTextStyle();
  }
  buildCounterInlineObjectElement--;
  return o;
}

void checkInlineObjectElement(api.InlineObjectElement o) {
  buildCounterInlineObjectElement++;
  if (buildCounterInlineObjectElement < 3) {
    unittest.expect(o.inlineObjectId!, unittest.equals('foo'));
    checkUnnamed58(o.suggestedDeletionIds!);
    checkUnnamed59(o.suggestedInsertionIds!);
    checkUnnamed60(o.suggestedTextStyleChanges!);
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
  api.InlineObjectPropertiesSuggestionState o,
) {
  buildCounterInlineObjectPropertiesSuggestionState++;
  if (buildCounterInlineObjectPropertiesSuggestionState < 3) {
    checkEmbeddedObjectSuggestionState(o.embeddedObjectSuggestionState!);
  }
  buildCounterInlineObjectPropertiesSuggestionState--;
}

core.int buildCounterInsertCommentRequest = 0;
api.InsertCommentRequest buildInsertCommentRequest() {
  final o = api.InsertCommentRequest();
  buildCounterInsertCommentRequest++;
  if (buildCounterInsertCommentRequest < 3) {
    o.assigneeEmailAddress = 'foo';
    o.content = 'foo';
    o.range = buildRange();
  }
  buildCounterInsertCommentRequest--;
  return o;
}

void checkInsertCommentRequest(api.InsertCommentRequest o) {
  buildCounterInsertCommentRequest++;
  if (buildCounterInsertCommentRequest < 3) {
    unittest.expect(o.assigneeEmailAddress!, unittest.equals('foo'));
    unittest.expect(o.content!, unittest.equals('foo'));
    checkRange(o.range!);
  }
  buildCounterInsertCommentRequest--;
}

core.int buildCounterInsertCommentResponse = 0;
api.InsertCommentResponse buildInsertCommentResponse() {
  final o = api.InsertCommentResponse();
  buildCounterInsertCommentResponse++;
  if (buildCounterInsertCommentResponse < 3) {
    o.commentThread = buildCommentThread();
  }
  buildCounterInsertCommentResponse--;
  return o;
}

void checkInsertCommentResponse(api.InsertCommentResponse o) {
  buildCounterInsertCommentResponse++;
  if (buildCounterInsertCommentResponse < 3) {
    checkCommentThread(o.commentThread!);
  }
  buildCounterInsertCommentResponse--;
}

core.int buildCounterInsertDateRequest = 0;
api.InsertDateRequest buildInsertDateRequest() {
  final o = api.InsertDateRequest();
  buildCounterInsertDateRequest++;
  if (buildCounterInsertDateRequest < 3) {
    o.dateElementProperties = buildDateElementProperties();
    o.endOfSegmentLocation = buildEndOfSegmentLocation();
    o.location = buildLocation();
  }
  buildCounterInsertDateRequest--;
  return o;
}

void checkInsertDateRequest(api.InsertDateRequest o) {
  buildCounterInsertDateRequest++;
  if (buildCounterInsertDateRequest < 3) {
    checkDateElementProperties(o.dateElementProperties!);
    checkEndOfSegmentLocation(o.endOfSegmentLocation!);
    checkLocation(o.location!);
  }
  buildCounterInsertDateRequest--;
}

core.int buildCounterInsertDropdownRequest = 0;
api.InsertDropdownRequest buildInsertDropdownRequest() {
  final o = api.InsertDropdownRequest();
  buildCounterInsertDropdownRequest++;
  if (buildCounterInsertDropdownRequest < 3) {
    o.dropdownDefinitionId = 'foo';
    o.endOfSegmentLocation = buildEndOfSegmentLocation();
    o.location = buildLocation();
    o.selectedOptionId = 'foo';
  }
  buildCounterInsertDropdownRequest--;
  return o;
}

void checkInsertDropdownRequest(api.InsertDropdownRequest o) {
  buildCounterInsertDropdownRequest++;
  if (buildCounterInsertDropdownRequest < 3) {
    unittest.expect(o.dropdownDefinitionId!, unittest.equals('foo'));
    checkEndOfSegmentLocation(o.endOfSegmentLocation!);
    checkLocation(o.location!);
    unittest.expect(o.selectedOptionId!, unittest.equals('foo'));
  }
  buildCounterInsertDropdownRequest--;
}

core.int buildCounterInsertDropdownResponse = 0;
api.InsertDropdownResponse buildInsertDropdownResponse() {
  final o = api.InsertDropdownResponse();
  buildCounterInsertDropdownResponse++;
  if (buildCounterInsertDropdownResponse < 3) {
    o.dropdown = buildDropdown();
  }
  buildCounterInsertDropdownResponse--;
  return o;
}

void checkInsertDropdownResponse(api.InsertDropdownResponse o) {
  buildCounterInsertDropdownResponse++;
  if (buildCounterInsertDropdownResponse < 3) {
    checkDropdown(o.dropdown!);
  }
  buildCounterInsertDropdownResponse--;
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
    unittest.expect(o.uri!, unittest.equals('foo'));
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
    unittest.expect(o.objectId!, unittest.equals('foo'));
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
  api.InsertInlineSheetsChartResponse o,
) {
  buildCounterInsertInlineSheetsChartResponse++;
  if (buildCounterInsertInlineSheetsChartResponse < 3) {
    unittest.expect(o.objectId!, unittest.equals('foo'));
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

core.int buildCounterInsertPersonRequest = 0;
api.InsertPersonRequest buildInsertPersonRequest() {
  final o = api.InsertPersonRequest();
  buildCounterInsertPersonRequest++;
  if (buildCounterInsertPersonRequest < 3) {
    o.endOfSegmentLocation = buildEndOfSegmentLocation();
    o.location = buildLocation();
    o.personProperties = buildPersonProperties();
  }
  buildCounterInsertPersonRequest--;
  return o;
}

void checkInsertPersonRequest(api.InsertPersonRequest o) {
  buildCounterInsertPersonRequest++;
  if (buildCounterInsertPersonRequest < 3) {
    checkEndOfSegmentLocation(o.endOfSegmentLocation!);
    checkLocation(o.location!);
    checkPersonProperties(o.personProperties!);
  }
  buildCounterInsertPersonRequest--;
}

core.int buildCounterInsertRichLinkRequest = 0;
api.InsertRichLinkRequest buildInsertRichLinkRequest() {
  final o = api.InsertRichLinkRequest();
  buildCounterInsertRichLinkRequest++;
  if (buildCounterInsertRichLinkRequest < 3) {
    o.endOfSegmentLocation = buildEndOfSegmentLocation();
    o.location = buildLocation();
    o.richLinkProperties = buildRichLinkProperties();
  }
  buildCounterInsertRichLinkRequest--;
  return o;
}

void checkInsertRichLinkRequest(api.InsertRichLinkRequest o) {
  buildCounterInsertRichLinkRequest++;
  if (buildCounterInsertRichLinkRequest < 3) {
    checkEndOfSegmentLocation(o.endOfSegmentLocation!);
    checkLocation(o.location!);
    checkRichLinkProperties(o.richLinkProperties!);
  }
  buildCounterInsertRichLinkRequest--;
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
    unittest.expect(o.sectionType!, unittest.equals('foo'));
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
    unittest.expect(o.columns!, unittest.equals(42));
    checkEndOfSegmentLocation(o.endOfSegmentLocation!);
    checkLocation(o.location!);
    unittest.expect(o.rows!, unittest.equals(42));
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
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterInsertTextRequest--;
}

core.int buildCounterLink = 0;
api.Link buildLink() {
  final o = api.Link();
  buildCounterLink++;
  if (buildCounterLink < 3) {
    o.bookmark = buildBookmarkLink();
    o.bookmarkId = 'foo';
    o.heading = buildHeadingLink();
    o.headingId = 'foo';
    o.tabId = 'foo';
    o.url = 'foo';
  }
  buildCounterLink--;
  return o;
}

void checkLink(api.Link o) {
  buildCounterLink++;
  if (buildCounterLink < 3) {
    checkBookmarkLink(o.bookmark!);
    unittest.expect(o.bookmarkId!, unittest.equals('foo'));
    checkHeadingLink(o.heading!);
    unittest.expect(o.headingId!, unittest.equals('foo'));
    unittest.expect(o.tabId!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
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
  api.LinkedContentReferenceSuggestionState o,
) {
  buildCounterLinkedContentReferenceSuggestionState++;
  if (buildCounterLinkedContentReferenceSuggestionState < 3) {
    checkSheetsChartReferenceSuggestionState(
      o.sheetsChartReferenceSuggestionState!,
    );
  }
  buildCounterLinkedContentReferenceSuggestionState--;
}

core.List<core.String> buildUnnamed61() => ['foo', 'foo'];

void checkUnnamed61(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.SuggestedListProperties> buildUnnamed62() => {
  'x': buildSuggestedListProperties(),
  'y': buildSuggestedListProperties(),
};

void checkUnnamed62(core.Map<core.String, api.SuggestedListProperties> o) {
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
    o.suggestedDeletionIds = buildUnnamed61();
    o.suggestedInsertionId = 'foo';
    o.suggestedListPropertiesChanges = buildUnnamed62();
  }
  buildCounterList--;
  return o;
}

void checkList(api.List o) {
  buildCounterList++;
  if (buildCounterList < 3) {
    checkListProperties(o.listProperties!);
    checkUnnamed61(o.suggestedDeletionIds!);
    unittest.expect(o.suggestedInsertionId!, unittest.equals('foo'));
    checkUnnamed62(o.suggestedListPropertiesChanges!);
  }
  buildCounterList--;
}

core.List<api.NestingLevel> buildUnnamed63() => [
  buildNestingLevel(),
  buildNestingLevel(),
];

void checkUnnamed63(core.List<api.NestingLevel> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNestingLevel(o[0]);
  checkNestingLevel(o[1]);
}

core.int buildCounterListProperties = 0;
api.ListProperties buildListProperties() {
  final o = api.ListProperties();
  buildCounterListProperties++;
  if (buildCounterListProperties < 3) {
    o.nestingLevels = buildUnnamed63();
  }
  buildCounterListProperties--;
  return o;
}

void checkListProperties(api.ListProperties o) {
  buildCounterListProperties++;
  if (buildCounterListProperties < 3) {
    checkUnnamed63(o.nestingLevels!);
  }
  buildCounterListProperties--;
}

core.List<api.NestingLevelSuggestionState> buildUnnamed64() => [
  buildNestingLevelSuggestionState(),
  buildNestingLevelSuggestionState(),
];

void checkUnnamed64(core.List<api.NestingLevelSuggestionState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNestingLevelSuggestionState(o[0]);
  checkNestingLevelSuggestionState(o[1]);
}

core.int buildCounterListPropertiesSuggestionState = 0;
api.ListPropertiesSuggestionState buildListPropertiesSuggestionState() {
  final o = api.ListPropertiesSuggestionState();
  buildCounterListPropertiesSuggestionState++;
  if (buildCounterListPropertiesSuggestionState < 3) {
    o.nestingLevelsSuggestionStates = buildUnnamed64();
  }
  buildCounterListPropertiesSuggestionState--;
  return o;
}

void checkListPropertiesSuggestionState(api.ListPropertiesSuggestionState o) {
  buildCounterListPropertiesSuggestionState++;
  if (buildCounterListPropertiesSuggestionState < 3) {
    checkUnnamed64(o.nestingLevelsSuggestionStates!);
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
    o.tabId = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.index!, unittest.equals(42));
    unittest.expect(o.segmentId!, unittest.equals('foo'));
    unittest.expect(o.tabId!, unittest.equals('foo'));
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

core.List<api.Range> buildUnnamed65() => [buildRange(), buildRange()];

void checkUnnamed65(core.List<api.Range> o) {
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
    o.ranges = buildUnnamed65();
  }
  buildCounterNamedRange--;
  return o;
}

void checkNamedRange(api.NamedRange o) {
  buildCounterNamedRange++;
  if (buildCounterNamedRange < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.namedRangeId!, unittest.equals('foo'));
    checkUnnamed65(o.ranges!);
  }
  buildCounterNamedRange--;
}

core.List<api.NamedRange> buildUnnamed66() => [
  buildNamedRange(),
  buildNamedRange(),
];

void checkUnnamed66(core.List<api.NamedRange> o) {
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
    o.namedRanges = buildUnnamed66();
  }
  buildCounterNamedRanges--;
  return o;
}

void checkNamedRanges(api.NamedRanges o) {
  buildCounterNamedRanges++;
  if (buildCounterNamedRanges < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed66(o.namedRanges!);
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
    unittest.expect(o.namedStyleType!, unittest.equals('foo'));
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
    unittest.expect(o.namedStyleType!, unittest.equals('foo'));
    checkParagraphStyleSuggestionState(o.paragraphStyleSuggestionState!);
    checkTextStyleSuggestionState(o.textStyleSuggestionState!);
  }
  buildCounterNamedStyleSuggestionState--;
}

core.List<api.NamedStyle> buildUnnamed67() => [
  buildNamedStyle(),
  buildNamedStyle(),
];

void checkUnnamed67(core.List<api.NamedStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamedStyle(o[0]);
  checkNamedStyle(o[1]);
}

core.int buildCounterNamedStyles = 0;
api.NamedStyles buildNamedStyles() {
  final o = api.NamedStyles();
  buildCounterNamedStyles++;
  if (buildCounterNamedStyles < 3) {
    o.styles = buildUnnamed67();
  }
  buildCounterNamedStyles--;
  return o;
}

void checkNamedStyles(api.NamedStyles o) {
  buildCounterNamedStyles++;
  if (buildCounterNamedStyles < 3) {
    checkUnnamed67(o.styles!);
  }
  buildCounterNamedStyles--;
}

core.List<api.NamedStyleSuggestionState> buildUnnamed68() => [
  buildNamedStyleSuggestionState(),
  buildNamedStyleSuggestionState(),
];

void checkUnnamed68(core.List<api.NamedStyleSuggestionState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNamedStyleSuggestionState(o[0]);
  checkNamedStyleSuggestionState(o[1]);
}

core.int buildCounterNamedStylesSuggestionState = 0;
api.NamedStylesSuggestionState buildNamedStylesSuggestionState() {
  final o = api.NamedStylesSuggestionState();
  buildCounterNamedStylesSuggestionState++;
  if (buildCounterNamedStylesSuggestionState < 3) {
    o.stylesSuggestionStates = buildUnnamed68();
  }
  buildCounterNamedStylesSuggestionState--;
  return o;
}

void checkNamedStylesSuggestionState(api.NamedStylesSuggestionState o) {
  buildCounterNamedStylesSuggestionState++;
  if (buildCounterNamedStylesSuggestionState < 3) {
    checkUnnamed68(o.stylesSuggestionStates!);
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
    unittest.expect(o.bulletAlignment!, unittest.equals('foo'));
    unittest.expect(o.glyphFormat!, unittest.equals('foo'));
    unittest.expect(o.glyphSymbol!, unittest.equals('foo'));
    unittest.expect(o.glyphType!, unittest.equals('foo'));
    checkDimension(o.indentFirstLine!);
    checkDimension(o.indentStart!);
    unittest.expect(o.startNumber!, unittest.equals(42));
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

core.List<core.String> buildUnnamed69() => ['foo', 'foo'];

void checkUnnamed69(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterObjectReferences = 0;
api.ObjectReferences buildObjectReferences() {
  final o = api.ObjectReferences();
  buildCounterObjectReferences++;
  if (buildCounterObjectReferences < 3) {
    o.objectIds = buildUnnamed69();
  }
  buildCounterObjectReferences--;
  return o;
}

void checkObjectReferences(api.ObjectReferences o) {
  buildCounterObjectReferences++;
  if (buildCounterObjectReferences < 3) {
    checkUnnamed69(o.objectIds!);
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

core.List<core.String> buildUnnamed70() => ['foo', 'foo'];

void checkUnnamed70(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed71() => ['foo', 'foo'];

void checkUnnamed71(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.SuggestedTextStyle> buildUnnamed72() => {
  'x': buildSuggestedTextStyle(),
  'y': buildSuggestedTextStyle(),
};

void checkUnnamed72(core.Map<core.String, api.SuggestedTextStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTextStyle(o['x']!);
  checkSuggestedTextStyle(o['y']!);
}

core.int buildCounterPageBreak = 0;
api.PageBreak buildPageBreak() {
  final o = api.PageBreak();
  buildCounterPageBreak++;
  if (buildCounterPageBreak < 3) {
    o.suggestedDeletionIds = buildUnnamed70();
    o.suggestedInsertionIds = buildUnnamed71();
    o.suggestedTextStyleChanges = buildUnnamed72();
    o.textStyle = buildTextStyle();
  }
  buildCounterPageBreak--;
  return o;
}

void checkPageBreak(api.PageBreak o) {
  buildCounterPageBreak++;
  if (buildCounterPageBreak < 3) {
    checkUnnamed70(o.suggestedDeletionIds!);
    checkUnnamed71(o.suggestedInsertionIds!);
    checkUnnamed72(o.suggestedTextStyleChanges!);
    checkTextStyle(o.textStyle!);
  }
  buildCounterPageBreak--;
}

core.List<api.ParagraphElement> buildUnnamed73() => [
  buildParagraphElement(),
  buildParagraphElement(),
];

void checkUnnamed73(core.List<api.ParagraphElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParagraphElement(o[0]);
  checkParagraphElement(o[1]);
}

core.List<core.String> buildUnnamed74() => ['foo', 'foo'];

void checkUnnamed74(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.SuggestedBullet> buildUnnamed75() => {
  'x': buildSuggestedBullet(),
  'y': buildSuggestedBullet(),
};

void checkUnnamed75(core.Map<core.String, api.SuggestedBullet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedBullet(o['x']!);
  checkSuggestedBullet(o['y']!);
}

core.Map<core.String, api.SuggestedParagraphStyle> buildUnnamed76() => {
  'x': buildSuggestedParagraphStyle(),
  'y': buildSuggestedParagraphStyle(),
};

void checkUnnamed76(core.Map<core.String, api.SuggestedParagraphStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedParagraphStyle(o['x']!);
  checkSuggestedParagraphStyle(o['y']!);
}

core.Map<core.String, api.ObjectReferences> buildUnnamed77() => {
  'x': buildObjectReferences(),
  'y': buildObjectReferences(),
};

void checkUnnamed77(core.Map<core.String, api.ObjectReferences> o) {
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
    o.elements = buildUnnamed73();
    o.paragraphStyle = buildParagraphStyle();
    o.positionedObjectIds = buildUnnamed74();
    o.suggestedBulletChanges = buildUnnamed75();
    o.suggestedParagraphStyleChanges = buildUnnamed76();
    o.suggestedPositionedObjectIds = buildUnnamed77();
  }
  buildCounterParagraph--;
  return o;
}

void checkParagraph(api.Paragraph o) {
  buildCounterParagraph++;
  if (buildCounterParagraph < 3) {
    checkBullet(o.bullet!);
    checkUnnamed73(o.elements!);
    checkParagraphStyle(o.paragraphStyle!);
    checkUnnamed74(o.positionedObjectIds!);
    checkUnnamed75(o.suggestedBulletChanges!);
    checkUnnamed76(o.suggestedParagraphStyleChanges!);
    checkUnnamed77(o.suggestedPositionedObjectIds!);
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
    unittest.expect(o.dashStyle!, unittest.equals('foo'));
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
    o.dateElement = buildDateElement();
    o.dropdown = buildDropdown();
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
    checkDateElement(o.dateElement!);
    checkDropdown(o.dropdown!);
    unittest.expect(o.endIndex!, unittest.equals(42));
    checkEquation(o.equation!);
    checkFootnoteReference(o.footnoteReference!);
    checkHorizontalRule(o.horizontalRule!);
    checkInlineObjectElement(o.inlineObjectElement!);
    checkPageBreak(o.pageBreak!);
    checkPerson(o.person!);
    checkRichLink(o.richLink!);
    unittest.expect(o.startIndex!, unittest.equals(42));
    checkTextRun(o.textRun!);
  }
  buildCounterParagraphElement--;
}

core.List<api.TabStop> buildUnnamed78() => [buildTabStop(), buildTabStop()];

void checkUnnamed78(core.List<api.TabStop> o) {
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
    o.pageBreakBefore = true;
    o.shading = buildShading();
    o.spaceAbove = buildDimension();
    o.spaceBelow = buildDimension();
    o.spacingMode = 'foo';
    o.tabStops = buildUnnamed78();
  }
  buildCounterParagraphStyle--;
  return o;
}

void checkParagraphStyle(api.ParagraphStyle o) {
  buildCounterParagraphStyle++;
  if (buildCounterParagraphStyle < 3) {
    unittest.expect(o.alignment!, unittest.equals('foo'));
    unittest.expect(o.avoidWidowAndOrphan!, unittest.isTrue);
    checkParagraphBorder(o.borderBetween!);
    checkParagraphBorder(o.borderBottom!);
    checkParagraphBorder(o.borderLeft!);
    checkParagraphBorder(o.borderRight!);
    checkParagraphBorder(o.borderTop!);
    unittest.expect(o.direction!, unittest.equals('foo'));
    unittest.expect(o.headingId!, unittest.equals('foo'));
    checkDimension(o.indentEnd!);
    checkDimension(o.indentFirstLine!);
    checkDimension(o.indentStart!);
    unittest.expect(o.keepLinesTogether!, unittest.isTrue);
    unittest.expect(o.keepWithNext!, unittest.isTrue);
    unittest.expect(o.lineSpacing!, unittest.equals(42.0));
    unittest.expect(o.namedStyleType!, unittest.equals('foo'));
    unittest.expect(o.pageBreakBefore!, unittest.isTrue);
    checkShading(o.shading!);
    checkDimension(o.spaceAbove!);
    checkDimension(o.spaceBelow!);
    unittest.expect(o.spacingMode!, unittest.equals('foo'));
    checkUnnamed78(o.tabStops!);
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
    o.pageBreakBeforeSuggested = true;
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
    unittest.expect(o.pageBreakBeforeSuggested!, unittest.isTrue);
    checkShadingSuggestionState(o.shadingSuggestionState!);
    unittest.expect(o.spaceAboveSuggested!, unittest.isTrue);
    unittest.expect(o.spaceBelowSuggested!, unittest.isTrue);
    unittest.expect(o.spacingModeSuggested!, unittest.isTrue);
  }
  buildCounterParagraphStyleSuggestionState--;
}

core.List<core.String> buildUnnamed79() => ['foo', 'foo'];

void checkUnnamed79(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed80() => ['foo', 'foo'];

void checkUnnamed80(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.SuggestedTextStyle> buildUnnamed81() => {
  'x': buildSuggestedTextStyle(),
  'y': buildSuggestedTextStyle(),
};

void checkUnnamed81(core.Map<core.String, api.SuggestedTextStyle> o) {
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
    o.suggestedDeletionIds = buildUnnamed79();
    o.suggestedInsertionIds = buildUnnamed80();
    o.suggestedTextStyleChanges = buildUnnamed81();
    o.textStyle = buildTextStyle();
  }
  buildCounterPerson--;
  return o;
}

void checkPerson(api.Person o) {
  buildCounterPerson++;
  if (buildCounterPerson < 3) {
    unittest.expect(o.personId!, unittest.equals('foo'));
    checkPersonProperties(o.personProperties!);
    checkUnnamed79(o.suggestedDeletionIds!);
    checkUnnamed80(o.suggestedInsertionIds!);
    checkUnnamed81(o.suggestedTextStyleChanges!);
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
    unittest.expect(o.email!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterPersonProperties--;
}

core.int buildCounterPinTableHeaderRowsRequest = 0;
api.PinTableHeaderRowsRequest buildPinTableHeaderRowsRequest() {
  final o = api.PinTableHeaderRowsRequest();
  buildCounterPinTableHeaderRowsRequest++;
  if (buildCounterPinTableHeaderRowsRequest < 3) {
    o.pinnedHeaderRowsCount = 42;
    o.tableStartLocation = buildLocation();
  }
  buildCounterPinTableHeaderRowsRequest--;
  return o;
}

void checkPinTableHeaderRowsRequest(api.PinTableHeaderRowsRequest o) {
  buildCounterPinTableHeaderRowsRequest++;
  if (buildCounterPinTableHeaderRowsRequest < 3) {
    unittest.expect(o.pinnedHeaderRowsCount!, unittest.equals(42));
    checkLocation(o.tableStartLocation!);
  }
  buildCounterPinTableHeaderRowsRequest--;
}

core.List<core.String> buildUnnamed82() => ['foo', 'foo'];

void checkUnnamed82(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.SuggestedPositionedObjectProperties>
buildUnnamed83() => {
  'x': buildSuggestedPositionedObjectProperties(),
  'y': buildSuggestedPositionedObjectProperties(),
};

void checkUnnamed83(
  core.Map<core.String, api.SuggestedPositionedObjectProperties> o,
) {
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
    o.suggestedDeletionIds = buildUnnamed82();
    o.suggestedInsertionId = 'foo';
    o.suggestedPositionedObjectPropertiesChanges = buildUnnamed83();
  }
  buildCounterPositionedObject--;
  return o;
}

void checkPositionedObject(api.PositionedObject o) {
  buildCounterPositionedObject++;
  if (buildCounterPositionedObject < 3) {
    unittest.expect(o.objectId!, unittest.equals('foo'));
    checkPositionedObjectProperties(o.positionedObjectProperties!);
    checkUnnamed82(o.suggestedDeletionIds!);
    unittest.expect(o.suggestedInsertionId!, unittest.equals('foo'));
    checkUnnamed83(o.suggestedPositionedObjectPropertiesChanges!);
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
    unittest.expect(o.layout!, unittest.equals('foo'));
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
  api.PositionedObjectPositioningSuggestionState o,
) {
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
  api.PositionedObjectPropertiesSuggestionState o,
) {
  buildCounterPositionedObjectPropertiesSuggestionState++;
  if (buildCounterPositionedObjectPropertiesSuggestionState < 3) {
    checkEmbeddedObjectSuggestionState(o.embeddedObjectSuggestionState!);
    checkPositionedObjectPositioningSuggestionState(
      o.positioningSuggestionState!,
    );
  }
  buildCounterPositionedObjectPropertiesSuggestionState--;
}

core.int buildCounterPost = 0;
api.Post buildPost() {
  final o = api.Post();
  buildCounterPost++;
  if (buildCounterPost < 3) {
    o.assigneeEmail = 'foo';
    o.author = buildPostAuthor();
    o.commentAction = 'foo';
    o.content = 'foo';
    o.contentHtml = 'foo';
    o.createTime = 'foo';
    o.deleted = true;
    o.fromCopiedDocument = true;
    o.fromDocumentComparison = true;
    o.fromImportedDocument = true;
    o.postId = 'foo';
    o.suggestionAction = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterPost--;
  return o;
}

void checkPost(api.Post o) {
  buildCounterPost++;
  if (buildCounterPost < 3) {
    unittest.expect(o.assigneeEmail!, unittest.equals('foo'));
    checkPostAuthor(o.author!);
    unittest.expect(o.commentAction!, unittest.equals('foo'));
    unittest.expect(o.content!, unittest.equals('foo'));
    unittest.expect(o.contentHtml!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.deleted!, unittest.isTrue);
    unittest.expect(o.fromCopiedDocument!, unittest.isTrue);
    unittest.expect(o.fromDocumentComparison!, unittest.isTrue);
    unittest.expect(o.fromImportedDocument!, unittest.isTrue);
    unittest.expect(o.postId!, unittest.equals('foo'));
    unittest.expect(o.suggestionAction!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterPost--;
}

core.int buildCounterPostAuthor = 0;
api.PostAuthor buildPostAuthor() {
  final o = api.PostAuthor();
  buildCounterPostAuthor++;
  if (buildCounterPostAuthor < 3) {
    o.anonymous = true;
    o.displayName = 'foo';
    o.me = true;
    o.user = 'foo';
  }
  buildCounterPostAuthor--;
  return o;
}

void checkPostAuthor(api.PostAuthor o) {
  buildCounterPostAuthor++;
  if (buildCounterPostAuthor < 3) {
    unittest.expect(o.anonymous!, unittest.isTrue);
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.me!, unittest.isTrue);
    unittest.expect(o.user!, unittest.equals('foo'));
  }
  buildCounterPostAuthor--;
}

core.int buildCounterRange = 0;
api.Range buildRange() {
  final o = api.Range();
  buildCounterRange++;
  if (buildCounterRange < 3) {
    o.endIndex = 42;
    o.segmentId = 'foo';
    o.startIndex = 42;
    o.tabId = 'foo';
  }
  buildCounterRange--;
  return o;
}

void checkRange(api.Range o) {
  buildCounterRange++;
  if (buildCounterRange < 3) {
    unittest.expect(o.endIndex!, unittest.equals(42));
    unittest.expect(o.segmentId!, unittest.equals('foo'));
    unittest.expect(o.startIndex!, unittest.equals(42));
    unittest.expect(o.tabId!, unittest.equals('foo'));
  }
  buildCounterRange--;
}

core.int buildCounterRejectSuggestionRequest = 0;
api.RejectSuggestionRequest buildRejectSuggestionRequest() {
  final o = api.RejectSuggestionRequest();
  buildCounterRejectSuggestionRequest++;
  if (buildCounterRejectSuggestionRequest < 3) {
    o.suggestionId = 'foo';
  }
  buildCounterRejectSuggestionRequest--;
  return o;
}

void checkRejectSuggestionRequest(api.RejectSuggestionRequest o) {
  buildCounterRejectSuggestionRequest++;
  if (buildCounterRejectSuggestionRequest < 3) {
    unittest.expect(o.suggestionId!, unittest.equals('foo'));
  }
  buildCounterRejectSuggestionRequest--;
}

core.int buildCounterReplaceAllTextRequest = 0;
api.ReplaceAllTextRequest buildReplaceAllTextRequest() {
  final o = api.ReplaceAllTextRequest();
  buildCounterReplaceAllTextRequest++;
  if (buildCounterReplaceAllTextRequest < 3) {
    o.containsText = buildSubstringMatchCriteria();
    o.replaceText = 'foo';
    o.tabsCriteria = buildTabsCriteria();
  }
  buildCounterReplaceAllTextRequest--;
  return o;
}

void checkReplaceAllTextRequest(api.ReplaceAllTextRequest o) {
  buildCounterReplaceAllTextRequest++;
  if (buildCounterReplaceAllTextRequest < 3) {
    checkSubstringMatchCriteria(o.containsText!);
    unittest.expect(o.replaceText!, unittest.equals('foo'));
    checkTabsCriteria(o.tabsCriteria!);
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
    unittest.expect(o.occurrencesChanged!, unittest.equals(42));
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
    o.tabId = 'foo';
    o.uri = 'foo';
  }
  buildCounterReplaceImageRequest--;
  return o;
}

void checkReplaceImageRequest(api.ReplaceImageRequest o) {
  buildCounterReplaceImageRequest++;
  if (buildCounterReplaceImageRequest < 3) {
    unittest.expect(o.imageObjectId!, unittest.equals('foo'));
    unittest.expect(o.imageReplaceMethod!, unittest.equals('foo'));
    unittest.expect(o.tabId!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
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
    o.tabsCriteria = buildTabsCriteria();
    o.text = 'foo';
  }
  buildCounterReplaceNamedRangeContentRequest--;
  return o;
}

void checkReplaceNamedRangeContentRequest(
  api.ReplaceNamedRangeContentRequest o,
) {
  buildCounterReplaceNamedRangeContentRequest++;
  if (buildCounterReplaceNamedRangeContentRequest < 3) {
    unittest.expect(o.namedRangeId!, unittest.equals('foo'));
    unittest.expect(o.namedRangeName!, unittest.equals('foo'));
    checkTabsCriteria(o.tabsCriteria!);
    unittest.expect(o.text!, unittest.equals('foo'));
  }
  buildCounterReplaceNamedRangeContentRequest--;
}

core.int buildCounterRequest = 0;
api.Request buildRequest() {
  final o = api.Request();
  buildCounterRequest++;
  if (buildCounterRequest < 3) {
    o.acceptSuggestion = buildAcceptSuggestionRequest();
    o.addCommentReply = buildAddCommentReplyRequest();
    o.addDocumentTab = buildAddDocumentTabRequest();
    o.createDropdownDefinition = buildCreateDropdownDefinitionRequest();
    o.createFooter = buildCreateFooterRequest();
    o.createFootnote = buildCreateFootnoteRequest();
    o.createHeader = buildCreateHeaderRequest();
    o.createNamedRange = buildCreateNamedRangeRequest();
    o.createParagraphBullets = buildCreateParagraphBulletsRequest();
    o.deleteComment = buildDeleteCommentRequest();
    o.deleteCommentReply = buildDeleteCommentReplyRequest();
    o.deleteContentRange = buildDeleteContentRangeRequest();
    o.deleteDropdownDefinition = buildDeleteDropdownDefinitionRequest();
    o.deleteFooter = buildDeleteFooterRequest();
    o.deleteHeader = buildDeleteHeaderRequest();
    o.deleteNamedRange = buildDeleteNamedRangeRequest();
    o.deleteParagraphBullets = buildDeleteParagraphBulletsRequest();
    o.deletePositionedObject = buildDeletePositionedObjectRequest();
    o.deleteSuggestion = buildDeleteSuggestionRequest();
    o.deleteTab = buildDeleteTabRequest();
    o.deleteTableColumn = buildDeleteTableColumnRequest();
    o.deleteTableRow = buildDeleteTableRowRequest();
    o.insertComment = buildInsertCommentRequest();
    o.insertDate = buildInsertDateRequest();
    o.insertDropdown = buildInsertDropdownRequest();
    o.insertInlineImage = buildInsertInlineImageRequest();
    o.insertPageBreak = buildInsertPageBreakRequest();
    o.insertPerson = buildInsertPersonRequest();
    o.insertRichLink = buildInsertRichLinkRequest();
    o.insertSectionBreak = buildInsertSectionBreakRequest();
    o.insertTable = buildInsertTableRequest();
    o.insertTableColumn = buildInsertTableColumnRequest();
    o.insertTableRow = buildInsertTableRowRequest();
    o.insertText = buildInsertTextRequest();
    o.mergeTableCells = buildMergeTableCellsRequest();
    o.pinTableHeaderRows = buildPinTableHeaderRowsRequest();
    o.rejectSuggestion = buildRejectSuggestionRequest();
    o.replaceAllText = buildReplaceAllTextRequest();
    o.replaceImage = buildReplaceImageRequest();
    o.replaceNamedRangeContent = buildReplaceNamedRangeContentRequest();
    o.unmergeTableCells = buildUnmergeTableCellsRequest();
    o.updateCommentPost = buildUpdateCommentPostRequest();
    o.updateDocumentStyle = buildUpdateDocumentStyleRequest();
    o.updateDocumentTabProperties = buildUpdateDocumentTabPropertiesRequest();
    o.updateDropdownDefinitionProperties =
        buildUpdateDropdownDefinitionPropertiesRequest();
    o.updateDropdownProperties = buildUpdateDropdownPropertiesRequest();
    o.updateNamedStyle = buildUpdateNamedStyleRequest();
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
    checkAcceptSuggestionRequest(o.acceptSuggestion!);
    checkAddCommentReplyRequest(o.addCommentReply!);
    checkAddDocumentTabRequest(o.addDocumentTab!);
    checkCreateDropdownDefinitionRequest(o.createDropdownDefinition!);
    checkCreateFooterRequest(o.createFooter!);
    checkCreateFootnoteRequest(o.createFootnote!);
    checkCreateHeaderRequest(o.createHeader!);
    checkCreateNamedRangeRequest(o.createNamedRange!);
    checkCreateParagraphBulletsRequest(o.createParagraphBullets!);
    checkDeleteCommentRequest(o.deleteComment!);
    checkDeleteCommentReplyRequest(o.deleteCommentReply!);
    checkDeleteContentRangeRequest(o.deleteContentRange!);
    checkDeleteDropdownDefinitionRequest(o.deleteDropdownDefinition!);
    checkDeleteFooterRequest(o.deleteFooter!);
    checkDeleteHeaderRequest(o.deleteHeader!);
    checkDeleteNamedRangeRequest(o.deleteNamedRange!);
    checkDeleteParagraphBulletsRequest(o.deleteParagraphBullets!);
    checkDeletePositionedObjectRequest(o.deletePositionedObject!);
    checkDeleteSuggestionRequest(o.deleteSuggestion!);
    checkDeleteTabRequest(o.deleteTab!);
    checkDeleteTableColumnRequest(o.deleteTableColumn!);
    checkDeleteTableRowRequest(o.deleteTableRow!);
    checkInsertCommentRequest(o.insertComment!);
    checkInsertDateRequest(o.insertDate!);
    checkInsertDropdownRequest(o.insertDropdown!);
    checkInsertInlineImageRequest(o.insertInlineImage!);
    checkInsertPageBreakRequest(o.insertPageBreak!);
    checkInsertPersonRequest(o.insertPerson!);
    checkInsertRichLinkRequest(o.insertRichLink!);
    checkInsertSectionBreakRequest(o.insertSectionBreak!);
    checkInsertTableRequest(o.insertTable!);
    checkInsertTableColumnRequest(o.insertTableColumn!);
    checkInsertTableRowRequest(o.insertTableRow!);
    checkInsertTextRequest(o.insertText!);
    checkMergeTableCellsRequest(o.mergeTableCells!);
    checkPinTableHeaderRowsRequest(o.pinTableHeaderRows!);
    checkRejectSuggestionRequest(o.rejectSuggestion!);
    checkReplaceAllTextRequest(o.replaceAllText!);
    checkReplaceImageRequest(o.replaceImage!);
    checkReplaceNamedRangeContentRequest(o.replaceNamedRangeContent!);
    checkUnmergeTableCellsRequest(o.unmergeTableCells!);
    checkUpdateCommentPostRequest(o.updateCommentPost!);
    checkUpdateDocumentStyleRequest(o.updateDocumentStyle!);
    checkUpdateDocumentTabPropertiesRequest(o.updateDocumentTabProperties!);
    checkUpdateDropdownDefinitionPropertiesRequest(
      o.updateDropdownDefinitionProperties!,
    );
    checkUpdateDropdownPropertiesRequest(o.updateDropdownProperties!);
    checkUpdateNamedStyleRequest(o.updateNamedStyle!);
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
    o.addCommentReply = buildAddCommentReplyResponse();
    o.addDocumentTab = buildAddDocumentTabResponse();
    o.createDropdownDefinition = buildCreateDropdownDefinitionResponse();
    o.createFooter = buildCreateFooterResponse();
    o.createFootnote = buildCreateFootnoteResponse();
    o.createHeader = buildCreateHeaderResponse();
    o.createNamedRange = buildCreateNamedRangeResponse();
    o.insertComment = buildInsertCommentResponse();
    o.insertDropdown = buildInsertDropdownResponse();
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
    checkAddCommentReplyResponse(o.addCommentReply!);
    checkAddDocumentTabResponse(o.addDocumentTab!);
    checkCreateDropdownDefinitionResponse(o.createDropdownDefinition!);
    checkCreateFooterResponse(o.createFooter!);
    checkCreateFootnoteResponse(o.createFootnote!);
    checkCreateHeaderResponse(o.createHeader!);
    checkCreateNamedRangeResponse(o.createNamedRange!);
    checkInsertCommentResponse(o.insertComment!);
    checkInsertDropdownResponse(o.insertDropdown!);
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
    unittest.expect(o.blue!, unittest.equals(42.0));
    unittest.expect(o.green!, unittest.equals(42.0));
    unittest.expect(o.red!, unittest.equals(42.0));
  }
  buildCounterRgbColor--;
}

core.List<core.String> buildUnnamed84() => ['foo', 'foo'];

void checkUnnamed84(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed85() => ['foo', 'foo'];

void checkUnnamed85(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.SuggestedTextStyle> buildUnnamed86() => {
  'x': buildSuggestedTextStyle(),
  'y': buildSuggestedTextStyle(),
};

void checkUnnamed86(core.Map<core.String, api.SuggestedTextStyle> o) {
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
    o.suggestedDeletionIds = buildUnnamed84();
    o.suggestedInsertionIds = buildUnnamed85();
    o.suggestedTextStyleChanges = buildUnnamed86();
    o.textStyle = buildTextStyle();
  }
  buildCounterRichLink--;
  return o;
}

void checkRichLink(api.RichLink o) {
  buildCounterRichLink++;
  if (buildCounterRichLink < 3) {
    unittest.expect(o.richLinkId!, unittest.equals('foo'));
    checkRichLinkProperties(o.richLinkProperties!);
    checkUnnamed84(o.suggestedDeletionIds!);
    checkUnnamed85(o.suggestedInsertionIds!);
    checkUnnamed86(o.suggestedTextStyleChanges!);
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
    unittest.expect(o.mimeType!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterRichLinkProperties--;
}

core.List<core.String> buildUnnamed87() => ['foo', 'foo'];

void checkUnnamed87(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed88() => ['foo', 'foo'];

void checkUnnamed88(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSectionBreak = 0;
api.SectionBreak buildSectionBreak() {
  final o = api.SectionBreak();
  buildCounterSectionBreak++;
  if (buildCounterSectionBreak < 3) {
    o.sectionStyle = buildSectionStyle();
    o.suggestedDeletionIds = buildUnnamed87();
    o.suggestedInsertionIds = buildUnnamed88();
  }
  buildCounterSectionBreak--;
  return o;
}

void checkSectionBreak(api.SectionBreak o) {
  buildCounterSectionBreak++;
  if (buildCounterSectionBreak < 3) {
    checkSectionStyle(o.sectionStyle!);
    checkUnnamed87(o.suggestedDeletionIds!);
    checkUnnamed88(o.suggestedInsertionIds!);
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

core.List<api.SectionColumnProperties> buildUnnamed89() => [
  buildSectionColumnProperties(),
  buildSectionColumnProperties(),
];

void checkUnnamed89(core.List<api.SectionColumnProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSectionColumnProperties(o[0]);
  checkSectionColumnProperties(o[1]);
}

core.int buildCounterSectionStyle = 0;
api.SectionStyle buildSectionStyle() {
  final o = api.SectionStyle();
  buildCounterSectionStyle++;
  if (buildCounterSectionStyle < 3) {
    o.columnProperties = buildUnnamed89();
    o.columnSeparatorStyle = 'foo';
    o.contentDirection = 'foo';
    o.defaultFooterId = 'foo';
    o.defaultHeaderId = 'foo';
    o.evenPageFooterId = 'foo';
    o.evenPageHeaderId = 'foo';
    o.firstPageFooterId = 'foo';
    o.firstPageHeaderId = 'foo';
    o.flipPageOrientation = true;
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
    checkUnnamed89(o.columnProperties!);
    unittest.expect(o.columnSeparatorStyle!, unittest.equals('foo'));
    unittest.expect(o.contentDirection!, unittest.equals('foo'));
    unittest.expect(o.defaultFooterId!, unittest.equals('foo'));
    unittest.expect(o.defaultHeaderId!, unittest.equals('foo'));
    unittest.expect(o.evenPageFooterId!, unittest.equals('foo'));
    unittest.expect(o.evenPageHeaderId!, unittest.equals('foo'));
    unittest.expect(o.firstPageFooterId!, unittest.equals('foo'));
    unittest.expect(o.firstPageHeaderId!, unittest.equals('foo'));
    unittest.expect(o.flipPageOrientation!, unittest.isTrue);
    checkDimension(o.marginBottom!);
    checkDimension(o.marginFooter!);
    checkDimension(o.marginHeader!);
    checkDimension(o.marginLeft!);
    checkDimension(o.marginRight!);
    checkDimension(o.marginTop!);
    unittest.expect(o.pageNumberStart!, unittest.equals(42));
    unittest.expect(o.sectionType!, unittest.equals('foo'));
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
    unittest.expect(o.chartId!, unittest.equals(42));
    unittest.expect(o.spreadsheetId!, unittest.equals('foo'));
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
  api.SheetsChartReferenceSuggestionState o,
) {
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
    unittest.expect(o.endIndex!, unittest.equals(42));
    checkParagraph(o.paragraph!);
    checkSectionBreak(o.sectionBreak!);
    unittest.expect(o.startIndex!, unittest.equals(42));
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
    o.searchByRegex = true;
    o.text = 'foo';
  }
  buildCounterSubstringMatchCriteria--;
  return o;
}

void checkSubstringMatchCriteria(api.SubstringMatchCriteria o) {
  buildCounterSubstringMatchCriteria++;
  if (buildCounterSubstringMatchCriteria < 3) {
    unittest.expect(o.matchCase!, unittest.isTrue);
    unittest.expect(o.searchByRegex!, unittest.isTrue);
    unittest.expect(o.text!, unittest.equals('foo'));
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

core.int buildCounterSuggestedDateElementProperties = 0;
api.SuggestedDateElementProperties buildSuggestedDateElementProperties() {
  final o = api.SuggestedDateElementProperties();
  buildCounterSuggestedDateElementProperties++;
  if (buildCounterSuggestedDateElementProperties < 3) {
    o.dateElementProperties = buildDateElementProperties();
    o.dateElementPropertiesSuggestionState =
        buildDateElementPropertiesSuggestionState();
  }
  buildCounterSuggestedDateElementProperties--;
  return o;
}

void checkSuggestedDateElementProperties(api.SuggestedDateElementProperties o) {
  buildCounterSuggestedDateElementProperties++;
  if (buildCounterSuggestedDateElementProperties < 3) {
    checkDateElementProperties(o.dateElementProperties!);
    checkDateElementPropertiesSuggestionState(
      o.dateElementPropertiesSuggestionState!,
    );
  }
  buildCounterSuggestedDateElementProperties--;
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

core.int buildCounterSuggestedDropdownDefinitionProperties = 0;
api.SuggestedDropdownDefinitionProperties
buildSuggestedDropdownDefinitionProperties() {
  final o = api.SuggestedDropdownDefinitionProperties();
  buildCounterSuggestedDropdownDefinitionProperties++;
  if (buildCounterSuggestedDropdownDefinitionProperties < 3) {
    o.dropdownDefinitionProperties = buildDropdownDefinitionProperties();
    o.dropdownDefinitionPropertiesSuggestionState =
        buildDropdownDefinitionPropertiesSuggestionState();
  }
  buildCounterSuggestedDropdownDefinitionProperties--;
  return o;
}

void checkSuggestedDropdownDefinitionProperties(
  api.SuggestedDropdownDefinitionProperties o,
) {
  buildCounterSuggestedDropdownDefinitionProperties++;
  if (buildCounterSuggestedDropdownDefinitionProperties < 3) {
    checkDropdownDefinitionProperties(o.dropdownDefinitionProperties!);
    checkDropdownDefinitionPropertiesSuggestionState(
      o.dropdownDefinitionPropertiesSuggestionState!,
    );
  }
  buildCounterSuggestedDropdownDefinitionProperties--;
}

core.int buildCounterSuggestedDropdownProperties = 0;
api.SuggestedDropdownProperties buildSuggestedDropdownProperties() {
  final o = api.SuggestedDropdownProperties();
  buildCounterSuggestedDropdownProperties++;
  if (buildCounterSuggestedDropdownProperties < 3) {
    o.dropdownProperties = buildDropdownProperties();
    o.dropdownPropertiesSuggestionState =
        buildDropdownPropertiesSuggestionState();
  }
  buildCounterSuggestedDropdownProperties--;
  return o;
}

void checkSuggestedDropdownProperties(api.SuggestedDropdownProperties o) {
  buildCounterSuggestedDropdownProperties++;
  if (buildCounterSuggestedDropdownProperties < 3) {
    checkDropdownProperties(o.dropdownProperties!);
    checkDropdownPropertiesSuggestionState(
      o.dropdownPropertiesSuggestionState!,
    );
  }
  buildCounterSuggestedDropdownProperties--;
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
  api.SuggestedInlineObjectProperties o,
) {
  buildCounterSuggestedInlineObjectProperties++;
  if (buildCounterSuggestedInlineObjectProperties < 3) {
    checkInlineObjectProperties(o.inlineObjectProperties!);
    checkInlineObjectPropertiesSuggestionState(
      o.inlineObjectPropertiesSuggestionState!,
    );
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
  api.SuggestedPositionedObjectProperties o,
) {
  buildCounterSuggestedPositionedObjectProperties++;
  if (buildCounterSuggestedPositionedObjectProperties < 3) {
    checkPositionedObjectProperties(o.positionedObjectProperties!);
    checkPositionedObjectPropertiesSuggestionState(
      o.positionedObjectPropertiesSuggestionState!,
    );
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

core.List<core.String> buildUnnamed90() => ['foo', 'foo'];

void checkUnnamed90(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed91() => ['foo', 'foo'];

void checkUnnamed91(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed92() => ['foo', 'foo'];

void checkUnnamed92(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed93() => ['foo', 'foo'];

void checkUnnamed93(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed94() => ['foo', 'foo'];

void checkUnnamed94(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSuggestionResponse = 0;
api.SuggestionResponse buildSuggestionResponse() {
  final o = api.SuggestionResponse();
  buildCounterSuggestionResponse++;
  if (buildCounterSuggestionResponse < 3) {
    o.acceptedSuggestionIds = buildUnnamed90();
    o.createdSuggestionIds = buildUnnamed91();
    o.deletedSuggestionIds = buildUnnamed92();
    o.rejectedSuggestionIds = buildUnnamed93();
    o.updatedSummarySuggestionIds = buildUnnamed94();
  }
  buildCounterSuggestionResponse--;
  return o;
}

void checkSuggestionResponse(api.SuggestionResponse o) {
  buildCounterSuggestionResponse++;
  if (buildCounterSuggestionResponse < 3) {
    checkUnnamed90(o.acceptedSuggestionIds!);
    checkUnnamed91(o.createdSuggestionIds!);
    checkUnnamed92(o.deletedSuggestionIds!);
    checkUnnamed93(o.rejectedSuggestionIds!);
    checkUnnamed94(o.updatedSummarySuggestionIds!);
  }
  buildCounterSuggestionResponse--;
}

core.List<api.Post> buildUnnamed95() => [buildPost(), buildPost()];

void checkUnnamed95(core.List<api.Post> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPost(o[0]);
  checkPost(o[1]);
}

core.int buildCounterSuggestionThread = 0;
api.SuggestionThread buildSuggestionThread() {
  final o = api.SuggestionThread();
  buildCounterSuggestionThread++;
  if (buildCounterSuggestionThread < 3) {
    o.headPost = buildPost();
    o.replies = buildUnnamed95();
    o.status = 'foo';
    o.suggestionId = 'foo';
    o.summaryHtml = 'foo';
    o.summaryText = 'foo';
  }
  buildCounterSuggestionThread--;
  return o;
}

void checkSuggestionThread(api.SuggestionThread o) {
  buildCounterSuggestionThread++;
  if (buildCounterSuggestionThread < 3) {
    checkPost(o.headPost!);
    checkUnnamed95(o.replies!);
    unittest.expect(o.status!, unittest.equals('foo'));
    unittest.expect(o.suggestionId!, unittest.equals('foo'));
    unittest.expect(o.summaryHtml!, unittest.equals('foo'));
    unittest.expect(o.summaryText!, unittest.equals('foo'));
  }
  buildCounterSuggestionThread--;
}

core.List<api.Tab> buildUnnamed96() => [buildTab(), buildTab()];

void checkUnnamed96(core.List<api.Tab> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTab(o[0]);
  checkTab(o[1]);
}

core.int buildCounterTab = 0;
api.Tab buildTab() {
  final o = api.Tab();
  buildCounterTab++;
  if (buildCounterTab < 3) {
    o.childTabs = buildUnnamed96();
    o.documentTab = buildDocumentTab();
    o.tabProperties = buildTabProperties();
  }
  buildCounterTab--;
  return o;
}

void checkTab(api.Tab o) {
  buildCounterTab++;
  if (buildCounterTab < 3) {
    checkUnnamed96(o.childTabs!);
    checkDocumentTab(o.documentTab!);
    checkTabProperties(o.tabProperties!);
  }
  buildCounterTab--;
}

core.int buildCounterTabProperties = 0;
api.TabProperties buildTabProperties() {
  final o = api.TabProperties();
  buildCounterTabProperties++;
  if (buildCounterTabProperties < 3) {
    o.iconEmoji = 'foo';
    o.index = 42;
    o.nestingLevel = 42;
    o.parentTabId = 'foo';
    o.tabId = 'foo';
    o.title = 'foo';
  }
  buildCounterTabProperties--;
  return o;
}

void checkTabProperties(api.TabProperties o) {
  buildCounterTabProperties++;
  if (buildCounterTabProperties < 3) {
    unittest.expect(o.iconEmoji!, unittest.equals('foo'));
    unittest.expect(o.index!, unittest.equals(42));
    unittest.expect(o.nestingLevel!, unittest.equals(42));
    unittest.expect(o.parentTabId!, unittest.equals('foo'));
    unittest.expect(o.tabId!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterTabProperties--;
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
    unittest.expect(o.alignment!, unittest.equals('foo'));
    checkDimension(o.offset!);
  }
  buildCounterTabStop--;
}

core.List<core.String> buildUnnamed97() => ['foo', 'foo'];

void checkUnnamed97(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed98() => ['foo', 'foo'];

void checkUnnamed98(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.TableRow> buildUnnamed99() => [buildTableRow(), buildTableRow()];

void checkUnnamed99(core.List<api.TableRow> o) {
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
    o.suggestedDeletionIds = buildUnnamed97();
    o.suggestedInsertionIds = buildUnnamed98();
    o.tableRows = buildUnnamed99();
    o.tableStyle = buildTableStyle();
  }
  buildCounterTable--;
  return o;
}

void checkTable(api.Table o) {
  buildCounterTable++;
  if (buildCounterTable < 3) {
    unittest.expect(o.columns!, unittest.equals(42));
    unittest.expect(o.rows!, unittest.equals(42));
    checkUnnamed97(o.suggestedDeletionIds!);
    checkUnnamed98(o.suggestedInsertionIds!);
    checkUnnamed99(o.tableRows!);
    checkTableStyle(o.tableStyle!);
  }
  buildCounterTable--;
}

core.List<api.StructuralElement> buildUnnamed100() => [
  buildStructuralElement(),
  buildStructuralElement(),
];

void checkUnnamed100(core.List<api.StructuralElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStructuralElement(o[0]);
  checkStructuralElement(o[1]);
}

core.List<core.String> buildUnnamed101() => ['foo', 'foo'];

void checkUnnamed101(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed102() => ['foo', 'foo'];

void checkUnnamed102(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.SuggestedTableCellStyle> buildUnnamed103() => {
  'x': buildSuggestedTableCellStyle(),
  'y': buildSuggestedTableCellStyle(),
};

void checkUnnamed103(core.Map<core.String, api.SuggestedTableCellStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTableCellStyle(o['x']!);
  checkSuggestedTableCellStyle(o['y']!);
}

core.int buildCounterTableCell = 0;
api.TableCell buildTableCell() {
  final o = api.TableCell();
  buildCounterTableCell++;
  if (buildCounterTableCell < 3) {
    o.content = buildUnnamed100();
    o.endIndex = 42;
    o.startIndex = 42;
    o.suggestedDeletionIds = buildUnnamed101();
    o.suggestedInsertionIds = buildUnnamed102();
    o.suggestedTableCellStyleChanges = buildUnnamed103();
    o.tableCellStyle = buildTableCellStyle();
  }
  buildCounterTableCell--;
  return o;
}

void checkTableCell(api.TableCell o) {
  buildCounterTableCell++;
  if (buildCounterTableCell < 3) {
    checkUnnamed100(o.content!);
    unittest.expect(o.endIndex!, unittest.equals(42));
    unittest.expect(o.startIndex!, unittest.equals(42));
    checkUnnamed101(o.suggestedDeletionIds!);
    checkUnnamed102(o.suggestedInsertionIds!);
    checkUnnamed103(o.suggestedTableCellStyleChanges!);
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
    unittest.expect(o.dashStyle!, unittest.equals('foo'));
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
    unittest.expect(o.columnIndex!, unittest.equals(42));
    unittest.expect(o.rowIndex!, unittest.equals(42));
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
    unittest.expect(o.columnSpan!, unittest.equals(42));
    unittest.expect(o.contentAlignment!, unittest.equals('foo'));
    checkDimension(o.paddingBottom!);
    checkDimension(o.paddingLeft!);
    checkDimension(o.paddingRight!);
    checkDimension(o.paddingTop!);
    unittest.expect(o.rowSpan!, unittest.equals(42));
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
    unittest.expect(o.widthType!, unittest.equals('foo'));
  }
  buildCounterTableColumnProperties--;
}

core.List<api.StructuralElement> buildUnnamed104() => [
  buildStructuralElement(),
  buildStructuralElement(),
];

void checkUnnamed104(core.List<api.StructuralElement> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStructuralElement(o[0]);
  checkStructuralElement(o[1]);
}

core.List<core.String> buildUnnamed105() => ['foo', 'foo'];

void checkUnnamed105(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed106() => ['foo', 'foo'];

void checkUnnamed106(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTableOfContents = 0;
api.TableOfContents buildTableOfContents() {
  final o = api.TableOfContents();
  buildCounterTableOfContents++;
  if (buildCounterTableOfContents < 3) {
    o.content = buildUnnamed104();
    o.suggestedDeletionIds = buildUnnamed105();
    o.suggestedInsertionIds = buildUnnamed106();
  }
  buildCounterTableOfContents--;
  return o;
}

void checkTableOfContents(api.TableOfContents o) {
  buildCounterTableOfContents++;
  if (buildCounterTableOfContents < 3) {
    checkUnnamed104(o.content!);
    checkUnnamed105(o.suggestedDeletionIds!);
    checkUnnamed106(o.suggestedInsertionIds!);
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
    unittest.expect(o.columnSpan!, unittest.equals(42));
    unittest.expect(o.rowSpan!, unittest.equals(42));
    checkTableCellLocation(o.tableCellLocation!);
  }
  buildCounterTableRange--;
}

core.List<core.String> buildUnnamed107() => ['foo', 'foo'];

void checkUnnamed107(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed108() => ['foo', 'foo'];

void checkUnnamed108(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.SuggestedTableRowStyle> buildUnnamed109() => {
  'x': buildSuggestedTableRowStyle(),
  'y': buildSuggestedTableRowStyle(),
};

void checkUnnamed109(core.Map<core.String, api.SuggestedTableRowStyle> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSuggestedTableRowStyle(o['x']!);
  checkSuggestedTableRowStyle(o['y']!);
}

core.List<api.TableCell> buildUnnamed110() => [
  buildTableCell(),
  buildTableCell(),
];

void checkUnnamed110(core.List<api.TableCell> o) {
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
    o.suggestedDeletionIds = buildUnnamed107();
    o.suggestedInsertionIds = buildUnnamed108();
    o.suggestedTableRowStyleChanges = buildUnnamed109();
    o.tableCells = buildUnnamed110();
    o.tableRowStyle = buildTableRowStyle();
  }
  buildCounterTableRow--;
  return o;
}

void checkTableRow(api.TableRow o) {
  buildCounterTableRow++;
  if (buildCounterTableRow < 3) {
    unittest.expect(o.endIndex!, unittest.equals(42));
    unittest.expect(o.startIndex!, unittest.equals(42));
    checkUnnamed107(o.suggestedDeletionIds!);
    checkUnnamed108(o.suggestedInsertionIds!);
    checkUnnamed109(o.suggestedTableRowStyleChanges!);
    checkUnnamed110(o.tableCells!);
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
    o.preventOverflow = true;
    o.tableHeader = true;
  }
  buildCounterTableRowStyle--;
  return o;
}

void checkTableRowStyle(api.TableRowStyle o) {
  buildCounterTableRowStyle++;
  if (buildCounterTableRowStyle < 3) {
    checkDimension(o.minRowHeight!);
    unittest.expect(o.preventOverflow!, unittest.isTrue);
    unittest.expect(o.tableHeader!, unittest.isTrue);
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

core.List<api.TableColumnProperties> buildUnnamed111() => [
  buildTableColumnProperties(),
  buildTableColumnProperties(),
];

void checkUnnamed111(core.List<api.TableColumnProperties> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTableColumnProperties(o[0]);
  checkTableColumnProperties(o[1]);
}

core.int buildCounterTableStyle = 0;
api.TableStyle buildTableStyle() {
  final o = api.TableStyle();
  buildCounterTableStyle++;
  if (buildCounterTableStyle < 3) {
    o.tableColumnProperties = buildUnnamed111();
  }
  buildCounterTableStyle--;
  return o;
}

void checkTableStyle(api.TableStyle o) {
  buildCounterTableStyle++;
  if (buildCounterTableStyle < 3) {
    checkUnnamed111(o.tableColumnProperties!);
  }
  buildCounterTableStyle--;
}

core.List<core.String> buildUnnamed112() => ['foo', 'foo'];

void checkUnnamed112(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTabsCriteria = 0;
api.TabsCriteria buildTabsCriteria() {
  final o = api.TabsCriteria();
  buildCounterTabsCriteria++;
  if (buildCounterTabsCriteria < 3) {
    o.tabIds = buildUnnamed112();
  }
  buildCounterTabsCriteria--;
  return o;
}

void checkTabsCriteria(api.TabsCriteria o) {
  buildCounterTabsCriteria++;
  if (buildCounterTabsCriteria < 3) {
    checkUnnamed112(o.tabIds!);
  }
  buildCounterTabsCriteria--;
}

core.List<core.String> buildUnnamed113() => ['foo', 'foo'];

void checkUnnamed113(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed114() => ['foo', 'foo'];

void checkUnnamed114(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.SuggestedTextStyle> buildUnnamed115() => {
  'x': buildSuggestedTextStyle(),
  'y': buildSuggestedTextStyle(),
};

void checkUnnamed115(core.Map<core.String, api.SuggestedTextStyle> o) {
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
    o.suggestedDeletionIds = buildUnnamed113();
    o.suggestedInsertionIds = buildUnnamed114();
    o.suggestedTextStyleChanges = buildUnnamed115();
    o.textStyle = buildTextStyle();
  }
  buildCounterTextRun--;
  return o;
}

void checkTextRun(api.TextRun o) {
  buildCounterTextRun++;
  if (buildCounterTextRun < 3) {
    unittest.expect(o.content!, unittest.equals('foo'));
    checkUnnamed113(o.suggestedDeletionIds!);
    checkUnnamed114(o.suggestedInsertionIds!);
    checkUnnamed115(o.suggestedTextStyleChanges!);
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
    unittest.expect(o.baselineOffset!, unittest.equals('foo'));
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

core.int buildCounterUpdateCommentPostRequest = 0;
api.UpdateCommentPostRequest buildUpdateCommentPostRequest() {
  final o = api.UpdateCommentPostRequest();
  buildCounterUpdateCommentPostRequest++;
  if (buildCounterUpdateCommentPostRequest < 3) {
    o.commentId = 'foo';
    o.content = 'foo';
    o.postId = 'foo';
    o.suggestionId = 'foo';
  }
  buildCounterUpdateCommentPostRequest--;
  return o;
}

void checkUpdateCommentPostRequest(api.UpdateCommentPostRequest o) {
  buildCounterUpdateCommentPostRequest++;
  if (buildCounterUpdateCommentPostRequest < 3) {
    unittest.expect(o.commentId!, unittest.equals('foo'));
    unittest.expect(o.content!, unittest.equals('foo'));
    unittest.expect(o.postId!, unittest.equals('foo'));
    unittest.expect(o.suggestionId!, unittest.equals('foo'));
  }
  buildCounterUpdateCommentPostRequest--;
}

core.int buildCounterUpdateDocumentStyleRequest = 0;
api.UpdateDocumentStyleRequest buildUpdateDocumentStyleRequest() {
  final o = api.UpdateDocumentStyleRequest();
  buildCounterUpdateDocumentStyleRequest++;
  if (buildCounterUpdateDocumentStyleRequest < 3) {
    o.documentStyle = buildDocumentStyle();
    o.fields = 'foo';
    o.tabId = 'foo';
  }
  buildCounterUpdateDocumentStyleRequest--;
  return o;
}

void checkUpdateDocumentStyleRequest(api.UpdateDocumentStyleRequest o) {
  buildCounterUpdateDocumentStyleRequest++;
  if (buildCounterUpdateDocumentStyleRequest < 3) {
    checkDocumentStyle(o.documentStyle!);
    unittest.expect(o.fields!, unittest.equals('foo'));
    unittest.expect(o.tabId!, unittest.equals('foo'));
  }
  buildCounterUpdateDocumentStyleRequest--;
}

core.int buildCounterUpdateDocumentTabPropertiesRequest = 0;
api.UpdateDocumentTabPropertiesRequest
buildUpdateDocumentTabPropertiesRequest() {
  final o = api.UpdateDocumentTabPropertiesRequest();
  buildCounterUpdateDocumentTabPropertiesRequest++;
  if (buildCounterUpdateDocumentTabPropertiesRequest < 3) {
    o.fields = 'foo';
    o.tabProperties = buildTabProperties();
  }
  buildCounterUpdateDocumentTabPropertiesRequest--;
  return o;
}

void checkUpdateDocumentTabPropertiesRequest(
  api.UpdateDocumentTabPropertiesRequest o,
) {
  buildCounterUpdateDocumentTabPropertiesRequest++;
  if (buildCounterUpdateDocumentTabPropertiesRequest < 3) {
    unittest.expect(o.fields!, unittest.equals('foo'));
    checkTabProperties(o.tabProperties!);
  }
  buildCounterUpdateDocumentTabPropertiesRequest--;
}

core.Map<core.String, core.String> buildUnnamed116() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed116(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterUpdateDropdownDefinitionPropertiesRequest = 0;
api.UpdateDropdownDefinitionPropertiesRequest
buildUpdateDropdownDefinitionPropertiesRequest() {
  final o = api.UpdateDropdownDefinitionPropertiesRequest();
  buildCounterUpdateDropdownDefinitionPropertiesRequest++;
  if (buildCounterUpdateDropdownDefinitionPropertiesRequest < 3) {
    o.dropdownDefinitionId = 'foo';
    o.dropdownDefinitionProperties = buildDropdownDefinitionProperties();
    o.fields = 'foo';
    o.selectedOptionIdReplacements = buildUnnamed116();
    o.tabId = 'foo';
  }
  buildCounterUpdateDropdownDefinitionPropertiesRequest--;
  return o;
}

void checkUpdateDropdownDefinitionPropertiesRequest(
  api.UpdateDropdownDefinitionPropertiesRequest o,
) {
  buildCounterUpdateDropdownDefinitionPropertiesRequest++;
  if (buildCounterUpdateDropdownDefinitionPropertiesRequest < 3) {
    unittest.expect(o.dropdownDefinitionId!, unittest.equals('foo'));
    checkDropdownDefinitionProperties(o.dropdownDefinitionProperties!);
    unittest.expect(o.fields!, unittest.equals('foo'));
    checkUnnamed116(o.selectedOptionIdReplacements!);
    unittest.expect(o.tabId!, unittest.equals('foo'));
  }
  buildCounterUpdateDropdownDefinitionPropertiesRequest--;
}

core.int buildCounterUpdateDropdownPropertiesRequest = 0;
api.UpdateDropdownPropertiesRequest buildUpdateDropdownPropertiesRequest() {
  final o = api.UpdateDropdownPropertiesRequest();
  buildCounterUpdateDropdownPropertiesRequest++;
  if (buildCounterUpdateDropdownPropertiesRequest < 3) {
    o.dropdownId = 'foo';
    o.dropdownProperties = buildDropdownProperties();
    o.fields = 'foo';
    o.tabId = 'foo';
  }
  buildCounterUpdateDropdownPropertiesRequest--;
  return o;
}

void checkUpdateDropdownPropertiesRequest(
  api.UpdateDropdownPropertiesRequest o,
) {
  buildCounterUpdateDropdownPropertiesRequest++;
  if (buildCounterUpdateDropdownPropertiesRequest < 3) {
    unittest.expect(o.dropdownId!, unittest.equals('foo'));
    checkDropdownProperties(o.dropdownProperties!);
    unittest.expect(o.fields!, unittest.equals('foo'));
    unittest.expect(o.tabId!, unittest.equals('foo'));
  }
  buildCounterUpdateDropdownPropertiesRequest--;
}

core.int buildCounterUpdateNamedStyleRequest = 0;
api.UpdateNamedStyleRequest buildUpdateNamedStyleRequest() {
  final o = api.UpdateNamedStyleRequest();
  buildCounterUpdateNamedStyleRequest++;
  if (buildCounterUpdateNamedStyleRequest < 3) {
    o.fields = 'foo';
    o.namedStyle = buildNamedStyle();
    o.tabId = 'foo';
  }
  buildCounterUpdateNamedStyleRequest--;
  return o;
}

void checkUpdateNamedStyleRequest(api.UpdateNamedStyleRequest o) {
  buildCounterUpdateNamedStyleRequest++;
  if (buildCounterUpdateNamedStyleRequest < 3) {
    unittest.expect(o.fields!, unittest.equals('foo'));
    checkNamedStyle(o.namedStyle!);
    unittest.expect(o.tabId!, unittest.equals('foo'));
  }
  buildCounterUpdateNamedStyleRequest--;
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
    unittest.expect(o.fields!, unittest.equals('foo'));
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
    unittest.expect(o.fields!, unittest.equals('foo'));
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
    unittest.expect(o.fields!, unittest.equals('foo'));
    checkTableCellStyle(o.tableCellStyle!);
    checkTableRange(o.tableRange!);
    checkLocation(o.tableStartLocation!);
  }
  buildCounterUpdateTableCellStyleRequest--;
}

core.List<core.int> buildUnnamed117() => [42, 42];

void checkUnnamed117(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterUpdateTableColumnPropertiesRequest = 0;
api.UpdateTableColumnPropertiesRequest
buildUpdateTableColumnPropertiesRequest() {
  final o = api.UpdateTableColumnPropertiesRequest();
  buildCounterUpdateTableColumnPropertiesRequest++;
  if (buildCounterUpdateTableColumnPropertiesRequest < 3) {
    o.columnIndices = buildUnnamed117();
    o.fields = 'foo';
    o.tableColumnProperties = buildTableColumnProperties();
    o.tableStartLocation = buildLocation();
  }
  buildCounterUpdateTableColumnPropertiesRequest--;
  return o;
}

void checkUpdateTableColumnPropertiesRequest(
  api.UpdateTableColumnPropertiesRequest o,
) {
  buildCounterUpdateTableColumnPropertiesRequest++;
  if (buildCounterUpdateTableColumnPropertiesRequest < 3) {
    checkUnnamed117(o.columnIndices!);
    unittest.expect(o.fields!, unittest.equals('foo'));
    checkTableColumnProperties(o.tableColumnProperties!);
    checkLocation(o.tableStartLocation!);
  }
  buildCounterUpdateTableColumnPropertiesRequest--;
}

core.List<core.int> buildUnnamed118() => [42, 42];

void checkUnnamed118(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.int buildCounterUpdateTableRowStyleRequest = 0;
api.UpdateTableRowStyleRequest buildUpdateTableRowStyleRequest() {
  final o = api.UpdateTableRowStyleRequest();
  buildCounterUpdateTableRowStyleRequest++;
  if (buildCounterUpdateTableRowStyleRequest < 3) {
    o.fields = 'foo';
    o.rowIndices = buildUnnamed118();
    o.tableRowStyle = buildTableRowStyle();
    o.tableStartLocation = buildLocation();
  }
  buildCounterUpdateTableRowStyleRequest--;
  return o;
}

void checkUpdateTableRowStyleRequest(api.UpdateTableRowStyleRequest o) {
  buildCounterUpdateTableRowStyleRequest++;
  if (buildCounterUpdateTableRowStyleRequest < 3) {
    unittest.expect(o.fields!, unittest.equals('foo'));
    checkUnnamed118(o.rowIndices!);
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
    unittest.expect(o.fields!, unittest.equals('foo'));
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
    unittest.expect(o.fontFamily!, unittest.equals('foo'));
    unittest.expect(o.weight!, unittest.equals(42));
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
    o.writeMode = 'foo';
  }
  buildCounterWriteControl--;
  return o;
}

void checkWriteControl(api.WriteControl o) {
  buildCounterWriteControl++;
  if (buildCounterWriteControl < 3) {
    unittest.expect(o.requiredRevisionId!, unittest.equals('foo'));
    unittest.expect(o.targetRevisionId!, unittest.equals('foo'));
    unittest.expect(o.writeMode!, unittest.equals('foo'));
  }
  buildCounterWriteControl--;
}

void main() {
  unittest.group('obj-schema-AcceptSuggestionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAcceptSuggestionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AcceptSuggestionRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAcceptSuggestionRequest(od);
    });
  });

  unittest.group('obj-schema-AddCommentReplyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddCommentReplyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddCommentReplyRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAddCommentReplyRequest(od);
    });
  });

  unittest.group('obj-schema-AddCommentReplyResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddCommentReplyResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddCommentReplyResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAddCommentReplyResponse(od);
    });
  });

  unittest.group('obj-schema-AddDocumentTabRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddDocumentTabRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddDocumentTabRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAddDocumentTabRequest(od);
    });
  });

  unittest.group('obj-schema-AddDocumentTabResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddDocumentTabResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddDocumentTabResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAddDocumentTabResponse(od);
    });
  });

  unittest.group('obj-schema-AutoText', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutoText();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutoText.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutoText(od);
    });
  });

  unittest.group('obj-schema-Background', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackground();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Background.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBackground(od);
    });
  });

  unittest.group('obj-schema-BackgroundSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBackgroundSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BackgroundSuggestionState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBackgroundSuggestionState(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateDocumentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateDocumentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateDocumentRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchUpdateDocumentRequest(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateDocumentResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateDocumentResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateDocumentResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchUpdateDocumentResponse(od);
    });
  });

  unittest.group('obj-schema-Body', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBody();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Body.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBody(od);
    });
  });

  unittest.group('obj-schema-BookmarkLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBookmarkLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BookmarkLink.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBookmarkLink(od);
    });
  });

  unittest.group('obj-schema-Bullet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBullet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Bullet.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBullet(od);
    });
  });

  unittest.group('obj-schema-BulletSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBulletSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BulletSuggestionState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBulletSuggestionState(od);
    });
  });

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

  unittest.group('obj-schema-ColumnBreak', () {
    unittest.test('to-json--from-json', () async {
      final o = buildColumnBreak();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ColumnBreak.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkColumnBreak(od);
    });
  });

  unittest.group('obj-schema-CommentAnchor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommentAnchor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommentAnchor.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCommentAnchor(od);
    });
  });

  unittest.group('obj-schema-CommentThread', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCommentThread();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CommentThread.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCommentThread(od);
    });
  });

  unittest.group('obj-schema-CreateDropdownDefinitionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateDropdownDefinitionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateDropdownDefinitionRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateDropdownDefinitionRequest(od);
    });
  });

  unittest.group('obj-schema-CreateDropdownDefinitionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateDropdownDefinitionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateDropdownDefinitionResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateDropdownDefinitionResponse(od);
    });
  });

  unittest.group('obj-schema-CreateFooterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateFooterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateFooterRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateFooterRequest(od);
    });
  });

  unittest.group('obj-schema-CreateFooterResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateFooterResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateFooterResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateFooterResponse(od);
    });
  });

  unittest.group('obj-schema-CreateFootnoteRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateFootnoteRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateFootnoteRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateFootnoteRequest(od);
    });
  });

  unittest.group('obj-schema-CreateFootnoteResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateFootnoteResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateFootnoteResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateFootnoteResponse(od);
    });
  });

  unittest.group('obj-schema-CreateHeaderRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateHeaderRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateHeaderRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateHeaderRequest(od);
    });
  });

  unittest.group('obj-schema-CreateHeaderResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateHeaderResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateHeaderResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateHeaderResponse(od);
    });
  });

  unittest.group('obj-schema-CreateNamedRangeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateNamedRangeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateNamedRangeRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateNamedRangeRequest(od);
    });
  });

  unittest.group('obj-schema-CreateNamedRangeResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateNamedRangeResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateNamedRangeResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateNamedRangeResponse(od);
    });
  });

  unittest.group('obj-schema-CreateParagraphBulletsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateParagraphBulletsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateParagraphBulletsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCreateParagraphBulletsRequest(od);
    });
  });

  unittest.group('obj-schema-CropProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCropProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CropProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCropProperties(od);
    });
  });

  unittest.group('obj-schema-CropPropertiesSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCropPropertiesSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CropPropertiesSuggestionState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCropPropertiesSuggestionState(od);
    });
  });

  unittest.group('obj-schema-DateElement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDateElement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DateElement.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDateElement(od);
    });
  });

  unittest.group('obj-schema-DateElementProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDateElementProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DateElementProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDateElementProperties(od);
    });
  });

  unittest.group('obj-schema-DateElementPropertiesSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDateElementPropertiesSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DateElementPropertiesSuggestionState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDateElementPropertiesSuggestionState(od);
    });
  });

  unittest.group('obj-schema-DeleteCommentReplyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteCommentReplyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteCommentReplyRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeleteCommentReplyRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteCommentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteCommentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteCommentRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeleteCommentRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteContentRangeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteContentRangeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteContentRangeRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeleteContentRangeRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteDropdownDefinitionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteDropdownDefinitionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteDropdownDefinitionRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeleteDropdownDefinitionRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteFooterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteFooterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteFooterRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeleteFooterRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteHeaderRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteHeaderRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteHeaderRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeleteHeaderRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteNamedRangeRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteNamedRangeRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteNamedRangeRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeleteNamedRangeRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteParagraphBulletsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteParagraphBulletsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteParagraphBulletsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeleteParagraphBulletsRequest(od);
    });
  });

  unittest.group('obj-schema-DeletePositionedObjectRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeletePositionedObjectRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeletePositionedObjectRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeletePositionedObjectRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteSuggestionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteSuggestionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteSuggestionRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeleteSuggestionRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteTabRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteTabRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteTabRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeleteTabRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteTableColumnRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteTableColumnRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteTableColumnRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeleteTableColumnRequest(od);
    });
  });

  unittest.group('obj-schema-DeleteTableRowRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteTableRowRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteTableRowRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeleteTableRowRequest(od);
    });
  });

  unittest.group('obj-schema-Dimension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDimension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Dimension.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDimension(od);
    });
  });

  unittest.group('obj-schema-Document', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocument();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Document.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDocument(od);
    });
  });

  unittest.group('obj-schema-DocumentFormat', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentFormat();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DocumentFormat.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDocumentFormat(od);
    });
  });

  unittest.group('obj-schema-DocumentStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DocumentStyle.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDocumentStyle(od);
    });
  });

  unittest.group('obj-schema-DocumentStyleSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentStyleSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DocumentStyleSuggestionState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDocumentStyleSuggestionState(od);
    });
  });

  unittest.group('obj-schema-DocumentTab', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentTab();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DocumentTab.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDocumentTab(od);
    });
  });

  unittest.group('obj-schema-Dropdown', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDropdown();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Dropdown.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDropdown(od);
    });
  });

  unittest.group('obj-schema-DropdownDefinition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDropdownDefinition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DropdownDefinition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDropdownDefinition(od);
    });
  });

  unittest.group('obj-schema-DropdownDefinitionProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDropdownDefinitionProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DropdownDefinitionProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDropdownDefinitionProperties(od);
    });
  });

  unittest.group('obj-schema-DropdownDefinitionPropertiesSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDropdownDefinitionPropertiesSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DropdownDefinitionPropertiesSuggestionState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDropdownDefinitionPropertiesSuggestionState(od);
    });
  });

  unittest.group('obj-schema-DropdownOption', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDropdownOption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DropdownOption.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDropdownOption(od);
    });
  });

  unittest.group('obj-schema-DropdownProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDropdownProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DropdownProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDropdownProperties(od);
    });
  });

  unittest.group('obj-schema-DropdownPropertiesSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDropdownPropertiesSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DropdownPropertiesSuggestionState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDropdownPropertiesSuggestionState(od);
    });
  });

  unittest.group('obj-schema-EmbeddedDrawingProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmbeddedDrawingProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EmbeddedDrawingProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEmbeddedDrawingProperties(od);
    });
  });

  unittest.group('obj-schema-EmbeddedDrawingPropertiesSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmbeddedDrawingPropertiesSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EmbeddedDrawingPropertiesSuggestionState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEmbeddedDrawingPropertiesSuggestionState(od);
    });
  });

  unittest.group('obj-schema-EmbeddedObject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmbeddedObject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EmbeddedObject.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEmbeddedObject(od);
    });
  });

  unittest.group('obj-schema-EmbeddedObjectBorder', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmbeddedObjectBorder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EmbeddedObjectBorder.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEmbeddedObjectBorder(od);
    });
  });

  unittest.group('obj-schema-EmbeddedObjectBorderSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmbeddedObjectBorderSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EmbeddedObjectBorderSuggestionState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEmbeddedObjectBorderSuggestionState(od);
    });
  });

  unittest.group('obj-schema-EmbeddedObjectSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmbeddedObjectSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EmbeddedObjectSuggestionState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEmbeddedObjectSuggestionState(od);
    });
  });

  unittest.group('obj-schema-EndOfSegmentLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEndOfSegmentLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EndOfSegmentLocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEndOfSegmentLocation(od);
    });
  });

  unittest.group('obj-schema-Equation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEquation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Equation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEquation(od);
    });
  });

  unittest.group('obj-schema-Footer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFooter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Footer.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFooter(od);
    });
  });

  unittest.group('obj-schema-Footnote', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFootnote();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Footnote.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFootnote(od);
    });
  });

  unittest.group('obj-schema-FootnoteReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFootnoteReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FootnoteReference.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFootnoteReference(od);
    });
  });

  unittest.group('obj-schema-Header', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHeader();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Header.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHeader(od);
    });
  });

  unittest.group('obj-schema-HeadingLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHeadingLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HeadingLink.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHeadingLink(od);
    });
  });

  unittest.group('obj-schema-HorizontalRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHorizontalRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HorizontalRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHorizontalRule(od);
    });
  });

  unittest.group('obj-schema-ImageProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImageProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImageProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImageProperties(od);
    });
  });

  unittest.group('obj-schema-ImagePropertiesSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImagePropertiesSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImagePropertiesSuggestionState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImagePropertiesSuggestionState(od);
    });
  });

  unittest.group('obj-schema-InlineObject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInlineObject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InlineObject.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInlineObject(od);
    });
  });

  unittest.group('obj-schema-InlineObjectElement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInlineObjectElement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InlineObjectElement.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInlineObjectElement(od);
    });
  });

  unittest.group('obj-schema-InlineObjectProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInlineObjectProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InlineObjectProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInlineObjectProperties(od);
    });
  });

  unittest.group('obj-schema-InlineObjectPropertiesSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInlineObjectPropertiesSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InlineObjectPropertiesSuggestionState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInlineObjectPropertiesSuggestionState(od);
    });
  });

  unittest.group('obj-schema-InsertCommentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertCommentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertCommentRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInsertCommentRequest(od);
    });
  });

  unittest.group('obj-schema-InsertCommentResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertCommentResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertCommentResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInsertCommentResponse(od);
    });
  });

  unittest.group('obj-schema-InsertDateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertDateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertDateRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInsertDateRequest(od);
    });
  });

  unittest.group('obj-schema-InsertDropdownRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertDropdownRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertDropdownRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInsertDropdownRequest(od);
    });
  });

  unittest.group('obj-schema-InsertDropdownResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertDropdownResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertDropdownResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInsertDropdownResponse(od);
    });
  });

  unittest.group('obj-schema-InsertInlineImageRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertInlineImageRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertInlineImageRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInsertInlineImageRequest(od);
    });
  });

  unittest.group('obj-schema-InsertInlineImageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertInlineImageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertInlineImageResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInsertInlineImageResponse(od);
    });
  });

  unittest.group('obj-schema-InsertInlineSheetsChartResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertInlineSheetsChartResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertInlineSheetsChartResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInsertInlineSheetsChartResponse(od);
    });
  });

  unittest.group('obj-schema-InsertPageBreakRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertPageBreakRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertPageBreakRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInsertPageBreakRequest(od);
    });
  });

  unittest.group('obj-schema-InsertPersonRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertPersonRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertPersonRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInsertPersonRequest(od);
    });
  });

  unittest.group('obj-schema-InsertRichLinkRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertRichLinkRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertRichLinkRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInsertRichLinkRequest(od);
    });
  });

  unittest.group('obj-schema-InsertSectionBreakRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertSectionBreakRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertSectionBreakRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInsertSectionBreakRequest(od);
    });
  });

  unittest.group('obj-schema-InsertTableColumnRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertTableColumnRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertTableColumnRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInsertTableColumnRequest(od);
    });
  });

  unittest.group('obj-schema-InsertTableRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertTableRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertTableRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInsertTableRequest(od);
    });
  });

  unittest.group('obj-schema-InsertTableRowRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertTableRowRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertTableRowRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInsertTableRowRequest(od);
    });
  });

  unittest.group('obj-schema-InsertTextRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsertTextRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsertTextRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInsertTextRequest(od);
    });
  });

  unittest.group('obj-schema-Link', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Link.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLink(od);
    });
  });

  unittest.group('obj-schema-LinkedContentReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLinkedContentReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LinkedContentReference.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLinkedContentReference(od);
    });
  });

  unittest.group('obj-schema-LinkedContentReferenceSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLinkedContentReferenceSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LinkedContentReferenceSuggestionState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLinkedContentReferenceSuggestionState(od);
    });
  });

  unittest.group('obj-schema-List', () {
    unittest.test('to-json--from-json', () async {
      final o = buildList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.List.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkList(od);
    });
  });

  unittest.group('obj-schema-ListProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListProperties(od);
    });
  });

  unittest.group('obj-schema-ListPropertiesSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPropertiesSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPropertiesSuggestionState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListPropertiesSuggestionState(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Location.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-MergeTableCellsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMergeTableCellsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MergeTableCellsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMergeTableCellsRequest(od);
    });
  });

  unittest.group('obj-schema-NamedRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNamedRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NamedRange.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNamedRange(od);
    });
  });

  unittest.group('obj-schema-NamedRanges', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNamedRanges();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NamedRanges.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNamedRanges(od);
    });
  });

  unittest.group('obj-schema-NamedStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNamedStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NamedStyle.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNamedStyle(od);
    });
  });

  unittest.group('obj-schema-NamedStyleSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNamedStyleSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NamedStyleSuggestionState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNamedStyleSuggestionState(od);
    });
  });

  unittest.group('obj-schema-NamedStyles', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNamedStyles();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NamedStyles.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNamedStyles(od);
    });
  });

  unittest.group('obj-schema-NamedStylesSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNamedStylesSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NamedStylesSuggestionState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNamedStylesSuggestionState(od);
    });
  });

  unittest.group('obj-schema-NestingLevel', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNestingLevel();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NestingLevel.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNestingLevel(od);
    });
  });

  unittest.group('obj-schema-NestingLevelSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNestingLevelSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NestingLevelSuggestionState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNestingLevelSuggestionState(od);
    });
  });

  unittest.group('obj-schema-ObjectReferences', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObjectReferences();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ObjectReferences.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkObjectReferences(od);
    });
  });

  unittest.group('obj-schema-OptionalColor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOptionalColor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OptionalColor.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOptionalColor(od);
    });
  });

  unittest.group('obj-schema-PageBreak', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPageBreak();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PageBreak.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPageBreak(od);
    });
  });

  unittest.group('obj-schema-Paragraph', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParagraph();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Paragraph.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkParagraph(od);
    });
  });

  unittest.group('obj-schema-ParagraphBorder', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParagraphBorder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ParagraphBorder.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkParagraphBorder(od);
    });
  });

  unittest.group('obj-schema-ParagraphElement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParagraphElement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ParagraphElement.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkParagraphElement(od);
    });
  });

  unittest.group('obj-schema-ParagraphStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParagraphStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ParagraphStyle.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkParagraphStyle(od);
    });
  });

  unittest.group('obj-schema-ParagraphStyleSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParagraphStyleSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ParagraphStyleSuggestionState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkParagraphStyleSuggestionState(od);
    });
  });

  unittest.group('obj-schema-Person', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPerson();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Person.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPerson(od);
    });
  });

  unittest.group('obj-schema-PersonProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPersonProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PersonProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPersonProperties(od);
    });
  });

  unittest.group('obj-schema-PinTableHeaderRowsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPinTableHeaderRowsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PinTableHeaderRowsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPinTableHeaderRowsRequest(od);
    });
  });

  unittest.group('obj-schema-PositionedObject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPositionedObject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PositionedObject.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPositionedObject(od);
    });
  });

  unittest.group('obj-schema-PositionedObjectPositioning', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPositionedObjectPositioning();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PositionedObjectPositioning.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPositionedObjectPositioning(od);
    });
  });

  unittest.group('obj-schema-PositionedObjectPositioningSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPositionedObjectPositioningSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PositionedObjectPositioningSuggestionState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPositionedObjectPositioningSuggestionState(od);
    });
  });

  unittest.group('obj-schema-PositionedObjectProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPositionedObjectProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PositionedObjectProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPositionedObjectProperties(od);
    });
  });

  unittest.group('obj-schema-PositionedObjectPropertiesSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPositionedObjectPropertiesSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PositionedObjectPropertiesSuggestionState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPositionedObjectPropertiesSuggestionState(od);
    });
  });

  unittest.group('obj-schema-Post', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPost();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Post.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPost(od);
    });
  });

  unittest.group('obj-schema-PostAuthor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostAuthor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostAuthor.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPostAuthor(od);
    });
  });

  unittest.group('obj-schema-Range', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Range.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRange(od);
    });
  });

  unittest.group('obj-schema-RejectSuggestionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRejectSuggestionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RejectSuggestionRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRejectSuggestionRequest(od);
    });
  });

  unittest.group('obj-schema-ReplaceAllTextRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplaceAllTextRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplaceAllTextRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReplaceAllTextRequest(od);
    });
  });

  unittest.group('obj-schema-ReplaceAllTextResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplaceAllTextResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplaceAllTextResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReplaceAllTextResponse(od);
    });
  });

  unittest.group('obj-schema-ReplaceImageRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplaceImageRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplaceImageRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReplaceImageRequest(od);
    });
  });

  unittest.group('obj-schema-ReplaceNamedRangeContentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReplaceNamedRangeContentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReplaceNamedRangeContentRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReplaceNamedRangeContentRequest(od);
    });
  });

  unittest.group('obj-schema-Request', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Request.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRequest(od);
    });
  });

  unittest.group('obj-schema-Response', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Response.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResponse(od);
    });
  });

  unittest.group('obj-schema-RgbColor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRgbColor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RgbColor.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRgbColor(od);
    });
  });

  unittest.group('obj-schema-RichLink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRichLink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RichLink.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRichLink(od);
    });
  });

  unittest.group('obj-schema-RichLinkProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRichLinkProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RichLinkProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRichLinkProperties(od);
    });
  });

  unittest.group('obj-schema-SectionBreak', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSectionBreak();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SectionBreak.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSectionBreak(od);
    });
  });

  unittest.group('obj-schema-SectionColumnProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSectionColumnProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SectionColumnProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSectionColumnProperties(od);
    });
  });

  unittest.group('obj-schema-SectionStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSectionStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SectionStyle.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSectionStyle(od);
    });
  });

  unittest.group('obj-schema-Shading', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShading();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Shading.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkShading(od);
    });
  });

  unittest.group('obj-schema-ShadingSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShadingSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShadingSuggestionState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkShadingSuggestionState(od);
    });
  });

  unittest.group('obj-schema-SheetsChartReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSheetsChartReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SheetsChartReference.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSheetsChartReference(od);
    });
  });

  unittest.group('obj-schema-SheetsChartReferenceSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSheetsChartReferenceSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SheetsChartReferenceSuggestionState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSheetsChartReferenceSuggestionState(od);
    });
  });

  unittest.group('obj-schema-Size', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSize();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Size.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSize(od);
    });
  });

  unittest.group('obj-schema-SizeSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSizeSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SizeSuggestionState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSizeSuggestionState(od);
    });
  });

  unittest.group('obj-schema-StructuralElement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStructuralElement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StructuralElement.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStructuralElement(od);
    });
  });

  unittest.group('obj-schema-SubstringMatchCriteria', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubstringMatchCriteria();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubstringMatchCriteria.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSubstringMatchCriteria(od);
    });
  });

  unittest.group('obj-schema-SuggestedBullet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuggestedBullet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuggestedBullet.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSuggestedBullet(od);
    });
  });

  unittest.group('obj-schema-SuggestedDateElementProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuggestedDateElementProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuggestedDateElementProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSuggestedDateElementProperties(od);
    });
  });

  unittest.group('obj-schema-SuggestedDocumentStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuggestedDocumentStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuggestedDocumentStyle.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSuggestedDocumentStyle(od);
    });
  });

  unittest.group('obj-schema-SuggestedDropdownDefinitionProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuggestedDropdownDefinitionProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuggestedDropdownDefinitionProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSuggestedDropdownDefinitionProperties(od);
    });
  });

  unittest.group('obj-schema-SuggestedDropdownProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuggestedDropdownProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuggestedDropdownProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSuggestedDropdownProperties(od);
    });
  });

  unittest.group('obj-schema-SuggestedInlineObjectProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuggestedInlineObjectProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuggestedInlineObjectProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSuggestedInlineObjectProperties(od);
    });
  });

  unittest.group('obj-schema-SuggestedListProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuggestedListProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuggestedListProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSuggestedListProperties(od);
    });
  });

  unittest.group('obj-schema-SuggestedNamedStyles', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuggestedNamedStyles();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuggestedNamedStyles.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSuggestedNamedStyles(od);
    });
  });

  unittest.group('obj-schema-SuggestedParagraphStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuggestedParagraphStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuggestedParagraphStyle.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSuggestedParagraphStyle(od);
    });
  });

  unittest.group('obj-schema-SuggestedPositionedObjectProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuggestedPositionedObjectProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuggestedPositionedObjectProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSuggestedPositionedObjectProperties(od);
    });
  });

  unittest.group('obj-schema-SuggestedTableCellStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuggestedTableCellStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuggestedTableCellStyle.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSuggestedTableCellStyle(od);
    });
  });

  unittest.group('obj-schema-SuggestedTableRowStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuggestedTableRowStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuggestedTableRowStyle.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSuggestedTableRowStyle(od);
    });
  });

  unittest.group('obj-schema-SuggestedTextStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuggestedTextStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuggestedTextStyle.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSuggestedTextStyle(od);
    });
  });

  unittest.group('obj-schema-SuggestionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuggestionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuggestionResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSuggestionResponse(od);
    });
  });

  unittest.group('obj-schema-SuggestionThread', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSuggestionThread();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SuggestionThread.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSuggestionThread(od);
    });
  });

  unittest.group('obj-schema-Tab', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTab();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Tab.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkTab(od);
    });
  });

  unittest.group('obj-schema-TabProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTabProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TabProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTabProperties(od);
    });
  });

  unittest.group('obj-schema-TabStop', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTabStop();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TabStop.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTabStop(od);
    });
  });

  unittest.group('obj-schema-Table', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Table.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTable(od);
    });
  });

  unittest.group('obj-schema-TableCell', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableCell();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableCell.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTableCell(od);
    });
  });

  unittest.group('obj-schema-TableCellBorder', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableCellBorder();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableCellBorder.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTableCellBorder(od);
    });
  });

  unittest.group('obj-schema-TableCellLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableCellLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableCellLocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTableCellLocation(od);
    });
  });

  unittest.group('obj-schema-TableCellStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableCellStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableCellStyle.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTableCellStyle(od);
    });
  });

  unittest.group('obj-schema-TableCellStyleSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableCellStyleSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableCellStyleSuggestionState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTableCellStyleSuggestionState(od);
    });
  });

  unittest.group('obj-schema-TableColumnProperties', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableColumnProperties();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableColumnProperties.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTableColumnProperties(od);
    });
  });

  unittest.group('obj-schema-TableOfContents', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableOfContents();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableOfContents.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTableOfContents(od);
    });
  });

  unittest.group('obj-schema-TableRange', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableRange();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableRange.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTableRange(od);
    });
  });

  unittest.group('obj-schema-TableRow', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableRow();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableRow.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTableRow(od);
    });
  });

  unittest.group('obj-schema-TableRowStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableRowStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableRowStyle.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTableRowStyle(od);
    });
  });

  unittest.group('obj-schema-TableRowStyleSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableRowStyleSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableRowStyleSuggestionState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTableRowStyleSuggestionState(od);
    });
  });

  unittest.group('obj-schema-TableStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTableStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TableStyle.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTableStyle(od);
    });
  });

  unittest.group('obj-schema-TabsCriteria', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTabsCriteria();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TabsCriteria.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTabsCriteria(od);
    });
  });

  unittest.group('obj-schema-TextRun', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextRun();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextRun.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTextRun(od);
    });
  });

  unittest.group('obj-schema-TextStyle', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextStyle();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextStyle.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTextStyle(od);
    });
  });

  unittest.group('obj-schema-TextStyleSuggestionState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextStyleSuggestionState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextStyleSuggestionState.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTextStyleSuggestionState(od);
    });
  });

  unittest.group('obj-schema-UnmergeTableCellsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUnmergeTableCellsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UnmergeTableCellsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUnmergeTableCellsRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateCommentPostRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateCommentPostRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateCommentPostRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpdateCommentPostRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateDocumentStyleRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateDocumentStyleRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateDocumentStyleRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpdateDocumentStyleRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateDocumentTabPropertiesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateDocumentTabPropertiesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateDocumentTabPropertiesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpdateDocumentTabPropertiesRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateDropdownDefinitionPropertiesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateDropdownDefinitionPropertiesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateDropdownDefinitionPropertiesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpdateDropdownDefinitionPropertiesRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateDropdownPropertiesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateDropdownPropertiesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateDropdownPropertiesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpdateDropdownPropertiesRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateNamedStyleRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateNamedStyleRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateNamedStyleRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpdateNamedStyleRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateParagraphStyleRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateParagraphStyleRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateParagraphStyleRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpdateParagraphStyleRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateSectionStyleRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateSectionStyleRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateSectionStyleRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpdateSectionStyleRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateTableCellStyleRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateTableCellStyleRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateTableCellStyleRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpdateTableCellStyleRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateTableColumnPropertiesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateTableColumnPropertiesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateTableColumnPropertiesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpdateTableColumnPropertiesRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateTableRowStyleRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateTableRowStyleRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateTableRowStyleRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpdateTableRowStyleRequest(od);
    });
  });

  unittest.group('obj-schema-UpdateTextStyleRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateTextStyleRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateTextStyleRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpdateTextStyleRequest(od);
    });
  });

  unittest.group('obj-schema-WeightedFontFamily', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWeightedFontFamily();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WeightedFontFamily.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWeightedFontFamily(od);
    });
  });

  unittest.group('obj-schema-WriteControl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWriteControl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WriteControl.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
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
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BatchUpdateDocumentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBatchUpdateDocumentRequest(obj);

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
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('v1/documents/'),
          );
          pathOffset += 13;
          index = path.indexOf(':batchUpdate', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_documentId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals(':batchUpdate'),
          );
          pathOffset += 12;

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
          final resp = convert.json.encode(buildBatchUpdateDocumentResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchUpdate(
        arg_request,
        arg_documentId,
        $fields: arg_$fields,
      );
      checkBatchUpdateDocumentResponse(
        response as api.BatchUpdateDocumentResponse,
      );
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DocsApi(mock).documents;
      final arg_request = buildDocument();
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Document.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDocument(obj);

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
            unittest.equals('v1/documents'),
          );
          pathOffset += 12;

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
          final resp = convert.json.encode(buildDocument());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(arg_request, $fields: arg_$fields);
      checkDocument(response as api.Document);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DocsApi(mock).documents;
      final arg_documentId = 'foo';
      final arg_commentsViewMode = 'foo';
      final arg_includeTabsContent = true;
      final arg_suggestionsViewMode = 'foo';
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
            path.substring(pathOffset, pathOffset + 13),
            unittest.equals('v1/documents/'),
          );
          pathOffset += 13;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_documentId'));

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
            queryMap['commentsViewMode']!.first,
            unittest.equals(arg_commentsViewMode),
          );
          unittest.expect(
            queryMap['includeTabsContent']!.first,
            unittest.equals('$arg_includeTabsContent'),
          );
          unittest.expect(
            queryMap['suggestionsViewMode']!.first,
            unittest.equals(arg_suggestionsViewMode),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildDocument());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_documentId,
        commentsViewMode: arg_commentsViewMode,
        includeTabsContent: arg_includeTabsContent,
        suggestionsViewMode: arg_suggestionsViewMode,
        $fields: arg_$fields,
      );
      checkDocument(response as api.Document);
    });
  });
}
