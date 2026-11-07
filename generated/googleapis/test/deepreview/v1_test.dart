// Copyright 2026 Google LLC
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

import 'package:googleapis/deepreview/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAnchoredReviewComment = 0;
api.AnchoredReviewComment buildAnchoredReviewComment() {
  final o = api.AnchoredReviewComment();
  buildCounterAnchoredReviewComment++;
  if (buildCounterAnchoredReviewComment < 3) {
    o.bodyMarkdown = 'foo';
    o.citationReport = buildCitationReport();
    o.commentId = 'foo';
    o.location = buildDocumentLocation();
    o.severity = 'foo';
    o.suggestedEdit = 'foo';
    o.summary = 'foo';
  }
  buildCounterAnchoredReviewComment--;
  return o;
}

void checkAnchoredReviewComment(api.AnchoredReviewComment o) {
  buildCounterAnchoredReviewComment++;
  if (buildCounterAnchoredReviewComment < 3) {
    unittest.expect(o.bodyMarkdown!, unittest.equals('foo'));
    checkCitationReport(o.citationReport!);
    unittest.expect(o.commentId!, unittest.equals('foo'));
    checkDocumentLocation(o.location!);
    unittest.expect(o.severity!, unittest.equals('foo'));
    unittest.expect(o.suggestedEdit!, unittest.equals('foo'));
    unittest.expect(o.summary!, unittest.equals('foo'));
  }
  buildCounterAnchoredReviewComment--;
}

core.int buildCounterAuthor = 0;
api.Author buildAuthor() {
  final o = api.Author();
  buildCounterAuthor++;
  if (buildCounterAuthor < 3) {
    o.familyName = 'foo';
    o.givenName = 'foo';
  }
  buildCounterAuthor--;
  return o;
}

void checkAuthor(api.Author o) {
  buildCounterAuthor++;
  if (buildCounterAuthor < 3) {
    unittest.expect(o.familyName!, unittest.equals('foo'));
    unittest.expect(o.givenName!, unittest.equals('foo'));
  }
  buildCounterAuthor--;
}

core.List<api.Author> buildUnnamed0() => [buildAuthor(), buildAuthor()];

void checkUnnamed0(core.List<api.Author> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuthor(o[0]);
  checkAuthor(o[1]);
}

core.List<core.String> buildUnnamed1() => ['foo', 'foo'];

