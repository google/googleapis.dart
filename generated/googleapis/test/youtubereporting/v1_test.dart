library googleapis.youtubereporting.v1.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis/youtubereporting/v1.dart' as api;

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

core.int buildCounterEmpty = 0;
buildEmpty() {
  var o = new api.Empty();
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
  return o;
}

checkEmpty(api.Empty o) {
  buildCounterEmpty++;
  if (buildCounterEmpty < 3) {}
  buildCounterEmpty--;
}

core.int buildCounterGdataBlobstore2Info = 0;
buildGdataBlobstore2Info() {
  var o = new api.GdataBlobstore2Info();
  buildCounterGdataBlobstore2Info++;
  if (buildCounterGdataBlobstore2Info < 3) {
    o.blobGeneration = "foo";
    o.blobId = "foo";
    o.downloadReadHandle = "foo";
    o.readToken = "foo";
    o.uploadMetadataContainer = "foo";
  }
  buildCounterGdataBlobstore2Info--;
  return o;
}

checkGdataBlobstore2Info(api.GdataBlobstore2Info o) {
  buildCounterGdataBlobstore2Info++;
  if (buildCounterGdataBlobstore2Info < 3) {
    unittest.expect(o.blobGeneration, unittest.equals('foo'));
    unittest.expect(o.blobId, unittest.equals('foo'));
    unittest.expect(o.downloadReadHandle, unittest.equals('foo'));
    unittest.expect(o.readToken, unittest.equals('foo'));
    unittest.expect(o.uploadMetadataContainer, unittest.equals('foo'));
  }
  buildCounterGdataBlobstore2Info--;
}

core.int buildCounterGdataCompositeMedia = 0;
buildGdataCompositeMedia() {
  var o = new api.GdataCompositeMedia();
  buildCounterGdataCompositeMedia++;
  if (buildCounterGdataCompositeMedia < 3) {
    o.blobRef = "foo";
    o.blobstore2Info = buildGdataBlobstore2Info();
    o.cosmoBinaryReference = "foo";
    o.crc32cHash = 42;
    o.inline = "foo";
    o.length = "foo";
    o.md5Hash = "foo";
    o.objectId = buildGdataObjectId();
    o.path = "foo";
    o.referenceType = "foo";
    o.sha1Hash = "foo";
  }
  buildCounterGdataCompositeMedia--;
  return o;
}

checkGdataCompositeMedia(api.GdataCompositeMedia o) {
  buildCounterGdataCompositeMedia++;
  if (buildCounterGdataCompositeMedia < 3) {
    unittest.expect(o.blobRef, unittest.equals('foo'));
    checkGdataBlobstore2Info(o.blobstore2Info);
    unittest.expect(o.cosmoBinaryReference, unittest.equals('foo'));
    unittest.expect(o.crc32cHash, unittest.equals(42));
    unittest.expect(o.inline, unittest.equals('foo'));
    unittest.expect(o.length, unittest.equals('foo'));
    unittest.expect(o.md5Hash, unittest.equals('foo'));
    checkGdataObjectId(o.objectId);
    unittest.expect(o.path, unittest.equals('foo'));
    unittest.expect(o.referenceType, unittest.equals('foo'));
    unittest.expect(o.sha1Hash, unittest.equals('foo'));
  }
  buildCounterGdataCompositeMedia--;
}

core.int buildCounterGdataContentTypeInfo = 0;
buildGdataContentTypeInfo() {
  var o = new api.GdataContentTypeInfo();
  buildCounterGdataContentTypeInfo++;
  if (buildCounterGdataContentTypeInfo < 3) {
    o.bestGuess = "foo";
    o.fromBytes = "foo";
    o.fromFileName = "foo";
    o.fromHeader = "foo";
    o.fromUrlPath = "foo";
  }
  buildCounterGdataContentTypeInfo--;
  return o;
}

