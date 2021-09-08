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

import 'package:googleapis/youtubereporting/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

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

core.int buildCounterGdataBlobstore2Info = 0;
api.GdataBlobstore2Info buildGdataBlobstore2Info() {
  final o = api.GdataBlobstore2Info();
  buildCounterGdataBlobstore2Info++;
  if (buildCounterGdataBlobstore2Info < 3) {
    o.blobGeneration = 'foo';
    o.blobId = 'foo';
    o.downloadReadHandle = 'foo';
    o.readToken = 'foo';
    o.uploadMetadataContainer = 'foo';
  }
  buildCounterGdataBlobstore2Info--;
  return o;
}

void checkGdataBlobstore2Info(api.GdataBlobstore2Info o) {
  buildCounterGdataBlobstore2Info++;
  if (buildCounterGdataBlobstore2Info < 3) {
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
  buildCounterGdataBlobstore2Info--;
}

core.int buildCounterGdataCompositeMedia = 0;
api.GdataCompositeMedia buildGdataCompositeMedia() {
  final o = api.GdataCompositeMedia();
  buildCounterGdataCompositeMedia++;
  if (buildCounterGdataCompositeMedia < 3) {
    o.blobRef = 'foo';
    o.blobstore2Info = buildGdataBlobstore2Info();
    o.cosmoBinaryReference = 'foo';
    o.crc32cHash = 42;
    o.inline = 'foo';
    o.length = 'foo';
    o.md5Hash = 'foo';
    o.objectId = buildGdataObjectId();
    o.path = 'foo';
    o.referenceType = 'foo';
    o.sha1Hash = 'foo';
  }
  buildCounterGdataCompositeMedia--;
  return o;
}

void checkGdataCompositeMedia(api.GdataCompositeMedia o) {
  buildCounterGdataCompositeMedia++;
  if (buildCounterGdataCompositeMedia < 3) {
    unittest.expect(
      o.blobRef!,
      unittest.equals('foo'),
    );
    checkGdataBlobstore2Info(o.blobstore2Info!);
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
    checkGdataObjectId(o.objectId!);
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
  buildCounterGdataCompositeMedia--;
}

core.int buildCounterGdataContentTypeInfo = 0;
api.GdataContentTypeInfo buildGdataContentTypeInfo() {
  final o = api.GdataContentTypeInfo();
  buildCounterGdataContentTypeInfo++;
  if (buildCounterGdataContentTypeInfo < 3) {
    o.bestGuess = 'foo';
    o.fromBytes = 'foo';
    o.fromFileName = 'foo';
    o.fromHeader = 'foo';
    o.fromUrlPath = 'foo';
  }
  buildCounterGdataContentTypeInfo--;
  return o;
}

void checkGdataContentTypeInfo(api.GdataContentTypeInfo o) {
  buildCounterGdataContentTypeInfo++;
  if (buildCounterGdataContentTypeInfo < 3) {
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
  buildCounterGdataContentTypeInfo--;
}

core.int buildCounterGdataDiffChecksumsResponse = 0;
api.GdataDiffChecksumsResponse buildGdataDiffChecksumsResponse() {
  final o = api.GdataDiffChecksumsResponse();
  buildCounterGdataDiffChecksumsResponse++;
  if (buildCounterGdataDiffChecksumsResponse < 3) {
    o.checksumsLocation = buildGdataCompositeMedia();
    o.chunkSizeBytes = 'foo';
    o.objectLocation = buildGdataCompositeMedia();
    o.objectSizeBytes = 'foo';
    o.objectVersion = 'foo';
  }
  buildCounterGdataDiffChecksumsResponse--;
  return o;
}

void checkGdataDiffChecksumsResponse(api.GdataDiffChecksumsResponse o) {
  buildCounterGdataDiffChecksumsResponse++;
  if (buildCounterGdataDiffChecksumsResponse < 3) {
    checkGdataCompositeMedia(o.checksumsLocation!);
    unittest.expect(
      o.chunkSizeBytes!,
      unittest.equals('foo'),
    );
    checkGdataCompositeMedia(o.objectLocation!);
    unittest.expect(
      o.objectSizeBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterGdataDiffChecksumsResponse--;
}

core.int buildCounterGdataDiffDownloadResponse = 0;
api.GdataDiffDownloadResponse buildGdataDiffDownloadResponse() {
  final o = api.GdataDiffDownloadResponse();
  buildCounterGdataDiffDownloadResponse++;
  if (buildCounterGdataDiffDownloadResponse < 3) {
    o.objectLocation = buildGdataCompositeMedia();
  }
  buildCounterGdataDiffDownloadResponse--;
  return o;
}

void checkGdataDiffDownloadResponse(api.GdataDiffDownloadResponse o) {
  buildCounterGdataDiffDownloadResponse++;
  if (buildCounterGdataDiffDownloadResponse < 3) {
    checkGdataCompositeMedia(o.objectLocation!);
  }
  buildCounterGdataDiffDownloadResponse--;
}

core.int buildCounterGdataDiffUploadRequest = 0;
api.GdataDiffUploadRequest buildGdataDiffUploadRequest() {
  final o = api.GdataDiffUploadRequest();
  buildCounterGdataDiffUploadRequest++;
  if (buildCounterGdataDiffUploadRequest < 3) {
    o.checksumsInfo = buildGdataCompositeMedia();
    o.objectInfo = buildGdataCompositeMedia();
    o.objectVersion = 'foo';
  }
  buildCounterGdataDiffUploadRequest--;
  return o;
}

void checkGdataDiffUploadRequest(api.GdataDiffUploadRequest o) {
  buildCounterGdataDiffUploadRequest++;
  if (buildCounterGdataDiffUploadRequest < 3) {
    checkGdataCompositeMedia(o.checksumsInfo!);
    checkGdataCompositeMedia(o.objectInfo!);
    unittest.expect(
      o.objectVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterGdataDiffUploadRequest--;
}

core.int buildCounterGdataDiffUploadResponse = 0;
api.GdataDiffUploadResponse buildGdataDiffUploadResponse() {
  final o = api.GdataDiffUploadResponse();
  buildCounterGdataDiffUploadResponse++;
  if (buildCounterGdataDiffUploadResponse < 3) {
    o.objectVersion = 'foo';
    o.originalObject = buildGdataCompositeMedia();
  }
  buildCounterGdataDiffUploadResponse--;
  return o;
}

void checkGdataDiffUploadResponse(api.GdataDiffUploadResponse o) {
  buildCounterGdataDiffUploadResponse++;
  if (buildCounterGdataDiffUploadResponse < 3) {
    unittest.expect(
      o.objectVersion!,
      unittest.equals('foo'),
    );
    checkGdataCompositeMedia(o.originalObject!);
  }
  buildCounterGdataDiffUploadResponse--;
}

core.int buildCounterGdataDiffVersionResponse = 0;
api.GdataDiffVersionResponse buildGdataDiffVersionResponse() {
  final o = api.GdataDiffVersionResponse();
  buildCounterGdataDiffVersionResponse++;
  if (buildCounterGdataDiffVersionResponse < 3) {
    o.objectSizeBytes = 'foo';
    o.objectVersion = 'foo';
  }
  buildCounterGdataDiffVersionResponse--;
  return o;
}

void checkGdataDiffVersionResponse(api.GdataDiffVersionResponse o) {
  buildCounterGdataDiffVersionResponse++;
  if (buildCounterGdataDiffVersionResponse < 3) {
    unittest.expect(
      o.objectSizeBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.objectVersion!,
      unittest.equals('foo'),
    );
  }
  buildCounterGdataDiffVersionResponse--;
}

core.int buildCounterGdataDownloadParameters = 0;
api.GdataDownloadParameters buildGdataDownloadParameters() {
  final o = api.GdataDownloadParameters();
  buildCounterGdataDownloadParameters++;
  if (buildCounterGdataDownloadParameters < 3) {
    o.allowGzipCompression = true;
    o.ignoreRange = true;
  }
  buildCounterGdataDownloadParameters--;
  return o;
}

void checkGdataDownloadParameters(api.GdataDownloadParameters o) {
  buildCounterGdataDownloadParameters++;
  if (buildCounterGdataDownloadParameters < 3) {
    unittest.expect(o.allowGzipCompression!, unittest.isTrue);
    unittest.expect(o.ignoreRange!, unittest.isTrue);
  }
  buildCounterGdataDownloadParameters--;
}

core.List<api.GdataCompositeMedia> buildUnnamed4488() => [
      buildGdataCompositeMedia(),
      buildGdataCompositeMedia(),
    ];

void checkUnnamed4488(core.List<api.GdataCompositeMedia> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGdataCompositeMedia(o[0]);
  checkGdataCompositeMedia(o[1]);
}

core.int buildCounterGdataMedia = 0;
api.GdataMedia buildGdataMedia() {
  final o = api.GdataMedia();
  buildCounterGdataMedia++;
  if (buildCounterGdataMedia < 3) {
    o.algorithm = 'foo';
    o.bigstoreObjectRef = 'foo';
    o.blobRef = 'foo';
    o.blobstore2Info = buildGdataBlobstore2Info();
    o.compositeMedia = buildUnnamed4488();
    o.contentType = 'foo';
    o.contentTypeInfo = buildGdataContentTypeInfo();
    o.cosmoBinaryReference = 'foo';
    o.crc32cHash = 42;
    o.diffChecksumsResponse = buildGdataDiffChecksumsResponse();
    o.diffDownloadResponse = buildGdataDiffDownloadResponse();
    o.diffUploadRequest = buildGdataDiffUploadRequest();
    o.diffUploadResponse = buildGdataDiffUploadResponse();
    o.diffVersionResponse = buildGdataDiffVersionResponse();
    o.downloadParameters = buildGdataDownloadParameters();
    o.filename = 'foo';
    o.hash = 'foo';
    o.hashVerified = true;
    o.inline = 'foo';
    o.isPotentialRetry = true;
    o.length = 'foo';
    o.md5Hash = 'foo';
    o.mediaId = 'foo';
    o.objectId = buildGdataObjectId();
    o.path = 'foo';
    o.referenceType = 'foo';
    o.sha1Hash = 'foo';
    o.sha256Hash = 'foo';
    o.timestamp = 'foo';
    o.token = 'foo';
  }
  buildCounterGdataMedia--;
  return o;
}

void checkGdataMedia(api.GdataMedia o) {
  buildCounterGdataMedia++;
  if (buildCounterGdataMedia < 3) {
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
    checkGdataBlobstore2Info(o.blobstore2Info!);
    checkUnnamed4488(o.compositeMedia!);
    unittest.expect(
      o.contentType!,
      unittest.equals('foo'),
    );
    checkGdataContentTypeInfo(o.contentTypeInfo!);
    unittest.expect(
      o.cosmoBinaryReference!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.crc32cHash!,
      unittest.equals(42),
    );
    checkGdataDiffChecksumsResponse(o.diffChecksumsResponse!);
    checkGdataDiffDownloadResponse(o.diffDownloadResponse!);
    checkGdataDiffUploadRequest(o.diffUploadRequest!);
    checkGdataDiffUploadResponse(o.diffUploadResponse!);
    checkGdataDiffVersionResponse(o.diffVersionResponse!);
    checkGdataDownloadParameters(o.downloadParameters!);
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
    checkGdataObjectId(o.objectId!);
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
  buildCounterGdataMedia--;
}

core.int buildCounterGdataObjectId = 0;
api.GdataObjectId buildGdataObjectId() {
  final o = api.GdataObjectId();
  buildCounterGdataObjectId++;
  if (buildCounterGdataObjectId < 3) {
    o.bucketName = 'foo';
    o.generation = 'foo';
    o.objectName = 'foo';
  }
  buildCounterGdataObjectId--;
  return o;
}

void checkGdataObjectId(api.GdataObjectId o) {
  buildCounterGdataObjectId++;
  if (buildCounterGdataObjectId < 3) {
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
  buildCounterGdataObjectId--;
}

core.int buildCounterJob = 0;
api.Job buildJob() {
  final o = api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.createTime = 'foo';
    o.expireTime = 'foo';
    o.id = 'foo';
    o.name = 'foo';
    o.reportTypeId = 'foo';
    o.systemManaged = true;
  }
  buildCounterJob--;
  return o;
}

void checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reportTypeId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.systemManaged!, unittest.isTrue);
  }
  buildCounterJob--;
}

core.List<api.Job> buildUnnamed4489() => [
      buildJob(),
      buildJob(),
    ];

void checkUnnamed4489(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterListJobsResponse = 0;
api.ListJobsResponse buildListJobsResponse() {
  final o = api.ListJobsResponse();
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    o.jobs = buildUnnamed4489();
    o.nextPageToken = 'foo';
  }
  buildCounterListJobsResponse--;
  return o;
}

void checkListJobsResponse(api.ListJobsResponse o) {
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    checkUnnamed4489(o.jobs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListJobsResponse--;
}

core.List<api.ReportType> buildUnnamed4490() => [
      buildReportType(),
      buildReportType(),
    ];

void checkUnnamed4490(core.List<api.ReportType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportType(o[0]);
  checkReportType(o[1]);
}

core.int buildCounterListReportTypesResponse = 0;
api.ListReportTypesResponse buildListReportTypesResponse() {
  final o = api.ListReportTypesResponse();
  buildCounterListReportTypesResponse++;
  if (buildCounterListReportTypesResponse < 3) {
    o.nextPageToken = 'foo';
    o.reportTypes = buildUnnamed4490();
  }
  buildCounterListReportTypesResponse--;
  return o;
}

void checkListReportTypesResponse(api.ListReportTypesResponse o) {
  buildCounterListReportTypesResponse++;
  if (buildCounterListReportTypesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed4490(o.reportTypes!);
  }
  buildCounterListReportTypesResponse--;
}

core.List<api.Report> buildUnnamed4491() => [
      buildReport(),
      buildReport(),
    ];

void checkUnnamed4491(core.List<api.Report> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReport(o[0]);
  checkReport(o[1]);
}

core.int buildCounterListReportsResponse = 0;
api.ListReportsResponse buildListReportsResponse() {
  final o = api.ListReportsResponse();
  buildCounterListReportsResponse++;
  if (buildCounterListReportsResponse < 3) {
    o.nextPageToken = 'foo';
    o.reports = buildUnnamed4491();
  }
  buildCounterListReportsResponse--;
  return o;
}

void checkListReportsResponse(api.ListReportsResponse o) {
  buildCounterListReportsResponse++;
  if (buildCounterListReportsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed4491(o.reports!);
  }
  buildCounterListReportsResponse--;
}

core.int buildCounterReport = 0;
api.Report buildReport() {
  final o = api.Report();
  buildCounterReport++;
  if (buildCounterReport < 3) {
    o.createTime = 'foo';
    o.downloadUrl = 'foo';
    o.endTime = 'foo';
    o.id = 'foo';
    o.jobExpireTime = 'foo';
    o.jobId = 'foo';
    o.startTime = 'foo';
  }
  buildCounterReport--;
  return o;
}

void checkReport(api.Report o) {
  buildCounterReport++;
  if (buildCounterReport < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.downloadUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jobExpireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jobId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterReport--;
}

core.int buildCounterReportType = 0;
api.ReportType buildReportType() {
  final o = api.ReportType();
  buildCounterReportType++;
  if (buildCounterReportType < 3) {
    o.deprecateTime = 'foo';
    o.id = 'foo';
    o.name = 'foo';
    o.systemManaged = true;
  }
  buildCounterReportType--;
  return o;
}

void checkReportType(api.ReportType o) {
  buildCounterReportType++;
  if (buildCounterReportType < 3) {
    unittest.expect(
      o.deprecateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.systemManaged!, unittest.isTrue);
  }
  buildCounterReportType--;
}

void main() {
  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-GdataBlobstore2Info', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGdataBlobstore2Info();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GdataBlobstore2Info.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGdataBlobstore2Info(od);
    });
  });

  unittest.group('obj-schema-GdataCompositeMedia', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGdataCompositeMedia();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GdataCompositeMedia.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGdataCompositeMedia(od);
    });
  });

  unittest.group('obj-schema-GdataContentTypeInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGdataContentTypeInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GdataContentTypeInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGdataContentTypeInfo(od);
    });
  });

  unittest.group('obj-schema-GdataDiffChecksumsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGdataDiffChecksumsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GdataDiffChecksumsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGdataDiffChecksumsResponse(od);
    });
  });

  unittest.group('obj-schema-GdataDiffDownloadResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGdataDiffDownloadResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GdataDiffDownloadResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGdataDiffDownloadResponse(od);
    });
  });

  unittest.group('obj-schema-GdataDiffUploadRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGdataDiffUploadRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GdataDiffUploadRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGdataDiffUploadRequest(od);
    });
  });

  unittest.group('obj-schema-GdataDiffUploadResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGdataDiffUploadResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GdataDiffUploadResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGdataDiffUploadResponse(od);
    });
  });

  unittest.group('obj-schema-GdataDiffVersionResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGdataDiffVersionResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GdataDiffVersionResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGdataDiffVersionResponse(od);
    });
  });

  unittest.group('obj-schema-GdataDownloadParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGdataDownloadParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GdataDownloadParameters.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGdataDownloadParameters(od);
    });
  });

  unittest.group('obj-schema-GdataMedia', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGdataMedia();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GdataMedia.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGdataMedia(od);
    });
  });

  unittest.group('obj-schema-GdataObjectId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGdataObjectId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GdataObjectId.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGdataObjectId(od);
    });
  });

  unittest.group('obj-schema-Job', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Job.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJob(od);
    });
  });

  unittest.group('obj-schema-ListJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListJobsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListJobsResponse(od);
    });
  });

  unittest.group('obj-schema-ListReportTypesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListReportTypesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListReportTypesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListReportTypesResponse(od);
    });
  });

  unittest.group('obj-schema-ListReportsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListReportsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListReportsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListReportsResponse(od);
    });
  });

  unittest.group('obj-schema-Report', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Report.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkReport(od);
    });
  });

  unittest.group('obj-schema-ReportType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ReportType.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkReportType(od);
    });
  });

  unittest.group('resource-JobsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeReportingApi(mock).jobs;
      final arg_request = buildJob();
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Job.fromJson(json as core.Map<core.String, core.dynamic>);
        checkJob(obj);

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
          unittest.equals('v1/jobs'),
        );
        pathOffset += 7;

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
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          $fields: arg_$fields);
      checkJob(response as api.Job);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeReportingApi(mock).jobs;
      final arg_jobId = 'foo';
      final arg_onBehalfOfContentOwner = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1/jobs/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_jobId'),
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
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_jobId,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeReportingApi(mock).jobs;
      final arg_jobId = 'foo';
      final arg_onBehalfOfContentOwner = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1/jobs/'),
        );
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_jobId'),
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
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_jobId,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          $fields: arg_$fields);
      checkJob(response as api.Job);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeReportingApi(mock).jobs;
      final arg_includeSystemManaged = true;
      final arg_onBehalfOfContentOwner = 'foo';
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
          unittest.equals('v1/jobs'),
        );
        pathOffset += 7;

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
          queryMap['includeSystemManaged']!.first,
          unittest.equals('$arg_includeSystemManaged'),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
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
        final resp = convert.json.encode(buildListJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          includeSystemManaged: arg_includeSystemManaged,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListJobsResponse(response as api.ListJobsResponse);
    });
  });

  unittest.group('resource-JobsReportsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeReportingApi(mock).jobs.reports;
      final arg_jobId = 'foo';
      final arg_reportId = 'foo';
      final arg_onBehalfOfContentOwner = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1/jobs/'),
        );
        pathOffset += 8;
        index = path.indexOf('/reports/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_jobId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('/reports/'),
        );
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_reportId'),
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
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_jobId, arg_reportId,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          $fields: arg_$fields);
      checkReport(response as api.Report);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeReportingApi(mock).jobs.reports;
      final arg_jobId = 'foo';
      final arg_createdAfter = 'foo';
      final arg_onBehalfOfContentOwner = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_startTimeAtOrAfter = 'foo';
      final arg_startTimeBefore = 'foo';
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
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('v1/jobs/'),
        );
        pathOffset += 8;
        index = path.indexOf('/reports', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_jobId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 8),
          unittest.equals('/reports'),
        );
        pathOffset += 8;

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
          queryMap['createdAfter']!.first,
          unittest.equals(arg_createdAfter),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
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
          queryMap['startTimeAtOrAfter']!.first,
          unittest.equals(arg_startTimeAtOrAfter),
        );
        unittest.expect(
          queryMap['startTimeBefore']!.first,
          unittest.equals(arg_startTimeBefore),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListReportsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_jobId,
          createdAfter: arg_createdAfter,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          startTimeAtOrAfter: arg_startTimeAtOrAfter,
          startTimeBefore: arg_startTimeBefore,
          $fields: arg_$fields);
      checkListReportsResponse(response as api.ListReportsResponse);
    });
  });

  unittest.group('resource-MediaResource', () {
    unittest.test('method--download', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.YouTubeReportingApi(mock).media;
      final arg_resourceName = 'foo';
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
          path.substring(pathOffset, pathOffset + 9),
          unittest.equals('v1/media/'),
        );
        pathOffset += 9;
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
        final resp = convert.json.encode(buildGdataMedia());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.download(arg_resourceName, $fields: arg_$fields);
      checkGdataMedia(response as api.GdataMedia);
    });
  });

  unittest.group('resource-ReportTypesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.YouTubeReportingApi(mock).reportTypes;
      final arg_includeSystemManaged = true;
      final arg_onBehalfOfContentOwner = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1/reportTypes'),
        );
        pathOffset += 14;

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
          queryMap['includeSystemManaged']!.first,
          unittest.equals('$arg_includeSystemManaged'),
        );
        unittest.expect(
          queryMap['onBehalfOfContentOwner']!.first,
          unittest.equals(arg_onBehalfOfContentOwner),
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
        final resp = convert.json.encode(buildListReportTypesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(
          includeSystemManaged: arg_includeSystemManaged,
          onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListReportTypesResponse(response as api.ListReportTypesResponse);
    });
  });
}
