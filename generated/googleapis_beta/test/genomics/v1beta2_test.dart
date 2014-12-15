library googleapis_beta.genomics.v1beta2.test;

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

import 'package:googleapis_beta/genomics/v1beta2.dart' as api;



buildUnnamed1190() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1190(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1191() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1191(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAlignReadGroupSetsRequest = 0;
buildAlignReadGroupSetsRequest() {
  var o = new api.AlignReadGroupSetsRequest();
  buildCounterAlignReadGroupSetsRequest++;
  if (buildCounterAlignReadGroupSetsRequest < 3) {
    o.bamSourceUris = buildUnnamed1190();
    o.datasetId = "foo";
    o.interleavedFastqSource = buildInterleavedFastqSource();
    o.pairedFastqSource = buildPairedFastqSource();
    o.readGroupSetIds = buildUnnamed1191();
  }
  buildCounterAlignReadGroupSetsRequest--;
  return o;
}

checkAlignReadGroupSetsRequest(api.AlignReadGroupSetsRequest o) {
  buildCounterAlignReadGroupSetsRequest++;
  if (buildCounterAlignReadGroupSetsRequest < 3) {
    checkUnnamed1190(o.bamSourceUris);
    unittest.expect(o.datasetId, unittest.equals('foo'));
    checkInterleavedFastqSource(o.interleavedFastqSource);
    checkPairedFastqSource(o.pairedFastqSource);
    checkUnnamed1191(o.readGroupSetIds);
  }
  buildCounterAlignReadGroupSetsRequest--;
}

core.int buildCounterAlignReadGroupSetsResponse = 0;
buildAlignReadGroupSetsResponse() {
  var o = new api.AlignReadGroupSetsResponse();
  buildCounterAlignReadGroupSetsResponse++;
  if (buildCounterAlignReadGroupSetsResponse < 3) {
    o.jobId = "foo";
  }
  buildCounterAlignReadGroupSetsResponse--;
  return o;
}

checkAlignReadGroupSetsResponse(api.AlignReadGroupSetsResponse o) {
  buildCounterAlignReadGroupSetsResponse++;
  if (buildCounterAlignReadGroupSetsResponse < 3) {
    unittest.expect(o.jobId, unittest.equals('foo'));
  }
  buildCounterAlignReadGroupSetsResponse--;
}

buildUnnamed1192() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed1192(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed1193() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed1193(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

buildUnnamed1194() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1194(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1195() {
  var o = new core.Map<core.String, core.List<core.String>>();
  o["x"] = buildUnnamed1194();
  o["y"] = buildUnnamed1194();
  return o;
}

checkUnnamed1195(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1194(o["x"]);
  checkUnnamed1194(o["y"]);
}

core.int buildCounterCall = 0;
buildCall() {
  var o = new api.Call();
  buildCounterCall++;
  if (buildCounterCall < 3) {
    o.callSetId = "foo";
    o.callSetName = "foo";
    o.genotype = buildUnnamed1192();
    o.genotypeLikelihood = buildUnnamed1193();
    o.info = buildUnnamed1195();
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
    checkUnnamed1192(o.genotype);
    checkUnnamed1193(o.genotypeLikelihood);
    checkUnnamed1195(o.info);
    unittest.expect(o.phaseset, unittest.equals('foo'));
  }
  buildCounterCall--;
}

buildUnnamed1196() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1196(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1197() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1197(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterCallReadGroupSetsRequest = 0;
buildCallReadGroupSetsRequest() {
  var o = new api.CallReadGroupSetsRequest();
  buildCounterCallReadGroupSetsRequest++;
  if (buildCounterCallReadGroupSetsRequest < 3) {
    o.datasetId = "foo";
    o.readGroupSetIds = buildUnnamed1196();
    o.sourceUris = buildUnnamed1197();
  }
  buildCounterCallReadGroupSetsRequest--;
  return o;
}

checkCallReadGroupSetsRequest(api.CallReadGroupSetsRequest o) {
  buildCounterCallReadGroupSetsRequest++;
  if (buildCounterCallReadGroupSetsRequest < 3) {
    unittest.expect(o.datasetId, unittest.equals('foo'));
    checkUnnamed1196(o.readGroupSetIds);
    checkUnnamed1197(o.sourceUris);
  }
  buildCounterCallReadGroupSetsRequest--;
}

core.int buildCounterCallReadGroupSetsResponse = 0;
buildCallReadGroupSetsResponse() {
  var o = new api.CallReadGroupSetsResponse();
  buildCounterCallReadGroupSetsResponse++;
  if (buildCounterCallReadGroupSetsResponse < 3) {
    o.jobId = "foo";
  }
  buildCounterCallReadGroupSetsResponse--;
  return o;
}

checkCallReadGroupSetsResponse(api.CallReadGroupSetsResponse o) {
  buildCounterCallReadGroupSetsResponse++;
  if (buildCounterCallReadGroupSetsResponse < 3) {
    unittest.expect(o.jobId, unittest.equals('foo'));
  }
  buildCounterCallReadGroupSetsResponse--;
}

buildUnnamed1198() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1198(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1199() {
  var o = new core.Map<core.String, core.List<core.String>>();
  o["x"] = buildUnnamed1198();
  o["y"] = buildUnnamed1198();
  return o;
}

checkUnnamed1199(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1198(o["x"]);
  checkUnnamed1198(o["y"]);
}

buildUnnamed1200() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1200(core.List<core.String> o) {
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
    o.info = buildUnnamed1199();
    o.name = "foo";
    o.sampleId = "foo";
    o.variantSetIds = buildUnnamed1200();
  }
  buildCounterCallSet--;
  return o;
}

checkCallSet(api.CallSet o) {
  buildCounterCallSet++;
  if (buildCounterCallSet < 3) {
    unittest.expect(o.created, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed1199(o.info);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.sampleId, unittest.equals('foo'));
    checkUnnamed1200(o.variantSetIds);
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
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.isPublic, unittest.isTrue);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectNumber, unittest.equals('foo'));
  }
  buildCounterDataset--;
}

buildUnnamed1201() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1201(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1202() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1202(core.List<core.String> o) {
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
    o.pairedSourceUris = buildUnnamed1201();
    o.projectNumber = "foo";
    o.sourceUris = buildUnnamed1202();
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
    checkUnnamed1201(o.pairedSourceUris);
    unittest.expect(o.projectNumber, unittest.equals('foo'));
    checkUnnamed1202(o.sourceUris);
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

buildUnnamed1203() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1203(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1204() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1204(core.List<core.String> o) {
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
    o.readGroupSetIds = buildUnnamed1203();
    o.referenceNames = buildUnnamed1204();
  }
  buildCounterExportReadGroupSetsRequest--;
  return o;
}

checkExportReadGroupSetsRequest(api.ExportReadGroupSetsRequest o) {
  buildCounterExportReadGroupSetsRequest++;
  if (buildCounterExportReadGroupSetsRequest < 3) {
    unittest.expect(o.exportUri, unittest.equals('foo'));
    unittest.expect(o.projectNumber, unittest.equals('foo'));
    checkUnnamed1203(o.readGroupSetIds);
    checkUnnamed1204(o.referenceNames);
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

buildUnnamed1205() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1205(core.List<core.String> o) {
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
    o.callSetIds = buildUnnamed1205();
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
    checkUnnamed1205(o.callSetIds);
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

core.int buildCounterFastqMetadata = 0;
buildFastqMetadata() {
  var o = new api.FastqMetadata();
  buildCounterFastqMetadata++;
  if (buildCounterFastqMetadata < 3) {
    o.libraryName = "foo";
    o.platformName = "foo";
    o.platformUnit = "foo";
    o.readGroupName = "foo";
    o.sampleName = "foo";
  }
  buildCounterFastqMetadata--;
  return o;
}

checkFastqMetadata(api.FastqMetadata o) {
  buildCounterFastqMetadata++;
  if (buildCounterFastqMetadata < 3) {
    unittest.expect(o.libraryName, unittest.equals('foo'));
    unittest.expect(o.platformName, unittest.equals('foo'));
    unittest.expect(o.platformUnit, unittest.equals('foo'));
    unittest.expect(o.readGroupName, unittest.equals('foo'));
    unittest.expect(o.sampleName, unittest.equals('foo'));
  }
  buildCounterFastqMetadata--;
}

buildUnnamed1206() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1206(core.List<core.String> o) {
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
    o.sourceUris = buildUnnamed1206();
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
    checkUnnamed1206(o.sourceUris);
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

buildUnnamed1207() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1207(core.List<core.String> o) {
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
    o.sourceUris = buildUnnamed1207();
  }
  buildCounterImportVariantsRequest--;
  return o;
}

checkImportVariantsRequest(api.ImportVariantsRequest o) {
  buildCounterImportVariantsRequest++;
  if (buildCounterImportVariantsRequest < 3) {
    unittest.expect(o.format, unittest.equals('foo'));
    checkUnnamed1207(o.sourceUris);
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

buildUnnamed1208() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1208(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInterleavedFastqSource = 0;
buildInterleavedFastqSource() {
  var o = new api.InterleavedFastqSource();
  buildCounterInterleavedFastqSource++;
  if (buildCounterInterleavedFastqSource < 3) {
    o.metadata = buildFastqMetadata();
    o.sourceUris = buildUnnamed1208();
  }
  buildCounterInterleavedFastqSource--;
  return o;
}

checkInterleavedFastqSource(api.InterleavedFastqSource o) {
  buildCounterInterleavedFastqSource++;
  if (buildCounterInterleavedFastqSource < 3) {
    checkFastqMetadata(o.metadata);
    checkUnnamed1208(o.sourceUris);
  }
  buildCounterInterleavedFastqSource--;
}

buildUnnamed1209() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1209(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1210() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1210(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1211() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1211(core.List<core.String> o) {
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
    o.errors = buildUnnamed1209();
    o.id = "foo";
    o.importedIds = buildUnnamed1210();
    o.projectNumber = "foo";
    o.request = buildJobRequest();
    o.status = "foo";
    o.warnings = buildUnnamed1211();
  }
  buildCounterJob--;
  return o;
}

checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    unittest.expect(o.created, unittest.equals('foo'));
    unittest.expect(o.detailedStatus, unittest.equals('foo'));
    checkUnnamed1209(o.errors);
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed1210(o.importedIds);
    unittest.expect(o.projectNumber, unittest.equals('foo'));
    checkJobRequest(o.request);
    unittest.expect(o.status, unittest.equals('foo'));
    checkUnnamed1211(o.warnings);
  }
  buildCounterJob--;
}

buildUnnamed1212() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1212(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1213() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1213(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterJobRequest = 0;
buildJobRequest() {
  var o = new api.JobRequest();
  buildCounterJobRequest++;
  if (buildCounterJobRequest < 3) {
    o.destination = buildUnnamed1212();
    o.source = buildUnnamed1213();
    o.type = "foo";
  }
  buildCounterJobRequest--;
  return o;
}

checkJobRequest(api.JobRequest o) {
  buildCounterJobRequest++;
  if (buildCounterJobRequest < 3) {
    checkUnnamed1212(o.destination);
    checkUnnamed1213(o.source);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterJobRequest--;
}

buildUnnamed1214() {
  var o = new core.List<api.CigarUnit>();
  o.add(buildCigarUnit());
  o.add(buildCigarUnit());
  return o;
}

checkUnnamed1214(core.List<api.CigarUnit> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCigarUnit(o[0]);
  checkCigarUnit(o[1]);
}

core.int buildCounterLinearAlignment = 0;
buildLinearAlignment() {
  var o = new api.LinearAlignment();
  buildCounterLinearAlignment++;
  if (buildCounterLinearAlignment < 3) {
    o.cigar = buildUnnamed1214();
    o.mappingQuality = 42;
    o.position = buildPosition();
  }
  buildCounterLinearAlignment--;
  return o;
}

checkLinearAlignment(api.LinearAlignment o) {
  buildCounterLinearAlignment++;
  if (buildCounterLinearAlignment < 3) {
    checkUnnamed1214(o.cigar);
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

buildUnnamed1215() {
  var o = new core.List<api.CoverageBucket>();
  o.add(buildCoverageBucket());
  o.add(buildCoverageBucket());
  return o;
}

checkUnnamed1215(core.List<api.CoverageBucket> o) {
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
    o.coverageBuckets = buildUnnamed1215();
    o.nextPageToken = "foo";
  }
  buildCounterListCoverageBucketsResponse--;
  return o;
}

checkListCoverageBucketsResponse(api.ListCoverageBucketsResponse o) {
  buildCounterListCoverageBucketsResponse++;
  if (buildCounterListCoverageBucketsResponse < 3) {
    unittest.expect(o.bucketWidth, unittest.equals('foo'));
    checkUnnamed1215(o.coverageBuckets);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListCoverageBucketsResponse--;
}

buildUnnamed1216() {
  var o = new core.List<api.Dataset>();
  o.add(buildDataset());
  o.add(buildDataset());
  return o;
}

checkUnnamed1216(core.List<api.Dataset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataset(o[0]);
  checkDataset(o[1]);
}

core.int buildCounterListDatasetsResponse = 0;
buildListDatasetsResponse() {
  var o = new api.ListDatasetsResponse();
  buildCounterListDatasetsResponse++;
  if (buildCounterListDatasetsResponse < 3) {
    o.datasets = buildUnnamed1216();
    o.nextPageToken = "foo";
  }
  buildCounterListDatasetsResponse--;
  return o;
}

checkListDatasetsResponse(api.ListDatasetsResponse o) {
  buildCounterListDatasetsResponse++;
  if (buildCounterListDatasetsResponse < 3) {
    checkUnnamed1216(o.datasets);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListDatasetsResponse--;
}

buildUnnamed1217() {
  var o = new core.List<api.Variant>();
  o.add(buildVariant());
  o.add(buildVariant());
  return o;
}

checkUnnamed1217(core.List<api.Variant> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkVariant(o[0]);
  checkVariant(o[1]);
}

core.int buildCounterMergeVariantsRequest = 0;
buildMergeVariantsRequest() {
  var o = new api.MergeVariantsRequest();
  buildCounterMergeVariantsRequest++;
  if (buildCounterMergeVariantsRequest < 3) {
    o.variants = buildUnnamed1217();
  }
  buildCounterMergeVariantsRequest--;
  return o;
}

checkMergeVariantsRequest(api.MergeVariantsRequest o) {
  buildCounterMergeVariantsRequest++;
  if (buildCounterMergeVariantsRequest < 3) {
    checkUnnamed1217(o.variants);
  }
  buildCounterMergeVariantsRequest--;
}

buildUnnamed1218() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1218(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1219() {
  var o = new core.Map<core.String, core.List<core.String>>();
  o["x"] = buildUnnamed1218();
  o["y"] = buildUnnamed1218();
  return o;
}

checkUnnamed1219(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1218(o["x"]);
  checkUnnamed1218(o["y"]);
}

core.int buildCounterMetadata = 0;
buildMetadata() {
  var o = new api.Metadata();
  buildCounterMetadata++;
  if (buildCounterMetadata < 3) {
    o.description = "foo";
    o.id = "foo";
    o.info = buildUnnamed1219();
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
    checkUnnamed1219(o.info);
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.number, unittest.equals('foo'));
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterMetadata--;
}

buildUnnamed1220() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1220(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1221() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1221(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPairedFastqSource = 0;
buildPairedFastqSource() {
  var o = new api.PairedFastqSource();
  buildCounterPairedFastqSource++;
  if (buildCounterPairedFastqSource < 3) {
    o.firstSourceUris = buildUnnamed1220();
    o.metadata = buildFastqMetadata();
    o.secondSourceUris = buildUnnamed1221();
  }
  buildCounterPairedFastqSource--;
  return o;
}

checkPairedFastqSource(api.PairedFastqSource o) {
  buildCounterPairedFastqSource++;
  if (buildCounterPairedFastqSource < 3) {
    checkUnnamed1220(o.firstSourceUris);
    checkFastqMetadata(o.metadata);
    checkUnnamed1221(o.secondSourceUris);
  }
  buildCounterPairedFastqSource--;
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

buildUnnamed1222() {
  var o = new core.List<core.int>();
  o.add(42);
  o.add(42);
  return o;
}

checkUnnamed1222(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

buildUnnamed1223() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1223(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1224() {
  var o = new core.Map<core.String, core.List<core.String>>();
  o["x"] = buildUnnamed1223();
  o["y"] = buildUnnamed1223();
  return o;
}

checkUnnamed1224(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1223(o["x"]);
  checkUnnamed1223(o["y"]);
}

core.int buildCounterRead = 0;
buildRead() {
  var o = new api.Read();
  buildCounterRead++;
  if (buildCounterRead < 3) {
    o.alignedQuality = buildUnnamed1222();
    o.alignedSequence = "foo";
    o.alignment = buildLinearAlignment();
    o.duplicateFragment = true;
    o.failedVendorQualityChecks = true;
    o.fragmentLength = 42;
    o.fragmentName = "foo";
    o.id = "foo";
    o.info = buildUnnamed1224();
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
    checkUnnamed1222(o.alignedQuality);
    unittest.expect(o.alignedSequence, unittest.equals('foo'));
    checkLinearAlignment(o.alignment);
    unittest.expect(o.duplicateFragment, unittest.isTrue);
    unittest.expect(o.failedVendorQualityChecks, unittest.isTrue);
    unittest.expect(o.fragmentLength, unittest.equals(42));
    unittest.expect(o.fragmentName, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed1224(o.info);
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

buildUnnamed1225() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1225(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1226() {
  var o = new core.Map<core.String, core.List<core.String>>();
  o["x"] = buildUnnamed1225();
  o["y"] = buildUnnamed1225();
  return o;
}

checkUnnamed1226(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1225(o["x"]);
  checkUnnamed1225(o["y"]);
}

buildUnnamed1227() {
  var o = new core.List<api.ReadGroupProgram>();
  o.add(buildReadGroupProgram());
  o.add(buildReadGroupProgram());
  return o;
}

checkUnnamed1227(core.List<api.ReadGroupProgram> o) {
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
    o.info = buildUnnamed1226();
    o.name = "foo";
    o.predictedInsertSize = 42;
    o.programs = buildUnnamed1227();
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
    checkUnnamed1226(o.info);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.predictedInsertSize, unittest.equals(42));
    checkUnnamed1227(o.programs);
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

buildUnnamed1228() {
  var o = new core.List<api.ReadGroup>();
  o.add(buildReadGroup());
  o.add(buildReadGroup());
  return o;
}

checkUnnamed1228(core.List<api.ReadGroup> o) {
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
    o.name = "foo";
    o.readGroups = buildUnnamed1228();
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
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed1228(o.readGroups);
    unittest.expect(o.referenceSetId, unittest.equals('foo'));
  }
  buildCounterReadGroupSet--;
}

buildUnnamed1229() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1229(core.List<core.String> o) {
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
    o.sourceAccessions = buildUnnamed1229();
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
    checkUnnamed1229(o.sourceAccessions);
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

buildUnnamed1230() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1230(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1231() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1231(core.List<core.String> o) {
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
    o.referenceIds = buildUnnamed1230();
    o.sourceAccessions = buildUnnamed1231();
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
    checkUnnamed1230(o.referenceIds);
    checkUnnamed1231(o.sourceAccessions);
    unittest.expect(o.sourceURI, unittest.equals('foo'));
  }
  buildCounterReferenceSet--;
}

buildUnnamed1232() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1232(core.List<core.String> o) {
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
    o.variantSetIds = buildUnnamed1232();
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
    checkUnnamed1232(o.variantSetIds);
  }
  buildCounterSearchCallSetsRequest--;
}

buildUnnamed1233() {
  var o = new core.List<api.CallSet>();
  o.add(buildCallSet());
  o.add(buildCallSet());
  return o;
}

checkUnnamed1233(core.List<api.CallSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCallSet(o[0]);
  checkCallSet(o[1]);
}

core.int buildCounterSearchCallSetsResponse = 0;
buildSearchCallSetsResponse() {
  var o = new api.SearchCallSetsResponse();
  buildCounterSearchCallSetsResponse++;
  if (buildCounterSearchCallSetsResponse < 3) {
    o.callSets = buildUnnamed1233();
    o.nextPageToken = "foo";
  }
  buildCounterSearchCallSetsResponse--;
  return o;
}

checkSearchCallSetsResponse(api.SearchCallSetsResponse o) {
  buildCounterSearchCallSetsResponse++;
  if (buildCounterSearchCallSetsResponse < 3) {
    checkUnnamed1233(o.callSets);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterSearchCallSetsResponse--;
}

buildUnnamed1234() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1234(core.List<core.String> o) {
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
    o.status = buildUnnamed1234();
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
    checkUnnamed1234(o.status);
  }
  buildCounterSearchJobsRequest--;
}

buildUnnamed1235() {
  var o = new core.List<api.Job>();
  o.add(buildJob());
  o.add(buildJob());
  return o;
}

checkUnnamed1235(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterSearchJobsResponse = 0;
buildSearchJobsResponse() {
  var o = new api.SearchJobsResponse();
  buildCounterSearchJobsResponse++;
  if (buildCounterSearchJobsResponse < 3) {
    o.jobs = buildUnnamed1235();
    o.nextPageToken = "foo";
  }
  buildCounterSearchJobsResponse--;
  return o;
}

checkSearchJobsResponse(api.SearchJobsResponse o) {
  buildCounterSearchJobsResponse++;
  if (buildCounterSearchJobsResponse < 3) {
    checkUnnamed1235(o.jobs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterSearchJobsResponse--;
}

buildUnnamed1236() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1236(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSearchReadGroupSetsRequest = 0;
buildSearchReadGroupSetsRequest() {
  var o = new api.SearchReadGroupSetsRequest();
  buildCounterSearchReadGroupSetsRequest++;
  if (buildCounterSearchReadGroupSetsRequest < 3) {
    o.datasetIds = buildUnnamed1236();
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
    checkUnnamed1236(o.datasetIds);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
  }
  buildCounterSearchReadGroupSetsRequest--;
}

buildUnnamed1237() {
  var o = new core.List<api.ReadGroupSet>();
  o.add(buildReadGroupSet());
  o.add(buildReadGroupSet());
  return o;
}

checkUnnamed1237(core.List<api.ReadGroupSet> o) {
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
    o.readGroupSets = buildUnnamed1237();
  }
  buildCounterSearchReadGroupSetsResponse--;
  return o;
}

checkSearchReadGroupSetsResponse(api.SearchReadGroupSetsResponse o) {
  buildCounterSearchReadGroupSetsResponse++;
  if (buildCounterSearchReadGroupSetsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1237(o.readGroupSets);
  }
  buildCounterSearchReadGroupSetsResponse--;
}

buildUnnamed1238() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1238(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1239() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1239(core.List<core.String> o) {
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
    o.readGroupIds = buildUnnamed1238();
    o.readGroupSetIds = buildUnnamed1239();
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
    checkUnnamed1238(o.readGroupIds);
    checkUnnamed1239(o.readGroupSetIds);
    unittest.expect(o.referenceName, unittest.equals('foo'));
    unittest.expect(o.start, unittest.equals('foo'));
  }
  buildCounterSearchReadsRequest--;
}

buildUnnamed1240() {
  var o = new core.List<api.Read>();
  o.add(buildRead());
  o.add(buildRead());
  return o;
}

checkUnnamed1240(core.List<api.Read> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRead(o[0]);
  checkRead(o[1]);
}

core.int buildCounterSearchReadsResponse = 0;
buildSearchReadsResponse() {
  var o = new api.SearchReadsResponse();
  buildCounterSearchReadsResponse++;
  if (buildCounterSearchReadsResponse < 3) {
    o.alignments = buildUnnamed1240();
    o.nextPageToken = "foo";
  }
  buildCounterSearchReadsResponse--;
  return o;
}

checkSearchReadsResponse(api.SearchReadsResponse o) {
  buildCounterSearchReadsResponse++;
  if (buildCounterSearchReadsResponse < 3) {
    checkUnnamed1240(o.alignments);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterSearchReadsResponse--;
}

buildUnnamed1241() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1241(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1242() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1242(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSearchReferenceSetsRequest = 0;
buildSearchReferenceSetsRequest() {
  var o = new api.SearchReferenceSetsRequest();
  buildCounterSearchReferenceSetsRequest++;
  if (buildCounterSearchReferenceSetsRequest < 3) {
    o.accessions = buildUnnamed1241();
    o.md5checksums = buildUnnamed1242();
    o.pageSize = 42;
    o.pageToken = "foo";
  }
  buildCounterSearchReferenceSetsRequest--;
  return o;
}

checkSearchReferenceSetsRequest(api.SearchReferenceSetsRequest o) {
  buildCounterSearchReferenceSetsRequest++;
  if (buildCounterSearchReferenceSetsRequest < 3) {
    checkUnnamed1241(o.accessions);
    checkUnnamed1242(o.md5checksums);
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
  }
  buildCounterSearchReferenceSetsRequest--;
}

buildUnnamed1243() {
  var o = new core.List<api.ReferenceSet>();
  o.add(buildReferenceSet());
  o.add(buildReferenceSet());
  return o;
}

checkUnnamed1243(core.List<api.ReferenceSet> o) {
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
    o.referenceSets = buildUnnamed1243();
  }
  buildCounterSearchReferenceSetsResponse--;
  return o;
}

checkSearchReferenceSetsResponse(api.SearchReferenceSetsResponse o) {
  buildCounterSearchReferenceSetsResponse++;
  if (buildCounterSearchReferenceSetsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1243(o.referenceSets);
  }
  buildCounterSearchReferenceSetsResponse--;
}

buildUnnamed1244() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1244(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1245() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1245(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSearchReferencesRequest = 0;
buildSearchReferencesRequest() {
  var o = new api.SearchReferencesRequest();
  buildCounterSearchReferencesRequest++;
  if (buildCounterSearchReferencesRequest < 3) {
    o.accessions = buildUnnamed1244();
    o.md5checksums = buildUnnamed1245();
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
    checkUnnamed1244(o.accessions);
    checkUnnamed1245(o.md5checksums);
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    unittest.expect(o.referenceSetId, unittest.equals('foo'));
  }
  buildCounterSearchReferencesRequest--;
}

buildUnnamed1246() {
  var o = new core.List<api.Reference>();
  o.add(buildReference());
  o.add(buildReference());
  return o;
}

checkUnnamed1246(core.List<api.Reference> o) {
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
    o.references = buildUnnamed1246();
  }
  buildCounterSearchReferencesResponse--;
  return o;
}

checkSearchReferencesResponse(api.SearchReferencesResponse o) {
  buildCounterSearchReferencesResponse++;
  if (buildCounterSearchReferencesResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1246(o.references);
  }
  buildCounterSearchReferencesResponse--;
}

buildUnnamed1247() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1247(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSearchVariantSetsRequest = 0;
buildSearchVariantSetsRequest() {
  var o = new api.SearchVariantSetsRequest();
  buildCounterSearchVariantSetsRequest++;
  if (buildCounterSearchVariantSetsRequest < 3) {
    o.datasetIds = buildUnnamed1247();
    o.pageSize = 42;
    o.pageToken = "foo";
  }
  buildCounterSearchVariantSetsRequest--;
  return o;
}

checkSearchVariantSetsRequest(api.SearchVariantSetsRequest o) {
  buildCounterSearchVariantSetsRequest++;
  if (buildCounterSearchVariantSetsRequest < 3) {
    checkUnnamed1247(o.datasetIds);
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
  }
  buildCounterSearchVariantSetsRequest--;
}

buildUnnamed1248() {
  var o = new core.List<api.VariantSet>();
  o.add(buildVariantSet());
  o.add(buildVariantSet());
  return o;
}

checkUnnamed1248(core.List<api.VariantSet> o) {
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
    o.variantSets = buildUnnamed1248();
  }
  buildCounterSearchVariantSetsResponse--;
  return o;
}

checkSearchVariantSetsResponse(api.SearchVariantSetsResponse o) {
  buildCounterSearchVariantSetsResponse++;
  if (buildCounterSearchVariantSetsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1248(o.variantSets);
  }
  buildCounterSearchVariantSetsResponse--;
}

buildUnnamed1249() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1249(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1250() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1250(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSearchVariantsRequest = 0;
buildSearchVariantsRequest() {
  var o = new api.SearchVariantsRequest();
  buildCounterSearchVariantsRequest++;
  if (buildCounterSearchVariantsRequest < 3) {
    o.callSetIds = buildUnnamed1249();
    o.end = "foo";
    o.maxCalls = 42;
    o.pageSize = 42;
    o.pageToken = "foo";
    o.referenceName = "foo";
    o.start = "foo";
    o.variantName = "foo";
    o.variantSetIds = buildUnnamed1250();
  }
  buildCounterSearchVariantsRequest--;
  return o;
}

checkSearchVariantsRequest(api.SearchVariantsRequest o) {
  buildCounterSearchVariantsRequest++;
  if (buildCounterSearchVariantsRequest < 3) {
    checkUnnamed1249(o.callSetIds);
    unittest.expect(o.end, unittest.equals('foo'));
    unittest.expect(o.maxCalls, unittest.equals(42));
    unittest.expect(o.pageSize, unittest.equals(42));
    unittest.expect(o.pageToken, unittest.equals('foo'));
    unittest.expect(o.referenceName, unittest.equals('foo'));
    unittest.expect(o.start, unittest.equals('foo'));
    unittest.expect(o.variantName, unittest.equals('foo'));
    checkUnnamed1250(o.variantSetIds);
  }
  buildCounterSearchVariantsRequest--;
}

buildUnnamed1251() {
  var o = new core.List<api.Variant>();
  o.add(buildVariant());
  o.add(buildVariant());
  return o;
}

checkUnnamed1251(core.List<api.Variant> o) {
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
    o.variants = buildUnnamed1251();
  }
  buildCounterSearchVariantsResponse--;
  return o;
}

checkSearchVariantsResponse(api.SearchVariantsResponse o) {
  buildCounterSearchVariantsResponse++;
  if (buildCounterSearchVariantsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed1251(o.variants);
  }
  buildCounterSearchVariantsResponse--;
}

buildUnnamed1252() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1252(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1253() {
  var o = new core.List<api.Call>();
  o.add(buildCall());
  o.add(buildCall());
  return o;
}

checkUnnamed1253(core.List<api.Call> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCall(o[0]);
  checkCall(o[1]);
}

buildUnnamed1254() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1254(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1255() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1255(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1256() {
  var o = new core.Map<core.String, core.List<core.String>>();
  o["x"] = buildUnnamed1255();
  o["y"] = buildUnnamed1255();
  return o;
}

checkUnnamed1256(core.Map<core.String, core.List<core.String>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1255(o["x"]);
  checkUnnamed1255(o["y"]);
}

buildUnnamed1257() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1257(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterVariant = 0;
buildVariant() {
  var o = new api.Variant();
  buildCounterVariant++;
  if (buildCounterVariant < 3) {
    o.alternateBases = buildUnnamed1252();
    o.calls = buildUnnamed1253();
    o.created = "foo";
    o.end = "foo";
    o.filter = buildUnnamed1254();
    o.id = "foo";
    o.info = buildUnnamed1256();
    o.names = buildUnnamed1257();
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
    checkUnnamed1252(o.alternateBases);
    checkUnnamed1253(o.calls);
    unittest.expect(o.created, unittest.equals('foo'));
    unittest.expect(o.end, unittest.equals('foo'));
    checkUnnamed1254(o.filter);
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed1256(o.info);
    checkUnnamed1257(o.names);
    unittest.expect(o.quality, unittest.equals(42.0));
    unittest.expect(o.referenceBases, unittest.equals('foo'));
    unittest.expect(o.referenceName, unittest.equals('foo'));
    unittest.expect(o.start, unittest.equals('foo'));
    unittest.expect(o.variantSetId, unittest.equals('foo'));
  }
  buildCounterVariant--;
}

buildUnnamed1258() {
  var o = new core.List<api.Metadata>();
  o.add(buildMetadata());
  o.add(buildMetadata());
  return o;
}

checkUnnamed1258(core.List<api.Metadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetadata(o[0]);
  checkMetadata(o[1]);
}

buildUnnamed1259() {
  var o = new core.List<api.ReferenceBound>();
  o.add(buildReferenceBound());
  o.add(buildReferenceBound());
  return o;
}

checkUnnamed1259(core.List<api.ReferenceBound> o) {
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
    o.metadata = buildUnnamed1258();
    o.referenceBounds = buildUnnamed1259();
  }
  buildCounterVariantSet--;
  return o;
}

checkVariantSet(api.VariantSet o) {
  buildCounterVariantSet++;
  if (buildCounterVariantSet < 3) {
    unittest.expect(o.datasetId, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed1258(o.metadata);
    checkUnnamed1259(o.referenceBounds);
  }
  buildCounterVariantSet--;
}


main() {
  unittest.group("obj-schema-AlignReadGroupSetsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildAlignReadGroupSetsRequest();
      var od = new api.AlignReadGroupSetsRequest.fromJson(o.toJson());
      checkAlignReadGroupSetsRequest(od);
    });
  });


  unittest.group("obj-schema-AlignReadGroupSetsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildAlignReadGroupSetsResponse();
      var od = new api.AlignReadGroupSetsResponse.fromJson(o.toJson());
      checkAlignReadGroupSetsResponse(od);
    });
  });


  unittest.group("obj-schema-Call", () {
    unittest.test("to-json--from-json", () {
      var o = buildCall();
      var od = new api.Call.fromJson(o.toJson());
      checkCall(od);
    });
  });


  unittest.group("obj-schema-CallReadGroupSetsRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCallReadGroupSetsRequest();
      var od = new api.CallReadGroupSetsRequest.fromJson(o.toJson());
      checkCallReadGroupSetsRequest(od);
    });
  });


  unittest.group("obj-schema-CallReadGroupSetsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildCallReadGroupSetsResponse();
      var od = new api.CallReadGroupSetsResponse.fromJson(o.toJson());
      checkCallReadGroupSetsResponse(od);
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


  unittest.group("obj-schema-FastqMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildFastqMetadata();
      var od = new api.FastqMetadata.fromJson(o.toJson());
      checkFastqMetadata(od);
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


  unittest.group("obj-schema-InterleavedFastqSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildInterleavedFastqSource();
      var od = new api.InterleavedFastqSource.fromJson(o.toJson());
      checkInterleavedFastqSource(od);
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


  unittest.group("obj-schema-PairedFastqSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildPairedFastqSource();
      var od = new api.PairedFastqSource.fromJson(o.toJson());
      checkPairedFastqSource(od);
    });
  });


  unittest.group("obj-schema-Position", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosition();
      var od = new api.Position.fromJson(o.toJson());
      checkPosition(od);
    });
  });


  unittest.group("obj-schema-Range", () {
    unittest.test("to-json--from-json", () {
      var o = buildRange();
      var od = new api.Range.fromJson(o.toJson());
      checkRange(od);
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_datasetId).then(unittest.expectAsync(((api.Dataset response) {
        checkDataset(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(pageSize: arg_pageSize, pageToken: arg_pageToken, projectNumber: arg_projectNumber).then(unittest.expectAsync(((api.ListDatasetsResponse response) {
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.search(arg_request).then(unittest.expectAsync(((api.SearchJobsResponse response) {
        checkSearchJobsResponse(response);
      })));
    });

  });


  unittest.group("resource-ReadgroupsetsResourceApi", () {
    unittest.test("method--align", () {

      var mock = new common_test.HttpServerMock();
      api.ReadgroupsetsResourceApi res = new api.GenomicsApi(mock).readgroupsets;
      var arg_request = buildAlignReadGroupSetsRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.AlignReadGroupSetsRequest.fromJson(json);
        checkAlignReadGroupSetsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 19), unittest.equals("readgroupsets/align"));
        pathOffset += 19;

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
        var resp = convert.JSON.encode(buildAlignReadGroupSetsResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.align(arg_request).then(unittest.expectAsync(((api.AlignReadGroupSetsResponse response) {
        checkAlignReadGroupSetsResponse(response);
      })));
    });

    unittest.test("method--call", () {

      var mock = new common_test.HttpServerMock();
      api.ReadgroupsetsResourceApi res = new api.GenomicsApi(mock).readgroupsets;
      var arg_request = buildCallReadGroupSetsRequest();
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.CallReadGroupSetsRequest.fromJson(json);
        checkCallReadGroupSetsRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 17), unittest.equals("genomics/v1beta2/"));
        pathOffset += 17;
        unittest.expect(path.substring(pathOffset, pathOffset + 18), unittest.equals("readgroupsets/call"));
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
        var resp = convert.JSON.encode(buildCallReadGroupSetsResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.call(arg_request).then(unittest.expectAsync(((api.CallReadGroupSetsResponse response) {
        checkCallReadGroupSetsResponse(response);
      })));
    });

    unittest.test("method--delete", () {

      var mock = new common_test.HttpServerMock();
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_readGroupSetId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--export", () {

      var mock = new common_test.HttpServerMock();
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.export(arg_request).then(unittest.expectAsync(((api.ExportReadGroupSetsResponse response) {
        checkExportReadGroupSetsResponse(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_readGroupSetId).then(unittest.expectAsync(((api.ReadGroupSet response) {
        checkReadGroupSet(response);
      })));
    });

    unittest.test("method--import", () {

      var mock = new common_test.HttpServerMock();
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.import(arg_request).then(unittest.expectAsync(((api.ImportReadGroupSetsResponse response) {
        checkImportReadGroupSetsResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.patch(arg_request, arg_readGroupSetId).then(unittest.expectAsync(((api.ReadGroupSet response) {
        checkReadGroupSet(response);
      })));
    });

    unittest.test("method--search", () {

      var mock = new common_test.HttpServerMock();
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.search(arg_request).then(unittest.expectAsync(((api.SearchReadGroupSetsResponse response) {
        checkSearchReadGroupSetsResponse(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_readGroupSetId).then(unittest.expectAsync(((api.ReadGroupSet response) {
        checkReadGroupSet(response);
      })));
    });

  });


  unittest.group("resource-ReadgroupsetsCoveragebucketsResourceApi", () {
    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_readGroupSetId, pageSize: arg_pageSize, pageToken: arg_pageToken, range_end: arg_range_end, range_referenceName: arg_range_referenceName, range_start: arg_range_start, targetBucketWidth: arg_targetBucketWidth).then(unittest.expectAsync(((api.ListCoverageBucketsResponse response) {
        checkListCoverageBucketsResponse(response);
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.search(arg_request).then(unittest.expectAsync(((api.SearchReadsResponse response) {
        checkSearchReadsResponse(response);
      })));
    });

  });


  unittest.group("resource-ReferencesResourceApi", () {
    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_referenceId).then(unittest.expectAsync(((api.Reference response) {
        checkReference(response);
      })));
    });

    unittest.test("method--search", () {

      var mock = new common_test.HttpServerMock();
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.search(arg_request).then(unittest.expectAsync(((api.SearchReferencesResponse response) {
        checkSearchReferencesResponse(response);
      })));
    });

  });


  unittest.group("resource-ReferencesBasesResourceApi", () {
    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_referenceId, end: arg_end, pageSize: arg_pageSize, pageToken: arg_pageToken, start: arg_start).then(unittest.expectAsync(((api.ListBasesResponse response) {
        checkListBasesResponse(response);
      })));
    });

  });


  unittest.group("resource-ReferencesetsResourceApi", () {
    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_referenceSetId).then(unittest.expectAsync(((api.ReferenceSet response) {
        checkReferenceSet(response);
      })));
    });

    unittest.test("method--search", () {

      var mock = new common_test.HttpServerMock();
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.search(arg_request).then(unittest.expectAsync(((api.SearchReferenceSetsResponse response) {
        checkSearchReferenceSetsResponse(response);
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_variantId).then(unittest.expectAsync((_) {}));
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_variantId).then(unittest.expectAsync(((api.Variant response) {
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.delete(arg_variantSetId).then(unittest.expectAsync((_) {}));
    });

    unittest.test("method--export", () {

      var mock = new common_test.HttpServerMock();
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.export(arg_request, arg_variantSetId).then(unittest.expectAsync(((api.ExportVariantSetResponse response) {
        checkExportVariantSetResponse(response);
      })));
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_variantSetId).then(unittest.expectAsync(((api.VariantSet response) {
        checkVariantSet(response);
      })));
    });

    unittest.test("method--importVariants", () {

      var mock = new common_test.HttpServerMock();
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.importVariants(arg_request, arg_variantSetId).then(unittest.expectAsync(((api.ImportVariantsResponse response) {
        checkImportVariantsResponse(response);
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
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.update(arg_request, arg_variantSetId).then(unittest.expectAsync(((api.VariantSet response) {
        checkVariantSet(response);
      })));
    });

  });


}