checkGdataContentTypeInfo(api.GdataContentTypeInfo o) {
  buildCounterGdataContentTypeInfo++;
  if (buildCounterGdataContentTypeInfo < 3) {
    unittest.expect(o.bestGuess, unittest.equals('foo'));
    unittest.expect(o.fromBytes, unittest.equals('foo'));
    unittest.expect(o.fromFileName, unittest.equals('foo'));
    unittest.expect(o.fromHeader, unittest.equals('foo'));
    unittest.expect(o.fromUrlPath, unittest.equals('foo'));
  }
  buildCounterGdataContentTypeInfo--;
}

core.int buildCounterGdataDiffChecksumsResponse = 0;
buildGdataDiffChecksumsResponse() {
  var o = new api.GdataDiffChecksumsResponse();
  buildCounterGdataDiffChecksumsResponse++;
  if (buildCounterGdataDiffChecksumsResponse < 3) {
    o.checksumsLocation = buildGdataCompositeMedia();
    o.chunkSizeBytes = "foo";
    o.objectLocation = buildGdataCompositeMedia();
    o.objectSizeBytes = "foo";
    o.objectVersion = "foo";
  }
  buildCounterGdataDiffChecksumsResponse--;
  return o;
}

checkGdataDiffChecksumsResponse(api.GdataDiffChecksumsResponse o) {
  buildCounterGdataDiffChecksumsResponse++;
  if (buildCounterGdataDiffChecksumsResponse < 3) {
    checkGdataCompositeMedia(o.checksumsLocation);
    unittest.expect(o.chunkSizeBytes, unittest.equals('foo'));
    checkGdataCompositeMedia(o.objectLocation);
    unittest.expect(o.objectSizeBytes, unittest.equals('foo'));
    unittest.expect(o.objectVersion, unittest.equals('foo'));
  }
  buildCounterGdataDiffChecksumsResponse--;
}

core.int buildCounterGdataDiffDownloadResponse = 0;
buildGdataDiffDownloadResponse() {
  var o = new api.GdataDiffDownloadResponse();
  buildCounterGdataDiffDownloadResponse++;
  if (buildCounterGdataDiffDownloadResponse < 3) {
    o.objectLocation = buildGdataCompositeMedia();
  }
  buildCounterGdataDiffDownloadResponse--;
  return o;
}

checkGdataDiffDownloadResponse(api.GdataDiffDownloadResponse o) {
  buildCounterGdataDiffDownloadResponse++;
  if (buildCounterGdataDiffDownloadResponse < 3) {
    checkGdataCompositeMedia(o.objectLocation);
  }
  buildCounterGdataDiffDownloadResponse--;
}

core.int buildCounterGdataDiffUploadRequest = 0;
buildGdataDiffUploadRequest() {
  var o = new api.GdataDiffUploadRequest();
  buildCounterGdataDiffUploadRequest++;
  if (buildCounterGdataDiffUploadRequest < 3) {
    o.checksumsInfo = buildGdataCompositeMedia();
    o.objectInfo = buildGdataCompositeMedia();
    o.objectVersion = "foo";
  }
  buildCounterGdataDiffUploadRequest--;
  return o;
}

checkGdataDiffUploadRequest(api.GdataDiffUploadRequest o) {
  buildCounterGdataDiffUploadRequest++;
  if (buildCounterGdataDiffUploadRequest < 3) {
    checkGdataCompositeMedia(o.checksumsInfo);
    checkGdataCompositeMedia(o.objectInfo);
    unittest.expect(o.objectVersion, unittest.equals('foo'));
  }
  buildCounterGdataDiffUploadRequest--;
}

core.int buildCounterGdataDiffUploadResponse = 0;
buildGdataDiffUploadResponse() {
  var o = new api.GdataDiffUploadResponse();
  buildCounterGdataDiffUploadResponse++;
  if (buildCounterGdataDiffUploadResponse < 3) {
    o.objectVersion = "foo";
    o.originalObject = buildGdataCompositeMedia();
  }
  buildCounterGdataDiffUploadResponse--;
  return o;
}