void checkUnnamed1(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCitationMetadata = 0;
api.CitationMetadata buildCitationMetadata() {
  final o = api.CitationMetadata();
  buildCounterCitationMetadata++;
  if (buildCounterCitationMetadata < 3) {
    o.authors = buildUnnamed0();
    o.doi = 'foo';
    o.journal = 'foo';
    o.pages = 'foo';
    o.publicationDate = buildDate();
    o.source = 'foo';
    o.title = 'foo';
    o.urls = buildUnnamed1();
    o.volume = 'foo';
  }
  buildCounterCitationMetadata--;
  return o;
}

void checkCitationMetadata(api.CitationMetadata o) {
  buildCounterCitationMetadata++;
  if (buildCounterCitationMetadata < 3) {
    checkUnnamed0(o.authors!);
    unittest.expect(o.doi!, unittest.equals('foo'));
    unittest.expect(o.journal!, unittest.equals('foo'));
    unittest.expect(o.pages!, unittest.equals('foo'));
    checkDate(o.publicationDate!);
    unittest.expect(o.source!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
    checkUnnamed1(o.urls!);
    unittest.expect(o.volume!, unittest.equals('foo'));
  }
  buildCounterCitationMetadata--;
}

core.List<api.FieldComparison> buildUnnamed2() => [
  buildFieldComparison(),
  buildFieldComparison(),
];

void checkUnnamed2(core.List<api.FieldComparison> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFieldComparison(o[0]);
  checkFieldComparison(o[1]);
}

core.List<api.GroundingUrl> buildUnnamed3() => [
  buildGroundingUrl(),
  buildGroundingUrl(),
];

void checkUnnamed3(core.List<api.GroundingUrl> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroundingUrl(o[0]);
  checkGroundingUrl(o[1]);
}

core.int buildCounterCitationReport = 0;
api.CitationReport buildCitationReport() {
  final o = api.CitationReport();
  buildCounterCitationReport++;
  if (buildCounterCitationReport < 3) {
    o.citationKey = 'foo';
    o.entryType = 'foo';
    o.extractedMetadata = buildCitationMetadata();
    o.fieldComparisons = buildUnnamed2();
    o.finalVerdict = 'foo';
    o.firstAuthorFamilyNameMatch = true;
    o.groundingUrls = buildUnnamed3();
    o.lookupVerdict = 'foo';
    o.rawReference = 'foo';
    o.refNum = 42;
    o.retrievedBibtex = 'foo';
    o.retrievedMetadata = buildCitationMetadata();
    o.searchMethod = 'foo';
    o.searchRationale = 'foo';
    o.searchVerdict = 'foo';
  }
  buildCounterCitationReport--;
  return o;
}

void checkCitationReport(api.CitationReport o) {
  buildCounterCitationReport++;
  if (buildCounterCitationReport < 3) {
    unittest.expect(o.citationKey!, unittest.equals('foo'));
    unittest.expect(o.entryType!, unittest.equals('foo'));
    checkCitationMetadata(o.extractedMetadata!);
    checkUnnamed2(o.fieldComparisons!);
    unittest.expect(o.finalVerdict!, unittest.equals('foo'));
    unittest.expect(o.firstAuthorFamilyNameMatch!, unittest.isTrue);
    checkUnnamed3(o.groundingUrls!);
    unittest.expect(o.lookupVerdict!, unittest.equals('foo'));
    unittest.expect(o.rawReference!, unittest.equals('foo'));
    unittest.expect(o.refNum!, unittest.equals(42));
    unittest.expect(o.retrievedBibtex!, unittest.equals('foo'));
    checkCitationMetadata(o.retrievedMetadata!);
    unittest.expect(o.searchMethod!, unittest.equals('foo'));
    unittest.expect(o.searchRationale!, unittest.equals('foo'));
    unittest.expect(o.searchVerdict!, unittest.equals('foo'));
  }
  buildCounterCitationReport--;
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

core.int buildCounterDeepReviewRunConfig = 0;
api.DeepReviewRunConfig buildDeepReviewRunConfig() {
  final o = api.DeepReviewRunConfig();
  buildCounterDeepReviewRunConfig++;
  if (buildCounterDeepReviewRunConfig < 3) {
    o.geminiApiKey = 'foo';
    o.geminiApiKeySet = true;
    o.model = 'foo';
    o.thinkingLevel = 'foo';
    o.topology = 'foo';
    o.userPrompt = 'foo';
  }
  buildCounterDeepReviewRunConfig--;
  return o;
}

void checkDeepReviewRunConfig(api.DeepReviewRunConfig o) {
  buildCounterDeepReviewRunConfig++;
  if (buildCounterDeepReviewRunConfig < 3) {
    unittest.expect(o.geminiApiKey!, unittest.equals('foo'));
    unittest.expect(o.geminiApiKeySet!, unittest.isTrue);
    unittest.expect(o.model!, unittest.equals('foo'));
    unittest.expect(o.thinkingLevel!, unittest.equals('foo'));
    unittest.expect(o.topology!, unittest.equals('foo'));
    unittest.expect(o.userPrompt!, unittest.equals('foo'));
  }
  buildCounterDeepReviewRunConfig--;
}

core.int buildCounterDocument = 0;
api.Document buildDocument() {
  final o = api.Document();
  buildCounterDocument++;
  if (buildCounterDocument < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.driveSource = buildDriveSource();
    o.latestReviewSummary = buildReviewSummary();
    o.name = 'foo';
  }
  buildCounterDocument--;
  return o;
}

void checkDocument(api.Document o) {
  buildCounterDocument++;
  if (buildCounterDocument < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkDriveSource(o.driveSource!);
    checkReviewSummary(o.latestReviewSummary!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterDocument--;
}

core.int buildCounterDocumentLocation = 0;
api.DocumentLocation buildDocumentLocation() {
  final o = api.DocumentLocation();
  buildCounterDocumentLocation++;
  if (buildCounterDocumentLocation < 3) {
    o.pdf = buildPdfLocation();
    o.text = buildTextLocation();
  }
  buildCounterDocumentLocation--;
  return o;
}

void checkDocumentLocation(api.DocumentLocation o) {
  buildCounterDocumentLocation++;
  if (buildCounterDocumentLocation < 3) {
    checkPdfLocation(o.pdf!);
    checkTextLocation(o.text!);
  }
  buildCounterDocumentLocation--;
}

core.int buildCounterDownloadDocumentResponse = 0;
api.DownloadDocumentResponse buildDownloadDocumentResponse() {
  final o = api.DownloadDocumentResponse();
  buildCounterDownloadDocumentResponse++;
  if (buildCounterDownloadDocumentResponse < 3) {}
  buildCounterDownloadDocumentResponse--;
  return o;
}

void checkDownloadDocumentResponse(api.DownloadDocumentResponse o) {
  buildCounterDownloadDocumentResponse++;
  if (buildCounterDownloadDocumentResponse < 3) {}
  buildCounterDownloadDocumentResponse--;
}

core.int buildCounterDriveSource = 0;
api.DriveSource buildDriveSource() {
  final o = api.DriveSource();
  buildCounterDriveSource++;
  if (buildCounterDriveSource < 3) {
    o.fileId = 'foo';
    o.resourceKey = 'foo';
    o.resourceKeySet = true;
    o.revisionId = 'foo';
  }
  buildCounterDriveSource--;
  return o;
}

void checkDriveSource(api.DriveSource o) {
  buildCounterDriveSource++;
  if (buildCounterDriveSource < 3) {
    unittest.expect(o.fileId!, unittest.equals('foo'));
    unittest.expect(o.resourceKey!, unittest.equals('foo'));
    unittest.expect(o.resourceKeySet!, unittest.isTrue);
    unittest.expect(o.revisionId!, unittest.equals('foo'));
  }
  buildCounterDriveSource--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  final o = api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

void checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterEstimateReviewCostRequest = 0;
api.EstimateReviewCostRequest buildEstimateReviewCostRequest() {
  final o = api.EstimateReviewCostRequest();
  buildCounterEstimateReviewCostRequest++;
  if (buildCounterEstimateReviewCostRequest < 3) {
    o.review = buildReview();
  }
  buildCounterEstimateReviewCostRequest--;
  return o;
}

void checkEstimateReviewCostRequest(api.EstimateReviewCostRequest o) {
  buildCounterEstimateReviewCostRequest++;
  if (buildCounterEstimateReviewCostRequest < 3) {
    checkReview(o.review!);
  }
  buildCounterEstimateReviewCostRequest--;
}

core.int buildCounterEstimateReviewCostResponse = 0;
api.EstimateReviewCostResponse buildEstimateReviewCostResponse() {
  final o = api.EstimateReviewCostResponse();
  buildCounterEstimateReviewCostResponse++;
  if (buildCounterEstimateReviewCostResponse < 3) {
    o.highCost = buildMoney();
    o.lowCost = buildMoney();
    o.medianCost = buildMoney();
    o.pastReviewCount = 42;
  }
  buildCounterEstimateReviewCostResponse--;
  return o;
}

void checkEstimateReviewCostResponse(api.EstimateReviewCostResponse o) {
  buildCounterEstimateReviewCostResponse++;
  if (buildCounterEstimateReviewCostResponse < 3) {
    checkMoney(o.highCost!);
    checkMoney(o.lowCost!);
    checkMoney(o.medianCost!);
    unittest.expect(o.pastReviewCount!, unittest.equals(42));
  }
  buildCounterEstimateReviewCostResponse--;
}

core.int buildCounterFieldComparison = 0;
api.FieldComparison buildFieldComparison() {
  final o = api.FieldComparison();
  buildCounterFieldComparison++;
  if (buildCounterFieldComparison < 3) {
    o.detail = 'foo';
    o.fieldKey = 'foo';
    o.match = true;
  }
  buildCounterFieldComparison--;
  return o;
}

void checkFieldComparison(api.FieldComparison o) {
  buildCounterFieldComparison++;
  if (buildCounterFieldComparison < 3) {
    unittest.expect(o.detail!, unittest.equals('foo'));
    unittest.expect(o.fieldKey!, unittest.equals('foo'));
    unittest.expect(o.match!, unittest.isTrue);
  }
  buildCounterFieldComparison--;
}

core.int buildCounterGroundingUrl = 0;
api.GroundingUrl buildGroundingUrl() {
  final o = api.GroundingUrl();
  buildCounterGroundingUrl++;
  if (buildCounterGroundingUrl < 3) {
    o.title = 'foo';
    o.url = 'foo';
  }
  buildCounterGroundingUrl--;
  return o;
}

void checkGroundingUrl(api.GroundingUrl o) {
  buildCounterGroundingUrl++;
  if (buildCounterGroundingUrl < 3) {
    unittest.expect(o.title!, unittest.equals('foo'));
    unittest.expect(o.url!, unittest.equals('foo'));
  }
  buildCounterGroundingUrl--;
}

core.List<api.Document> buildUnnamed4() => [buildDocument(), buildDocument()];

void checkUnnamed4(core.List<api.Document> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDocument(o[0]);
  checkDocument(o[1]);
}

core.int buildCounterListDocumentsResponse = 0;
api.ListDocumentsResponse buildListDocumentsResponse() {
  final o = api.ListDocumentsResponse();
  buildCounterListDocumentsResponse++;
  if (buildCounterListDocumentsResponse < 3) {
    o.documents = buildUnnamed4();
    o.nextPageToken = 'foo';
  }
  buildCounterListDocumentsResponse--;
  return o;
}

void checkListDocumentsResponse(api.ListDocumentsResponse o) {
  buildCounterListDocumentsResponse++;
  if (buildCounterListDocumentsResponse < 3) {
    checkUnnamed4(o.documents!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListDocumentsResponse--;
}

core.List<api.Review> buildUnnamed5() => [buildReview(), buildReview()];

void checkUnnamed5(core.List<api.Review> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReview(o[0]);
  checkReview(o[1]);
}

core.int buildCounterListReviewsResponse = 0;
api.ListReviewsResponse buildListReviewsResponse() {
  final o = api.ListReviewsResponse();
  buildCounterListReviewsResponse++;
  if (buildCounterListReviewsResponse < 3) {
    o.nextPageToken = 'foo';
    o.reviews = buildUnnamed5();
  }
  buildCounterListReviewsResponse--;
  return o;
}

void checkListReviewsResponse(api.ListReviewsResponse o) {
  buildCounterListReviewsResponse++;
  if (buildCounterListReviewsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed5(o.reviews!);
  }
  buildCounterListReviewsResponse--;
}

core.int buildCounterMoney = 0;
api.Money buildMoney() {
  final o = api.Money();
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    o.currencyCode = 'foo';
    o.nanos = 42;
    o.units = 'foo';
  }
  buildCounterMoney--;
  return o;
}

void checkMoney(api.Money o) {
  buildCounterMoney++;
  if (buildCounterMoney < 3) {
    unittest.expect(o.currencyCode!, unittest.equals('foo'));
    unittest.expect(o.nanos!, unittest.equals(42));
    unittest.expect(o.units!, unittest.equals('foo'));
  }
  buildCounterMoney--;
}

core.int buildCounterNormalizedBoundingBox = 0;
api.NormalizedBoundingBox buildNormalizedBoundingBox() {
  final o = api.NormalizedBoundingBox();
  buildCounterNormalizedBoundingBox++;
  if (buildCounterNormalizedBoundingBox < 3) {
    o.bottom = 42.0;
    o.left = 42.0;
    o.right = 42.0;
    o.top = 42.0;
  }
  buildCounterNormalizedBoundingBox--;
  return o;
}

void checkNormalizedBoundingBox(api.NormalizedBoundingBox o) {
  buildCounterNormalizedBoundingBox++;
  if (buildCounterNormalizedBoundingBox < 3) {
    unittest.expect(o.bottom!, unittest.equals(42.0));
    unittest.expect(o.left!, unittest.equals(42.0));
    unittest.expect(o.right!, unittest.equals(42.0));
    unittest.expect(o.top!, unittest.equals(42.0));
  }
  buildCounterNormalizedBoundingBox--;
}

core.Map<core.String, core.Object?> buildUnnamed6() => {
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

void checkUnnamed6(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed7() => {
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

void checkUnnamed7(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
}

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed6();
    o.name = 'foo';
    o.response = buildUnnamed7();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed6(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed7(o.response!);
  }
  buildCounterOperation--;
}

core.List<api.NormalizedBoundingBox> buildUnnamed8() => [
  buildNormalizedBoundingBox(),
  buildNormalizedBoundingBox(),
];

void checkUnnamed8(core.List<api.NormalizedBoundingBox> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNormalizedBoundingBox(o[0]);
  checkNormalizedBoundingBox(o[1]);
}

core.int buildCounterPdfLocation = 0;
api.PdfLocation buildPdfLocation() {
  final o = api.PdfLocation();
  buildCounterPdfLocation++;
  if (buildCounterPdfLocation < 3) {
    o.boundingBoxes = buildUnnamed8();
    o.pageNumber = 42;
    o.quoteSelector = buildTextQuoteSelector();
  }
  buildCounterPdfLocation--;
  return o;
}

void checkPdfLocation(api.PdfLocation o) {
  buildCounterPdfLocation++;
  if (buildCounterPdfLocation < 3) {
    checkUnnamed8(o.boundingBoxes!);
    unittest.expect(o.pageNumber!, unittest.equals(42));
    checkTextQuoteSelector(o.quoteSelector!);
  }
  buildCounterPdfLocation--;
}

core.List<api.AnchoredReviewComment> buildUnnamed9() => [
  buildAnchoredReviewComment(),
  buildAnchoredReviewComment(),
];

void checkUnnamed9(core.List<api.AnchoredReviewComment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnchoredReviewComment(o[0]);
  checkAnchoredReviewComment(o[1]);
}

core.int buildCounterResult = 0;
api.Result buildResult() {
  final o = api.Result();
  buildCounterResult++;
  if (buildCounterResult < 3) {
    o.anchoredComments = buildUnnamed9();
    o.error = buildStatus();
    o.reviewMarkdown = 'foo';
  }
  buildCounterResult--;
  return o;
}

void checkResult(api.Result o) {
  buildCounterResult++;
  if (buildCounterResult < 3) {
    checkUnnamed9(o.anchoredComments!);
    checkStatus(o.error!);
    unittest.expect(o.reviewMarkdown!, unittest.equals('foo'));
  }
  buildCounterResult--;
}

core.int buildCounterReview = 0;
api.Review buildReview() {
  final o = api.Review();
  buildCounterReview++;
  if (buildCounterReview < 3) {
    o.createTime = 'foo';
    o.endTime = 'foo';
    o.name = 'foo';
    o.progressPercent = 42;
    o.result = buildResult();
    o.runConfig = buildDeepReviewRunConfig();
    o.startTime = 'foo';
    o.state = 'foo';
  }
  buildCounterReview--;
  return o;
}

void checkReview(api.Review o) {
  buildCounterReview++;
  if (buildCounterReview < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.progressPercent!, unittest.equals(42));
    checkResult(o.result!);
    checkDeepReviewRunConfig(o.runConfig!);
    unittest.expect(o.startTime!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterReview--;
}

core.int buildCounterReviewSummary = 0;
api.ReviewSummary buildReviewSummary() {
  final o = api.ReviewSummary();
  buildCounterReviewSummary++;
  if (buildCounterReviewSummary < 3) {
    o.createTime = 'foo';
    o.review = 'foo';
    o.state = 'foo';
  }
  buildCounterReviewSummary--;
  return o;
}

void checkReviewSummary(api.ReviewSummary o) {
  buildCounterReviewSummary++;
  if (buildCounterReviewSummary < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.review!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterReviewSummary--;
}

core.Map<core.String, core.Object?> buildUnnamed10() => {
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

void checkUnnamed10(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed11() => [
  buildUnnamed10(),
  buildUnnamed10(),
];

void checkUnnamed11(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed10(o[0]);
  checkUnnamed10(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed11();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed11(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterTextLocation = 0;
api.TextLocation buildTextLocation() {
  final o = api.TextLocation();
  buildCounterTextLocation++;
  if (buildCounterTextLocation < 3) {
    o.firstColumn = 42;
    o.firstLine = 42;
    o.lastColumn = 42;
    o.lastLine = 42;
    o.quotedLinePreview = 'foo';
  }
  buildCounterTextLocation--;
  return o;
}

void checkTextLocation(api.TextLocation o) {
  buildCounterTextLocation++;
  if (buildCounterTextLocation < 3) {
    unittest.expect(o.firstColumn!, unittest.equals(42));
    unittest.expect(o.firstLine!, unittest.equals(42));
    unittest.expect(o.lastColumn!, unittest.equals(42));
    unittest.expect(o.lastLine!, unittest.equals(42));
    unittest.expect(o.quotedLinePreview!, unittest.equals('foo'));
  }
  buildCounterTextLocation--;
}

core.int buildCounterTextQuoteSelector = 0;
api.TextQuoteSelector buildTextQuoteSelector() {
  final o = api.TextQuoteSelector();
  buildCounterTextQuoteSelector++;
  if (buildCounterTextQuoteSelector < 3) {
    o.exact = 'foo';
    o.prefix = 'foo';
    o.suffix = 'foo';
  }
  buildCounterTextQuoteSelector--;
  return o;
}

void checkTextQuoteSelector(api.TextQuoteSelector o) {
  buildCounterTextQuoteSelector++;
  if (buildCounterTextQuoteSelector < 3) {
    unittest.expect(o.exact!, unittest.equals('foo'));
    unittest.expect(o.prefix!, unittest.equals('foo'));
    unittest.expect(o.suffix!, unittest.equals('foo'));
  }
  buildCounterTextQuoteSelector--;
}

core.int buildCounterUserQuota = 0;
api.UserQuota buildUserQuota() {
  final o = api.UserQuota();
  buildCounterUserQuota++;
  if (buildCounterUserQuota < 3) {
    o.customLimitEnabled = true;
    o.maxReviewCountPerWeek = 42;
    o.name = 'foo';
    o.nextAvailableTime = 'foo';
    o.remainingReviewCount = 42;
    o.usedReviewCount = 42;
  }
  buildCounterUserQuota--;
  return o;
}

void checkUserQuota(api.UserQuota o) {
  buildCounterUserQuota++;
  if (buildCounterUserQuota < 3) {
    unittest.expect(o.customLimitEnabled!, unittest.isTrue);
    unittest.expect(o.maxReviewCountPerWeek!, unittest.equals(42));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.nextAvailableTime!, unittest.equals('foo'));
    unittest.expect(o.remainingReviewCount!, unittest.equals(42));
    unittest.expect(o.usedReviewCount!, unittest.equals(42));
  }
  buildCounterUserQuota--;
}

void main() {
  unittest.group('obj-schema-AnchoredReviewComment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnchoredReviewComment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnchoredReviewComment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAnchoredReviewComment(od);
    });
  });

  unittest.group('obj-schema-Author', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuthor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Author.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuthor(od);
    });
  });

  unittest.group('obj-schema-CitationMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCitationMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CitationMetadata.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCitationMetadata(od);
    });
  });

  unittest.group('obj-schema-CitationReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCitationReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CitationReport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCitationReport(od);
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

  unittest.group('obj-schema-DeepReviewRunConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeepReviewRunConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeepReviewRunConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDeepReviewRunConfig(od);
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

  unittest.group('obj-schema-DocumentLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDocumentLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DocumentLocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDocumentLocation(od);
    });
  });

  unittest.group('obj-schema-DownloadDocumentResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDownloadDocumentResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DownloadDocumentResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDownloadDocumentResponse(od);
    });
  });

  unittest.group('obj-schema-DriveSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDriveSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DriveSource.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDriveSource(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Empty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-EstimateReviewCostRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEstimateReviewCostRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EstimateReviewCostRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEstimateReviewCostRequest(od);
    });
  });

  unittest.group('obj-schema-EstimateReviewCostResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEstimateReviewCostResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EstimateReviewCostResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEstimateReviewCostResponse(od);
    });
  });

  unittest.group('obj-schema-FieldComparison', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFieldComparison();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FieldComparison.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFieldComparison(od);
    });
  });

  unittest.group('obj-schema-GroundingUrl', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroundingUrl();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GroundingUrl.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGroundingUrl(od);
    });
  });

  unittest.group('obj-schema-ListDocumentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDocumentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDocumentsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDocumentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListReviewsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListReviewsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListReviewsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListReviewsResponse(od);
    });
  });

  unittest.group('obj-schema-Money', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMoney();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Money.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMoney(od);
    });
  });

  unittest.group('obj-schema-NormalizedBoundingBox', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNormalizedBoundingBox();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NormalizedBoundingBox.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNormalizedBoundingBox(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Operation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-PdfLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPdfLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PdfLocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPdfLocation(od);
    });
  });

  unittest.group('obj-schema-Result', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Result.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResult(od);
    });
  });

  unittest.group('obj-schema-Review', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReview();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Review.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReview(od);
    });
  });

  unittest.group('obj-schema-ReviewSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReviewSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReviewSummary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReviewSummary(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Status.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-TextLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextLocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTextLocation(od);
    });
  });

  unittest.group('obj-schema-TextQuoteSelector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTextQuoteSelector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TextQuoteSelector.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTextQuoteSelector(od);
    });
  });

  unittest.group('obj-schema-UserQuota', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUserQuota();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UserQuota.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUserQuota(od);
    });
  });

  unittest.group('resource-DocumentsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DeepReviewApi(mock).documents;
      final arg_name = 'foo';
      final arg_allowMissing = true;
      final arg_force = true;
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap['allowMissing']!.first,
            unittest.equals('$arg_allowMissing'),
          );
          unittest.expect(
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        allowMissing: arg_allowMissing,
        force: arg_force,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--estimateReviewCost', () async {
      final mock = HttpServerMock();
      final res = api.DeepReviewApi(mock).documents;
      final arg_request = buildEstimateReviewCostRequest();
      final arg_document = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.EstimateReviewCostRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkEstimateReviewCostRequest(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          final resp = convert.json.encode(buildEstimateReviewCostResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.estimateReviewCost(
        arg_request,
        arg_document,
        $fields: arg_$fields,
      );
      checkEstimateReviewCostResponse(
        response as api.EstimateReviewCostResponse,
      );
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DeepReviewApi(mock).documents;
      final arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDocument(response as api.Document);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DeepReviewApi(mock).documents;
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListDocumentsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListDocumentsResponse(response as api.ListDocumentsResponse);
    });
  });

  unittest.group('resource-DocumentsReviewsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DeepReviewApi(mock).documents.reviews;
      final arg_request = buildReview();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_reviewId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Review.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkReview(obj);

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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
          );
          unittest.expect(
            queryMap['reviewId']!.first,
            unittest.equals(arg_reviewId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        requestId: arg_requestId,
        reviewId: arg_reviewId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DeepReviewApi(mock).documents.reviews;
      final arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          final resp = convert.json.encode(buildReview());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkReview(response as api.Review);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DeepReviewApi(mock).documents.reviews;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            queryMap['orderBy']!.first,
            unittest.equals(arg_orderBy),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListReviewsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListReviewsResponse(response as api.ListReviewsResponse);
    });
  });

  unittest.group('resource-MediaResource', () {
    unittest.test('method--download', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.DeepReviewApi(mock).media;
      final arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          final resp = convert.json.encode(buildDownloadDocumentResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.download(arg_name, $fields: arg_$fields);
      checkDownloadDocumentResponse(response as api.DownloadDocumentResponse);
    });

    unittest.test('method--upload', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.DeepReviewApi(mock).media;
      final arg_request = buildDocument();
      final arg_documentId = 'foo';
      final arg_requestId = 'foo';
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
            queryMap['documentId']!.first,
            unittest.equals(arg_documentId),
          );
          unittest.expect(
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
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
      final response = await res.upload(
        arg_request,
        documentId: arg_documentId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkDocument(response as api.Document);
    });
  });

  unittest.group('resource-OperationsDocumentsReviewsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DeepReviewApi(mock).operations.documents.reviews;
      final arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-V1Resource', () {
    unittest.test('method--getUserQuota', () async {
      final mock = HttpServerMock();
      final res = api.DeepReviewApi(mock).v1;
      final arg_name = 'foo';
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
            path.substring(pathOffset, pathOffset + 3),
            unittest.equals('v1/'),
          );
          pathOffset += 3;
          // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
          final resp = convert.json.encode(buildUserQuota());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getUserQuota(arg_name, $fields: arg_$fields);
      checkUserQuota(response as api.UserQuota);
    });
  });
}
