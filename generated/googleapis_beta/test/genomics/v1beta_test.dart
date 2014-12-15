library googleapis_beta.genomics.v1beta.test;

import "dart:core" as core;
import "dart:collection" as collection;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:http/testing.dart' as http_testing;
import 'package:unittest/unittest.dart' as unittest;
import 'package:googleapis_beta/common/common.dart' as common;
import 'package:googleapis_beta/src/common_internal.dart' as common_internal;
import '../common/common_internal_test.dart' as common_test;

import 'package:googleapis_beta/genomics/v1beta.dart' as api;



buildUnnamed1364() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed1364(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed1365() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed1365(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed1366() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1366(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1367() {
  var o = new core.Map<core.String, core.List<core.String>>();
  o["x"] = buildUnnamed1366();
  o["y"] = buildUnnamed1366();
  return o;
}

checkUnnamed1367(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1366(o["x"]);
  checkUnnamed1366(o["y"]);
}

core.int buildCounterCall = 0;
buildCall() {
  var o = new api.Call();
  buildCounterCall++;
  if (buildCounterCall < 3) {
    o.callSetId = "foo";
    o.callSetName = "foo";
    o.genotype = buildUnnamed1364();
    o.genotypeLikelihood = buildUnnamed1365();
    o.info = buildUnnamed1367();
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
    checkUnnamed1364(o.genotype);
    checkUnnamed1365(o.genotypeLikelihood);
    checkUnnamed1367(o.info);
    unittest.expect(o.phaseset, unittest.equals('foo'));
  }
  buildCounterCall--;
}

buildUnnamed1368() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1368(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1369() {
  var o = new core.Map<core.String, core.List<core.String>>();
  o["x"] = buildUnnamed1368();
  o["y"] = buildUnnamed1368();
  return o;
}

checkUnnamed1369(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1368(o["x"]);
  checkUnnamed1368(o["y"]);
}

buildUnnamed1370() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1370(core.List<core.String> o) {
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
    o.info = buildUnnamed1369();
    o.name = "foo";
    o.sampleId = "foo";
    o.variantSetIds = buildUnnamed1370();
  }
  buildCounterCallSet--;
  return o;
}

checkCallSet(api.CallSet o) {
  buildCounterCallSet++;
  if (buildCounterCallSet < 3) {
    unittest.expect(o.created, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed1369(o.info);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.sampleId, unittest.equals('foo'));
    checkUnnamed1370(o.variantSetIds);
  }
  buildCounterCallSet--;
}

core.int buildCounterCoverageBucket = 0;
buildCoverageBucket() {
  var o = new api.CoverageBucket();
  buildCounterCoverageBucket++;
  if (buildCounterCoverageBucket < 3) {
    o.meanCoverage = 42.0;
    o.range = buildGenomicRange();
  }
  buildCounterCoverageBucket--;
  return o;
}

checkCoverageBucket(api.CoverageBucket o) {
  buildCounterCoverageBucket++;
  if (buildCounterCoverageBucket < 3) {
    unittest.expect(o.meanCoverage, unittest.equals(42.0));
    checkGenomicRange(o.range);
  }
  buildCounterCoverageBucket--;
}

core.int buildCounterDataset = 0;
buildDataset() {
  var o = new api.Dataset();
  buildCounterDataset++;
  if (buildCounterDataset < 3) {
    o.id = "foo";
    o.isPublic = true;
    o.name = "foo";
    o.projectId = "foo";
  }
  buildCounterDataset--;
  return o;
}

checkDataset(api.Dataset o) {
  buildCounterDataset++;
  if (buildCounterDataset < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.isPublic, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterDataset--;
}

buildUnnamed1371() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1371(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1372() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1372(core.List<core.String> o) {
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
    o.pairedSourceUris = buildUnnamed1371();
    o.projectId = "foo";
    o.sourceUris = buildUnnamed1372();
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
    checkUnnamed1371(o.pairedSourceUris);
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkUnnamed1372(o.sourceUris);
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

buildUnnamed1373() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1373(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1374() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1374(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterExportReadsetsRequest = 0;
buildExportReadsetsRequest() {
  var o = new api.ExportReadsetsRequest();
  buildCounterExportReadsetsRequest++;
  if (buildCounterExportReadsetsRequest < 3) {
    o.exportUri = "foo";
    o.projectId = "foo";
    o.readsetIds = buildUnnamed1373();
    o.referenceNames = buildUnnamed1374();
  }
  buildCounterExportReadsetsRequest--;
  return o;
}

checkExportReadsetsRequest(api.ExportReadsetsRequest o) {
  buildCounterExportReadsetsRequest++;
  if (buildCounterExportReadsetsRequest < 3) {
    unittest.expect(o.exportUri, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkUnnamed1373(o.readsetIds);
    checkUnnamed1374(o.referenceNames);
  }
  buildCounterExportReadsetsRequest--;
}

core.int buildCounterExportReadsetsResponse = 0;
buildExportReadsetsResponse() {
  var o = new api.ExportReadsetsResponse();
  buildCounterExportReadsetsResponse++;
  if (buildCounterExportReadsetsResponse < 3) {
    o.jobId = "foo";
  }
  buildCounterExportReadsetsResponse--;
  return o;
}

checkExportReadsetsResponse(api.ExportReadsetsResponse o) {
  buildCounterExportReadsetsResponse++;
  if (buildCounterExportReadsetsResponse < 3) {
    unittest.expect(o.jobId, unittest.equals('foo'));
  }
  buildCounterExportReadsetsResponse--;
}

buildUnnamed1375() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1375(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterExportVariantsRequest = 0;
buildExportVariantsRequest() {
  var o = new api.ExportVariantsRequest();
  buildCounterExportVariantsRequest++;
  if (buildCounterExportVariantsRequest < 3) {
    o.bigqueryDataset = "foo";
    o.bigqueryTable = "foo";
    o.callSetIds = buildUnnamed1375();
    o.format = "foo";
    o.projectId = "foo";
    o.variantSetId = "foo";
  }
  buildCounterExportVariantsRequest--;
  return o;
}

checkExportVariantsRequest(api.ExportVariantsRequest o) {
  buildCounterExportVariantsRequest++;
  if (buildCounterExportVariantsRequest < 3) {
    unittest.expect(o.bigqueryDataset, unittest.equals('foo'));
    unittest.expect(o.bigqueryTable, unittest.equals('foo'));
    checkUnnamed1375(o.callSetIds);
    unittest.expect(o.format, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.variantSetId, unittest.equals('foo'));
  }
  buildCounterExportVariantsRequest--;
}

core.int buildCounterExportVariantsResponse = 0;
buildExportVariantsResponse() {
  var o = new api.ExportVariantsResponse();
  buildCounterExportVariantsResponse++;
  if (buildCounterExportVariantsResponse < 3) {
    o.jobId = "foo";
  }
  buildCounterExportVariantsResponse--;
  return o;
}

checkExportVariantsResponse(api.ExportVariantsResponse o) {
  buildCounterExportVariantsResponse++;
  if (buildCounterExportVariantsResponse < 3) {
    unittest.expect(o.jobId, unittest.equals('foo'));
  }
  buildCounterExportVariantsResponse--;
}

core.int buildCounterGenomicRange = 0;
buildGenomicRange() {
  var o = new api.GenomicRange();
  buildCounterGenomicRange++;
  if (buildCounterGenomicRange < 3) {
    o.sequenceEnd = "foo";
    o.sequenceName = "foo";
    o.sequenceStart = "foo";
  }
  buildCounterGenomicRange--;
  return o;
}

checkGenomicRange(api.GenomicRange o) {
  buildCounterGenomicRange++;
  if (buildCounterGenomicRange < 3) {
    unittest.expect(o.sequenceEnd, unittest.equals('foo'));
    unittest.expect(o.sequenceName, unittest.equals('foo'));
    unittest.expect(o.sequenceStart, unittest.equals('foo'));
  }
  buildCounterGenomicRange--;
}

core.int buildCounterHeader = 0;
buildHeader() {
  var o = new api.Header();
  buildCounterHeader++;
  if (buildCounterHeader < 3) {
    o.sortingOrder = "foo";
    o.version = "foo";
  }
  buildCounterHeader--;
  return o;
}

checkHeader(api.Header o) {
  buildCounterHeader++;
  if (buildCounterHeader < 3) {
    unittest.expect(o.sortingOrder, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterHeader--;
}

buildUnnamed1376() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1376(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1377() {
  var o = new core.List<api.Header>();
  o.add(buildHeader());
  o.add(buildHeader());
  return o;
}

checkUnnamed1377(core.List<api.Header> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHeader(o[0]);
  checkHeader(o[1]);
}

buildUnnamed1378() {
  var o = new core.List<api.Program>();
  o.add(buildProgram());
  o.add(buildProgram());
  return o;
}

checkUnnamed1378(core.List<api.Program> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProgram(o[0]);
  checkProgram(o[1]);
}

buildUnnamed1379() {
  var o = new core.List<api.ReadGroup>();
  o.add(buildReadGroup());
  o.add(buildReadGroup());
  return o;
}

checkUnnamed1379(core.List<api.ReadGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReadGroup(o[0]);
  checkReadGroup(o[1]);
}

buildUnnamed1380() {
  var o = new core.List<api.ReferenceSequence>();
  o.add(buildReferenceSequence());
  o.add(buildReferenceSequence());
  return o;
}

checkUnnamed1380(core.List<api.ReferenceSequence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReferenceSequence(o[0]);
  checkReferenceSequence(o[1]);
}

core.int buildCounterHeaderSection = 0;
buildHeaderSection() {
  var o = new api.HeaderSection();
  buildCounterHeaderSection++;
  if (buildCounterHeaderSection < 3) {
    o.comments = buildUnnamed1376();
    o.fileUri = "foo";
    o.filename = "foo";
    o.headers = buildUnnamed1377();
    o.programs = buildUnnamed1378();
    o.readGroups = buildUnnamed1379();
    o.refSequences = buildUnnamed1380();
  }
  buildCounterHeaderSection--;
  return o;
}

checkHeaderSection(api.HeaderSection o) {
  buildCounterHeaderSection++;
  if (buildCounterHeaderSection < 3) {
    checkUnnamed1376(o.comments);
    unittest.expect(o.fileUri, unittest.equals('foo'));
    unittest.expect(o.filename, unittest.equals('foo'));
    checkUnnamed1377(o.headers);
    checkUnnamed1378(o.programs);
    checkUnnamed1379(o.readGroups);
    checkUnnamed1380(o.refSequences);
  }
  buildCounterHeaderSection--;
}

buildUnnamed1381() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1381(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterImportReadsetsRequest = 0;
buildImportReadsetsRequest() {
  var o = new api.ImportReadsetsRequest();
  buildCounterImportReadsetsRequest++;
  if (buildCounterImportReadsetsRequest < 3) {
    o.datasetId = "foo";
    o.sourceUris = buildUnnamed1381();
  }
  buildCounterImportReadsetsRequest--;
  return o;
}

checkImportReadsetsRequest(api.ImportReadsetsRequest o) {
  buildCounterImportReadsetsRequest++;
  if (buildCounterImportReadsetsRequest < 3) {
    unittest.expect(o.datasetId, unittest.equals('foo'));
    checkUnnamed1381(o.sourceUris);
  }
  buildCounterImportReadsetsRequest--;
}

core.int buildCounterImportReadsetsResponse = 0;
buildImportReadsetsResponse() {
  var o = new api.ImportReadsetsResponse();
  buildCounterImportReadsetsResponse++;
  if (buildCounterImportReadsetsResponse < 3) {
    o.jobId = "foo";
  }
  buildCounterImportReadsetsResponse--;
  return o;
}

checkImportReadsetsResponse(api.ImportReadsetsResponse o) {
  buildCounterImportReadsetsResponse++;
  if (buildCounterImportReadsetsResponse < 3) {
    unittest.expect(o.jobId, unittest.equals('foo'));
  }
  buildCounterImportReadsetsResponse--;
}

buildUnnamed1382() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1382(core.List<core.String> o) {
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
    o.sourceUris = buildUnnamed1382();
    o.variantSetId = "foo";
  }
  buildCounterImportVariantsRequest--;
  return o;
}

checkImportVariantsRequest(api.ImportVariantsRequest o) {
  buildCounterImportVariantsRequest++;
  if (buildCounterImportVariantsRequest < 3) {
    unittest.expect(o.format, unittest.equals('foo'));
    checkUnnamed1382(o.sourceUris);
    unittest.expect(o.variantSetId, unittest.equals('foo'));
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

buildUnnamed1383() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1383(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1384() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1384(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1385() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1385(core.List<core.String> o) {
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
    o.description = "foo";
    o.errors = buildUnnamed1383();
    o.id = "foo";
    o.importedIds = buildUnnamed1384();
    o.projectId = "foo";
    o.request = buildJobRequest();
    o.status = "foo";
    o.warnings = buildUnnamed1385();
  }
  buildCounterJob--;
  return o;
}

checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    unittest.expect(o.created, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed1383(o.errors);
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed1384(o.importedIds);
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkJobRequest(o.request);
    unittest.expect(o.status, unittest.equals('foo'));
    checkUnnamed1385(o.warnings);
  }
  buildCounterJob--;
}

buildUnnamed1386() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1386(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1387() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1387(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterJobRequest = 0;
buildJobRequest() {
  var o = new api.JobRequest();
  buildCounterJobRequest++;
  if (buildCounterJobRequest < 3) {
    o.destination = buildUnnamed1386();
    o.source = buildUnnamed1387();
    o.type = "foo";
  }
  buildCounterJobRequest--;
  return o;
}

checkJobRequest(api.JobRequest o) {
  buildCounterJobRequest++;
  if (buildCounterJobRequest < 3) {
    checkUnnamed1386(o.destination);
    checkUnnamed1387(o.source);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterJobRequest--;
}

buildUnnamed1388() {
  var o = new core.List<api.CoverageBucket>();
  o.add(buildCoverageBucket());
  o.add(buildCoverageBucket());
  return o;
}

checkUnnamed1388(core.List<api.CoverageBucket> o) {
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
    o.coverageBuckets = buildUnnamed1388();
    o.nextPageToken = "foo";
  }
  buildCounterListCoverageBucketsResponse--;
  return o;
}

checkListCoverageBucketsResponse(api.ListCoverageBucketsResponse o) {
  buildCounterListCoverageBucketsResponse++;
  if (buildCounterListCoverageBucketsResponse < 3) {
    unittest.expect(o.bucketWidth, unittest.equals('foo'));
    checkUnnamed1388(o.coverageBuckets);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCoverageBucketsResponse--;
}

buildUnnamed1389() {
  var o = new core.List<api.Dataset>();
  o.add(buildDataset());
  o.add(buildDataset());
  return o;
}

checkUnnamed1389(core.List<api.Dataset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataset(o[0]);
  checkDataset(o[1]);
}

core.int buildCounterListDatasetsResponse = 0;
buildListDatasetsResponse() {
  var o = new api.ListDatasetsResponse();
  buildCounterListDatasetsResponse++;
  if (buildCounterListDatasetsResponse < 3) {
    o.datasets = buildUnnamed1389();
    o.nextPageToken = "foo";
  }
  buildCounterListDatasetsResponse--;
  return o;
}

checkListDatasetsResponse(api.ListDatasetsResponse o) {
  buildCounterListDatasetsResponse++;
  if (buildCounterListDatasetsResponse < 3) {
    checkUnnamed1389(o.datasets);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListDatasetsResponse--;
}

buildUnnamed1390() {
  var o = new core.List<api.Variant>();
  o.add(buildVariant());
  o.add(buildVariant());
  return o;
}

checkUnnamed1390(core.List<api.Variant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVariant(o[0]);
  checkVariant(o[1]);
}

core.int buildCounterMergeVariantsRequest = 0;
buildMergeVariantsRequest() {
  var o = new api.MergeVariantsRequest();
  buildCounterMergeVariantsRequest++;
  if (buildCounterMergeVariantsRequest < 3) {
    o.variants = buildUnnamed1390();
  }
  buildCounterMergeVariantsRequest--;
  return o;
}

checkMergeVariantsRequest(api.MergeVariantsRequest o) {
  buildCounterMergeVariantsRequest++;
  if (buildCounterMergeVariantsRequest < 3) {
    checkUnnamed1390(o.variants);
  }
  buildCounterMergeVariantsRequest--;
}

buildUnnamed1391() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1391(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1392() {
  var o = new core.Map<core.String, core.List<core.String>>();
  o["x"] = buildUnnamed1391();
  o["y"] = buildUnnamed1391();
  return o;
}

checkUnnamed1392(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1391(o["x"]);
  checkUnnamed1391(o["y"]);
}

core.int buildCounterMetadata = 0;
buildMetadata() {
  var o = new api.Metadata();
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    o.description = "foo";
    o.id = "foo";
    o.info = buildUnnamed1392();
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
    checkUnnamed1392(o.info);
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.number, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterMetadata--;
}

core.int buildCounterProgram = 0;
buildProgram() {
  var o = new api.Program();
  buildCounterProgram++;
  if (buildCounterProgram < 3) {
    o.commandLine = "foo";
    o.id = "foo";
    o.name = "foo";
    o.prevProgramId = "foo";
    o.version = "foo";
  }
  buildCounterProgram--;
  return o;
}

checkProgram(api.Program o) {
  buildCounterProgram++;
  if (buildCounterProgram < 3) {
    unittest.expect(o.commandLine, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.prevProgramId, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterProgram--;
}

buildUnnamed1393() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1393(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1394() {
  var o = new core.Map<core.String, core.List<core.String>>();
  o["x"] = buildUnnamed1393();
  o["y"] = buildUnnamed1393();
  return o;
}

checkUnnamed1394(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1393(o["x"]);
  checkUnnamed1393(o["y"]);
}

core.int buildCounterRead = 0;
buildRead() {
  var o = new api.Read();
  buildCounterRead++;
  if (buildCounterRead < 3) {
    o.alignedBases = "foo";
    o.baseQuality = "foo";
    o.cigar = "foo";
    o.flags = 42;
    o.id = "foo";
    o.mappingQuality = 42;
    o.matePosition = 42;
    o.mateReferenceSequenceName = "foo";
    o.name = "foo";
    o.originalBases = "foo";
    o.position = 42;
    o.readsetId = "foo";
    o.referenceSequenceName = "foo";
    o.tags = buildUnnamed1394();
    o.templateLength = 42;
  }
  buildCounterRead--;
  return o;
}

checkRead(api.Read o) {
  buildCounterRead++;
  if (buildCounterRead < 3) {
    unittest.expect(o.alignedBases, unittest.equals('foo'));
    unittest.expect(o.baseQuality, unittest.equals('foo'));
    unittest.expect(o.cigar, unittest.equals('foo'));
    unittest.expect(o.flags, unittest.equals(42));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.mappingQuality, unittest.equals(42));
    unittest.expect(o.matePosition, unittest.equals(42));
    unittest.expect(o.mateReferenceSequenceName, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.originalBases, unittest.equals('foo'));
    unittest.expect(o.position, unittest.equals(42));
    unittest.expect(o.readsetId, unittest.equals('foo'));
    unittest.expect(o.referenceSequenceName, unittest.equals('foo'));
    checkUnnamed1394(o.tags);
    unittest.expect(o.templateLength, unittest.equals(42));
  }
  buildCounterRead--;
}

core.int buildCounterReadGroup = 0;
buildReadGroup() {
  var o = new api.ReadGroup();
  buildCounterReadGroup++;
  if (buildCounterReadGroup < 3) {
    o.date = "foo";
    o.description = "foo";
    o.flowOrder = "foo";
    o.id = "foo";
    o.keySequence = "foo";
    o.library = "foo";
    o.platformUnit = "foo";
    o.predictedInsertSize = 42;
    o.processingProgram = "foo";
    o.sample = "foo";
    o.sequencingCenterName = "foo";
    o.sequencingTechnology = "foo";
  }
  buildCounterReadGroup--;
  return o;
}

checkReadGroup(api.ReadGroup o) {
  buildCounterReadGroup++;
  if (buildCounterReadGroup < 3) {
    unittest.expect(o.date, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.flowOrder, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.keySequence, unittest.equals('foo'));
    unittest.expect(o.library, unittest.equals('foo'));
    unittest.expect(o.platformUnit, unittest.equals('foo'));
    unittest.expect(o.predictedInsertSize, unittest.equals(42));
    unittest.expect(o.processingProgram, unittest.equals('foo'));
    unittest.expect(o.sample, unittest.equals('foo'));
    unittest.expect(o.sequencingCenterName, unittest.equals('foo'));
    unittest.expect(o.sequencingTechnology, unittest.equals('foo'));
  }
  buildCounterReadGroup--;
}

buildUnnamed1395() {
  var o = new core.List<api.HeaderSection>();
  o.add(buildHeaderSection());
  o.add(buildHeaderSection());
  return o;
}

checkUnnamed1395(core.List<api.HeaderSection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHeaderSection(o[0]);
  checkHeaderSection(o[1]);
}

core.int buildCounterReadset = 0;
buildReadset() {
  var o = new api.Readset();
  buildCounterReadset++;
  if (buildCounterReadset < 3) {
    o.datasetId = "foo";
    o.fileData = buildUnnamed1395();
    o.id = "foo";
    o.name = "foo";
  }
  buildCounterReadset--;
  return o;
}

checkReadset(api.Readset o) {
  buildCounterReadset++;
  if (buildCounterReadset < 3) {
    unittest.expect(o.datasetId, unittest.equals('foo'));
    checkUnnamed1395(o.fileData);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterReadset--;
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

core.int buildCounterReferenceSequence = 0;
buildReferenceSequence() {
  var o = new api.ReferenceSequence();
  buildCounterReferenceSequence++;
  if (buildCounterReferenceSequence < 3) {
    o.assemblyId = "foo";
    o.length = 42;
    o.md5Checksum = "foo";
    o.name = "foo";
    o.species = "foo";
    o.uri = "foo";
  }
  buildCounterReferenceSequence--;
  return o;
}

checkReferenceSequence(api.ReferenceSequence o) {
  buildCounterReferenceSequence++;
  if (buildCounterReferenceSequence < 3) {
    unittest.expect(o.assemblyId, unittest.equals('foo'));
    unittest.expect(o.length, unittest.equals(42));
    unittest.expect(o.md5Checksum, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.species, unittest.equals('foo'));
    unittest.expect(o.uri, unittest.equals('foo'));
  }
  buildCounterReferenceSequence--;
}

buildUnnamed1396() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1396(core.List<core.String> o) {
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
    o.variantSetIds = buildUnnamed1396();
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
    checkUnnamed1396(o.variantSetIds);
  }
  buildCounterSearchCallSetsRequest--;
}

buildUnnamed1397() {
  var o = new core.List<api.CallSet>();
  o.add(buildCallSet());
  o.add(buildCallSet());
  return o;
}

checkUnnamed1397(core.List<api.CallSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCallSet(o[0]);
  checkCallSet(o[1]);
}

core.int buildCounterSearchCallSetsResponse = 0;
buildSearchCallSetsResponse() {
  var o = new api.SearchCallSetsResponse();
  buildCounterSearchCallSetsResponse++;
  if (buildCounterSearchCallSetsResponse < 3) {
    o.callSets = buildUnnamed1397();
    o.nextPageToken = "foo";
  }
  buildCounterSearchCallSetsResponse--;
  return o;
}

checkSearchCallSetsResponse(api.SearchCallSetsResponse o) {
  buildCounterSearchCallSetsResponse++;
  if (buildCounterSearchCallSetsResponse < 3) {
    checkUnnamed1397(o.callSets);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterSearchCallSetsResponse--;
}

buildUnnamed1398() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1398(core.List<core.String> o) {
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
    o.maxResults = "foo";
    o.pageToken = "foo";
    o.projectId = "foo";
    o.status = buildUnnamed1398();
  }
  buildCounterSearchJobsRequest--;
  return o;
}

checkSearchJobsRequest(api.SearchJobsRequest o) {
  buildCounterSearchJobsRequest++;
  if (buildCounterSearchJobsRequest < 3) {
    unittest.expect(o.createdAfter, unittest.equals('foo'));
    unittest.expect(o.createdBefore, unittest.equals('foo'));
    unittest.expect(o.maxResults, unittest.equals('foo'));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkUnnamed1398(o.status);
  }
  buildCounterSearchJobsRequest--;
}

buildUnnamed1399() {
  var o = new core.List<api.Job>();
  o.add(buildJob());
  o.add(buildJob());
  return o;
}

checkUnnamed1399(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterSearchJobsResponse = 0;
buildSearchJobsResponse() {
  var o = new api.SearchJobsResponse();
  buildCounterSearchJobsResponse++;
  if (buildCounterSearchJobsResponse < 3) {
    o.jobs = buildUnnamed1399();
    o.nextPageToken = "foo";
  }
  buildCounterSearchJobsResponse--;
  return o;
}

checkSearchJobsResponse(api.SearchJobsResponse o) {
  buildCounterSearchJobsResponse++;
  if (buildCounterSearchJobsResponse < 3) {
    checkUnnamed1399(o.jobs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterSearchJobsResponse--;
}

buildUnnamed1400() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1400(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSearchReadsRequest = 0;
buildSearchReadsRequest() {
  var o = new api.SearchReadsRequest();
  buildCounterSearchReadsRequest++;
  if (buildCounterSearchReadsRequest < 3) {
    o.maxResults = "foo";
    o.pageToken = "foo";
    o.readsetIds = buildUnnamed1400();
    o.sequenceEnd = "foo";
    o.sequenceName = "foo";
    o.sequenceStart = "foo";
  }
  buildCounterSearchReadsRequest--;
  return o;
}

checkSearchReadsRequest(api.SearchReadsRequest o) {
  buildCounterSearchReadsRequest++;
  if (buildCounterSearchReadsRequest < 3) {
    unittest.expect(o.maxResults, unittest.equals('foo'));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    checkUnnamed1400(o.readsetIds);
    unittest.expect(o.sequenceEnd, unittest.equals('foo'));
    unittest.expect(o.sequenceName, unittest.equals('foo'));
    unittest.expect(o.sequenceStart, unittest.equals('foo'));
  }
  buildCounterSearchReadsRequest--;
}

buildUnnamed1401() {
  var o = new core.List<api.Read>();
  o.add(buildRead());
  o.add(buildRead());
  return o;
}

checkUnnamed1401(core.List<api.Read> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRead(o[0]);
  checkRead(o[1]);
}

core.int buildCounterSearchReadsResponse = 0;
buildSearchReadsResponse() {
  var o = new api.SearchReadsResponse();
  buildCounterSearchReadsResponse++;
  if (buildCounterSearchReadsResponse < 3) {
    o.nextPageToken = "foo";
    o.reads = buildUnnamed1401();
  }
  buildCounterSearchReadsResponse--;
  return o;
}

checkSearchReadsResponse(api.SearchReadsResponse o) {
  buildCounterSearchReadsResponse++;
  if (buildCounterSearchReadsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1401(o.reads);
  }
  buildCounterSearchReadsResponse--;
}

buildUnnamed1402() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1402(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSearchReadsetsRequest = 0;
buildSearchReadsetsRequest() {
  var o = new api.SearchReadsetsRequest();
  buildCounterSearchReadsetsRequest++;
  if (buildCounterSearchReadsetsRequest < 3) {
    o.datasetIds = buildUnnamed1402();
    o.maxResults = "foo";
    o.name = "foo";
    o.pageToken = "foo";
  }
  buildCounterSearchReadsetsRequest--;
  return o;
}

checkSearchReadsetsRequest(api.SearchReadsetsRequest o) {
  buildCounterSearchReadsetsRequest++;
  if (buildCounterSearchReadsetsRequest < 3) {
    checkUnnamed1402(o.datasetIds);
    unittest.expect(o.maxResults, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.pageToken, unittest.equals('foo'));
  }
  buildCounterSearchReadsetsRequest--;
}

buildUnnamed1403() {
  var o = new core.List<api.Readset>();
  o.add(buildReadset());
  o.add(buildReadset());
  return o;
}

checkUnnamed1403(core.List<api.Readset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReadset(o[0]);
  checkReadset(o[1]);
}

core.int buildCounterSearchReadsetsResponse = 0;
buildSearchReadsetsResponse() {
  var o = new api.SearchReadsetsResponse();
  buildCounterSearchReadsetsResponse++;
  if (buildCounterSearchReadsetsResponse < 3) {
    o.nextPageToken = "foo";
    o.readsets = buildUnnamed1403();
  }
  buildCounterSearchReadsetsResponse--;
  return o;
}

checkSearchReadsetsResponse(api.SearchReadsetsResponse o) {
  buildCounterSearchReadsetsResponse++;
  if (buildCounterSearchReadsetsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1403(o.readsets);
  }
  buildCounterSearchReadsetsResponse--;
}

buildUnnamed1404() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1404(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSearchVariantSetsRequest = 0;
buildSearchVariantSetsRequest() {
  var o = new api.SearchVariantSetsRequest();
  buildCounterSearchVariantSetsRequest++;
  if (buildCounterSearchVariantSetsRequest < 3) {
    o.datasetIds = buildUnnamed1404();
    o.pageSize = 42;
    o.pageToken = "foo";
  }
  buildCounterSearchVariantSetsRequest--;
  return o;
}

checkSearchVariantSetsRequest(api.SearchVariantSetsRequest o) {
  buildCounterSearchVariantSetsRequest++;
  if (buildCounterSearchVariantSetsRequest < 3) {
    checkUnnamed1404(o.datasetIds);
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
  }
  buildCounterSearchVariantSetsRequest--;
}

buildUnnamed1405() {
  var o = new core.List<api.VariantSet>();
  o.add(buildVariantSet());
  o.add(buildVariantSet());
  return o;
}

checkUnnamed1405(core.List<api.VariantSet> o) {
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
    o.variantSets = buildUnnamed1405();
  }
  buildCounterSearchVariantSetsResponse--;
  return o;
}

checkSearchVariantSetsResponse(api.SearchVariantSetsResponse o) {
  buildCounterSearchVariantSetsResponse++;
  if (buildCounterSearchVariantSetsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1405(o.variantSets);
  }
  buildCounterSearchVariantSetsResponse--;
}

buildUnnamed1406() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1406(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1407() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1407(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSearchVariantsRequest = 0;
buildSearchVariantsRequest() {
  var o = new api.SearchVariantsRequest();
  buildCounterSearchVariantsRequest++;
  if (buildCounterSearchVariantsRequest < 3) {
    o.callSetIds = buildUnnamed1406();
    o.end = "foo";
    o.maxCalls = 42;
    o.pageSize = 42;
    o.pageToken = "foo";
    o.referenceName = "foo";
    o.start = "foo";
    o.variantName = "foo";
    o.variantSetIds = buildUnnamed1407();
  }
  buildCounterSearchVariantsRequest--;
  return o;
}

checkSearchVariantsRequest(api.SearchVariantsRequest o) {
  buildCounterSearchVariantsRequest++;
  if (buildCounterSearchVariantsRequest < 3) {
    checkUnnamed1406(o.callSetIds);
    unittest.expect(o.end, unittest.equals('foo'));
    unittest.expect(o.maxCalls, unittest.equals(42));
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    unittest.expect(o.referenceName, unittest.equals('foo'));
    unittest.expect(o.start, unittest.equals('foo'));
    unittest.expect(o.variantName, unittest.equals('foo'));
    checkUnnamed1407(o.variantSetIds);
  }
  buildCounterSearchVariantsRequest--;
}

buildUnnamed1408() {
  var o = new core.List<api.Variant>();
  o.add(buildVariant());
  o.add(buildVariant());
  return o;
}

checkUnnamed1408(core.List<api.Variant> o) {
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
    o.variants = buildUnnamed1408();
  }
  buildCounterSearchVariantsResponse--;
  return o;
}

checkSearchVariantsResponse(api.SearchVariantsResponse o) {
  buildCounterSearchVariantsResponse++;
  if (buildCounterSearchVariantsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1408(o.variants);
  }
  buildCounterSearchVariantsResponse--;
}

buildUnnamed1409() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1409(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1410() {
  var o = new core.List<api.Call>();
  o.add(buildCall());
  o.add(buildCall());
  return o;
}

checkUnnamed1410(core.List<api.Call> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCall(o[0]);
  checkCall(o[1]);
}

buildUnnamed1411() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1411(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1412() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1412(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1413() {
  var o = new core.Map<core.String, core.List<core.String>>();
  o["x"] = buildUnnamed1412();
  o["y"] = buildUnnamed1412();
  return o;
}

checkUnnamed1413(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1412(o["x"]);
  checkUnnamed1412(o["y"]);
}

buildUnnamed1414() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1414(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVariant = 0;
buildVariant() {
  var o = new api.Variant();
  buildCounterVariant++;
  if (buildCounterVariant < 3) {
    o.alternateBases = buildUnnamed1409();
    o.calls = buildUnnamed1410();
    o.created = "foo";
    o.end = "foo";
    o.filter = buildUnnamed1411();
    o.id = "foo";
    o.info = buildUnnamed1413();
    o.names = buildUnnamed1414();
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
    checkUnnamed1409(o.alternateBases);
    checkUnnamed1410(o.calls);
    unittest.expect(o.created, unittest.equals('foo'));
    unittest.expect(o.end, unittest.equals('foo'));
    checkUnnamed1411(o.filter);
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed1413(o.info);
    checkUnnamed1414(o.names);
    unittest.expect(o.quality, unittest.equals(42.0));
    unittest.expect(o.referenceBases, unittest.equals('foo'));
    unittest.expect(o.referenceName, unittest.equals('foo'));
    unittest.expect(o.start, unittest.equals('foo'));
    unittest.expect(o.variantSetId, unittest.equals('foo'));
  }
  buildCounterVariant--;
}

buildUnnamed1415() {
  var o = new core.List<api.Metadata>();
  o.add(buildMetadata());
  o.add(buildMetadata());
  return o;
}

checkUnnamed1415(core.List<api.Metadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetadata(o[0]);
  checkMetadata(o[1]);
}

buildUnnamed1416() {
  var o = new core.List<api.ReferenceBound>();
  o.add(buildReferenceBound());
  o.add(buildReferenceBound());
  return o;
}

checkUnnamed1416(core.List<api.ReferenceBound> o) {
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
    o.id = "foo";
    o.metadata = buildUnnamed1415();
    o.referenceBounds = buildUnnamed1416();
  }
  buildCounterVariantSet--;
  return o;
}

checkVariantSet(api.VariantSet o) {
  buildCounterVariantSet++;
  if (buildCounterVariantSet < 3) {
    unittest.expect(o.datasetId, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed1415(o.metadata);
    checkUnnamed1416(o.referenceBounds);
  }
  buildCounterVariantSet--;
}


main() {
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


  unittest.group("obj-schema-ExportReadsetsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildExportReadsetsRequest();
      var od = new api.ExportReadsetsRequest.fromJson(o.toJson());
      checkExportReadsetsRequest(od);
    });
  });


  unittest.group("obj-schema-ExportReadsetsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildExportReadsetsResponse();
      var od = new api.ExportReadsetsResponse.fromJson(o.toJson());
      checkExportReadsetsResponse(od);
    });
  });


  unittest.group("obj-schema-ExportVariantsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildExportVariantsRequest();
      var od = new api.ExportVariantsRequest.fromJson(o.toJson());
      checkExportVariantsRequest(od);
    });
  });


  unittest.group("obj-schema-ExportVariantsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildExportVariantsResponse();
      var od = new api.ExportVariantsResponse.fromJson(o.toJson());
      checkExportVariantsResponse(od);
    });
  });


  unittest.group("obj-schema-GenomicRange", () {
    unittest.test("to-json--from-json", () {
      var o = buildGenomicRange();
      var od = new api.GenomicRange.fromJson(o.toJson());
      checkGenomicRange(od);
    });
  });


  unittest.group("obj-schema-Header", () {
    unittest.test("to-json--from-json", () {
      var o = buildHeader();
      var od = new api.Header.fromJson(o.toJson());
      checkHeader(od);
    });
  });


  unittest.group("obj-schema-HeaderSection", () {
    unittest.test("to-json--from-json", () {
      var o = buildHeaderSection();
      var od = new api.HeaderSection.fromJson(o.toJson());
      checkHeaderSection(od);
    });
  });


  unittest.group("obj-schema-ImportReadsetsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildImportReadsetsRequest();
      var od = new api.ImportReadsetsRequest.fromJson(o.toJson());
      checkImportReadsetsRequest(od);
    });
  });


  unittest.group("obj-schema-ImportReadsetsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildImportReadsetsResponse();
      var od = new api.ImportReadsetsResponse.fromJson(o.toJson());
      checkImportReadsetsResponse(od);
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


  unittest.group("obj-schema-Program", () {
    unittest.test("to-json--from-json", () {
      var o = buildProgram();
      var od = new api.Program.fromJson(o.toJson());
      checkProgram(od);
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


  unittest.group("obj-schema-Readset", () {
    unittest.test("to-json--from-json", () {
      var o = buildReadset();
      var od = new api.Readset.fromJson(o.toJson());
      checkReadset(od);
    });
  });


  unittest.group("obj-schema-ReferenceBound", () {
    unittest.test("to-json--from-json", () {
      var o = buildReferenceBound();
      var od = new api.ReferenceBound.fromJson(o.toJson());
      checkReferenceBound(od);
    });
  });


  unittest.group("obj-schema-ReferenceSequence", () {
    unittest.test("to-json--from-json", () {
      var o = buildReferenceSequence();
      var od = new api.ReferenceSequence.fromJson(o.toJson());
      checkReferenceSequence(od);
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


  unittest.group("obj-schema-SearchReadsetsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchReadsetsRequest();
      var od = new api.SearchReadsetsRequest.fromJson(o.toJson());
      checkSearchReadsetsRequest(od);
    });
  });


  unittest.group("obj-schema-SearchReadsetsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchReadsetsResponse();
      var od = new api.SearchReadsetsResponse.fromJson(o.toJson());
      checkSearchReadsetsResponse(od);
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


  unittest.group("obj-schema-Variant", () {
    unittest.test("to-json--from-json", () {
      var o = buildVariant();
      var od = new api.Variant.fromJson(o.toJson());
      checkVariant(od);
    });
  });


  unittest.group("obj-schema-VariantSet", () {
    unittest.test("to-json--from-json", () {
      var o = buildVariantSet();
      var od = new api.VariantSet.fromJson(o.toJson());
      checkVariantSet(od);
    });
  });


  unittest.group("resource-CallsetsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new common_test.HttpServerMock();
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
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.create(arg_request).then(unittest.expectAsync(((api.CallSet response) {
        checkCallSet(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.CallsetsResourceApi res = new api.GenomicsApi(mock).callsets;
      var arg_callSetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_callSetId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.CallsetsResourceApi res = new api.GenomicsApi(mock).callsets;
      var arg_callSetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_callSetId).then(unittest.expectAsync(((api.CallSet response) {
        checkCallSet(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
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
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_callSetId).then(unittest.expectAsync(((api.CallSet response) {
        checkCallSet(response);
      })));
    });

    unittest.test("method--search", () {

      var mock = new common_test.HttpServerMock();
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
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.search(arg_request).then(unittest.expectAsync(((api.SearchCallSetsResponse response) {
        checkSearchCallSetsResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
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
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_callSetId).then(unittest.expectAsync(((api.CallSet response) {
        checkCallSet(response);
      })));
    });

  });


  unittest.group("resource-DatasetsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new common_test.HttpServerMock();
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
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.create(arg_request).then(unittest.expectAsync(((api.Dataset response) {
        checkDataset(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.DatasetsResourceApi res = new api.GenomicsApi(mock).datasets;
      var arg_datasetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_datasetId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.DatasetsResourceApi res = new api.GenomicsApi(mock).datasets;
      var arg_datasetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_datasetId).then(unittest.expectAsync(((api.Dataset response) {
        checkDataset(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.DatasetsResourceApi res = new api.GenomicsApi(mock).datasets;
      var arg_maxResults = "foo";
      var arg_pageToken = "foo";
      var arg_projectId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
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
        unittest.expect(queryMap["maxResults"].first, unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["projectId"].first, unittest.equals(arg_projectId));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListDatasetsResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(maxResults: arg_maxResults, pageToken: arg_pageToken, projectId: arg_projectId).then(unittest.expectAsync(((api.ListDatasetsResponse response) {
        checkListDatasetsResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
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
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_datasetId).then(unittest.expectAsync(((api.Dataset response) {
        checkDataset(response);
      })));
    });

    unittest.test("method--undelete", () {

      var mock = new common_test.HttpServerMock();
      api.DatasetsResourceApi res = new api.GenomicsApi(mock).datasets;
      var arg_datasetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.undelete(arg_datasetId).then(unittest.expectAsync(((api.Dataset response) {
        checkDataset(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
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
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_datasetId).then(unittest.expectAsync(((api.Dataset response) {
        checkDataset(response);
      })));
    });

  });


  unittest.group("resource-ExperimentalJobsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new common_test.HttpServerMock();
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
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.create(arg_request).then(unittest.expectAsync(((api.ExperimentalCreateJobResponse response) {
        checkExperimentalCreateJobResponse(response);
      })));
    });

  });


  unittest.group("resource-JobsResourceApi", () {
    unittest.test("method--cancel", () {

      var mock = new common_test.HttpServerMock();
      api.JobsResourceApi res = new api.GenomicsApi(mock).jobs;
      var arg_jobId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.cancel(arg_jobId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.JobsResourceApi res = new api.GenomicsApi(mock).jobs;
      var arg_jobId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_jobId).then(unittest.expectAsync(((api.Job response) {
        checkJob(response);
      })));
    });

    unittest.test("method--search", () {

      var mock = new common_test.HttpServerMock();
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
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.search(arg_request).then(unittest.expectAsync(((api.SearchJobsResponse response) {
        checkSearchJobsResponse(response);
      })));
    });

  });


  unittest.group("resource-ReadsResourceApi", () {
    unittest.test("method--search", () {

      var mock = new common_test.HttpServerMock();
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
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.search(arg_request).then(unittest.expectAsync(((api.SearchReadsResponse response) {
        checkSearchReadsResponse(response);
      })));
    });

  });


  unittest.group("resource-ReadsetsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.ReadsetsResourceApi res = new api.GenomicsApi(mock).readsets;
      var arg_readsetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("readsets/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_readsetId"));

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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_readsetId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--export", () {

      var mock = new common_test.HttpServerMock();
      api.ReadsetsResourceApi res = new api.GenomicsApi(mock).readsets;
      var arg_request = buildExportReadsetsRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ExportReadsetsRequest.fromJson(json);
        checkExportReadsetsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("readsets/export"));
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
        var resp = convert.JSON.encode(buildExportReadsetsResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.export(arg_request).then(unittest.expectAsync(((api.ExportReadsetsResponse response) {
        checkExportReadsetsResponse(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.ReadsetsResourceApi res = new api.GenomicsApi(mock).readsets;
      var arg_readsetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("readsets/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_readsetId"));

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
        var resp = convert.JSON.encode(buildReadset());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_readsetId).then(unittest.expectAsync(((api.Readset response) {
        checkReadset(response);
      })));
    });

    unittest.test("method--import", () {

      var mock = new common_test.HttpServerMock();
      api.ReadsetsResourceApi res = new api.GenomicsApi(mock).readsets;
      var arg_request = buildImportReadsetsRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ImportReadsetsRequest.fromJson(json);
        checkImportReadsetsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("readsets/import"));
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
        var resp = convert.JSON.encode(buildImportReadsetsResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.import(arg_request).then(unittest.expectAsync(((api.ImportReadsetsResponse response) {
        checkImportReadsetsResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.ReadsetsResourceApi res = new api.GenomicsApi(mock).readsets;
      var arg_request = buildReadset();
      var arg_readsetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Readset.fromJson(json);
        checkReadset(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("readsets/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_readsetId"));

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
        var resp = convert.JSON.encode(buildReadset());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_readsetId).then(unittest.expectAsync(((api.Readset response) {
        checkReadset(response);
      })));
    });

    unittest.test("method--search", () {

      var mock = new common_test.HttpServerMock();
      api.ReadsetsResourceApi res = new api.GenomicsApi(mock).readsets;
      var arg_request = buildSearchReadsetsRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.SearchReadsetsRequest.fromJson(json);
        checkSearchReadsetsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("readsets/search"));
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
        var resp = convert.JSON.encode(buildSearchReadsetsResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.search(arg_request).then(unittest.expectAsync(((api.SearchReadsetsResponse response) {
        checkSearchReadsetsResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.ReadsetsResourceApi res = new api.GenomicsApi(mock).readsets;
      var arg_request = buildReadset();
      var arg_readsetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Readset.fromJson(json);
        checkReadset(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("readsets/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_readsetId"));

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
        var resp = convert.JSON.encode(buildReadset());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_readsetId).then(unittest.expectAsync(((api.Readset response) {
        checkReadset(response);
      })));
    });

  });


  unittest.group("resource-ReadsetsCoveragebucketsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.ReadsetsCoveragebucketsResourceApi res = new api.GenomicsApi(mock).readsets.coveragebuckets;
      var arg_readsetId = "foo";
      var arg_maxResults = "foo";
      var arg_pageToken = "foo";
      var arg_range_sequenceEnd = "foo";
      var arg_range_sequenceName = "foo";
      var arg_range_sequenceStart = "foo";
      var arg_targetBucketWidth = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("readsets/"));
        pathOffset += 9;
        index = path.indexOf("/coveragebuckets", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_readsetId"));
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
        unittest.expect(queryMap["maxResults"].first, unittest.equals(arg_maxResults));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["range.sequenceEnd"].first, unittest.equals(arg_range_sequenceEnd));
        unittest.expect(queryMap["range.sequenceName"].first, unittest.equals(arg_range_sequenceName));
        unittest.expect(queryMap["range.sequenceStart"].first, unittest.equals(arg_range_sequenceStart));
        unittest.expect(queryMap["targetBucketWidth"].first, unittest.equals(arg_targetBucketWidth));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListCoverageBucketsResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_readsetId, maxResults: arg_maxResults, pageToken: arg_pageToken, range_sequenceEnd: arg_range_sequenceEnd, range_sequenceName: arg_range_sequenceName, range_sequenceStart: arg_range_sequenceStart, targetBucketWidth: arg_targetBucketWidth).then(unittest.expectAsync(((api.ListCoverageBucketsResponse response) {
        checkListCoverageBucketsResponse(response);
      })));
    });

  });


  unittest.group("resource-VariantsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new common_test.HttpServerMock();
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
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.create(arg_request).then(unittest.expectAsync(((api.Variant response) {
        checkVariant(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.VariantsResourceApi res = new api.GenomicsApi(mock).variants;
      var arg_variantId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_variantId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--export", () {

      var mock = new common_test.HttpServerMock();
      api.VariantsResourceApi res = new api.GenomicsApi(mock).variants;
      var arg_request = buildExportVariantsRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ExportVariantsRequest.fromJson(json);
        checkExportVariantsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("variants/export"));
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
        var resp = convert.JSON.encode(buildExportVariantsResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.export(arg_request).then(unittest.expectAsync(((api.ExportVariantsResponse response) {
        checkExportVariantsResponse(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.VariantsResourceApi res = new api.GenomicsApi(mock).variants;
      var arg_variantId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_variantId).then(unittest.expectAsync(((api.Variant response) {
        checkVariant(response);
      })));
    });

    unittest.test("method--import", () {

      var mock = new common_test.HttpServerMock();
      api.VariantsResourceApi res = new api.GenomicsApi(mock).variants;
      var arg_request = buildImportVariantsRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ImportVariantsRequest.fromJson(json);
        checkImportVariantsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
        unittest.expect(path.substring(pathOffset, pathOffset + 15), unittest.equals("variants/import"));
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.import(arg_request).then(unittest.expectAsync(((api.ImportVariantsResponse response) {
        checkImportVariantsResponse(response);
      })));
    });

    unittest.test("method--search", () {

      var mock = new common_test.HttpServerMock();
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
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.search(arg_request).then(unittest.expectAsync(((api.SearchVariantsResponse response) {
        checkSearchVariantsResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
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
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_variantId).then(unittest.expectAsync(((api.Variant response) {
        checkVariant(response);
      })));
    });

  });


  unittest.group("resource-VariantsetsResourceApi", () {
    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.VariantsetsResourceApi res = new api.GenomicsApi(mock).variantsets;
      var arg_variantSetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_variantSetId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.VariantsetsResourceApi res = new api.GenomicsApi(mock).variantsets;
      var arg_variantSetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_variantSetId).then(unittest.expectAsync(((api.VariantSet response) {
        checkVariantSet(response);
      })));
    });

    unittest.test("method--mergeVariants", () {

      var mock = new common_test.HttpServerMock();
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
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.mergeVariants(arg_request, arg_variantSetId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
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
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_variantSetId).then(unittest.expectAsync(((api.VariantSet response) {
        checkVariantSet(response);
      })));
    });

    unittest.test("method--search", () {

      var mock = new common_test.HttpServerMock();
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
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.search(arg_request).then(unittest.expectAsync(((api.SearchVariantSetsResponse response) {
        checkSearchVariantSetsResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
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
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("genomics/v1beta/"));
        pathOffset += 16;
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_variantSetId).then(unittest.expectAsync(((api.VariantSet response) {
        checkVariantSet(response);
      })));
    });

  });


}