checkGdataDiffUploadResponse(api.GdataDiffUploadResponse o) {
  buildCounterGdataDiffUploadResponse++;
  if (buildCounterGdataDiffUploadResponse < 3) {
    unittest.expect(o.objectVersion, unittest.equals('foo'));
    checkGdataCompositeMedia(o.originalObject);
  }
  buildCounterGdataDiffUploadResponse--;
}

core.int buildCounterGdataDiffVersionResponse = 0;
buildGdataDiffVersionResponse() {
  var o = new api.GdataDiffVersionResponse();
  buildCounterGdataDiffVersionResponse++;
  if (buildCounterGdataDiffVersionResponse < 3) {
    o.objectSizeBytes = "foo";
    o.objectVersion = "foo";
  }
  buildCounterGdataDiffVersionResponse--;
  return o;
}

checkGdataDiffVersionResponse(api.GdataDiffVersionResponse o) {
  buildCounterGdataDiffVersionResponse++;
  if (buildCounterGdataDiffVersionResponse < 3) {
    unittest.expect(o.objectSizeBytes, unittest.equals('foo'));
    unittest.expect(o.objectVersion, unittest.equals('foo'));
  }
  buildCounterGdataDiffVersionResponse--;
}

core.int buildCounterGdataDownloadParameters = 0;
buildGdataDownloadParameters() {
  var o = new api.GdataDownloadParameters();
  buildCounterGdataDownloadParameters++;
  if (buildCounterGdataDownloadParameters < 3) {
    o.allowGzipCompression = true;
    o.ignoreRange = true;
  }
  buildCounterGdataDownloadParameters--;
  return o;
}

checkGdataDownloadParameters(api.GdataDownloadParameters o) {
  buildCounterGdataDownloadParameters++;
  if (buildCounterGdataDownloadParameters < 3) {
    unittest.expect(o.allowGzipCompression, unittest.isTrue);
    unittest.expect(o.ignoreRange, unittest.isTrue);
  }
  buildCounterGdataDownloadParameters--;
}

buildUnnamed4261() {
  var o = new core.List<api.GdataCompositeMedia>();
  o.add(buildGdataCompositeMedia());
  o.add(buildGdataCompositeMedia());
  return o;
}

checkUnnamed4261(core.List<api.GdataCompositeMedia> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGdataCompositeMedia(o[0]);
  checkGdataCompositeMedia(o[1]);
}

core.int buildCounterGdataMedia = 0;
buildGdataMedia() {
  var o = new api.GdataMedia();
  buildCounterGdataMedia++;
  if (buildCounterGdataMedia < 3) {
    o.algorithm = "foo";
    o.bigstoreObjectRef = "foo";
    o.blobRef = "foo";
    o.blobstore2Info = buildGdataBlobstore2Info();
    o.compositeMedia = buildUnnamed4261();
    o.contentType = "foo";
    o.contentTypeInfo = buildGdataContentTypeInfo();
    o.cosmoBinaryReference = "foo";
    o.crc32cHash = 42;
    o.diffChecksumsResponse = buildGdataDiffChecksumsResponse();
    o.diffDownloadResponse = buildGdataDiffDownloadResponse();
    o.diffUploadRequest = buildGdataDiffUploadRequest();
    o.diffUploadResponse = buildGdataDiffUploadResponse();
    o.diffVersionResponse = buildGdataDiffVersionResponse();
    o.downloadParameters = buildGdataDownloadParameters();
    o.filename = "foo";
    o.hash = "foo";
    o.hashVerified = true;
    o.inline = "foo";
    o.isPotentialRetry = true;
    o.length = "foo";
    o.md5Hash = "foo";
    o.mediaId = "foo";
    o.objectId = buildGdataObjectId();
    o.path = "foo";
    o.referenceType = "foo";
    o.sha1Hash = "foo";
    o.sha256Hash = "foo";
    o.timestamp = "foo";
    o.token = "foo";
  }
  buildCounterGdataMedia--;
  return o;
}

