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

import 'package:googleapis_beta/cloudsupport/v2beta.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterActor = 0;
api.Actor buildActor() {
  final o = api.Actor();
  buildCounterActor++;
  if (buildCounterActor < 3) {
    o.displayName = 'foo';
    o.email = 'foo';
    o.googleSupport = true;
  }
  buildCounterActor--;
  return o;
}

void checkActor(api.Actor o) {
  buildCounterActor++;
  if (buildCounterActor < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.email!,
      unittest.equals('foo'),
    );
    unittest.expect(o.googleSupport!, unittest.isTrue);
  }
  buildCounterActor--;
}

core.int buildCounterAttachment = 0;
api.Attachment buildAttachment() {
  final o = api.Attachment();
  buildCounterAttachment++;
  if (buildCounterAttachment < 3) {
    o.createTime = 'foo';
    o.creator = buildActor();
    o.filename = 'foo';
    o.mimeType = 'foo';
    o.name = 'foo';
    o.sizeBytes = 'foo';
  }
  buildCounterAttachment--;
  return o;
}

void checkAttachment(api.Attachment o) {
  buildCounterAttachment++;
  if (buildCounterAttachment < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkActor(o.creator!);
    unittest.expect(
      o.filename!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mimeType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sizeBytes!,
      unittest.equals('foo'),
    );
  }
  buildCounterAttachment--;
}

core.int buildCounterBlobstore2Info = 0;
api.Blobstore2Info buildBlobstore2Info() {
  final o = api.Blobstore2Info();
  buildCounterBlobstore2Info++;
  if (buildCounterBlobstore2Info < 3) {
    o.blobGeneration = 'foo';
    o.blobId = 'foo';
    o.downloadReadHandle = 'foo';
    o.readToken = 'foo';
    o.uploadMetadataContainer = 'foo';
  }
  buildCounterBlobstore2Info--;
  return o;
}

void checkBlobstore2Info(api.Blobstore2Info o) {
  buildCounterBlobstore2Info++;
  if (buildCounterBlobstore2Info < 3) {
    unittest.expect(
      o.blobGeneration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.blobId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.downloadReadHandle!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.readToken!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uploadMetadataContainer!,
      unittest.equals('foo'),
    );
  }
  buildCounterBlobstore2Info--;
}

core.List<core.String> buildUnnamed0() => [
      'foo',
      'foo',
    ];

