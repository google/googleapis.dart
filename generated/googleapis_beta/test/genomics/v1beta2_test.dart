library googleapis_beta.genomics.v1beta2.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;

import 'package:googleapis_beta/genomics/v1beta2.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request.finalize()
          .transform(convert.UTF8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.JSON.decode(jsonString));
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

http.StreamedResponse stringResponse(
    core.int status, core.Map headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.UTF8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

buildUnnamed3487() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3487(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3488() {
  var o = new core.Map<core.String, core.List<core.String>>();
  o["x"] = buildUnnamed3487();
  o["y"] = buildUnnamed3487();
  return o;
}

checkUnnamed3488(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3487(o["x"]);
  checkUnnamed3487(o["y"]);
}

core.int buildCounterAnnotation = 0;
buildAnnotation() {
  var o = new api.Annotation();
  buildCounterAnnotation++;
  if (buildCounterAnnotation < 3) {
    o.annotationSetId = "foo";
    o.id = "foo";
    o.info = buildUnnamed3488();
    o.name = "foo";
    o.position = buildRangePosition();
    o.transcript = buildTranscript();
    o.type = "foo";
    o.variant = buildVariantAnnotation();
  }
  buildCounterAnnotation--;
  return o;
}

checkAnnotation(api.Annotation o) {
  buildCounterAnnotation++;
  if (buildCounterAnnotation < 3) {
    unittest.expect(o.annotationSetId, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed3488(o.info);
    unittest.expect(o.name, unittest.equals('foo'));
    checkRangePosition(o.position);
    checkTranscript(o.transcript);
    unittest.expect(o.type, unittest.equals('foo'));
    checkVariantAnnotation(o.variant);
  }
  buildCounterAnnotation--;
}

buildUnnamed3489() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3489(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3490() {
  var o = new core.Map<core.String, core.List<core.String>>();
  o["x"] = buildUnnamed3489();
  o["y"] = buildUnnamed3489();
  return o;
}

checkUnnamed3490(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3489(o["x"]);
  checkUnnamed3489(o["y"]);
}

core.int buildCounterAnnotationSet = 0;
buildAnnotationSet() {
  var o = new api.AnnotationSet();
  buildCounterAnnotationSet++;
  if (buildCounterAnnotationSet < 3) {
    o.datasetId = "foo";
    o.id = "foo";
    o.info = buildUnnamed3490();
    o.name = "foo";
    o.referenceSetId = "foo";
    o.sourceUri = "foo";
    o.type = "foo";
  }
  buildCounterAnnotationSet--;
  return o;
}

checkAnnotationSet(api.AnnotationSet o) {
  buildCounterAnnotationSet++;
  if (buildCounterAnnotationSet < 3) {
    unittest.expect(o.datasetId, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed3490(o.info);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.referenceSetId, unittest.equals('foo'));
    unittest.expect(o.sourceUri, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterAnnotationSet--;
}

buildUnnamed3491() {
  var o = new core.List<api.BatchAnnotationsResponseEntry>();
  o.add(buildBatchAnnotationsResponseEntry());
  o.add(buildBatchAnnotationsResponseEntry());
  return o;
}

checkUnnamed3491(core.List<api.BatchAnnotationsResponseEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBatchAnnotationsResponseEntry(o[0]);
  checkBatchAnnotationsResponseEntry(o[1]);
}

core.int buildCounterBatchAnnotationsResponse = 0;
buildBatchAnnotationsResponse() {
  var o = new api.BatchAnnotationsResponse();
  buildCounterBatchAnnotationsResponse++;
  if (buildCounterBatchAnnotationsResponse < 3) {
    o.entries = buildUnnamed3491();
  }
  buildCounterBatchAnnotationsResponse--;
  return o;
}

checkBatchAnnotationsResponse(api.BatchAnnotationsResponse o) {
  buildCounterBatchAnnotationsResponse++;
  if (buildCounterBatchAnnotationsResponse < 3) {
    checkUnnamed3491(o.entries);
  }
  buildCounterBatchAnnotationsResponse--;
}

core.int buildCounterBatchAnnotationsResponseEntry = 0;
buildBatchAnnotationsResponseEntry() {
  var o = new api.BatchAnnotationsResponseEntry();
  buildCounterBatchAnnotationsResponseEntry++;
  if (buildCounterBatchAnnotationsResponseEntry < 3) {
    o.annotation = buildAnnotation();
    o.status = buildBatchAnnotationsResponseEntryStatus();
  }
  buildCounterBatchAnnotationsResponseEntry--;
  return o;
}

checkBatchAnnotationsResponseEntry(api.BatchAnnotationsResponseEntry o) {
  buildCounterBatchAnnotationsResponseEntry++;
  if (buildCounterBatchAnnotationsResponseEntry < 3) {
    checkAnnotation(o.annotation);
    checkBatchAnnotationsResponseEntryStatus(o.status);
  }
  buildCounterBatchAnnotationsResponseEntry--;
}

core.int buildCounterBatchAnnotationsResponseEntryStatus = 0;
buildBatchAnnotationsResponseEntryStatus() {
  var o = new api.BatchAnnotationsResponseEntryStatus();
  buildCounterBatchAnnotationsResponseEntryStatus++;
  if (buildCounterBatchAnnotationsResponseEntryStatus < 3) {
    o.code = 42;
    o.message = "foo";
  }
  buildCounterBatchAnnotationsResponseEntryStatus--;
  return o;
}

checkBatchAnnotationsResponseEntryStatus(api.BatchAnnotationsResponseEntryStatus o) {
  buildCounterBatchAnnotationsResponseEntryStatus++;
  if (buildCounterBatchAnnotationsResponseEntryStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterBatchAnnotationsResponseEntryStatus--;
}

buildUnnamed3492() {
  var o = new core.List<api.Annotation>();
  o.add(buildAnnotation());
  o.add(buildAnnotation());
  return o;
}

checkUnnamed3492(core.List<api.Annotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnnotation(o[0]);
  checkAnnotation(o[1]);
}

core.int buildCounterBatchCreateAnnotationsRequest = 0;
buildBatchCreateAnnotationsRequest() {
  var o = new api.BatchCreateAnnotationsRequest();
  buildCounterBatchCreateAnnotationsRequest++;
  if (buildCounterBatchCreateAnnotationsRequest < 3) {
    o.annotations = buildUnnamed3492();
  }
  buildCounterBatchCreateAnnotationsRequest--;
  return o;
}

checkBatchCreateAnnotationsRequest(api.BatchCreateAnnotationsRequest o) {
  buildCounterBatchCreateAnnotationsRequest++;
  if (buildCounterBatchCreateAnnotationsRequest < 3) {
    checkUnnamed3492(o.annotations);
  }
  buildCounterBatchCreateAnnotationsRequest--;
}

buildUnnamed3493() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed3493(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed3494() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed3494(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed3495() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3495(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3496() {
  var o = new core.Map<core.String, core.List<core.String>>();
  o["x"] = buildUnnamed3495();
  o["y"] = buildUnnamed3495();
  return o;
}

checkUnnamed3496(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3495(o["x"]);
  checkUnnamed3495(o["y"]);
}

core.int buildCounterCall = 0;
buildCall() {
  var o = new api.Call();
  buildCounterCall++;
  if (buildCounterCall < 3) {
    o.callSetId = "foo";
    o.callSetName = "foo";
    o.genotype = buildUnnamed3493();
    o.genotypeLikelihood = buildUnnamed3494();
    o.info = buildUnnamed3496();
    o.phaseset = "foo";
  }
  buildCounterCall--;
  return o;
}

checkCall(api.Call o) {
  buildCounterCall++;
  if (buildCounterCall < 3) {
    unittest.expect(o.callSetId, unittest.equals('foo'));
    unittest.expect(o.callSetName, unittest.equals('foo'));
    checkUnnamed3493(o.genotype);
    checkUnnamed3494(o.genotypeLikelihood);
    checkUnnamed3496(o.info);
    unittest.expect(o.phaseset, unittest.equals('foo'));
  }
  buildCounterCall--;
}

buildUnnamed3497() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3497(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3498() {
  var o = new core.Map<core.String, core.List<core.String>>();
  o["x"] = buildUnnamed3497();
  o["y"] = buildUnnamed3497();
  return o;
}

checkUnnamed3498(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3497(o["x"]);
  checkUnnamed3497(o["y"]);
}

buildUnnamed3499() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3499(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCallSet = 0;
buildCallSet() {
  var o = new api.CallSet();
  buildCounterCallSet++;
  if (buildCounterCallSet < 3) {
    o.created = "foo";
    o.id = "foo";
    o.info = buildUnnamed3498();
    o.name = "foo";
    o.sampleId = "foo";
    o.variantSetIds = buildUnnamed3499();
  }
  buildCounterCallSet--;
  return o;
}

checkCallSet(api.CallSet o) {
  buildCounterCallSet++;
  if (buildCounterCallSet < 3) {
    unittest.expect(o.created, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed3498(o.info);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.sampleId, unittest.equals('foo'));
    checkUnnamed3499(o.variantSetIds);
  }
  buildCounterCallSet--;
}

core.int buildCounterCigarUnit = 0;
buildCigarUnit() {
  var o = new api.CigarUnit();
  buildCounterCigarUnit++;
  if (buildCounterCigarUnit < 3) {
    o.operation = "foo";
    o.operationLength = "foo";
    o.referenceSequence = "foo";
  }
  buildCounterCigarUnit--;
  return o;
}

checkCigarUnit(api.CigarUnit o) {
  buildCounterCigarUnit++;
  if (buildCounterCigarUnit < 3) {
    unittest.expect(o.operation, unittest.equals('foo'));
    unittest.expect(o.operationLength, unittest.equals('foo'));
    unittest.expect(o.referenceSequence, unittest.equals('foo'));
  }
  buildCounterCigarUnit--;
}

core.int buildCounterCoverageBucket = 0;
buildCoverageBucket() {
  var o = new api.CoverageBucket();
  buildCounterCoverageBucket++;
  if (buildCounterCoverageBucket < 3) {
    o.meanCoverage = 42.0;
    o.range = buildRange();
  }
  buildCounterCoverageBucket--;
  return o;
}

checkCoverageBucket(api.CoverageBucket o) {
  buildCounterCoverageBucket++;
  if (buildCounterCoverageBucket < 3) {
    unittest.expect(o.meanCoverage, unittest.equals(42.0));
    checkRange(o.range);
  }
  buildCounterCoverageBucket--;
}

core.int buildCounterDataset = 0;
buildDataset() {
  var o = new api.Dataset();
  buildCounterDataset++;
  if (buildCounterDataset < 3) {
    o.createTime = "foo";
    o.id = "foo";
    o.isPublic = true;
    o.name = "foo";
    o.projectNumber = "foo";
  }
  buildCounterDataset--;
  return o;
}

checkDataset(api.Dataset o) {
  buildCounterDataset++;
  if (buildCounterDataset < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.isPublic, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectNumber, unittest.equals('foo'));
  }
  buildCounterDataset--;
}

buildUnnamed3500() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3500(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3501() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3501(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterExperimentalCreateJobRequest = 0;
buildExperimentalCreateJobRequest() {
  var o = new api.ExperimentalCreateJobRequest();
  buildCounterExperimentalCreateJobRequest++;
  if (buildCounterExperimentalCreateJobRequest < 3) {
    o.align = true;
    o.callVariants = true;
    o.gcsOutputPath = "foo";
    o.pairedSourceUris = buildUnnamed3500();
    o.projectNumber = "foo";
    o.sourceUris = buildUnnamed3501();
  }
  buildCounterExperimentalCreateJobRequest--;
  return o;
}

checkExperimentalCreateJobRequest(api.ExperimentalCreateJobRequest o) {
  buildCounterExperimentalCreateJobRequest++;
  if (buildCounterExperimentalCreateJobRequest < 3) {
    unittest.expect(o.align, unittest.isTrue);
    unittest.expect(o.callVariants, unittest.isTrue);
    unittest.expect(o.gcsOutputPath, unittest.equals('foo'));
    checkUnnamed3500(o.pairedSourceUris);
    unittest.expect(o.projectNumber, unittest.equals('foo'));
    checkUnnamed3501(o.sourceUris);
  }
  buildCounterExperimentalCreateJobRequest--;
}

core.int buildCounterExperimentalCreateJobResponse = 0;
buildExperimentalCreateJobResponse() {
  var o = new api.ExperimentalCreateJobResponse();
  buildCounterExperimentalCreateJobResponse++;
  if (buildCounterExperimentalCreateJobResponse < 3) {
    o.jobId = "foo";
  }
  buildCounterExperimentalCreateJobResponse--;
  return o;
}

checkExperimentalCreateJobResponse(api.ExperimentalCreateJobResponse o) {
  buildCounterExperimentalCreateJobResponse++;
  if (buildCounterExperimentalCreateJobResponse < 3) {
    unittest.expect(o.jobId, unittest.equals('foo'));
  }
  buildCounterExperimentalCreateJobResponse--;
}

buildUnnamed3502() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3502(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3503() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3503(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterExportReadGroupSetsRequest = 0;
buildExportReadGroupSetsRequest() {
  var o = new api.ExportReadGroupSetsRequest();
  buildCounterExportReadGroupSetsRequest++;
  if (buildCounterExportReadGroupSetsRequest < 3) {
    o.exportUri = "foo";
    o.projectNumber = "foo";
    o.readGroupSetIds = buildUnnamed3502();
    o.referenceNames = buildUnnamed3503();
  }
  buildCounterExportReadGroupSetsRequest--;
  return o;
}

checkExportReadGroupSetsRequest(api.ExportReadGroupSetsRequest o) {
  buildCounterExportReadGroupSetsRequest++;
  if (buildCounterExportReadGroupSetsRequest < 3) {
    unittest.expect(o.exportUri, unittest.equals('foo'));
    unittest.expect(o.projectNumber, unittest.equals('foo'));
    checkUnnamed3502(o.readGroupSetIds);
    checkUnnamed3503(o.referenceNames);
  }
  buildCounterExportReadGroupSetsRequest--;
}

core.int buildCounterExportReadGroupSetsResponse = 0;
buildExportReadGroupSetsResponse() {
  var o = new api.ExportReadGroupSetsResponse();
  buildCounterExportReadGroupSetsResponse++;
  if (buildCounterExportReadGroupSetsResponse < 3) {
    o.jobId = "foo";
  }
  buildCounterExportReadGroupSetsResponse--;
  return o;
}

checkExportReadGroupSetsResponse(api.ExportReadGroupSetsResponse o) {
  buildCounterExportReadGroupSetsResponse++;
  if (buildCounterExportReadGroupSetsResponse < 3) {
    unittest.expect(o.jobId, unittest.equals('foo'));
  }
  buildCounterExportReadGroupSetsResponse--;
}

buildUnnamed3504() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3504(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterExportVariantSetRequest = 0;
buildExportVariantSetRequest() {
  var o = new api.ExportVariantSetRequest();
  buildCounterExportVariantSetRequest++;
  if (buildCounterExportVariantSetRequest < 3) {
    o.bigqueryDataset = "foo";
    o.bigqueryTable = "foo";
    o.callSetIds = buildUnnamed3504();
    o.format = "foo";
    o.projectNumber = "foo";
  }
  buildCounterExportVariantSetRequest--;
  return o;
}

checkExportVariantSetRequest(api.ExportVariantSetRequest o) {
  buildCounterExportVariantSetRequest++;
  if (buildCounterExportVariantSetRequest < 3) {
    unittest.expect(o.bigqueryDataset, unittest.equals('foo'));
    unittest.expect(o.bigqueryTable, unittest.equals('foo'));
    checkUnnamed3504(o.callSetIds);
    unittest.expect(o.format, unittest.equals('foo'));
    unittest.expect(o.projectNumber, unittest.equals('foo'));
  }
  buildCounterExportVariantSetRequest--;
}

core.int buildCounterExportVariantSetResponse = 0;
buildExportVariantSetResponse() {
  var o = new api.ExportVariantSetResponse();
  buildCounterExportVariantSetResponse++;
  if (buildCounterExportVariantSetResponse < 3) {
    o.jobId = "foo";
  }
  buildCounterExportVariantSetResponse--;
  return o;
}

checkExportVariantSetResponse(api.ExportVariantSetResponse o) {
  buildCounterExportVariantSetResponse++;
  if (buildCounterExportVariantSetResponse < 3) {
    unittest.expect(o.jobId, unittest.equals('foo'));
  }
  buildCounterExportVariantSetResponse--;
}

core.int buildCounterExternalId = 0;
buildExternalId() {
  var o = new api.ExternalId();
  buildCounterExternalId++;
  if (buildCounterExternalId < 3) {
    o.id = "foo";
    o.sourceName = "foo";
  }
  buildCounterExternalId--;
  return o;
}

checkExternalId(api.ExternalId o) {
  buildCounterExternalId++;
  if (buildCounterExternalId < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.sourceName, unittest.equals('foo'));
  }
  buildCounterExternalId--;
}

buildUnnamed3505() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3505(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterImportReadGroupSetsRequest = 0;
buildImportReadGroupSetsRequest() {
  var o = new api.ImportReadGroupSetsRequest();
  buildCounterImportReadGroupSetsRequest++;
  if (buildCounterImportReadGroupSetsRequest < 3) {
    o.datasetId = "foo";
    o.partitionStrategy = "foo";
    o.referenceSetId = "foo";
    o.sourceUris = buildUnnamed3505();
  }
  buildCounterImportReadGroupSetsRequest--;
  return o;
}

checkImportReadGroupSetsRequest(api.ImportReadGroupSetsRequest o) {
  buildCounterImportReadGroupSetsRequest++;
  if (buildCounterImportReadGroupSetsRequest < 3) {
    unittest.expect(o.datasetId, unittest.equals('foo'));
    unittest.expect(o.partitionStrategy, unittest.equals('foo'));
    unittest.expect(o.referenceSetId, unittest.equals('foo'));
    checkUnnamed3505(o.sourceUris);
  }
  buildCounterImportReadGroupSetsRequest--;
}

core.int buildCounterImportReadGroupSetsResponse = 0;
buildImportReadGroupSetsResponse() {
  var o = new api.ImportReadGroupSetsResponse();
  buildCounterImportReadGroupSetsResponse++;
  if (buildCounterImportReadGroupSetsResponse < 3) {
    o.jobId = "foo";
  }
  buildCounterImportReadGroupSetsResponse--;
  return o;
}

checkImportReadGroupSetsResponse(api.ImportReadGroupSetsResponse o) {
  buildCounterImportReadGroupSetsResponse++;
  if (buildCounterImportReadGroupSetsResponse < 3) {
    unittest.expect(o.jobId, unittest.equals('foo'));
  }
  buildCounterImportReadGroupSetsResponse--;
}

buildUnnamed3506() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3506(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterImportVariantsRequest = 0;
buildImportVariantsRequest() {
  var o = new api.ImportVariantsRequest();
  buildCounterImportVariantsRequest++;
  if (buildCounterImportVariantsRequest < 3) {
    o.format = "foo";
    o.normalizeReferenceNames = true;
    o.sourceUris = buildUnnamed3506();
  }
  buildCounterImportVariantsRequest--;
  return o;
}

checkImportVariantsRequest(api.ImportVariantsRequest o) {
  buildCounterImportVariantsRequest++;
  if (buildCounterImportVariantsRequest < 3) {
    unittest.expect(o.format, unittest.equals('foo'));
    unittest.expect(o.normalizeReferenceNames, unittest.isTrue);
    checkUnnamed3506(o.sourceUris);
  }
  buildCounterImportVariantsRequest--;
}

core.int buildCounterImportVariantsResponse = 0;
buildImportVariantsResponse() {
  var o = new api.ImportVariantsResponse();
  buildCounterImportVariantsResponse++;
  if (buildCounterImportVariantsResponse < 3) {
    o.jobId = "foo";
  }
  buildCounterImportVariantsResponse--;
  return o;
}

checkImportVariantsResponse(api.ImportVariantsResponse o) {
  buildCounterImportVariantsResponse++;
  if (buildCounterImportVariantsResponse < 3) {
    unittest.expect(o.jobId, unittest.equals('foo'));
  }
  buildCounterImportVariantsResponse--;
}

core.int buildCounterInt32Value = 0;
buildInt32Value() {
  var o = new api.Int32Value();
  buildCounterInt32Value++;
  if (buildCounterInt32Value < 3) {
    o.value = 42;
  }
  buildCounterInt32Value--;
  return o;
}

checkInt32Value(api.Int32Value o) {
  buildCounterInt32Value++;
  if (buildCounterInt32Value < 3) {
    unittest.expect(o.value, unittest.equals(42));
  }
  buildCounterInt32Value--;
}

buildUnnamed3507() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3507(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3508() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3508(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3509() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3509(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterJob = 0;
buildJob() {
  var o = new api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.created = "foo";
    o.detailedStatus = "foo";
    o.errors = buildUnnamed3507();
    o.id = "foo";
    o.importedIds = buildUnnamed3508();
    o.projectNumber = "foo";
    o.request = buildJobRequest();
    o.status = "foo";
    o.warnings = buildUnnamed3509();
  }
  buildCounterJob--;
  return o;
}

checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    unittest.expect(o.created, unittest.equals('foo'));
    unittest.expect(o.detailedStatus, unittest.equals('foo'));
    checkUnnamed3507(o.errors);
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed3508(o.importedIds);
    unittest.expect(o.projectNumber, unittest.equals('foo'));
    checkJobRequest(o.request);
    unittest.expect(o.status, unittest.equals('foo'));
    checkUnnamed3509(o.warnings);
  }
  buildCounterJob--;
}

buildUnnamed3510() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3510(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3511() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3511(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterJobRequest = 0;
buildJobRequest() {
  var o = new api.JobRequest();
  buildCounterJobRequest++;
  if (buildCounterJobRequest < 3) {
    o.destination = buildUnnamed3510();
    o.source = buildUnnamed3511();
    o.type = "foo";
  }
  buildCounterJobRequest--;
  return o;
}

checkJobRequest(api.JobRequest o) {
  buildCounterJobRequest++;
  if (buildCounterJobRequest < 3) {
    checkUnnamed3510(o.destination);
    checkUnnamed3511(o.source);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterJobRequest--;
}

buildUnnamed3512() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3512(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterKeyValue = 0;
buildKeyValue() {
  var o = new api.KeyValue();
  buildCounterKeyValue++;
  if (buildCounterKeyValue < 3) {
    o.key = "foo";
    o.value = buildUnnamed3512();
  }
  buildCounterKeyValue--;
  return o;
}

checkKeyValue(api.KeyValue o) {
  buildCounterKeyValue++;
  if (buildCounterKeyValue < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    checkUnnamed3512(o.value);
  }
  buildCounterKeyValue--;
}

buildUnnamed3513() {
  var o = new core.List<api.CigarUnit>();
  o.add(buildCigarUnit());
  o.add(buildCigarUnit());
  return o;
}

checkUnnamed3513(core.List<api.CigarUnit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCigarUnit(o[0]);
  checkCigarUnit(o[1]);
}

core.int buildCounterLinearAlignment = 0;
buildLinearAlignment() {
  var o = new api.LinearAlignment();
  buildCounterLinearAlignment++;
  if (buildCounterLinearAlignment < 3) {
    o.cigar = buildUnnamed3513();
    o.mappingQuality = 42;
    o.position = buildPosition();
  }
  buildCounterLinearAlignment--;
  return o;
}

checkLinearAlignment(api.LinearAlignment o) {
  buildCounterLinearAlignment++;
  if (buildCounterLinearAlignment < 3) {
    checkUnnamed3513(o.cigar);
    unittest.expect(o.mappingQuality, unittest.equals(42));
    checkPosition(o.position);
  }
  buildCounterLinearAlignment--;
}

core.int buildCounterListBasesResponse = 0;
buildListBasesResponse() {
  var o = new api.ListBasesResponse();
  buildCounterListBasesResponse++;
  if (buildCounterListBasesResponse < 3) {
    o.nextPageToken = "foo";
    o.offset = "foo";
    o.sequence = "foo";
  }
  buildCounterListBasesResponse--;
  return o;
}

checkListBasesResponse(api.ListBasesResponse o) {
  buildCounterListBasesResponse++;
  if (buildCounterListBasesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    unittest.expect(o.offset, unittest.equals('foo'));
    unittest.expect(o.sequence, unittest.equals('foo'));
  }
  buildCounterListBasesResponse--;
}

buildUnnamed3514() {
  var o = new core.List<api.CoverageBucket>();
  o.add(buildCoverageBucket());
  o.add(buildCoverageBucket());
  return o;
}

checkUnnamed3514(core.List<api.CoverageBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCoverageBucket(o[0]);
  checkCoverageBucket(o[1]);
}

core.int buildCounterListCoverageBucketsResponse = 0;
buildListCoverageBucketsResponse() {
  var o = new api.ListCoverageBucketsResponse();
  buildCounterListCoverageBucketsResponse++;
  if (buildCounterListCoverageBucketsResponse < 3) {
    o.bucketWidth = "foo";
    o.coverageBuckets = buildUnnamed3514();
    o.nextPageToken = "foo";
  }
  buildCounterListCoverageBucketsResponse--;
  return o;
}

checkListCoverageBucketsResponse(api.ListCoverageBucketsResponse o) {
  buildCounterListCoverageBucketsResponse++;
  if (buildCounterListCoverageBucketsResponse < 3) {
    unittest.expect(o.bucketWidth, unittest.equals('foo'));
    checkUnnamed3514(o.coverageBuckets);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCoverageBucketsResponse--;
}

buildUnnamed3515() {
  var o = new core.List<api.Dataset>();
  o.add(buildDataset());
  o.add(buildDataset());
  return o;
}

checkUnnamed3515(core.List<api.Dataset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataset(o[0]);
  checkDataset(o[1]);
}

core.int buildCounterListDatasetsResponse = 0;
buildListDatasetsResponse() {
  var o = new api.ListDatasetsResponse();
  buildCounterListDatasetsResponse++;
  if (buildCounterListDatasetsResponse < 3) {
    o.datasets = buildUnnamed3515();
    o.nextPageToken = "foo";
  }
  buildCounterListDatasetsResponse--;
  return o;
}

checkListDatasetsResponse(api.ListDatasetsResponse o) {
  buildCounterListDatasetsResponse++;
  if (buildCounterListDatasetsResponse < 3) {
    checkUnnamed3515(o.datasets);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListDatasetsResponse--;
}

buildUnnamed3516() {
  var o = new core.List<api.Variant>();
  o.add(buildVariant());
  o.add(buildVariant());
  return o;
}

checkUnnamed3516(core.List<api.Variant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVariant(o[0]);
  checkVariant(o[1]);
}

core.int buildCounterMergeVariantsRequest = 0;
buildMergeVariantsRequest() {
  var o = new api.MergeVariantsRequest();
  buildCounterMergeVariantsRequest++;
  if (buildCounterMergeVariantsRequest < 3) {
    o.variants = buildUnnamed3516();
  }
  buildCounterMergeVariantsRequest--;
  return o;
}

checkMergeVariantsRequest(api.MergeVariantsRequest o) {
  buildCounterMergeVariantsRequest++;
  if (buildCounterMergeVariantsRequest < 3) {
    checkUnnamed3516(o.variants);
  }
  buildCounterMergeVariantsRequest--;
}

buildUnnamed3517() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3517(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3518() {
  var o = new core.Map<core.String, core.List<core.String>>();
  o["x"] = buildUnnamed3517();
  o["y"] = buildUnnamed3517();
  return o;
}

checkUnnamed3518(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3517(o["x"]);
  checkUnnamed3517(o["y"]);
}

core.int buildCounterMetadata = 0;
buildMetadata() {
  var o = new api.Metadata();
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    o.description = "foo";
    o.id = "foo";
    o.info = buildUnnamed3518();
    o.key = "foo";
    o.number = "foo";
    o.type = "foo";
    o.value = "foo";
  }
  buildCounterMetadata--;
  return o;
}

checkMetadata(api.Metadata o) {
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed3518(o.info);
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.number, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterMetadata--;
}

core.int buildCounterPosition = 0;
buildPosition() {
  var o = new api.Position();
  buildCounterPosition++;
  if (buildCounterPosition < 3) {
    o.position = "foo";
    o.referenceName = "foo";
    o.reverseStrand = true;
  }
  buildCounterPosition--;
  return o;
}

checkPosition(api.Position o) {
  buildCounterPosition++;
  if (buildCounterPosition < 3) {
    unittest.expect(o.position, unittest.equals('foo'));
    unittest.expect(o.referenceName, unittest.equals('foo'));
    unittest.expect(o.reverseStrand, unittest.isTrue);
  }
  buildCounterPosition--;
}

core.int buildCounterQueryRange = 0;
buildQueryRange() {
  var o = new api.QueryRange();
  buildCounterQueryRange++;
  if (buildCounterQueryRange < 3) {
    o.end = "foo";
    o.referenceId = "foo";
    o.referenceName = "foo";
    o.start = "foo";
  }
  buildCounterQueryRange--;
  return o;
}

checkQueryRange(api.QueryRange o) {
  buildCounterQueryRange++;
  if (buildCounterQueryRange < 3) {
    unittest.expect(o.end, unittest.equals('foo'));
    unittest.expect(o.referenceId, unittest.equals('foo'));
    unittest.expect(o.referenceName, unittest.equals('foo'));
    unittest.expect(o.start, unittest.equals('foo'));
  }
  buildCounterQueryRange--;
}

core.int buildCounterRange = 0;
buildRange() {
  var o = new api.Range();
  buildCounterRange++;
  if (buildCounterRange < 3) {
    o.end = "foo";
    o.referenceName = "foo";
    o.start = "foo";
  }
  buildCounterRange--;
  return o;
}

checkRange(api.Range o) {
  buildCounterRange++;
  if (buildCounterRange < 3) {
    unittest.expect(o.end, unittest.equals('foo'));
    unittest.expect(o.referenceName, unittest.equals('foo'));
    unittest.expect(o.start, unittest.equals('foo'));
  }
  buildCounterRange--;
}

core.int buildCounterRangePosition = 0;
buildRangePosition() {
  var o = new api.RangePosition();
  buildCounterRangePosition++;
  if (buildCounterRangePosition < 3) {
    o.end = "foo";
    o.referenceId = "foo";
    o.referenceName = "foo";
    o.reverseStrand = true;
    o.start = "foo";
  }
  buildCounterRangePosition--;
  return o;
}

checkRangePosition(api.RangePosition o) {
  buildCounterRangePosition++;
  if (buildCounterRangePosition < 3) {
    unittest.expect(o.end, unittest.equals('foo'));
    unittest.expect(o.referenceId, unittest.equals('foo'));
    unittest.expect(o.referenceName, unittest.equals('foo'));
    unittest.expect(o.reverseStrand, unittest.isTrue);
    unittest.expect(o.start, unittest.equals('foo'));
  }
  buildCounterRangePosition--;
}

buildUnnamed3519() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed3519(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed3520() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3520(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3521() {
  var o = new core.Map<core.String, core.List<core.String>>();
  o["x"] = buildUnnamed3520();
  o["y"] = buildUnnamed3520();
  return o;
}

checkUnnamed3521(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3520(o["x"]);
  checkUnnamed3520(o["y"]);
}

core.int buildCounterRead = 0;
buildRead() {
  var o = new api.Read();
  buildCounterRead++;
  if (buildCounterRead < 3) {
    o.alignedQuality = buildUnnamed3519();
    o.alignedSequence = "foo";
    o.alignment = buildLinearAlignment();
    o.duplicateFragment = true;
    o.failedVendorQualityChecks = true;
    o.fragmentLength = 42;
    o.fragmentName = "foo";
    o.id = "foo";
    o.info = buildUnnamed3521();
    o.nextMatePosition = buildPosition();
    o.numberReads = 42;
    o.properPlacement = true;
    o.readGroupId = "foo";
    o.readGroupSetId = "foo";
    o.readNumber = 42;
    o.secondaryAlignment = true;
    o.supplementaryAlignment = true;
  }
  buildCounterRead--;
  return o;
}

checkRead(api.Read o) {
  buildCounterRead++;
  if (buildCounterRead < 3) {
    checkUnnamed3519(o.alignedQuality);
    unittest.expect(o.alignedSequence, unittest.equals('foo'));
    checkLinearAlignment(o.alignment);
    unittest.expect(o.duplicateFragment, unittest.isTrue);
    unittest.expect(o.failedVendorQualityChecks, unittest.isTrue);
    unittest.expect(o.fragmentLength, unittest.equals(42));
    unittest.expect(o.fragmentName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed3521(o.info);
    checkPosition(o.nextMatePosition);
    unittest.expect(o.numberReads, unittest.equals(42));
    unittest.expect(o.properPlacement, unittest.isTrue);
    unittest.expect(o.readGroupId, unittest.equals('foo'));
    unittest.expect(o.readGroupSetId, unittest.equals('foo'));
    unittest.expect(o.readNumber, unittest.equals(42));
    unittest.expect(o.secondaryAlignment, unittest.isTrue);
    unittest.expect(o.supplementaryAlignment, unittest.isTrue);
  }
  buildCounterRead--;
}

buildUnnamed3522() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3522(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3523() {
  var o = new core.Map<core.String, core.List<core.String>>();
  o["x"] = buildUnnamed3522();
  o["y"] = buildUnnamed3522();
  return o;
}

checkUnnamed3523(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3522(o["x"]);
  checkUnnamed3522(o["y"]);
}

buildUnnamed3524() {
  var o = new core.List<api.ReadGroupProgram>();
  o.add(buildReadGroupProgram());
  o.add(buildReadGroupProgram());
  return o;
}

checkUnnamed3524(core.List<api.ReadGroupProgram> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReadGroupProgram(o[0]);
  checkReadGroupProgram(o[1]);
}

core.int buildCounterReadGroup = 0;
buildReadGroup() {
  var o = new api.ReadGroup();
  buildCounterReadGroup++;
  if (buildCounterReadGroup < 3) {
    o.datasetId = "foo";
    o.description = "foo";
    o.experiment = buildReadGroupExperiment();
    o.id = "foo";
    o.info = buildUnnamed3523();
    o.name = "foo";
    o.predictedInsertSize = 42;
    o.programs = buildUnnamed3524();
    o.referenceSetId = "foo";
    o.sampleId = "foo";
  }
  buildCounterReadGroup--;
  return o;
}

checkReadGroup(api.ReadGroup o) {
  buildCounterReadGroup++;
  if (buildCounterReadGroup < 3) {
    unittest.expect(o.datasetId, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkReadGroupExperiment(o.experiment);
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed3523(o.info);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.predictedInsertSize, unittest.equals(42));
    checkUnnamed3524(o.programs);
    unittest.expect(o.referenceSetId, unittest.equals('foo'));
    unittest.expect(o.sampleId, unittest.equals('foo'));
  }
  buildCounterReadGroup--;
}

core.int buildCounterReadGroupExperiment = 0;
buildReadGroupExperiment() {
  var o = new api.ReadGroupExperiment();
  buildCounterReadGroupExperiment++;
  if (buildCounterReadGroupExperiment < 3) {
    o.instrumentModel = "foo";
    o.libraryId = "foo";
    o.platformUnit = "foo";
    o.sequencingCenter = "foo";
  }
  buildCounterReadGroupExperiment--;
  return o;
}

checkReadGroupExperiment(api.ReadGroupExperiment o) {
  buildCounterReadGroupExperiment++;
  if (buildCounterReadGroupExperiment < 3) {
    unittest.expect(o.instrumentModel, unittest.equals('foo'));
    unittest.expect(o.libraryId, unittest.equals('foo'));
    unittest.expect(o.platformUnit, unittest.equals('foo'));
    unittest.expect(o.sequencingCenter, unittest.equals('foo'));
  }
  buildCounterReadGroupExperiment--;
}

core.int buildCounterReadGroupProgram = 0;
buildReadGroupProgram() {
  var o = new api.ReadGroupProgram();
  buildCounterReadGroupProgram++;
  if (buildCounterReadGroupProgram < 3) {
    o.commandLine = "foo";
    o.id = "foo";
    o.name = "foo";
    o.prevProgramId = "foo";
    o.version = "foo";
  }
  buildCounterReadGroupProgram--;
  return o;
}

checkReadGroupProgram(api.ReadGroupProgram o) {
  buildCounterReadGroupProgram++;
  if (buildCounterReadGroupProgram < 3) {
    unittest.expect(o.commandLine, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.prevProgramId, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterReadGroupProgram--;
}

buildUnnamed3525() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3525(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3526() {
  var o = new core.Map<core.String, core.List<core.String>>();
  o["x"] = buildUnnamed3525();
  o["y"] = buildUnnamed3525();
  return o;
}

checkUnnamed3526(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3525(o["x"]);
  checkUnnamed3525(o["y"]);
}

buildUnnamed3527() {
  var o = new core.List<api.ReadGroup>();
  o.add(buildReadGroup());
  o.add(buildReadGroup());
  return o;
}

checkUnnamed3527(core.List<api.ReadGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReadGroup(o[0]);
  checkReadGroup(o[1]);
}

core.int buildCounterReadGroupSet = 0;
buildReadGroupSet() {
  var o = new api.ReadGroupSet();
  buildCounterReadGroupSet++;
  if (buildCounterReadGroupSet < 3) {
    o.datasetId = "foo";
    o.filename = "foo";
    o.id = "foo";
    o.info = buildUnnamed3526();
    o.name = "foo";
    o.readGroups = buildUnnamed3527();
    o.referenceSetId = "foo";
  }
  buildCounterReadGroupSet--;
  return o;
}

checkReadGroupSet(api.ReadGroupSet o) {
  buildCounterReadGroupSet++;
  if (buildCounterReadGroupSet < 3) {
    unittest.expect(o.datasetId, unittest.equals('foo'));
    unittest.expect(o.filename, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed3526(o.info);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3527(o.readGroups);
    unittest.expect(o.referenceSetId, unittest.equals('foo'));
  }
  buildCounterReadGroupSet--;
}

buildUnnamed3528() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3528(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReference = 0;
buildReference() {
  var o = new api.Reference();
  buildCounterReference++;
  if (buildCounterReference < 3) {
    o.id = "foo";
    o.length = "foo";
    o.md5checksum = "foo";
    o.name = "foo";
    o.ncbiTaxonId = 42;
    o.sourceAccessions = buildUnnamed3528();
    o.sourceURI = "foo";
  }
  buildCounterReference--;
  return o;
}

checkReference(api.Reference o) {
  buildCounterReference++;
  if (buildCounterReference < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.length, unittest.equals('foo'));
    unittest.expect(o.md5checksum, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.ncbiTaxonId, unittest.equals(42));
    checkUnnamed3528(o.sourceAccessions);
    unittest.expect(o.sourceURI, unittest.equals('foo'));
  }
  buildCounterReference--;
}

core.int buildCounterReferenceBound = 0;
buildReferenceBound() {
  var o = new api.ReferenceBound();
  buildCounterReferenceBound++;
  if (buildCounterReferenceBound < 3) {
    o.referenceName = "foo";
    o.upperBound = "foo";
  }
  buildCounterReferenceBound--;
  return o;
}

checkReferenceBound(api.ReferenceBound o) {
  buildCounterReferenceBound++;
  if (buildCounterReferenceBound < 3) {
    unittest.expect(o.referenceName, unittest.equals('foo'));
    unittest.expect(o.upperBound, unittest.equals('foo'));
  }
  buildCounterReferenceBound--;
}

buildUnnamed3529() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3529(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3530() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3530(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReferenceSet = 0;
buildReferenceSet() {
  var o = new api.ReferenceSet();
  buildCounterReferenceSet++;
  if (buildCounterReferenceSet < 3) {
    o.assemblyId = "foo";
    o.description = "foo";
    o.id = "foo";
    o.md5checksum = "foo";
    o.ncbiTaxonId = 42;
    o.referenceIds = buildUnnamed3529();
    o.sourceAccessions = buildUnnamed3530();
    o.sourceURI = "foo";
  }
  buildCounterReferenceSet--;
  return o;
}

checkReferenceSet(api.ReferenceSet o) {
  buildCounterReferenceSet++;
  if (buildCounterReferenceSet < 3) {
    unittest.expect(o.assemblyId, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.md5checksum, unittest.equals('foo'));
    unittest.expect(o.ncbiTaxonId, unittest.equals(42));
    checkUnnamed3529(o.referenceIds);
    checkUnnamed3530(o.sourceAccessions);
    unittest.expect(o.sourceURI, unittest.equals('foo'));
  }
  buildCounterReferenceSet--;
}

buildUnnamed3531() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3531(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3532() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3532(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSearchAnnotationSetsRequest = 0;
buildSearchAnnotationSetsRequest() {
  var o = new api.SearchAnnotationSetsRequest();
  buildCounterSearchAnnotationSetsRequest++;
  if (buildCounterSearchAnnotationSetsRequest < 3) {
    o.datasetIds = buildUnnamed3531();
    o.name = "foo";
    o.pageSize = 42;
    o.pageToken = "foo";
    o.referenceSetId = "foo";
    o.types = buildUnnamed3532();
  }
  buildCounterSearchAnnotationSetsRequest--;
  return o;
}

checkSearchAnnotationSetsRequest(api.SearchAnnotationSetsRequest o) {
  buildCounterSearchAnnotationSetsRequest++;
  if (buildCounterSearchAnnotationSetsRequest < 3) {
    checkUnnamed3531(o.datasetIds);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    unittest.expect(o.referenceSetId, unittest.equals('foo'));
    checkUnnamed3532(o.types);
  }
  buildCounterSearchAnnotationSetsRequest--;
}

buildUnnamed3533() {
  var o = new core.List<api.AnnotationSet>();
  o.add(buildAnnotationSet());
  o.add(buildAnnotationSet());
  return o;
}

checkUnnamed3533(core.List<api.AnnotationSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnnotationSet(o[0]);
  checkAnnotationSet(o[1]);
}

core.int buildCounterSearchAnnotationSetsResponse = 0;
buildSearchAnnotationSetsResponse() {
  var o = new api.SearchAnnotationSetsResponse();
  buildCounterSearchAnnotationSetsResponse++;
  if (buildCounterSearchAnnotationSetsResponse < 3) {
    o.annotationSets = buildUnnamed3533();
    o.nextPageToken = "foo";
  }
  buildCounterSearchAnnotationSetsResponse--;
  return o;
}

checkSearchAnnotationSetsResponse(api.SearchAnnotationSetsResponse o) {
  buildCounterSearchAnnotationSetsResponse++;
  if (buildCounterSearchAnnotationSetsResponse < 3) {
    checkUnnamed3533(o.annotationSets);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterSearchAnnotationSetsResponse--;
}

buildUnnamed3534() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3534(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSearchAnnotationsRequest = 0;
buildSearchAnnotationsRequest() {
  var o = new api.SearchAnnotationsRequest();
  buildCounterSearchAnnotationsRequest++;
  if (buildCounterSearchAnnotationsRequest < 3) {
    o.annotationSetIds = buildUnnamed3534();
    o.pageSize = 42;
    o.pageToken = "foo";
    o.range = buildQueryRange();
  }
  buildCounterSearchAnnotationsRequest--;
  return o;
}

checkSearchAnnotationsRequest(api.SearchAnnotationsRequest o) {
  buildCounterSearchAnnotationsRequest++;
  if (buildCounterSearchAnnotationsRequest < 3) {
    checkUnnamed3534(o.annotationSetIds);
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    checkQueryRange(o.range);
  }
  buildCounterSearchAnnotationsRequest--;
}

buildUnnamed3535() {
  var o = new core.List<api.Annotation>();
  o.add(buildAnnotation());
  o.add(buildAnnotation());
  return o;
}

checkUnnamed3535(core.List<api.Annotation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAnnotation(o[0]);
  checkAnnotation(o[1]);
}

core.int buildCounterSearchAnnotationsResponse = 0;
buildSearchAnnotationsResponse() {
  var o = new api.SearchAnnotationsResponse();
  buildCounterSearchAnnotationsResponse++;
  if (buildCounterSearchAnnotationsResponse < 3) {
    o.annotations = buildUnnamed3535();
    o.nextPageToken = "foo";
  }
  buildCounterSearchAnnotationsResponse--;
  return o;
}

checkSearchAnnotationsResponse(api.SearchAnnotationsResponse o) {
  buildCounterSearchAnnotationsResponse++;
  if (buildCounterSearchAnnotationsResponse < 3) {
    checkUnnamed3535(o.annotations);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterSearchAnnotationsResponse--;
}

buildUnnamed3536() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3536(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSearchCallSetsRequest = 0;
buildSearchCallSetsRequest() {
  var o = new api.SearchCallSetsRequest();
  buildCounterSearchCallSetsRequest++;
  if (buildCounterSearchCallSetsRequest < 3) {
    o.name = "foo";
    o.pageSize = 42;
    o.pageToken = "foo";
    o.variantSetIds = buildUnnamed3536();
  }
  buildCounterSearchCallSetsRequest--;
  return o;
}

checkSearchCallSetsRequest(api.SearchCallSetsRequest o) {
  buildCounterSearchCallSetsRequest++;
  if (buildCounterSearchCallSetsRequest < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    checkUnnamed3536(o.variantSetIds);
  }
  buildCounterSearchCallSetsRequest--;
}

buildUnnamed3537() {
  var o = new core.List<api.CallSet>();
  o.add(buildCallSet());
  o.add(buildCallSet());
  return o;
}

checkUnnamed3537(core.List<api.CallSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCallSet(o[0]);
  checkCallSet(o[1]);
}

core.int buildCounterSearchCallSetsResponse = 0;
buildSearchCallSetsResponse() {
  var o = new api.SearchCallSetsResponse();
  buildCounterSearchCallSetsResponse++;
  if (buildCounterSearchCallSetsResponse < 3) {
    o.callSets = buildUnnamed3537();
    o.nextPageToken = "foo";
  }
  buildCounterSearchCallSetsResponse--;
  return o;
}

checkSearchCallSetsResponse(api.SearchCallSetsResponse o) {
  buildCounterSearchCallSetsResponse++;
  if (buildCounterSearchCallSetsResponse < 3) {
    checkUnnamed3537(o.callSets);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterSearchCallSetsResponse--;
}

buildUnnamed3538() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3538(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSearchJobsRequest = 0;
buildSearchJobsRequest() {
  var o = new api.SearchJobsRequest();
  buildCounterSearchJobsRequest++;
  if (buildCounterSearchJobsRequest < 3) {
    o.createdAfter = "foo";
    o.createdBefore = "foo";
    o.pageSize = 42;
    o.pageToken = "foo";
    o.projectNumber = "foo";
    o.status = buildUnnamed3538();
  }
  buildCounterSearchJobsRequest--;
  return o;
}

checkSearchJobsRequest(api.SearchJobsRequest o) {
  buildCounterSearchJobsRequest++;
  if (buildCounterSearchJobsRequest < 3) {
    unittest.expect(o.createdAfter, unittest.equals('foo'));
    unittest.expect(o.createdBefore, unittest.equals('foo'));
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    unittest.expect(o.projectNumber, unittest.equals('foo'));
    checkUnnamed3538(o.status);
  }
  buildCounterSearchJobsRequest--;
}

buildUnnamed3539() {
  var o = new core.List<api.Job>();
  o.add(buildJob());
  o.add(buildJob());
  return o;
}

checkUnnamed3539(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterSearchJobsResponse = 0;
buildSearchJobsResponse() {
  var o = new api.SearchJobsResponse();
  buildCounterSearchJobsResponse++;
  if (buildCounterSearchJobsResponse < 3) {
    o.jobs = buildUnnamed3539();
    o.nextPageToken = "foo";
  }
  buildCounterSearchJobsResponse--;
  return o;
}

checkSearchJobsResponse(api.SearchJobsResponse o) {
  buildCounterSearchJobsResponse++;
  if (buildCounterSearchJobsResponse < 3) {
    checkUnnamed3539(o.jobs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterSearchJobsResponse--;
}

buildUnnamed3540() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3540(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSearchReadGroupSetsRequest = 0;
buildSearchReadGroupSetsRequest() {
  var o = new api.SearchReadGroupSetsRequest();
  buildCounterSearchReadGroupSetsRequest++;
  if (buildCounterSearchReadGroupSetsRequest < 3) {
    o.datasetIds = buildUnnamed3540();
    o.name = "foo";
    o.pageSize = 42;
    o.pageToken = "foo";
  }
  buildCounterSearchReadGroupSetsRequest--;
  return o;
}

checkSearchReadGroupSetsRequest(api.SearchReadGroupSetsRequest o) {
  buildCounterSearchReadGroupSetsRequest++;
  if (buildCounterSearchReadGroupSetsRequest < 3) {
    checkUnnamed3540(o.datasetIds);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
  }
  buildCounterSearchReadGroupSetsRequest--;
}

buildUnnamed3541() {
  var o = new core.List<api.ReadGroupSet>();
  o.add(buildReadGroupSet());
  o.add(buildReadGroupSet());
  return o;
}

checkUnnamed3541(core.List<api.ReadGroupSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReadGroupSet(o[0]);
  checkReadGroupSet(o[1]);
}

core.int buildCounterSearchReadGroupSetsResponse = 0;
buildSearchReadGroupSetsResponse() {
  var o = new api.SearchReadGroupSetsResponse();
  buildCounterSearchReadGroupSetsResponse++;
  if (buildCounterSearchReadGroupSetsResponse < 3) {
    o.nextPageToken = "foo";
    o.readGroupSets = buildUnnamed3541();
  }
  buildCounterSearchReadGroupSetsResponse--;
  return o;
}

checkSearchReadGroupSetsResponse(api.SearchReadGroupSetsResponse o) {
  buildCounterSearchReadGroupSetsResponse++;
  if (buildCounterSearchReadGroupSetsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3541(o.readGroupSets);
  }
  buildCounterSearchReadGroupSetsResponse--;
}

buildUnnamed3542() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3542(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3543() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3543(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSearchReadsRequest = 0;
buildSearchReadsRequest() {
  var o = new api.SearchReadsRequest();
  buildCounterSearchReadsRequest++;
  if (buildCounterSearchReadsRequest < 3) {
    o.end = "foo";
    o.pageSize = 42;
    o.pageToken = "foo";
    o.readGroupIds = buildUnnamed3542();
    o.readGroupSetIds = buildUnnamed3543();
    o.referenceName = "foo";
    o.start = "foo";
  }
  buildCounterSearchReadsRequest--;
  return o;
}

checkSearchReadsRequest(api.SearchReadsRequest o) {
  buildCounterSearchReadsRequest++;
  if (buildCounterSearchReadsRequest < 3) {
    unittest.expect(o.end, unittest.equals('foo'));
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    checkUnnamed3542(o.readGroupIds);
    checkUnnamed3543(o.readGroupSetIds);
    unittest.expect(o.referenceName, unittest.equals('foo'));
    unittest.expect(o.start, unittest.equals('foo'));
  }
  buildCounterSearchReadsRequest--;
}

buildUnnamed3544() {
  var o = new core.List<api.Read>();
  o.add(buildRead());
  o.add(buildRead());
  return o;
}

checkUnnamed3544(core.List<api.Read> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRead(o[0]);
  checkRead(o[1]);
}

core.int buildCounterSearchReadsResponse = 0;
buildSearchReadsResponse() {
  var o = new api.SearchReadsResponse();
  buildCounterSearchReadsResponse++;
  if (buildCounterSearchReadsResponse < 3) {
    o.alignments = buildUnnamed3544();
    o.nextPageToken = "foo";
  }
  buildCounterSearchReadsResponse--;
  return o;
}

checkSearchReadsResponse(api.SearchReadsResponse o) {
  buildCounterSearchReadsResponse++;
  if (buildCounterSearchReadsResponse < 3) {
    checkUnnamed3544(o.alignments);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterSearchReadsResponse--;
}

buildUnnamed3545() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3545(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3546() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3546(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSearchReferenceSetsRequest = 0;
buildSearchReferenceSetsRequest() {
  var o = new api.SearchReferenceSetsRequest();
  buildCounterSearchReferenceSetsRequest++;
  if (buildCounterSearchReferenceSetsRequest < 3) {
    o.accessions = buildUnnamed3545();
    o.assemblyId = "foo";
    o.md5checksums = buildUnnamed3546();
    o.pageSize = 42;
    o.pageToken = "foo";
  }
  buildCounterSearchReferenceSetsRequest--;
  return o;
}

checkSearchReferenceSetsRequest(api.SearchReferenceSetsRequest o) {
  buildCounterSearchReferenceSetsRequest++;
  if (buildCounterSearchReferenceSetsRequest < 3) {
    checkUnnamed3545(o.accessions);
    unittest.expect(o.assemblyId, unittest.equals('foo'));
    checkUnnamed3546(o.md5checksums);
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
  }
  buildCounterSearchReferenceSetsRequest--;
}

buildUnnamed3547() {
  var o = new core.List<api.ReferenceSet>();
  o.add(buildReferenceSet());
  o.add(buildReferenceSet());
  return o;
}

checkUnnamed3547(core.List<api.ReferenceSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReferenceSet(o[0]);
  checkReferenceSet(o[1]);
}

core.int buildCounterSearchReferenceSetsResponse = 0;
buildSearchReferenceSetsResponse() {
  var o = new api.SearchReferenceSetsResponse();
  buildCounterSearchReferenceSetsResponse++;
  if (buildCounterSearchReferenceSetsResponse < 3) {
    o.nextPageToken = "foo";
    o.referenceSets = buildUnnamed3547();
  }
  buildCounterSearchReferenceSetsResponse--;
  return o;
}

checkSearchReferenceSetsResponse(api.SearchReferenceSetsResponse o) {
  buildCounterSearchReferenceSetsResponse++;
  if (buildCounterSearchReferenceSetsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3547(o.referenceSets);
  }
  buildCounterSearchReferenceSetsResponse--;
}

buildUnnamed3548() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3548(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3549() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3549(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSearchReferencesRequest = 0;
buildSearchReferencesRequest() {
  var o = new api.SearchReferencesRequest();
  buildCounterSearchReferencesRequest++;
  if (buildCounterSearchReferencesRequest < 3) {
    o.accessions = buildUnnamed3548();
    o.md5checksums = buildUnnamed3549();
    o.pageSize = 42;
    o.pageToken = "foo";
    o.referenceSetId = "foo";
  }
  buildCounterSearchReferencesRequest--;
  return o;
}

checkSearchReferencesRequest(api.SearchReferencesRequest o) {
  buildCounterSearchReferencesRequest++;
  if (buildCounterSearchReferencesRequest < 3) {
    checkUnnamed3548(o.accessions);
    checkUnnamed3549(o.md5checksums);
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    unittest.expect(o.referenceSetId, unittest.equals('foo'));
  }
  buildCounterSearchReferencesRequest--;
}

buildUnnamed3550() {
  var o = new core.List<api.Reference>();
  o.add(buildReference());
  o.add(buildReference());
  return o;
}

checkUnnamed3550(core.List<api.Reference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReference(o[0]);
  checkReference(o[1]);
}

core.int buildCounterSearchReferencesResponse = 0;
buildSearchReferencesResponse() {
  var o = new api.SearchReferencesResponse();
  buildCounterSearchReferencesResponse++;
  if (buildCounterSearchReferencesResponse < 3) {
    o.nextPageToken = "foo";
    o.references = buildUnnamed3550();
  }
  buildCounterSearchReferencesResponse--;
  return o;
}

checkSearchReferencesResponse(api.SearchReferencesResponse o) {
  buildCounterSearchReferencesResponse++;
  if (buildCounterSearchReferencesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3550(o.references);
  }
  buildCounterSearchReferencesResponse--;
}

buildUnnamed3551() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3551(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSearchVariantSetsRequest = 0;
buildSearchVariantSetsRequest() {
  var o = new api.SearchVariantSetsRequest();
  buildCounterSearchVariantSetsRequest++;
  if (buildCounterSearchVariantSetsRequest < 3) {
    o.datasetIds = buildUnnamed3551();
    o.pageSize = 42;
    o.pageToken = "foo";
  }
  buildCounterSearchVariantSetsRequest--;
  return o;
}

checkSearchVariantSetsRequest(api.SearchVariantSetsRequest o) {
  buildCounterSearchVariantSetsRequest++;
  if (buildCounterSearchVariantSetsRequest < 3) {
    checkUnnamed3551(o.datasetIds);
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
  }
  buildCounterSearchVariantSetsRequest--;
}

buildUnnamed3552() {
  var o = new core.List<api.VariantSet>();
  o.add(buildVariantSet());
  o.add(buildVariantSet());
  return o;
}

checkUnnamed3552(core.List<api.VariantSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVariantSet(o[0]);
  checkVariantSet(o[1]);
}

core.int buildCounterSearchVariantSetsResponse = 0;
buildSearchVariantSetsResponse() {
  var o = new api.SearchVariantSetsResponse();
  buildCounterSearchVariantSetsResponse++;
  if (buildCounterSearchVariantSetsResponse < 3) {
    o.nextPageToken = "foo";
    o.variantSets = buildUnnamed3552();
  }
  buildCounterSearchVariantSetsResponse--;
  return o;
}

checkSearchVariantSetsResponse(api.SearchVariantSetsResponse o) {
  buildCounterSearchVariantSetsResponse++;
  if (buildCounterSearchVariantSetsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3552(o.variantSets);
  }
  buildCounterSearchVariantSetsResponse--;
}

buildUnnamed3553() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3553(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3554() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3554(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSearchVariantsRequest = 0;
buildSearchVariantsRequest() {
  var o = new api.SearchVariantsRequest();
  buildCounterSearchVariantsRequest++;
  if (buildCounterSearchVariantsRequest < 3) {
    o.callSetIds = buildUnnamed3553();
    o.end = "foo";
    o.maxCalls = 42;
    o.pageSize = 42;
    o.pageToken = "foo";
    o.referenceName = "foo";
    o.start = "foo";
    o.variantName = "foo";
    o.variantSetIds = buildUnnamed3554();
  }
  buildCounterSearchVariantsRequest--;
  return o;
}

checkSearchVariantsRequest(api.SearchVariantsRequest o) {
  buildCounterSearchVariantsRequest++;
  if (buildCounterSearchVariantsRequest < 3) {
    checkUnnamed3553(o.callSetIds);
    unittest.expect(o.end, unittest.equals('foo'));
    unittest.expect(o.maxCalls, unittest.equals(42));
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    unittest.expect(o.referenceName, unittest.equals('foo'));
    unittest.expect(o.start, unittest.equals('foo'));
    unittest.expect(o.variantName, unittest.equals('foo'));
    checkUnnamed3554(o.variantSetIds);
  }
  buildCounterSearchVariantsRequest--;
}

buildUnnamed3555() {
  var o = new core.List<api.Variant>();
  o.add(buildVariant());
  o.add(buildVariant());
  return o;
}

checkUnnamed3555(core.List<api.Variant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVariant(o[0]);
  checkVariant(o[1]);
}

core.int buildCounterSearchVariantsResponse = 0;
buildSearchVariantsResponse() {
  var o = new api.SearchVariantsResponse();
  buildCounterSearchVariantsResponse++;
  if (buildCounterSearchVariantsResponse < 3) {
    o.nextPageToken = "foo";
    o.variants = buildUnnamed3555();
  }
  buildCounterSearchVariantsResponse--;
  return o;
}

checkSearchVariantsResponse(api.SearchVariantsResponse o) {
  buildCounterSearchVariantsResponse++;
  if (buildCounterSearchVariantsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed3555(o.variants);
  }
  buildCounterSearchVariantsResponse--;
}

buildUnnamed3556() {
  var o = new core.List<api.TranscriptExon>();
  o.add(buildTranscriptExon());
  o.add(buildTranscriptExon());
  return o;
}

checkUnnamed3556(core.List<api.TranscriptExon> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTranscriptExon(o[0]);
  checkTranscriptExon(o[1]);
}

core.int buildCounterTranscript = 0;
buildTranscript() {
  var o = new api.Transcript();
  buildCounterTranscript++;
  if (buildCounterTranscript < 3) {
    o.codingSequence = buildTranscriptCodingSequence();
    o.exons = buildUnnamed3556();
    o.geneId = "foo";
  }
  buildCounterTranscript--;
  return o;
}

checkTranscript(api.Transcript o) {
  buildCounterTranscript++;
  if (buildCounterTranscript < 3) {
    checkTranscriptCodingSequence(o.codingSequence);
    checkUnnamed3556(o.exons);
    unittest.expect(o.geneId, unittest.equals('foo'));
  }
  buildCounterTranscript--;
}

core.int buildCounterTranscriptCodingSequence = 0;
buildTranscriptCodingSequence() {
  var o = new api.TranscriptCodingSequence();
  buildCounterTranscriptCodingSequence++;
  if (buildCounterTranscriptCodingSequence < 3) {
    o.end = "foo";
    o.start = "foo";
  }
  buildCounterTranscriptCodingSequence--;
  return o;
}

checkTranscriptCodingSequence(api.TranscriptCodingSequence o) {
  buildCounterTranscriptCodingSequence++;
  if (buildCounterTranscriptCodingSequence < 3) {
    unittest.expect(o.end, unittest.equals('foo'));
    unittest.expect(o.start, unittest.equals('foo'));
  }
  buildCounterTranscriptCodingSequence--;
}

core.int buildCounterTranscriptExon = 0;
buildTranscriptExon() {
  var o = new api.TranscriptExon();
  buildCounterTranscriptExon++;
  if (buildCounterTranscriptExon < 3) {
    o.end = "foo";
    o.frame = buildInt32Value();
    o.start = "foo";
  }
  buildCounterTranscriptExon--;
  return o;
}

checkTranscriptExon(api.TranscriptExon o) {
  buildCounterTranscriptExon++;
  if (buildCounterTranscriptExon < 3) {
    unittest.expect(o.end, unittest.equals('foo'));
    checkInt32Value(o.frame);
    unittest.expect(o.start, unittest.equals('foo'));
  }
  buildCounterTranscriptExon--;
}

buildUnnamed3557() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3557(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3558() {
  var o = new core.List<api.Call>();
  o.add(buildCall());
  o.add(buildCall());
  return o;
}

checkUnnamed3558(core.List<api.Call> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCall(o[0]);
  checkCall(o[1]);
}

buildUnnamed3559() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3559(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3560() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3560(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed3561() {
  var o = new core.Map<core.String, core.List<core.String>>();
  o["x"] = buildUnnamed3560();
  o["y"] = buildUnnamed3560();
  return o;
}

checkUnnamed3561(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed3560(o["x"]);
  checkUnnamed3560(o["y"]);
}

buildUnnamed3562() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3562(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVariant = 0;
buildVariant() {
  var o = new api.Variant();
  buildCounterVariant++;
  if (buildCounterVariant < 3) {
    o.alternateBases = buildUnnamed3557();
    o.calls = buildUnnamed3558();
    o.created = "foo";
    o.end = "foo";
    o.filter = buildUnnamed3559();
    o.id = "foo";
    o.info = buildUnnamed3561();
    o.names = buildUnnamed3562();
    o.quality = 42.0;
    o.referenceBases = "foo";
    o.referenceName = "foo";
    o.start = "foo";
    o.variantSetId = "foo";
  }
  buildCounterVariant--;
  return o;
}

checkVariant(api.Variant o) {
  buildCounterVariant++;
  if (buildCounterVariant < 3) {
    checkUnnamed3557(o.alternateBases);
    checkUnnamed3558(o.calls);
    unittest.expect(o.created, unittest.equals('foo'));
    unittest.expect(o.end, unittest.equals('foo'));
    checkUnnamed3559(o.filter);
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed3561(o.info);
    checkUnnamed3562(o.names);
    unittest.expect(o.quality, unittest.equals(42.0));
    unittest.expect(o.referenceBases, unittest.equals('foo'));
    unittest.expect(o.referenceName, unittest.equals('foo'));
    unittest.expect(o.start, unittest.equals('foo'));
    unittest.expect(o.variantSetId, unittest.equals('foo'));
  }
  buildCounterVariant--;
}

buildUnnamed3563() {
  var o = new core.List<api.VariantAnnotationCondition>();
  o.add(buildVariantAnnotationCondition());
  o.add(buildVariantAnnotationCondition());
  return o;
}

checkUnnamed3563(core.List<api.VariantAnnotationCondition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVariantAnnotationCondition(o[0]);
  checkVariantAnnotationCondition(o[1]);
}

buildUnnamed3564() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3564(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVariantAnnotation = 0;
buildVariantAnnotation() {
  var o = new api.VariantAnnotation();
  buildCounterVariantAnnotation++;
  if (buildCounterVariantAnnotation < 3) {
    o.alternateBases = "foo";
    o.clinicalSignificance = "foo";
    o.conditions = buildUnnamed3563();
    o.effect = "foo";
    o.geneId = "foo";
    o.transcriptIds = buildUnnamed3564();
    o.type = "foo";
  }
  buildCounterVariantAnnotation--;
  return o;
}

checkVariantAnnotation(api.VariantAnnotation o) {
  buildCounterVariantAnnotation++;
  if (buildCounterVariantAnnotation < 3) {
    unittest.expect(o.alternateBases, unittest.equals('foo'));
    unittest.expect(o.clinicalSignificance, unittest.equals('foo'));
    checkUnnamed3563(o.conditions);
    unittest.expect(o.effect, unittest.equals('foo'));
    unittest.expect(o.geneId, unittest.equals('foo'));
    checkUnnamed3564(o.transcriptIds);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterVariantAnnotation--;
}

buildUnnamed3565() {
  var o = new core.List<api.ExternalId>();
  o.add(buildExternalId());
  o.add(buildExternalId());
  return o;
}

checkUnnamed3565(core.List<api.ExternalId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExternalId(o[0]);
  checkExternalId(o[1]);
}

buildUnnamed3566() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed3566(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVariantAnnotationCondition = 0;
buildVariantAnnotationCondition() {
  var o = new api.VariantAnnotationCondition();
  buildCounterVariantAnnotationCondition++;
  if (buildCounterVariantAnnotationCondition < 3) {
    o.conceptId = "foo";
    o.externalIds = buildUnnamed3565();
    o.names = buildUnnamed3566();
    o.omimId = "foo";
  }
  buildCounterVariantAnnotationCondition--;
  return o;
}

checkVariantAnnotationCondition(api.VariantAnnotationCondition o) {
  buildCounterVariantAnnotationCondition++;
  if (buildCounterVariantAnnotationCondition < 3) {
    unittest.expect(o.conceptId, unittest.equals('foo'));
    checkUnnamed3565(o.externalIds);
    checkUnnamed3566(o.names);
    unittest.expect(o.omimId, unittest.equals('foo'));
  }
  buildCounterVariantAnnotationCondition--;
}

buildUnnamed3567() {
  var o = new core.List<api.Metadata>();
  o.add(buildMetadata());
  o.add(buildMetadata());
  return o;
}

checkUnnamed3567(core.List<api.Metadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetadata(o[0]);
  checkMetadata(o[1]);
}

buildUnnamed3568() {
  var o = new core.List<api.ReferenceBound>();
  o.add(buildReferenceBound());
  o.add(buildReferenceBound());
  return o;
}

checkUnnamed3568(core.List<api.ReferenceBound> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReferenceBound(o[0]);
  checkReferenceBound(o[1]);
}

core.int buildCounterVariantSet = 0;
buildVariantSet() {
  var o = new api.VariantSet();
  buildCounterVariantSet++;
  if (buildCounterVariantSet < 3) {
    o.datasetId = "foo";
    o.description = "foo";
    o.id = "foo";
    o.metadata = buildUnnamed3567();
    o.name = "foo";
    o.referenceBounds = buildUnnamed3568();
    o.referenceSetId = "foo";
  }
  buildCounterVariantSet--;
  return o;
}

checkVariantSet(api.VariantSet o) {
  buildCounterVariantSet++;
  if (buildCounterVariantSet < 3) {
    unittest.expect(o.datasetId, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed3567(o.metadata);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed3568(o.referenceBounds);
    unittest.expect(o.referenceSetId, unittest.equals('foo'));
  }
  buildCounterVariantSet--;
}


main() {
  unittest.group("obj-schema-Annotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildAnnotation();
      var od = new api.Annotation.fromJson(o.toJson());
      checkAnnotation(od);
    });
  });


  unittest.group("obj-schema-AnnotationSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildAnnotationSet();
      var od = new api.AnnotationSet.fromJson(o.toJson());
      checkAnnotationSet(od);
    });
  });


  unittest.group("obj-schema-BatchAnnotationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchAnnotationsResponse();
      var od = new api.BatchAnnotationsResponse.fromJson(o.toJson());
      checkBatchAnnotationsResponse(od);
    });
  });


  unittest.group("obj-schema-BatchAnnotationsResponseEntry", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchAnnotationsResponseEntry();
      var od = new api.BatchAnnotationsResponseEntry.fromJson(o.toJson());
      checkBatchAnnotationsResponseEntry(od);
    });
  });


  unittest.group("obj-schema-BatchAnnotationsResponseEntryStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchAnnotationsResponseEntryStatus();
      var od = new api.BatchAnnotationsResponseEntryStatus.fromJson(o.toJson());
      checkBatchAnnotationsResponseEntryStatus(od);
    });
  });


  unittest.group("obj-schema-BatchCreateAnnotationsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildBatchCreateAnnotationsRequest();
      var od = new api.BatchCreateAnnotationsRequest.fromJson(o.toJson());
      checkBatchCreateAnnotationsRequest(od);
    });
  });


  unittest.group("obj-schema-Call", () {
    unittest.test("to-json--from-json", () {
      var o = buildCall();
      var od = new api.Call.fromJson(o.toJson());
      checkCall(od);
    });
  });


  unittest.group("obj-schema-CallSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildCallSet();
      var od = new api.CallSet.fromJson(o.toJson());
      checkCallSet(od);
    });
  });


  unittest.group("obj-schema-CigarUnit", () {
    unittest.test("to-json--from-json", () {
      var o = buildCigarUnit();
      var od = new api.CigarUnit.fromJson(o.toJson());
      checkCigarUnit(od);
    });
  });


  unittest.group("obj-schema-CoverageBucket", () {
    unittest.test("to-json--from-json", () {
      var o = buildCoverageBucket();
      var od = new api.CoverageBucket.fromJson(o.toJson());
      checkCoverageBucket(od);
    });
  });


  unittest.group("obj-schema-Dataset", () {
    unittest.test("to-json--from-json", () {
      var o = buildDataset();
      var od = new api.Dataset.fromJson(o.toJson());
      checkDataset(od);
    });
  });


  unittest.group("obj-schema-ExperimentalCreateJobRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildExperimentalCreateJobRequest();
      var od = new api.ExperimentalCreateJobRequest.fromJson(o.toJson());
      checkExperimentalCreateJobRequest(od);
    });
  });


  unittest.group("obj-schema-ExperimentalCreateJobResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildExperimentalCreateJobResponse();
      var od = new api.ExperimentalCreateJobResponse.fromJson(o.toJson());
      checkExperimentalCreateJobResponse(od);
    });
  });


  unittest.group("obj-schema-ExportReadGroupSetsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildExportReadGroupSetsRequest();
      var od = new api.ExportReadGroupSetsRequest.fromJson(o.toJson());
      checkExportReadGroupSetsRequest(od);
    });
  });


  unittest.group("obj-schema-ExportReadGroupSetsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildExportReadGroupSetsResponse();
      var od = new api.ExportReadGroupSetsResponse.fromJson(o.toJson());
      checkExportReadGroupSetsResponse(od);
    });
  });


  unittest.group("obj-schema-ExportVariantSetRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildExportVariantSetRequest();
      var od = new api.ExportVariantSetRequest.fromJson(o.toJson());
      checkExportVariantSetRequest(od);
    });
  });


  unittest.group("obj-schema-ExportVariantSetResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildExportVariantSetResponse();
      var od = new api.ExportVariantSetResponse.fromJson(o.toJson());
      checkExportVariantSetResponse(od);
    });
  });


  unittest.group("obj-schema-ExternalId", () {
    unittest.test("to-json--from-json", () {
      var o = buildExternalId();
      var od = new api.ExternalId.fromJson(o.toJson());
      checkExternalId(od);
    });
  });


  unittest.group("obj-schema-ImportReadGroupSetsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildImportReadGroupSetsRequest();
      var od = new api.ImportReadGroupSetsRequest.fromJson(o.toJson());
      checkImportReadGroupSetsRequest(od);
    });
  });


  unittest.group("obj-schema-ImportReadGroupSetsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildImportReadGroupSetsResponse();
      var od = new api.ImportReadGroupSetsResponse.fromJson(o.toJson());
      checkImportReadGroupSetsResponse(od);
    });
  });


  unittest.group("obj-schema-ImportVariantsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildImportVariantsRequest();
      var od = new api.ImportVariantsRequest.fromJson(o.toJson());
      checkImportVariantsRequest(od);
    });
  });


  unittest.group("obj-schema-ImportVariantsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildImportVariantsResponse();
      var od = new api.ImportVariantsResponse.fromJson(o.toJson());
      checkImportVariantsResponse(od);
    });
  });


  unittest.group("obj-schema-Int32Value", () {
    unittest.test("to-json--from-json", () {
      var o = buildInt32Value();
      var od = new api.Int32Value.fromJson(o.toJson());
      checkInt32Value(od);
    });
  });


  unittest.group("obj-schema-Job", () {
    unittest.test("to-json--from-json", () {
      var o = buildJob();
      var od = new api.Job.fromJson(o.toJson());
      checkJob(od);
    });
  });


  unittest.group("obj-schema-JobRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobRequest();
      var od = new api.JobRequest.fromJson(o.toJson());
      checkJobRequest(od);
    });
  });


  unittest.group("obj-schema-KeyValue", () {
    unittest.test("to-json--from-json", () {
      var o = buildKeyValue();
      var od = new api.KeyValue.fromJson(o.toJson());
      checkKeyValue(od);
    });
  });


  unittest.group("obj-schema-LinearAlignment", () {
    unittest.test("to-json--from-json", () {
      var o = buildLinearAlignment();
      var od = new api.LinearAlignment.fromJson(o.toJson());
      checkLinearAlignment(od);
    });
  });


  unittest.group("obj-schema-ListBasesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListBasesResponse();
      var od = new api.ListBasesResponse.fromJson(o.toJson());
      checkListBasesResponse(od);
    });
  });


  unittest.group("obj-schema-ListCoverageBucketsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListCoverageBucketsResponse();
      var od = new api.ListCoverageBucketsResponse.fromJson(o.toJson());
      checkListCoverageBucketsResponse(od);
    });
  });


  unittest.group("obj-schema-ListDatasetsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListDatasetsResponse();
      var od = new api.ListDatasetsResponse.fromJson(o.toJson());
      checkListDatasetsResponse(od);
    });
  });


  unittest.group("obj-schema-MergeVariantsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildMergeVariantsRequest();
      var od = new api.MergeVariantsRequest.fromJson(o.toJson());
      checkMergeVariantsRequest(od);
    });
  });


  unittest.group("obj-schema-Metadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetadata();
      var od = new api.Metadata.fromJson(o.toJson());
      checkMetadata(od);
    });
  });


  unittest.group("obj-schema-Position", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosition();
      var od = new api.Position.fromJson(o.toJson());
      checkPosition(od);
    });
  });


  unittest.group("obj-schema-QueryRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildQueryRange();
      var od = new api.QueryRange.fromJson(o.toJson());
      checkQueryRange(od);
    });
  });


  unittest.group("obj-schema-Range", () {
    unittest.test("to-json--from-json", () {
      var o = buildRange();
      var od = new api.Range.fromJson(o.toJson());
      checkRange(od);
    });
  });


  unittest.group("obj-schema-RangePosition", () {
    unittest.test("to-json--from-json", () {
      var o = buildRangePosition();
      var od = new api.RangePosition.fromJson(o.toJson());
      checkRangePosition(od);
    });
  });


  unittest.group("obj-schema-Read", () {
    unittest.test("to-json--from-json", () {
      var o = buildRead();
      var od = new api.Read.fromJson(o.toJson());
      checkRead(od);
    });
  });


  unittest.group("obj-schema-ReadGroup", () {
    unittest.test("to-json--from-json", () {
      var o = buildReadGroup();
      var od = new api.ReadGroup.fromJson(o.toJson());
      checkReadGroup(od);
    });
  });


  unittest.group("obj-schema-ReadGroupExperiment", () {
    unittest.test("to-json--from-json", () {
      var o = buildReadGroupExperiment();
      var od = new api.ReadGroupExperiment.fromJson(o.toJson());
      checkReadGroupExperiment(od);
    });
  });


  unittest.group("obj-schema-ReadGroupProgram", () {
    unittest.test("to-json--from-json", () {
      var o = buildReadGroupProgram();
      var od = new api.ReadGroupProgram.fromJson(o.toJson());
      checkReadGroupProgram(od);
    });
  });


  unittest.group("obj-schema-ReadGroupSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildReadGroupSet();
      var od = new api.ReadGroupSet.fromJson(o.toJson());
      checkReadGroupSet(od);
    });
  });


  unittest.group("obj-schema-Reference", () {
    unittest.test("to-json--from-json", () {
      var o = buildReference();
      var od = new api.Reference.fromJson(o.toJson());
      checkReference(od);
    });
  });


  unittest.group("obj-schema-ReferenceBound", () {
    unittest.test("to-json--from-json", () {
      var o = buildReferenceBound();
      var od = new api.ReferenceBound.fromJson(o.toJson());
      checkReferenceBound(od);
    });
  });


  unittest.group("obj-schema-ReferenceSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildReferenceSet();
      var od = new api.ReferenceSet.fromJson(o.toJson());
      checkReferenceSet(od);
    });
  });


  unittest.group("obj-schema-SearchAnnotationSetsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchAnnotationSetsRequest();
      var od = new api.SearchAnnotationSetsRequest.fromJson(o.toJson());
      checkSearchAnnotationSetsRequest(od);
    });
  });


  unittest.group("obj-schema-SearchAnnotationSetsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchAnnotationSetsResponse();
      var od = new api.SearchAnnotationSetsResponse.fromJson(o.toJson());
      checkSearchAnnotationSetsResponse(od);
    });
  });


  unittest.group("obj-schema-SearchAnnotationsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchAnnotationsRequest();
      var od = new api.SearchAnnotationsRequest.fromJson(o.toJson());
      checkSearchAnnotationsRequest(od);
    });
  });


  unittest.group("obj-schema-SearchAnnotationsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchAnnotationsResponse();
      var od = new api.SearchAnnotationsResponse.fromJson(o.toJson());
      checkSearchAnnotationsResponse(od);
    });
  });


  unittest.group("obj-schema-SearchCallSetsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchCallSetsRequest();
      var od = new api.SearchCallSetsRequest.fromJson(o.toJson());
      checkSearchCallSetsRequest(od);
    });
  });


  unittest.group("obj-schema-SearchCallSetsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchCallSetsResponse();
      var od = new api.SearchCallSetsResponse.fromJson(o.toJson());
      checkSearchCallSetsResponse(od);
    });
  });


  unittest.group("obj-schema-SearchJobsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchJobsRequest();
      var od = new api.SearchJobsRequest.fromJson(o.toJson());
      checkSearchJobsRequest(od);
    });
  });


  unittest.group("obj-schema-SearchJobsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchJobsResponse();
      var od = new api.SearchJobsResponse.fromJson(o.toJson());
      checkSearchJobsResponse(od);
    });
  });


  unittest.group("obj-schema-SearchReadGroupSetsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchReadGroupSetsRequest();
      var od = new api.SearchReadGroupSetsRequest.fromJson(o.toJson());
      checkSearchReadGroupSetsRequest(od);
    });
  });


  unittest.group("obj-schema-SearchReadGroupSetsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchReadGroupSetsResponse();
      var od = new api.SearchReadGroupSetsResponse.fromJson(o.toJson());
      checkSearchReadGroupSetsResponse(od);
    });
  });


  unittest.group("obj-schema-SearchReadsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchReadsRequest();
      var od = new api.SearchReadsRequest.fromJson(o.toJson());
      checkSearchReadsRequest(od);
    });
  });


  unittest.group("obj-schema-SearchReadsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchReadsResponse();
      var od = new api.SearchReadsResponse.fromJson(o.toJson());
      checkSearchReadsResponse(od);
    });
  });


  unittest.group("obj-schema-SearchReferenceSetsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchReferenceSetsRequest();
      var od = new api.SearchReferenceSetsRequest.fromJson(o.toJson());
      checkSearchReferenceSetsRequest(od);
    });
  });


  unittest.group("obj-schema-SearchReferenceSetsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchReferenceSetsResponse();
      var od = new api.SearchReferenceSetsResponse.fromJson(o.toJson());
      checkSearchReferenceSetsResponse(od);
    });
  });


  unittest.group("obj-schema-SearchReferencesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchReferencesRequest();
      var od = new api.SearchReferencesRequest.fromJson(o.toJson());
      checkSearchReferencesRequest(od);
    });
  });


  unittest.group("obj-schema-SearchReferencesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchReferencesResponse();
      var od = new api.SearchReferencesResponse.fromJson(o.toJson());
      checkSearchReferencesResponse(od);
    });
  });


  unittest.group("obj-schema-SearchVariantSetsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchVariantSetsRequest();
      var od = new api.SearchVariantSetsRequest.fromJson(o.toJson());
      checkSearchVariantSetsRequest(od);
    });
  });


  unittest.group("obj-schema-SearchVariantSetsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchVariantSetsResponse();
      var od = new api.SearchVariantSetsResponse.fromJson(o.toJson());
      checkSearchVariantSetsResponse(od);
    });
  });


  unittest.group("obj-schema-SearchVariantsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchVariantsRequest();
      var od = new api.SearchVariantsRequest.fromJson(o.toJson());
      checkSearchVariantsRequest(od);
    });
  });


  unittest.group("obj-schema-SearchVariantsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchVariantsResponse();
      var od = new api.SearchVariantsResponse.fromJson(o.toJson());
      checkSearchVariantsResponse(od);
    });
  });


  unittest.group("obj-schema-Transcript", () {
    unittest.test("to-json--from-json", () {
      var o = buildTranscript();
      var od = new api.Transcript.fromJson(o.toJson());
      checkTranscript(od);
    });
  });


  unittest.group("obj-schema-TranscriptCodingSequence", () {
    unittest.test("to-json--from-json", () {
      var o = buildTranscriptCodingSequence();
      var od = new api.TranscriptCodingSequence.fromJson(o.toJson());
      checkTranscriptCodingSequence(od);
    });
  });


  unittest.group("obj-schema-TranscriptExon", () {
    unittest.test("to-json--from-json", () {
      var o = buildTranscriptExon();
      var od = new api.TranscriptExon.fromJson(o.toJson());
      checkTranscriptExon(od);
    });
  });


  unittest.group("obj-schema-Variant", () {
    unittest.test("to-json--from-json", () {
      var o = buildVariant();
      var od = new api.Variant.fromJson(o.toJson());
      checkVariant(od);
    });
  });


  unittest.group("obj-schema-VariantAnnotation", () {
    unittest.test("to-json--from-json", () {
      var o = buildVariantAnnotation();
      var od = new api.VariantAnnotation.fromJson(o.toJson());
      checkVariantAnnotation(od);
    });
  });


  unittest.group("obj-schema-VariantAnnotationCondition", () {
    unittest.test("to-json--from-json", () {
      var o = buildVariantAnnotationCondition();
      var od = new api.VariantAnnotationCondition.fromJson(o.toJson());
      checkVariantAnnotationCondition(od);
    });
  });


  unittest.group("obj-schema-VariantSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildVariantSet();
      var od = new api.VariantSet.fromJson(o.toJson());
      checkVariantSet(od);
    });
  });


  unittest.group("resource-AnnotationSetsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.AnnotationSetsResourceApi res = new api.GenomicsApi(mock).annotationSets;
      var arg_request = buildAnnotationSet();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.AnnotationSet.fromJson(json);
        checkAnnotationSet(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("annotationSets"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAnnotationSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request).then(unittest.expectAsync(((api.AnnotationSet response) {
        checkAnnotationSet(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.AnnotationSetsResourceApi res = new api.GenomicsApi(mock).annotationSets;
      var arg_annotationSetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("annotationSets/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_annotationSetId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_annotationSetId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.AnnotationSetsResourceApi res = new api.GenomicsApi(mock).annotationSets;
      var arg_annotationSetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("annotationSets/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_annotationSetId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAnnotationSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_annotationSetId).then(unittest.expectAsync(((api.AnnotationSet response) {
        checkAnnotationSet(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new HttpServerMock();
      api.AnnotationSetsResourceApi res = new api.GenomicsApi(mock).annotationSets;
      var arg_request = buildAnnotationSet();
      var arg_annotationSetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.AnnotationSet.fromJson(json);
        checkAnnotationSet(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("annotationSets/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_annotationSetId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAnnotationSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_annotationSetId).then(unittest.expectAsync(((api.AnnotationSet response) {
        checkAnnotationSet(response);
      })));
    });

    unittest.test("method--search", () {

      var mock = new HttpServerMock();
      api.AnnotationSetsResourceApi res = new api.GenomicsApi(mock).annotationSets;
      var arg_request = buildSearchAnnotationSetsRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.SearchAnnotationSetsRequest.fromJson(json);
        checkSearchAnnotationSetsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 21), unittest.equals("annotationSets/search"));
        pathOffset += 21;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSearchAnnotationSetsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.search(arg_request).then(unittest.expectAsync(((api.SearchAnnotationSetsResponse response) {
        checkSearchAnnotationSetsResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.AnnotationSetsResourceApi res = new api.GenomicsApi(mock).annotationSets;
      var arg_request = buildAnnotationSet();
      var arg_annotationSetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.AnnotationSet.fromJson(json);
        checkAnnotationSet(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("annotationSets/"));
        pathOffset += 15;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_annotationSetId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAnnotationSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_annotationSetId).then(unittest.expectAsync(((api.AnnotationSet response) {
        checkAnnotationSet(response);
      })));
    });

  });


  unittest.group("resource-AnnotationsResourceApi", () {
    unittest.test("method--batchCreate", () {

      var mock = new HttpServerMock();
      api.AnnotationsResourceApi res = new api.GenomicsApi(mock).annotations;
      var arg_request = buildBatchCreateAnnotationsRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.BatchCreateAnnotationsRequest.fromJson(json);
        checkBatchCreateAnnotationsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 23), unittest.equals("annotations:batchCreate"));
        pathOffset += 23;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBatchAnnotationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.batchCreate(arg_request).then(unittest.expectAsync(((api.BatchAnnotationsResponse response) {
        checkBatchAnnotationsResponse(response);
      })));
    });

    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.AnnotationsResourceApi res = new api.GenomicsApi(mock).annotations;
      var arg_request = buildAnnotation();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Annotation.fromJson(json);
        checkAnnotation(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("annotations"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAnnotation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request).then(unittest.expectAsync(((api.Annotation response) {
        checkAnnotation(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.AnnotationsResourceApi res = new api.GenomicsApi(mock).annotations;
      var arg_annotationId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("annotations/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_annotationId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_annotationId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.AnnotationsResourceApi res = new api.GenomicsApi(mock).annotations;
      var arg_annotationId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("annotations/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_annotationId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAnnotation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_annotationId).then(unittest.expectAsync(((api.Annotation response) {
        checkAnnotation(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new HttpServerMock();
      api.AnnotationsResourceApi res = new api.GenomicsApi(mock).annotations;
      var arg_request = buildAnnotation();
      var arg_annotationId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Annotation.fromJson(json);
        checkAnnotation(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("annotations/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_annotationId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAnnotation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_annotationId).then(unittest.expectAsync(((api.Annotation response) {
        checkAnnotation(response);
      })));
    });

    unittest.test("method--search", () {

      var mock = new HttpServerMock();
      api.AnnotationsResourceApi res = new api.GenomicsApi(mock).annotations;
      var arg_request = buildSearchAnnotationsRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.SearchAnnotationsRequest.fromJson(json);
        checkSearchAnnotationsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("annotations/search"));
        pathOffset += 18;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSearchAnnotationsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.search(arg_request).then(unittest.expectAsync(((api.SearchAnnotationsResponse response) {
        checkSearchAnnotationsResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.AnnotationsResourceApi res = new api.GenomicsApi(mock).annotations;
      var arg_request = buildAnnotation();
      var arg_annotationId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Annotation.fromJson(json);
        checkAnnotation(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("annotations/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_annotationId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildAnnotation());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_annotationId).then(unittest.expectAsync(((api.Annotation response) {
        checkAnnotation(response);
      })));
    });

  });


  unittest.group("resource-CallsetsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.CallsetsResourceApi res = new api.GenomicsApi(mock).callsets;
      var arg_request = buildCallSet();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.CallSet.fromJson(json);
        checkCallSet(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("callsets"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCallSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request).then(unittest.expectAsync(((api.CallSet response) {
        checkCallSet(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.CallsetsResourceApi res = new api.GenomicsApi(mock).callsets;
      var arg_callSetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("callsets/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_callSetId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_callSetId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.CallsetsResourceApi res = new api.GenomicsApi(mock).callsets;
      var arg_callSetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("callsets/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_callSetId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCallSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_callSetId).then(unittest.expectAsync(((api.CallSet response) {
        checkCallSet(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new HttpServerMock();
      api.CallsetsResourceApi res = new api.GenomicsApi(mock).callsets;
      var arg_request = buildCallSet();
      var arg_callSetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.CallSet.fromJson(json);
        checkCallSet(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("callsets/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_callSetId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCallSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_callSetId).then(unittest.expectAsync(((api.CallSet response) {
        checkCallSet(response);
      })));
    });

    unittest.test("method--search", () {

      var mock = new HttpServerMock();
      api.CallsetsResourceApi res = new api.GenomicsApi(mock).callsets;
      var arg_request = buildSearchCallSetsRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.SearchCallSetsRequest.fromJson(json);
        checkSearchCallSetsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("callsets/search"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSearchCallSetsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.search(arg_request).then(unittest.expectAsync(((api.SearchCallSetsResponse response) {
        checkSearchCallSetsResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.CallsetsResourceApi res = new api.GenomicsApi(mock).callsets;
      var arg_request = buildCallSet();
      var arg_callSetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.CallSet.fromJson(json);
        checkCallSet(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("callsets/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_callSetId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildCallSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_callSetId).then(unittest.expectAsync(((api.CallSet response) {
        checkCallSet(response);
      })));
    });

  });


  unittest.group("resource-DatasetsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.DatasetsResourceApi res = new api.GenomicsApi(mock).datasets;
      var arg_request = buildDataset();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Dataset.fromJson(json);
        checkDataset(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("datasets"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDataset());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request).then(unittest.expectAsync(((api.Dataset response) {
        checkDataset(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.DatasetsResourceApi res = new api.GenomicsApi(mock).datasets;
      var arg_datasetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("datasets/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_datasetId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_datasetId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.DatasetsResourceApi res = new api.GenomicsApi(mock).datasets;
      var arg_datasetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("datasets/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_datasetId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDataset());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_datasetId).then(unittest.expectAsync(((api.Dataset response) {
        checkDataset(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.DatasetsResourceApi res = new api.GenomicsApi(mock).datasets;
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_projectNumber = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("datasets"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["projectNumber"].first, unittest.equals(arg_projectNumber));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListDatasetsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(pageSize: arg_pageSize, pageToken: arg_pageToken, projectNumber: arg_projectNumber).then(unittest.expectAsync(((api.ListDatasetsResponse response) {
        checkListDatasetsResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new HttpServerMock();
      api.DatasetsResourceApi res = new api.GenomicsApi(mock).datasets;
      var arg_request = buildDataset();
      var arg_datasetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Dataset.fromJson(json);
        checkDataset(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("datasets/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_datasetId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDataset());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_datasetId).then(unittest.expectAsync(((api.Dataset response) {
        checkDataset(response);
      })));
    });

    unittest.test("method--undelete", () {

      var mock = new HttpServerMock();
      api.DatasetsResourceApi res = new api.GenomicsApi(mock).datasets;
      var arg_datasetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("datasets/"));
        pathOffset += 9;
        index = path.indexOf("/undelete", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_datasetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("/undelete"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDataset());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.undelete(arg_datasetId).then(unittest.expectAsync(((api.Dataset response) {
        checkDataset(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.DatasetsResourceApi res = new api.GenomicsApi(mock).datasets;
      var arg_request = buildDataset();
      var arg_datasetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Dataset.fromJson(json);
        checkDataset(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("datasets/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_datasetId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildDataset());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_datasetId).then(unittest.expectAsync(((api.Dataset response) {
        checkDataset(response);
      })));
    });

  });


  unittest.group("resource-ExperimentalJobsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.ExperimentalJobsResourceApi res = new api.GenomicsApi(mock).experimental.jobs;
      var arg_request = buildExperimentalCreateJobRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ExperimentalCreateJobRequest.fromJson(json);
        checkExperimentalCreateJobRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 24), unittest.equals("experimental/jobs/create"));
        pathOffset += 24;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildExperimentalCreateJobResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request).then(unittest.expectAsync(((api.ExperimentalCreateJobResponse response) {
        checkExperimentalCreateJobResponse(response);
      })));
    });

  });


  unittest.group("resource-JobsResourceApi", () {
    unittest.test("method--cancel", () {

      var mock = new HttpServerMock();
      api.JobsResourceApi res = new api.GenomicsApi(mock).jobs;
      var arg_jobId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("jobs/"));
        pathOffset += 5;
        index = path.indexOf("/cancel", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/cancel"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.cancel(arg_jobId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.JobsResourceApi res = new api.GenomicsApi(mock).jobs;
      var arg_jobId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 5), unittest.equals("jobs/"));
        pathOffset += 5;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_jobId).then(unittest.expectAsync(((api.Job response) {
        checkJob(response);
      })));
    });

    unittest.test("method--search", () {

      var mock = new HttpServerMock();
      api.JobsResourceApi res = new api.GenomicsApi(mock).jobs;
      var arg_request = buildSearchJobsRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.SearchJobsRequest.fromJson(json);
        checkSearchJobsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("jobs/search"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSearchJobsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.search(arg_request).then(unittest.expectAsync(((api.SearchJobsResponse response) {
        checkSearchJobsResponse(response);
      })));
    });

  });


  unittest.group("resource-ReadgroupsetsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.ReadgroupsetsResourceApi res = new api.GenomicsApi(mock).readgroupsets;
      var arg_readGroupSetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("readgroupsets/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_readGroupSetId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_readGroupSetId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--export", () {

      var mock = new HttpServerMock();
      api.ReadgroupsetsResourceApi res = new api.GenomicsApi(mock).readgroupsets;
      var arg_request = buildExportReadGroupSetsRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ExportReadGroupSetsRequest.fromJson(json);
        checkExportReadGroupSetsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 20), unittest.equals("readgroupsets/export"));
        pathOffset += 20;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildExportReadGroupSetsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.export(arg_request).then(unittest.expectAsync(((api.ExportReadGroupSetsResponse response) {
        checkExportReadGroupSetsResponse(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ReadgroupsetsResourceApi res = new api.GenomicsApi(mock).readgroupsets;
      var arg_readGroupSetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("readgroupsets/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_readGroupSetId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildReadGroupSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_readGroupSetId).then(unittest.expectAsync(((api.ReadGroupSet response) {
        checkReadGroupSet(response);
      })));
    });

    unittest.test("method--import", () {

      var mock = new HttpServerMock();
      api.ReadgroupsetsResourceApi res = new api.GenomicsApi(mock).readgroupsets;
      var arg_request = buildImportReadGroupSetsRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ImportReadGroupSetsRequest.fromJson(json);
        checkImportReadGroupSetsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 20), unittest.equals("readgroupsets/import"));
        pathOffset += 20;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildImportReadGroupSetsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.import(arg_request).then(unittest.expectAsync(((api.ImportReadGroupSetsResponse response) {
        checkImportReadGroupSetsResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new HttpServerMock();
      api.ReadgroupsetsResourceApi res = new api.GenomicsApi(mock).readgroupsets;
      var arg_request = buildReadGroupSet();
      var arg_readGroupSetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ReadGroupSet.fromJson(json);
        checkReadGroupSet(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("readgroupsets/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_readGroupSetId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildReadGroupSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_readGroupSetId).then(unittest.expectAsync(((api.ReadGroupSet response) {
        checkReadGroupSet(response);
      })));
    });

    unittest.test("method--search", () {

      var mock = new HttpServerMock();
      api.ReadgroupsetsResourceApi res = new api.GenomicsApi(mock).readgroupsets;
      var arg_request = buildSearchReadGroupSetsRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.SearchReadGroupSetsRequest.fromJson(json);
        checkSearchReadGroupSetsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 20), unittest.equals("readgroupsets/search"));
        pathOffset += 20;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSearchReadGroupSetsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.search(arg_request).then(unittest.expectAsync(((api.SearchReadGroupSetsResponse response) {
        checkSearchReadGroupSetsResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.ReadgroupsetsResourceApi res = new api.GenomicsApi(mock).readgroupsets;
      var arg_request = buildReadGroupSet();
      var arg_readGroupSetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ReadGroupSet.fromJson(json);
        checkReadGroupSet(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("readgroupsets/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_readGroupSetId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildReadGroupSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_readGroupSetId).then(unittest.expectAsync(((api.ReadGroupSet response) {
        checkReadGroupSet(response);
      })));
    });

  });


  unittest.group("resource-ReadgroupsetsCoveragebucketsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ReadgroupsetsCoveragebucketsResourceApi res = new api.GenomicsApi(mock).readgroupsets.coveragebuckets;
      var arg_readGroupSetId = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_range_end = "foo";
      var arg_range_referenceName = "foo";
      var arg_range_start = "foo";
      var arg_targetBucketWidth = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("readgroupsets/"));
        pathOffset += 14;
        index = path.indexOf("/coveragebuckets", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_readGroupSetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("/coveragebuckets"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["range.end"].first, unittest.equals(arg_range_end));
        unittest.expect(queryMap["range.referenceName"].first, unittest.equals(arg_range_referenceName));
        unittest.expect(queryMap["range.start"].first, unittest.equals(arg_range_start));
        unittest.expect(queryMap["targetBucketWidth"].first, unittest.equals(arg_targetBucketWidth));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListCoverageBucketsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_readGroupSetId, pageSize: arg_pageSize, pageToken: arg_pageToken, range_end: arg_range_end, range_referenceName: arg_range_referenceName, range_start: arg_range_start, targetBucketWidth: arg_targetBucketWidth).then(unittest.expectAsync(((api.ListCoverageBucketsResponse response) {
        checkListCoverageBucketsResponse(response);
      })));
    });

  });


  unittest.group("resource-ReadsResourceApi", () {
    unittest.test("method--search", () {

      var mock = new HttpServerMock();
      api.ReadsResourceApi res = new api.GenomicsApi(mock).reads;
      var arg_request = buildSearchReadsRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.SearchReadsRequest.fromJson(json);
        checkSearchReadsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("reads/search"));
        pathOffset += 12;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSearchReadsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.search(arg_request).then(unittest.expectAsync(((api.SearchReadsResponse response) {
        checkSearchReadsResponse(response);
      })));
    });

  });


  unittest.group("resource-ReferencesResourceApi", () {
    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ReferencesResourceApi res = new api.GenomicsApi(mock).references;
      var arg_referenceId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("references/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_referenceId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildReference());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_referenceId).then(unittest.expectAsync(((api.Reference response) {
        checkReference(response);
      })));
    });

    unittest.test("method--search", () {

      var mock = new HttpServerMock();
      api.ReferencesResourceApi res = new api.GenomicsApi(mock).references;
      var arg_request = buildSearchReferencesRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.SearchReferencesRequest.fromJson(json);
        checkSearchReferencesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("references/search"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSearchReferencesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.search(arg_request).then(unittest.expectAsync(((api.SearchReferencesResponse response) {
        checkSearchReferencesResponse(response);
      })));
    });

  });


  unittest.group("resource-ReferencesBasesResourceApi", () {
    unittest.test("method--list", () {

      var mock = new HttpServerMock();
      api.ReferencesBasesResourceApi res = new api.GenomicsApi(mock).references.bases;
      var arg_referenceId = "foo";
      var arg_end = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_start = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("references/"));
        pathOffset += 11;
        index = path.indexOf("/bases", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_referenceId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6), unittest.equals("/bases"));
        pathOffset += 6;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["end"].first, unittest.equals(arg_end));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["start"].first, unittest.equals(arg_start));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListBasesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.list(arg_referenceId, end: arg_end, pageSize: arg_pageSize, pageToken: arg_pageToken, start: arg_start).then(unittest.expectAsync(((api.ListBasesResponse response) {
        checkListBasesResponse(response);
      })));
    });

  });


  unittest.group("resource-ReferencesetsResourceApi", () {
    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.ReferencesetsResourceApi res = new api.GenomicsApi(mock).referencesets;
      var arg_referenceSetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("referencesets/"));
        pathOffset += 14;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_referenceSetId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildReferenceSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_referenceSetId).then(unittest.expectAsync(((api.ReferenceSet response) {
        checkReferenceSet(response);
      })));
    });

    unittest.test("method--search", () {

      var mock = new HttpServerMock();
      api.ReferencesetsResourceApi res = new api.GenomicsApi(mock).referencesets;
      var arg_request = buildSearchReferenceSetsRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.SearchReferenceSetsRequest.fromJson(json);
        checkSearchReferenceSetsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 20), unittest.equals("referencesets/search"));
        pathOffset += 20;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSearchReferenceSetsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.search(arg_request).then(unittest.expectAsync(((api.SearchReferenceSetsResponse response) {
        checkSearchReferenceSetsResponse(response);
      })));
    });

  });


  unittest.group("resource-VariantsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.VariantsResourceApi res = new api.GenomicsApi(mock).variants;
      var arg_request = buildVariant();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Variant.fromJson(json);
        checkVariant(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("variants"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildVariant());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request).then(unittest.expectAsync(((api.Variant response) {
        checkVariant(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.VariantsResourceApi res = new api.GenomicsApi(mock).variants;
      var arg_variantId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("variants/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_variantId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_variantId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.VariantsResourceApi res = new api.GenomicsApi(mock).variants;
      var arg_variantId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("variants/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_variantId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildVariant());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_variantId).then(unittest.expectAsync(((api.Variant response) {
        checkVariant(response);
      })));
    });

    unittest.test("method--search", () {

      var mock = new HttpServerMock();
      api.VariantsResourceApi res = new api.GenomicsApi(mock).variants;
      var arg_request = buildSearchVariantsRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.SearchVariantsRequest.fromJson(json);
        checkSearchVariantsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("variants/search"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSearchVariantsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.search(arg_request).then(unittest.expectAsync(((api.SearchVariantsResponse response) {
        checkSearchVariantsResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.VariantsResourceApi res = new api.GenomicsApi(mock).variants;
      var arg_request = buildVariant();
      var arg_variantId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Variant.fromJson(json);
        checkVariant(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("variants/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_variantId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildVariant());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_variantId).then(unittest.expectAsync(((api.Variant response) {
        checkVariant(response);
      })));
    });

  });


  unittest.group("resource-VariantsetsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new HttpServerMock();
      api.VariantsetsResourceApi res = new api.GenomicsApi(mock).variantsets;
      var arg_request = buildVariantSet();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.VariantSet.fromJson(json);
        checkVariantSet(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 11), unittest.equals("variantsets"));
        pathOffset += 11;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildVariantSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.create(arg_request).then(unittest.expectAsync(((api.VariantSet response) {
        checkVariantSet(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new HttpServerMock();
      api.VariantsetsResourceApi res = new api.GenomicsApi(mock).variantsets;
      var arg_variantSetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("variantsets/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_variantSetId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.delete(arg_variantSetId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--export", () {

      var mock = new HttpServerMock();
      api.VariantsetsResourceApi res = new api.GenomicsApi(mock).variantsets;
      var arg_request = buildExportVariantSetRequest();
      var arg_variantSetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ExportVariantSetRequest.fromJson(json);
        checkExportVariantSetRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("variantsets/"));
        pathOffset += 12;
        index = path.indexOf("/export", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_variantSetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 7), unittest.equals("/export"));
        pathOffset += 7;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildExportVariantSetResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.export(arg_request, arg_variantSetId).then(unittest.expectAsync(((api.ExportVariantSetResponse response) {
        checkExportVariantSetResponse(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new HttpServerMock();
      api.VariantsetsResourceApi res = new api.GenomicsApi(mock).variantsets;
      var arg_variantSetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("variantsets/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_variantSetId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildVariantSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.get(arg_variantSetId).then(unittest.expectAsync(((api.VariantSet response) {
        checkVariantSet(response);
      })));
    });

    unittest.test("method--importVariants", () {

      var mock = new HttpServerMock();
      api.VariantsetsResourceApi res = new api.GenomicsApi(mock).variantsets;
      var arg_request = buildImportVariantsRequest();
      var arg_variantSetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ImportVariantsRequest.fromJson(json);
        checkImportVariantsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("variantsets/"));
        pathOffset += 12;
        index = path.indexOf("/importVariants", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_variantSetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("/importVariants"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildImportVariantsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.importVariants(arg_request, arg_variantSetId).then(unittest.expectAsync(((api.ImportVariantsResponse response) {
        checkImportVariantsResponse(response);
      })));
    });

    unittest.test("method--mergeVariants", () {

      var mock = new HttpServerMock();
      api.VariantsetsResourceApi res = new api.GenomicsApi(mock).variantsets;
      var arg_request = buildMergeVariantsRequest();
      var arg_variantSetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.MergeVariantsRequest.fromJson(json);
        checkMergeVariantsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("variantsets/"));
        pathOffset += 12;
        index = path.indexOf("/mergeVariants", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_variantSetId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14), unittest.equals("/mergeVariants"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = "";
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.mergeVariants(arg_request, arg_variantSetId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--patch", () {

      var mock = new HttpServerMock();
      api.VariantsetsResourceApi res = new api.GenomicsApi(mock).variantsets;
      var arg_request = buildVariantSet();
      var arg_variantSetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.VariantSet.fromJson(json);
        checkVariantSet(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("variantsets/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_variantSetId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildVariantSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_variantSetId).then(unittest.expectAsync(((api.VariantSet response) {
        checkVariantSet(response);
      })));
    });

    unittest.test("method--search", () {

      var mock = new HttpServerMock();
      api.VariantsetsResourceApi res = new api.GenomicsApi(mock).variantsets;
      var arg_request = buildSearchVariantSetsRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.SearchVariantSetsRequest.fromJson(json);
        checkSearchVariantSetsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("variantsets/search"));
        pathOffset += 18;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildSearchVariantSetsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.search(arg_request).then(unittest.expectAsync(((api.SearchVariantSetsResponse response) {
        checkSearchVariantSetsResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new HttpServerMock();
      api.VariantsetsResourceApi res = new api.GenomicsApi(mock).variantsets;
      var arg_request = buildVariantSet();
      var arg_variantSetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.VariantSet.fromJson(json);
        checkVariantSet(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 12), unittest.equals("variantsets/"));
        pathOffset += 12;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_variantSetId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = {};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]), core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildVariantSet());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_variantSetId).then(unittest.expectAsync(((api.VariantSet response) {
        checkVariantSet(response);
      })));
    });

  });


}