checkGdataMedia(api.GdataMedia o) {
  buildCounterGdataMedia++;
  if (buildCounterGdataMedia < 3) {
    unittest.expect(o.algorithm, unittest.equals('foo'));
    unittest.expect(o.bigstoreObjectRef, unittest.equals('foo'));
    unittest.expect(o.blobRef, unittest.equals('foo'));
    checkGdataBlobstore2Info(o.blobstore2Info);
    checkUnnamed4261(o.compositeMedia);
    unittest.expect(o.contentType, unittest.equals('foo'));
    checkGdataContentTypeInfo(o.contentTypeInfo);
    unittest.expect(o.cosmoBinaryReference, unittest.equals('foo'));
    unittest.expect(o.crc32cHash, unittest.equals(42));
    checkGdataDiffChecksumsResponse(o.diffChecksumsResponse);
    checkGdataDiffDownloadResponse(o.diffDownloadResponse);
    checkGdataDiffUploadRequest(o.diffUploadRequest);
    checkGdataDiffUploadResponse(o.diffUploadResponse);
    checkGdataDiffVersionResponse(o.diffVersionResponse);
    checkGdataDownloadParameters(o.downloadParameters);
    unittest.expect(o.filename, unittest.equals('foo'));
    unittest.expect(o.hash, unittest.equals('foo'));
    unittest.expect(o.hashVerified, unittest.isTrue);
    unittest.expect(o.inline, unittest.equals('foo'));
    unittest.expect(o.isPotentialRetry, unittest.isTrue);
    unittest.expect(o.length, unittest.equals('foo'));
    unittest.expect(o.md5Hash, unittest.equals('foo'));
    unittest.expect(o.mediaId, unittest.equals('foo'));
    checkGdataObjectId(o.objectId);
    unittest.expect(o.path, unittest.equals('foo'));
    unittest.expect(o.referenceType, unittest.equals('foo'));
    unittest.expect(o.sha1Hash, unittest.equals('foo'));
    unittest.expect(o.sha256Hash, unittest.equals('foo'));
    unittest.expect(o.timestamp, unittest.equals('foo'));
    unittest.expect(o.token, unittest.equals('foo'));
  }
  buildCounterGdataMedia--;
}

core.int buildCounterGdataObjectId = 0;
buildGdataObjectId() {
  var o = new api.GdataObjectId();
  buildCounterGdataObjectId++;
  if (buildCounterGdataObjectId < 3) {
    o.bucketName = "foo";
    o.generation = "foo";
    o.objectName = "foo";
  }
  buildCounterGdataObjectId--;
  return o;
}

checkGdataObjectId(api.GdataObjectId o) {
  buildCounterGdataObjectId++;
  if (buildCounterGdataObjectId < 3) {
    unittest.expect(o.bucketName, unittest.equals('foo'));
    unittest.expect(o.generation, unittest.equals('foo'));
    unittest.expect(o.objectName, unittest.equals('foo'));
  }
  buildCounterGdataObjectId--;
}

core.int buildCounterJob = 0;
buildJob() {
  var o = new api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.createTime = "foo";
    o.expireTime = "foo";
    o.id = "foo";
    o.name = "foo";
    o.reportTypeId = "foo";
    o.systemManaged = true;
  }
  buildCounterJob--;
  return o;
}

checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.expireTime, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.reportTypeId, unittest.equals('foo'));
    unittest.expect(o.systemManaged, unittest.isTrue);
  }
  buildCounterJob--;
}

buildUnnamed4262() {
  var o = new core.List<api.Job>();
  o.add(buildJob());
  o.add(buildJob());
  return o;
}