void checkUnnamed0(core.List<core.String> o) {
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

core.int buildCounterCase = 0;
api.Case buildCase() {
  final o = api.Case();
  buildCounterCase++;
  if (buildCounterCase < 3) {
    o.classification = buildCaseClassification();
    o.createTime = 'foo';
    o.creator = buildActor();
    o.description = 'foo';
    o.displayName = 'foo';
    o.escalated = true;
    o.name = 'foo';
    o.priority = 'foo';
    o.severity = 'foo';
    o.state = 'foo';
    o.subscriberEmailAddresses = buildUnnamed0();
    o.testCase = true;
    o.timeZone = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterCase--;
  return o;
}

void checkCase(api.Case o) {
  buildCounterCase++;
  if (buildCounterCase < 3) {
    checkCaseClassification(o.classification!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkActor(o.creator!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.escalated!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.priority!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkUnnamed0(o.subscriberEmailAddresses!);
    unittest.expect(o.testCase!, unittest.isTrue);
    unittest.expect(
      o.timeZone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterCase--;
}

core.int buildCounterCaseClassification = 0;
api.CaseClassification buildCaseClassification() {
  final o = api.CaseClassification();
  buildCounterCaseClassification++;
  if (buildCounterCaseClassification < 3) {
    o.displayName = 'foo';
    o.id = 'foo';
  }
  buildCounterCaseClassification--;
  return o;
}

void checkCaseClassification(api.CaseClassification o) {
  buildCounterCaseClassification++;
  if (buildCounterCaseClassification < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
  }
  buildCounterCaseClassification--;
}

core.int buildCounterCloseCaseRequest = 0;
api.CloseCaseRequest buildCloseCaseRequest() {
  final o = api.CloseCaseRequest();
  buildCounterCloseCaseRequest++;
  if (buildCounterCloseCaseRequest < 3) {}
  buildCounterCloseCaseRequest--;
  return o;
}

void checkCloseCaseRequest(api.CloseCaseRequest o) {
  buildCounterCloseCaseRequest++;
  if (buildCounterCloseCaseRequest < 3) {}
  buildCounterCloseCaseRequest--;
}

core.int buildCounterComment = 0;
api.Comment buildComment() {
  final o = api.Comment();
  buildCounterComment++;
  if (buildCounterComment < 3) {
    o.body = 'foo';
    o.createTime = 'foo';
    o.creator = buildActor();
    o.name = 'foo';
    o.plainTextBody = 'foo';
  }
  buildCounterComment--;
  return o;
}

void checkComment(api.Comment o) {
  buildCounterComment++;
  if (buildCounterComment < 3) {
    unittest.expect(
      o.body!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkActor(o.creator!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.plainTextBody!,
      unittest.equals('foo'),
    );
  }
  buildCounterComment--;
}

core.int buildCounterCompositeMedia = 0;
api.CompositeMedia buildCompositeMedia() {
  final o = api.CompositeMedia();
  buildCounterCompositeMedia++;
  if (buildCounterCompositeMedia < 3) {
    o.blobRef = 'foo';
    o.blobstore2Info = buildBlobstore2Info();
    o.cosmoBinaryReference = 'foo';
    o.crc32cHash = 42;
    o.inline = 'foo';
    o.length = 'foo';
    o.md5Hash = 'foo';
    o.objectId = buildObjectId();
    o.path = 'foo';
    o.referenceType = 'foo';
    o.sha1Hash = 'foo';
  }
  buildCounterCompositeMedia--;
  return o;
}

void checkCompositeMedia(api.CompositeMedia o) {
  buildCounterCompositeMedia++;
  if (buildCounterCompositeMedia < 3) {
    unittest.expect(
      o.blobRef!,
      unittest.equals('foo'),
    );
    checkBlobstore2Info(o.blobstore2Info!);
    unittest.expect(
      o.cosmoBinaryReference!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.crc32cHash!,
      unittest.equals(42),
    );
    unittest.expect(
      o.inline!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.length!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.md5Hash!,
      unittest.equals('foo'),
    );
    checkObjectId(o.objectId!);
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.referenceType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sha1Hash!,
      unittest.equals('foo'),
    );
  }
  buildCounterCompositeMedia--;
}

core.int buildCounterContentTypeInfo = 0;
api.ContentTypeInfo buildContentTypeInfo() {
  final o = api.ContentTypeInfo();
  buildCounterContentTypeInfo++;
  if (buildCounterContentTypeInfo < 3) {
    o.bestGuess = 'foo';
    o.fromBytes = 'foo';
    o.fromFileName = 'foo';
    o.fromHeader = 'foo';
    o.fromUrlPath = 'foo';
  }
  buildCounterContentTypeInfo--;
  return o;
}

void checkContentTypeInfo(api.ContentTypeInfo o) {
  buildCounterContentTypeInfo++;
  if (buildCounterContentTypeInfo < 3) {
    unittest.expect(
      o.bestGuess!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fromBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fromFileName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fromHeader!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fromUrlPath!,
      unittest.equals('foo'),
    );
  }
  buildCounterContentTypeInfo--;
}

core.int buildCounterCreateAttachmentRequest = 0;
api.CreateAttachmentRequest buildCreateAttachmentRequest() {
  final o = api.CreateAttachmentRequest();
  buildCounterCreateAttachmentRequest++;
  if (buildCounterCreateAttachmentRequest < 3) {
    o.attachment = buildAttachment();
  }
  buildCounterCreateAttachmentRequest--;
  return o;
}

void checkCreateAttachmentRequest(api.CreateAttachmentRequest o) {
  buildCounterCreateAttachmentRequest++;
  if (buildCounterCreateAttachmentRequest < 3) {
    checkAttachment(o.attachment!);
  }
  buildCounterCreateAttachmentRequest--;
}

core.int buildCounterDiffChecksumsResponse = 0;
api.DiffChecksumsResponse buildDiffChecksumsResponse() {
  final o = api.DiffChecksumsResponse();
  buildCounterDiffChecksumsResponse++;
  if (buildCounterDiffChecksumsResponse < 3) {
    o.checksumsLocation = buildCompositeMedia();
    o.chunkSizeBytes = 'foo';
    o.objectLocation = buildCompositeMedia();
    o.objectSizeBytes = 'foo';
    o.objectVersion = 'foo';
  }
  buildCounterDiffChecksumsResponse--;
  return o;
}

void checkDiffChecksumsResponse(api.DiffChecksumsResponse o) {
  buildCounterDiffChecksumsResponse++;
  if (buildCounterDiffChecksumsResponse < 3) {
    checkCompositeMedia(o.checksumsLocation!);
    unittest.expect(
      o.chunkSizeBytes!,
      unittest.equals('foo'),
    );
    checkCompositeMedia(o.objectLocation!);
    unittest.expect(
      o.objectSizeBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterDiffChecksumsResponse--;
}

core.int buildCounterDiffDownloadResponse = 0;
api.DiffDownloadResponse buildDiffDownloadResponse() {
  final o = api.DiffDownloadResponse();
  buildCounterDiffDownloadResponse++;
  if (buildCounterDiffDownloadResponse < 3) {
    o.objectLocation = buildCompositeMedia();
  }
  buildCounterDiffDownloadResponse--;
  return o;
}

void checkDiffDownloadResponse(api.DiffDownloadResponse o) {
  buildCounterDiffDownloadResponse++;
  if (buildCounterDiffDownloadResponse < 3) {
    checkCompositeMedia(o.objectLocation!);
  }
  buildCounterDiffDownloadResponse--;
}

core.int buildCounterDiffUploadRequest = 0;
api.DiffUploadRequest buildDiffUploadRequest() {
  final o = api.DiffUploadRequest();
  buildCounterDiffUploadRequest++;
  if (buildCounterDiffUploadRequest < 3) {
    o.checksumsInfo = buildCompositeMedia();
    o.objectInfo = buildCompositeMedia();
    o.objectVersion = 'foo';
  }
  buildCounterDiffUploadRequest--;
  return o;
}

void checkDiffUploadRequest(api.DiffUploadRequest o) {
  buildCounterDiffUploadRequest++;
  if (buildCounterDiffUploadRequest < 3) {
    checkCompositeMedia(o.checksumsInfo!);
    checkCompositeMedia(o.objectInfo!);
    unittest.expect(
      o.objectVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterDiffUploadRequest--;
}

core.int buildCounterDiffUploadResponse = 0;
api.DiffUploadResponse buildDiffUploadResponse() {
  final o = api.DiffUploadResponse();
  buildCounterDiffUploadResponse++;
  if (buildCounterDiffUploadResponse < 3) {
    o.objectVersion = 'foo';
    o.originalObject = buildCompositeMedia();
  }
  buildCounterDiffUploadResponse--;
  return o;
}

void checkDiffUploadResponse(api.DiffUploadResponse o) {
  buildCounterDiffUploadResponse++;
  if (buildCounterDiffUploadResponse < 3) {
    unittest.expect(
      o.objectVersion!,
      unittest.equals('foo'),
    );
    checkCompositeMedia(o.originalObject!);
  }
  buildCounterDiffUploadResponse--;
}

core.int buildCounterDiffVersionResponse = 0;
api.DiffVersionResponse buildDiffVersionResponse() {
  final o = api.DiffVersionResponse();
  buildCounterDiffVersionResponse++;
  if (buildCounterDiffVersionResponse < 3) {
    o.objectSizeBytes = 'foo';
    o.objectVersion = 'foo';
  }
  buildCounterDiffVersionResponse--;
  return o;
}

void checkDiffVersionResponse(api.DiffVersionResponse o) {
  buildCounterDiffVersionResponse++;
  if (buildCounterDiffVersionResponse < 3) {
    unittest.expect(
      o.objectSizeBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterDiffVersionResponse--;
}

core.int buildCounterDownloadParameters = 0;
api.DownloadParameters buildDownloadParameters() {
  final o = api.DownloadParameters();
  buildCounterDownloadParameters++;
  if (buildCounterDownloadParameters < 3) {
    o.allowGzipCompression = true;
    o.ignoreRange = true;
  }
  buildCounterDownloadParameters--;
  return o;
}

void checkDownloadParameters(api.DownloadParameters o) {
  buildCounterDownloadParameters++;
  if (buildCounterDownloadParameters < 3) {
    unittest.expect(o.allowGzipCompression!, unittest.isTrue);
    unittest.expect(o.ignoreRange!, unittest.isTrue);
  }
  buildCounterDownloadParameters--;
}

core.int buildCounterEscalateCaseRequest = 0;
api.EscalateCaseRequest buildEscalateCaseRequest() {
  final o = api.EscalateCaseRequest();
  buildCounterEscalateCaseRequest++;
  if (buildCounterEscalateCaseRequest < 3) {
    o.escalation = buildEscalation();
  }
  buildCounterEscalateCaseRequest--;
  return o;
}

void checkEscalateCaseRequest(api.EscalateCaseRequest o) {
  buildCounterEscalateCaseRequest++;
  if (buildCounterEscalateCaseRequest < 3) {
    checkEscalation(o.escalation!);
  }
  buildCounterEscalateCaseRequest--;
}

core.int buildCounterEscalation = 0;
api.Escalation buildEscalation() {
  final o = api.Escalation();
  buildCounterEscalation++;
  if (buildCounterEscalation < 3) {
    o.justification = 'foo';
    o.reason = 'foo';
  }
  buildCounterEscalation--;
  return o;
}

void checkEscalation(api.Escalation o) {
  buildCounterEscalation++;
  if (buildCounterEscalation < 3) {
    unittest.expect(
      o.justification!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterEscalation--;
}

core.List<api.Attachment> buildUnnamed1() => [
      buildAttachment(),
      buildAttachment(),
    ];

void checkUnnamed1(core.List<api.Attachment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAttachment(o[0]);
  checkAttachment(o[1]);
}

core.int buildCounterListAttachmentsResponse = 0;
api.ListAttachmentsResponse buildListAttachmentsResponse() {
  final o = api.ListAttachmentsResponse();
  buildCounterListAttachmentsResponse++;
  if (buildCounterListAttachmentsResponse < 3) {
    o.attachments = buildUnnamed1();
    o.nextPageToken = 'foo';
  }
  buildCounterListAttachmentsResponse--;
  return o;
}

void checkListAttachmentsResponse(api.ListAttachmentsResponse o) {
  buildCounterListAttachmentsResponse++;
  if (buildCounterListAttachmentsResponse < 3) {
    checkUnnamed1(o.attachments!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListAttachmentsResponse--;
}

core.List<api.Case> buildUnnamed2() => [
      buildCase(),
      buildCase(),
    ];

void checkUnnamed2(core.List<api.Case> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCase(o[0]);
  checkCase(o[1]);
}

core.int buildCounterListCasesResponse = 0;
api.ListCasesResponse buildListCasesResponse() {
  final o = api.ListCasesResponse();
  buildCounterListCasesResponse++;
  if (buildCounterListCasesResponse < 3) {
    o.cases = buildUnnamed2();
    o.nextPageToken = 'foo';
  }
  buildCounterListCasesResponse--;
  return o;
}

void checkListCasesResponse(api.ListCasesResponse o) {
  buildCounterListCasesResponse++;
  if (buildCounterListCasesResponse < 3) {
    checkUnnamed2(o.cases!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListCasesResponse--;
}

core.List<api.Comment> buildUnnamed3() => [
      buildComment(),
      buildComment(),
    ];

void checkUnnamed3(core.List<api.Comment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComment(o[0]);
  checkComment(o[1]);
}

core.int buildCounterListCommentsResponse = 0;
api.ListCommentsResponse buildListCommentsResponse() {
  final o = api.ListCommentsResponse();
  buildCounterListCommentsResponse++;
  if (buildCounterListCommentsResponse < 3) {
    o.comments = buildUnnamed3();
    o.nextPageToken = 'foo';
  }
  buildCounterListCommentsResponse--;
  return o;
}

void checkListCommentsResponse(api.ListCommentsResponse o) {
  buildCounterListCommentsResponse++;
  if (buildCounterListCommentsResponse < 3) {
    checkUnnamed3(o.comments!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListCommentsResponse--;
}

core.List<api.CompositeMedia> buildUnnamed4() => [
      buildCompositeMedia(),
      buildCompositeMedia(),
    ];

void checkUnnamed4(core.List<api.CompositeMedia> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCompositeMedia(o[0]);
  checkCompositeMedia(o[1]);
}

core.int buildCounterMedia = 0;
api.Media buildMedia() {
  final o = api.Media();
  buildCounterMedia++;
  if (buildCounterMedia < 3) {
    o.algorithm = 'foo';
    o.bigstoreObjectRef = 'foo';
    o.blobRef = 'foo';
    o.blobstore2Info = buildBlobstore2Info();
    o.compositeMedia = buildUnnamed4();
    o.contentType = 'foo';
    o.contentTypeInfo = buildContentTypeInfo();
    o.cosmoBinaryReference = 'foo';
    o.crc32cHash = 42;
    o.diffChecksumsResponse = buildDiffChecksumsResponse();
    o.diffDownloadResponse = buildDiffDownloadResponse();
    o.diffUploadRequest = buildDiffUploadRequest();
    o.diffUploadResponse = buildDiffUploadResponse();
    o.diffVersionResponse = buildDiffVersionResponse();
    o.downloadParameters = buildDownloadParameters();
    o.filename = 'foo';
    o.hash = 'foo';
    o.hashVerified = true;
    o.inline = 'foo';
    o.isPotentialRetry = true;
    o.length = 'foo';
    o.md5Hash = 'foo';
    o.mediaId = 'foo';
    o.objectId = buildObjectId();
    o.path = 'foo';
    o.referenceType = 'foo';
    o.sha1Hash = 'foo';
    o.sha256Hash = 'foo';
    o.timestamp = 'foo';
    o.token = 'foo';
  }
  buildCounterMedia--;
  return o;
}

void checkMedia(api.Media o) {
  buildCounterMedia++;
  if (buildCounterMedia < 3) {
    unittest.expect(
      o.algorithm!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bigstoreObjectRef!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.blobRef!,
      unittest.equals('foo'),
    );
    checkBlobstore2Info(o.blobstore2Info!);
    checkUnnamed4(o.compositeMedia!);
    unittest.expect(
      o.contentType!,
      unittest.equals('foo'),
    );
    checkContentTypeInfo(o.contentTypeInfo!);
    unittest.expect(
      o.cosmoBinaryReference!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.crc32cHash!,
      unittest.equals(42),
    );
    checkDiffChecksumsResponse(o.diffChecksumsResponse!);
    checkDiffDownloadResponse(o.diffDownloadResponse!);
    checkDiffUploadRequest(o.diffUploadRequest!);
    checkDiffUploadResponse(o.diffUploadResponse!);
    checkDiffVersionResponse(o.diffVersionResponse!);
    checkDownloadParameters(o.downloadParameters!);
    unittest.expect(
      o.filename!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hash!,
      unittest.equals('foo'),
    );
    unittest.expect(o.hashVerified!, unittest.isTrue);
    unittest.expect(
      o.inline!,
      unittest.equals('foo'),
    );
    unittest.expect(o.isPotentialRetry!, unittest.isTrue);
    unittest.expect(
      o.length!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.md5Hash!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mediaId!,
      unittest.equals('foo'),
    );
    checkObjectId(o.objectId!);
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.referenceType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sha1Hash!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sha256Hash!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timestamp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.token!,
      unittest.equals('foo'),
    );
  }
  buildCounterMedia--;
}

core.int buildCounterObjectId = 0;
api.ObjectId buildObjectId() {
  final o = api.ObjectId();
  buildCounterObjectId++;
  if (buildCounterObjectId < 3) {
    o.bucketName = 'foo';
    o.generation = 'foo';
    o.objectName = 'foo';
  }
  buildCounterObjectId--;
  return o;
}

void checkObjectId(api.ObjectId o) {
  buildCounterObjectId++;
  if (buildCounterObjectId < 3) {
    unittest.expect(
      o.bucketName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.generation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectName!,
      unittest.equals('foo'),
    );
  }
  buildCounterObjectId--;
}

core.List<api.CaseClassification> buildUnnamed5() => [
      buildCaseClassification(),
      buildCaseClassification(),
    ];

void checkUnnamed5(core.List<api.CaseClassification> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCaseClassification(o[0]);
  checkCaseClassification(o[1]);
}

core.int buildCounterSearchCaseClassificationsResponse = 0;
api.SearchCaseClassificationsResponse buildSearchCaseClassificationsResponse() {
  final o = api.SearchCaseClassificationsResponse();
  buildCounterSearchCaseClassificationsResponse++;
  if (buildCounterSearchCaseClassificationsResponse < 3) {
    o.caseClassifications = buildUnnamed5();
    o.nextPageToken = 'foo';
  }
  buildCounterSearchCaseClassificationsResponse--;
  return o;
}

void checkSearchCaseClassificationsResponse(
    api.SearchCaseClassificationsResponse o) {
  buildCounterSearchCaseClassificationsResponse++;
  if (buildCounterSearchCaseClassificationsResponse < 3) {
    checkUnnamed5(o.caseClassifications!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchCaseClassificationsResponse--;
}

core.List<api.Case> buildUnnamed6() => [
      buildCase(),
      buildCase(),
    ];

void checkUnnamed6(core.List<api.Case> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCase(o[0]);
  checkCase(o[1]);
}

core.int buildCounterSearchCasesResponse = 0;
api.SearchCasesResponse buildSearchCasesResponse() {
  final o = api.SearchCasesResponse();
  buildCounterSearchCasesResponse++;
  if (buildCounterSearchCasesResponse < 3) {
    o.cases = buildUnnamed6();
    o.nextPageToken = 'foo';
  }
  buildCounterSearchCasesResponse--;
  return o;
}

void checkSearchCasesResponse(api.SearchCasesResponse o) {
  buildCounterSearchCasesResponse++;
  if (buildCounterSearchCasesResponse < 3) {
    checkUnnamed6(o.cases!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterSearchCasesResponse--;
}

void main() {
  unittest.group('obj-schema-Actor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildActor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Actor.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkActor(od);
    });
  });

  unittest.group('obj-schema-Attachment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAttachment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Attachment.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAttachment(od);
    });
  });

  unittest.group('obj-schema-Blobstore2Info', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBlobstore2Info();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Blobstore2Info.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBlobstore2Info(od);
    });
  });

  unittest.group('obj-schema-Case', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCase();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Case.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCase(od);
    });
  });

  unittest.group('obj-schema-CaseClassification', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCaseClassification();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CaseClassification.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCaseClassification(od);
    });
  });

  unittest.group('obj-schema-CloseCaseRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloseCaseRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloseCaseRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCloseCaseRequest(od);
    });
  });

  unittest.group('obj-schema-Comment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Comment.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkComment(od);
    });
  });

  unittest.group('obj-schema-CompositeMedia', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCompositeMedia();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CompositeMedia.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCompositeMedia(od);
    });
  });

  unittest.group('obj-schema-ContentTypeInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContentTypeInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContentTypeInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContentTypeInfo(od);
    });
  });

  unittest.group('obj-schema-CreateAttachmentRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateAttachmentRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateAttachmentRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateAttachmentRequest(od);
    });
  });

  unittest.group('obj-schema-DiffChecksumsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiffChecksumsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiffChecksumsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDiffChecksumsResponse(od);
    });
  });

  unittest.group('obj-schema-DiffDownloadResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiffDownloadResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiffDownloadResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDiffDownloadResponse(od);
    });
  });

  unittest.group('obj-schema-DiffUploadRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiffUploadRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiffUploadRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDiffUploadRequest(od);
    });
  });

  unittest.group('obj-schema-DiffUploadResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiffUploadResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiffUploadResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDiffUploadResponse(od);
    });
  });

  unittest.group('obj-schema-DiffVersionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiffVersionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiffVersionResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDiffVersionResponse(od);
    });
  });

  unittest.group('obj-schema-DownloadParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDownloadParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DownloadParameters.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDownloadParameters(od);
    });
  });

  unittest.group('obj-schema-EscalateCaseRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEscalateCaseRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EscalateCaseRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEscalateCaseRequest(od);
    });
  });

  unittest.group('obj-schema-Escalation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEscalation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Escalation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEscalation(od);
    });
  });

  unittest.group('obj-schema-ListAttachmentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAttachmentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAttachmentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAttachmentsResponse(od);
    });
  });

  unittest.group('obj-schema-ListCasesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCasesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCasesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCasesResponse(od);
    });
  });

  unittest.group('obj-schema-ListCommentsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListCommentsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListCommentsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListCommentsResponse(od);
    });
  });

  unittest.group('obj-schema-Media', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMedia();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Media.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMedia(od);
    });
  });

  unittest.group('obj-schema-ObjectId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildObjectId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ObjectId.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkObjectId(od);
    });
  });

  unittest.group('obj-schema-SearchCaseClassificationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchCaseClassificationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchCaseClassificationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchCaseClassificationsResponse(od);
    });
  });

  unittest.group('obj-schema-SearchCasesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchCasesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchCasesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSearchCasesResponse(od);
    });
  });

  unittest.group('resource-AttachmentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudSupportApi(mock).attachments;
      final arg_request = buildCreateAttachmentRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateAttachmentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateAttachmentRequest(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v2beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(buildAttachment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkAttachment(response as api.Attachment);
    });
  });

  unittest.group('resource-CaseClassificationsResource', () {
    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.CloudSupportApi(mock).caseClassifications;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_query = 'foo';
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
          path.substring(pathOffset, pathOffset + 33),
          unittest.equals('v2beta/caseClassifications:search'),
        );
        pathOffset += 33;

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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildSearchCaseClassificationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          query: arg_query,
          $fields: arg_$fields);
      checkSearchCaseClassificationsResponse(
          response as api.SearchCaseClassificationsResponse);
    });
  });

  unittest.group('resource-CasesResource', () {
    unittest.test('method--close', () async {
      final mock = HttpServerMock();
      final res = api.CloudSupportApi(mock).cases;
      final arg_request = buildCloseCaseRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CloseCaseRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCloseCaseRequest(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v2beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(buildCase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.close(arg_request, arg_name, $fields: arg_$fields);
      checkCase(response as api.Case);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudSupportApi(mock).cases;
      final arg_request = buildCase();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Case.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCase(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v2beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(buildCase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkCase(response as api.Case);
    });

    unittest.test('method--escalate', () async {
      final mock = HttpServerMock();
      final res = api.CloudSupportApi(mock).cases;
      final arg_request = buildEscalateCaseRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.EscalateCaseRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkEscalateCaseRequest(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v2beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(buildCase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.escalate(arg_request, arg_name, $fields: arg_$fields);
      checkCase(response as api.Case);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.CloudSupportApi(mock).cases;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v2beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(buildCase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkCase(response as api.Case);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudSupportApi(mock).cases;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v2beta/'),
        );
        pathOffset += 7;
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
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListCasesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCasesResponse(response as api.ListCasesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.CloudSupportApi(mock).cases;
      final arg_request = buildCase();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Case.fromJson(json as core.Map<core.String, core.dynamic>);
        checkCase(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v2beta/'),
        );
        pathOffset += 7;
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
          queryMap['updateMask']!.first,
          unittest.equals(arg_updateMask),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildCase());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkCase(response as api.Case);
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res = api.CloudSupportApi(mock).cases;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_query = 'foo';
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
          path.substring(pathOffset, pathOffset + 19),
          unittest.equals('v2beta/cases:search'),
        );
        pathOffset += 19;

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
          core.int.parse(queryMap['pageSize']!.first),
          unittest.equals(arg_pageSize),
        );
        unittest.expect(
          queryMap['pageToken']!.first,
          unittest.equals(arg_pageToken),
        );
        unittest.expect(
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSearchCasesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.search(
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          query: arg_query,
          $fields: arg_$fields);
      checkSearchCasesResponse(response as api.SearchCasesResponse);
    });
  });

  unittest.group('resource-CasesAttachmentsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudSupportApi(mock).cases.attachments;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v2beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListAttachmentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListAttachmentsResponse(response as api.ListAttachmentsResponse);
    });
  });

  unittest.group('resource-CasesCommentsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.CloudSupportApi(mock).cases.comments;
      final arg_request = buildComment();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Comment.fromJson(json as core.Map<core.String, core.dynamic>);
        checkComment(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v2beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(buildComment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_parent, $fields: arg_$fields);
      checkComment(response as api.Comment);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.CloudSupportApi(mock).cases.comments;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v2beta/'),
        );
        pathOffset += 7;
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListCommentsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListCommentsResponse(response as api.ListCommentsResponse);
    });
  });

  unittest.group('resource-MediaResource', () {
    unittest.test('method--download', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.CloudSupportApi(mock).media;
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v2beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(buildMedia());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.download(arg_name, $fields: arg_$fields);
      checkMedia(response as api.Media);
    });

    unittest.test('method--upload', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.CloudSupportApi(mock).media;
      final arg_request = buildCreateAttachmentRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateAttachmentRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateAttachmentRequest(obj);

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
          path.substring(pathOffset, pathOffset + 7),
          unittest.equals('v2beta/'),
        );
        pathOffset += 7;
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
        final resp = convert.json.encode(buildAttachment());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.upload(arg_request, arg_parent, $fields: arg_$fields);
      checkAttachment(response as api.Attachment);
    });
  });
}
