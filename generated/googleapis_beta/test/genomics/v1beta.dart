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



core.int buildCounterBeacon = 0;
buildBeacon() {
  var o = new api.Beacon();
  buildCounterBeacon++;
  if (buildCounterBeacon < 3) {
    o.exists = true;
  }
  buildCounterBeacon--;
  return o;
}

checkBeacon(api.Beacon o) {
  buildCounterBeacon++;
  if (buildCounterBeacon < 3) {
    unittest.expect(o.exists, unittest.isTrue);
  }
  buildCounterBeacon--;
}

buildUnnamed1122() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed1122(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed1123() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed1123(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed1124() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1124(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1125() {
  var o = new core.Map<core.String, core.List<core.String>>();
  o["x"] = buildUnnamed1124();
  o["y"] = buildUnnamed1124();
  return o;
}

checkUnnamed1125(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1124(o["x"]);
  checkUnnamed1124(o["y"]);
}

core.int buildCounterCall = 0;
buildCall() {
  var o = new api.Call();
  buildCounterCall++;
  if (buildCounterCall < 3) {
    o.callsetId = "foo";
    o.callsetName = "foo";
    o.genotype = buildUnnamed1122();
    o.genotypeLikelihood = buildUnnamed1123();
    o.info = buildUnnamed1125();
    o.phaseset = "foo";
  }
  buildCounterCall--;
  return o;
}

checkCall(api.Call o) {
  buildCounterCall++;
  if (buildCounterCall < 3) {
    unittest.expect(o.callsetId, unittest.equals('foo'));
    unittest.expect(o.callsetName, unittest.equals('foo'));
    checkUnnamed1122(o.genotype);
    checkUnnamed1123(o.genotypeLikelihood);
    checkUnnamed1125(o.info);
    unittest.expect(o.phaseset, unittest.equals('foo'));
  }
  buildCounterCall--;
}

buildUnnamed1126() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1126(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1127() {
  var o = new core.Map<core.String, core.List<core.String>>();
  o["x"] = buildUnnamed1126();
  o["y"] = buildUnnamed1126();
  return o;
}

checkUnnamed1127(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1126(o["x"]);
  checkUnnamed1126(o["y"]);
}

core.int buildCounterCallset = 0;
buildCallset() {
  var o = new api.Callset();
  buildCounterCallset++;
  if (buildCounterCallset < 3) {
    o.created = "foo";
    o.id = "foo";
    o.info = buildUnnamed1127();
    o.name = "foo";
    o.variantsetId = "foo";
  }
  buildCounterCallset--;
  return o;
}

checkCallset(api.Callset o) {
  buildCounterCallset++;
  if (buildCounterCallset < 3) {
    unittest.expect(o.created, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed1127(o.info);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.variantsetId, unittest.equals('foo'));
  }
  buildCounterCallset--;
}

core.int buildCounterContigBound = 0;
buildContigBound() {
  var o = new api.ContigBound();
  buildCounterContigBound++;
  if (buildCounterContigBound < 3) {
    o.contig = "foo";
    o.upperBound = "foo";
  }
  buildCounterContigBound--;
  return o;
}

checkContigBound(api.ContigBound o) {
  buildCounterContigBound++;
  if (buildCounterContigBound < 3) {
    unittest.expect(o.contig, unittest.equals('foo'));
    unittest.expect(o.upperBound, unittest.equals('foo'));
  }
  buildCounterContigBound--;
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

buildUnnamed1128() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1128(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1129() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1129(core.List<core.String> o) {
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
    o.pairedSourceUris = buildUnnamed1128();
    o.projectId = "foo";
    o.sourceUris = buildUnnamed1129();
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
    checkUnnamed1128(o.pairedSourceUris);
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkUnnamed1129(o.sourceUris);
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

buildUnnamed1130() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1130(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1131() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1131(core.List<core.String> o) {
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
    o.readsetIds = buildUnnamed1130();
    o.referenceNames = buildUnnamed1131();
  }
  buildCounterExportReadsetsRequest--;
  return o;
}

checkExportReadsetsRequest(api.ExportReadsetsRequest o) {
  buildCounterExportReadsetsRequest++;
  if (buildCounterExportReadsetsRequest < 3) {
    unittest.expect(o.exportUri, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkUnnamed1130(o.readsetIds);
    checkUnnamed1131(o.referenceNames);
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

buildUnnamed1132() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1132(core.List<core.String> o) {
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
    o.callsetIds = buildUnnamed1132();
    o.format = "foo";
    o.projectId = "foo";
    o.variantsetId = "foo";
  }
  buildCounterExportVariantsRequest--;
  return o;
}

checkExportVariantsRequest(api.ExportVariantsRequest o) {
  buildCounterExportVariantsRequest++;
  if (buildCounterExportVariantsRequest < 3) {
    unittest.expect(o.bigqueryDataset, unittest.equals('foo'));
    unittest.expect(o.bigqueryTable, unittest.equals('foo'));
    checkUnnamed1132(o.callsetIds);
    unittest.expect(o.format, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.variantsetId, unittest.equals('foo'));
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

buildUnnamed1133() {
  var o = new core.List<api.ContigBound>();
  o.add(buildContigBound());
  o.add(buildContigBound());
  return o;
}

checkUnnamed1133(core.List<api.ContigBound> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkContigBound(o[0]);
  checkContigBound(o[1]);
}

buildUnnamed1134() {
  var o = new core.List<api.Metadata>();
  o.add(buildMetadata());
  o.add(buildMetadata());
  return o;
}

checkUnnamed1134(core.List<api.Metadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetadata(o[0]);
  checkMetadata(o[1]);
}

core.int buildCounterGetVariantsSummaryResponse = 0;
buildGetVariantsSummaryResponse() {
  var o = new api.GetVariantsSummaryResponse();
  buildCounterGetVariantsSummaryResponse++;
  if (buildCounterGetVariantsSummaryResponse < 3) {
    o.contigBounds = buildUnnamed1133();
    o.metadata = buildUnnamed1134();
  }
  buildCounterGetVariantsSummaryResponse--;
  return o;
}

checkGetVariantsSummaryResponse(api.GetVariantsSummaryResponse o) {
  buildCounterGetVariantsSummaryResponse++;
  if (buildCounterGetVariantsSummaryResponse < 3) {
    checkUnnamed1133(o.contigBounds);
    checkUnnamed1134(o.metadata);
  }
  buildCounterGetVariantsSummaryResponse--;
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

buildUnnamed1135() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1135(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1136() {
  var o = new core.List<api.Header>();
  o.add(buildHeader());
  o.add(buildHeader());
  return o;
}

checkUnnamed1136(core.List<api.Header> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHeader(o[0]);
  checkHeader(o[1]);
}

buildUnnamed1137() {
  var o = new core.List<api.Program>();
  o.add(buildProgram());
  o.add(buildProgram());
  return o;
}

checkUnnamed1137(core.List<api.Program> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkProgram(o[0]);
  checkProgram(o[1]);
}

buildUnnamed1138() {
  var o = new core.List<api.ReadGroup>();
  o.add(buildReadGroup());
  o.add(buildReadGroup());
  return o;
}

checkUnnamed1138(core.List<api.ReadGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReadGroup(o[0]);
  checkReadGroup(o[1]);
}

buildUnnamed1139() {
  var o = new core.List<api.ReferenceSequence>();
  o.add(buildReferenceSequence());
  o.add(buildReferenceSequence());
  return o;
}

checkUnnamed1139(core.List<api.ReferenceSequence> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReferenceSequence(o[0]);
  checkReferenceSequence(o[1]);
}

core.int buildCounterHeaderSection = 0;
buildHeaderSection() {
  var o = new api.HeaderSection();
  buildCounterHeaderSection++;
  if (buildCounterHeaderSection < 3) {
    o.comments = buildUnnamed1135();
    o.fileUri = "foo";
    o.filename = "foo";
    o.headers = buildUnnamed1136();
    o.programs = buildUnnamed1137();
    o.readGroups = buildUnnamed1138();
    o.refSequences = buildUnnamed1139();
  }
  buildCounterHeaderSection--;
  return o;
}

checkHeaderSection(api.HeaderSection o) {
  buildCounterHeaderSection++;
  if (buildCounterHeaderSection < 3) {
    checkUnnamed1135(o.comments);
    unittest.expect(o.fileUri, unittest.equals('foo'));
    unittest.expect(o.filename, unittest.equals('foo'));
    checkUnnamed1136(o.headers);
    checkUnnamed1137(o.programs);
    checkUnnamed1138(o.readGroups);
    checkUnnamed1139(o.refSequences);
  }
  buildCounterHeaderSection--;
}

buildUnnamed1140() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1140(core.List<core.String> o) {
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
    o.sourceUris = buildUnnamed1140();
  }
  buildCounterImportReadsetsRequest--;
  return o;
}

checkImportReadsetsRequest(api.ImportReadsetsRequest o) {
  buildCounterImportReadsetsRequest++;
  if (buildCounterImportReadsetsRequest < 3) {
    unittest.expect(o.datasetId, unittest.equals('foo'));
    checkUnnamed1140(o.sourceUris);
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

buildUnnamed1141() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1141(core.List<core.String> o) {
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
    o.sourceUris = buildUnnamed1141();
    o.variantsetId = "foo";
  }
  buildCounterImportVariantsRequest--;
  return o;
}

checkImportVariantsRequest(api.ImportVariantsRequest o) {
  buildCounterImportVariantsRequest++;
  if (buildCounterImportVariantsRequest < 3) {
    unittest.expect(o.format, unittest.equals('foo'));
    checkUnnamed1141(o.sourceUris);
    unittest.expect(o.variantsetId, unittest.equals('foo'));
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

buildUnnamed1142() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1142(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1143() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1143(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1144() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1144(core.List<core.String> o) {
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
    o.errors = buildUnnamed1142();
    o.id = "foo";
    o.importedIds = buildUnnamed1143();
    o.projectId = "foo";
    o.request = buildJobRequest();
    o.status = "foo";
    o.warnings = buildUnnamed1144();
  }
  buildCounterJob--;
  return o;
}

checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    unittest.expect(o.created, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    checkUnnamed1142(o.errors);
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed1143(o.importedIds);
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkJobRequest(o.request);
    unittest.expect(o.status, unittest.equals('foo'));
    checkUnnamed1144(o.warnings);
  }
  buildCounterJob--;
}

buildUnnamed1145() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1145(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1146() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1146(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterJobRequest = 0;
buildJobRequest() {
  var o = new api.JobRequest();
  buildCounterJobRequest++;
  if (buildCounterJobRequest < 3) {
    o.destination = buildUnnamed1145();
    o.source = buildUnnamed1146();
    o.type = "foo";
  }
  buildCounterJobRequest--;
  return o;
}

checkJobRequest(api.JobRequest o) {
  buildCounterJobRequest++;
  if (buildCounterJobRequest < 3) {
    checkUnnamed1145(o.destination);
    checkUnnamed1146(o.source);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterJobRequest--;
}

buildUnnamed1147() {
  var o = new core.List<api.CoverageBucket>();
  o.add(buildCoverageBucket());
  o.add(buildCoverageBucket());
  return o;
}

checkUnnamed1147(core.List<api.CoverageBucket> o) {
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
    o.coverageBuckets = buildUnnamed1147();
    o.nextPageToken = "foo";
  }
  buildCounterListCoverageBucketsResponse--;
  return o;
}

checkListCoverageBucketsResponse(api.ListCoverageBucketsResponse o) {
  buildCounterListCoverageBucketsResponse++;
  if (buildCounterListCoverageBucketsResponse < 3) {
    unittest.expect(o.bucketWidth, unittest.equals('foo'));
    checkUnnamed1147(o.coverageBuckets);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCoverageBucketsResponse--;
}

buildUnnamed1148() {
  var o = new core.List<api.Dataset>();
  o.add(buildDataset());
  o.add(buildDataset());
  return o;
}

checkUnnamed1148(core.List<api.Dataset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataset(o[0]);
  checkDataset(o[1]);
}

core.int buildCounterListDatasetsResponse = 0;
buildListDatasetsResponse() {
  var o = new api.ListDatasetsResponse();
  buildCounterListDatasetsResponse++;
  if (buildCounterListDatasetsResponse < 3) {
    o.datasets = buildUnnamed1148();
    o.nextPageToken = "foo";
  }
  buildCounterListDatasetsResponse--;
  return o;
}

checkListDatasetsResponse(api.ListDatasetsResponse o) {
  buildCounterListDatasetsResponse++;
  if (buildCounterListDatasetsResponse < 3) {
    checkUnnamed1148(o.datasets);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListDatasetsResponse--;
}

buildUnnamed1149() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1149(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1150() {
  var o = new core.Map<core.String, core.List<core.String>>();
  o["x"] = buildUnnamed1149();
  o["y"] = buildUnnamed1149();
  return o;
}

checkUnnamed1150(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1149(o["x"]);
  checkUnnamed1149(o["y"]);
}

core.int buildCounterMetadata = 0;
buildMetadata() {
  var o = new api.Metadata();
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    o.description = "foo";
    o.id = "foo";
    o.info = buildUnnamed1150();
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
    checkUnnamed1150(o.info);
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

buildUnnamed1151() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1151(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1152() {
  var o = new core.Map<core.String, core.List<core.String>>();
  o["x"] = buildUnnamed1151();
  o["y"] = buildUnnamed1151();
  return o;
}

checkUnnamed1152(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1151(o["x"]);
  checkUnnamed1151(o["y"]);
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
    o.tags = buildUnnamed1152();
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
    checkUnnamed1152(o.tags);
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

buildUnnamed1153() {
  var o = new core.List<api.HeaderSection>();
  o.add(buildHeaderSection());
  o.add(buildHeaderSection());
  return o;
}

checkUnnamed1153(core.List<api.HeaderSection> o) {
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
    o.fileData = buildUnnamed1153();
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
    checkUnnamed1153(o.fileData);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterReadset--;
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

buildUnnamed1154() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1154(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSearchCallsetsRequest = 0;
buildSearchCallsetsRequest() {
  var o = new api.SearchCallsetsRequest();
  buildCounterSearchCallsetsRequest++;
  if (buildCounterSearchCallsetsRequest < 3) {
    o.maxResults = "foo";
    o.name = "foo";
    o.pageToken = "foo";
    o.variantsetIds = buildUnnamed1154();
  }
  buildCounterSearchCallsetsRequest--;
  return o;
}

checkSearchCallsetsRequest(api.SearchCallsetsRequest o) {
  buildCounterSearchCallsetsRequest++;
  if (buildCounterSearchCallsetsRequest < 3) {
    unittest.expect(o.maxResults, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    checkUnnamed1154(o.variantsetIds);
  }
  buildCounterSearchCallsetsRequest--;
}

buildUnnamed1155() {
  var o = new core.List<api.Callset>();
  o.add(buildCallset());
  o.add(buildCallset());
  return o;
}

checkUnnamed1155(core.List<api.Callset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCallset(o[0]);
  checkCallset(o[1]);
}

core.int buildCounterSearchCallsetsResponse = 0;
buildSearchCallsetsResponse() {
  var o = new api.SearchCallsetsResponse();
  buildCounterSearchCallsetsResponse++;
  if (buildCounterSearchCallsetsResponse < 3) {
    o.callsets = buildUnnamed1155();
    o.nextPageToken = "foo";
  }
  buildCounterSearchCallsetsResponse--;
  return o;
}

checkSearchCallsetsResponse(api.SearchCallsetsResponse o) {
  buildCounterSearchCallsetsResponse++;
  if (buildCounterSearchCallsetsResponse < 3) {
    checkUnnamed1155(o.callsets);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterSearchCallsetsResponse--;
}

buildUnnamed1156() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1156(core.List<core.String> o) {
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
    o.status = buildUnnamed1156();
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
    checkUnnamed1156(o.status);
  }
  buildCounterSearchJobsRequest--;
}

buildUnnamed1157() {
  var o = new core.List<api.Job>();
  o.add(buildJob());
  o.add(buildJob());
  return o;
}

checkUnnamed1157(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterSearchJobsResponse = 0;
buildSearchJobsResponse() {
  var o = new api.SearchJobsResponse();
  buildCounterSearchJobsResponse++;
  if (buildCounterSearchJobsResponse < 3) {
    o.jobs = buildUnnamed1157();
    o.nextPageToken = "foo";
  }
  buildCounterSearchJobsResponse--;
  return o;
}

checkSearchJobsResponse(api.SearchJobsResponse o) {
  buildCounterSearchJobsResponse++;
  if (buildCounterSearchJobsResponse < 3) {
    checkUnnamed1157(o.jobs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterSearchJobsResponse--;
}

buildUnnamed1158() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1158(core.List<core.String> o) {
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
    o.readsetIds = buildUnnamed1158();
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
    checkUnnamed1158(o.readsetIds);
    unittest.expect(o.sequenceEnd, unittest.equals('foo'));
    unittest.expect(o.sequenceName, unittest.equals('foo'));
    unittest.expect(o.sequenceStart, unittest.equals('foo'));
  }
  buildCounterSearchReadsRequest--;
}

buildUnnamed1159() {
  var o = new core.List<api.Read>();
  o.add(buildRead());
  o.add(buildRead());
  return o;
}

checkUnnamed1159(core.List<api.Read> o) {
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
    o.reads = buildUnnamed1159();
  }
  buildCounterSearchReadsResponse--;
  return o;
}

checkSearchReadsResponse(api.SearchReadsResponse o) {
  buildCounterSearchReadsResponse++;
  if (buildCounterSearchReadsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1159(o.reads);
  }
  buildCounterSearchReadsResponse--;
}

buildUnnamed1160() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1160(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSearchReadsetsRequest = 0;
buildSearchReadsetsRequest() {
  var o = new api.SearchReadsetsRequest();
  buildCounterSearchReadsetsRequest++;
  if (buildCounterSearchReadsetsRequest < 3) {
    o.datasetIds = buildUnnamed1160();
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
    checkUnnamed1160(o.datasetIds);
    unittest.expect(o.maxResults, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.pageToken, unittest.equals('foo'));
  }
  buildCounterSearchReadsetsRequest--;
}

buildUnnamed1161() {
  var o = new core.List<api.Readset>();
  o.add(buildReadset());
  o.add(buildReadset());
  return o;
}

checkUnnamed1161(core.List<api.Readset> o) {
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
    o.readsets = buildUnnamed1161();
  }
  buildCounterSearchReadsetsResponse--;
  return o;
}

checkSearchReadsetsResponse(api.SearchReadsetsResponse o) {
  buildCounterSearchReadsetsResponse++;
  if (buildCounterSearchReadsetsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1161(o.readsets);
  }
  buildCounterSearchReadsetsResponse--;
}

buildUnnamed1162() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1162(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1163() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1163(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSearchVariantsRequest = 0;
buildSearchVariantsRequest() {
  var o = new api.SearchVariantsRequest();
  buildCounterSearchVariantsRequest++;
  if (buildCounterSearchVariantsRequest < 3) {
    o.callsetIds = buildUnnamed1162();
    o.callsetNames = buildUnnamed1163();
    o.contig = "foo";
    o.endPosition = "foo";
    o.maxResults = "foo";
    o.pageToken = "foo";
    o.startPosition = "foo";
    o.variantName = "foo";
    o.variantsetId = "foo";
  }
  buildCounterSearchVariantsRequest--;
  return o;
}

checkSearchVariantsRequest(api.SearchVariantsRequest o) {
  buildCounterSearchVariantsRequest++;
  if (buildCounterSearchVariantsRequest < 3) {
    checkUnnamed1162(o.callsetIds);
    checkUnnamed1163(o.callsetNames);
    unittest.expect(o.contig, unittest.equals('foo'));
    unittest.expect(o.endPosition, unittest.equals('foo'));
    unittest.expect(o.maxResults, unittest.equals('foo'));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    unittest.expect(o.startPosition, unittest.equals('foo'));
    unittest.expect(o.variantName, unittest.equals('foo'));
    unittest.expect(o.variantsetId, unittest.equals('foo'));
  }
  buildCounterSearchVariantsRequest--;
}

buildUnnamed1164() {
  var o = new core.List<api.Variant>();
  o.add(buildVariant());
  o.add(buildVariant());
  return o;
}

checkUnnamed1164(core.List<api.Variant> o) {
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
    o.variants = buildUnnamed1164();
  }
  buildCounterSearchVariantsResponse--;
  return o;
}

checkSearchVariantsResponse(api.SearchVariantsResponse o) {
  buildCounterSearchVariantsResponse++;
  if (buildCounterSearchVariantsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1164(o.variants);
  }
  buildCounterSearchVariantsResponse--;
}

buildUnnamed1165() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1165(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1166() {
  var o = new core.List<api.Call>();
  o.add(buildCall());
  o.add(buildCall());
  return o;
}

checkUnnamed1166(core.List<api.Call> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCall(o[0]);
  checkCall(o[1]);
}

buildUnnamed1167() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1167(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1168() {
  var o = new core.Map<core.String, core.List<core.String>>();
  o["x"] = buildUnnamed1167();
  o["y"] = buildUnnamed1167();
  return o;
}

checkUnnamed1168(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1167(o["x"]);
  checkUnnamed1167(o["y"]);
}

buildUnnamed1169() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1169(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVariant = 0;
buildVariant() {
  var o = new api.Variant();
  buildCounterVariant++;
  if (buildCounterVariant < 3) {
    o.alternateBases = buildUnnamed1165();
    o.calls = buildUnnamed1166();
    o.contig = "foo";
    o.created = "foo";
    o.end = "foo";
    o.id = "foo";
    o.info = buildUnnamed1168();
    o.names = buildUnnamed1169();
    o.position = "foo";
    o.referenceBases = "foo";
    o.variantsetId = "foo";
  }
  buildCounterVariant--;
  return o;
}

checkVariant(api.Variant o) {
  buildCounterVariant++;
  if (buildCounterVariant < 3) {
    checkUnnamed1165(o.alternateBases);
    checkUnnamed1166(o.calls);
    unittest.expect(o.contig, unittest.equals('foo'));
    unittest.expect(o.created, unittest.equals('foo'));
    unittest.expect(o.end, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed1168(o.info);
    checkUnnamed1169(o.names);
    unittest.expect(o.position, unittest.equals('foo'));
    unittest.expect(o.referenceBases, unittest.equals('foo'));
    unittest.expect(o.variantsetId, unittest.equals('foo'));
  }
  buildCounterVariant--;
}


main() {
  unittest.group("obj-schema-Beacon", () {
    unittest.test("to-json--from-json", () {
      var o = buildBeacon();
      var od = new api.Beacon.fromJson(o.toJson());
      checkBeacon(od);
    });
  });


  unittest.group("obj-schema-Call", () {
    unittest.test("to-json--from-json", () {
      var o = buildCall();
      var od = new api.Call.fromJson(o.toJson());
      checkCall(od);
    });
  });


  unittest.group("obj-schema-Callset", () {
    unittest.test("to-json--from-json", () {
      var o = buildCallset();
      var od = new api.Callset.fromJson(o.toJson());
      checkCallset(od);
    });
  });


  unittest.group("obj-schema-ContigBound", () {
    unittest.test("to-json--from-json", () {
      var o = buildContigBound();
      var od = new api.ContigBound.fromJson(o.toJson());
      checkContigBound(od);
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


  unittest.group("obj-schema-GetVariantsSummaryResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetVariantsSummaryResponse();
      var od = new api.GetVariantsSummaryResponse.fromJson(o.toJson());
      checkGetVariantsSummaryResponse(od);
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


  unittest.group("obj-schema-ReferenceSequence", () {
    unittest.test("to-json--from-json", () {
      var o = buildReferenceSequence();
      var od = new api.ReferenceSequence.fromJson(o.toJson());
      checkReferenceSequence(od);
    });
  });


  unittest.group("obj-schema-SearchCallsetsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchCallsetsRequest();
      var od = new api.SearchCallsetsRequest.fromJson(o.toJson());
      checkSearchCallsetsRequest(od);
    });
  });


  unittest.group("obj-schema-SearchCallsetsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSearchCallsetsResponse();
      var od = new api.SearchCallsetsResponse.fromJson(o.toJson());
      checkSearchCallsetsResponse(od);
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


  unittest.group("resource-BeaconsResourceApi", () {
    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.BeaconsResourceApi res = new api.GenomicsApi(mock).beacons;
      var arg_variantsetId = "foo";
      var arg_allele = "foo";
      var arg_contig = "foo";
      var arg_position = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 8), unittest.equals("beacons/"));
        pathOffset += 8;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_variantsetId"));

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
        unittest.expect(queryMap["allele"].first, unittest.equals(arg_allele));
        unittest.expect(queryMap["contig"].first, unittest.equals(arg_contig));
        unittest.expect(queryMap["position"].first, unittest.equals(arg_position));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildBeacon());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_variantsetId, allele: arg_allele, contig: arg_contig, position: arg_position).then(unittest.expectAsync(((api.Beacon response) {
        checkBeacon(response);
      })));
    });

  });


  unittest.group("resource-CallsetsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new common_test.HttpServerMock();
      api.CallsetsResourceApi res = new api.GenomicsApi(mock).callsets;
      var arg_request = buildCallset();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Callset.fromJson(json);
        checkCallset(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
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
        var resp = convert.JSON.encode(buildCallset());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.create(arg_request).then(unittest.expectAsync(((api.Callset response) {
        checkCallset(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
      api.CallsetsResourceApi res = new api.GenomicsApi(mock).callsets;
      var arg_callsetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("callsets/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_callsetId"));

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
      res.delete(arg_callsetId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.CallsetsResourceApi res = new api.GenomicsApi(mock).callsets;
      var arg_callsetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("callsets/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_callsetId"));

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
        var resp = convert.JSON.encode(buildCallset());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_callsetId).then(unittest.expectAsync(((api.Callset response) {
        checkCallset(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.CallsetsResourceApi res = new api.GenomicsApi(mock).callsets;
      var arg_request = buildCallset();
      var arg_callsetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Callset.fromJson(json);
        checkCallset(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("callsets/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_callsetId"));

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
        var resp = convert.JSON.encode(buildCallset());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_callsetId).then(unittest.expectAsync(((api.Callset response) {
        checkCallset(response);
      })));
    });

    unittest.test("method--search", () {

      var mock = new common_test.HttpServerMock();
      api.CallsetsResourceApi res = new api.GenomicsApi(mock).callsets;
      var arg_request = buildSearchCallsetsRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.SearchCallsetsRequest.fromJson(json);
        checkSearchCallsetsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
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
        var resp = convert.JSON.encode(buildSearchCallsetsResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.search(arg_request).then(unittest.expectAsync(((api.SearchCallsetsResponse response) {
        checkSearchCallsetsResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.CallsetsResourceApi res = new api.GenomicsApi(mock).callsets;
      var arg_request = buildCallset();
      var arg_callsetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Callset.fromJson(json);
        checkCallset(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 9), unittest.equals("callsets/"));
        pathOffset += 9;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_callsetId"));

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
        var resp = convert.JSON.encode(buildCallset());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_callsetId).then(unittest.expectAsync(((api.Callset response) {
        checkCallset(response);
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
        pathOffset += 17;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
        pathOffset += 17;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
        pathOffset += 17;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
        pathOffset += 17;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
        pathOffset += 17;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
        pathOffset += 17;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
        pathOffset += 17;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
        pathOffset += 17;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
        pathOffset += 17;
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_variantId).then(unittest.expectAsync(((api.Variant response) {
        checkVariant(response);
      })));
    });

    unittest.test("method--getSummary", () {

      var mock = new common_test.HttpServerMock();
      api.VariantsResourceApi res = new api.GenomicsApi(mock).variants;
      var arg_variantsetId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 16), unittest.equals("variants/summary"));
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
        unittest.expect(queryMap["variantsetId"].first, unittest.equals(arg_variantsetId));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildGetVariantsSummaryResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.getSummary(variantsetId: arg_variantsetId).then(unittest.expectAsync(((api.GetVariantsSummaryResponse response) {
        checkGetVariantsSummaryResponse(response);
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
        pathOffset += 17;
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

    unittest.test("method--patch", () {

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
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_variantId).then(unittest.expectAsync(((api.Variant response) {
        checkVariant(response);
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
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
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("/genomics/v1beta/"));
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_variantId).then(unittest.expectAsync(((api.Variant response) {
        checkVariant(response);
      })));
    });

  });


}