checkUnnamed4262(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterListJobsResponse = 0;
buildListJobsResponse() {
  var o = new api.ListJobsResponse();
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    o.jobs = buildUnnamed4262();
    o.nextPageToken = "foo";
  }
  buildCounterListJobsResponse--;
  return o;
}

checkListJobsResponse(api.ListJobsResponse o) {
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    checkUnnamed4262(o.jobs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListJobsResponse--;
}

buildUnnamed4263() {
  var o = new core.List<api.ReportType>();
  o.add(buildReportType());
  o.add(buildReportType());
  return o;
}

checkUnnamed4263(core.List<api.ReportType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportType(o[0]);
  checkReportType(o[1]);
}

core.int buildCounterListReportTypesResponse = 0;
buildListReportTypesResponse() {
  var o = new api.ListReportTypesResponse();
  buildCounterListReportTypesResponse++;
  if (buildCounterListReportTypesResponse < 3) {
    o.nextPageToken = "foo";
    o.reportTypes = buildUnnamed4263();
  }
  buildCounterListReportTypesResponse--;
  return o;
}

checkListReportTypesResponse(api.ListReportTypesResponse o) {
  buildCounterListReportTypesResponse++;
  if (buildCounterListReportTypesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4263(o.reportTypes);
  }
  buildCounterListReportTypesResponse--;
}

buildUnnamed4264() {
  var o = new core.List<api.Report>();
  o.add(buildReport());
  o.add(buildReport());
  return o;
}

checkUnnamed4264(core.List<api.Report> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReport(o[0]);
  checkReport(o[1]);
}

core.int buildCounterListReportsResponse = 0;
buildListReportsResponse() {
  var o = new api.ListReportsResponse();
  buildCounterListReportsResponse++;
  if (buildCounterListReportsResponse < 3) {
    o.nextPageToken = "foo";
    o.reports = buildUnnamed4264();
  }
  buildCounterListReportsResponse--;
  return o;
}

checkListReportsResponse(api.ListReportsResponse o) {
  buildCounterListReportsResponse++;
  if (buildCounterListReportsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed4264(o.reports);
  }
  buildCounterListReportsResponse--;
}

core.int buildCounterReport = 0;
buildReport() {
  var o = new api.Report();
  buildCounterReport++;
  if (buildCounterReport < 3) {
    o.createTime = "foo";
    o.downloadUrl = "foo";
    o.endTime = "foo";
    o.id = "foo";
    o.jobExpireTime = "foo";
    o.jobId = "foo";
    o.startTime = "foo";
  }
  buildCounterReport--;
  return o;
}

checkReport(api.Report o) {
  buildCounterReport++;
  if (buildCounterReport < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.downloadUrl, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.jobExpireTime, unittest.equals('foo'));
    unittest.expect(o.jobId, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
  }
  buildCounterReport--;
}

core.int buildCounterReportType = 0;
buildReportType() {
  var o = new api.ReportType();
  buildCounterReportType++;
  if (buildCounterReportType < 3) {
    o.deprecateTime = "foo";
    o.id = "foo";
    o.name = "foo";
    o.systemManaged = true;
  }
  buildCounterReportType--;
  return o;
}

checkReportType(api.ReportType o) {
  buildCounterReportType++;
  if (buildCounterReportType < 3) {
    unittest.expect(o.deprecateTime, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.systemManaged, unittest.isTrue);
  }
  buildCounterReportType--;
}

main() {
  unittest.group("obj-schema-Empty", () {
    unittest.test("to-json--from-json", () {
      var o = buildEmpty();
      var od = new api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group("obj-schema-GdataBlobstore2Info", () {
    unittest.test("to-json--from-json", () {
      var o = buildGdataBlobstore2Info();
      var od = new api.GdataBlobstore2Info.fromJson(o.toJson());
      checkGdataBlobstore2Info(od);
    });
  });

  unittest.group("obj-schema-GdataCompositeMedia", () {
    unittest.test("to-json--from-json", () {
      var o = buildGdataCompositeMedia();
      var od = new api.GdataCompositeMedia.fromJson(o.toJson());
      checkGdataCompositeMedia(od);
    });
  });

  unittest.group("obj-schema-GdataContentTypeInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildGdataContentTypeInfo();
      var od = new api.GdataContentTypeInfo.fromJson(o.toJson());
      checkGdataContentTypeInfo(od);
    });
  });

  unittest.group("obj-schema-GdataDiffChecksumsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGdataDiffChecksumsResponse();
      var od = new api.GdataDiffChecksumsResponse.fromJson(o.toJson());
      checkGdataDiffChecksumsResponse(od);
    });
  });

  unittest.group("obj-schema-GdataDiffDownloadResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGdataDiffDownloadResponse();
      var od = new api.GdataDiffDownloadResponse.fromJson(o.toJson());
      checkGdataDiffDownloadResponse(od);
    });
  });

  unittest.group("obj-schema-GdataDiffUploadRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGdataDiffUploadRequest();
      var od = new api.GdataDiffUploadRequest.fromJson(o.toJson());
      checkGdataDiffUploadRequest(od);
    });
  });

  unittest.group("obj-schema-GdataDiffUploadResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGdataDiffUploadResponse();
      var od = new api.GdataDiffUploadResponse.fromJson(o.toJson());
      checkGdataDiffUploadResponse(od);
    });
  });

  unittest.group("obj-schema-GdataDiffVersionResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGdataDiffVersionResponse();
      var od = new api.GdataDiffVersionResponse.fromJson(o.toJson());
      checkGdataDiffVersionResponse(od);
    });
  });

  unittest.group("obj-schema-GdataDownloadParameters", () {
    unittest.test("to-json--from-json", () {
      var o = buildGdataDownloadParameters();
      var od = new api.GdataDownloadParameters.fromJson(o.toJson());
      checkGdataDownloadParameters(od);
    });
  });

  unittest.group("obj-schema-GdataMedia", () {
    unittest.test("to-json--from-json", () {
      var o = buildGdataMedia();
      var od = new api.GdataMedia.fromJson(o.toJson());
      checkGdataMedia(od);
    });
  });

  unittest.group("obj-schema-GdataObjectId", () {
    unittest.test("to-json--from-json", () {
      var o = buildGdataObjectId();
      var od = new api.GdataObjectId.fromJson(o.toJson());
      checkGdataObjectId(od);
    });
  });

  unittest.group("obj-schema-Job", () {
    unittest.test("to-json--from-json", () {
      var o = buildJob();
      var od = new api.Job.fromJson(o.toJson());
      checkJob(od);
    });
  });

  unittest.group("obj-schema-ListJobsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListJobsResponse();
      var od = new api.ListJobsResponse.fromJson(o.toJson());
      checkListJobsResponse(od);
    });
  });

  unittest.group("obj-schema-ListReportTypesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListReportTypesResponse();
      var od = new api.ListReportTypesResponse.fromJson(o.toJson());
      checkListReportTypesResponse(od);
    });
  });

  unittest.group("obj-schema-ListReportsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListReportsResponse();
      var od = new api.ListReportsResponse.fromJson(o.toJson());
      checkListReportsResponse(od);
    });
  });

  unittest.group("obj-schema-Report", () {
    unittest.test("to-json--from-json", () {
      var o = buildReport();
      var od = new api.Report.fromJson(o.toJson());
      checkReport(od);
    });
  });

  unittest.group("obj-schema-ReportType", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportType();
      var od = new api.ReportType.fromJson(o.toJson());
      checkReportType(od);
    });
  });

  unittest.group("resource-JobsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.JobsResourceApi res = new api.YoutubereportingApi(mock).jobs;
      var arg_request = buildJob();
      var arg_onBehalfOfContentOwner = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Job.fromJson(json);
        checkJob(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1/jobs"));
        pathOffset += 7;

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
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });

    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.JobsResourceApi res = new api.YoutubereportingApi(mock).jobs;
      var arg_jobId = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/jobs/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));

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
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildEmpty());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_jobId,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.JobsResourceApi res = new api.YoutubereportingApi(mock).jobs;
      var arg_jobId = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/jobs/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));

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
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_jobId,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.JobsResourceApi res = new api.YoutubereportingApi(mock).jobs;
      var arg_pageToken = "foo";
      var arg_includeSystemManaged = true;
      var arg_pageSize = 42;
      var arg_onBehalfOfContentOwner = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 7),
            unittest.equals("v1/jobs"));
        pathOffset += 7;

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
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["includeSystemManaged"].first,
            unittest.equals("$arg_includeSystemManaged"));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListJobsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageToken: arg_pageToken,
              includeSystemManaged: arg_includeSystemManaged,
              pageSize: arg_pageSize,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListJobsResponse(response);
      })));
    });
  });

  unittest.group("resource-JobsReportsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.JobsReportsResourceApi res =
          new api.YoutubereportingApi(mock).jobs.reports;
      var arg_jobId = "foo";
      var arg_reportId = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/jobs/"));
        pathOffset += 8;
        index = path.indexOf("/reports/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/reports/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_reportId"));

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
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildReport());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_jobId, arg_reportId,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReport(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.JobsReportsResourceApi res =
          new api.YoutubereportingApi(mock).jobs.reports;
      var arg_jobId = "foo";
      var arg_onBehalfOfContentOwner = "foo";
      var arg_startTimeBefore = "foo";
      var arg_createdAfter = "foo";
      var arg_pageToken = "foo";
      var arg_startTimeAtOrAfter = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("v1/jobs/"));
        pathOffset += 8;
        index = path.indexOf("/reports", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/reports"));
        pathOffset += 8;

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
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["startTimeBefore"].first,
            unittest.equals(arg_startTimeBefore));
        unittest.expect(
            queryMap["createdAfter"].first, unittest.equals(arg_createdAfter));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["startTimeAtOrAfter"].first,
            unittest.equals(arg_startTimeAtOrAfter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListReportsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_jobId,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              startTimeBefore: arg_startTimeBefore,
              createdAfter: arg_createdAfter,
              pageToken: arg_pageToken,
              startTimeAtOrAfter: arg_startTimeAtOrAfter,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListReportsResponse(response);
      })));
    });
  });

  unittest.group("resource-MediaResourceApi", () {
    unittest.test("method--download", () {
      // TODO: Implement tests for media upload;
      // TODO: Implement tests for media download;

      var mock = new HttpServerMock();
      api.MediaResourceApi res = new api.YoutubereportingApi(mock).media;
      var arg_resourceName = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("v1/media/"));
        pathOffset += 9;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

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
        var resp = convert.json.encode(buildGdataMedia());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .download(arg_resourceName, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGdataMedia(response);
      })));
    });
  });

  unittest.group("resource-ReportTypesResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ReportTypesResourceApi res =
          new api.YoutubereportingApi(mock).reportTypes;
      var arg_pageToken = "foo";
      var arg_includeSystemManaged = true;
      var arg_pageSize = 42;
      var arg_onBehalfOfContentOwner = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1/reportTypes"));
        pathOffset += 14;

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
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["includeSystemManaged"].first,
            unittest.equals("$arg_includeSystemManaged"));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["onBehalfOfContentOwner"].first,
            unittest.equals(arg_onBehalfOfContentOwner));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListReportTypesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(
              pageToken: arg_pageToken,
              includeSystemManaged: arg_includeSystemManaged,
              pageSize: arg_pageSize,
              onBehalfOfContentOwner: arg_onBehalfOfContentOwner,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListReportTypesResponse(response);
      })));
    });
  });
}
