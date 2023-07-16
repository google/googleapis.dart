// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_library_directive
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/firebaseappdistribution/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

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

core.List<api.GdataCompositeMedia> buildUnnamed0() => [
      buildGdataCompositeMedia(),
      buildGdataCompositeMedia(),
    ];

void checkUnnamed0(core.List<api.GdataCompositeMedia> o) {
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
    o.compositeMedia = buildUnnamed0();
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
    checkUnnamed0(o.compositeMedia!);
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

core.int buildCounterGoogleFirebaseAppdistroV1AabInfo = 0;
api.GoogleFirebaseAppdistroV1AabInfo buildGoogleFirebaseAppdistroV1AabInfo() {
  final o = api.GoogleFirebaseAppdistroV1AabInfo();
  buildCounterGoogleFirebaseAppdistroV1AabInfo++;
  if (buildCounterGoogleFirebaseAppdistroV1AabInfo < 3) {
    o.integrationState = 'foo';
    o.name = 'foo';
    o.testCertificate = buildGoogleFirebaseAppdistroV1TestCertificate();
  }
  buildCounterGoogleFirebaseAppdistroV1AabInfo--;
  return o;
}

void checkGoogleFirebaseAppdistroV1AabInfo(
    api.GoogleFirebaseAppdistroV1AabInfo o) {
  buildCounterGoogleFirebaseAppdistroV1AabInfo++;
  if (buildCounterGoogleFirebaseAppdistroV1AabInfo < 3) {
    unittest.expect(
      o.integrationState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleFirebaseAppdistroV1TestCertificate(o.testCertificate!);
  }
  buildCounterGoogleFirebaseAppdistroV1AabInfo--;
}

core.List<core.String> buildUnnamed1() => [
      'foo',
      'foo',
    ];

void checkUnnamed1(core.List<core.String> o) {
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

core.int buildCounterGoogleFirebaseAppdistroV1BatchAddTestersRequest = 0;
api.GoogleFirebaseAppdistroV1BatchAddTestersRequest
    buildGoogleFirebaseAppdistroV1BatchAddTestersRequest() {
  final o = api.GoogleFirebaseAppdistroV1BatchAddTestersRequest();
  buildCounterGoogleFirebaseAppdistroV1BatchAddTestersRequest++;
  if (buildCounterGoogleFirebaseAppdistroV1BatchAddTestersRequest < 3) {
    o.emails = buildUnnamed1();
  }
  buildCounterGoogleFirebaseAppdistroV1BatchAddTestersRequest--;
  return o;
}

void checkGoogleFirebaseAppdistroV1BatchAddTestersRequest(
    api.GoogleFirebaseAppdistroV1BatchAddTestersRequest o) {
  buildCounterGoogleFirebaseAppdistroV1BatchAddTestersRequest++;
  if (buildCounterGoogleFirebaseAppdistroV1BatchAddTestersRequest < 3) {
    checkUnnamed1(o.emails!);
  }
  buildCounterGoogleFirebaseAppdistroV1BatchAddTestersRequest--;
}

core.List<api.GoogleFirebaseAppdistroV1Tester> buildUnnamed2() => [
      buildGoogleFirebaseAppdistroV1Tester(),
      buildGoogleFirebaseAppdistroV1Tester(),
    ];

void checkUnnamed2(core.List<api.GoogleFirebaseAppdistroV1Tester> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppdistroV1Tester(o[0]);
  checkGoogleFirebaseAppdistroV1Tester(o[1]);
}

core.int buildCounterGoogleFirebaseAppdistroV1BatchAddTestersResponse = 0;
api.GoogleFirebaseAppdistroV1BatchAddTestersResponse
    buildGoogleFirebaseAppdistroV1BatchAddTestersResponse() {
  final o = api.GoogleFirebaseAppdistroV1BatchAddTestersResponse();
  buildCounterGoogleFirebaseAppdistroV1BatchAddTestersResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1BatchAddTestersResponse < 3) {
    o.testers = buildUnnamed2();
  }
  buildCounterGoogleFirebaseAppdistroV1BatchAddTestersResponse--;
  return o;
}

void checkGoogleFirebaseAppdistroV1BatchAddTestersResponse(
    api.GoogleFirebaseAppdistroV1BatchAddTestersResponse o) {
  buildCounterGoogleFirebaseAppdistroV1BatchAddTestersResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1BatchAddTestersResponse < 3) {
    checkUnnamed2(o.testers!);
  }
  buildCounterGoogleFirebaseAppdistroV1BatchAddTestersResponse--;
}

core.List<core.String> buildUnnamed3() => [
      'foo',
      'foo',
    ];

void checkUnnamed3(core.List<core.String> o) {
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

core.int buildCounterGoogleFirebaseAppdistroV1BatchDeleteReleasesRequest = 0;
api.GoogleFirebaseAppdistroV1BatchDeleteReleasesRequest
    buildGoogleFirebaseAppdistroV1BatchDeleteReleasesRequest() {
  final o = api.GoogleFirebaseAppdistroV1BatchDeleteReleasesRequest();
  buildCounterGoogleFirebaseAppdistroV1BatchDeleteReleasesRequest++;
  if (buildCounterGoogleFirebaseAppdistroV1BatchDeleteReleasesRequest < 3) {
    o.names = buildUnnamed3();
  }
  buildCounterGoogleFirebaseAppdistroV1BatchDeleteReleasesRequest--;
  return o;
}

void checkGoogleFirebaseAppdistroV1BatchDeleteReleasesRequest(
    api.GoogleFirebaseAppdistroV1BatchDeleteReleasesRequest o) {
  buildCounterGoogleFirebaseAppdistroV1BatchDeleteReleasesRequest++;
  if (buildCounterGoogleFirebaseAppdistroV1BatchDeleteReleasesRequest < 3) {
    checkUnnamed3(o.names!);
  }
  buildCounterGoogleFirebaseAppdistroV1BatchDeleteReleasesRequest--;
}

core.List<core.String> buildUnnamed4() => [
      'foo',
      'foo',
    ];

void checkUnnamed4(core.List<core.String> o) {
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

core.int buildCounterGoogleFirebaseAppdistroV1BatchJoinGroupRequest = 0;
api.GoogleFirebaseAppdistroV1BatchJoinGroupRequest
    buildGoogleFirebaseAppdistroV1BatchJoinGroupRequest() {
  final o = api.GoogleFirebaseAppdistroV1BatchJoinGroupRequest();
  buildCounterGoogleFirebaseAppdistroV1BatchJoinGroupRequest++;
  if (buildCounterGoogleFirebaseAppdistroV1BatchJoinGroupRequest < 3) {
    o.createMissingTesters = true;
    o.emails = buildUnnamed4();
  }
  buildCounterGoogleFirebaseAppdistroV1BatchJoinGroupRequest--;
  return o;
}

void checkGoogleFirebaseAppdistroV1BatchJoinGroupRequest(
    api.GoogleFirebaseAppdistroV1BatchJoinGroupRequest o) {
  buildCounterGoogleFirebaseAppdistroV1BatchJoinGroupRequest++;
  if (buildCounterGoogleFirebaseAppdistroV1BatchJoinGroupRequest < 3) {
    unittest.expect(o.createMissingTesters!, unittest.isTrue);
    checkUnnamed4(o.emails!);
  }
  buildCounterGoogleFirebaseAppdistroV1BatchJoinGroupRequest--;
}

core.List<core.String> buildUnnamed5() => [
      'foo',
      'foo',
    ];

void checkUnnamed5(core.List<core.String> o) {
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

core.int buildCounterGoogleFirebaseAppdistroV1BatchLeaveGroupRequest = 0;
api.GoogleFirebaseAppdistroV1BatchLeaveGroupRequest
    buildGoogleFirebaseAppdistroV1BatchLeaveGroupRequest() {
  final o = api.GoogleFirebaseAppdistroV1BatchLeaveGroupRequest();
  buildCounterGoogleFirebaseAppdistroV1BatchLeaveGroupRequest++;
  if (buildCounterGoogleFirebaseAppdistroV1BatchLeaveGroupRequest < 3) {
    o.emails = buildUnnamed5();
  }
  buildCounterGoogleFirebaseAppdistroV1BatchLeaveGroupRequest--;
  return o;
}

void checkGoogleFirebaseAppdistroV1BatchLeaveGroupRequest(
    api.GoogleFirebaseAppdistroV1BatchLeaveGroupRequest o) {
  buildCounterGoogleFirebaseAppdistroV1BatchLeaveGroupRequest++;
  if (buildCounterGoogleFirebaseAppdistroV1BatchLeaveGroupRequest < 3) {
    checkUnnamed5(o.emails!);
  }
  buildCounterGoogleFirebaseAppdistroV1BatchLeaveGroupRequest--;
}

core.List<core.String> buildUnnamed6() => [
      'foo',
      'foo',
    ];

void checkUnnamed6(core.List<core.String> o) {
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

core.int buildCounterGoogleFirebaseAppdistroV1BatchRemoveTestersRequest = 0;
api.GoogleFirebaseAppdistroV1BatchRemoveTestersRequest
    buildGoogleFirebaseAppdistroV1BatchRemoveTestersRequest() {
  final o = api.GoogleFirebaseAppdistroV1BatchRemoveTestersRequest();
  buildCounterGoogleFirebaseAppdistroV1BatchRemoveTestersRequest++;
  if (buildCounterGoogleFirebaseAppdistroV1BatchRemoveTestersRequest < 3) {
    o.emails = buildUnnamed6();
  }
  buildCounterGoogleFirebaseAppdistroV1BatchRemoveTestersRequest--;
  return o;
}

void checkGoogleFirebaseAppdistroV1BatchRemoveTestersRequest(
    api.GoogleFirebaseAppdistroV1BatchRemoveTestersRequest o) {
  buildCounterGoogleFirebaseAppdistroV1BatchRemoveTestersRequest++;
  if (buildCounterGoogleFirebaseAppdistroV1BatchRemoveTestersRequest < 3) {
    checkUnnamed6(o.emails!);
  }
  buildCounterGoogleFirebaseAppdistroV1BatchRemoveTestersRequest--;
}

core.List<core.String> buildUnnamed7() => [
      'foo',
      'foo',
    ];

void checkUnnamed7(core.List<core.String> o) {
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

core.int buildCounterGoogleFirebaseAppdistroV1BatchRemoveTestersResponse = 0;
api.GoogleFirebaseAppdistroV1BatchRemoveTestersResponse
    buildGoogleFirebaseAppdistroV1BatchRemoveTestersResponse() {
  final o = api.GoogleFirebaseAppdistroV1BatchRemoveTestersResponse();
  buildCounterGoogleFirebaseAppdistroV1BatchRemoveTestersResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1BatchRemoveTestersResponse < 3) {
    o.emails = buildUnnamed7();
  }
  buildCounterGoogleFirebaseAppdistroV1BatchRemoveTestersResponse--;
  return o;
}

void checkGoogleFirebaseAppdistroV1BatchRemoveTestersResponse(
    api.GoogleFirebaseAppdistroV1BatchRemoveTestersResponse o) {
  buildCounterGoogleFirebaseAppdistroV1BatchRemoveTestersResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1BatchRemoveTestersResponse < 3) {
    checkUnnamed7(o.emails!);
  }
  buildCounterGoogleFirebaseAppdistroV1BatchRemoveTestersResponse--;
}

core.List<core.String> buildUnnamed8() => [
      'foo',
      'foo',
    ];

void checkUnnamed8(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed9() => [
      'foo',
      'foo',
    ];

void checkUnnamed9(core.List<core.String> o) {
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

core.int buildCounterGoogleFirebaseAppdistroV1DistributeReleaseRequest = 0;
api.GoogleFirebaseAppdistroV1DistributeReleaseRequest
    buildGoogleFirebaseAppdistroV1DistributeReleaseRequest() {
  final o = api.GoogleFirebaseAppdistroV1DistributeReleaseRequest();
  buildCounterGoogleFirebaseAppdistroV1DistributeReleaseRequest++;
  if (buildCounterGoogleFirebaseAppdistroV1DistributeReleaseRequest < 3) {
    o.groupAliases = buildUnnamed8();
    o.testerEmails = buildUnnamed9();
  }
  buildCounterGoogleFirebaseAppdistroV1DistributeReleaseRequest--;
  return o;
}

void checkGoogleFirebaseAppdistroV1DistributeReleaseRequest(
    api.GoogleFirebaseAppdistroV1DistributeReleaseRequest o) {
  buildCounterGoogleFirebaseAppdistroV1DistributeReleaseRequest++;
  if (buildCounterGoogleFirebaseAppdistroV1DistributeReleaseRequest < 3) {
    checkUnnamed8(o.groupAliases!);
    checkUnnamed9(o.testerEmails!);
  }
  buildCounterGoogleFirebaseAppdistroV1DistributeReleaseRequest--;
}

core.int buildCounterGoogleFirebaseAppdistroV1DistributeReleaseResponse = 0;
api.GoogleFirebaseAppdistroV1DistributeReleaseResponse
    buildGoogleFirebaseAppdistroV1DistributeReleaseResponse() {
  final o = api.GoogleFirebaseAppdistroV1DistributeReleaseResponse();
  buildCounterGoogleFirebaseAppdistroV1DistributeReleaseResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1DistributeReleaseResponse < 3) {}
  buildCounterGoogleFirebaseAppdistroV1DistributeReleaseResponse--;
  return o;
}

void checkGoogleFirebaseAppdistroV1DistributeReleaseResponse(
    api.GoogleFirebaseAppdistroV1DistributeReleaseResponse o) {
  buildCounterGoogleFirebaseAppdistroV1DistributeReleaseResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1DistributeReleaseResponse < 3) {}
  buildCounterGoogleFirebaseAppdistroV1DistributeReleaseResponse--;
}

core.int buildCounterGoogleFirebaseAppdistroV1FeedbackReport = 0;
api.GoogleFirebaseAppdistroV1FeedbackReport
    buildGoogleFirebaseAppdistroV1FeedbackReport() {
  final o = api.GoogleFirebaseAppdistroV1FeedbackReport();
  buildCounterGoogleFirebaseAppdistroV1FeedbackReport++;
  if (buildCounterGoogleFirebaseAppdistroV1FeedbackReport < 3) {
    o.createTime = 'foo';
    o.firebaseConsoleUri = 'foo';
    o.name = 'foo';
    o.screenshotUri = 'foo';
    o.tester = 'foo';
    o.text = 'foo';
  }
  buildCounterGoogleFirebaseAppdistroV1FeedbackReport--;
  return o;
}

void checkGoogleFirebaseAppdistroV1FeedbackReport(
    api.GoogleFirebaseAppdistroV1FeedbackReport o) {
  buildCounterGoogleFirebaseAppdistroV1FeedbackReport++;
  if (buildCounterGoogleFirebaseAppdistroV1FeedbackReport < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firebaseConsoleUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.screenshotUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tester!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppdistroV1FeedbackReport--;
}

core.int buildCounterGoogleFirebaseAppdistroV1Group = 0;
api.GoogleFirebaseAppdistroV1Group buildGoogleFirebaseAppdistroV1Group() {
  final o = api.GoogleFirebaseAppdistroV1Group();
  buildCounterGoogleFirebaseAppdistroV1Group++;
  if (buildCounterGoogleFirebaseAppdistroV1Group < 3) {
    o.displayName = 'foo';
    o.inviteLinkCount = 42;
    o.name = 'foo';
    o.releaseCount = 42;
    o.testerCount = 42;
  }
  buildCounterGoogleFirebaseAppdistroV1Group--;
  return o;
}

void checkGoogleFirebaseAppdistroV1Group(api.GoogleFirebaseAppdistroV1Group o) {
  buildCounterGoogleFirebaseAppdistroV1Group++;
  if (buildCounterGoogleFirebaseAppdistroV1Group < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inviteLinkCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.releaseCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.testerCount!,
      unittest.equals(42),
    );
  }
  buildCounterGoogleFirebaseAppdistroV1Group--;
}

core.List<api.GoogleFirebaseAppdistroV1FeedbackReport> buildUnnamed10() => [
      buildGoogleFirebaseAppdistroV1FeedbackReport(),
      buildGoogleFirebaseAppdistroV1FeedbackReport(),
    ];

void checkUnnamed10(core.List<api.GoogleFirebaseAppdistroV1FeedbackReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppdistroV1FeedbackReport(o[0]);
  checkGoogleFirebaseAppdistroV1FeedbackReport(o[1]);
}

core.int buildCounterGoogleFirebaseAppdistroV1ListFeedbackReportsResponse = 0;
api.GoogleFirebaseAppdistroV1ListFeedbackReportsResponse
    buildGoogleFirebaseAppdistroV1ListFeedbackReportsResponse() {
  final o = api.GoogleFirebaseAppdistroV1ListFeedbackReportsResponse();
  buildCounterGoogleFirebaseAppdistroV1ListFeedbackReportsResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1ListFeedbackReportsResponse < 3) {
    o.feedbackReports = buildUnnamed10();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleFirebaseAppdistroV1ListFeedbackReportsResponse--;
  return o;
}

void checkGoogleFirebaseAppdistroV1ListFeedbackReportsResponse(
    api.GoogleFirebaseAppdistroV1ListFeedbackReportsResponse o) {
  buildCounterGoogleFirebaseAppdistroV1ListFeedbackReportsResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1ListFeedbackReportsResponse < 3) {
    checkUnnamed10(o.feedbackReports!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppdistroV1ListFeedbackReportsResponse--;
}

core.List<api.GoogleFirebaseAppdistroV1Group> buildUnnamed11() => [
      buildGoogleFirebaseAppdistroV1Group(),
      buildGoogleFirebaseAppdistroV1Group(),
    ];

void checkUnnamed11(core.List<api.GoogleFirebaseAppdistroV1Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppdistroV1Group(o[0]);
  checkGoogleFirebaseAppdistroV1Group(o[1]);
}

core.int buildCounterGoogleFirebaseAppdistroV1ListGroupsResponse = 0;
api.GoogleFirebaseAppdistroV1ListGroupsResponse
    buildGoogleFirebaseAppdistroV1ListGroupsResponse() {
  final o = api.GoogleFirebaseAppdistroV1ListGroupsResponse();
  buildCounterGoogleFirebaseAppdistroV1ListGroupsResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1ListGroupsResponse < 3) {
    o.groups = buildUnnamed11();
    o.nextPageToken = 'foo';
  }
  buildCounterGoogleFirebaseAppdistroV1ListGroupsResponse--;
  return o;
}

void checkGoogleFirebaseAppdistroV1ListGroupsResponse(
    api.GoogleFirebaseAppdistroV1ListGroupsResponse o) {
  buildCounterGoogleFirebaseAppdistroV1ListGroupsResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1ListGroupsResponse < 3) {
    checkUnnamed11(o.groups!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppdistroV1ListGroupsResponse--;
}

core.List<api.GoogleFirebaseAppdistroV1Release> buildUnnamed12() => [
      buildGoogleFirebaseAppdistroV1Release(),
      buildGoogleFirebaseAppdistroV1Release(),
    ];

void checkUnnamed12(core.List<api.GoogleFirebaseAppdistroV1Release> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppdistroV1Release(o[0]);
  checkGoogleFirebaseAppdistroV1Release(o[1]);
}

core.int buildCounterGoogleFirebaseAppdistroV1ListReleasesResponse = 0;
api.GoogleFirebaseAppdistroV1ListReleasesResponse
    buildGoogleFirebaseAppdistroV1ListReleasesResponse() {
  final o = api.GoogleFirebaseAppdistroV1ListReleasesResponse();
  buildCounterGoogleFirebaseAppdistroV1ListReleasesResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1ListReleasesResponse < 3) {
    o.nextPageToken = 'foo';
    o.releases = buildUnnamed12();
  }
  buildCounterGoogleFirebaseAppdistroV1ListReleasesResponse--;
  return o;
}

void checkGoogleFirebaseAppdistroV1ListReleasesResponse(
    api.GoogleFirebaseAppdistroV1ListReleasesResponse o) {
  buildCounterGoogleFirebaseAppdistroV1ListReleasesResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1ListReleasesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed12(o.releases!);
  }
  buildCounterGoogleFirebaseAppdistroV1ListReleasesResponse--;
}

core.List<api.GoogleFirebaseAppdistroV1Tester> buildUnnamed13() => [
      buildGoogleFirebaseAppdistroV1Tester(),
      buildGoogleFirebaseAppdistroV1Tester(),
    ];

void checkUnnamed13(core.List<api.GoogleFirebaseAppdistroV1Tester> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleFirebaseAppdistroV1Tester(o[0]);
  checkGoogleFirebaseAppdistroV1Tester(o[1]);
}

core.int buildCounterGoogleFirebaseAppdistroV1ListTestersResponse = 0;
api.GoogleFirebaseAppdistroV1ListTestersResponse
    buildGoogleFirebaseAppdistroV1ListTestersResponse() {
  final o = api.GoogleFirebaseAppdistroV1ListTestersResponse();
  buildCounterGoogleFirebaseAppdistroV1ListTestersResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1ListTestersResponse < 3) {
    o.nextPageToken = 'foo';
    o.testers = buildUnnamed13();
  }
  buildCounterGoogleFirebaseAppdistroV1ListTestersResponse--;
  return o;
}

void checkGoogleFirebaseAppdistroV1ListTestersResponse(
    api.GoogleFirebaseAppdistroV1ListTestersResponse o) {
  buildCounterGoogleFirebaseAppdistroV1ListTestersResponse++;
  if (buildCounterGoogleFirebaseAppdistroV1ListTestersResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.testers!);
  }
  buildCounterGoogleFirebaseAppdistroV1ListTestersResponse--;
}

core.int buildCounterGoogleFirebaseAppdistroV1Release = 0;
api.GoogleFirebaseAppdistroV1Release buildGoogleFirebaseAppdistroV1Release() {
  final o = api.GoogleFirebaseAppdistroV1Release();
  buildCounterGoogleFirebaseAppdistroV1Release++;
  if (buildCounterGoogleFirebaseAppdistroV1Release < 3) {
    o.binaryDownloadUri = 'foo';
    o.buildVersion = 'foo';
    o.createTime = 'foo';
    o.displayVersion = 'foo';
    o.firebaseConsoleUri = 'foo';
    o.name = 'foo';
    o.releaseNotes = buildGoogleFirebaseAppdistroV1ReleaseNotes();
    o.testingUri = 'foo';
  }
  buildCounterGoogleFirebaseAppdistroV1Release--;
  return o;
}

void checkGoogleFirebaseAppdistroV1Release(
    api.GoogleFirebaseAppdistroV1Release o) {
  buildCounterGoogleFirebaseAppdistroV1Release++;
  if (buildCounterGoogleFirebaseAppdistroV1Release < 3) {
    unittest.expect(
      o.binaryDownloadUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.buildVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.firebaseConsoleUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkGoogleFirebaseAppdistroV1ReleaseNotes(o.releaseNotes!);
    unittest.expect(
      o.testingUri!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppdistroV1Release--;
}

core.int buildCounterGoogleFirebaseAppdistroV1ReleaseNotes = 0;
api.GoogleFirebaseAppdistroV1ReleaseNotes
    buildGoogleFirebaseAppdistroV1ReleaseNotes() {
  final o = api.GoogleFirebaseAppdistroV1ReleaseNotes();
  buildCounterGoogleFirebaseAppdistroV1ReleaseNotes++;
  if (buildCounterGoogleFirebaseAppdistroV1ReleaseNotes < 3) {
    o.text = 'foo';
  }
  buildCounterGoogleFirebaseAppdistroV1ReleaseNotes--;
  return o;
}

void checkGoogleFirebaseAppdistroV1ReleaseNotes(
    api.GoogleFirebaseAppdistroV1ReleaseNotes o) {
  buildCounterGoogleFirebaseAppdistroV1ReleaseNotes++;
  if (buildCounterGoogleFirebaseAppdistroV1ReleaseNotes < 3) {
    unittest.expect(
      o.text!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppdistroV1ReleaseNotes--;
}

core.int buildCounterGoogleFirebaseAppdistroV1TestCertificate = 0;
api.GoogleFirebaseAppdistroV1TestCertificate
    buildGoogleFirebaseAppdistroV1TestCertificate() {
  final o = api.GoogleFirebaseAppdistroV1TestCertificate();
  buildCounterGoogleFirebaseAppdistroV1TestCertificate++;
  if (buildCounterGoogleFirebaseAppdistroV1TestCertificate < 3) {
    o.hashMd5 = 'foo';
    o.hashSha1 = 'foo';
    o.hashSha256 = 'foo';
  }
  buildCounterGoogleFirebaseAppdistroV1TestCertificate--;
  return o;
}

void checkGoogleFirebaseAppdistroV1TestCertificate(
    api.GoogleFirebaseAppdistroV1TestCertificate o) {
  buildCounterGoogleFirebaseAppdistroV1TestCertificate++;
  if (buildCounterGoogleFirebaseAppdistroV1TestCertificate < 3) {
    unittest.expect(
      o.hashMd5!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hashSha1!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hashSha256!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppdistroV1TestCertificate--;
}

core.List<core.String> buildUnnamed14() => [
      'foo',
      'foo',
    ];

void checkUnnamed14(core.List<core.String> o) {
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

core.int buildCounterGoogleFirebaseAppdistroV1Tester = 0;
api.GoogleFirebaseAppdistroV1Tester buildGoogleFirebaseAppdistroV1Tester() {
  final o = api.GoogleFirebaseAppdistroV1Tester();
  buildCounterGoogleFirebaseAppdistroV1Tester++;
  if (buildCounterGoogleFirebaseAppdistroV1Tester < 3) {
    o.displayName = 'foo';
    o.groups = buildUnnamed14();
    o.lastActivityTime = 'foo';
    o.name = 'foo';
  }
  buildCounterGoogleFirebaseAppdistroV1Tester--;
  return o;
}

void checkGoogleFirebaseAppdistroV1Tester(
    api.GoogleFirebaseAppdistroV1Tester o) {
  buildCounterGoogleFirebaseAppdistroV1Tester++;
  if (buildCounterGoogleFirebaseAppdistroV1Tester < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed14(o.groups!);
    unittest.expect(
      o.lastActivityTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleFirebaseAppdistroV1Tester--;
}

core.int buildCounterGoogleFirebaseAppdistroV1UploadReleaseRequest = 0;
api.GoogleFirebaseAppdistroV1UploadReleaseRequest
    buildGoogleFirebaseAppdistroV1UploadReleaseRequest() {
  final o = api.GoogleFirebaseAppdistroV1UploadReleaseRequest();
  buildCounterGoogleFirebaseAppdistroV1UploadReleaseRequest++;
  if (buildCounterGoogleFirebaseAppdistroV1UploadReleaseRequest < 3) {
    o.blob = buildGdataMedia();
  }
  buildCounterGoogleFirebaseAppdistroV1UploadReleaseRequest--;
  return o;
}

void checkGoogleFirebaseAppdistroV1UploadReleaseRequest(
    api.GoogleFirebaseAppdistroV1UploadReleaseRequest o) {
  buildCounterGoogleFirebaseAppdistroV1UploadReleaseRequest++;
  if (buildCounterGoogleFirebaseAppdistroV1UploadReleaseRequest < 3) {
    checkGdataMedia(o.blob!);
  }
  buildCounterGoogleFirebaseAppdistroV1UploadReleaseRequest--;
}

core.int buildCounterGoogleLongrunningCancelOperationRequest = 0;
api.GoogleLongrunningCancelOperationRequest
    buildGoogleLongrunningCancelOperationRequest() {
  final o = api.GoogleLongrunningCancelOperationRequest();
  buildCounterGoogleLongrunningCancelOperationRequest++;
  if (buildCounterGoogleLongrunningCancelOperationRequest < 3) {}
  buildCounterGoogleLongrunningCancelOperationRequest--;
  return o;
}

void checkGoogleLongrunningCancelOperationRequest(
    api.GoogleLongrunningCancelOperationRequest o) {
  buildCounterGoogleLongrunningCancelOperationRequest++;
  if (buildCounterGoogleLongrunningCancelOperationRequest < 3) {}
  buildCounterGoogleLongrunningCancelOperationRequest--;
}

core.List<api.GoogleLongrunningOperation> buildUnnamed15() => [
      buildGoogleLongrunningOperation(),
      buildGoogleLongrunningOperation(),
    ];

void checkUnnamed15(core.List<api.GoogleLongrunningOperation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGoogleLongrunningOperation(o[0]);
  checkGoogleLongrunningOperation(o[1]);
}

core.int buildCounterGoogleLongrunningListOperationsResponse = 0;
api.GoogleLongrunningListOperationsResponse
    buildGoogleLongrunningListOperationsResponse() {
  final o = api.GoogleLongrunningListOperationsResponse();
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed15();
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
  return o;
}

void checkGoogleLongrunningListOperationsResponse(
    api.GoogleLongrunningListOperationsResponse o) {
  buildCounterGoogleLongrunningListOperationsResponse++;
  if (buildCounterGoogleLongrunningListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed15(o.operations!);
  }
  buildCounterGoogleLongrunningListOperationsResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed16() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed16(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o['x']!) as core.Map;
  unittest.expect(casted1, unittest.hasLength(3));
  unittest.expect(
    casted1['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted1['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted1['string'],
    unittest.equals('foo'),
  );
  var casted2 = (o['y']!) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(
    casted2['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted2['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted2['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object?> buildUnnamed17() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed17(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o['x']!) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(
    casted3['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted3['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted3['string'],
    unittest.equals('foo'),
  );
  var casted4 = (o['y']!) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(
    casted4['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted4['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted4['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterGoogleLongrunningOperation = 0;
api.GoogleLongrunningOperation buildGoogleLongrunningOperation() {
  final o = api.GoogleLongrunningOperation();
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    o.done = true;
    o.error = buildGoogleRpcStatus();
    o.metadata = buildUnnamed16();
    o.name = 'foo';
    o.response = buildUnnamed17();
  }
  buildCounterGoogleLongrunningOperation--;
  return o;
}

void checkGoogleLongrunningOperation(api.GoogleLongrunningOperation o) {
  buildCounterGoogleLongrunningOperation++;
  if (buildCounterGoogleLongrunningOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkGoogleRpcStatus(o.error!);
    checkUnnamed16(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.response!);
  }
  buildCounterGoogleLongrunningOperation--;
}

core.int buildCounterGoogleLongrunningWaitOperationRequest = 0;
api.GoogleLongrunningWaitOperationRequest
    buildGoogleLongrunningWaitOperationRequest() {
  final o = api.GoogleLongrunningWaitOperationRequest();
  buildCounterGoogleLongrunningWaitOperationRequest++;
  if (buildCounterGoogleLongrunningWaitOperationRequest < 3) {
    o.timeout = 'foo';
  }
  buildCounterGoogleLongrunningWaitOperationRequest--;
  return o;
}

void checkGoogleLongrunningWaitOperationRequest(
    api.GoogleLongrunningWaitOperationRequest o) {
  buildCounterGoogleLongrunningWaitOperationRequest++;
  if (buildCounterGoogleLongrunningWaitOperationRequest < 3) {
    unittest.expect(
      o.timeout!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleLongrunningWaitOperationRequest--;
}

core.int buildCounterGoogleProtobufEmpty = 0;
api.GoogleProtobufEmpty buildGoogleProtobufEmpty() {
  final o = api.GoogleProtobufEmpty();
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
  return o;
}

void checkGoogleProtobufEmpty(api.GoogleProtobufEmpty o) {
  buildCounterGoogleProtobufEmpty++;
  if (buildCounterGoogleProtobufEmpty < 3) {}
  buildCounterGoogleProtobufEmpty--;
}

core.Map<core.String, core.Object?> buildUnnamed18() => {
      'x': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
      'y': {
        'list': [1, 2, 3],
        'bool': true,
        'string': 'foo'
      },
    };

void checkUnnamed18(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o['x']!) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(
    casted5['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted5['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted5['string'],
    unittest.equals('foo'),
  );
  var casted6 = (o['y']!) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(
    casted6['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted6['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted6['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed19() => [
      buildUnnamed18(),
      buildUnnamed18(),
    ];

void checkUnnamed19(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed18(o[0]);
  checkUnnamed18(o[1]);
}

core.int buildCounterGoogleRpcStatus = 0;
api.GoogleRpcStatus buildGoogleRpcStatus() {
  final o = api.GoogleRpcStatus();
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed19();
    o.message = 'foo';
  }
  buildCounterGoogleRpcStatus--;
  return o;
}

void checkGoogleRpcStatus(api.GoogleRpcStatus o) {
  buildCounterGoogleRpcStatus++;
  if (buildCounterGoogleRpcStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed19(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterGoogleRpcStatus--;
}

void main() {
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

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1AabInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1AabInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1AabInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1AabInfo(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1BatchAddTestersRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1BatchAddTestersRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1BatchAddTestersRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1BatchAddTestersRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1BatchAddTestersResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1BatchAddTestersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1BatchAddTestersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1BatchAddTestersResponse(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppdistroV1BatchDeleteReleasesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1BatchDeleteReleasesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppdistroV1BatchDeleteReleasesRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1BatchDeleteReleasesRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1BatchJoinGroupRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1BatchJoinGroupRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1BatchJoinGroupRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1BatchJoinGroupRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1BatchLeaveGroupRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1BatchLeaveGroupRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1BatchLeaveGroupRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1BatchLeaveGroupRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppdistroV1BatchRemoveTestersRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1BatchRemoveTestersRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppdistroV1BatchRemoveTestersRequest.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1BatchRemoveTestersRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppdistroV1BatchRemoveTestersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1BatchRemoveTestersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppdistroV1BatchRemoveTestersResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1BatchRemoveTestersResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1DistributeReleaseRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1DistributeReleaseRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1DistributeReleaseRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1DistributeReleaseRequest(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppdistroV1DistributeReleaseResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1DistributeReleaseResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppdistroV1DistributeReleaseResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1DistributeReleaseResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1FeedbackReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1FeedbackReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1FeedbackReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1FeedbackReport(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1Group', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1Group();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1Group.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1Group(od);
    });
  });

  unittest.group(
      'obj-schema-GoogleFirebaseAppdistroV1ListFeedbackReportsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1ListFeedbackReportsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GoogleFirebaseAppdistroV1ListFeedbackReportsResponse.fromJson(
              oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1ListFeedbackReportsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1ListGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1ListGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1ListGroupsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1ListGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1ListReleasesResponse',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1ListReleasesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1ListReleasesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1ListReleasesResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1ListTestersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1ListTestersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1ListTestersResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1ListTestersResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1Release', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1Release();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1Release.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1Release(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1ReleaseNotes', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1ReleaseNotes();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1ReleaseNotes.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1ReleaseNotes(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1TestCertificate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1TestCertificate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1TestCertificate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1TestCertificate(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1Tester', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1Tester();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1Tester.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1Tester(od);
    });
  });

  unittest.group('obj-schema-GoogleFirebaseAppdistroV1UploadReleaseRequest',
      () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleFirebaseAppdistroV1UploadReleaseRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleFirebaseAppdistroV1UploadReleaseRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleFirebaseAppdistroV1UploadReleaseRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningCancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningCancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningOperation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningOperation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningOperation(od);
    });
  });

  unittest.group('obj-schema-GoogleLongrunningWaitOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleLongrunningWaitOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleLongrunningWaitOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleLongrunningWaitOperationRequest(od);
    });
  });

  unittest.group('obj-schema-GoogleProtobufEmpty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleProtobufEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleProtobufEmpty.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleProtobufEmpty(od);
    });
  });

  unittest.group('obj-schema-GoogleRpcStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleRpcStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleRpcStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGoogleRpcStatus(od);
    });
  });

  unittest.group('resource-MediaResource', () {
    unittest.test('method--upload', () async {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).media;
      final arg_request = buildGoogleFirebaseAppdistroV1UploadReleaseRequest();
      final arg_app = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseAppdistroV1UploadReleaseRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppdistroV1UploadReleaseRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.upload(arg_request, arg_app, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ProjectsAppsResource', () {
    unittest.test('method--getAabInfo', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).projects.apps;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleFirebaseAppdistroV1AabInfo());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getAabInfo(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppdistroV1AabInfo(
          response as api.GoogleFirebaseAppdistroV1AabInfo);
    });
  });

  unittest.group('resource-ProjectsAppsReleasesResource', () {
    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).projects.apps.releases;
      final arg_request =
          buildGoogleFirebaseAppdistroV1BatchDeleteReleasesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseAppdistroV1BatchDeleteReleasesRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppdistroV1BatchDeleteReleasesRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchDelete(arg_request, arg_parent, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--distribute', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).projects.apps.releases;
      final arg_request =
          buildGoogleFirebaseAppdistroV1DistributeReleaseRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseAppdistroV1DistributeReleaseRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppdistroV1DistributeReleaseRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleFirebaseAppdistroV1DistributeReleaseResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.distribute(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppdistroV1DistributeReleaseResponse(
          response as api.GoogleFirebaseAppdistroV1DistributeReleaseResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).projects.apps.releases;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleFirebaseAppdistroV1Release());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppdistroV1Release(
          response as api.GoogleFirebaseAppdistroV1Release);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).projects.apps.releases;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleFirebaseAppdistroV1ListReleasesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleFirebaseAppdistroV1ListReleasesResponse(
          response as api.GoogleFirebaseAppdistroV1ListReleasesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).projects.apps.releases;
      final arg_request = buildGoogleFirebaseAppdistroV1Release();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseAppdistroV1Release.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppdistroV1Release(obj);

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
        final resp =
            convert.json.encode(buildGoogleFirebaseAppdistroV1Release());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleFirebaseAppdistroV1Release(
          response as api.GoogleFirebaseAppdistroV1Release);
    });
  });

  unittest.group('resource-ProjectsAppsReleasesFeedbackReportsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock)
          .projects
          .apps
          .releases
          .feedbackReports;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock)
          .projects
          .apps
          .releases
          .feedbackReports;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp =
            convert.json.encode(buildGoogleFirebaseAppdistroV1FeedbackReport());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppdistroV1FeedbackReport(
          response as api.GoogleFirebaseAppdistroV1FeedbackReport);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock)
          .projects
          .apps
          .releases
          .feedbackReports;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
        final resp = convert.json.encode(
            buildGoogleFirebaseAppdistroV1ListFeedbackReportsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleFirebaseAppdistroV1ListFeedbackReportsResponse(
          response as api.GoogleFirebaseAppdistroV1ListFeedbackReportsResponse);
    });
  });

  unittest.group('resource-ProjectsAppsReleasesOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock)
          .projects
          .apps
          .releases
          .operations;
      final arg_request = buildGoogleLongrunningCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleLongrunningCancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleLongrunningCancelOperationRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock)
          .projects
          .apps
          .releases
          .operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock)
          .projects
          .apps
          .releases
          .operations;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock)
          .projects
          .apps
          .releases
          .operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
        final resp =
            convert.json.encode(buildGoogleLongrunningListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleLongrunningListOperationsResponse(
          response as api.GoogleLongrunningListOperationsResponse);
    });

    unittest.test('method--wait', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock)
          .projects
          .apps
          .releases
          .operations;
      final arg_request = buildGoogleLongrunningWaitOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleLongrunningWaitOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleLongrunningWaitOperationRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleLongrunningOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.wait(arg_request, arg_name, $fields: arg_$fields);
      checkGoogleLongrunningOperation(
          response as api.GoogleLongrunningOperation);
    });
  });

  unittest.group('resource-ProjectsGroupsResource', () {
    unittest.test('method--batchJoin', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).projects.groups;
      final arg_request = buildGoogleFirebaseAppdistroV1BatchJoinGroupRequest();
      final arg_group = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseAppdistroV1BatchJoinGroupRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppdistroV1BatchJoinGroupRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchJoin(arg_request, arg_group, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--batchLeave', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).projects.groups;
      final arg_request =
          buildGoogleFirebaseAppdistroV1BatchLeaveGroupRequest();
      final arg_group = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseAppdistroV1BatchLeaveGroupRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppdistroV1BatchLeaveGroupRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchLeave(arg_request, arg_group, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).projects.groups;
      final arg_request = buildGoogleFirebaseAppdistroV1Group();
      final arg_parent = 'foo';
      final arg_groupId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseAppdistroV1Group.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppdistroV1Group(obj);

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
          queryMap['groupId']!.first,
          unittest.equals(arg_groupId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleFirebaseAppdistroV1Group());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          groupId: arg_groupId, $fields: arg_$fields);
      checkGoogleFirebaseAppdistroV1Group(
          response as api.GoogleFirebaseAppdistroV1Group);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).projects.groups;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleProtobufEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkGoogleProtobufEmpty(response as api.GoogleProtobufEmpty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).projects.groups;
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildGoogleFirebaseAppdistroV1Group());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGoogleFirebaseAppdistroV1Group(
          response as api.GoogleFirebaseAppdistroV1Group);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).projects.groups;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
        final resp = convert.json
            .encode(buildGoogleFirebaseAppdistroV1ListGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleFirebaseAppdistroV1ListGroupsResponse(
          response as api.GoogleFirebaseAppdistroV1ListGroupsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).projects.groups;
      final arg_request = buildGoogleFirebaseAppdistroV1Group();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseAppdistroV1Group.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppdistroV1Group(obj);

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
        final resp = convert.json.encode(buildGoogleFirebaseAppdistroV1Group());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleFirebaseAppdistroV1Group(
          response as api.GoogleFirebaseAppdistroV1Group);
    });
  });

  unittest.group('resource-ProjectsTestersResource', () {
    unittest.test('method--batchAdd', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).projects.testers;
      final arg_request =
          buildGoogleFirebaseAppdistroV1BatchAddTestersRequest();
      final arg_project = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseAppdistroV1BatchAddTestersRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppdistroV1BatchAddTestersRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleFirebaseAppdistroV1BatchAddTestersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchAdd(arg_request, arg_project, $fields: arg_$fields);
      checkGoogleFirebaseAppdistroV1BatchAddTestersResponse(
          response as api.GoogleFirebaseAppdistroV1BatchAddTestersResponse);
    });

    unittest.test('method--batchRemove', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).projects.testers;
      final arg_request =
          buildGoogleFirebaseAppdistroV1BatchRemoveTestersRequest();
      final arg_project = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.GoogleFirebaseAppdistroV1BatchRemoveTestersRequest.fromJson(
                json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppdistroV1BatchRemoveTestersRequest(obj);

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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json
            .encode(buildGoogleFirebaseAppdistroV1BatchRemoveTestersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchRemove(arg_request, arg_project, $fields: arg_$fields);
      checkGoogleFirebaseAppdistroV1BatchRemoveTestersResponse(
          response as api.GoogleFirebaseAppdistroV1BatchRemoveTestersResponse);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).projects.testers;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
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
        final resp = convert.json
            .encode(buildGoogleFirebaseAppdistroV1ListTestersResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkGoogleFirebaseAppdistroV1ListTestersResponse(
          response as api.GoogleFirebaseAppdistroV1ListTestersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.FirebaseAppDistributionApi(mock).projects.testers;
      final arg_request = buildGoogleFirebaseAppdistroV1Tester();
      final arg_name = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GoogleFirebaseAppdistroV1Tester.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGoogleFirebaseAppdistroV1Tester(obj);

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
        final resp =
            convert.json.encode(buildGoogleFirebaseAppdistroV1Tester());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkGoogleFirebaseAppdistroV1Tester(
          response as api.GoogleFirebaseAppdistroV1Tester);
    });
  });
}
