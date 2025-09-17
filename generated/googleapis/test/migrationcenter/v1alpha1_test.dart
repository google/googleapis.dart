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

import 'package:googleapis/migrationcenter/v1alpha1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAddAssetsToGroupRequest = 0;
api.AddAssetsToGroupRequest buildAddAssetsToGroupRequest() {
  final o = api.AddAssetsToGroupRequest();
  buildCounterAddAssetsToGroupRequest++;
  if (buildCounterAddAssetsToGroupRequest < 3) {
    o.allowExisting = true;
    o.assets = buildAssetList();
    o.requestId = 'foo';
  }
  buildCounterAddAssetsToGroupRequest--;
  return o;
}

void checkAddAssetsToGroupRequest(api.AddAssetsToGroupRequest o) {
  buildCounterAddAssetsToGroupRequest++;
  if (buildCounterAddAssetsToGroupRequest < 3) {
    unittest.expect(o.allowExisting!, unittest.isTrue);
    checkAssetList(o.assets!);
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterAddAssetsToGroupRequest--;
}

core.List<api.Aggregation> buildUnnamed0() => [
  buildAggregation(),
  buildAggregation(),
];

void checkUnnamed0(core.List<api.Aggregation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAggregation(o[0]);
  checkAggregation(o[1]);
}

core.int buildCounterAggregateAssetsValuesRequest = 0;
api.AggregateAssetsValuesRequest buildAggregateAssetsValuesRequest() {
  final o = api.AggregateAssetsValuesRequest();
  buildCounterAggregateAssetsValuesRequest++;
  if (buildCounterAggregateAssetsValuesRequest < 3) {
    o.aggregations = buildUnnamed0();
    o.filter = 'foo';
    o.showHidden = true;
  }
  buildCounterAggregateAssetsValuesRequest--;
  return o;
}

void checkAggregateAssetsValuesRequest(api.AggregateAssetsValuesRequest o) {
  buildCounterAggregateAssetsValuesRequest++;
  if (buildCounterAggregateAssetsValuesRequest < 3) {
    checkUnnamed0(o.aggregations!);
    unittest.expect(o.filter!, unittest.equals('foo'));
    unittest.expect(o.showHidden!, unittest.isTrue);
  }
  buildCounterAggregateAssetsValuesRequest--;
}

core.List<api.AggregationResult> buildUnnamed1() => [
  buildAggregationResult(),
  buildAggregationResult(),
];

void checkUnnamed1(core.List<api.AggregationResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAggregationResult(o[0]);
  checkAggregationResult(o[1]);
}

core.int buildCounterAggregateAssetsValuesResponse = 0;
api.AggregateAssetsValuesResponse buildAggregateAssetsValuesResponse() {
  final o = api.AggregateAssetsValuesResponse();
  buildCounterAggregateAssetsValuesResponse++;
  if (buildCounterAggregateAssetsValuesResponse < 3) {
    o.results = buildUnnamed1();
  }
  buildCounterAggregateAssetsValuesResponse--;
  return o;
}

void checkAggregateAssetsValuesResponse(api.AggregateAssetsValuesResponse o) {
  buildCounterAggregateAssetsValuesResponse++;
  if (buildCounterAggregateAssetsValuesResponse < 3) {
    checkUnnamed1(o.results!);
  }
  buildCounterAggregateAssetsValuesResponse--;
}

core.int buildCounterAggregation = 0;
api.Aggregation buildAggregation() {
  final o = api.Aggregation();
  buildCounterAggregation++;
  if (buildCounterAggregation < 3) {
    o.count = buildAggregationCount();
    o.field = 'foo';
    o.frequency = buildAggregationFrequency();
    o.histogram = buildAggregationHistogram();
    o.sum = buildAggregationSum();
  }
  buildCounterAggregation--;
  return o;
}

void checkAggregation(api.Aggregation o) {
  buildCounterAggregation++;
  if (buildCounterAggregation < 3) {
    checkAggregationCount(o.count!);
    unittest.expect(o.field!, unittest.equals('foo'));
    checkAggregationFrequency(o.frequency!);
    checkAggregationHistogram(o.histogram!);
    checkAggregationSum(o.sum!);
  }
  buildCounterAggregation--;
}

core.int buildCounterAggregationCount = 0;
api.AggregationCount buildAggregationCount() {
  final o = api.AggregationCount();
  buildCounterAggregationCount++;
  if (buildCounterAggregationCount < 3) {}
  buildCounterAggregationCount--;
  return o;
}

void checkAggregationCount(api.AggregationCount o) {
  buildCounterAggregationCount++;
  if (buildCounterAggregationCount < 3) {}
  buildCounterAggregationCount--;
}

core.int buildCounterAggregationFrequency = 0;
api.AggregationFrequency buildAggregationFrequency() {
  final o = api.AggregationFrequency();
  buildCounterAggregationFrequency++;
  if (buildCounterAggregationFrequency < 3) {}
  buildCounterAggregationFrequency--;
  return o;
}

void checkAggregationFrequency(api.AggregationFrequency o) {
  buildCounterAggregationFrequency++;
  if (buildCounterAggregationFrequency < 3) {}
  buildCounterAggregationFrequency--;
}

core.List<core.double> buildUnnamed2() => [42.0, 42.0];

void checkUnnamed2(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterAggregationHistogram = 0;
api.AggregationHistogram buildAggregationHistogram() {
  final o = api.AggregationHistogram();
  buildCounterAggregationHistogram++;
  if (buildCounterAggregationHistogram < 3) {
    o.lowerBounds = buildUnnamed2();
  }
  buildCounterAggregationHistogram--;
  return o;
}

void checkAggregationHistogram(api.AggregationHistogram o) {
  buildCounterAggregationHistogram++;
  if (buildCounterAggregationHistogram < 3) {
    checkUnnamed2(o.lowerBounds!);
  }
  buildCounterAggregationHistogram--;
}

core.int buildCounterAggregationResult = 0;
api.AggregationResult buildAggregationResult() {
  final o = api.AggregationResult();
  buildCounterAggregationResult++;
  if (buildCounterAggregationResult < 3) {
    o.count = buildAggregationResultCount();
    o.field = 'foo';
    o.frequency = buildAggregationResultFrequency();
    o.histogram = buildAggregationResultHistogram();
    o.sum = buildAggregationResultSum();
  }
  buildCounterAggregationResult--;
  return o;
}

void checkAggregationResult(api.AggregationResult o) {
  buildCounterAggregationResult++;
  if (buildCounterAggregationResult < 3) {
    checkAggregationResultCount(o.count!);
    unittest.expect(o.field!, unittest.equals('foo'));
    checkAggregationResultFrequency(o.frequency!);
    checkAggregationResultHistogram(o.histogram!);
    checkAggregationResultSum(o.sum!);
  }
  buildCounterAggregationResult--;
}

core.int buildCounterAggregationResultCount = 0;
api.AggregationResultCount buildAggregationResultCount() {
  final o = api.AggregationResultCount();
  buildCounterAggregationResultCount++;
  if (buildCounterAggregationResultCount < 3) {
    o.value = 'foo';
  }
  buildCounterAggregationResultCount--;
  return o;
}

void checkAggregationResultCount(api.AggregationResultCount o) {
  buildCounterAggregationResultCount++;
  if (buildCounterAggregationResultCount < 3) {
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterAggregationResultCount--;
}

core.Map<core.String, core.String> buildUnnamed3() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed3(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterAggregationResultFrequency = 0;
api.AggregationResultFrequency buildAggregationResultFrequency() {
  final o = api.AggregationResultFrequency();
  buildCounterAggregationResultFrequency++;
  if (buildCounterAggregationResultFrequency < 3) {
    o.values = buildUnnamed3();
  }
  buildCounterAggregationResultFrequency--;
  return o;
}

void checkAggregationResultFrequency(api.AggregationResultFrequency o) {
  buildCounterAggregationResultFrequency++;
  if (buildCounterAggregationResultFrequency < 3) {
    checkUnnamed3(o.values!);
  }
  buildCounterAggregationResultFrequency--;
}

core.List<api.AggregationResultHistogramBucket> buildUnnamed4() => [
  buildAggregationResultHistogramBucket(),
  buildAggregationResultHistogramBucket(),
];

void checkUnnamed4(core.List<api.AggregationResultHistogramBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAggregationResultHistogramBucket(o[0]);
  checkAggregationResultHistogramBucket(o[1]);
}

core.int buildCounterAggregationResultHistogram = 0;
api.AggregationResultHistogram buildAggregationResultHistogram() {
  final o = api.AggregationResultHistogram();
  buildCounterAggregationResultHistogram++;
  if (buildCounterAggregationResultHistogram < 3) {
    o.buckets = buildUnnamed4();
  }
  buildCounterAggregationResultHistogram--;
  return o;
}

void checkAggregationResultHistogram(api.AggregationResultHistogram o) {
  buildCounterAggregationResultHistogram++;
  if (buildCounterAggregationResultHistogram < 3) {
    checkUnnamed4(o.buckets!);
  }
  buildCounterAggregationResultHistogram--;
}

core.int buildCounterAggregationResultHistogramBucket = 0;
api.AggregationResultHistogramBucket buildAggregationResultHistogramBucket() {
  final o = api.AggregationResultHistogramBucket();
  buildCounterAggregationResultHistogramBucket++;
  if (buildCounterAggregationResultHistogramBucket < 3) {
    o.count = 'foo';
    o.lowerBound = 42.0;
    o.upperBound = 42.0;
  }
  buildCounterAggregationResultHistogramBucket--;
  return o;
}

void checkAggregationResultHistogramBucket(
  api.AggregationResultHistogramBucket o,
) {
  buildCounterAggregationResultHistogramBucket++;
  if (buildCounterAggregationResultHistogramBucket < 3) {
    unittest.expect(o.count!, unittest.equals('foo'));
    unittest.expect(o.lowerBound!, unittest.equals(42.0));
    unittest.expect(o.upperBound!, unittest.equals(42.0));
  }
  buildCounterAggregationResultHistogramBucket--;
}

core.int buildCounterAggregationResultSum = 0;
api.AggregationResultSum buildAggregationResultSum() {
  final o = api.AggregationResultSum();
  buildCounterAggregationResultSum++;
  if (buildCounterAggregationResultSum < 3) {
    o.value = 42.0;
  }
  buildCounterAggregationResultSum--;
  return o;
}

void checkAggregationResultSum(api.AggregationResultSum o) {
  buildCounterAggregationResultSum++;
  if (buildCounterAggregationResultSum < 3) {
    unittest.expect(o.value!, unittest.equals(42.0));
  }
  buildCounterAggregationResultSum--;
}

core.int buildCounterAggregationSum = 0;
api.AggregationSum buildAggregationSum() {
  final o = api.AggregationSum();
  buildCounterAggregationSum++;
  if (buildCounterAggregationSum < 3) {}
  buildCounterAggregationSum--;
  return o;
}

void checkAggregationSum(api.AggregationSum o) {
  buildCounterAggregationSum++;
  if (buildCounterAggregationSum < 3) {}
  buildCounterAggregationSum--;
}

core.List<core.String> buildUnnamed5() => ['foo', 'foo'];

void checkUnnamed5(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed6() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed6(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed7() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed7(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAsset = 0;
api.Asset buildAsset() {
  final o = api.Asset();
  buildCounterAsset++;
  if (buildCounterAsset < 3) {
    o.assignedGroups = buildUnnamed5();
    o.attributes = buildUnnamed6();
    o.createTime = 'foo';
    o.databaseDeploymentDetails = buildDatabaseDeploymentDetails();
    o.databaseDetails = buildDatabaseDetails();
    o.hidden = true;
    o.hideReason = 'foo';
    o.hideTime = 'foo';
    o.insightList = buildInsightList();
    o.labels = buildUnnamed7();
    o.machineDetails = buildMachineDetails();
    o.name = 'foo';
    o.performanceData = buildAssetPerformanceData();
    o.sources = buildUnnamed8();
    o.title = 'foo';
    o.updateTime = 'foo';
    o.virtualMachineDetails = buildVirtualMachineDetails();
  }
  buildCounterAsset--;
  return o;
}

void checkAsset(api.Asset o) {
  buildCounterAsset++;
  if (buildCounterAsset < 3) {
    checkUnnamed5(o.assignedGroups!);
    checkUnnamed6(o.attributes!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkDatabaseDeploymentDetails(o.databaseDeploymentDetails!);
    checkDatabaseDetails(o.databaseDetails!);
    unittest.expect(o.hidden!, unittest.isTrue);
    unittest.expect(o.hideReason!, unittest.equals('foo'));
    unittest.expect(o.hideTime!, unittest.equals('foo'));
    checkInsightList(o.insightList!);
    checkUnnamed7(o.labels!);
    checkMachineDetails(o.machineDetails!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkAssetPerformanceData(o.performanceData!);
    checkUnnamed8(o.sources!);
    unittest.expect(o.title!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkVirtualMachineDetails(o.virtualMachineDetails!);
  }
  buildCounterAsset--;
}

core.Map<core.String, core.String> buildUnnamed9() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed9(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed10() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed10(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.PerformanceSample> buildUnnamed11() => [
  buildPerformanceSample(),
  buildPerformanceSample(),
];

void checkUnnamed11(core.List<api.PerformanceSample> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerformanceSample(o[0]);
  checkPerformanceSample(o[1]);
}

core.int buildCounterAssetFrame = 0;
api.AssetFrame buildAssetFrame() {
  final o = api.AssetFrame();
  buildCounterAssetFrame++;
  if (buildCounterAssetFrame < 3) {
    o.attributes = buildUnnamed9();
    o.collectionType = 'foo';
    o.databaseDeploymentDetails = buildDatabaseDeploymentDetails();
    o.databaseDetails = buildDatabaseDetails();
    o.labels = buildUnnamed10();
    o.machineDetails = buildMachineDetails();
    o.performanceSamples = buildUnnamed11();
    o.reportTime = 'foo';
    o.traceToken = 'foo';
    o.virtualMachineDetails = buildVirtualMachineDetails();
  }
  buildCounterAssetFrame--;
  return o;
}

void checkAssetFrame(api.AssetFrame o) {
  buildCounterAssetFrame++;
  if (buildCounterAssetFrame < 3) {
    checkUnnamed9(o.attributes!);
    unittest.expect(o.collectionType!, unittest.equals('foo'));
    checkDatabaseDeploymentDetails(o.databaseDeploymentDetails!);
    checkDatabaseDetails(o.databaseDetails!);
    checkUnnamed10(o.labels!);
    checkMachineDetails(o.machineDetails!);
    checkUnnamed11(o.performanceSamples!);
    unittest.expect(o.reportTime!, unittest.equals('foo'));
    unittest.expect(o.traceToken!, unittest.equals('foo'));
    checkVirtualMachineDetails(o.virtualMachineDetails!);
  }
  buildCounterAssetFrame--;
}

core.List<core.String> buildUnnamed12() => ['foo', 'foo'];

void checkUnnamed12(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAssetList = 0;
api.AssetList buildAssetList() {
  final o = api.AssetList();
  buildCounterAssetList++;
  if (buildCounterAssetList < 3) {
    o.assetIds = buildUnnamed12();
  }
  buildCounterAssetList--;
  return o;
}

void checkAssetList(api.AssetList o) {
  buildCounterAssetList++;
  if (buildCounterAssetList < 3) {
    checkUnnamed12(o.assetIds!);
  }
  buildCounterAssetList--;
}

core.List<api.DailyResourceUsageAggregation> buildUnnamed13() => [
  buildDailyResourceUsageAggregation(),
  buildDailyResourceUsageAggregation(),
];

void checkUnnamed13(core.List<api.DailyResourceUsageAggregation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDailyResourceUsageAggregation(o[0]);
  checkDailyResourceUsageAggregation(o[1]);
}

core.int buildCounterAssetPerformanceData = 0;
api.AssetPerformanceData buildAssetPerformanceData() {
  final o = api.AssetPerformanceData();
  buildCounterAssetPerformanceData++;
  if (buildCounterAssetPerformanceData < 3) {
    o.dailyResourceUsageAggregations = buildUnnamed13();
  }
  buildCounterAssetPerformanceData--;
  return o;
}

void checkAssetPerformanceData(api.AssetPerformanceData o) {
  buildCounterAssetPerformanceData++;
  if (buildCounterAssetPerformanceData < 3) {
    checkUnnamed13(o.dailyResourceUsageAggregations!);
  }
  buildCounterAssetPerformanceData--;
}

core.Map<core.String, core.String> buildUnnamed14() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed14(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.AssetsExportJobExecution> buildUnnamed15() => [
  buildAssetsExportJobExecution(),
  buildAssetsExportJobExecution(),
];

void checkUnnamed15(core.List<api.AssetsExportJobExecution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssetsExportJobExecution(o[0]);
  checkAssetsExportJobExecution(o[1]);
}

core.int buildCounterAssetsExportJob = 0;
api.AssetsExportJob buildAssetsExportJob() {
  final o = api.AssetsExportJob();
  buildCounterAssetsExportJob++;
  if (buildCounterAssetsExportJob < 3) {
    o.condition = buildAssetsExportJobExportCondition();
    o.createTime = 'foo';
    o.inventory = buildAssetsExportJobInventory();
    o.labels = buildUnnamed14();
    o.name = 'foo';
    o.networkDependencies = buildAssetsExportJobNetworkDependencies();
    o.performanceData = buildAssetsExportJobPerformanceData();
    o.recentExecutions = buildUnnamed15();
    o.showHidden = true;
    o.signedUriDestination = buildSignedUriDestination();
    o.updateTime = 'foo';
  }
  buildCounterAssetsExportJob--;
  return o;
}

void checkAssetsExportJob(api.AssetsExportJob o) {
  buildCounterAssetsExportJob++;
  if (buildCounterAssetsExportJob < 3) {
    checkAssetsExportJobExportCondition(o.condition!);
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkAssetsExportJobInventory(o.inventory!);
    checkUnnamed14(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkAssetsExportJobNetworkDependencies(o.networkDependencies!);
    checkAssetsExportJobPerformanceData(o.performanceData!);
    checkUnnamed15(o.recentExecutions!);
    unittest.expect(o.showHidden!, unittest.isTrue);
    checkSignedUriDestination(o.signedUriDestination!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterAssetsExportJob--;
}

core.int buildCounterAssetsExportJobExecution = 0;
api.AssetsExportJobExecution buildAssetsExportJobExecution() {
  final o = api.AssetsExportJobExecution();
  buildCounterAssetsExportJobExecution++;
  if (buildCounterAssetsExportJobExecution < 3) {
    o.endTime = 'foo';
    o.executionId = 'foo';
    o.expireTime = 'foo';
    o.requestedAssetCount = 42;
    o.result = buildAssetsExportJobExecutionResult();
    o.startTime = 'foo';
  }
  buildCounterAssetsExportJobExecution--;
  return o;
}

void checkAssetsExportJobExecution(api.AssetsExportJobExecution o) {
  buildCounterAssetsExportJobExecution++;
  if (buildCounterAssetsExportJobExecution < 3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.executionId!, unittest.equals('foo'));
    unittest.expect(o.expireTime!, unittest.equals('foo'));
    unittest.expect(o.requestedAssetCount!, unittest.equals(42));
    checkAssetsExportJobExecutionResult(o.result!);
    unittest.expect(o.startTime!, unittest.equals('foo'));
  }
  buildCounterAssetsExportJobExecution--;
}

core.int buildCounterAssetsExportJobExecutionResult = 0;
api.AssetsExportJobExecutionResult buildAssetsExportJobExecutionResult() {
  final o = api.AssetsExportJobExecutionResult();
  buildCounterAssetsExportJobExecutionResult++;
  if (buildCounterAssetsExportJobExecutionResult < 3) {
    o.error = buildStatus();
    o.outputFiles = buildOutputFileList();
    o.signedUris = buildSignedUris();
  }
  buildCounterAssetsExportJobExecutionResult--;
  return o;
}

void checkAssetsExportJobExecutionResult(api.AssetsExportJobExecutionResult o) {
  buildCounterAssetsExportJobExecutionResult++;
  if (buildCounterAssetsExportJobExecutionResult < 3) {
    checkStatus(o.error!);
    checkOutputFileList(o.outputFiles!);
    checkSignedUris(o.signedUris!);
  }
  buildCounterAssetsExportJobExecutionResult--;
}

core.int buildCounterAssetsExportJobExportCondition = 0;
api.AssetsExportJobExportCondition buildAssetsExportJobExportCondition() {
  final o = api.AssetsExportJobExportCondition();
  buildCounterAssetsExportJobExportCondition++;
  if (buildCounterAssetsExportJobExportCondition < 3) {
    o.filter = 'foo';
  }
  buildCounterAssetsExportJobExportCondition--;
  return o;
}

void checkAssetsExportJobExportCondition(api.AssetsExportJobExportCondition o) {
  buildCounterAssetsExportJobExportCondition++;
  if (buildCounterAssetsExportJobExportCondition < 3) {
    unittest.expect(o.filter!, unittest.equals('foo'));
  }
  buildCounterAssetsExportJobExportCondition--;
}

core.int buildCounterAssetsExportJobInventory = 0;
api.AssetsExportJobInventory buildAssetsExportJobInventory() {
  final o = api.AssetsExportJobInventory();
  buildCounterAssetsExportJobInventory++;
  if (buildCounterAssetsExportJobInventory < 3) {}
  buildCounterAssetsExportJobInventory--;
  return o;
}

void checkAssetsExportJobInventory(api.AssetsExportJobInventory o) {
  buildCounterAssetsExportJobInventory++;
  if (buildCounterAssetsExportJobInventory < 3) {}
  buildCounterAssetsExportJobInventory--;
}

core.int buildCounterAssetsExportJobNetworkDependencies = 0;
api.AssetsExportJobNetworkDependencies
buildAssetsExportJobNetworkDependencies() {
  final o = api.AssetsExportJobNetworkDependencies();
  buildCounterAssetsExportJobNetworkDependencies++;
  if (buildCounterAssetsExportJobNetworkDependencies < 3) {
    o.maxDays = 42;
  }
  buildCounterAssetsExportJobNetworkDependencies--;
  return o;
}

void checkAssetsExportJobNetworkDependencies(
  api.AssetsExportJobNetworkDependencies o,
) {
  buildCounterAssetsExportJobNetworkDependencies++;
  if (buildCounterAssetsExportJobNetworkDependencies < 3) {
    unittest.expect(o.maxDays!, unittest.equals(42));
  }
  buildCounterAssetsExportJobNetworkDependencies--;
}

core.int buildCounterAssetsExportJobPerformanceData = 0;
api.AssetsExportJobPerformanceData buildAssetsExportJobPerformanceData() {
  final o = api.AssetsExportJobPerformanceData();
  buildCounterAssetsExportJobPerformanceData++;
  if (buildCounterAssetsExportJobPerformanceData < 3) {
    o.maxDays = 42;
  }
  buildCounterAssetsExportJobPerformanceData--;
  return o;
}

void checkAssetsExportJobPerformanceData(api.AssetsExportJobPerformanceData o) {
  buildCounterAssetsExportJobPerformanceData++;
  if (buildCounterAssetsExportJobPerformanceData < 3) {
    unittest.expect(o.maxDays!, unittest.equals(42));
  }
  buildCounterAssetsExportJobPerformanceData--;
}

core.int buildCounterAwsEc2PlatformDetails = 0;
api.AwsEc2PlatformDetails buildAwsEc2PlatformDetails() {
  final o = api.AwsEc2PlatformDetails();
  buildCounterAwsEc2PlatformDetails++;
  if (buildCounterAwsEc2PlatformDetails < 3) {
    o.hyperthreading = 'foo';
    o.location = 'foo';
    o.machineTypeLabel = 'foo';
  }
  buildCounterAwsEc2PlatformDetails--;
  return o;
}

void checkAwsEc2PlatformDetails(api.AwsEc2PlatformDetails o) {
  buildCounterAwsEc2PlatformDetails++;
  if (buildCounterAwsEc2PlatformDetails < 3) {
    unittest.expect(o.hyperthreading!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.machineTypeLabel!, unittest.equals('foo'));
  }
  buildCounterAwsEc2PlatformDetails--;
}

core.int buildCounterAwsRds = 0;
api.AwsRds buildAwsRds() {
  final o = api.AwsRds();
  buildCounterAwsRds++;
  if (buildCounterAwsRds < 3) {}
  buildCounterAwsRds--;
  return o;
}

void checkAwsRds(api.AwsRds o) {
  buildCounterAwsRds++;
  if (buildCounterAwsRds < 3) {}
  buildCounterAwsRds--;
}

core.int buildCounterAzureVmPlatformDetails = 0;
api.AzureVmPlatformDetails buildAzureVmPlatformDetails() {
  final o = api.AzureVmPlatformDetails();
  buildCounterAzureVmPlatformDetails++;
  if (buildCounterAzureVmPlatformDetails < 3) {
    o.hyperthreading = 'foo';
    o.location = 'foo';
    o.machineTypeLabel = 'foo';
    o.provisioningState = 'foo';
  }
  buildCounterAzureVmPlatformDetails--;
  return o;
}

void checkAzureVmPlatformDetails(api.AzureVmPlatformDetails o) {
  buildCounterAzureVmPlatformDetails++;
  if (buildCounterAzureVmPlatformDetails < 3) {
    unittest.expect(o.hyperthreading!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.machineTypeLabel!, unittest.equals('foo'));
    unittest.expect(o.provisioningState!, unittest.equals('foo'));
  }
  buildCounterAzureVmPlatformDetails--;
}

core.List<api.CascadingRule> buildUnnamed16() => [
  buildCascadingRule(),
  buildCascadingRule(),
];

void checkUnnamed16(core.List<api.CascadingRule> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCascadingRule(o[0]);
  checkCascadingRule(o[1]);
}

core.List<core.String> buildUnnamed17() => ['foo', 'foo'];

void checkUnnamed17(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBatchDeleteAssetsRequest = 0;
api.BatchDeleteAssetsRequest buildBatchDeleteAssetsRequest() {
  final o = api.BatchDeleteAssetsRequest();
  buildCounterBatchDeleteAssetsRequest++;
  if (buildCounterBatchDeleteAssetsRequest < 3) {
    o.allowMissing = true;
    o.cascadingRules = buildUnnamed16();
    o.names = buildUnnamed17();
  }
  buildCounterBatchDeleteAssetsRequest--;
  return o;
}

void checkBatchDeleteAssetsRequest(api.BatchDeleteAssetsRequest o) {
  buildCounterBatchDeleteAssetsRequest++;
  if (buildCounterBatchDeleteAssetsRequest < 3) {
    unittest.expect(o.allowMissing!, unittest.isTrue);
    checkUnnamed16(o.cascadingRules!);
    checkUnnamed17(o.names!);
  }
  buildCounterBatchDeleteAssetsRequest--;
}

core.List<api.UpdateAssetRequest> buildUnnamed18() => [
  buildUpdateAssetRequest(),
  buildUpdateAssetRequest(),
];

void checkUnnamed18(core.List<api.UpdateAssetRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpdateAssetRequest(o[0]);
  checkUpdateAssetRequest(o[1]);
}

core.int buildCounterBatchUpdateAssetsRequest = 0;
api.BatchUpdateAssetsRequest buildBatchUpdateAssetsRequest() {
  final o = api.BatchUpdateAssetsRequest();
  buildCounterBatchUpdateAssetsRequest++;
  if (buildCounterBatchUpdateAssetsRequest < 3) {
    o.requests = buildUnnamed18();
  }
  buildCounterBatchUpdateAssetsRequest--;
  return o;
}

void checkBatchUpdateAssetsRequest(api.BatchUpdateAssetsRequest o) {
  buildCounterBatchUpdateAssetsRequest++;
  if (buildCounterBatchUpdateAssetsRequest < 3) {
    checkUnnamed18(o.requests!);
  }
  buildCounterBatchUpdateAssetsRequest--;
}

core.List<api.Asset> buildUnnamed19() => [buildAsset(), buildAsset()];

void checkUnnamed19(core.List<api.Asset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAsset(o[0]);
  checkAsset(o[1]);
}

core.int buildCounterBatchUpdateAssetsResponse = 0;
api.BatchUpdateAssetsResponse buildBatchUpdateAssetsResponse() {
  final o = api.BatchUpdateAssetsResponse();
  buildCounterBatchUpdateAssetsResponse++;
  if (buildCounterBatchUpdateAssetsResponse < 3) {
    o.assets = buildUnnamed19();
  }
  buildCounterBatchUpdateAssetsResponse--;
  return o;
}

void checkBatchUpdateAssetsResponse(api.BatchUpdateAssetsResponse o) {
  buildCounterBatchUpdateAssetsResponse++;
  if (buildCounterBatchUpdateAssetsResponse < 3) {
    checkUnnamed19(o.assets!);
  }
  buildCounterBatchUpdateAssetsResponse--;
}

core.int buildCounterBiosDetails = 0;
api.BiosDetails buildBiosDetails() {
  final o = api.BiosDetails();
  buildCounterBiosDetails++;
  if (buildCounterBiosDetails < 3) {
    o.biosManufacturer = 'foo';
    o.biosName = 'foo';
    o.biosReleaseDate = 'foo';
    o.biosVersion = 'foo';
    o.smbiosUuid = 'foo';
  }
  buildCounterBiosDetails--;
  return o;
}

void checkBiosDetails(api.BiosDetails o) {
  buildCounterBiosDetails++;
  if (buildCounterBiosDetails < 3) {
    unittest.expect(o.biosManufacturer!, unittest.equals('foo'));
    unittest.expect(o.biosName!, unittest.equals('foo'));
    unittest.expect(o.biosReleaseDate!, unittest.equals('foo'));
    unittest.expect(o.biosVersion!, unittest.equals('foo'));
    unittest.expect(o.smbiosUuid!, unittest.equals('foo'));
  }
  buildCounterBiosDetails--;
}

core.int buildCounterCancelOperationRequest = 0;
api.CancelOperationRequest buildCancelOperationRequest() {
  final o = api.CancelOperationRequest();
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
  return o;
}

void checkCancelOperationRequest(api.CancelOperationRequest o) {
  buildCounterCancelOperationRequest++;
  if (buildCounterCancelOperationRequest < 3) {}
  buildCounterCancelOperationRequest--;
}

core.int buildCounterCascadeLogicalDBsRule = 0;
api.CascadeLogicalDBsRule buildCascadeLogicalDBsRule() {
  final o = api.CascadeLogicalDBsRule();
  buildCounterCascadeLogicalDBsRule++;
  if (buildCounterCascadeLogicalDBsRule < 3) {}
  buildCounterCascadeLogicalDBsRule--;
  return o;
}

void checkCascadeLogicalDBsRule(api.CascadeLogicalDBsRule o) {
  buildCounterCascadeLogicalDBsRule++;
  if (buildCounterCascadeLogicalDBsRule < 3) {}
  buildCounterCascadeLogicalDBsRule--;
}

core.int buildCounterCascadingRule = 0;
api.CascadingRule buildCascadingRule() {
  final o = api.CascadingRule();
  buildCounterCascadingRule++;
  if (buildCounterCascadingRule < 3) {
    o.cascadeLogicalDbs = buildCascadeLogicalDBsRule();
  }
  buildCounterCascadingRule--;
  return o;
}

void checkCascadingRule(api.CascadingRule o) {
  buildCounterCascadingRule++;
  if (buildCounterCascadingRule < 3) {
    checkCascadeLogicalDBsRule(o.cascadeLogicalDbs!);
  }
  buildCounterCascadingRule--;
}

core.int buildCounterCloudDatabaseMigrationTarget = 0;
api.CloudDatabaseMigrationTarget buildCloudDatabaseMigrationTarget() {
  final o = api.CloudDatabaseMigrationTarget();
  buildCounterCloudDatabaseMigrationTarget++;
  if (buildCounterCloudDatabaseMigrationTarget < 3) {
    o.cloudSqlForMysqlShape = buildCloudSqlForMySqlShape();
    o.cloudSqlForPostgresqlShape = buildCloudSqlForPostgreSqlShape();
    o.cloudSqlShape = buildCloudSqlForSqlServerShape();
  }
  buildCounterCloudDatabaseMigrationTarget--;
  return o;
}

void checkCloudDatabaseMigrationTarget(api.CloudDatabaseMigrationTarget o) {
  buildCounterCloudDatabaseMigrationTarget++;
  if (buildCounterCloudDatabaseMigrationTarget < 3) {
    checkCloudSqlForMySqlShape(o.cloudSqlForMysqlShape!);
    checkCloudSqlForPostgreSqlShape(o.cloudSqlForPostgresqlShape!);
    checkCloudSqlForSqlServerShape(o.cloudSqlShape!);
  }
  buildCounterCloudDatabaseMigrationTarget--;
}

core.int buildCounterCloudSqlForMySqlShape = 0;
api.CloudSqlForMySqlShape buildCloudSqlForMySqlShape() {
  final o = api.CloudSqlForMySqlShape();
  buildCounterCloudSqlForMySqlShape++;
  if (buildCounterCloudSqlForMySqlShape < 3) {
    o.backupStorageGb = 42;
    o.edition = 'foo';
    o.egressGbPerMonth = 'foo';
    o.logicalCoreCount = 42;
    o.memoryMb = 42;
    o.storage = buildComputeStorageDescriptor();
    o.version = 'foo';
    o.zoneAvailability = 'foo';
  }
  buildCounterCloudSqlForMySqlShape--;
  return o;
}

void checkCloudSqlForMySqlShape(api.CloudSqlForMySqlShape o) {
  buildCounterCloudSqlForMySqlShape++;
  if (buildCounterCloudSqlForMySqlShape < 3) {
    unittest.expect(o.backupStorageGb!, unittest.equals(42));
    unittest.expect(o.edition!, unittest.equals('foo'));
    unittest.expect(o.egressGbPerMonth!, unittest.equals('foo'));
    unittest.expect(o.logicalCoreCount!, unittest.equals(42));
    unittest.expect(o.memoryMb!, unittest.equals(42));
    checkComputeStorageDescriptor(o.storage!);
    unittest.expect(o.version!, unittest.equals('foo'));
    unittest.expect(o.zoneAvailability!, unittest.equals('foo'));
  }
  buildCounterCloudSqlForMySqlShape--;
}

core.int buildCounterCloudSqlForPostgreSqlShape = 0;
api.CloudSqlForPostgreSqlShape buildCloudSqlForPostgreSqlShape() {
  final o = api.CloudSqlForPostgreSqlShape();
  buildCounterCloudSqlForPostgreSqlShape++;
  if (buildCounterCloudSqlForPostgreSqlShape < 3) {
    o.backupStorageGb = 42;
    o.edition = 'foo';
    o.egressGbPerMonth = 'foo';
    o.logicalCoreCount = 42;
    o.memoryMb = 42;
    o.storage = buildComputeStorageDescriptor();
    o.version = 'foo';
    o.zoneAvailability = 'foo';
  }
  buildCounterCloudSqlForPostgreSqlShape--;
  return o;
}

void checkCloudSqlForPostgreSqlShape(api.CloudSqlForPostgreSqlShape o) {
  buildCounterCloudSqlForPostgreSqlShape++;
  if (buildCounterCloudSqlForPostgreSqlShape < 3) {
    unittest.expect(o.backupStorageGb!, unittest.equals(42));
    unittest.expect(o.edition!, unittest.equals('foo'));
    unittest.expect(o.egressGbPerMonth!, unittest.equals('foo'));
    unittest.expect(o.logicalCoreCount!, unittest.equals(42));
    unittest.expect(o.memoryMb!, unittest.equals(42));
    checkComputeStorageDescriptor(o.storage!);
    unittest.expect(o.version!, unittest.equals('foo'));
    unittest.expect(o.zoneAvailability!, unittest.equals('foo'));
  }
  buildCounterCloudSqlForPostgreSqlShape--;
}

core.int buildCounterCloudSqlForSqlServerShape = 0;
api.CloudSqlForSqlServerShape buildCloudSqlForSqlServerShape() {
  final o = api.CloudSqlForSqlServerShape();
  buildCounterCloudSqlForSqlServerShape++;
  if (buildCounterCloudSqlForSqlServerShape < 3) {
    o.backupStorageGb = 42;
    o.edition = 'foo';
    o.egressGbPerMonth = 'foo';
    o.logicalCoreCount = 42;
    o.memoryMb = 42;
    o.smtEnabled = true;
    o.storage = buildComputeStorageDescriptor();
    o.version = 'foo';
    o.zoneAvailability = 'foo';
  }
  buildCounterCloudSqlForSqlServerShape--;
  return o;
}

void checkCloudSqlForSqlServerShape(api.CloudSqlForSqlServerShape o) {
  buildCounterCloudSqlForSqlServerShape++;
  if (buildCounterCloudSqlForSqlServerShape < 3) {
    unittest.expect(o.backupStorageGb!, unittest.equals(42));
    unittest.expect(o.edition!, unittest.equals('foo'));
    unittest.expect(o.egressGbPerMonth!, unittest.equals('foo'));
    unittest.expect(o.logicalCoreCount!, unittest.equals(42));
    unittest.expect(o.memoryMb!, unittest.equals(42));
    unittest.expect(o.smtEnabled!, unittest.isTrue);
    checkComputeStorageDescriptor(o.storage!);
    unittest.expect(o.version!, unittest.equals('foo'));
    unittest.expect(o.zoneAvailability!, unittest.equals('foo'));
  }
  buildCounterCloudSqlForSqlServerShape--;
}

core.int buildCounterComputeEngineMigrationTarget = 0;
api.ComputeEngineMigrationTarget buildComputeEngineMigrationTarget() {
  final o = api.ComputeEngineMigrationTarget();
  buildCounterComputeEngineMigrationTarget++;
  if (buildCounterComputeEngineMigrationTarget < 3) {
    o.shape = buildComputeEngineShapeDescriptor();
  }
  buildCounterComputeEngineMigrationTarget--;
  return o;
}

void checkComputeEngineMigrationTarget(api.ComputeEngineMigrationTarget o) {
  buildCounterComputeEngineMigrationTarget++;
  if (buildCounterComputeEngineMigrationTarget < 3) {
    checkComputeEngineShapeDescriptor(o.shape!);
  }
  buildCounterComputeEngineMigrationTarget--;
}

core.int buildCounterComputeEnginePreferences = 0;
api.ComputeEnginePreferences buildComputeEnginePreferences() {
  final o = api.ComputeEnginePreferences();
  buildCounterComputeEnginePreferences++;
  if (buildCounterComputeEnginePreferences < 3) {
    o.licenseType = 'foo';
    o.machinePreferences = buildMachinePreferences();
    o.multithreading = 'foo';
    o.osPricingPreferences = buildOperatingSystemPricingPreferences();
    o.persistentDiskType = 'foo';
  }
  buildCounterComputeEnginePreferences--;
  return o;
}

void checkComputeEnginePreferences(api.ComputeEnginePreferences o) {
  buildCounterComputeEnginePreferences++;
  if (buildCounterComputeEnginePreferences < 3) {
    unittest.expect(o.licenseType!, unittest.equals('foo'));
    checkMachinePreferences(o.machinePreferences!);
    unittest.expect(o.multithreading!, unittest.equals('foo'));
    checkOperatingSystemPricingPreferences(o.osPricingPreferences!);
    unittest.expect(o.persistentDiskType!, unittest.equals('foo'));
  }
  buildCounterComputeEnginePreferences--;
}

core.List<api.ComputeStorageDescriptor> buildUnnamed20() => [
  buildComputeStorageDescriptor(),
  buildComputeStorageDescriptor(),
];

void checkUnnamed20(core.List<api.ComputeStorageDescriptor> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComputeStorageDescriptor(o[0]);
  checkComputeStorageDescriptor(o[1]);
}

core.int buildCounterComputeEngineShapeDescriptor = 0;
api.ComputeEngineShapeDescriptor buildComputeEngineShapeDescriptor() {
  final o = api.ComputeEngineShapeDescriptor();
  buildCounterComputeEngineShapeDescriptor++;
  if (buildCounterComputeEngineShapeDescriptor < 3) {
    o.logicalCoreCount = 42;
    o.machineType = 'foo';
    o.memoryMb = 42;
    o.physicalCoreCount = 42;
    o.series = 'foo';
    o.smtEnabled = true;
    o.storage = buildUnnamed20();
  }
  buildCounterComputeEngineShapeDescriptor--;
  return o;
}

void checkComputeEngineShapeDescriptor(api.ComputeEngineShapeDescriptor o) {
  buildCounterComputeEngineShapeDescriptor++;
  if (buildCounterComputeEngineShapeDescriptor < 3) {
    unittest.expect(o.logicalCoreCount!, unittest.equals(42));
    unittest.expect(o.machineType!, unittest.equals('foo'));
    unittest.expect(o.memoryMb!, unittest.equals(42));
    unittest.expect(o.physicalCoreCount!, unittest.equals(42));
    unittest.expect(o.series!, unittest.equals('foo'));
    unittest.expect(o.smtEnabled!, unittest.isTrue);
    checkUnnamed20(o.storage!);
  }
  buildCounterComputeEngineShapeDescriptor--;
}

core.int buildCounterComputeEngineSoleTenantMigrationTarget = 0;
api.ComputeEngineSoleTenantMigrationTarget
buildComputeEngineSoleTenantMigrationTarget() {
  final o = api.ComputeEngineSoleTenantMigrationTarget();
  buildCounterComputeEngineSoleTenantMigrationTarget++;
  if (buildCounterComputeEngineSoleTenantMigrationTarget < 3) {}
  buildCounterComputeEngineSoleTenantMigrationTarget--;
  return o;
}

void checkComputeEngineSoleTenantMigrationTarget(
  api.ComputeEngineSoleTenantMigrationTarget o,
) {
  buildCounterComputeEngineSoleTenantMigrationTarget++;
  if (buildCounterComputeEngineSoleTenantMigrationTarget < 3) {}
  buildCounterComputeEngineSoleTenantMigrationTarget--;
}

core.int buildCounterComputeStorageDescriptor = 0;
api.ComputeStorageDescriptor buildComputeStorageDescriptor() {
  final o = api.ComputeStorageDescriptor();
  buildCounterComputeStorageDescriptor++;
  if (buildCounterComputeStorageDescriptor < 3) {
    o.sizeGb = 42;
    o.type = 'foo';
  }
  buildCounterComputeStorageDescriptor--;
  return o;
}

void checkComputeStorageDescriptor(api.ComputeStorageDescriptor o) {
  buildCounterComputeStorageDescriptor++;
  if (buildCounterComputeStorageDescriptor < 3) {
    unittest.expect(o.sizeGb!, unittest.equals(42));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterComputeStorageDescriptor--;
}

core.int buildCounterCpuUsageSample = 0;
api.CpuUsageSample buildCpuUsageSample() {
  final o = api.CpuUsageSample();
  buildCounterCpuUsageSample++;
  if (buildCounterCpuUsageSample < 3) {
    o.utilizedPercentage = 42.0;
  }
  buildCounterCpuUsageSample--;
  return o;
}

void checkCpuUsageSample(api.CpuUsageSample o) {
  buildCounterCpuUsageSample++;
  if (buildCounterCpuUsageSample < 3) {
    unittest.expect(o.utilizedPercentage!, unittest.equals(42.0));
  }
  buildCounterCpuUsageSample--;
}

core.int buildCounterCsvOutputFile = 0;
api.CsvOutputFile buildCsvOutputFile() {
  final o = api.CsvOutputFile();
  buildCounterCsvOutputFile++;
  if (buildCounterCsvOutputFile < 3) {
    o.columnsCount = 42;
    o.rowCount = 42;
    o.signedUri = buildSignedUri();
  }
  buildCounterCsvOutputFile--;
  return o;
}

void checkCsvOutputFile(api.CsvOutputFile o) {
  buildCounterCsvOutputFile++;
  if (buildCounterCsvOutputFile < 3) {
    unittest.expect(o.columnsCount!, unittest.equals(42));
    unittest.expect(o.rowCount!, unittest.equals(42));
    checkSignedUri(o.signedUri!);
  }
  buildCounterCsvOutputFile--;
}

core.int buildCounterDailyResourceUsageAggregation = 0;
api.DailyResourceUsageAggregation buildDailyResourceUsageAggregation() {
  final o = api.DailyResourceUsageAggregation();
  buildCounterDailyResourceUsageAggregation++;
  if (buildCounterDailyResourceUsageAggregation < 3) {
    o.cpu = buildDailyResourceUsageAggregationCPU();
    o.date = buildDate();
    o.disk = buildDailyResourceUsageAggregationDisk();
    o.memory = buildDailyResourceUsageAggregationMemory();
    o.network = buildDailyResourceUsageAggregationNetwork();
  }
  buildCounterDailyResourceUsageAggregation--;
  return o;
}

void checkDailyResourceUsageAggregation(api.DailyResourceUsageAggregation o) {
  buildCounterDailyResourceUsageAggregation++;
  if (buildCounterDailyResourceUsageAggregation < 3) {
    checkDailyResourceUsageAggregationCPU(o.cpu!);
    checkDate(o.date!);
    checkDailyResourceUsageAggregationDisk(o.disk!);
    checkDailyResourceUsageAggregationMemory(o.memory!);
    checkDailyResourceUsageAggregationNetwork(o.network!);
  }
  buildCounterDailyResourceUsageAggregation--;
}

core.int buildCounterDailyResourceUsageAggregationCPU = 0;
api.DailyResourceUsageAggregationCPU buildDailyResourceUsageAggregationCPU() {
  final o = api.DailyResourceUsageAggregationCPU();
  buildCounterDailyResourceUsageAggregationCPU++;
  if (buildCounterDailyResourceUsageAggregationCPU < 3) {
    o.utilizationPercentage = buildDailyResourceUsageAggregationStats();
  }
  buildCounterDailyResourceUsageAggregationCPU--;
  return o;
}

void checkDailyResourceUsageAggregationCPU(
  api.DailyResourceUsageAggregationCPU o,
) {
  buildCounterDailyResourceUsageAggregationCPU++;
  if (buildCounterDailyResourceUsageAggregationCPU < 3) {
    checkDailyResourceUsageAggregationStats(o.utilizationPercentage!);
  }
  buildCounterDailyResourceUsageAggregationCPU--;
}

core.int buildCounterDailyResourceUsageAggregationDisk = 0;
api.DailyResourceUsageAggregationDisk buildDailyResourceUsageAggregationDisk() {
  final o = api.DailyResourceUsageAggregationDisk();
  buildCounterDailyResourceUsageAggregationDisk++;
  if (buildCounterDailyResourceUsageAggregationDisk < 3) {
    o.iops = buildDailyResourceUsageAggregationStats();
    o.readIops = buildDailyResourceUsageAggregationStats();
    o.writeIops = buildDailyResourceUsageAggregationStats();
  }
  buildCounterDailyResourceUsageAggregationDisk--;
  return o;
}

void checkDailyResourceUsageAggregationDisk(
  api.DailyResourceUsageAggregationDisk o,
) {
  buildCounterDailyResourceUsageAggregationDisk++;
  if (buildCounterDailyResourceUsageAggregationDisk < 3) {
    checkDailyResourceUsageAggregationStats(o.iops!);
    checkDailyResourceUsageAggregationStats(o.readIops!);
    checkDailyResourceUsageAggregationStats(o.writeIops!);
  }
  buildCounterDailyResourceUsageAggregationDisk--;
}

core.int buildCounterDailyResourceUsageAggregationMemory = 0;
api.DailyResourceUsageAggregationMemory
buildDailyResourceUsageAggregationMemory() {
  final o = api.DailyResourceUsageAggregationMemory();
  buildCounterDailyResourceUsageAggregationMemory++;
  if (buildCounterDailyResourceUsageAggregationMemory < 3) {
    o.utilizationPercentage = buildDailyResourceUsageAggregationStats();
  }
  buildCounterDailyResourceUsageAggregationMemory--;
  return o;
}

void checkDailyResourceUsageAggregationMemory(
  api.DailyResourceUsageAggregationMemory o,
) {
  buildCounterDailyResourceUsageAggregationMemory++;
  if (buildCounterDailyResourceUsageAggregationMemory < 3) {
    checkDailyResourceUsageAggregationStats(o.utilizationPercentage!);
  }
  buildCounterDailyResourceUsageAggregationMemory--;
}

core.int buildCounterDailyResourceUsageAggregationNetwork = 0;
api.DailyResourceUsageAggregationNetwork
buildDailyResourceUsageAggregationNetwork() {
  final o = api.DailyResourceUsageAggregationNetwork();
  buildCounterDailyResourceUsageAggregationNetwork++;
  if (buildCounterDailyResourceUsageAggregationNetwork < 3) {
    o.egressBps = buildDailyResourceUsageAggregationStats();
    o.ingressBps = buildDailyResourceUsageAggregationStats();
  }
  buildCounterDailyResourceUsageAggregationNetwork--;
  return o;
}

void checkDailyResourceUsageAggregationNetwork(
  api.DailyResourceUsageAggregationNetwork o,
) {
  buildCounterDailyResourceUsageAggregationNetwork++;
  if (buildCounterDailyResourceUsageAggregationNetwork < 3) {
    checkDailyResourceUsageAggregationStats(o.egressBps!);
    checkDailyResourceUsageAggregationStats(o.ingressBps!);
  }
  buildCounterDailyResourceUsageAggregationNetwork--;
}

core.int buildCounterDailyResourceUsageAggregationStats = 0;
api.DailyResourceUsageAggregationStats
buildDailyResourceUsageAggregationStats() {
  final o = api.DailyResourceUsageAggregationStats();
  buildCounterDailyResourceUsageAggregationStats++;
  if (buildCounterDailyResourceUsageAggregationStats < 3) {
    o.average = 42.0;
    o.median = 42.0;
    o.ninteyFifthPercentile = 42.0;
    o.peak = 42.0;
  }
  buildCounterDailyResourceUsageAggregationStats--;
  return o;
}

void checkDailyResourceUsageAggregationStats(
  api.DailyResourceUsageAggregationStats o,
) {
  buildCounterDailyResourceUsageAggregationStats++;
  if (buildCounterDailyResourceUsageAggregationStats < 3) {
    unittest.expect(o.average!, unittest.equals(42.0));
    unittest.expect(o.median!, unittest.equals(42.0));
    unittest.expect(o.ninteyFifthPercentile!, unittest.equals(42.0));
    unittest.expect(o.peak!, unittest.equals(42.0));
  }
  buildCounterDailyResourceUsageAggregationStats--;
}

core.int buildCounterDatabaseDeploymentDetails = 0;
api.DatabaseDeploymentDetails buildDatabaseDeploymentDetails() {
  final o = api.DatabaseDeploymentDetails();
  buildCounterDatabaseDeploymentDetails++;
  if (buildCounterDatabaseDeploymentDetails < 3) {
    o.aggregatedStats = buildDatabaseDeploymentDetailsAggregatedStats();
    o.awsRds = buildAwsRds();
    o.edition = 'foo';
    o.generatedId = 'foo';
    o.manualUniqueId = 'foo';
    o.mysql = buildMysqlDatabaseDeployment();
    o.postgresql = buildPostgreSqlDatabaseDeployment();
    o.sqlServer = buildSqlServerDatabaseDeployment();
    o.topology = buildDatabaseDeploymentTopology();
    o.version = 'foo';
  }
  buildCounterDatabaseDeploymentDetails--;
  return o;
}

void checkDatabaseDeploymentDetails(api.DatabaseDeploymentDetails o) {
  buildCounterDatabaseDeploymentDetails++;
  if (buildCounterDatabaseDeploymentDetails < 3) {
    checkDatabaseDeploymentDetailsAggregatedStats(o.aggregatedStats!);
    checkAwsRds(o.awsRds!);
    unittest.expect(o.edition!, unittest.equals('foo'));
    unittest.expect(o.generatedId!, unittest.equals('foo'));
    unittest.expect(o.manualUniqueId!, unittest.equals('foo'));
    checkMysqlDatabaseDeployment(o.mysql!);
    checkPostgreSqlDatabaseDeployment(o.postgresql!);
    checkSqlServerDatabaseDeployment(o.sqlServer!);
    checkDatabaseDeploymentTopology(o.topology!);
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterDatabaseDeploymentDetails--;
}

core.int buildCounterDatabaseDeploymentDetailsAggregatedStats = 0;
api.DatabaseDeploymentDetailsAggregatedStats
buildDatabaseDeploymentDetailsAggregatedStats() {
  final o = api.DatabaseDeploymentDetailsAggregatedStats();
  buildCounterDatabaseDeploymentDetailsAggregatedStats++;
  if (buildCounterDatabaseDeploymentDetailsAggregatedStats < 3) {
    o.databaseCount = 42;
  }
  buildCounterDatabaseDeploymentDetailsAggregatedStats--;
  return o;
}

void checkDatabaseDeploymentDetailsAggregatedStats(
  api.DatabaseDeploymentDetailsAggregatedStats o,
) {
  buildCounterDatabaseDeploymentDetailsAggregatedStats++;
  if (buildCounterDatabaseDeploymentDetailsAggregatedStats < 3) {
    unittest.expect(o.databaseCount!, unittest.equals(42));
  }
  buildCounterDatabaseDeploymentDetailsAggregatedStats--;
}

core.List<api.DatabaseInstance> buildUnnamed21() => [
  buildDatabaseInstance(),
  buildDatabaseInstance(),
];

void checkUnnamed21(core.List<api.DatabaseInstance> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatabaseInstance(o[0]);
  checkDatabaseInstance(o[1]);
}

core.int buildCounterDatabaseDeploymentTopology = 0;
api.DatabaseDeploymentTopology buildDatabaseDeploymentTopology() {
  final o = api.DatabaseDeploymentTopology();
  buildCounterDatabaseDeploymentTopology++;
  if (buildCounterDatabaseDeploymentTopology < 3) {
    o.coreCount = 42;
    o.coreLimit = 42;
    o.diskAllocatedBytes = 'foo';
    o.diskUsedBytes = 'foo';
    o.instances = buildUnnamed21();
    o.memoryBytes = 'foo';
    o.memoryLimitBytes = 'foo';
    o.physicalCoreCount = 42;
    o.physicalCoreLimit = 42;
  }
  buildCounterDatabaseDeploymentTopology--;
  return o;
}

void checkDatabaseDeploymentTopology(api.DatabaseDeploymentTopology o) {
  buildCounterDatabaseDeploymentTopology++;
  if (buildCounterDatabaseDeploymentTopology < 3) {
    unittest.expect(o.coreCount!, unittest.equals(42));
    unittest.expect(o.coreLimit!, unittest.equals(42));
    unittest.expect(o.diskAllocatedBytes!, unittest.equals('foo'));
    unittest.expect(o.diskUsedBytes!, unittest.equals('foo'));
    checkUnnamed21(o.instances!);
    unittest.expect(o.memoryBytes!, unittest.equals('foo'));
    unittest.expect(o.memoryLimitBytes!, unittest.equals('foo'));
    unittest.expect(o.physicalCoreCount!, unittest.equals(42));
    unittest.expect(o.physicalCoreLimit!, unittest.equals(42));
  }
  buildCounterDatabaseDeploymentTopology--;
}

core.List<api.DatabaseSchema> buildUnnamed22() => [
  buildDatabaseSchema(),
  buildDatabaseSchema(),
];

void checkUnnamed22(core.List<api.DatabaseSchema> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatabaseSchema(o[0]);
  checkDatabaseSchema(o[1]);
}

core.int buildCounterDatabaseDetails = 0;
api.DatabaseDetails buildDatabaseDetails() {
  final o = api.DatabaseDetails();
  buildCounterDatabaseDetails++;
  if (buildCounterDatabaseDetails < 3) {
    o.allocatedStorageBytes = 'foo';
    o.databaseName = 'foo';
    o.parentDatabaseDeployment = buildDatabaseDetailsParentDatabaseDeployment();
    o.schemas = buildUnnamed22();
  }
  buildCounterDatabaseDetails--;
  return o;
}

void checkDatabaseDetails(api.DatabaseDetails o) {
  buildCounterDatabaseDetails++;
  if (buildCounterDatabaseDetails < 3) {
    unittest.expect(o.allocatedStorageBytes!, unittest.equals('foo'));
    unittest.expect(o.databaseName!, unittest.equals('foo'));
    checkDatabaseDetailsParentDatabaseDeployment(o.parentDatabaseDeployment!);
    checkUnnamed22(o.schemas!);
  }
  buildCounterDatabaseDetails--;
}

core.int buildCounterDatabaseDetailsParentDatabaseDeployment = 0;
api.DatabaseDetailsParentDatabaseDeployment
buildDatabaseDetailsParentDatabaseDeployment() {
  final o = api.DatabaseDetailsParentDatabaseDeployment();
  buildCounterDatabaseDetailsParentDatabaseDeployment++;
  if (buildCounterDatabaseDetailsParentDatabaseDeployment < 3) {
    o.generatedId = 'foo';
    o.manualUniqueId = 'foo';
  }
  buildCounterDatabaseDetailsParentDatabaseDeployment--;
  return o;
}

void checkDatabaseDetailsParentDatabaseDeployment(
  api.DatabaseDetailsParentDatabaseDeployment o,
) {
  buildCounterDatabaseDetailsParentDatabaseDeployment++;
  if (buildCounterDatabaseDetailsParentDatabaseDeployment < 3) {
    unittest.expect(o.generatedId!, unittest.equals('foo'));
    unittest.expect(o.manualUniqueId!, unittest.equals('foo'));
  }
  buildCounterDatabaseDetailsParentDatabaseDeployment--;
}

core.int buildCounterDatabaseInstance = 0;
api.DatabaseInstance buildDatabaseInstance() {
  final o = api.DatabaseInstance();
  buildCounterDatabaseInstance++;
  if (buildCounterDatabaseInstance < 3) {
    o.instanceName = 'foo';
    o.network = buildDatabaseInstanceNetwork();
    o.role = 'foo';
  }
  buildCounterDatabaseInstance--;
  return o;
}

void checkDatabaseInstance(api.DatabaseInstance o) {
  buildCounterDatabaseInstance++;
  if (buildCounterDatabaseInstance < 3) {
    unittest.expect(o.instanceName!, unittest.equals('foo'));
    checkDatabaseInstanceNetwork(o.network!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterDatabaseInstance--;
}

core.List<core.String> buildUnnamed23() => ['foo', 'foo'];

void checkUnnamed23(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed24() => ['foo', 'foo'];

void checkUnnamed24(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDatabaseInstanceNetwork = 0;
api.DatabaseInstanceNetwork buildDatabaseInstanceNetwork() {
  final o = api.DatabaseInstanceNetwork();
  buildCounterDatabaseInstanceNetwork++;
  if (buildCounterDatabaseInstanceNetwork < 3) {
    o.hostNames = buildUnnamed23();
    o.ipAddresses = buildUnnamed24();
    o.primaryMacAddress = 'foo';
  }
  buildCounterDatabaseInstanceNetwork--;
  return o;
}

void checkDatabaseInstanceNetwork(api.DatabaseInstanceNetwork o) {
  buildCounterDatabaseInstanceNetwork++;
  if (buildCounterDatabaseInstanceNetwork < 3) {
    checkUnnamed23(o.hostNames!);
    checkUnnamed24(o.ipAddresses!);
    unittest.expect(o.primaryMacAddress!, unittest.equals('foo'));
  }
  buildCounterDatabaseInstanceNetwork--;
}

core.int buildCounterDatabaseObjects = 0;
api.DatabaseObjects buildDatabaseObjects() {
  final o = api.DatabaseObjects();
  buildCounterDatabaseObjects++;
  if (buildCounterDatabaseObjects < 3) {
    o.category = 'foo';
    o.count = 'foo';
  }
  buildCounterDatabaseObjects--;
  return o;
}

void checkDatabaseObjects(api.DatabaseObjects o) {
  buildCounterDatabaseObjects++;
  if (buildCounterDatabaseObjects < 3) {
    unittest.expect(o.category!, unittest.equals('foo'));
    unittest.expect(o.count!, unittest.equals('foo'));
  }
  buildCounterDatabaseObjects--;
}

core.int buildCounterDatabasePreferences = 0;
api.DatabasePreferences buildDatabasePreferences() {
  final o = api.DatabasePreferences();
  buildCounterDatabasePreferences++;
  if (buildCounterDatabasePreferences < 3) {
    o.mssqlToCloudSqlForSqlServerPreferences =
        buildDatabasePreferencesCloudSqlSqlServer();
    o.mysqlToCloudSqlForMysqlPreferences =
        buildDatabasePreferencesCloudSqlMySql();
    o.postgresqlToCloudSqlForPostgresqlPreferences =
        buildDatabasePreferencesCloudSqlPostgreSql();
  }
  buildCounterDatabasePreferences--;
  return o;
}

void checkDatabasePreferences(api.DatabasePreferences o) {
  buildCounterDatabasePreferences++;
  if (buildCounterDatabasePreferences < 3) {
    checkDatabasePreferencesCloudSqlSqlServer(
      o.mssqlToCloudSqlForSqlServerPreferences!,
    );
    checkDatabasePreferencesCloudSqlMySql(
      o.mysqlToCloudSqlForMysqlPreferences!,
    );
    checkDatabasePreferencesCloudSqlPostgreSql(
      o.postgresqlToCloudSqlForPostgresqlPreferences!,
    );
  }
  buildCounterDatabasePreferences--;
}

core.int buildCounterDatabasePreferencesCloudSqlCommon = 0;
api.DatabasePreferencesCloudSqlCommon buildDatabasePreferencesCloudSqlCommon() {
  final o = api.DatabasePreferencesCloudSqlCommon();
  buildCounterDatabasePreferencesCloudSqlCommon++;
  if (buildCounterDatabasePreferencesCloudSqlCommon < 3) {
    o.backup = buildDatabasePreferencesCloudSqlCommonBackup();
    o.commitmentPlan = 'foo';
    o.edition = 'foo';
    o.persistentDiskType = 'foo';
    o.sizingOptimizationStrategy = 'foo';
    o.zoneAvailability = 'foo';
  }
  buildCounterDatabasePreferencesCloudSqlCommon--;
  return o;
}

void checkDatabasePreferencesCloudSqlCommon(
  api.DatabasePreferencesCloudSqlCommon o,
) {
  buildCounterDatabasePreferencesCloudSqlCommon++;
  if (buildCounterDatabasePreferencesCloudSqlCommon < 3) {
    checkDatabasePreferencesCloudSqlCommonBackup(o.backup!);
    unittest.expect(o.commitmentPlan!, unittest.equals('foo'));
    unittest.expect(o.edition!, unittest.equals('foo'));
    unittest.expect(o.persistentDiskType!, unittest.equals('foo'));
    unittest.expect(o.sizingOptimizationStrategy!, unittest.equals('foo'));
    unittest.expect(o.zoneAvailability!, unittest.equals('foo'));
  }
  buildCounterDatabasePreferencesCloudSqlCommon--;
}

core.int buildCounterDatabasePreferencesCloudSqlCommonBackup = 0;
api.DatabasePreferencesCloudSqlCommonBackup
buildDatabasePreferencesCloudSqlCommonBackup() {
  final o = api.DatabasePreferencesCloudSqlCommonBackup();
  buildCounterDatabasePreferencesCloudSqlCommonBackup++;
  if (buildCounterDatabasePreferencesCloudSqlCommonBackup < 3) {
    o.backupMode = 'foo';
  }
  buildCounterDatabasePreferencesCloudSqlCommonBackup--;
  return o;
}

void checkDatabasePreferencesCloudSqlCommonBackup(
  api.DatabasePreferencesCloudSqlCommonBackup o,
) {
  buildCounterDatabasePreferencesCloudSqlCommonBackup++;
  if (buildCounterDatabasePreferencesCloudSqlCommonBackup < 3) {
    unittest.expect(o.backupMode!, unittest.equals('foo'));
  }
  buildCounterDatabasePreferencesCloudSqlCommonBackup--;
}

core.int buildCounterDatabasePreferencesCloudSqlMySql = 0;
api.DatabasePreferencesCloudSqlMySql buildDatabasePreferencesCloudSqlMySql() {
  final o = api.DatabasePreferencesCloudSqlMySql();
  buildCounterDatabasePreferencesCloudSqlMySql++;
  if (buildCounterDatabasePreferencesCloudSqlMySql < 3) {
    o.common = buildDatabasePreferencesCloudSqlCommon();
  }
  buildCounterDatabasePreferencesCloudSqlMySql--;
  return o;
}

void checkDatabasePreferencesCloudSqlMySql(
  api.DatabasePreferencesCloudSqlMySql o,
) {
  buildCounterDatabasePreferencesCloudSqlMySql++;
  if (buildCounterDatabasePreferencesCloudSqlMySql < 3) {
    checkDatabasePreferencesCloudSqlCommon(o.common!);
  }
  buildCounterDatabasePreferencesCloudSqlMySql--;
}

core.int buildCounterDatabasePreferencesCloudSqlPostgreSql = 0;
api.DatabasePreferencesCloudSqlPostgreSql
buildDatabasePreferencesCloudSqlPostgreSql() {
  final o = api.DatabasePreferencesCloudSqlPostgreSql();
  buildCounterDatabasePreferencesCloudSqlPostgreSql++;
  if (buildCounterDatabasePreferencesCloudSqlPostgreSql < 3) {
    o.common = buildDatabasePreferencesCloudSqlCommon();
  }
  buildCounterDatabasePreferencesCloudSqlPostgreSql--;
  return o;
}

void checkDatabasePreferencesCloudSqlPostgreSql(
  api.DatabasePreferencesCloudSqlPostgreSql o,
) {
  buildCounterDatabasePreferencesCloudSqlPostgreSql++;
  if (buildCounterDatabasePreferencesCloudSqlPostgreSql < 3) {
    checkDatabasePreferencesCloudSqlCommon(o.common!);
  }
  buildCounterDatabasePreferencesCloudSqlPostgreSql--;
}

core.int buildCounterDatabasePreferencesCloudSqlSqlServer = 0;
api.DatabasePreferencesCloudSqlSqlServer
buildDatabasePreferencesCloudSqlSqlServer() {
  final o = api.DatabasePreferencesCloudSqlSqlServer();
  buildCounterDatabasePreferencesCloudSqlSqlServer++;
  if (buildCounterDatabasePreferencesCloudSqlSqlServer < 3) {
    o.common = buildDatabasePreferencesCloudSqlCommon();
    o.multithreading = 'foo';
    o.versionType = 'foo';
  }
  buildCounterDatabasePreferencesCloudSqlSqlServer--;
  return o;
}

void checkDatabasePreferencesCloudSqlSqlServer(
  api.DatabasePreferencesCloudSqlSqlServer o,
) {
  buildCounterDatabasePreferencesCloudSqlSqlServer++;
  if (buildCounterDatabasePreferencesCloudSqlSqlServer < 3) {
    checkDatabasePreferencesCloudSqlCommon(o.common!);
    unittest.expect(o.multithreading!, unittest.equals('foo'));
    unittest.expect(o.versionType!, unittest.equals('foo'));
  }
  buildCounterDatabasePreferencesCloudSqlSqlServer--;
}

core.List<api.DatabaseObjects> buildUnnamed25() => [
  buildDatabaseObjects(),
  buildDatabaseObjects(),
];

void checkUnnamed25(core.List<api.DatabaseObjects> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatabaseObjects(o[0]);
  checkDatabaseObjects(o[1]);
}

core.int buildCounterDatabaseSchema = 0;
api.DatabaseSchema buildDatabaseSchema() {
  final o = api.DatabaseSchema();
  buildCounterDatabaseSchema++;
  if (buildCounterDatabaseSchema < 3) {
    o.mysql = buildMySqlSchemaDetails();
    o.objects = buildUnnamed25();
    o.postgresql = buildPostgreSqlSchemaDetails();
    o.schemaName = 'foo';
    o.sqlServer = buildSqlServerSchemaDetails();
    o.tablesSizeBytes = 'foo';
  }
  buildCounterDatabaseSchema--;
  return o;
}

void checkDatabaseSchema(api.DatabaseSchema o) {
  buildCounterDatabaseSchema++;
  if (buildCounterDatabaseSchema < 3) {
    checkMySqlSchemaDetails(o.mysql!);
    checkUnnamed25(o.objects!);
    checkPostgreSqlSchemaDetails(o.postgresql!);
    unittest.expect(o.schemaName!, unittest.equals('foo'));
    checkSqlServerSchemaDetails(o.sqlServer!);
    unittest.expect(o.tablesSizeBytes!, unittest.equals('foo'));
  }
  buildCounterDatabaseSchema--;
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

core.int buildCounterDateTime = 0;
api.DateTime buildDateTime() {
  final o = api.DateTime();
  buildCounterDateTime++;
  if (buildCounterDateTime < 3) {
    o.day = 42;
    o.hours = 42;
    o.minutes = 42;
    o.month = 42;
    o.nanos = 42;
    o.seconds = 42;
    o.timeZone = buildTimeZone();
    o.utcOffset = 'foo';
    o.year = 42;
  }
  buildCounterDateTime--;
  return o;
}

void checkDateTime(api.DateTime o) {
  buildCounterDateTime++;
  if (buildCounterDateTime < 3) {
    unittest.expect(o.day!, unittest.equals(42));
    unittest.expect(o.hours!, unittest.equals(42));
    unittest.expect(o.minutes!, unittest.equals(42));
    unittest.expect(o.month!, unittest.equals(42));
    unittest.expect(o.nanos!, unittest.equals(42));
    unittest.expect(o.seconds!, unittest.equals(42));
    checkTimeZone(o.timeZone!);
    unittest.expect(o.utcOffset!, unittest.equals('foo'));
    unittest.expect(o.year!, unittest.equals(42));
  }
  buildCounterDateTime--;
}

core.int buildCounterDetectedSoftware = 0;
api.DetectedSoftware buildDetectedSoftware() {
  final o = api.DetectedSoftware();
  buildCounterDetectedSoftware++;
  if (buildCounterDetectedSoftware < 3) {
    o.softwareFamily = 'foo';
    o.softwareName = 'foo';
  }
  buildCounterDetectedSoftware--;
  return o;
}

void checkDetectedSoftware(api.DetectedSoftware o) {
  buildCounterDetectedSoftware++;
  if (buildCounterDetectedSoftware < 3) {
    unittest.expect(o.softwareFamily!, unittest.equals('foo'));
    unittest.expect(o.softwareName!, unittest.equals('foo'));
  }
  buildCounterDetectedSoftware--;
}

core.List<api.Status> buildUnnamed26() => [buildStatus(), buildStatus()];

void checkUnnamed26(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.Map<core.String, core.String> buildUnnamed27() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed27(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.DiscoveryClientDiscoveryClientRecommendedVersion>
buildUnnamed28() => [
  buildDiscoveryClientDiscoveryClientRecommendedVersion(),
  buildDiscoveryClientDiscoveryClientRecommendedVersion(),
];

void checkUnnamed28(
  core.List<api.DiscoveryClientDiscoveryClientRecommendedVersion> o,
) {
  unittest.expect(o, unittest.hasLength(2));
  checkDiscoveryClientDiscoveryClientRecommendedVersion(o[0]);
  checkDiscoveryClientDiscoveryClientRecommendedVersion(o[1]);
}

core.int buildCounterDiscoveryClient = 0;
api.DiscoveryClient buildDiscoveryClient() {
  final o = api.DiscoveryClient();
  buildCounterDiscoveryClient++;
  if (buildCounterDiscoveryClient < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.errors = buildUnnamed26();
    o.expireTime = 'foo';
    o.heartbeatTime = 'foo';
    o.labels = buildUnnamed27();
    o.name = 'foo';
    o.recommendedVersions = buildUnnamed28();
    o.serviceAccount = 'foo';
    o.signalsEndpoint = 'foo';
    o.source = 'foo';
    o.state = 'foo';
    o.ttl = 'foo';
    o.updateTime = 'foo';
    o.version = 'foo';
  }
  buildCounterDiscoveryClient--;
  return o;
}

void checkDiscoveryClient(api.DiscoveryClient o) {
  buildCounterDiscoveryClient++;
  if (buildCounterDiscoveryClient < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed26(o.errors!);
    unittest.expect(o.expireTime!, unittest.equals('foo'));
    unittest.expect(o.heartbeatTime!, unittest.equals('foo'));
    checkUnnamed27(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed28(o.recommendedVersions!);
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
    unittest.expect(o.signalsEndpoint!, unittest.equals('foo'));
    unittest.expect(o.source!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.ttl!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterDiscoveryClient--;
}

core.int buildCounterDiscoveryClientDiscoveryClientRecommendedVersion = 0;
api.DiscoveryClientDiscoveryClientRecommendedVersion
buildDiscoveryClientDiscoveryClientRecommendedVersion() {
  final o = api.DiscoveryClientDiscoveryClientRecommendedVersion();
  buildCounterDiscoveryClientDiscoveryClientRecommendedVersion++;
  if (buildCounterDiscoveryClientDiscoveryClientRecommendedVersion < 3) {
    o.uri = 'foo';
    o.version = 'foo';
  }
  buildCounterDiscoveryClientDiscoveryClientRecommendedVersion--;
  return o;
}

void checkDiscoveryClientDiscoveryClientRecommendedVersion(
  api.DiscoveryClientDiscoveryClientRecommendedVersion o,
) {
  buildCounterDiscoveryClientDiscoveryClientRecommendedVersion++;
  if (buildCounterDiscoveryClientDiscoveryClientRecommendedVersion < 3) {
    unittest.expect(o.uri!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterDiscoveryClientDiscoveryClientRecommendedVersion--;
}

core.int buildCounterDiskEntry = 0;
api.DiskEntry buildDiskEntry() {
  final o = api.DiskEntry();
  buildCounterDiskEntry++;
  if (buildCounterDiskEntry < 3) {
    o.diskLabel = 'foo';
    o.diskLabelType = 'foo';
    o.hwAddress = 'foo';
    o.interfaceType = 'foo';
    o.partitions = buildDiskPartitionList();
    o.status = 'foo';
    o.totalCapacityBytes = 'foo';
    o.totalFreeBytes = 'foo';
  }
  buildCounterDiskEntry--;
  return o;
}

void checkDiskEntry(api.DiskEntry o) {
  buildCounterDiskEntry++;
  if (buildCounterDiskEntry < 3) {
    unittest.expect(o.diskLabel!, unittest.equals('foo'));
    unittest.expect(o.diskLabelType!, unittest.equals('foo'));
    unittest.expect(o.hwAddress!, unittest.equals('foo'));
    unittest.expect(o.interfaceType!, unittest.equals('foo'));
    checkDiskPartitionList(o.partitions!);
    unittest.expect(o.status!, unittest.equals('foo'));
    unittest.expect(o.totalCapacityBytes!, unittest.equals('foo'));
    unittest.expect(o.totalFreeBytes!, unittest.equals('foo'));
  }
  buildCounterDiskEntry--;
}

core.List<api.DiskEntry> buildUnnamed29() => [
  buildDiskEntry(),
  buildDiskEntry(),
];

void checkUnnamed29(core.List<api.DiskEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDiskEntry(o[0]);
  checkDiskEntry(o[1]);
}

core.int buildCounterDiskEntryList = 0;
api.DiskEntryList buildDiskEntryList() {
  final o = api.DiskEntryList();
  buildCounterDiskEntryList++;
  if (buildCounterDiskEntryList < 3) {
    o.entries = buildUnnamed29();
  }
  buildCounterDiskEntryList--;
  return o;
}

void checkDiskEntryList(api.DiskEntryList o) {
  buildCounterDiskEntryList++;
  if (buildCounterDiskEntryList < 3) {
    checkUnnamed29(o.entries!);
  }
  buildCounterDiskEntryList--;
}

core.int buildCounterDiskPartition = 0;
api.DiskPartition buildDiskPartition() {
  final o = api.DiskPartition();
  buildCounterDiskPartition++;
  if (buildCounterDiskPartition < 3) {
    o.capacityBytes = 'foo';
    o.fileSystem = 'foo';
    o.freeBytes = 'foo';
    o.mountPoint = 'foo';
    o.subPartitions = buildDiskPartitionList();
    o.type = 'foo';
    o.uuid = 'foo';
  }
  buildCounterDiskPartition--;
  return o;
}

void checkDiskPartition(api.DiskPartition o) {
  buildCounterDiskPartition++;
  if (buildCounterDiskPartition < 3) {
    unittest.expect(o.capacityBytes!, unittest.equals('foo'));
    unittest.expect(o.fileSystem!, unittest.equals('foo'));
    unittest.expect(o.freeBytes!, unittest.equals('foo'));
    unittest.expect(o.mountPoint!, unittest.equals('foo'));
    checkDiskPartitionList(o.subPartitions!);
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.uuid!, unittest.equals('foo'));
  }
  buildCounterDiskPartition--;
}

core.int buildCounterDiskPartitionDetails = 0;
api.DiskPartitionDetails buildDiskPartitionDetails() {
  final o = api.DiskPartitionDetails();
  buildCounterDiskPartitionDetails++;
  if (buildCounterDiskPartitionDetails < 3) {
    o.freeSpaceBytes = 'foo';
    o.partitions = buildDiskPartitionList();
    o.totalCapacityBytes = 'foo';
  }
  buildCounterDiskPartitionDetails--;
  return o;
}

void checkDiskPartitionDetails(api.DiskPartitionDetails o) {
  buildCounterDiskPartitionDetails++;
  if (buildCounterDiskPartitionDetails < 3) {
    unittest.expect(o.freeSpaceBytes!, unittest.equals('foo'));
    checkDiskPartitionList(o.partitions!);
    unittest.expect(o.totalCapacityBytes!, unittest.equals('foo'));
  }
  buildCounterDiskPartitionDetails--;
}

core.List<api.DiskPartition> buildUnnamed30() => [
  buildDiskPartition(),
  buildDiskPartition(),
];

void checkUnnamed30(core.List<api.DiskPartition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDiskPartition(o[0]);
  checkDiskPartition(o[1]);
}

core.int buildCounterDiskPartitionList = 0;
api.DiskPartitionList buildDiskPartitionList() {
  final o = api.DiskPartitionList();
  buildCounterDiskPartitionList++;
  if (buildCounterDiskPartitionList < 3) {
    o.entries = buildUnnamed30();
  }
  buildCounterDiskPartitionList--;
  return o;
}

void checkDiskPartitionList(api.DiskPartitionList o) {
  buildCounterDiskPartitionList++;
  if (buildCounterDiskPartitionList < 3) {
    checkUnnamed30(o.entries!);
  }
  buildCounterDiskPartitionList--;
}

core.int buildCounterDiskUsageSample = 0;
api.DiskUsageSample buildDiskUsageSample() {
  final o = api.DiskUsageSample();
  buildCounterDiskUsageSample++;
  if (buildCounterDiskUsageSample < 3) {
    o.averageIops = 42.0;
    o.averageReadIops = 42.0;
    o.averageWriteIops = 42.0;
  }
  buildCounterDiskUsageSample--;
  return o;
}

void checkDiskUsageSample(api.DiskUsageSample o) {
  buildCounterDiskUsageSample++;
  if (buildCounterDiskUsageSample < 3) {
    unittest.expect(o.averageIops!, unittest.equals(42.0));
    unittest.expect(o.averageReadIops!, unittest.equals(42.0));
    unittest.expect(o.averageWriteIops!, unittest.equals(42.0));
  }
  buildCounterDiskUsageSample--;
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

core.List<api.FrameViolationEntry> buildUnnamed31() => [
  buildFrameViolationEntry(),
  buildFrameViolationEntry(),
];

void checkUnnamed31(core.List<api.FrameViolationEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFrameViolationEntry(o[0]);
  checkFrameViolationEntry(o[1]);
}

core.int buildCounterErrorFrame = 0;
api.ErrorFrame buildErrorFrame() {
  final o = api.ErrorFrame();
  buildCounterErrorFrame++;
  if (buildCounterErrorFrame < 3) {
    o.ingestionTime = 'foo';
    o.name = 'foo';
    o.originalFrame = buildAssetFrame();
    o.violations = buildUnnamed31();
  }
  buildCounterErrorFrame--;
  return o;
}

void checkErrorFrame(api.ErrorFrame o) {
  buildCounterErrorFrame++;
  if (buildCounterErrorFrame < 3) {
    unittest.expect(o.ingestionTime!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkAssetFrame(o.originalFrame!);
    checkUnnamed31(o.violations!);
  }
  buildCounterErrorFrame--;
}

core.List<api.ImportError> buildUnnamed32() => [
  buildImportError(),
  buildImportError(),
];

void checkUnnamed32(core.List<api.ImportError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImportError(o[0]);
  checkImportError(o[1]);
}

core.int buildCounterExecutionReport = 0;
api.ExecutionReport buildExecutionReport() {
  final o = api.ExecutionReport();
  buildCounterExecutionReport++;
  if (buildCounterExecutionReport < 3) {
    o.executionErrors = buildValidationReport();
    o.framesReported = 42;
    o.jobErrors = buildUnnamed32();
    o.totalRowsCount = 42;
  }
  buildCounterExecutionReport--;
  return o;
}

void checkExecutionReport(api.ExecutionReport o) {
  buildCounterExecutionReport++;
  if (buildCounterExecutionReport < 3) {
    checkValidationReport(o.executionErrors!);
    unittest.expect(o.framesReported!, unittest.equals(42));
    checkUnnamed32(o.jobErrors!);
    unittest.expect(o.totalRowsCount!, unittest.equals(42));
  }
  buildCounterExecutionReport--;
}

core.List<api.ImportError> buildUnnamed33() => [
  buildImportError(),
  buildImportError(),
];

void checkUnnamed33(core.List<api.ImportError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImportError(o[0]);
  checkImportError(o[1]);
}

core.List<api.ImportRowError> buildUnnamed34() => [
  buildImportRowError(),
  buildImportRowError(),
];

void checkUnnamed34(core.List<api.ImportRowError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImportRowError(o[0]);
  checkImportRowError(o[1]);
}

core.int buildCounterFileValidationReport = 0;
api.FileValidationReport buildFileValidationReport() {
  final o = api.FileValidationReport();
  buildCounterFileValidationReport++;
  if (buildCounterFileValidationReport < 3) {
    o.fileErrors = buildUnnamed33();
    o.fileName = 'foo';
    o.partialReport = true;
    o.rowErrors = buildUnnamed34();
  }
  buildCounterFileValidationReport--;
  return o;
}

void checkFileValidationReport(api.FileValidationReport o) {
  buildCounterFileValidationReport++;
  if (buildCounterFileValidationReport < 3) {
    checkUnnamed33(o.fileErrors!);
    unittest.expect(o.fileName!, unittest.equals('foo'));
    unittest.expect(o.partialReport!, unittest.isTrue);
    checkUnnamed34(o.rowErrors!);
  }
  buildCounterFileValidationReport--;
}

core.int buildCounterFitDescriptor = 0;
api.FitDescriptor buildFitDescriptor() {
  final o = api.FitDescriptor();
  buildCounterFitDescriptor++;
  if (buildCounterFitDescriptor < 3) {
    o.fitLevel = 'foo';
  }
  buildCounterFitDescriptor--;
  return o;
}

void checkFitDescriptor(api.FitDescriptor o) {
  buildCounterFitDescriptor++;
  if (buildCounterFitDescriptor < 3) {
    unittest.expect(o.fitLevel!, unittest.equals('foo'));
  }
  buildCounterFitDescriptor--;
}

core.int buildCounterFrameViolationEntry = 0;
api.FrameViolationEntry buildFrameViolationEntry() {
  final o = api.FrameViolationEntry();
  buildCounterFrameViolationEntry++;
  if (buildCounterFrameViolationEntry < 3) {
    o.field = 'foo';
    o.violation = 'foo';
  }
  buildCounterFrameViolationEntry--;
  return o;
}

void checkFrameViolationEntry(api.FrameViolationEntry o) {
  buildCounterFrameViolationEntry++;
  if (buildCounterFrameViolationEntry < 3) {
    unittest.expect(o.field!, unittest.equals('foo'));
    unittest.expect(o.violation!, unittest.equals('foo'));
  }
  buildCounterFrameViolationEntry--;
}

core.List<api.AssetFrame> buildUnnamed35() => [
  buildAssetFrame(),
  buildAssetFrame(),
];

void checkUnnamed35(core.List<api.AssetFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssetFrame(o[0]);
  checkAssetFrame(o[1]);
}

core.int buildCounterFrames = 0;
api.Frames buildFrames() {
  final o = api.Frames();
  buildCounterFrames++;
  if (buildCounterFrames < 3) {
    o.framesData = buildUnnamed35();
  }
  buildCounterFrames--;
  return o;
}

void checkFrames(api.Frames o) {
  buildCounterFrames++;
  if (buildCounterFrames < 3) {
    checkUnnamed35(o.framesData!);
  }
  buildCounterFrames--;
}

core.int buildCounterFstabEntry = 0;
api.FstabEntry buildFstabEntry() {
  final o = api.FstabEntry();
  buildCounterFstabEntry++;
  if (buildCounterFstabEntry < 3) {
    o.file = 'foo';
    o.freq = 42;
    o.mntops = 'foo';
    o.passno = 42;
    o.spec = 'foo';
    o.vfstype = 'foo';
  }
  buildCounterFstabEntry--;
  return o;
}

void checkFstabEntry(api.FstabEntry o) {
  buildCounterFstabEntry++;
  if (buildCounterFstabEntry < 3) {
    unittest.expect(o.file!, unittest.equals('foo'));
    unittest.expect(o.freq!, unittest.equals(42));
    unittest.expect(o.mntops!, unittest.equals('foo'));
    unittest.expect(o.passno!, unittest.equals(42));
    unittest.expect(o.spec!, unittest.equals('foo'));
    unittest.expect(o.vfstype!, unittest.equals('foo'));
  }
  buildCounterFstabEntry--;
}

core.List<api.FstabEntry> buildUnnamed36() => [
  buildFstabEntry(),
  buildFstabEntry(),
];

void checkUnnamed36(core.List<api.FstabEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFstabEntry(o[0]);
  checkFstabEntry(o[1]);
}

core.int buildCounterFstabEntryList = 0;
api.FstabEntryList buildFstabEntryList() {
  final o = api.FstabEntryList();
  buildCounterFstabEntryList++;
  if (buildCounterFstabEntryList < 3) {
    o.entries = buildUnnamed36();
  }
  buildCounterFstabEntryList--;
  return o;
}

void checkFstabEntryList(api.FstabEntryList o) {
  buildCounterFstabEntryList++;
  if (buildCounterFstabEntryList < 3) {
    checkUnnamed36(o.entries!);
  }
  buildCounterFstabEntryList--;
}

core.int buildCounterGCSPayloadInfo = 0;
api.GCSPayloadInfo buildGCSPayloadInfo() {
  final o = api.GCSPayloadInfo();
  buildCounterGCSPayloadInfo++;
  if (buildCounterGCSPayloadInfo < 3) {
    o.format = 'foo';
    o.path = 'foo';
  }
  buildCounterGCSPayloadInfo--;
  return o;
}

void checkGCSPayloadInfo(api.GCSPayloadInfo o) {
  buildCounterGCSPayloadInfo++;
  if (buildCounterGCSPayloadInfo < 3) {
    unittest.expect(o.format!, unittest.equals('foo'));
    unittest.expect(o.path!, unittest.equals('foo'));
  }
  buildCounterGCSPayloadInfo--;
}

core.List<core.String> buildUnnamed37() => ['foo', 'foo'];

void checkUnnamed37(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGenericInsight = 0;
api.GenericInsight buildGenericInsight() {
  final o = api.GenericInsight();
  buildCounterGenericInsight++;
  if (buildCounterGenericInsight < 3) {
    o.additionalInformation = buildUnnamed37();
    o.defaultMessage = 'foo';
    o.messageId = 'foo';
  }
  buildCounterGenericInsight--;
  return o;
}

void checkGenericInsight(api.GenericInsight o) {
  buildCounterGenericInsight++;
  if (buildCounterGenericInsight < 3) {
    checkUnnamed37(o.additionalInformation!);
    unittest.expect(o.defaultMessage!, unittest.equals('foo'));
    unittest.expect(o.messageId!, unittest.equals('foo'));
  }
  buildCounterGenericInsight--;
}

core.int buildCounterGenericPlatformDetails = 0;
api.GenericPlatformDetails buildGenericPlatformDetails() {
  final o = api.GenericPlatformDetails();
  buildCounterGenericPlatformDetails++;
  if (buildCounterGenericPlatformDetails < 3) {
    o.hyperthreading = 'foo';
    o.location = 'foo';
  }
  buildCounterGenericPlatformDetails--;
  return o;
}

void checkGenericPlatformDetails(api.GenericPlatformDetails o) {
  buildCounterGenericPlatformDetails++;
  if (buildCounterGenericPlatformDetails < 3) {
    unittest.expect(o.hyperthreading!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
  }
  buildCounterGenericPlatformDetails--;
}

core.int buildCounterGoogleKubernetesEngineMigrationTarget = 0;
api.GoogleKubernetesEngineMigrationTarget
buildGoogleKubernetesEngineMigrationTarget() {
  final o = api.GoogleKubernetesEngineMigrationTarget();
  buildCounterGoogleKubernetesEngineMigrationTarget++;
  if (buildCounterGoogleKubernetesEngineMigrationTarget < 3) {}
  buildCounterGoogleKubernetesEngineMigrationTarget--;
  return o;
}

void checkGoogleKubernetesEngineMigrationTarget(
  api.GoogleKubernetesEngineMigrationTarget o,
) {
  buildCounterGoogleKubernetesEngineMigrationTarget++;
  if (buildCounterGoogleKubernetesEngineMigrationTarget < 3) {}
  buildCounterGoogleKubernetesEngineMigrationTarget--;
}

core.Map<core.String, core.String> buildUnnamed38() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed38(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterGroup = 0;
api.Group buildGroup() {
  final o = api.Group();
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed38();
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGroup--;
  return o;
}

void checkGroup(api.Group o) {
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed38(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterGroup--;
}

core.int buildCounterGuestConfigDetails = 0;
api.GuestConfigDetails buildGuestConfigDetails() {
  final o = api.GuestConfigDetails();
  buildCounterGuestConfigDetails++;
  if (buildCounterGuestConfigDetails < 3) {
    o.fstab = buildFstabEntryList();
    o.hosts = buildHostsEntryList();
    o.issue = 'foo';
    o.nfsExports = buildNfsExportList();
    o.selinux = buildSelinux();
  }
  buildCounterGuestConfigDetails--;
  return o;
}

void checkGuestConfigDetails(api.GuestConfigDetails o) {
  buildCounterGuestConfigDetails++;
  if (buildCounterGuestConfigDetails < 3) {
    checkFstabEntryList(o.fstab!);
    checkHostsEntryList(o.hosts!);
    unittest.expect(o.issue!, unittest.equals('foo'));
    checkNfsExportList(o.nfsExports!);
    checkSelinux(o.selinux!);
  }
  buildCounterGuestConfigDetails--;
}

core.List<core.String> buildUnnamed39() => ['foo', 'foo'];

void checkUnnamed39(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGuestInstalledApplication = 0;
api.GuestInstalledApplication buildGuestInstalledApplication() {
  final o = api.GuestInstalledApplication();
  buildCounterGuestInstalledApplication++;
  if (buildCounterGuestInstalledApplication < 3) {
    o.licenses = buildUnnamed39();
    o.name = 'foo';
    o.path = 'foo';
    o.time = 'foo';
    o.vendor = 'foo';
    o.version = 'foo';
  }
  buildCounterGuestInstalledApplication--;
  return o;
}

void checkGuestInstalledApplication(api.GuestInstalledApplication o) {
  buildCounterGuestInstalledApplication++;
  if (buildCounterGuestInstalledApplication < 3) {
    checkUnnamed39(o.licenses!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.path!, unittest.equals('foo'));
    unittest.expect(o.time!, unittest.equals('foo'));
    unittest.expect(o.vendor!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterGuestInstalledApplication--;
}

core.List<api.GuestInstalledApplication> buildUnnamed40() => [
  buildGuestInstalledApplication(),
  buildGuestInstalledApplication(),
];

void checkUnnamed40(core.List<api.GuestInstalledApplication> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGuestInstalledApplication(o[0]);
  checkGuestInstalledApplication(o[1]);
}

core.int buildCounterGuestInstalledApplicationList = 0;
api.GuestInstalledApplicationList buildGuestInstalledApplicationList() {
  final o = api.GuestInstalledApplicationList();
  buildCounterGuestInstalledApplicationList++;
  if (buildCounterGuestInstalledApplicationList < 3) {
    o.entries = buildUnnamed40();
  }
  buildCounterGuestInstalledApplicationList--;
  return o;
}

void checkGuestInstalledApplicationList(api.GuestInstalledApplicationList o) {
  buildCounterGuestInstalledApplicationList++;
  if (buildCounterGuestInstalledApplicationList < 3) {
    checkUnnamed40(o.entries!);
  }
  buildCounterGuestInstalledApplicationList--;
}

core.int buildCounterGuestOsDetails = 0;
api.GuestOsDetails buildGuestOsDetails() {
  final o = api.GuestOsDetails();
  buildCounterGuestOsDetails++;
  if (buildCounterGuestOsDetails < 3) {
    o.config = buildGuestConfigDetails();
    o.runtime = buildGuestRuntimeDetails();
  }
  buildCounterGuestOsDetails--;
  return o;
}

void checkGuestOsDetails(api.GuestOsDetails o) {
  buildCounterGuestOsDetails++;
  if (buildCounterGuestOsDetails < 3) {
    checkGuestConfigDetails(o.config!);
    checkGuestRuntimeDetails(o.runtime!);
  }
  buildCounterGuestOsDetails--;
}

core.int buildCounterGuestRuntimeDetails = 0;
api.GuestRuntimeDetails buildGuestRuntimeDetails() {
  final o = api.GuestRuntimeDetails();
  buildCounterGuestRuntimeDetails++;
  if (buildCounterGuestRuntimeDetails < 3) {
    o.domain = 'foo';
    o.installedApps = buildGuestInstalledApplicationList();
    o.lastUptime = buildDate();
    o.machineName = 'foo';
    o.networkInfo = buildRuntimeNetworkInfo();
    o.openFileList = buildOpenFileList();
    o.processes = buildRunningProcessList();
    o.services = buildRunningServiceList();
  }
  buildCounterGuestRuntimeDetails--;
  return o;
}

void checkGuestRuntimeDetails(api.GuestRuntimeDetails o) {
  buildCounterGuestRuntimeDetails++;
  if (buildCounterGuestRuntimeDetails < 3) {
    unittest.expect(o.domain!, unittest.equals('foo'));
    checkGuestInstalledApplicationList(o.installedApps!);
    checkDate(o.lastUptime!);
    unittest.expect(o.machineName!, unittest.equals('foo'));
    checkRuntimeNetworkInfo(o.networkInfo!);
    checkOpenFileList(o.openFileList!);
    checkRunningProcessList(o.processes!);
    checkRunningServiceList(o.services!);
  }
  buildCounterGuestRuntimeDetails--;
}

core.List<core.String> buildUnnamed41() => ['foo', 'foo'];

void checkUnnamed41(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterHostsEntry = 0;
api.HostsEntry buildHostsEntry() {
  final o = api.HostsEntry();
  buildCounterHostsEntry++;
  if (buildCounterHostsEntry < 3) {
    o.hostNames = buildUnnamed41();
    o.ip = 'foo';
  }
  buildCounterHostsEntry--;
  return o;
}

void checkHostsEntry(api.HostsEntry o) {
  buildCounterHostsEntry++;
  if (buildCounterHostsEntry < 3) {
    checkUnnamed41(o.hostNames!);
    unittest.expect(o.ip!, unittest.equals('foo'));
  }
  buildCounterHostsEntry--;
}

core.List<api.HostsEntry> buildUnnamed42() => [
  buildHostsEntry(),
  buildHostsEntry(),
];

void checkUnnamed42(core.List<api.HostsEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHostsEntry(o[0]);
  checkHostsEntry(o[1]);
}

core.int buildCounterHostsEntryList = 0;
api.HostsEntryList buildHostsEntryList() {
  final o = api.HostsEntryList();
  buildCounterHostsEntryList++;
  if (buildCounterHostsEntryList < 3) {
    o.entries = buildUnnamed42();
  }
  buildCounterHostsEntryList--;
  return o;
}

void checkHostsEntryList(api.HostsEntryList o) {
  buildCounterHostsEntryList++;
  if (buildCounterHostsEntryList < 3) {
    checkUnnamed42(o.entries!);
  }
  buildCounterHostsEntryList--;
}

core.int buildCounterImportDataFile = 0;
api.ImportDataFile buildImportDataFile() {
  final o = api.ImportDataFile();
  buildCounterImportDataFile++;
  if (buildCounterImportDataFile < 3) {
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.format = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.uploadFileInfo = buildUploadFileInfo();
  }
  buildCounterImportDataFile--;
  return o;
}

void checkImportDataFile(api.ImportDataFile o) {
  buildCounterImportDataFile++;
  if (buildCounterImportDataFile < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.format!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUploadFileInfo(o.uploadFileInfo!);
  }
  buildCounterImportDataFile--;
}

core.int buildCounterImportError = 0;
api.ImportError buildImportError() {
  final o = api.ImportError();
  buildCounterImportError++;
  if (buildCounterImportError < 3) {
    o.errorDetails = 'foo';
    o.severity = 'foo';
  }
  buildCounterImportError--;
  return o;
}

void checkImportError(api.ImportError o) {
  buildCounterImportError++;
  if (buildCounterImportError < 3) {
    unittest.expect(o.errorDetails!, unittest.equals('foo'));
    unittest.expect(o.severity!, unittest.equals('foo'));
  }
  buildCounterImportError--;
}

core.Map<core.String, core.String> buildUnnamed43() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed43(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterImportJob = 0;
api.ImportJob buildImportJob() {
  final o = api.ImportJob();
  buildCounterImportJob++;
  if (buildCounterImportJob < 3) {
    o.assetSource = 'foo';
    o.completeTime = 'foo';
    o.createTime = 'foo';
    o.displayName = 'foo';
    o.executionReport = buildExecutionReport();
    o.gcsPayload = buildGCSPayloadInfo();
    o.inlinePayload = buildInlinePayloadInfo();
    o.labels = buildUnnamed43();
    o.name = 'foo';
    o.state = 'foo';
    o.updateTime = 'foo';
    o.validationReport = buildValidationReport();
  }
  buildCounterImportJob--;
  return o;
}

void checkImportJob(api.ImportJob o) {
  buildCounterImportJob++;
  if (buildCounterImportJob < 3) {
    unittest.expect(o.assetSource!, unittest.equals('foo'));
    unittest.expect(o.completeTime!, unittest.equals('foo'));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkExecutionReport(o.executionReport!);
    checkGCSPayloadInfo(o.gcsPayload!);
    checkInlinePayloadInfo(o.inlinePayload!);
    checkUnnamed43(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkValidationReport(o.validationReport!);
  }
  buildCounterImportJob--;
}

core.List<api.ImportError> buildUnnamed44() => [
  buildImportError(),
  buildImportError(),
];

void checkUnnamed44(core.List<api.ImportError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImportError(o[0]);
  checkImportError(o[1]);
}

core.int buildCounterImportRowError = 0;
api.ImportRowError buildImportRowError() {
  final o = api.ImportRowError();
  buildCounterImportRowError++;
  if (buildCounterImportRowError < 3) {
    o.archiveError = buildImportRowErrorArchiveErrorDetails();
    o.assetTitle = 'foo';
    o.csvError = buildImportRowErrorCsvErrorDetails();
    o.errors = buildUnnamed44();
    o.rowNumber = 42;
    o.vmName = 'foo';
    o.vmUuid = 'foo';
    o.xlsxError = buildImportRowErrorXlsxErrorDetails();
  }
  buildCounterImportRowError--;
  return o;
}

void checkImportRowError(api.ImportRowError o) {
  buildCounterImportRowError++;
  if (buildCounterImportRowError < 3) {
    checkImportRowErrorArchiveErrorDetails(o.archiveError!);
    unittest.expect(o.assetTitle!, unittest.equals('foo'));
    checkImportRowErrorCsvErrorDetails(o.csvError!);
    checkUnnamed44(o.errors!);
    unittest.expect(o.rowNumber!, unittest.equals(42));
    unittest.expect(o.vmName!, unittest.equals('foo'));
    unittest.expect(o.vmUuid!, unittest.equals('foo'));
    checkImportRowErrorXlsxErrorDetails(o.xlsxError!);
  }
  buildCounterImportRowError--;
}

core.int buildCounterImportRowErrorArchiveErrorDetails = 0;
api.ImportRowErrorArchiveErrorDetails buildImportRowErrorArchiveErrorDetails() {
  final o = api.ImportRowErrorArchiveErrorDetails();
  buildCounterImportRowErrorArchiveErrorDetails++;
  if (buildCounterImportRowErrorArchiveErrorDetails < 3) {
    o.csvError = buildImportRowErrorCsvErrorDetails();
    o.filePath = 'foo';
  }
  buildCounterImportRowErrorArchiveErrorDetails--;
  return o;
}

void checkImportRowErrorArchiveErrorDetails(
  api.ImportRowErrorArchiveErrorDetails o,
) {
  buildCounterImportRowErrorArchiveErrorDetails++;
  if (buildCounterImportRowErrorArchiveErrorDetails < 3) {
    checkImportRowErrorCsvErrorDetails(o.csvError!);
    unittest.expect(o.filePath!, unittest.equals('foo'));
  }
  buildCounterImportRowErrorArchiveErrorDetails--;
}

core.int buildCounterImportRowErrorCsvErrorDetails = 0;
api.ImportRowErrorCsvErrorDetails buildImportRowErrorCsvErrorDetails() {
  final o = api.ImportRowErrorCsvErrorDetails();
  buildCounterImportRowErrorCsvErrorDetails++;
  if (buildCounterImportRowErrorCsvErrorDetails < 3) {
    o.rowNumber = 42;
  }
  buildCounterImportRowErrorCsvErrorDetails--;
  return o;
}

void checkImportRowErrorCsvErrorDetails(api.ImportRowErrorCsvErrorDetails o) {
  buildCounterImportRowErrorCsvErrorDetails++;
  if (buildCounterImportRowErrorCsvErrorDetails < 3) {
    unittest.expect(o.rowNumber!, unittest.equals(42));
  }
  buildCounterImportRowErrorCsvErrorDetails--;
}

core.int buildCounterImportRowErrorXlsxErrorDetails = 0;
api.ImportRowErrorXlsxErrorDetails buildImportRowErrorXlsxErrorDetails() {
  final o = api.ImportRowErrorXlsxErrorDetails();
  buildCounterImportRowErrorXlsxErrorDetails++;
  if (buildCounterImportRowErrorXlsxErrorDetails < 3) {
    o.rowNumber = 42;
    o.sheet = 'foo';
  }
  buildCounterImportRowErrorXlsxErrorDetails--;
  return o;
}

void checkImportRowErrorXlsxErrorDetails(api.ImportRowErrorXlsxErrorDetails o) {
  buildCounterImportRowErrorXlsxErrorDetails++;
  if (buildCounterImportRowErrorXlsxErrorDetails < 3) {
    unittest.expect(o.rowNumber!, unittest.equals(42));
    unittest.expect(o.sheet!, unittest.equals('foo'));
  }
  buildCounterImportRowErrorXlsxErrorDetails--;
}

core.List<api.PayloadFile> buildUnnamed45() => [
  buildPayloadFile(),
  buildPayloadFile(),
];

void checkUnnamed45(core.List<api.PayloadFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPayloadFile(o[0]);
  checkPayloadFile(o[1]);
}

core.int buildCounterInlinePayloadInfo = 0;
api.InlinePayloadInfo buildInlinePayloadInfo() {
  final o = api.InlinePayloadInfo();
  buildCounterInlinePayloadInfo++;
  if (buildCounterInlinePayloadInfo < 3) {
    o.format = 'foo';
    o.payload = buildUnnamed45();
  }
  buildCounterInlinePayloadInfo--;
  return o;
}

void checkInlinePayloadInfo(api.InlinePayloadInfo o) {
  buildCounterInlinePayloadInfo++;
  if (buildCounterInlinePayloadInfo < 3) {
    unittest.expect(o.format!, unittest.equals('foo'));
    checkUnnamed45(o.payload!);
  }
  buildCounterInlinePayloadInfo--;
}

core.int buildCounterInsight = 0;
api.Insight buildInsight() {
  final o = api.Insight();
  buildCounterInsight++;
  if (buildCounterInsight < 3) {
    o.genericInsight = buildGenericInsight();
    o.migrationInsight = buildMigrationInsight();
    o.softwareInsight = buildSoftwareInsight();
  }
  buildCounterInsight--;
  return o;
}

void checkInsight(api.Insight o) {
  buildCounterInsight++;
  if (buildCounterInsight < 3) {
    checkGenericInsight(o.genericInsight!);
    checkMigrationInsight(o.migrationInsight!);
    checkSoftwareInsight(o.softwareInsight!);
  }
  buildCounterInsight--;
}

core.List<api.Insight> buildUnnamed46() => [buildInsight(), buildInsight()];

void checkUnnamed46(core.List<api.Insight> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInsight(o[0]);
  checkInsight(o[1]);
}

core.int buildCounterInsightList = 0;
api.InsightList buildInsightList() {
  final o = api.InsightList();
  buildCounterInsightList++;
  if (buildCounterInsightList < 3) {
    o.insights = buildUnnamed46();
    o.updateTime = 'foo';
  }
  buildCounterInsightList--;
  return o;
}

void checkInsightList(api.InsightList o) {
  buildCounterInsightList++;
  if (buildCounterInsightList < 3) {
    checkUnnamed46(o.insights!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterInsightList--;
}

core.int buildCounterIssue = 0;
api.Issue buildIssue() {
  final o = api.Issue();
  buildCounterIssue++;
  if (buildCounterIssue < 3) {
    o.compatibilityIssue = buildIssueCompatibilityIssue();
    o.description = 'foo';
    o.issueCode = 'foo';
  }
  buildCounterIssue--;
  return o;
}

void checkIssue(api.Issue o) {
  buildCounterIssue++;
  if (buildCounterIssue < 3) {
    checkIssueCompatibilityIssue(o.compatibilityIssue!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.issueCode!, unittest.equals('foo'));
  }
  buildCounterIssue--;
}

core.int buildCounterIssueCompatibilityIssue = 0;
api.IssueCompatibilityIssue buildIssueCompatibilityIssue() {
  final o = api.IssueCompatibilityIssue();
  buildCounterIssueCompatibilityIssue++;
  if (buildCounterIssueCompatibilityIssue < 3) {
    o.associatedObject = 'foo';
    o.associatedObjectType = 'foo';
    o.associatedValue = 'foo';
    o.category = 'foo';
  }
  buildCounterIssueCompatibilityIssue--;
  return o;
}

void checkIssueCompatibilityIssue(api.IssueCompatibilityIssue o) {
  buildCounterIssueCompatibilityIssue++;
  if (buildCounterIssueCompatibilityIssue < 3) {
    unittest.expect(o.associatedObject!, unittest.equals('foo'));
    unittest.expect(o.associatedObjectType!, unittest.equals('foo'));
    unittest.expect(o.associatedValue!, unittest.equals('foo'));
    unittest.expect(o.category!, unittest.equals('foo'));
  }
  buildCounterIssueCompatibilityIssue--;
}

core.List<api.AssetsExportJob> buildUnnamed47() => [
  buildAssetsExportJob(),
  buildAssetsExportJob(),
];

void checkUnnamed47(core.List<api.AssetsExportJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssetsExportJob(o[0]);
  checkAssetsExportJob(o[1]);
}

core.int buildCounterListAssetsExportJobsResponse = 0;
api.ListAssetsExportJobsResponse buildListAssetsExportJobsResponse() {
  final o = api.ListAssetsExportJobsResponse();
  buildCounterListAssetsExportJobsResponse++;
  if (buildCounterListAssetsExportJobsResponse < 3) {
    o.assetsExportJobs = buildUnnamed47();
    o.nextPageToken = 'foo';
  }
  buildCounterListAssetsExportJobsResponse--;
  return o;
}

void checkListAssetsExportJobsResponse(api.ListAssetsExportJobsResponse o) {
  buildCounterListAssetsExportJobsResponse++;
  if (buildCounterListAssetsExportJobsResponse < 3) {
    checkUnnamed47(o.assetsExportJobs!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListAssetsExportJobsResponse--;
}

core.List<api.Asset> buildUnnamed48() => [buildAsset(), buildAsset()];

void checkUnnamed48(core.List<api.Asset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAsset(o[0]);
  checkAsset(o[1]);
}

core.List<core.String> buildUnnamed49() => ['foo', 'foo'];

void checkUnnamed49(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListAssetsResponse = 0;
api.ListAssetsResponse buildListAssetsResponse() {
  final o = api.ListAssetsResponse();
  buildCounterListAssetsResponse++;
  if (buildCounterListAssetsResponse < 3) {
    o.assets = buildUnnamed48();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed49();
  }
  buildCounterListAssetsResponse--;
  return o;
}

void checkListAssetsResponse(api.ListAssetsResponse o) {
  buildCounterListAssetsResponse++;
  if (buildCounterListAssetsResponse < 3) {
    checkUnnamed48(o.assets!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed49(o.unreachable!);
  }
  buildCounterListAssetsResponse--;
}

core.List<api.DiscoveryClient> buildUnnamed50() => [
  buildDiscoveryClient(),
  buildDiscoveryClient(),
];

void checkUnnamed50(core.List<api.DiscoveryClient> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDiscoveryClient(o[0]);
  checkDiscoveryClient(o[1]);
}

core.List<core.String> buildUnnamed51() => ['foo', 'foo'];

void checkUnnamed51(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListDiscoveryClientsResponse = 0;
api.ListDiscoveryClientsResponse buildListDiscoveryClientsResponse() {
  final o = api.ListDiscoveryClientsResponse();
  buildCounterListDiscoveryClientsResponse++;
  if (buildCounterListDiscoveryClientsResponse < 3) {
    o.discoveryClients = buildUnnamed50();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed51();
  }
  buildCounterListDiscoveryClientsResponse--;
  return o;
}

void checkListDiscoveryClientsResponse(api.ListDiscoveryClientsResponse o) {
  buildCounterListDiscoveryClientsResponse++;
  if (buildCounterListDiscoveryClientsResponse < 3) {
    checkUnnamed50(o.discoveryClients!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed51(o.unreachable!);
  }
  buildCounterListDiscoveryClientsResponse--;
}

core.List<api.ErrorFrame> buildUnnamed52() => [
  buildErrorFrame(),
  buildErrorFrame(),
];

void checkUnnamed52(core.List<api.ErrorFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorFrame(o[0]);
  checkErrorFrame(o[1]);
}

core.List<core.String> buildUnnamed53() => ['foo', 'foo'];

void checkUnnamed53(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListErrorFramesResponse = 0;
api.ListErrorFramesResponse buildListErrorFramesResponse() {
  final o = api.ListErrorFramesResponse();
  buildCounterListErrorFramesResponse++;
  if (buildCounterListErrorFramesResponse < 3) {
    o.errorFrames = buildUnnamed52();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed53();
  }
  buildCounterListErrorFramesResponse--;
  return o;
}

void checkListErrorFramesResponse(api.ListErrorFramesResponse o) {
  buildCounterListErrorFramesResponse++;
  if (buildCounterListErrorFramesResponse < 3) {
    checkUnnamed52(o.errorFrames!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed53(o.unreachable!);
  }
  buildCounterListErrorFramesResponse--;
}

core.List<api.Group> buildUnnamed54() => [buildGroup(), buildGroup()];

void checkUnnamed54(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0]);
  checkGroup(o[1]);
}

core.List<core.String> buildUnnamed55() => ['foo', 'foo'];

void checkUnnamed55(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListGroupsResponse = 0;
api.ListGroupsResponse buildListGroupsResponse() {
  final o = api.ListGroupsResponse();
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    o.groups = buildUnnamed54();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed55();
  }
  buildCounterListGroupsResponse--;
  return o;
}

void checkListGroupsResponse(api.ListGroupsResponse o) {
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    checkUnnamed54(o.groups!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed55(o.unreachable!);
  }
  buildCounterListGroupsResponse--;
}

core.List<api.ImportDataFile> buildUnnamed56() => [
  buildImportDataFile(),
  buildImportDataFile(),
];

void checkUnnamed56(core.List<api.ImportDataFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImportDataFile(o[0]);
  checkImportDataFile(o[1]);
}

core.List<core.String> buildUnnamed57() => ['foo', 'foo'];

void checkUnnamed57(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListImportDataFilesResponse = 0;
api.ListImportDataFilesResponse buildListImportDataFilesResponse() {
  final o = api.ListImportDataFilesResponse();
  buildCounterListImportDataFilesResponse++;
  if (buildCounterListImportDataFilesResponse < 3) {
    o.importDataFiles = buildUnnamed56();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed57();
  }
  buildCounterListImportDataFilesResponse--;
  return o;
}

void checkListImportDataFilesResponse(api.ListImportDataFilesResponse o) {
  buildCounterListImportDataFilesResponse++;
  if (buildCounterListImportDataFilesResponse < 3) {
    checkUnnamed56(o.importDataFiles!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed57(o.unreachable!);
  }
  buildCounterListImportDataFilesResponse--;
}

core.List<api.ImportJob> buildUnnamed58() => [
  buildImportJob(),
  buildImportJob(),
];

void checkUnnamed58(core.List<api.ImportJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImportJob(o[0]);
  checkImportJob(o[1]);
}

core.List<core.String> buildUnnamed59() => ['foo', 'foo'];

void checkUnnamed59(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListImportJobsResponse = 0;
api.ListImportJobsResponse buildListImportJobsResponse() {
  final o = api.ListImportJobsResponse();
  buildCounterListImportJobsResponse++;
  if (buildCounterListImportJobsResponse < 3) {
    o.importJobs = buildUnnamed58();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed59();
  }
  buildCounterListImportJobsResponse--;
  return o;
}

void checkListImportJobsResponse(api.ListImportJobsResponse o) {
  buildCounterListImportJobsResponse++;
  if (buildCounterListImportJobsResponse < 3) {
    checkUnnamed58(o.importJobs!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed59(o.unreachable!);
  }
  buildCounterListImportJobsResponse--;
}

core.List<api.Location> buildUnnamed60() => [buildLocation(), buildLocation()];

void checkUnnamed60(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed60();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed60(o.locations!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed61() => [
  buildOperation(),
  buildOperation(),
];

void checkUnnamed61(core.List<api.Operation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOperation(o[0]);
  checkOperation(o[1]);
}

core.int buildCounterListOperationsResponse = 0;
api.ListOperationsResponse buildListOperationsResponse() {
  final o = api.ListOperationsResponse();
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.operations = buildUnnamed61();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed61(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.PreferenceSet> buildUnnamed62() => [
  buildPreferenceSet(),
  buildPreferenceSet(),
];

void checkUnnamed62(core.List<api.PreferenceSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPreferenceSet(o[0]);
  checkPreferenceSet(o[1]);
}

core.List<core.String> buildUnnamed63() => ['foo', 'foo'];

void checkUnnamed63(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListPreferenceSetsResponse = 0;
api.ListPreferenceSetsResponse buildListPreferenceSetsResponse() {
  final o = api.ListPreferenceSetsResponse();
  buildCounterListPreferenceSetsResponse++;
  if (buildCounterListPreferenceSetsResponse < 3) {
    o.nextPageToken = 'foo';
    o.preferenceSets = buildUnnamed62();
    o.unreachable = buildUnnamed63();
  }
  buildCounterListPreferenceSetsResponse--;
  return o;
}

void checkListPreferenceSetsResponse(api.ListPreferenceSetsResponse o) {
  buildCounterListPreferenceSetsResponse++;
  if (buildCounterListPreferenceSetsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed62(o.preferenceSets!);
    checkUnnamed63(o.unreachable!);
  }
  buildCounterListPreferenceSetsResponse--;
}

core.List<api.Relation> buildUnnamed64() => [buildRelation(), buildRelation()];

void checkUnnamed64(core.List<api.Relation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRelation(o[0]);
  checkRelation(o[1]);
}

core.int buildCounterListRelationsResponse = 0;
api.ListRelationsResponse buildListRelationsResponse() {
  final o = api.ListRelationsResponse();
  buildCounterListRelationsResponse++;
  if (buildCounterListRelationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.relations = buildUnnamed64();
  }
  buildCounterListRelationsResponse--;
  return o;
}

void checkListRelationsResponse(api.ListRelationsResponse o) {
  buildCounterListRelationsResponse++;
  if (buildCounterListRelationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed64(o.relations!);
  }
  buildCounterListRelationsResponse--;
}

core.List<api.ReportConfig> buildUnnamed65() => [
  buildReportConfig(),
  buildReportConfig(),
];

void checkUnnamed65(core.List<api.ReportConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportConfig(o[0]);
  checkReportConfig(o[1]);
}

core.List<core.String> buildUnnamed66() => ['foo', 'foo'];

void checkUnnamed66(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListReportConfigsResponse = 0;
api.ListReportConfigsResponse buildListReportConfigsResponse() {
  final o = api.ListReportConfigsResponse();
  buildCounterListReportConfigsResponse++;
  if (buildCounterListReportConfigsResponse < 3) {
    o.nextPageToken = 'foo';
    o.reportConfigs = buildUnnamed65();
    o.unreachable = buildUnnamed66();
  }
  buildCounterListReportConfigsResponse--;
  return o;
}

void checkListReportConfigsResponse(api.ListReportConfigsResponse o) {
  buildCounterListReportConfigsResponse++;
  if (buildCounterListReportConfigsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed65(o.reportConfigs!);
    checkUnnamed66(o.unreachable!);
  }
  buildCounterListReportConfigsResponse--;
}

core.List<api.Report> buildUnnamed67() => [buildReport(), buildReport()];

void checkUnnamed67(core.List<api.Report> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReport(o[0]);
  checkReport(o[1]);
}

core.List<core.String> buildUnnamed68() => ['foo', 'foo'];

void checkUnnamed68(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListReportsResponse = 0;
api.ListReportsResponse buildListReportsResponse() {
  final o = api.ListReportsResponse();
  buildCounterListReportsResponse++;
  if (buildCounterListReportsResponse < 3) {
    o.nextPageToken = 'foo';
    o.reports = buildUnnamed67();
    o.unreachable = buildUnnamed68();
  }
  buildCounterListReportsResponse--;
  return o;
}

void checkListReportsResponse(api.ListReportsResponse o) {
  buildCounterListReportsResponse++;
  if (buildCounterListReportsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed67(o.reports!);
    checkUnnamed68(o.unreachable!);
  }
  buildCounterListReportsResponse--;
}

core.List<api.Source> buildUnnamed69() => [buildSource(), buildSource()];

void checkUnnamed69(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0]);
  checkSource(o[1]);
}

core.List<core.String> buildUnnamed70() => ['foo', 'foo'];

void checkUnnamed70(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListSourcesResponse = 0;
api.ListSourcesResponse buildListSourcesResponse() {
  final o = api.ListSourcesResponse();
  buildCounterListSourcesResponse++;
  if (buildCounterListSourcesResponse < 3) {
    o.nextPageToken = 'foo';
    o.sources = buildUnnamed69();
    o.unreachable = buildUnnamed70();
  }
  buildCounterListSourcesResponse--;
  return o;
}

void checkListSourcesResponse(api.ListSourcesResponse o) {
  buildCounterListSourcesResponse++;
  if (buildCounterListSourcesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed69(o.sources!);
    checkUnnamed70(o.unreachable!);
  }
  buildCounterListSourcesResponse--;
}

core.Map<core.String, core.String> buildUnnamed71() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed71(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.Object?> buildUnnamed72() => {
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

void checkUnnamed72(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed71();
    o.locationId = 'foo';
    o.metadata = buildUnnamed72();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed71(o.labels!);
    unittest.expect(o.locationId!, unittest.equals('foo'));
    checkUnnamed72(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterLocation--;
}

core.int buildCounterMachineArchitectureDetails = 0;
api.MachineArchitectureDetails buildMachineArchitectureDetails() {
  final o = api.MachineArchitectureDetails();
  buildCounterMachineArchitectureDetails++;
  if (buildCounterMachineArchitectureDetails < 3) {
    o.bios = buildBiosDetails();
    o.cpuArchitecture = 'foo';
    o.cpuManufacturer = 'foo';
    o.cpuName = 'foo';
    o.cpuSocketCount = 42;
    o.firmwareType = 'foo';
    o.hyperthreading = 'foo';
    o.vendor = 'foo';
  }
  buildCounterMachineArchitectureDetails--;
  return o;
}

void checkMachineArchitectureDetails(api.MachineArchitectureDetails o) {
  buildCounterMachineArchitectureDetails++;
  if (buildCounterMachineArchitectureDetails < 3) {
    checkBiosDetails(o.bios!);
    unittest.expect(o.cpuArchitecture!, unittest.equals('foo'));
    unittest.expect(o.cpuManufacturer!, unittest.equals('foo'));
    unittest.expect(o.cpuName!, unittest.equals('foo'));
    unittest.expect(o.cpuSocketCount!, unittest.equals(42));
    unittest.expect(o.firmwareType!, unittest.equals('foo'));
    unittest.expect(o.hyperthreading!, unittest.equals('foo'));
    unittest.expect(o.vendor!, unittest.equals('foo'));
  }
  buildCounterMachineArchitectureDetails--;
}

core.int buildCounterMachineDetails = 0;
api.MachineDetails buildMachineDetails() {
  final o = api.MachineDetails();
  buildCounterMachineDetails++;
  if (buildCounterMachineDetails < 3) {
    o.architecture = buildMachineArchitectureDetails();
    o.coreCount = 42;
    o.createTime = 'foo';
    o.diskPartitions = buildDiskPartitionDetails();
    o.disks = buildMachineDiskDetails();
    o.guestOs = buildGuestOsDetails();
    o.machineName = 'foo';
    o.memoryMb = 42;
    o.network = buildMachineNetworkDetails();
    o.platform = buildPlatformDetails();
    o.powerState = 'foo';
    o.uuid = 'foo';
  }
  buildCounterMachineDetails--;
  return o;
}

void checkMachineDetails(api.MachineDetails o) {
  buildCounterMachineDetails++;
  if (buildCounterMachineDetails < 3) {
    checkMachineArchitectureDetails(o.architecture!);
    unittest.expect(o.coreCount!, unittest.equals(42));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkDiskPartitionDetails(o.diskPartitions!);
    checkMachineDiskDetails(o.disks!);
    checkGuestOsDetails(o.guestOs!);
    unittest.expect(o.machineName!, unittest.equals('foo'));
    unittest.expect(o.memoryMb!, unittest.equals(42));
    checkMachineNetworkDetails(o.network!);
    checkPlatformDetails(o.platform!);
    unittest.expect(o.powerState!, unittest.equals('foo'));
    unittest.expect(o.uuid!, unittest.equals('foo'));
  }
  buildCounterMachineDetails--;
}

core.int buildCounterMachineDiskDetails = 0;
api.MachineDiskDetails buildMachineDiskDetails() {
  final o = api.MachineDiskDetails();
  buildCounterMachineDiskDetails++;
  if (buildCounterMachineDiskDetails < 3) {
    o.disks = buildDiskEntryList();
    o.rawScanResult = 'foo';
    o.totalCapacityBytes = 'foo';
    o.totalFreeBytes = 'foo';
  }
  buildCounterMachineDiskDetails--;
  return o;
}

void checkMachineDiskDetails(api.MachineDiskDetails o) {
  buildCounterMachineDiskDetails++;
  if (buildCounterMachineDiskDetails < 3) {
    checkDiskEntryList(o.disks!);
    unittest.expect(o.rawScanResult!, unittest.equals('foo'));
    unittest.expect(o.totalCapacityBytes!, unittest.equals('foo'));
    unittest.expect(o.totalFreeBytes!, unittest.equals('foo'));
  }
  buildCounterMachineDiskDetails--;
}

core.int buildCounterMachineNetworkDetails = 0;
api.MachineNetworkDetails buildMachineNetworkDetails() {
  final o = api.MachineNetworkDetails();
  buildCounterMachineNetworkDetails++;
  if (buildCounterMachineNetworkDetails < 3) {
    o.defaultGateway = 'foo';
    o.networkAdapters = buildNetworkAdapterList();
    o.primaryIpAddress = 'foo';
    o.primaryMacAddress = 'foo';
    o.publicIpAddress = 'foo';
  }
  buildCounterMachineNetworkDetails--;
  return o;
}

void checkMachineNetworkDetails(api.MachineNetworkDetails o) {
  buildCounterMachineNetworkDetails++;
  if (buildCounterMachineNetworkDetails < 3) {
    unittest.expect(o.defaultGateway!, unittest.equals('foo'));
    checkNetworkAdapterList(o.networkAdapters!);
    unittest.expect(o.primaryIpAddress!, unittest.equals('foo'));
    unittest.expect(o.primaryMacAddress!, unittest.equals('foo'));
    unittest.expect(o.publicIpAddress!, unittest.equals('foo'));
  }
  buildCounterMachineNetworkDetails--;
}

core.List<api.MachineSeries> buildUnnamed73() => [
  buildMachineSeries(),
  buildMachineSeries(),
];

void checkUnnamed73(core.List<api.MachineSeries> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMachineSeries(o[0]);
  checkMachineSeries(o[1]);
}

core.int buildCounterMachinePreferences = 0;
api.MachinePreferences buildMachinePreferences() {
  final o = api.MachinePreferences();
  buildCounterMachinePreferences++;
  if (buildCounterMachinePreferences < 3) {
    o.allowedMachineSeries = buildUnnamed73();
  }
  buildCounterMachinePreferences--;
  return o;
}

void checkMachinePreferences(api.MachinePreferences o) {
  buildCounterMachinePreferences++;
  if (buildCounterMachinePreferences < 3) {
    checkUnnamed73(o.allowedMachineSeries!);
  }
  buildCounterMachinePreferences--;
}

core.int buildCounterMachineSeries = 0;
api.MachineSeries buildMachineSeries() {
  final o = api.MachineSeries();
  buildCounterMachineSeries++;
  if (buildCounterMachineSeries < 3) {
    o.code = 'foo';
  }
  buildCounterMachineSeries--;
  return o;
}

void checkMachineSeries(api.MachineSeries o) {
  buildCounterMachineSeries++;
  if (buildCounterMachineSeries < 3) {
    unittest.expect(o.code!, unittest.equals('foo'));
  }
  buildCounterMachineSeries--;
}

core.int buildCounterMemoryUsageSample = 0;
api.MemoryUsageSample buildMemoryUsageSample() {
  final o = api.MemoryUsageSample();
  buildCounterMemoryUsageSample++;
  if (buildCounterMemoryUsageSample < 3) {
    o.utilizedPercentage = 42.0;
  }
  buildCounterMemoryUsageSample--;
  return o;
}

void checkMemoryUsageSample(api.MemoryUsageSample o) {
  buildCounterMemoryUsageSample++;
  if (buildCounterMemoryUsageSample < 3) {
    unittest.expect(o.utilizedPercentage!, unittest.equals(42.0));
  }
  buildCounterMemoryUsageSample--;
}

core.List<api.Issue> buildUnnamed74() => [buildIssue(), buildIssue()];

void checkUnnamed74(core.List<api.Issue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkIssue(o[0]);
  checkIssue(o[1]);
}

core.int buildCounterMigrationInsight = 0;
api.MigrationInsight buildMigrationInsight() {
  final o = api.MigrationInsight();
  buildCounterMigrationInsight++;
  if (buildCounterMigrationInsight < 3) {
    o.cloudDatabaseTarget = buildCloudDatabaseMigrationTarget();
    o.computeEngineSoleTenantTarget =
        buildComputeEngineSoleTenantMigrationTarget();
    o.computeEngineTarget = buildComputeEngineMigrationTarget();
    o.fit = buildFitDescriptor();
    o.gkeTarget = buildGoogleKubernetesEngineMigrationTarget();
    o.issues = buildUnnamed74();
    o.vmwareEngineTarget = buildVmwareEngineMigrationTarget();
  }
  buildCounterMigrationInsight--;
  return o;
}

void checkMigrationInsight(api.MigrationInsight o) {
  buildCounterMigrationInsight++;
  if (buildCounterMigrationInsight < 3) {
    checkCloudDatabaseMigrationTarget(o.cloudDatabaseTarget!);
    checkComputeEngineSoleTenantMigrationTarget(
      o.computeEngineSoleTenantTarget!,
    );
    checkComputeEngineMigrationTarget(o.computeEngineTarget!);
    checkFitDescriptor(o.fit!);
    checkGoogleKubernetesEngineMigrationTarget(o.gkeTarget!);
    checkUnnamed74(o.issues!);
    checkVmwareEngineMigrationTarget(o.vmwareEngineTarget!);
  }
  buildCounterMigrationInsight--;
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

core.int buildCounterMySqlPlugin = 0;
api.MySqlPlugin buildMySqlPlugin() {
  final o = api.MySqlPlugin();
  buildCounterMySqlPlugin++;
  if (buildCounterMySqlPlugin < 3) {
    o.enabled = true;
    o.plugin = 'foo';
    o.version = 'foo';
  }
  buildCounterMySqlPlugin--;
  return o;
}

void checkMySqlPlugin(api.MySqlPlugin o) {
  buildCounterMySqlPlugin++;
  if (buildCounterMySqlPlugin < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(o.plugin!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterMySqlPlugin--;
}

core.int buildCounterMySqlProperty = 0;
api.MySqlProperty buildMySqlProperty() {
  final o = api.MySqlProperty();
  buildCounterMySqlProperty++;
  if (buildCounterMySqlProperty < 3) {
    o.enabled = true;
    o.numericValue = 'foo';
    o.property = 'foo';
  }
  buildCounterMySqlProperty--;
  return o;
}

void checkMySqlProperty(api.MySqlProperty o) {
  buildCounterMySqlProperty++;
  if (buildCounterMySqlProperty < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(o.numericValue!, unittest.equals('foo'));
    unittest.expect(o.property!, unittest.equals('foo'));
  }
  buildCounterMySqlProperty--;
}

core.List<api.MySqlStorageEngineDetails> buildUnnamed75() => [
  buildMySqlStorageEngineDetails(),
  buildMySqlStorageEngineDetails(),
];

void checkUnnamed75(core.List<api.MySqlStorageEngineDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMySqlStorageEngineDetails(o[0]);
  checkMySqlStorageEngineDetails(o[1]);
}

core.int buildCounterMySqlSchemaDetails = 0;
api.MySqlSchemaDetails buildMySqlSchemaDetails() {
  final o = api.MySqlSchemaDetails();
  buildCounterMySqlSchemaDetails++;
  if (buildCounterMySqlSchemaDetails < 3) {
    o.storageEngines = buildUnnamed75();
  }
  buildCounterMySqlSchemaDetails--;
  return o;
}

void checkMySqlSchemaDetails(api.MySqlSchemaDetails o) {
  buildCounterMySqlSchemaDetails++;
  if (buildCounterMySqlSchemaDetails < 3) {
    checkUnnamed75(o.storageEngines!);
  }
  buildCounterMySqlSchemaDetails--;
}

core.int buildCounterMySqlStorageEngineDetails = 0;
api.MySqlStorageEngineDetails buildMySqlStorageEngineDetails() {
  final o = api.MySqlStorageEngineDetails();
  buildCounterMySqlStorageEngineDetails++;
  if (buildCounterMySqlStorageEngineDetails < 3) {
    o.encryptedTableCount = 42;
    o.engine = 'foo';
    o.tableCount = 42;
  }
  buildCounterMySqlStorageEngineDetails--;
  return o;
}

void checkMySqlStorageEngineDetails(api.MySqlStorageEngineDetails o) {
  buildCounterMySqlStorageEngineDetails++;
  if (buildCounterMySqlStorageEngineDetails < 3) {
    unittest.expect(o.encryptedTableCount!, unittest.equals(42));
    unittest.expect(o.engine!, unittest.equals('foo'));
    unittest.expect(o.tableCount!, unittest.equals(42));
  }
  buildCounterMySqlStorageEngineDetails--;
}

core.int buildCounterMySqlVariable = 0;
api.MySqlVariable buildMySqlVariable() {
  final o = api.MySqlVariable();
  buildCounterMySqlVariable++;
  if (buildCounterMySqlVariable < 3) {
    o.category = 'foo';
    o.value = 'foo';
    o.variable = 'foo';
  }
  buildCounterMySqlVariable--;
  return o;
}

void checkMySqlVariable(api.MySqlVariable o) {
  buildCounterMySqlVariable++;
  if (buildCounterMySqlVariable < 3) {
    unittest.expect(o.category!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
    unittest.expect(o.variable!, unittest.equals('foo'));
  }
  buildCounterMySqlVariable--;
}

core.List<api.MySqlPlugin> buildUnnamed76() => [
  buildMySqlPlugin(),
  buildMySqlPlugin(),
];

void checkUnnamed76(core.List<api.MySqlPlugin> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMySqlPlugin(o[0]);
  checkMySqlPlugin(o[1]);
}

core.List<api.MySqlProperty> buildUnnamed77() => [
  buildMySqlProperty(),
  buildMySqlProperty(),
];

void checkUnnamed77(core.List<api.MySqlProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMySqlProperty(o[0]);
  checkMySqlProperty(o[1]);
}

core.List<api.MySqlVariable> buildUnnamed78() => [
  buildMySqlVariable(),
  buildMySqlVariable(),
];

void checkUnnamed78(core.List<api.MySqlVariable> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMySqlVariable(o[0]);
  checkMySqlVariable(o[1]);
}

core.int buildCounterMysqlDatabaseDeployment = 0;
api.MysqlDatabaseDeployment buildMysqlDatabaseDeployment() {
  final o = api.MysqlDatabaseDeployment();
  buildCounterMysqlDatabaseDeployment++;
  if (buildCounterMysqlDatabaseDeployment < 3) {
    o.plugins = buildUnnamed76();
    o.properties = buildUnnamed77();
    o.resourceGroupsCount = 42;
    o.variables = buildUnnamed78();
  }
  buildCounterMysqlDatabaseDeployment--;
  return o;
}

void checkMysqlDatabaseDeployment(api.MysqlDatabaseDeployment o) {
  buildCounterMysqlDatabaseDeployment++;
  if (buildCounterMysqlDatabaseDeployment < 3) {
    checkUnnamed76(o.plugins!);
    checkUnnamed77(o.properties!);
    unittest.expect(o.resourceGroupsCount!, unittest.equals(42));
    checkUnnamed78(o.variables!);
  }
  buildCounterMysqlDatabaseDeployment--;
}

core.int buildCounterNetworkAdapterDetails = 0;
api.NetworkAdapterDetails buildNetworkAdapterDetails() {
  final o = api.NetworkAdapterDetails();
  buildCounterNetworkAdapterDetails++;
  if (buildCounterNetworkAdapterDetails < 3) {
    o.adapterType = 'foo';
    o.addresses = buildNetworkAddressList();
    o.macAddress = 'foo';
  }
  buildCounterNetworkAdapterDetails--;
  return o;
}

void checkNetworkAdapterDetails(api.NetworkAdapterDetails o) {
  buildCounterNetworkAdapterDetails++;
  if (buildCounterNetworkAdapterDetails < 3) {
    unittest.expect(o.adapterType!, unittest.equals('foo'));
    checkNetworkAddressList(o.addresses!);
    unittest.expect(o.macAddress!, unittest.equals('foo'));
  }
  buildCounterNetworkAdapterDetails--;
}

core.List<api.NetworkAdapterDetails> buildUnnamed79() => [
  buildNetworkAdapterDetails(),
  buildNetworkAdapterDetails(),
];

void checkUnnamed79(core.List<api.NetworkAdapterDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkAdapterDetails(o[0]);
  checkNetworkAdapterDetails(o[1]);
}

core.int buildCounterNetworkAdapterList = 0;
api.NetworkAdapterList buildNetworkAdapterList() {
  final o = api.NetworkAdapterList();
  buildCounterNetworkAdapterList++;
  if (buildCounterNetworkAdapterList < 3) {
    o.networkAdapters = buildUnnamed79();
  }
  buildCounterNetworkAdapterList--;
  return o;
}

void checkNetworkAdapterList(api.NetworkAdapterList o) {
  buildCounterNetworkAdapterList++;
  if (buildCounterNetworkAdapterList < 3) {
    checkUnnamed79(o.networkAdapters!);
  }
  buildCounterNetworkAdapterList--;
}

core.int buildCounterNetworkAddress = 0;
api.NetworkAddress buildNetworkAddress() {
  final o = api.NetworkAddress();
  buildCounterNetworkAddress++;
  if (buildCounterNetworkAddress < 3) {
    o.assignment = 'foo';
    o.bcast = 'foo';
    o.fqdn = 'foo';
    o.ipAddress = 'foo';
    o.subnetMask = 'foo';
  }
  buildCounterNetworkAddress--;
  return o;
}

void checkNetworkAddress(api.NetworkAddress o) {
  buildCounterNetworkAddress++;
  if (buildCounterNetworkAddress < 3) {
    unittest.expect(o.assignment!, unittest.equals('foo'));
    unittest.expect(o.bcast!, unittest.equals('foo'));
    unittest.expect(o.fqdn!, unittest.equals('foo'));
    unittest.expect(o.ipAddress!, unittest.equals('foo'));
    unittest.expect(o.subnetMask!, unittest.equals('foo'));
  }
  buildCounterNetworkAddress--;
}

core.List<api.NetworkAddress> buildUnnamed80() => [
  buildNetworkAddress(),
  buildNetworkAddress(),
];

void checkUnnamed80(core.List<api.NetworkAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkAddress(o[0]);
  checkNetworkAddress(o[1]);
}

core.int buildCounterNetworkAddressList = 0;
api.NetworkAddressList buildNetworkAddressList() {
  final o = api.NetworkAddressList();
  buildCounterNetworkAddressList++;
  if (buildCounterNetworkAddressList < 3) {
    o.addresses = buildUnnamed80();
  }
  buildCounterNetworkAddressList--;
  return o;
}

void checkNetworkAddressList(api.NetworkAddressList o) {
  buildCounterNetworkAddressList++;
  if (buildCounterNetworkAddressList < 3) {
    checkUnnamed80(o.addresses!);
  }
  buildCounterNetworkAddressList--;
}

core.int buildCounterNetworkConnection = 0;
api.NetworkConnection buildNetworkConnection() {
  final o = api.NetworkConnection();
  buildCounterNetworkConnection++;
  if (buildCounterNetworkConnection < 3) {
    o.localIpAddress = 'foo';
    o.localPort = 42;
    o.pid = 'foo';
    o.processName = 'foo';
    o.protocol = 'foo';
    o.remoteIpAddress = 'foo';
    o.remotePort = 42;
    o.state = 'foo';
  }
  buildCounterNetworkConnection--;
  return o;
}

void checkNetworkConnection(api.NetworkConnection o) {
  buildCounterNetworkConnection++;
  if (buildCounterNetworkConnection < 3) {
    unittest.expect(o.localIpAddress!, unittest.equals('foo'));
    unittest.expect(o.localPort!, unittest.equals(42));
    unittest.expect(o.pid!, unittest.equals('foo'));
    unittest.expect(o.processName!, unittest.equals('foo'));
    unittest.expect(o.protocol!, unittest.equals('foo'));
    unittest.expect(o.remoteIpAddress!, unittest.equals('foo'));
    unittest.expect(o.remotePort!, unittest.equals(42));
    unittest.expect(o.state!, unittest.equals('foo'));
  }
  buildCounterNetworkConnection--;
}

core.List<api.NetworkConnection> buildUnnamed81() => [
  buildNetworkConnection(),
  buildNetworkConnection(),
];

void checkUnnamed81(core.List<api.NetworkConnection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkConnection(o[0]);
  checkNetworkConnection(o[1]);
}

core.int buildCounterNetworkConnectionList = 0;
api.NetworkConnectionList buildNetworkConnectionList() {
  final o = api.NetworkConnectionList();
  buildCounterNetworkConnectionList++;
  if (buildCounterNetworkConnectionList < 3) {
    o.entries = buildUnnamed81();
  }
  buildCounterNetworkConnectionList--;
  return o;
}

void checkNetworkConnectionList(api.NetworkConnectionList o) {
  buildCounterNetworkConnectionList++;
  if (buildCounterNetworkConnectionList < 3) {
    checkUnnamed81(o.entries!);
  }
  buildCounterNetworkConnectionList--;
}

core.int buildCounterNetworkUsageSample = 0;
api.NetworkUsageSample buildNetworkUsageSample() {
  final o = api.NetworkUsageSample();
  buildCounterNetworkUsageSample++;
  if (buildCounterNetworkUsageSample < 3) {
    o.averageEgressBps = 42.0;
    o.averageIngressBps = 42.0;
  }
  buildCounterNetworkUsageSample--;
  return o;
}

void checkNetworkUsageSample(api.NetworkUsageSample o) {
  buildCounterNetworkUsageSample++;
  if (buildCounterNetworkUsageSample < 3) {
    unittest.expect(o.averageEgressBps!, unittest.equals(42.0));
    unittest.expect(o.averageIngressBps!, unittest.equals(42.0));
  }
  buildCounterNetworkUsageSample--;
}

core.List<core.String> buildUnnamed82() => ['foo', 'foo'];

void checkUnnamed82(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterNfsExport = 0;
api.NfsExport buildNfsExport() {
  final o = api.NfsExport();
  buildCounterNfsExport++;
  if (buildCounterNfsExport < 3) {
    o.exportDirectory = 'foo';
    o.hosts = buildUnnamed82();
  }
  buildCounterNfsExport--;
  return o;
}

void checkNfsExport(api.NfsExport o) {
  buildCounterNfsExport++;
  if (buildCounterNfsExport < 3) {
    unittest.expect(o.exportDirectory!, unittest.equals('foo'));
    checkUnnamed82(o.hosts!);
  }
  buildCounterNfsExport--;
}

core.List<api.NfsExport> buildUnnamed83() => [
  buildNfsExport(),
  buildNfsExport(),
];

void checkUnnamed83(core.List<api.NfsExport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNfsExport(o[0]);
  checkNfsExport(o[1]);
}

core.int buildCounterNfsExportList = 0;
api.NfsExportList buildNfsExportList() {
  final o = api.NfsExportList();
  buildCounterNfsExportList++;
  if (buildCounterNfsExportList < 3) {
    o.entries = buildUnnamed83();
  }
  buildCounterNfsExportList--;
  return o;
}

void checkNfsExportList(api.NfsExportList o) {
  buildCounterNfsExportList++;
  if (buildCounterNfsExportList < 3) {
    checkUnnamed83(o.entries!);
  }
  buildCounterNfsExportList--;
}

core.int buildCounterOpenFileDetails = 0;
api.OpenFileDetails buildOpenFileDetails() {
  final o = api.OpenFileDetails();
  buildCounterOpenFileDetails++;
  if (buildCounterOpenFileDetails < 3) {
    o.command = 'foo';
    o.filePath = 'foo';
    o.fileType = 'foo';
    o.user = 'foo';
  }
  buildCounterOpenFileDetails--;
  return o;
}

void checkOpenFileDetails(api.OpenFileDetails o) {
  buildCounterOpenFileDetails++;
  if (buildCounterOpenFileDetails < 3) {
    unittest.expect(o.command!, unittest.equals('foo'));
    unittest.expect(o.filePath!, unittest.equals('foo'));
    unittest.expect(o.fileType!, unittest.equals('foo'));
    unittest.expect(o.user!, unittest.equals('foo'));
  }
  buildCounterOpenFileDetails--;
}

core.List<api.OpenFileDetails> buildUnnamed84() => [
  buildOpenFileDetails(),
  buildOpenFileDetails(),
];

void checkUnnamed84(core.List<api.OpenFileDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOpenFileDetails(o[0]);
  checkOpenFileDetails(o[1]);
}

core.int buildCounterOpenFileList = 0;
api.OpenFileList buildOpenFileList() {
  final o = api.OpenFileList();
  buildCounterOpenFileList++;
  if (buildCounterOpenFileList < 3) {
    o.entries = buildUnnamed84();
  }
  buildCounterOpenFileList--;
  return o;
}

void checkOpenFileList(api.OpenFileList o) {
  buildCounterOpenFileList++;
  if (buildCounterOpenFileList < 3) {
    checkUnnamed84(o.entries!);
  }
  buildCounterOpenFileList--;
}

core.int buildCounterOperatingSystemPricingPreferences = 0;
api.OperatingSystemPricingPreferences buildOperatingSystemPricingPreferences() {
  final o = api.OperatingSystemPricingPreferences();
  buildCounterOperatingSystemPricingPreferences++;
  if (buildCounterOperatingSystemPricingPreferences < 3) {
    o.rhel = buildOperatingSystemPricingPreferencesOperatingSystemPricing();
    o.sles = buildOperatingSystemPricingPreferencesOperatingSystemPricing();
    o.slesForSap =
        buildOperatingSystemPricingPreferencesOperatingSystemPricing();
    o.windows = buildOperatingSystemPricingPreferencesOperatingSystemPricing();
  }
  buildCounterOperatingSystemPricingPreferences--;
  return o;
}

void checkOperatingSystemPricingPreferences(
  api.OperatingSystemPricingPreferences o,
) {
  buildCounterOperatingSystemPricingPreferences++;
  if (buildCounterOperatingSystemPricingPreferences < 3) {
    checkOperatingSystemPricingPreferencesOperatingSystemPricing(o.rhel!);
    checkOperatingSystemPricingPreferencesOperatingSystemPricing(o.sles!);
    checkOperatingSystemPricingPreferencesOperatingSystemPricing(o.slesForSap!);
    checkOperatingSystemPricingPreferencesOperatingSystemPricing(o.windows!);
  }
  buildCounterOperatingSystemPricingPreferences--;
}

core.int buildCounterOperatingSystemPricingPreferencesOperatingSystemPricing =
    0;
api.OperatingSystemPricingPreferencesOperatingSystemPricing
buildOperatingSystemPricingPreferencesOperatingSystemPricing() {
  final o = api.OperatingSystemPricingPreferencesOperatingSystemPricing();
  buildCounterOperatingSystemPricingPreferencesOperatingSystemPricing++;
  if (buildCounterOperatingSystemPricingPreferencesOperatingSystemPricing < 3) {
    o.commitmentPlan = 'foo';
    o.licenseType = 'foo';
  }
  buildCounterOperatingSystemPricingPreferencesOperatingSystemPricing--;
  return o;
}

void checkOperatingSystemPricingPreferencesOperatingSystemPricing(
  api.OperatingSystemPricingPreferencesOperatingSystemPricing o,
) {
  buildCounterOperatingSystemPricingPreferencesOperatingSystemPricing++;
  if (buildCounterOperatingSystemPricingPreferencesOperatingSystemPricing < 3) {
    unittest.expect(o.commitmentPlan!, unittest.equals('foo'));
    unittest.expect(o.licenseType!, unittest.equals('foo'));
  }
  buildCounterOperatingSystemPricingPreferencesOperatingSystemPricing--;
}

core.Map<core.String, core.Object?> buildUnnamed85() => {
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

void checkUnnamed85(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed86() => {
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

void checkUnnamed86(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed85();
    o.name = 'foo';
    o.response = buildUnnamed86();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed85(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed86(o.response!);
  }
  buildCounterOperation--;
}

core.int buildCounterOutputFile = 0;
api.OutputFile buildOutputFile() {
  final o = api.OutputFile();
  buildCounterOutputFile++;
  if (buildCounterOutputFile < 3) {
    o.csvOutputFile = buildCsvOutputFile();
    o.fileSizeBytes = 'foo';
    o.xlsxOutputFile = buildXlsxOutputFile();
  }
  buildCounterOutputFile--;
  return o;
}

void checkOutputFile(api.OutputFile o) {
  buildCounterOutputFile++;
  if (buildCounterOutputFile < 3) {
    checkCsvOutputFile(o.csvOutputFile!);
    unittest.expect(o.fileSizeBytes!, unittest.equals('foo'));
    checkXlsxOutputFile(o.xlsxOutputFile!);
  }
  buildCounterOutputFile--;
}

core.List<api.OutputFile> buildUnnamed87() => [
  buildOutputFile(),
  buildOutputFile(),
];

void checkUnnamed87(core.List<api.OutputFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOutputFile(o[0]);
  checkOutputFile(o[1]);
}

core.int buildCounterOutputFileList = 0;
api.OutputFileList buildOutputFileList() {
  final o = api.OutputFileList();
  buildCounterOutputFileList++;
  if (buildCounterOutputFileList < 3) {
    o.entries = buildUnnamed87();
  }
  buildCounterOutputFileList--;
  return o;
}

void checkOutputFileList(api.OutputFileList o) {
  buildCounterOutputFileList++;
  if (buildCounterOutputFileList < 3) {
    checkUnnamed87(o.entries!);
  }
  buildCounterOutputFileList--;
}

core.int buildCounterPayloadFile = 0;
api.PayloadFile buildPayloadFile() {
  final o = api.PayloadFile();
  buildCounterPayloadFile++;
  if (buildCounterPayloadFile < 3) {
    o.data = 'foo';
    o.name = 'foo';
  }
  buildCounterPayloadFile--;
  return o;
}

void checkPayloadFile(api.PayloadFile o) {
  buildCounterPayloadFile++;
  if (buildCounterPayloadFile < 3) {
    unittest.expect(o.data!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterPayloadFile--;
}

core.int buildCounterPerformanceSample = 0;
api.PerformanceSample buildPerformanceSample() {
  final o = api.PerformanceSample();
  buildCounterPerformanceSample++;
  if (buildCounterPerformanceSample < 3) {
    o.cpu = buildCpuUsageSample();
    o.disk = buildDiskUsageSample();
    o.memory = buildMemoryUsageSample();
    o.network = buildNetworkUsageSample();
    o.sampleTime = 'foo';
  }
  buildCounterPerformanceSample--;
  return o;
}

void checkPerformanceSample(api.PerformanceSample o) {
  buildCounterPerformanceSample++;
  if (buildCounterPerformanceSample < 3) {
    checkCpuUsageSample(o.cpu!);
    checkDiskUsageSample(o.disk!);
    checkMemoryUsageSample(o.memory!);
    checkNetworkUsageSample(o.network!);
    unittest.expect(o.sampleTime!, unittest.equals('foo'));
  }
  buildCounterPerformanceSample--;
}

core.int buildCounterPhysicalPlatformDetails = 0;
api.PhysicalPlatformDetails buildPhysicalPlatformDetails() {
  final o = api.PhysicalPlatformDetails();
  buildCounterPhysicalPlatformDetails++;
  if (buildCounterPhysicalPlatformDetails < 3) {
    o.hyperthreading = 'foo';
    o.location = 'foo';
  }
  buildCounterPhysicalPlatformDetails--;
  return o;
}

void checkPhysicalPlatformDetails(api.PhysicalPlatformDetails o) {
  buildCounterPhysicalPlatformDetails++;
  if (buildCounterPhysicalPlatformDetails < 3) {
    unittest.expect(o.hyperthreading!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
  }
  buildCounterPhysicalPlatformDetails--;
}

core.int buildCounterPlatformDetails = 0;
api.PlatformDetails buildPlatformDetails() {
  final o = api.PlatformDetails();
  buildCounterPlatformDetails++;
  if (buildCounterPlatformDetails < 3) {
    o.awsEc2Details = buildAwsEc2PlatformDetails();
    o.azureVmDetails = buildAzureVmPlatformDetails();
    o.genericDetails = buildGenericPlatformDetails();
    o.physicalDetails = buildPhysicalPlatformDetails();
    o.vmwareDetails = buildVmwarePlatformDetails();
  }
  buildCounterPlatformDetails--;
  return o;
}

void checkPlatformDetails(api.PlatformDetails o) {
  buildCounterPlatformDetails++;
  if (buildCounterPlatformDetails < 3) {
    checkAwsEc2PlatformDetails(o.awsEc2Details!);
    checkAzureVmPlatformDetails(o.azureVmDetails!);
    checkGenericPlatformDetails(o.genericDetails!);
    checkPhysicalPlatformDetails(o.physicalDetails!);
    checkVmwarePlatformDetails(o.vmwareDetails!);
  }
  buildCounterPlatformDetails--;
}

core.List<api.PostgreSqlProperty> buildUnnamed88() => [
  buildPostgreSqlProperty(),
  buildPostgreSqlProperty(),
];

void checkUnnamed88(core.List<api.PostgreSqlProperty> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPostgreSqlProperty(o[0]);
  checkPostgreSqlProperty(o[1]);
}

core.List<api.PostgreSqlSetting> buildUnnamed89() => [
  buildPostgreSqlSetting(),
  buildPostgreSqlSetting(),
];

void checkUnnamed89(core.List<api.PostgreSqlSetting> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPostgreSqlSetting(o[0]);
  checkPostgreSqlSetting(o[1]);
}

core.int buildCounterPostgreSqlDatabaseDeployment = 0;
api.PostgreSqlDatabaseDeployment buildPostgreSqlDatabaseDeployment() {
  final o = api.PostgreSqlDatabaseDeployment();
  buildCounterPostgreSqlDatabaseDeployment++;
  if (buildCounterPostgreSqlDatabaseDeployment < 3) {
    o.properties = buildUnnamed88();
    o.settings = buildUnnamed89();
  }
  buildCounterPostgreSqlDatabaseDeployment--;
  return o;
}

void checkPostgreSqlDatabaseDeployment(api.PostgreSqlDatabaseDeployment o) {
  buildCounterPostgreSqlDatabaseDeployment++;
  if (buildCounterPostgreSqlDatabaseDeployment < 3) {
    checkUnnamed88(o.properties!);
    checkUnnamed89(o.settings!);
  }
  buildCounterPostgreSqlDatabaseDeployment--;
}

core.int buildCounterPostgreSqlExtension = 0;
api.PostgreSqlExtension buildPostgreSqlExtension() {
  final o = api.PostgreSqlExtension();
  buildCounterPostgreSqlExtension++;
  if (buildCounterPostgreSqlExtension < 3) {
    o.extension = 'foo';
    o.version = 'foo';
  }
  buildCounterPostgreSqlExtension--;
  return o;
}

void checkPostgreSqlExtension(api.PostgreSqlExtension o) {
  buildCounterPostgreSqlExtension++;
  if (buildCounterPostgreSqlExtension < 3) {
    unittest.expect(o.extension!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterPostgreSqlExtension--;
}

core.int buildCounterPostgreSqlProperty = 0;
api.PostgreSqlProperty buildPostgreSqlProperty() {
  final o = api.PostgreSqlProperty();
  buildCounterPostgreSqlProperty++;
  if (buildCounterPostgreSqlProperty < 3) {
    o.enabled = true;
    o.numericValue = 'foo';
    o.property = 'foo';
  }
  buildCounterPostgreSqlProperty--;
  return o;
}

void checkPostgreSqlProperty(api.PostgreSqlProperty o) {
  buildCounterPostgreSqlProperty++;
  if (buildCounterPostgreSqlProperty < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(o.numericValue!, unittest.equals('foo'));
    unittest.expect(o.property!, unittest.equals('foo'));
  }
  buildCounterPostgreSqlProperty--;
}

core.List<api.PostgreSqlExtension> buildUnnamed90() => [
  buildPostgreSqlExtension(),
  buildPostgreSqlExtension(),
];

void checkUnnamed90(core.List<api.PostgreSqlExtension> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPostgreSqlExtension(o[0]);
  checkPostgreSqlExtension(o[1]);
}

core.int buildCounterPostgreSqlSchemaDetails = 0;
api.PostgreSqlSchemaDetails buildPostgreSqlSchemaDetails() {
  final o = api.PostgreSqlSchemaDetails();
  buildCounterPostgreSqlSchemaDetails++;
  if (buildCounterPostgreSqlSchemaDetails < 3) {
    o.foreignTablesCount = 42;
    o.postgresqlExtensions = buildUnnamed90();
  }
  buildCounterPostgreSqlSchemaDetails--;
  return o;
}

void checkPostgreSqlSchemaDetails(api.PostgreSqlSchemaDetails o) {
  buildCounterPostgreSqlSchemaDetails++;
  if (buildCounterPostgreSqlSchemaDetails < 3) {
    unittest.expect(o.foreignTablesCount!, unittest.equals(42));
    checkUnnamed90(o.postgresqlExtensions!);
  }
  buildCounterPostgreSqlSchemaDetails--;
}

core.int buildCounterPostgreSqlSetting = 0;
api.PostgreSqlSetting buildPostgreSqlSetting() {
  final o = api.PostgreSqlSetting();
  buildCounterPostgreSqlSetting++;
  if (buildCounterPostgreSqlSetting < 3) {
    o.boolValue = true;
    o.intValue = 'foo';
    o.realValue = 42.0;
    o.setting = 'foo';
    o.source = 'foo';
    o.stringValue = 'foo';
    o.unit = 'foo';
  }
  buildCounterPostgreSqlSetting--;
  return o;
}

void checkPostgreSqlSetting(api.PostgreSqlSetting o) {
  buildCounterPostgreSqlSetting++;
  if (buildCounterPostgreSqlSetting < 3) {
    unittest.expect(o.boolValue!, unittest.isTrue);
    unittest.expect(o.intValue!, unittest.equals('foo'));
    unittest.expect(o.realValue!, unittest.equals(42.0));
    unittest.expect(o.setting!, unittest.equals('foo'));
    unittest.expect(o.source!, unittest.equals('foo'));
    unittest.expect(o.stringValue!, unittest.equals('foo'));
    unittest.expect(o.unit!, unittest.equals('foo'));
  }
  buildCounterPostgreSqlSetting--;
}

core.int buildCounterPreferenceSet = 0;
api.PreferenceSet buildPreferenceSet() {
  final o = api.PreferenceSet();
  buildCounterPreferenceSet++;
  if (buildCounterPreferenceSet < 3) {
    o.createTime = 'foo';
    o.databasePreferences = buildDatabasePreferences();
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.regionPreferences = buildRegionPreferences();
    o.updateTime = 'foo';
    o.virtualMachinePreferences = buildVirtualMachinePreferences();
  }
  buildCounterPreferenceSet--;
  return o;
}

void checkPreferenceSet(api.PreferenceSet o) {
  buildCounterPreferenceSet++;
  if (buildCounterPreferenceSet < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkDatabasePreferences(o.databasePreferences!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    checkRegionPreferences(o.regionPreferences!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    checkVirtualMachinePreferences(o.virtualMachinePreferences!);
  }
  buildCounterPreferenceSet--;
}

core.List<core.String> buildUnnamed91() => ['foo', 'foo'];

void checkUnnamed91(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRegionPreferences = 0;
api.RegionPreferences buildRegionPreferences() {
  final o = api.RegionPreferences();
  buildCounterRegionPreferences++;
  if (buildCounterRegionPreferences < 3) {
    o.preferredRegions = buildUnnamed91();
  }
  buildCounterRegionPreferences--;
  return o;
}

void checkRegionPreferences(api.RegionPreferences o) {
  buildCounterRegionPreferences++;
  if (buildCounterRegionPreferences < 3) {
    checkUnnamed91(o.preferredRegions!);
  }
  buildCounterRegionPreferences--;
}

core.int buildCounterRelation = 0;
api.Relation buildRelation() {
  final o = api.Relation();
  buildCounterRelation++;
  if (buildCounterRelation < 3) {
    o.createTime = 'foo';
    o.dstAsset = 'foo';
    o.name = 'foo';
    o.srcAsset = 'foo';
    o.type = 'foo';
  }
  buildCounterRelation--;
  return o;
}

void checkRelation(api.Relation o) {
  buildCounterRelation++;
  if (buildCounterRelation < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.dstAsset!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.srcAsset!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
  }
  buildCounterRelation--;
}

core.int buildCounterRemoveAssetsFromGroupRequest = 0;
api.RemoveAssetsFromGroupRequest buildRemoveAssetsFromGroupRequest() {
  final o = api.RemoveAssetsFromGroupRequest();
  buildCounterRemoveAssetsFromGroupRequest++;
  if (buildCounterRemoveAssetsFromGroupRequest < 3) {
    o.allowMissing = true;
    o.assets = buildAssetList();
    o.requestId = 'foo';
  }
  buildCounterRemoveAssetsFromGroupRequest--;
  return o;
}

void checkRemoveAssetsFromGroupRequest(api.RemoveAssetsFromGroupRequest o) {
  buildCounterRemoveAssetsFromGroupRequest++;
  if (buildCounterRemoveAssetsFromGroupRequest < 3) {
    unittest.expect(o.allowMissing!, unittest.isTrue);
    checkAssetList(o.assets!);
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterRemoveAssetsFromGroupRequest--;
}

core.int buildCounterReport = 0;
api.Report buildReport() {
  final o = api.Report();
  buildCounterReport++;
  if (buildCounterReport < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.state = 'foo';
    o.summary = buildReportSummary();
    o.type = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterReport--;
  return o;
}

void checkReport(api.Report o) {
  buildCounterReport++;
  if (buildCounterReport < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    checkReportSummary(o.summary!);
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterReport--;
}

core.int buildCounterReportAssetFramesResponse = 0;
api.ReportAssetFramesResponse buildReportAssetFramesResponse() {
  final o = api.ReportAssetFramesResponse();
  buildCounterReportAssetFramesResponse++;
  if (buildCounterReportAssetFramesResponse < 3) {}
  buildCounterReportAssetFramesResponse--;
  return o;
}

void checkReportAssetFramesResponse(api.ReportAssetFramesResponse o) {
  buildCounterReportAssetFramesResponse++;
  if (buildCounterReportAssetFramesResponse < 3) {}
  buildCounterReportAssetFramesResponse--;
}

core.List<api.ReportConfigGroupPreferenceSetAssignment> buildUnnamed92() => [
  buildReportConfigGroupPreferenceSetAssignment(),
  buildReportConfigGroupPreferenceSetAssignment(),
];

void checkUnnamed92(core.List<api.ReportConfigGroupPreferenceSetAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportConfigGroupPreferenceSetAssignment(o[0]);
  checkReportConfigGroupPreferenceSetAssignment(o[1]);
}

core.int buildCounterReportConfig = 0;
api.ReportConfig buildReportConfig() {
  final o = api.ReportConfig();
  buildCounterReportConfig++;
  if (buildCounterReportConfig < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.groupPreferencesetAssignments = buildUnnamed92();
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterReportConfig--;
  return o;
}

void checkReportConfig(api.ReportConfig o) {
  buildCounterReportConfig++;
  if (buildCounterReportConfig < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkUnnamed92(o.groupPreferencesetAssignments!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterReportConfig--;
}

core.int buildCounterReportConfigGroupPreferenceSetAssignment = 0;
api.ReportConfigGroupPreferenceSetAssignment
buildReportConfigGroupPreferenceSetAssignment() {
  final o = api.ReportConfigGroupPreferenceSetAssignment();
  buildCounterReportConfigGroupPreferenceSetAssignment++;
  if (buildCounterReportConfigGroupPreferenceSetAssignment < 3) {
    o.group = 'foo';
    o.preferenceSet = 'foo';
  }
  buildCounterReportConfigGroupPreferenceSetAssignment--;
  return o;
}

void checkReportConfigGroupPreferenceSetAssignment(
  api.ReportConfigGroupPreferenceSetAssignment o,
) {
  buildCounterReportConfigGroupPreferenceSetAssignment++;
  if (buildCounterReportConfigGroupPreferenceSetAssignment < 3) {
    unittest.expect(o.group!, unittest.equals('foo'));
    unittest.expect(o.preferenceSet!, unittest.equals('foo'));
  }
  buildCounterReportConfigGroupPreferenceSetAssignment--;
}

core.List<api.ReportSummaryGroupFinding> buildUnnamed93() => [
  buildReportSummaryGroupFinding(),
  buildReportSummaryGroupFinding(),
];

void checkUnnamed93(core.List<api.ReportSummaryGroupFinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportSummaryGroupFinding(o[0]);
  checkReportSummaryGroupFinding(o[1]);
}

core.int buildCounterReportSummary = 0;
api.ReportSummary buildReportSummary() {
  final o = api.ReportSummary();
  buildCounterReportSummary++;
  if (buildCounterReportSummary < 3) {
    o.allAssetsStats = buildReportSummaryAssetAggregateStats();
    o.databaseStats = buildReportSummaryAssetAggregateStats();
    o.groupFindings = buildUnnamed93();
    o.virtualMachineStats = buildReportSummaryAssetAggregateStats();
  }
  buildCounterReportSummary--;
  return o;
}

void checkReportSummary(api.ReportSummary o) {
  buildCounterReportSummary++;
  if (buildCounterReportSummary < 3) {
    checkReportSummaryAssetAggregateStats(o.allAssetsStats!);
    checkReportSummaryAssetAggregateStats(o.databaseStats!);
    checkUnnamed93(o.groupFindings!);
    checkReportSummaryAssetAggregateStats(o.virtualMachineStats!);
  }
  buildCounterReportSummary--;
}

core.int buildCounterReportSummaryAssetAggregateStats = 0;
api.ReportSummaryAssetAggregateStats buildReportSummaryAssetAggregateStats() {
  final o = api.ReportSummaryAssetAggregateStats();
  buildCounterReportSummaryAssetAggregateStats++;
  if (buildCounterReportSummaryAssetAggregateStats < 3) {
    o.assetAge = buildReportSummaryChartData();
    o.coreCountHistogram = buildReportSummaryHistogramChartData();
    o.databaseTypes = buildReportSummaryChartData();
    o.memoryBytesHistogram = buildReportSummaryHistogramChartData();
    o.memoryUtilization = buildReportSummaryChartData();
    o.memoryUtilizationChart = buildReportSummaryUtilizationChartData();
    o.operatingSystem = buildReportSummaryChartData();
    o.storageBytesHistogram = buildReportSummaryHistogramChartData();
    o.storageUtilization = buildReportSummaryChartData();
    o.storageUtilizationChart = buildReportSummaryUtilizationChartData();
    o.totalAssets = 'foo';
    o.totalCores = 'foo';
    o.totalMemoryBytes = 'foo';
    o.totalStorageBytes = 'foo';
  }
  buildCounterReportSummaryAssetAggregateStats--;
  return o;
}

void checkReportSummaryAssetAggregateStats(
  api.ReportSummaryAssetAggregateStats o,
) {
  buildCounterReportSummaryAssetAggregateStats++;
  if (buildCounterReportSummaryAssetAggregateStats < 3) {
    checkReportSummaryChartData(o.assetAge!);
    checkReportSummaryHistogramChartData(o.coreCountHistogram!);
    checkReportSummaryChartData(o.databaseTypes!);
    checkReportSummaryHistogramChartData(o.memoryBytesHistogram!);
    checkReportSummaryChartData(o.memoryUtilization!);
    checkReportSummaryUtilizationChartData(o.memoryUtilizationChart!);
    checkReportSummaryChartData(o.operatingSystem!);
    checkReportSummaryHistogramChartData(o.storageBytesHistogram!);
    checkReportSummaryChartData(o.storageUtilization!);
    checkReportSummaryUtilizationChartData(o.storageUtilizationChart!);
    unittest.expect(o.totalAssets!, unittest.equals('foo'));
    unittest.expect(o.totalCores!, unittest.equals('foo'));
    unittest.expect(o.totalMemoryBytes!, unittest.equals('foo'));
    unittest.expect(o.totalStorageBytes!, unittest.equals('foo'));
  }
  buildCounterReportSummaryAssetAggregateStats--;
}

core.List<api.ReportSummaryChartDataDataPoint> buildUnnamed94() => [
  buildReportSummaryChartDataDataPoint(),
  buildReportSummaryChartDataDataPoint(),
];

void checkUnnamed94(core.List<api.ReportSummaryChartDataDataPoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportSummaryChartDataDataPoint(o[0]);
  checkReportSummaryChartDataDataPoint(o[1]);
}

core.int buildCounterReportSummaryChartData = 0;
api.ReportSummaryChartData buildReportSummaryChartData() {
  final o = api.ReportSummaryChartData();
  buildCounterReportSummaryChartData++;
  if (buildCounterReportSummaryChartData < 3) {
    o.dataPoints = buildUnnamed94();
  }
  buildCounterReportSummaryChartData--;
  return o;
}

void checkReportSummaryChartData(api.ReportSummaryChartData o) {
  buildCounterReportSummaryChartData++;
  if (buildCounterReportSummaryChartData < 3) {
    checkUnnamed94(o.dataPoints!);
  }
  buildCounterReportSummaryChartData--;
}

core.int buildCounterReportSummaryChartDataDataPoint = 0;
api.ReportSummaryChartDataDataPoint buildReportSummaryChartDataDataPoint() {
  final o = api.ReportSummaryChartDataDataPoint();
  buildCounterReportSummaryChartDataDataPoint++;
  if (buildCounterReportSummaryChartDataDataPoint < 3) {
    o.label = 'foo';
    o.value = 42.0;
  }
  buildCounterReportSummaryChartDataDataPoint--;
  return o;
}

void checkReportSummaryChartDataDataPoint(
  api.ReportSummaryChartDataDataPoint o,
) {
  buildCounterReportSummaryChartDataDataPoint++;
  if (buildCounterReportSummaryChartDataDataPoint < 3) {
    unittest.expect(o.label!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals(42.0));
  }
  buildCounterReportSummaryChartDataDataPoint--;
}

core.int buildCounterReportSummaryDatabaseFinding = 0;
api.ReportSummaryDatabaseFinding buildReportSummaryDatabaseFinding() {
  final o = api.ReportSummaryDatabaseFinding();
  buildCounterReportSummaryDatabaseFinding++;
  if (buildCounterReportSummaryDatabaseFinding < 3) {
    o.allocatedAssetCount = 'foo';
    o.totalAssets = 'foo';
  }
  buildCounterReportSummaryDatabaseFinding--;
  return o;
}

void checkReportSummaryDatabaseFinding(api.ReportSummaryDatabaseFinding o) {
  buildCounterReportSummaryDatabaseFinding++;
  if (buildCounterReportSummaryDatabaseFinding < 3) {
    unittest.expect(o.allocatedAssetCount!, unittest.equals('foo'));
    unittest.expect(o.totalAssets!, unittest.equals('foo'));
  }
  buildCounterReportSummaryDatabaseFinding--;
}

core.List<api.ReportSummaryGroupPreferenceSetFinding> buildUnnamed95() => [
  buildReportSummaryGroupPreferenceSetFinding(),
  buildReportSummaryGroupPreferenceSetFinding(),
];

void checkUnnamed95(core.List<api.ReportSummaryGroupPreferenceSetFinding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportSummaryGroupPreferenceSetFinding(o[0]);
  checkReportSummaryGroupPreferenceSetFinding(o[1]);
}

core.int buildCounterReportSummaryGroupFinding = 0;
api.ReportSummaryGroupFinding buildReportSummaryGroupFinding() {
  final o = api.ReportSummaryGroupFinding();
  buildCounterReportSummaryGroupFinding++;
  if (buildCounterReportSummaryGroupFinding < 3) {
    o.assetAggregateStats = buildReportSummaryAssetAggregateStats();
    o.assetType = 'foo';
    o.databaseType = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.group = 'foo';
    o.overlappingAssetCount = 'foo';
    o.preferenceSetFindings = buildUnnamed95();
  }
  buildCounterReportSummaryGroupFinding--;
  return o;
}

void checkReportSummaryGroupFinding(api.ReportSummaryGroupFinding o) {
  buildCounterReportSummaryGroupFinding++;
  if (buildCounterReportSummaryGroupFinding < 3) {
    checkReportSummaryAssetAggregateStats(o.assetAggregateStats!);
    unittest.expect(o.assetType!, unittest.equals('foo'));
    unittest.expect(o.databaseType!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.group!, unittest.equals('foo'));
    unittest.expect(o.overlappingAssetCount!, unittest.equals('foo'));
    checkUnnamed95(o.preferenceSetFindings!);
  }
  buildCounterReportSummaryGroupFinding--;
}

core.int buildCounterReportSummaryGroupPreferenceSetFinding = 0;
api.ReportSummaryGroupPreferenceSetFinding
buildReportSummaryGroupPreferenceSetFinding() {
  final o = api.ReportSummaryGroupPreferenceSetFinding();
  buildCounterReportSummaryGroupPreferenceSetFinding++;
  if (buildCounterReportSummaryGroupPreferenceSetFinding < 3) {
    o.databaseFinding = buildReportSummaryDatabaseFinding();
    o.description = 'foo';
    o.displayName = 'foo';
    o.machineFinding = buildReportSummaryMachineFinding();
    o.machinePreferences = buildVirtualMachinePreferences();
    o.monthlyCostCompute = buildMoney();
    o.monthlyCostDatabaseBackup = buildMoney();
    o.monthlyCostDatabaseLicensing = buildMoney();
    o.monthlyCostGcveProtected = buildMoney();
    o.monthlyCostNetworkEgress = buildMoney();
    o.monthlyCostOsLicense = buildMoney();
    o.monthlyCostOther = buildMoney();
    o.monthlyCostPortableVmwareLicense = buildMoney();
    o.monthlyCostStorage = buildMoney();
    o.monthlyCostTotal = buildMoney();
    o.preferenceSet = buildPreferenceSet();
    o.preferredRegion = 'foo';
    o.pricingTrack = 'foo';
    o.soleTenantFinding = buildReportSummarySoleTenantFinding();
    o.topPriority = 'foo';
    o.vmwareEngineFinding = buildReportSummaryVMWareEngineFinding();
  }
  buildCounterReportSummaryGroupPreferenceSetFinding--;
  return o;
}

void checkReportSummaryGroupPreferenceSetFinding(
  api.ReportSummaryGroupPreferenceSetFinding o,
) {
  buildCounterReportSummaryGroupPreferenceSetFinding++;
  if (buildCounterReportSummaryGroupPreferenceSetFinding < 3) {
    checkReportSummaryDatabaseFinding(o.databaseFinding!);
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    checkReportSummaryMachineFinding(o.machineFinding!);
    checkVirtualMachinePreferences(o.machinePreferences!);
    checkMoney(o.monthlyCostCompute!);
    checkMoney(o.monthlyCostDatabaseBackup!);
    checkMoney(o.monthlyCostDatabaseLicensing!);
    checkMoney(o.monthlyCostGcveProtected!);
    checkMoney(o.monthlyCostNetworkEgress!);
    checkMoney(o.monthlyCostOsLicense!);
    checkMoney(o.monthlyCostOther!);
    checkMoney(o.monthlyCostPortableVmwareLicense!);
    checkMoney(o.monthlyCostStorage!);
    checkMoney(o.monthlyCostTotal!);
    checkPreferenceSet(o.preferenceSet!);
    unittest.expect(o.preferredRegion!, unittest.equals('foo'));
    unittest.expect(o.pricingTrack!, unittest.equals('foo'));
    checkReportSummarySoleTenantFinding(o.soleTenantFinding!);
    unittest.expect(o.topPriority!, unittest.equals('foo'));
    checkReportSummaryVMWareEngineFinding(o.vmwareEngineFinding!);
  }
  buildCounterReportSummaryGroupPreferenceSetFinding--;
}

core.List<api.ReportSummaryHistogramChartDataBucket> buildUnnamed96() => [
  buildReportSummaryHistogramChartDataBucket(),
  buildReportSummaryHistogramChartDataBucket(),
];

void checkUnnamed96(core.List<api.ReportSummaryHistogramChartDataBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportSummaryHistogramChartDataBucket(o[0]);
  checkReportSummaryHistogramChartDataBucket(o[1]);
}

core.int buildCounterReportSummaryHistogramChartData = 0;
api.ReportSummaryHistogramChartData buildReportSummaryHistogramChartData() {
  final o = api.ReportSummaryHistogramChartData();
  buildCounterReportSummaryHistogramChartData++;
  if (buildCounterReportSummaryHistogramChartData < 3) {
    o.buckets = buildUnnamed96();
  }
  buildCounterReportSummaryHistogramChartData--;
  return o;
}

void checkReportSummaryHistogramChartData(
  api.ReportSummaryHistogramChartData o,
) {
  buildCounterReportSummaryHistogramChartData++;
  if (buildCounterReportSummaryHistogramChartData < 3) {
    checkUnnamed96(o.buckets!);
  }
  buildCounterReportSummaryHistogramChartData--;
}

core.int buildCounterReportSummaryHistogramChartDataBucket = 0;
api.ReportSummaryHistogramChartDataBucket
buildReportSummaryHistogramChartDataBucket() {
  final o = api.ReportSummaryHistogramChartDataBucket();
  buildCounterReportSummaryHistogramChartDataBucket++;
  if (buildCounterReportSummaryHistogramChartDataBucket < 3) {
    o.count = 'foo';
    o.lowerBound = 'foo';
    o.upperBound = 'foo';
  }
  buildCounterReportSummaryHistogramChartDataBucket--;
  return o;
}

void checkReportSummaryHistogramChartDataBucket(
  api.ReportSummaryHistogramChartDataBucket o,
) {
  buildCounterReportSummaryHistogramChartDataBucket++;
  if (buildCounterReportSummaryHistogramChartDataBucket < 3) {
    unittest.expect(o.count!, unittest.equals('foo'));
    unittest.expect(o.lowerBound!, unittest.equals('foo'));
    unittest.expect(o.upperBound!, unittest.equals('foo'));
  }
  buildCounterReportSummaryHistogramChartDataBucket--;
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

core.List<api.ReportSummaryMachineSeriesAllocation> buildUnnamed99() => [
  buildReportSummaryMachineSeriesAllocation(),
  buildReportSummaryMachineSeriesAllocation(),
];

void checkUnnamed99(core.List<api.ReportSummaryMachineSeriesAllocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportSummaryMachineSeriesAllocation(o[0]);
  checkReportSummaryMachineSeriesAllocation(o[1]);
}

core.int buildCounterReportSummaryMachineFinding = 0;
api.ReportSummaryMachineFinding buildReportSummaryMachineFinding() {
  final o = api.ReportSummaryMachineFinding();
  buildCounterReportSummaryMachineFinding++;
  if (buildCounterReportSummaryMachineFinding < 3) {
    o.allocatedAssetCount = 'foo';
    o.allocatedDiskTypes = buildUnnamed97();
    o.allocatedRegions = buildUnnamed98();
    o.machineSeriesAllocations = buildUnnamed99();
  }
  buildCounterReportSummaryMachineFinding--;
  return o;
}

void checkReportSummaryMachineFinding(api.ReportSummaryMachineFinding o) {
  buildCounterReportSummaryMachineFinding++;
  if (buildCounterReportSummaryMachineFinding < 3) {
    unittest.expect(o.allocatedAssetCount!, unittest.equals('foo'));
    checkUnnamed97(o.allocatedDiskTypes!);
    checkUnnamed98(o.allocatedRegions!);
    checkUnnamed99(o.machineSeriesAllocations!);
  }
  buildCounterReportSummaryMachineFinding--;
}

core.int buildCounterReportSummaryMachineSeriesAllocation = 0;
api.ReportSummaryMachineSeriesAllocation
buildReportSummaryMachineSeriesAllocation() {
  final o = api.ReportSummaryMachineSeriesAllocation();
  buildCounterReportSummaryMachineSeriesAllocation++;
  if (buildCounterReportSummaryMachineSeriesAllocation < 3) {
    o.allocatedAssetCount = 'foo';
    o.machineSeries = buildMachineSeries();
  }
  buildCounterReportSummaryMachineSeriesAllocation--;
  return o;
}

void checkReportSummaryMachineSeriesAllocation(
  api.ReportSummaryMachineSeriesAllocation o,
) {
  buildCounterReportSummaryMachineSeriesAllocation++;
  if (buildCounterReportSummaryMachineSeriesAllocation < 3) {
    unittest.expect(o.allocatedAssetCount!, unittest.equals('foo'));
    checkMachineSeries(o.machineSeries!);
  }
  buildCounterReportSummaryMachineSeriesAllocation--;
}

core.List<core.String> buildUnnamed100() => ['foo', 'foo'];

void checkUnnamed100(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ReportSummarySoleTenantNodeAllocation> buildUnnamed101() => [
  buildReportSummarySoleTenantNodeAllocation(),
  buildReportSummarySoleTenantNodeAllocation(),
];

void checkUnnamed101(core.List<api.ReportSummarySoleTenantNodeAllocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportSummarySoleTenantNodeAllocation(o[0]);
  checkReportSummarySoleTenantNodeAllocation(o[1]);
}

core.int buildCounterReportSummarySoleTenantFinding = 0;
api.ReportSummarySoleTenantFinding buildReportSummarySoleTenantFinding() {
  final o = api.ReportSummarySoleTenantFinding();
  buildCounterReportSummarySoleTenantFinding++;
  if (buildCounterReportSummarySoleTenantFinding < 3) {
    o.allocatedAssetCount = 'foo';
    o.allocatedRegions = buildUnnamed100();
    o.nodeAllocations = buildUnnamed101();
  }
  buildCounterReportSummarySoleTenantFinding--;
  return o;
}

void checkReportSummarySoleTenantFinding(api.ReportSummarySoleTenantFinding o) {
  buildCounterReportSummarySoleTenantFinding++;
  if (buildCounterReportSummarySoleTenantFinding < 3) {
    unittest.expect(o.allocatedAssetCount!, unittest.equals('foo'));
    checkUnnamed100(o.allocatedRegions!);
    checkUnnamed101(o.nodeAllocations!);
  }
  buildCounterReportSummarySoleTenantFinding--;
}

core.int buildCounterReportSummarySoleTenantNodeAllocation = 0;
api.ReportSummarySoleTenantNodeAllocation
buildReportSummarySoleTenantNodeAllocation() {
  final o = api.ReportSummarySoleTenantNodeAllocation();
  buildCounterReportSummarySoleTenantNodeAllocation++;
  if (buildCounterReportSummarySoleTenantNodeAllocation < 3) {
    o.allocatedAssetCount = 'foo';
    o.node = buildSoleTenantNodeType();
    o.nodeCount = 'foo';
  }
  buildCounterReportSummarySoleTenantNodeAllocation--;
  return o;
}

void checkReportSummarySoleTenantNodeAllocation(
  api.ReportSummarySoleTenantNodeAllocation o,
) {
  buildCounterReportSummarySoleTenantNodeAllocation++;
  if (buildCounterReportSummarySoleTenantNodeAllocation < 3) {
    unittest.expect(o.allocatedAssetCount!, unittest.equals('foo'));
    checkSoleTenantNodeType(o.node!);
    unittest.expect(o.nodeCount!, unittest.equals('foo'));
  }
  buildCounterReportSummarySoleTenantNodeAllocation--;
}

core.int buildCounterReportSummaryUtilizationChartData = 0;
api.ReportSummaryUtilizationChartData buildReportSummaryUtilizationChartData() {
  final o = api.ReportSummaryUtilizationChartData();
  buildCounterReportSummaryUtilizationChartData++;
  if (buildCounterReportSummaryUtilizationChartData < 3) {
    o.free = 'foo';
    o.used = 'foo';
  }
  buildCounterReportSummaryUtilizationChartData--;
  return o;
}

void checkReportSummaryUtilizationChartData(
  api.ReportSummaryUtilizationChartData o,
) {
  buildCounterReportSummaryUtilizationChartData++;
  if (buildCounterReportSummaryUtilizationChartData < 3) {
    unittest.expect(o.free!, unittest.equals('foo'));
    unittest.expect(o.used!, unittest.equals('foo'));
  }
  buildCounterReportSummaryUtilizationChartData--;
}

core.List<core.String> buildUnnamed102() => ['foo', 'foo'];

void checkUnnamed102(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.ReportSummaryVMWareNodeAllocation> buildUnnamed103() => [
  buildReportSummaryVMWareNodeAllocation(),
  buildReportSummaryVMWareNodeAllocation(),
];

void checkUnnamed103(core.List<api.ReportSummaryVMWareNodeAllocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportSummaryVMWareNodeAllocation(o[0]);
  checkReportSummaryVMWareNodeAllocation(o[1]);
}

core.int buildCounterReportSummaryVMWareEngineFinding = 0;
api.ReportSummaryVMWareEngineFinding buildReportSummaryVMWareEngineFinding() {
  final o = api.ReportSummaryVMWareEngineFinding();
  buildCounterReportSummaryVMWareEngineFinding++;
  if (buildCounterReportSummaryVMWareEngineFinding < 3) {
    o.allocatedAssetCount = 'foo';
    o.allocatedRegions = buildUnnamed102();
    o.nodeAllocations = buildUnnamed103();
  }
  buildCounterReportSummaryVMWareEngineFinding--;
  return o;
}

void checkReportSummaryVMWareEngineFinding(
  api.ReportSummaryVMWareEngineFinding o,
) {
  buildCounterReportSummaryVMWareEngineFinding++;
  if (buildCounterReportSummaryVMWareEngineFinding < 3) {
    unittest.expect(o.allocatedAssetCount!, unittest.equals('foo'));
    checkUnnamed102(o.allocatedRegions!);
    checkUnnamed103(o.nodeAllocations!);
  }
  buildCounterReportSummaryVMWareEngineFinding--;
}

core.int buildCounterReportSummaryVMWareNode = 0;
api.ReportSummaryVMWareNode buildReportSummaryVMWareNode() {
  final o = api.ReportSummaryVMWareNode();
  buildCounterReportSummaryVMWareNode++;
  if (buildCounterReportSummaryVMWareNode < 3) {
    o.code = 'foo';
  }
  buildCounterReportSummaryVMWareNode--;
  return o;
}

void checkReportSummaryVMWareNode(api.ReportSummaryVMWareNode o) {
  buildCounterReportSummaryVMWareNode++;
  if (buildCounterReportSummaryVMWareNode < 3) {
    unittest.expect(o.code!, unittest.equals('foo'));
  }
  buildCounterReportSummaryVMWareNode--;
}

core.int buildCounterReportSummaryVMWareNodeAllocation = 0;
api.ReportSummaryVMWareNodeAllocation buildReportSummaryVMWareNodeAllocation() {
  final o = api.ReportSummaryVMWareNodeAllocation();
  buildCounterReportSummaryVMWareNodeAllocation++;
  if (buildCounterReportSummaryVMWareNodeAllocation < 3) {
    o.allocatedAssetCount = 'foo';
    o.nodeCount = 'foo';
    o.vmwareNode = buildReportSummaryVMWareNode();
  }
  buildCounterReportSummaryVMWareNodeAllocation--;
  return o;
}

void checkReportSummaryVMWareNodeAllocation(
  api.ReportSummaryVMWareNodeAllocation o,
) {
  buildCounterReportSummaryVMWareNodeAllocation++;
  if (buildCounterReportSummaryVMWareNodeAllocation < 3) {
    unittest.expect(o.allocatedAssetCount!, unittest.equals('foo'));
    unittest.expect(o.nodeCount!, unittest.equals('foo'));
    checkReportSummaryVMWareNode(o.vmwareNode!);
  }
  buildCounterReportSummaryVMWareNodeAllocation--;
}

core.int buildCounterRunAssetsExportJobRequest = 0;
api.RunAssetsExportJobRequest buildRunAssetsExportJobRequest() {
  final o = api.RunAssetsExportJobRequest();
  buildCounterRunAssetsExportJobRequest++;
  if (buildCounterRunAssetsExportJobRequest < 3) {
    o.requestId = 'foo';
  }
  buildCounterRunAssetsExportJobRequest--;
  return o;
}

void checkRunAssetsExportJobRequest(api.RunAssetsExportJobRequest o) {
  buildCounterRunAssetsExportJobRequest++;
  if (buildCounterRunAssetsExportJobRequest < 3) {
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterRunAssetsExportJobRequest--;
}

core.int buildCounterRunImportJobRequest = 0;
api.RunImportJobRequest buildRunImportJobRequest() {
  final o = api.RunImportJobRequest();
  buildCounterRunImportJobRequest++;
  if (buildCounterRunImportJobRequest < 3) {
    o.requestId = 'foo';
  }
  buildCounterRunImportJobRequest--;
  return o;
}

void checkRunImportJobRequest(api.RunImportJobRequest o) {
  buildCounterRunImportJobRequest++;
  if (buildCounterRunImportJobRequest < 3) {
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterRunImportJobRequest--;
}

core.Map<core.String, core.String> buildUnnamed104() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed104(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterRunningProcess = 0;
api.RunningProcess buildRunningProcess() {
  final o = api.RunningProcess();
  buildCounterRunningProcess++;
  if (buildCounterRunningProcess < 3) {
    o.attributes = buildUnnamed104();
    o.cmdline = 'foo';
    o.exePath = 'foo';
    o.pid = 'foo';
    o.user = 'foo';
  }
  buildCounterRunningProcess--;
  return o;
}

void checkRunningProcess(api.RunningProcess o) {
  buildCounterRunningProcess++;
  if (buildCounterRunningProcess < 3) {
    checkUnnamed104(o.attributes!);
    unittest.expect(o.cmdline!, unittest.equals('foo'));
    unittest.expect(o.exePath!, unittest.equals('foo'));
    unittest.expect(o.pid!, unittest.equals('foo'));
    unittest.expect(o.user!, unittest.equals('foo'));
  }
  buildCounterRunningProcess--;
}

core.List<api.RunningProcess> buildUnnamed105() => [
  buildRunningProcess(),
  buildRunningProcess(),
];

void checkUnnamed105(core.List<api.RunningProcess> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRunningProcess(o[0]);
  checkRunningProcess(o[1]);
}

core.int buildCounterRunningProcessList = 0;
api.RunningProcessList buildRunningProcessList() {
  final o = api.RunningProcessList();
  buildCounterRunningProcessList++;
  if (buildCounterRunningProcessList < 3) {
    o.processes = buildUnnamed105();
  }
  buildCounterRunningProcessList--;
  return o;
}

void checkRunningProcessList(api.RunningProcessList o) {
  buildCounterRunningProcessList++;
  if (buildCounterRunningProcessList < 3) {
    checkUnnamed105(o.processes!);
  }
  buildCounterRunningProcessList--;
}

core.int buildCounterRunningService = 0;
api.RunningService buildRunningService() {
  final o = api.RunningService();
  buildCounterRunningService++;
  if (buildCounterRunningService < 3) {
    o.cmdline = 'foo';
    o.exePath = 'foo';
    o.name = 'foo';
    o.pid = 'foo';
    o.startMode = 'foo';
    o.state = 'foo';
    o.status = 'foo';
  }
  buildCounterRunningService--;
  return o;
}

void checkRunningService(api.RunningService o) {
  buildCounterRunningService++;
  if (buildCounterRunningService < 3) {
    unittest.expect(o.cmdline!, unittest.equals('foo'));
    unittest.expect(o.exePath!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.pid!, unittest.equals('foo'));
    unittest.expect(o.startMode!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
  }
  buildCounterRunningService--;
}

core.List<api.RunningService> buildUnnamed106() => [
  buildRunningService(),
  buildRunningService(),
];

void checkUnnamed106(core.List<api.RunningService> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRunningService(o[0]);
  checkRunningService(o[1]);
}

core.int buildCounterRunningServiceList = 0;
api.RunningServiceList buildRunningServiceList() {
  final o = api.RunningServiceList();
  buildCounterRunningServiceList++;
  if (buildCounterRunningServiceList < 3) {
    o.services = buildUnnamed106();
  }
  buildCounterRunningServiceList--;
  return o;
}

void checkRunningServiceList(api.RunningServiceList o) {
  buildCounterRunningServiceList++;
  if (buildCounterRunningServiceList < 3) {
    checkUnnamed106(o.services!);
  }
  buildCounterRunningServiceList--;
}

core.int buildCounterRuntimeNetworkInfo = 0;
api.RuntimeNetworkInfo buildRuntimeNetworkInfo() {
  final o = api.RuntimeNetworkInfo();
  buildCounterRuntimeNetworkInfo++;
  if (buildCounterRuntimeNetworkInfo < 3) {
    o.connections = buildNetworkConnectionList();
    o.netstat = 'foo';
    o.netstatTime = buildDateTime();
  }
  buildCounterRuntimeNetworkInfo--;
  return o;
}

void checkRuntimeNetworkInfo(api.RuntimeNetworkInfo o) {
  buildCounterRuntimeNetworkInfo++;
  if (buildCounterRuntimeNetworkInfo < 3) {
    checkNetworkConnectionList(o.connections!);
    unittest.expect(o.netstat!, unittest.equals('foo'));
    checkDateTime(o.netstatTime!);
  }
  buildCounterRuntimeNetworkInfo--;
}

core.int buildCounterSelinux = 0;
api.Selinux buildSelinux() {
  final o = api.Selinux();
  buildCounterSelinux++;
  if (buildCounterSelinux < 3) {
    o.enabled = true;
    o.mode = 'foo';
  }
  buildCounterSelinux--;
  return o;
}

void checkSelinux(api.Selinux o) {
  buildCounterSelinux++;
  if (buildCounterSelinux < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(o.mode!, unittest.equals('foo'));
  }
  buildCounterSelinux--;
}

core.List<api.Status> buildUnnamed107() => [buildStatus(), buildStatus()];

void checkUnnamed107(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.int buildCounterSendDiscoveryClientHeartbeatRequest = 0;
api.SendDiscoveryClientHeartbeatRequest
buildSendDiscoveryClientHeartbeatRequest() {
  final o = api.SendDiscoveryClientHeartbeatRequest();
  buildCounterSendDiscoveryClientHeartbeatRequest++;
  if (buildCounterSendDiscoveryClientHeartbeatRequest < 3) {
    o.errors = buildUnnamed107();
    o.version = 'foo';
  }
  buildCounterSendDiscoveryClientHeartbeatRequest--;
  return o;
}

void checkSendDiscoveryClientHeartbeatRequest(
  api.SendDiscoveryClientHeartbeatRequest o,
) {
  buildCounterSendDiscoveryClientHeartbeatRequest++;
  if (buildCounterSendDiscoveryClientHeartbeatRequest < 3) {
    checkUnnamed107(o.errors!);
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterSendDiscoveryClientHeartbeatRequest--;
}

core.int buildCounterSettings = 0;
api.Settings buildSettings() {
  final o = api.Settings();
  buildCounterSettings++;
  if (buildCounterSettings < 3) {
    o.customerConsentForGoogleSalesToAccessMigrationCenter = true;
    o.disableCloudLogging = true;
    o.name = 'foo';
    o.preferenceSet = 'foo';
  }
  buildCounterSettings--;
  return o;
}

void checkSettings(api.Settings o) {
  buildCounterSettings++;
  if (buildCounterSettings < 3) {
    unittest.expect(
      o.customerConsentForGoogleSalesToAccessMigrationCenter!,
      unittest.isTrue,
    );
    unittest.expect(o.disableCloudLogging!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.preferenceSet!, unittest.equals('foo'));
  }
  buildCounterSettings--;
}

core.int buildCounterSignedUri = 0;
api.SignedUri buildSignedUri() {
  final o = api.SignedUri();
  buildCounterSignedUri++;
  if (buildCounterSignedUri < 3) {
    o.file = 'foo';
    o.uri = 'foo';
  }
  buildCounterSignedUri--;
  return o;
}

void checkSignedUri(api.SignedUri o) {
  buildCounterSignedUri++;
  if (buildCounterSignedUri < 3) {
    unittest.expect(o.file!, unittest.equals('foo'));
    unittest.expect(o.uri!, unittest.equals('foo'));
  }
  buildCounterSignedUri--;
}

core.int buildCounterSignedUriDestination = 0;
api.SignedUriDestination buildSignedUriDestination() {
  final o = api.SignedUriDestination();
  buildCounterSignedUriDestination++;
  if (buildCounterSignedUriDestination < 3) {
    o.fileFormat = 'foo';
  }
  buildCounterSignedUriDestination--;
  return o;
}

void checkSignedUriDestination(api.SignedUriDestination o) {
  buildCounterSignedUriDestination++;
  if (buildCounterSignedUriDestination < 3) {
    unittest.expect(o.fileFormat!, unittest.equals('foo'));
  }
  buildCounterSignedUriDestination--;
}

core.List<api.SignedUri> buildUnnamed108() => [
  buildSignedUri(),
  buildSignedUri(),
];

void checkUnnamed108(core.List<api.SignedUri> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSignedUri(o[0]);
  checkSignedUri(o[1]);
}

core.int buildCounterSignedUris = 0;
api.SignedUris buildSignedUris() {
  final o = api.SignedUris();
  buildCounterSignedUris++;
  if (buildCounterSignedUris < 3) {
    o.signedUris = buildUnnamed108();
  }
  buildCounterSignedUris--;
  return o;
}

void checkSignedUris(api.SignedUris o) {
  buildCounterSignedUris++;
  if (buildCounterSignedUris < 3) {
    checkUnnamed108(o.signedUris!);
  }
  buildCounterSignedUris--;
}

core.int buildCounterSoftwareInsight = 0;
api.SoftwareInsight buildSoftwareInsight() {
  final o = api.SoftwareInsight();
  buildCounterSoftwareInsight++;
  if (buildCounterSoftwareInsight < 3) {
    o.detectedSoftware = buildDetectedSoftware();
  }
  buildCounterSoftwareInsight--;
  return o;
}

void checkSoftwareInsight(api.SoftwareInsight o) {
  buildCounterSoftwareInsight++;
  if (buildCounterSoftwareInsight < 3) {
    checkDetectedSoftware(o.detectedSoftware!);
  }
  buildCounterSoftwareInsight--;
}

core.List<api.SoleTenantNodeType> buildUnnamed109() => [
  buildSoleTenantNodeType(),
  buildSoleTenantNodeType(),
];

void checkUnnamed109(core.List<api.SoleTenantNodeType> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSoleTenantNodeType(o[0]);
  checkSoleTenantNodeType(o[1]);
}

core.int buildCounterSoleTenancyPreferences = 0;
api.SoleTenancyPreferences buildSoleTenancyPreferences() {
  final o = api.SoleTenancyPreferences();
  buildCounterSoleTenancyPreferences++;
  if (buildCounterSoleTenancyPreferences < 3) {
    o.commitmentPlan = 'foo';
    o.cpuOvercommitRatio = 42.0;
    o.hostMaintenancePolicy = 'foo';
    o.nodeTypes = buildUnnamed109();
    o.osPricingPreferences = buildOperatingSystemPricingPreferences();
  }
  buildCounterSoleTenancyPreferences--;
  return o;
}

void checkSoleTenancyPreferences(api.SoleTenancyPreferences o) {
  buildCounterSoleTenancyPreferences++;
  if (buildCounterSoleTenancyPreferences < 3) {
    unittest.expect(o.commitmentPlan!, unittest.equals('foo'));
    unittest.expect(o.cpuOvercommitRatio!, unittest.equals(42.0));
    unittest.expect(o.hostMaintenancePolicy!, unittest.equals('foo'));
    checkUnnamed109(o.nodeTypes!);
    checkOperatingSystemPricingPreferences(o.osPricingPreferences!);
  }
  buildCounterSoleTenancyPreferences--;
}

core.int buildCounterSoleTenantNodeType = 0;
api.SoleTenantNodeType buildSoleTenantNodeType() {
  final o = api.SoleTenantNodeType();
  buildCounterSoleTenantNodeType++;
  if (buildCounterSoleTenantNodeType < 3) {
    o.nodeName = 'foo';
  }
  buildCounterSoleTenantNodeType--;
  return o;
}

void checkSoleTenantNodeType(api.SoleTenantNodeType o) {
  buildCounterSoleTenantNodeType++;
  if (buildCounterSoleTenantNodeType < 3) {
    unittest.expect(o.nodeName!, unittest.equals('foo'));
  }
  buildCounterSoleTenantNodeType--;
}

core.int buildCounterSource = 0;
api.Source buildSource() {
  final o = api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.errorFrameCount = 42;
    o.isManaged = true;
    o.name = 'foo';
    o.pendingFrameCount = 42;
    o.priority = 42;
    o.state = 'foo';
    o.type = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterSource--;
  return o;
}

void checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.errorFrameCount!, unittest.equals(42));
    unittest.expect(o.isManaged!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.pendingFrameCount!, unittest.equals(42));
    unittest.expect(o.priority!, unittest.equals(42));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.type!, unittest.equals('foo'));
    unittest.expect(o.updateTime!, unittest.equals('foo'));
  }
  buildCounterSource--;
}

core.List<api.SqlServerFeature> buildUnnamed110() => [
  buildSqlServerFeature(),
  buildSqlServerFeature(),
];

void checkUnnamed110(core.List<api.SqlServerFeature> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSqlServerFeature(o[0]);
  checkSqlServerFeature(o[1]);
}

core.List<api.SqlServerServerFlag> buildUnnamed111() => [
  buildSqlServerServerFlag(),
  buildSqlServerServerFlag(),
];

void checkUnnamed111(core.List<api.SqlServerServerFlag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSqlServerServerFlag(o[0]);
  checkSqlServerServerFlag(o[1]);
}

core.List<api.SqlServerTraceFlag> buildUnnamed112() => [
  buildSqlServerTraceFlag(),
  buildSqlServerTraceFlag(),
];

void checkUnnamed112(core.List<api.SqlServerTraceFlag> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSqlServerTraceFlag(o[0]);
  checkSqlServerTraceFlag(o[1]);
}

core.int buildCounterSqlServerDatabaseDeployment = 0;
api.SqlServerDatabaseDeployment buildSqlServerDatabaseDeployment() {
  final o = api.SqlServerDatabaseDeployment();
  buildCounterSqlServerDatabaseDeployment++;
  if (buildCounterSqlServerDatabaseDeployment < 3) {
    o.features = buildUnnamed110();
    o.serverFlags = buildUnnamed111();
    o.traceFlags = buildUnnamed112();
  }
  buildCounterSqlServerDatabaseDeployment--;
  return o;
}

void checkSqlServerDatabaseDeployment(api.SqlServerDatabaseDeployment o) {
  buildCounterSqlServerDatabaseDeployment++;
  if (buildCounterSqlServerDatabaseDeployment < 3) {
    checkUnnamed110(o.features!);
    checkUnnamed111(o.serverFlags!);
    checkUnnamed112(o.traceFlags!);
  }
  buildCounterSqlServerDatabaseDeployment--;
}

core.int buildCounterSqlServerFeature = 0;
api.SqlServerFeature buildSqlServerFeature() {
  final o = api.SqlServerFeature();
  buildCounterSqlServerFeature++;
  if (buildCounterSqlServerFeature < 3) {
    o.enabled = true;
    o.featureName = 'foo';
  }
  buildCounterSqlServerFeature--;
  return o;
}

void checkSqlServerFeature(api.SqlServerFeature o) {
  buildCounterSqlServerFeature++;
  if (buildCounterSqlServerFeature < 3) {
    unittest.expect(o.enabled!, unittest.isTrue);
    unittest.expect(o.featureName!, unittest.equals('foo'));
  }
  buildCounterSqlServerFeature--;
}

core.int buildCounterSqlServerSchemaDetails = 0;
api.SqlServerSchemaDetails buildSqlServerSchemaDetails() {
  final o = api.SqlServerSchemaDetails();
  buildCounterSqlServerSchemaDetails++;
  if (buildCounterSqlServerSchemaDetails < 3) {
    o.clrObjectCount = 42;
  }
  buildCounterSqlServerSchemaDetails--;
  return o;
}

void checkSqlServerSchemaDetails(api.SqlServerSchemaDetails o) {
  buildCounterSqlServerSchemaDetails++;
  if (buildCounterSqlServerSchemaDetails < 3) {
    unittest.expect(o.clrObjectCount!, unittest.equals(42));
  }
  buildCounterSqlServerSchemaDetails--;
}

core.int buildCounterSqlServerServerFlag = 0;
api.SqlServerServerFlag buildSqlServerServerFlag() {
  final o = api.SqlServerServerFlag();
  buildCounterSqlServerServerFlag++;
  if (buildCounterSqlServerServerFlag < 3) {
    o.serverFlagName = 'foo';
    o.value = 'foo';
    o.valueInUse = 'foo';
  }
  buildCounterSqlServerServerFlag--;
  return o;
}

void checkSqlServerServerFlag(api.SqlServerServerFlag o) {
  buildCounterSqlServerServerFlag++;
  if (buildCounterSqlServerServerFlag < 3) {
    unittest.expect(o.serverFlagName!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
    unittest.expect(o.valueInUse!, unittest.equals('foo'));
  }
  buildCounterSqlServerServerFlag--;
}

core.int buildCounterSqlServerTraceFlag = 0;
api.SqlServerTraceFlag buildSqlServerTraceFlag() {
  final o = api.SqlServerTraceFlag();
  buildCounterSqlServerTraceFlag++;
  if (buildCounterSqlServerTraceFlag < 3) {
    o.scope = 'foo';
    o.traceFlagName = 'foo';
  }
  buildCounterSqlServerTraceFlag--;
  return o;
}

void checkSqlServerTraceFlag(api.SqlServerTraceFlag o) {
  buildCounterSqlServerTraceFlag++;
  if (buildCounterSqlServerTraceFlag < 3) {
    unittest.expect(o.scope!, unittest.equals('foo'));
    unittest.expect(o.traceFlagName!, unittest.equals('foo'));
  }
  buildCounterSqlServerTraceFlag--;
}

core.Map<core.String, core.Object?> buildUnnamed113() => {
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

void checkUnnamed113(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed114() => [
  buildUnnamed113(),
  buildUnnamed113(),
];

void checkUnnamed114(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed113(o[0]);
  checkUnnamed113(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed114();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed114(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterTimeZone = 0;
api.TimeZone buildTimeZone() {
  final o = api.TimeZone();
  buildCounterTimeZone++;
  if (buildCounterTimeZone < 3) {
    o.id = 'foo';
    o.version = 'foo';
  }
  buildCounterTimeZone--;
  return o;
}

void checkTimeZone(api.TimeZone o) {
  buildCounterTimeZone++;
  if (buildCounterTimeZone < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterTimeZone--;
}

core.int buildCounterUpdateAssetRequest = 0;
api.UpdateAssetRequest buildUpdateAssetRequest() {
  final o = api.UpdateAssetRequest();
  buildCounterUpdateAssetRequest++;
  if (buildCounterUpdateAssetRequest < 3) {
    o.asset = buildAsset();
    o.requestId = 'foo';
    o.updateMask = 'foo';
  }
  buildCounterUpdateAssetRequest--;
  return o;
}

void checkUpdateAssetRequest(api.UpdateAssetRequest o) {
  buildCounterUpdateAssetRequest++;
  if (buildCounterUpdateAssetRequest < 3) {
    checkAsset(o.asset!);
    unittest.expect(o.requestId!, unittest.equals('foo'));
    unittest.expect(o.updateMask!, unittest.equals('foo'));
  }
  buildCounterUpdateAssetRequest--;
}

core.Map<core.String, core.String> buildUnnamed115() => {
  'x': 'foo',
  'y': 'foo',
};

void checkUnnamed115(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterUploadFileInfo = 0;
api.UploadFileInfo buildUploadFileInfo() {
  final o = api.UploadFileInfo();
  buildCounterUploadFileInfo++;
  if (buildCounterUploadFileInfo < 3) {
    o.headers = buildUnnamed115();
    o.signedUri = 'foo';
    o.uriExpirationTime = 'foo';
  }
  buildCounterUploadFileInfo--;
  return o;
}

void checkUploadFileInfo(api.UploadFileInfo o) {
  buildCounterUploadFileInfo++;
  if (buildCounterUploadFileInfo < 3) {
    checkUnnamed115(o.headers!);
    unittest.expect(o.signedUri!, unittest.equals('foo'));
    unittest.expect(o.uriExpirationTime!, unittest.equals('foo'));
  }
  buildCounterUploadFileInfo--;
}

core.List<api.MachineSeries> buildUnnamed116() => [
  buildMachineSeries(),
  buildMachineSeries(),
];

void checkUnnamed116(core.List<api.MachineSeries> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMachineSeries(o[0]);
  checkMachineSeries(o[1]);
}

core.int buildCounterVMwareEngineMachinePreferences = 0;
api.VMwareEngineMachinePreferences buildVMwareEngineMachinePreferences() {
  final o = api.VMwareEngineMachinePreferences();
  buildCounterVMwareEngineMachinePreferences++;
  if (buildCounterVMwareEngineMachinePreferences < 3) {
    o.allowedMachineSeries = buildUnnamed116();
    o.protectedNodes = 'foo';
    o.storageOnlyNodes = 'foo';
  }
  buildCounterVMwareEngineMachinePreferences--;
  return o;
}

void checkVMwareEngineMachinePreferences(api.VMwareEngineMachinePreferences o) {
  buildCounterVMwareEngineMachinePreferences++;
  if (buildCounterVMwareEngineMachinePreferences < 3) {
    checkUnnamed116(o.allowedMachineSeries!);
    unittest.expect(o.protectedNodes!, unittest.equals('foo'));
    unittest.expect(o.storageOnlyNodes!, unittest.equals('foo'));
  }
  buildCounterVMwareEngineMachinePreferences--;
}

core.int buildCounterValidateImportJobRequest = 0;
api.ValidateImportJobRequest buildValidateImportJobRequest() {
  final o = api.ValidateImportJobRequest();
  buildCounterValidateImportJobRequest++;
  if (buildCounterValidateImportJobRequest < 3) {
    o.requestId = 'foo';
  }
  buildCounterValidateImportJobRequest--;
  return o;
}

void checkValidateImportJobRequest(api.ValidateImportJobRequest o) {
  buildCounterValidateImportJobRequest++;
  if (buildCounterValidateImportJobRequest < 3) {
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterValidateImportJobRequest--;
}

core.List<api.FileValidationReport> buildUnnamed117() => [
  buildFileValidationReport(),
  buildFileValidationReport(),
];

void checkUnnamed117(core.List<api.FileValidationReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileValidationReport(o[0]);
  checkFileValidationReport(o[1]);
}

core.List<api.ImportError> buildUnnamed118() => [
  buildImportError(),
  buildImportError(),
];

void checkUnnamed118(core.List<api.ImportError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImportError(o[0]);
  checkImportError(o[1]);
}

core.int buildCounterValidationReport = 0;
api.ValidationReport buildValidationReport() {
  final o = api.ValidationReport();
  buildCounterValidationReport++;
  if (buildCounterValidationReport < 3) {
    o.fileValidations = buildUnnamed117();
    o.jobErrors = buildUnnamed118();
  }
  buildCounterValidationReport--;
  return o;
}

void checkValidationReport(api.ValidationReport o) {
  buildCounterValidationReport++;
  if (buildCounterValidationReport < 3) {
    checkUnnamed117(o.fileValidations!);
    checkUnnamed118(o.jobErrors!);
  }
  buildCounterValidationReport--;
}

core.int buildCounterVirtualMachineArchitectureDetails = 0;
api.VirtualMachineArchitectureDetails buildVirtualMachineArchitectureDetails() {
  final o = api.VirtualMachineArchitectureDetails();
  buildCounterVirtualMachineArchitectureDetails++;
  if (buildCounterVirtualMachineArchitectureDetails < 3) {
    o.bios = buildBiosDetails();
    o.cpuArchitecture = 'foo';
    o.cpuManufacturer = 'foo';
    o.cpuName = 'foo';
    o.cpuSocketCount = 42;
    o.cpuThreadCount = 42;
    o.firmware = 'foo';
    o.hyperthreading = 'foo';
    o.vendor = 'foo';
  }
  buildCounterVirtualMachineArchitectureDetails--;
  return o;
}

void checkVirtualMachineArchitectureDetails(
  api.VirtualMachineArchitectureDetails o,
) {
  buildCounterVirtualMachineArchitectureDetails++;
  if (buildCounterVirtualMachineArchitectureDetails < 3) {
    checkBiosDetails(o.bios!);
    unittest.expect(o.cpuArchitecture!, unittest.equals('foo'));
    unittest.expect(o.cpuManufacturer!, unittest.equals('foo'));
    unittest.expect(o.cpuName!, unittest.equals('foo'));
    unittest.expect(o.cpuSocketCount!, unittest.equals(42));
    unittest.expect(o.cpuThreadCount!, unittest.equals(42));
    unittest.expect(o.firmware!, unittest.equals('foo'));
    unittest.expect(o.hyperthreading!, unittest.equals('foo'));
    unittest.expect(o.vendor!, unittest.equals('foo'));
  }
  buildCounterVirtualMachineArchitectureDetails--;
}

core.int buildCounterVirtualMachineDetails = 0;
api.VirtualMachineDetails buildVirtualMachineDetails() {
  final o = api.VirtualMachineDetails();
  buildCounterVirtualMachineDetails++;
  if (buildCounterVirtualMachineDetails < 3) {
    o.coreCount = 42;
    o.createTime = 'foo';
    o.diskPartitions = buildDiskPartitionDetails();
    o.guestOs = buildGuestOsDetails();
    o.memoryMb = 42;
    o.osFamily = 'foo';
    o.osName = 'foo';
    o.osVersion = 'foo';
    o.platform = buildPlatformDetails();
    o.powerState = 'foo';
    o.vcenterFolder = 'foo';
    o.vcenterUrl = 'foo';
    o.vcenterVmId = 'foo';
    o.vmArchitecture = buildVirtualMachineArchitectureDetails();
    o.vmDisks = buildVirtualMachineDiskDetails();
    o.vmName = 'foo';
    o.vmNetwork = buildVirtualMachineNetworkDetails();
    o.vmUuid = 'foo';
  }
  buildCounterVirtualMachineDetails--;
  return o;
}

void checkVirtualMachineDetails(api.VirtualMachineDetails o) {
  buildCounterVirtualMachineDetails++;
  if (buildCounterVirtualMachineDetails < 3) {
    unittest.expect(o.coreCount!, unittest.equals(42));
    unittest.expect(o.createTime!, unittest.equals('foo'));
    checkDiskPartitionDetails(o.diskPartitions!);
    checkGuestOsDetails(o.guestOs!);
    unittest.expect(o.memoryMb!, unittest.equals(42));
    unittest.expect(o.osFamily!, unittest.equals('foo'));
    unittest.expect(o.osName!, unittest.equals('foo'));
    unittest.expect(o.osVersion!, unittest.equals('foo'));
    checkPlatformDetails(o.platform!);
    unittest.expect(o.powerState!, unittest.equals('foo'));
    unittest.expect(o.vcenterFolder!, unittest.equals('foo'));
    unittest.expect(o.vcenterUrl!, unittest.equals('foo'));
    unittest.expect(o.vcenterVmId!, unittest.equals('foo'));
    checkVirtualMachineArchitectureDetails(o.vmArchitecture!);
    checkVirtualMachineDiskDetails(o.vmDisks!);
    unittest.expect(o.vmName!, unittest.equals('foo'));
    checkVirtualMachineNetworkDetails(o.vmNetwork!);
    unittest.expect(o.vmUuid!, unittest.equals('foo'));
  }
  buildCounterVirtualMachineDetails--;
}

core.int buildCounterVirtualMachineDiskDetails = 0;
api.VirtualMachineDiskDetails buildVirtualMachineDiskDetails() {
  final o = api.VirtualMachineDiskDetails();
  buildCounterVirtualMachineDiskDetails++;
  if (buildCounterVirtualMachineDiskDetails < 3) {
    o.disks = buildDiskEntryList();
    o.hddTotalCapacityBytes = 'foo';
    o.hddTotalFreeBytes = 'foo';
    o.lsblkJson = 'foo';
  }
  buildCounterVirtualMachineDiskDetails--;
  return o;
}

void checkVirtualMachineDiskDetails(api.VirtualMachineDiskDetails o) {
  buildCounterVirtualMachineDiskDetails++;
  if (buildCounterVirtualMachineDiskDetails < 3) {
    checkDiskEntryList(o.disks!);
    unittest.expect(o.hddTotalCapacityBytes!, unittest.equals('foo'));
    unittest.expect(o.hddTotalFreeBytes!, unittest.equals('foo'));
    unittest.expect(o.lsblkJson!, unittest.equals('foo'));
  }
  buildCounterVirtualMachineDiskDetails--;
}

core.int buildCounterVirtualMachineNetworkDetails = 0;
api.VirtualMachineNetworkDetails buildVirtualMachineNetworkDetails() {
  final o = api.VirtualMachineNetworkDetails();
  buildCounterVirtualMachineNetworkDetails++;
  if (buildCounterVirtualMachineNetworkDetails < 3) {
    o.defaultGw = 'foo';
    o.networkAdapters = buildNetworkAdapterList();
    o.primaryIpAddress = 'foo';
    o.primaryMacAddress = 'foo';
    o.publicIpAddress = 'foo';
  }
  buildCounterVirtualMachineNetworkDetails--;
  return o;
}

void checkVirtualMachineNetworkDetails(api.VirtualMachineNetworkDetails o) {
  buildCounterVirtualMachineNetworkDetails++;
  if (buildCounterVirtualMachineNetworkDetails < 3) {
    unittest.expect(o.defaultGw!, unittest.equals('foo'));
    checkNetworkAdapterList(o.networkAdapters!);
    unittest.expect(o.primaryIpAddress!, unittest.equals('foo'));
    unittest.expect(o.primaryMacAddress!, unittest.equals('foo'));
    unittest.expect(o.publicIpAddress!, unittest.equals('foo'));
  }
  buildCounterVirtualMachineNetworkDetails--;
}

core.int buildCounterVirtualMachinePreferences = 0;
api.VirtualMachinePreferences buildVirtualMachinePreferences() {
  final o = api.VirtualMachinePreferences();
  buildCounterVirtualMachinePreferences++;
  if (buildCounterVirtualMachinePreferences < 3) {
    o.commitmentPlan = 'foo';
    o.computeEnginePreferences = buildComputeEnginePreferences();
    o.networkCostParameters =
        buildVirtualMachinePreferencesNetworkCostParameters();
    o.regionPreferences = buildRegionPreferences();
    o.sizingOptimizationCustomParameters =
        buildVirtualMachinePreferencesSizingOptimizationCustomParameters();
    o.sizingOptimizationStrategy = 'foo';
    o.soleTenancyPreferences = buildSoleTenancyPreferences();
    o.targetProduct = 'foo';
    o.vmwareEnginePreferences = buildVmwareEnginePreferences();
  }
  buildCounterVirtualMachinePreferences--;
  return o;
}

void checkVirtualMachinePreferences(api.VirtualMachinePreferences o) {
  buildCounterVirtualMachinePreferences++;
  if (buildCounterVirtualMachinePreferences < 3) {
    unittest.expect(o.commitmentPlan!, unittest.equals('foo'));
    checkComputeEnginePreferences(o.computeEnginePreferences!);
    checkVirtualMachinePreferencesNetworkCostParameters(
      o.networkCostParameters!,
    );
    checkRegionPreferences(o.regionPreferences!);
    checkVirtualMachinePreferencesSizingOptimizationCustomParameters(
      o.sizingOptimizationCustomParameters!,
    );
    unittest.expect(o.sizingOptimizationStrategy!, unittest.equals('foo'));
    checkSoleTenancyPreferences(o.soleTenancyPreferences!);
    unittest.expect(o.targetProduct!, unittest.equals('foo'));
    checkVmwareEnginePreferences(o.vmwareEnginePreferences!);
  }
  buildCounterVirtualMachinePreferences--;
}

core.int buildCounterVirtualMachinePreferencesNetworkCostParameters = 0;
api.VirtualMachinePreferencesNetworkCostParameters
buildVirtualMachinePreferencesNetworkCostParameters() {
  final o = api.VirtualMachinePreferencesNetworkCostParameters();
  buildCounterVirtualMachinePreferencesNetworkCostParameters++;
  if (buildCounterVirtualMachinePreferencesNetworkCostParameters < 3) {
    o.estimatedEgressTrafficPercentage = 42;
  }
  buildCounterVirtualMachinePreferencesNetworkCostParameters--;
  return o;
}

void checkVirtualMachinePreferencesNetworkCostParameters(
  api.VirtualMachinePreferencesNetworkCostParameters o,
) {
  buildCounterVirtualMachinePreferencesNetworkCostParameters++;
  if (buildCounterVirtualMachinePreferencesNetworkCostParameters < 3) {
    unittest.expect(o.estimatedEgressTrafficPercentage!, unittest.equals(42));
  }
  buildCounterVirtualMachinePreferencesNetworkCostParameters--;
}

core.int
buildCounterVirtualMachinePreferencesSizingOptimizationCustomParameters = 0;
api.VirtualMachinePreferencesSizingOptimizationCustomParameters
buildVirtualMachinePreferencesSizingOptimizationCustomParameters() {
  final o = api.VirtualMachinePreferencesSizingOptimizationCustomParameters();
  buildCounterVirtualMachinePreferencesSizingOptimizationCustomParameters++;
  if (buildCounterVirtualMachinePreferencesSizingOptimizationCustomParameters <
      3) {
    o.aggregationMethod = 'foo';
    o.cpuUsagePercentage = 42;
    o.memoryUsagePercentage = 42;
    o.storageMultiplier = 42.0;
  }
  buildCounterVirtualMachinePreferencesSizingOptimizationCustomParameters--;
  return o;
}

void checkVirtualMachinePreferencesSizingOptimizationCustomParameters(
  api.VirtualMachinePreferencesSizingOptimizationCustomParameters o,
) {
  buildCounterVirtualMachinePreferencesSizingOptimizationCustomParameters++;
  if (buildCounterVirtualMachinePreferencesSizingOptimizationCustomParameters <
      3) {
    unittest.expect(o.aggregationMethod!, unittest.equals('foo'));
    unittest.expect(o.cpuUsagePercentage!, unittest.equals(42));
    unittest.expect(o.memoryUsagePercentage!, unittest.equals(42));
    unittest.expect(o.storageMultiplier!, unittest.equals(42.0));
  }
  buildCounterVirtualMachinePreferencesSizingOptimizationCustomParameters--;
}

core.int buildCounterVmwareEngineMigrationTarget = 0;
api.VmwareEngineMigrationTarget buildVmwareEngineMigrationTarget() {
  final o = api.VmwareEngineMigrationTarget();
  buildCounterVmwareEngineMigrationTarget++;
  if (buildCounterVmwareEngineMigrationTarget < 3) {}
  buildCounterVmwareEngineMigrationTarget--;
  return o;
}

void checkVmwareEngineMigrationTarget(api.VmwareEngineMigrationTarget o) {
  buildCounterVmwareEngineMigrationTarget++;
  if (buildCounterVmwareEngineMigrationTarget < 3) {}
  buildCounterVmwareEngineMigrationTarget--;
}

core.int buildCounterVmwareEnginePreferences = 0;
api.VmwareEnginePreferences buildVmwareEnginePreferences() {
  final o = api.VmwareEnginePreferences();
  buildCounterVmwareEnginePreferences++;
  if (buildCounterVmwareEnginePreferences < 3) {
    o.commitmentPlan = 'foo';
    o.cpuOvercommitRatio = 42.0;
    o.licenseDiscountPercentage = 42.0;
    o.machinePreferences = buildVMwareEngineMachinePreferences();
    o.memoryOvercommitRatio = 42.0;
    o.serviceType = 'foo';
    o.storageDeduplicationCompressionRatio = 42.0;
  }
  buildCounterVmwareEnginePreferences--;
  return o;
}

void checkVmwareEnginePreferences(api.VmwareEnginePreferences o) {
  buildCounterVmwareEnginePreferences++;
  if (buildCounterVmwareEnginePreferences < 3) {
    unittest.expect(o.commitmentPlan!, unittest.equals('foo'));
    unittest.expect(o.cpuOvercommitRatio!, unittest.equals(42.0));
    unittest.expect(o.licenseDiscountPercentage!, unittest.equals(42.0));
    checkVMwareEngineMachinePreferences(o.machinePreferences!);
    unittest.expect(o.memoryOvercommitRatio!, unittest.equals(42.0));
    unittest.expect(o.serviceType!, unittest.equals('foo'));
    unittest.expect(
      o.storageDeduplicationCompressionRatio!,
      unittest.equals(42.0),
    );
  }
  buildCounterVmwareEnginePreferences--;
}

core.int buildCounterVmwarePlatformDetails = 0;
api.VmwarePlatformDetails buildVmwarePlatformDetails() {
  final o = api.VmwarePlatformDetails();
  buildCounterVmwarePlatformDetails++;
  if (buildCounterVmwarePlatformDetails < 3) {
    o.esxHyperthreading = 'foo';
    o.esxVersion = 'foo';
    o.osid = 'foo';
    o.vcenterVersion = 'foo';
  }
  buildCounterVmwarePlatformDetails--;
  return o;
}

void checkVmwarePlatformDetails(api.VmwarePlatformDetails o) {
  buildCounterVmwarePlatformDetails++;
  if (buildCounterVmwarePlatformDetails < 3) {
    unittest.expect(o.esxHyperthreading!, unittest.equals('foo'));
    unittest.expect(o.esxVersion!, unittest.equals('foo'));
    unittest.expect(o.osid!, unittest.equals('foo'));
    unittest.expect(o.vcenterVersion!, unittest.equals('foo'));
  }
  buildCounterVmwarePlatformDetails--;
}

core.int buildCounterXlsxOutputFile = 0;
api.XlsxOutputFile buildXlsxOutputFile() {
  final o = api.XlsxOutputFile();
  buildCounterXlsxOutputFile++;
  if (buildCounterXlsxOutputFile < 3) {
    o.signedUri = buildSignedUri();
  }
  buildCounterXlsxOutputFile--;
  return o;
}

void checkXlsxOutputFile(api.XlsxOutputFile o) {
  buildCounterXlsxOutputFile++;
  if (buildCounterXlsxOutputFile < 3) {
    checkSignedUri(o.signedUri!);
  }
  buildCounterXlsxOutputFile--;
}

core.List<core.String> buildUnnamed119() => ['foo', 'foo'];

void checkUnnamed119(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

void main() {
  unittest.group('obj-schema-AddAssetsToGroupRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddAssetsToGroupRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddAssetsToGroupRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAddAssetsToGroupRequest(od);
    });
  });

  unittest.group('obj-schema-AggregateAssetsValuesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregateAssetsValuesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregateAssetsValuesRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAggregateAssetsValuesRequest(od);
    });
  });

  unittest.group('obj-schema-AggregateAssetsValuesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregateAssetsValuesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregateAssetsValuesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAggregateAssetsValuesResponse(od);
    });
  });

  unittest.group('obj-schema-Aggregation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Aggregation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAggregation(od);
    });
  });

  unittest.group('obj-schema-AggregationCount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregationCount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregationCount.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAggregationCount(od);
    });
  });

  unittest.group('obj-schema-AggregationFrequency', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregationFrequency();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregationFrequency.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAggregationFrequency(od);
    });
  });

  unittest.group('obj-schema-AggregationHistogram', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregationHistogram();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregationHistogram.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAggregationHistogram(od);
    });
  });

  unittest.group('obj-schema-AggregationResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregationResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregationResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAggregationResult(od);
    });
  });

  unittest.group('obj-schema-AggregationResultCount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregationResultCount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregationResultCount.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAggregationResultCount(od);
    });
  });

  unittest.group('obj-schema-AggregationResultFrequency', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregationResultFrequency();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregationResultFrequency.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAggregationResultFrequency(od);
    });
  });

  unittest.group('obj-schema-AggregationResultHistogram', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregationResultHistogram();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregationResultHistogram.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAggregationResultHistogram(od);
    });
  });

  unittest.group('obj-schema-AggregationResultHistogramBucket', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregationResultHistogramBucket();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregationResultHistogramBucket.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAggregationResultHistogramBucket(od);
    });
  });

  unittest.group('obj-schema-AggregationResultSum', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregationResultSum();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregationResultSum.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAggregationResultSum(od);
    });
  });

  unittest.group('obj-schema-AggregationSum', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregationSum();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregationSum.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAggregationSum(od);
    });
  });

  unittest.group('obj-schema-Asset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAsset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Asset.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAsset(od);
    });
  });

  unittest.group('obj-schema-AssetFrame', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssetFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AssetFrame.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAssetFrame(od);
    });
  });

  unittest.group('obj-schema-AssetList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssetList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AssetList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAssetList(od);
    });
  });

  unittest.group('obj-schema-AssetPerformanceData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssetPerformanceData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AssetPerformanceData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAssetPerformanceData(od);
    });
  });

  unittest.group('obj-schema-AssetsExportJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssetsExportJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AssetsExportJob.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAssetsExportJob(od);
    });
  });

  unittest.group('obj-schema-AssetsExportJobExecution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssetsExportJobExecution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AssetsExportJobExecution.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAssetsExportJobExecution(od);
    });
  });

  unittest.group('obj-schema-AssetsExportJobExecutionResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssetsExportJobExecutionResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AssetsExportJobExecutionResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAssetsExportJobExecutionResult(od);
    });
  });

  unittest.group('obj-schema-AssetsExportJobExportCondition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssetsExportJobExportCondition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AssetsExportJobExportCondition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAssetsExportJobExportCondition(od);
    });
  });

  unittest.group('obj-schema-AssetsExportJobInventory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssetsExportJobInventory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AssetsExportJobInventory.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAssetsExportJobInventory(od);
    });
  });

  unittest.group('obj-schema-AssetsExportJobNetworkDependencies', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssetsExportJobNetworkDependencies();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AssetsExportJobNetworkDependencies.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAssetsExportJobNetworkDependencies(od);
    });
  });

  unittest.group('obj-schema-AssetsExportJobPerformanceData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssetsExportJobPerformanceData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AssetsExportJobPerformanceData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAssetsExportJobPerformanceData(od);
    });
  });

  unittest.group('obj-schema-AwsEc2PlatformDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAwsEc2PlatformDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AwsEc2PlatformDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAwsEc2PlatformDetails(od);
    });
  });

  unittest.group('obj-schema-AwsRds', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAwsRds();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AwsRds.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAwsRds(od);
    });
  });

  unittest.group('obj-schema-AzureVmPlatformDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAzureVmPlatformDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AzureVmPlatformDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAzureVmPlatformDetails(od);
    });
  });

  unittest.group('obj-schema-BatchDeleteAssetsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchDeleteAssetsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchDeleteAssetsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchDeleteAssetsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateAssetsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateAssetsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateAssetsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchUpdateAssetsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateAssetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateAssetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateAssetsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatchUpdateAssetsResponse(od);
    });
  });

  unittest.group('obj-schema-BiosDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBiosDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BiosDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBiosDetails(od);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-CascadeLogicalDBsRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCascadeLogicalDBsRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CascadeLogicalDBsRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCascadeLogicalDBsRule(od);
    });
  });

  unittest.group('obj-schema-CascadingRule', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCascadingRule();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CascadingRule.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCascadingRule(od);
    });
  });

  unittest.group('obj-schema-CloudDatabaseMigrationTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudDatabaseMigrationTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudDatabaseMigrationTarget.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudDatabaseMigrationTarget(od);
    });
  });

  unittest.group('obj-schema-CloudSqlForMySqlShape', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudSqlForMySqlShape();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudSqlForMySqlShape.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudSqlForMySqlShape(od);
    });
  });

  unittest.group('obj-schema-CloudSqlForPostgreSqlShape', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudSqlForPostgreSqlShape();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudSqlForPostgreSqlShape.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudSqlForPostgreSqlShape(od);
    });
  });

  unittest.group('obj-schema-CloudSqlForSqlServerShape', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCloudSqlForSqlServerShape();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CloudSqlForSqlServerShape.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCloudSqlForSqlServerShape(od);
    });
  });

  unittest.group('obj-schema-ComputeEngineMigrationTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeEngineMigrationTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeEngineMigrationTarget.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkComputeEngineMigrationTarget(od);
    });
  });

  unittest.group('obj-schema-ComputeEnginePreferences', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeEnginePreferences();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeEnginePreferences.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkComputeEnginePreferences(od);
    });
  });

  unittest.group('obj-schema-ComputeEngineShapeDescriptor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeEngineShapeDescriptor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeEngineShapeDescriptor.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkComputeEngineShapeDescriptor(od);
    });
  });

  unittest.group('obj-schema-ComputeEngineSoleTenantMigrationTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeEngineSoleTenantMigrationTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeEngineSoleTenantMigrationTarget.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkComputeEngineSoleTenantMigrationTarget(od);
    });
  });

  unittest.group('obj-schema-ComputeStorageDescriptor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeStorageDescriptor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeStorageDescriptor.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkComputeStorageDescriptor(od);
    });
  });

  unittest.group('obj-schema-CpuUsageSample', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCpuUsageSample();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CpuUsageSample.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCpuUsageSample(od);
    });
  });

  unittest.group('obj-schema-CsvOutputFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCsvOutputFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CsvOutputFile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCsvOutputFile(od);
    });
  });

  unittest.group('obj-schema-DailyResourceUsageAggregation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDailyResourceUsageAggregation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DailyResourceUsageAggregation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDailyResourceUsageAggregation(od);
    });
  });

  unittest.group('obj-schema-DailyResourceUsageAggregationCPU', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDailyResourceUsageAggregationCPU();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DailyResourceUsageAggregationCPU.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDailyResourceUsageAggregationCPU(od);
    });
  });

  unittest.group('obj-schema-DailyResourceUsageAggregationDisk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDailyResourceUsageAggregationDisk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DailyResourceUsageAggregationDisk.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDailyResourceUsageAggregationDisk(od);
    });
  });

  unittest.group('obj-schema-DailyResourceUsageAggregationMemory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDailyResourceUsageAggregationMemory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DailyResourceUsageAggregationMemory.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDailyResourceUsageAggregationMemory(od);
    });
  });

  unittest.group('obj-schema-DailyResourceUsageAggregationNetwork', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDailyResourceUsageAggregationNetwork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DailyResourceUsageAggregationNetwork.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDailyResourceUsageAggregationNetwork(od);
    });
  });

  unittest.group('obj-schema-DailyResourceUsageAggregationStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDailyResourceUsageAggregationStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DailyResourceUsageAggregationStats.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDailyResourceUsageAggregationStats(od);
    });
  });

  unittest.group('obj-schema-DatabaseDeploymentDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabaseDeploymentDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabaseDeploymentDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDatabaseDeploymentDetails(od);
    });
  });

  unittest.group('obj-schema-DatabaseDeploymentDetailsAggregatedStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabaseDeploymentDetailsAggregatedStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabaseDeploymentDetailsAggregatedStats.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDatabaseDeploymentDetailsAggregatedStats(od);
    });
  });

  unittest.group('obj-schema-DatabaseDeploymentTopology', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabaseDeploymentTopology();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabaseDeploymentTopology.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDatabaseDeploymentTopology(od);
    });
  });

  unittest.group('obj-schema-DatabaseDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabaseDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabaseDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDatabaseDetails(od);
    });
  });

  unittest.group('obj-schema-DatabaseDetailsParentDatabaseDeployment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabaseDetailsParentDatabaseDeployment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabaseDetailsParentDatabaseDeployment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDatabaseDetailsParentDatabaseDeployment(od);
    });
  });

  unittest.group('obj-schema-DatabaseInstance', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabaseInstance();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabaseInstance.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDatabaseInstance(od);
    });
  });

  unittest.group('obj-schema-DatabaseInstanceNetwork', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabaseInstanceNetwork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabaseInstanceNetwork.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDatabaseInstanceNetwork(od);
    });
  });

  unittest.group('obj-schema-DatabaseObjects', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabaseObjects();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabaseObjects.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDatabaseObjects(od);
    });
  });

  unittest.group('obj-schema-DatabasePreferences', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabasePreferences();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabasePreferences.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDatabasePreferences(od);
    });
  });

  unittest.group('obj-schema-DatabasePreferencesCloudSqlCommon', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabasePreferencesCloudSqlCommon();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabasePreferencesCloudSqlCommon.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDatabasePreferencesCloudSqlCommon(od);
    });
  });

  unittest.group('obj-schema-DatabasePreferencesCloudSqlCommonBackup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabasePreferencesCloudSqlCommonBackup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabasePreferencesCloudSqlCommonBackup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDatabasePreferencesCloudSqlCommonBackup(od);
    });
  });

  unittest.group('obj-schema-DatabasePreferencesCloudSqlMySql', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabasePreferencesCloudSqlMySql();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabasePreferencesCloudSqlMySql.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDatabasePreferencesCloudSqlMySql(od);
    });
  });

  unittest.group('obj-schema-DatabasePreferencesCloudSqlPostgreSql', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabasePreferencesCloudSqlPostgreSql();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabasePreferencesCloudSqlPostgreSql.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDatabasePreferencesCloudSqlPostgreSql(od);
    });
  });

  unittest.group('obj-schema-DatabasePreferencesCloudSqlSqlServer', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabasePreferencesCloudSqlSqlServer();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabasePreferencesCloudSqlSqlServer.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDatabasePreferencesCloudSqlSqlServer(od);
    });
  });

  unittest.group('obj-schema-DatabaseSchema', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatabaseSchema();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatabaseSchema.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDatabaseSchema(od);
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

  unittest.group('obj-schema-DateTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDateTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DateTime.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDateTime(od);
    });
  });

  unittest.group('obj-schema-DetectedSoftware', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDetectedSoftware();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DetectedSoftware.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDetectedSoftware(od);
    });
  });

  unittest.group('obj-schema-DiscoveryClient', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiscoveryClient();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiscoveryClient.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDiscoveryClient(od);
    });
  });

  unittest.group(
    'obj-schema-DiscoveryClientDiscoveryClientRecommendedVersion',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildDiscoveryClientDiscoveryClientRecommendedVersion();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .DiscoveryClientDiscoveryClientRecommendedVersion.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkDiscoveryClientDiscoveryClientRecommendedVersion(od);
      });
    },
  );

  unittest.group('obj-schema-DiskEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiskEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiskEntry.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDiskEntry(od);
    });
  });

  unittest.group('obj-schema-DiskEntryList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiskEntryList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiskEntryList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDiskEntryList(od);
    });
  });

  unittest.group('obj-schema-DiskPartition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiskPartition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiskPartition.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDiskPartition(od);
    });
  });

  unittest.group('obj-schema-DiskPartitionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiskPartitionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiskPartitionDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDiskPartitionDetails(od);
    });
  });

  unittest.group('obj-schema-DiskPartitionList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiskPartitionList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiskPartitionList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDiskPartitionList(od);
    });
  });

  unittest.group('obj-schema-DiskUsageSample', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiskUsageSample();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiskUsageSample.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDiskUsageSample(od);
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

  unittest.group('obj-schema-ErrorFrame', () {
    unittest.test('to-json--from-json', () async {
      final o = buildErrorFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ErrorFrame.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkErrorFrame(od);
    });
  });

  unittest.group('obj-schema-ExecutionReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecutionReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecutionReport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExecutionReport(od);
    });
  });

  unittest.group('obj-schema-FileValidationReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileValidationReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileValidationReport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFileValidationReport(od);
    });
  });

  unittest.group('obj-schema-FitDescriptor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFitDescriptor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FitDescriptor.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFitDescriptor(od);
    });
  });

  unittest.group('obj-schema-FrameViolationEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFrameViolationEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FrameViolationEntry.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFrameViolationEntry(od);
    });
  });

  unittest.group('obj-schema-Frames', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFrames();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Frames.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFrames(od);
    });
  });

  unittest.group('obj-schema-FstabEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFstabEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FstabEntry.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFstabEntry(od);
    });
  });

  unittest.group('obj-schema-FstabEntryList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFstabEntryList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FstabEntryList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFstabEntryList(od);
    });
  });

  unittest.group('obj-schema-GCSPayloadInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGCSPayloadInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GCSPayloadInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGCSPayloadInfo(od);
    });
  });

  unittest.group('obj-schema-GenericInsight', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenericInsight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenericInsight.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenericInsight(od);
    });
  });

  unittest.group('obj-schema-GenericPlatformDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenericPlatformDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenericPlatformDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGenericPlatformDetails(od);
    });
  });

  unittest.group('obj-schema-GoogleKubernetesEngineMigrationTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGoogleKubernetesEngineMigrationTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GoogleKubernetesEngineMigrationTarget.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGoogleKubernetesEngineMigrationTarget(od);
    });
  });

  unittest.group('obj-schema-Group', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Group.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGroup(od);
    });
  });

  unittest.group('obj-schema-GuestConfigDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGuestConfigDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GuestConfigDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGuestConfigDetails(od);
    });
  });

  unittest.group('obj-schema-GuestInstalledApplication', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGuestInstalledApplication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GuestInstalledApplication.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGuestInstalledApplication(od);
    });
  });

  unittest.group('obj-schema-GuestInstalledApplicationList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGuestInstalledApplicationList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GuestInstalledApplicationList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGuestInstalledApplicationList(od);
    });
  });

  unittest.group('obj-schema-GuestOsDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGuestOsDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GuestOsDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGuestOsDetails(od);
    });
  });

  unittest.group('obj-schema-GuestRuntimeDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGuestRuntimeDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GuestRuntimeDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGuestRuntimeDetails(od);
    });
  });

  unittest.group('obj-schema-HostsEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHostsEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HostsEntry.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHostsEntry(od);
    });
  });

  unittest.group('obj-schema-HostsEntryList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHostsEntryList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HostsEntryList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHostsEntryList(od);
    });
  });

  unittest.group('obj-schema-ImportDataFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportDataFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportDataFile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImportDataFile(od);
    });
  });

  unittest.group('obj-schema-ImportError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportError.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImportError(od);
    });
  });

  unittest.group('obj-schema-ImportJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportJob.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImportJob(od);
    });
  });

  unittest.group('obj-schema-ImportRowError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportRowError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportRowError.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImportRowError(od);
    });
  });

  unittest.group('obj-schema-ImportRowErrorArchiveErrorDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportRowErrorArchiveErrorDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportRowErrorArchiveErrorDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImportRowErrorArchiveErrorDetails(od);
    });
  });

  unittest.group('obj-schema-ImportRowErrorCsvErrorDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportRowErrorCsvErrorDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportRowErrorCsvErrorDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImportRowErrorCsvErrorDetails(od);
    });
  });

  unittest.group('obj-schema-ImportRowErrorXlsxErrorDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportRowErrorXlsxErrorDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportRowErrorXlsxErrorDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkImportRowErrorXlsxErrorDetails(od);
    });
  });

  unittest.group('obj-schema-InlinePayloadInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInlinePayloadInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InlinePayloadInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInlinePayloadInfo(od);
    });
  });

  unittest.group('obj-schema-Insight', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Insight.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInsight(od);
    });
  });

  unittest.group('obj-schema-InsightList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsightList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsightList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInsightList(od);
    });
  });

  unittest.group('obj-schema-Issue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Issue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIssue(od);
    });
  });

  unittest.group('obj-schema-IssueCompatibilityIssue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIssueCompatibilityIssue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IssueCompatibilityIssue.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIssueCompatibilityIssue(od);
    });
  });

  unittest.group('obj-schema-ListAssetsExportJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAssetsExportJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAssetsExportJobsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAssetsExportJobsResponse(od);
    });
  });

  unittest.group('obj-schema-ListAssetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAssetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAssetsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAssetsResponse(od);
    });
  });

  unittest.group('obj-schema-ListDiscoveryClientsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDiscoveryClientsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDiscoveryClientsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListDiscoveryClientsResponse(od);
    });
  });

  unittest.group('obj-schema-ListErrorFramesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListErrorFramesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListErrorFramesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListErrorFramesResponse(od);
    });
  });

  unittest.group('obj-schema-ListGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGroupsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-ListImportDataFilesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListImportDataFilesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListImportDataFilesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListImportDataFilesResponse(od);
    });
  });

  unittest.group('obj-schema-ListImportJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListImportJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListImportJobsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListImportJobsResponse(od);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListPreferenceSetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPreferenceSetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPreferenceSetsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListPreferenceSetsResponse(od);
    });
  });

  unittest.group('obj-schema-ListRelationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListRelationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListRelationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListRelationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListReportConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListReportConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListReportConfigsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListReportConfigsResponse(od);
    });
  });

  unittest.group('obj-schema-ListReportsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListReportsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListReportsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListReportsResponse(od);
    });
  });

  unittest.group('obj-schema-ListSourcesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSourcesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSourcesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListSourcesResponse(od);
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

  unittest.group('obj-schema-MachineArchitectureDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMachineArchitectureDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MachineArchitectureDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMachineArchitectureDetails(od);
    });
  });

  unittest.group('obj-schema-MachineDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMachineDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MachineDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMachineDetails(od);
    });
  });

  unittest.group('obj-schema-MachineDiskDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMachineDiskDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MachineDiskDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMachineDiskDetails(od);
    });
  });

  unittest.group('obj-schema-MachineNetworkDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMachineNetworkDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MachineNetworkDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMachineNetworkDetails(od);
    });
  });

  unittest.group('obj-schema-MachinePreferences', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMachinePreferences();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MachinePreferences.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMachinePreferences(od);
    });
  });

  unittest.group('obj-schema-MachineSeries', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMachineSeries();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MachineSeries.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMachineSeries(od);
    });
  });

  unittest.group('obj-schema-MemoryUsageSample', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMemoryUsageSample();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MemoryUsageSample.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMemoryUsageSample(od);
    });
  });

  unittest.group('obj-schema-MigrationInsight', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMigrationInsight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MigrationInsight.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMigrationInsight(od);
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

  unittest.group('obj-schema-MySqlPlugin', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMySqlPlugin();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MySqlPlugin.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMySqlPlugin(od);
    });
  });

  unittest.group('obj-schema-MySqlProperty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMySqlProperty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MySqlProperty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMySqlProperty(od);
    });
  });

  unittest.group('obj-schema-MySqlSchemaDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMySqlSchemaDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MySqlSchemaDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMySqlSchemaDetails(od);
    });
  });

  unittest.group('obj-schema-MySqlStorageEngineDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMySqlStorageEngineDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MySqlStorageEngineDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMySqlStorageEngineDetails(od);
    });
  });

  unittest.group('obj-schema-MySqlVariable', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMySqlVariable();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MySqlVariable.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMySqlVariable(od);
    });
  });

  unittest.group('obj-schema-MysqlDatabaseDeployment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMysqlDatabaseDeployment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MysqlDatabaseDeployment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMysqlDatabaseDeployment(od);
    });
  });

  unittest.group('obj-schema-NetworkAdapterDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkAdapterDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkAdapterDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNetworkAdapterDetails(od);
    });
  });

  unittest.group('obj-schema-NetworkAdapterList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkAdapterList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkAdapterList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNetworkAdapterList(od);
    });
  });

  unittest.group('obj-schema-NetworkAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkAddress.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNetworkAddress(od);
    });
  });

  unittest.group('obj-schema-NetworkAddressList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkAddressList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkAddressList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNetworkAddressList(od);
    });
  });

  unittest.group('obj-schema-NetworkConnection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkConnection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkConnection.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNetworkConnection(od);
    });
  });

  unittest.group('obj-schema-NetworkConnectionList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkConnectionList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkConnectionList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNetworkConnectionList(od);
    });
  });

  unittest.group('obj-schema-NetworkUsageSample', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkUsageSample();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkUsageSample.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNetworkUsageSample(od);
    });
  });

  unittest.group('obj-schema-NfsExport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNfsExport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NfsExport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNfsExport(od);
    });
  });

  unittest.group('obj-schema-NfsExportList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNfsExportList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NfsExportList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNfsExportList(od);
    });
  });

  unittest.group('obj-schema-OpenFileDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOpenFileDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OpenFileDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOpenFileDetails(od);
    });
  });

  unittest.group('obj-schema-OpenFileList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOpenFileList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OpenFileList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOpenFileList(od);
    });
  });

  unittest.group('obj-schema-OperatingSystemPricingPreferences', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperatingSystemPricingPreferences();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OperatingSystemPricingPreferences.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOperatingSystemPricingPreferences(od);
    });
  });

  unittest.group(
    'obj-schema-OperatingSystemPricingPreferencesOperatingSystemPricing',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildOperatingSystemPricingPreferencesOperatingSystemPricing();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .OperatingSystemPricingPreferencesOperatingSystemPricing.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkOperatingSystemPricingPreferencesOperatingSystemPricing(od);
      });
    },
  );

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

  unittest.group('obj-schema-OutputFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOutputFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OutputFile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOutputFile(od);
    });
  });

  unittest.group('obj-schema-OutputFileList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOutputFileList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OutputFileList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOutputFileList(od);
    });
  });

  unittest.group('obj-schema-PayloadFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPayloadFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PayloadFile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPayloadFile(od);
    });
  });

  unittest.group('obj-schema-PerformanceSample', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPerformanceSample();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PerformanceSample.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPerformanceSample(od);
    });
  });

  unittest.group('obj-schema-PhysicalPlatformDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPhysicalPlatformDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PhysicalPlatformDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPhysicalPlatformDetails(od);
    });
  });

  unittest.group('obj-schema-PlatformDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlatformDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlatformDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPlatformDetails(od);
    });
  });

  unittest.group('obj-schema-PostgreSqlDatabaseDeployment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostgreSqlDatabaseDeployment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostgreSqlDatabaseDeployment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPostgreSqlDatabaseDeployment(od);
    });
  });

  unittest.group('obj-schema-PostgreSqlExtension', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostgreSqlExtension();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostgreSqlExtension.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPostgreSqlExtension(od);
    });
  });

  unittest.group('obj-schema-PostgreSqlProperty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostgreSqlProperty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostgreSqlProperty.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPostgreSqlProperty(od);
    });
  });

  unittest.group('obj-schema-PostgreSqlSchemaDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostgreSqlSchemaDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostgreSqlSchemaDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPostgreSqlSchemaDetails(od);
    });
  });

  unittest.group('obj-schema-PostgreSqlSetting', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPostgreSqlSetting();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PostgreSqlSetting.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPostgreSqlSetting(od);
    });
  });

  unittest.group('obj-schema-PreferenceSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPreferenceSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PreferenceSet.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPreferenceSet(od);
    });
  });

  unittest.group('obj-schema-RegionPreferences', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegionPreferences();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegionPreferences.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRegionPreferences(od);
    });
  });

  unittest.group('obj-schema-Relation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRelation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Relation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRelation(od);
    });
  });

  unittest.group('obj-schema-RemoveAssetsFromGroupRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveAssetsFromGroupRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveAssetsFromGroupRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRemoveAssetsFromGroupRequest(od);
    });
  });

  unittest.group('obj-schema-Report', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Report.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReport(od);
    });
  });

  unittest.group('obj-schema-ReportAssetFramesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportAssetFramesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportAssetFramesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReportAssetFramesResponse(od);
    });
  });

  unittest.group('obj-schema-ReportConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReportConfig(od);
    });
  });

  unittest.group('obj-schema-ReportConfigGroupPreferenceSetAssignment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportConfigGroupPreferenceSetAssignment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportConfigGroupPreferenceSetAssignment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReportConfigGroupPreferenceSetAssignment(od);
    });
  });

  unittest.group('obj-schema-ReportSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReportSummary(od);
    });
  });

  unittest.group('obj-schema-ReportSummaryAssetAggregateStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummaryAssetAggregateStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummaryAssetAggregateStats.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReportSummaryAssetAggregateStats(od);
    });
  });

  unittest.group('obj-schema-ReportSummaryChartData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummaryChartData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummaryChartData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReportSummaryChartData(od);
    });
  });

  unittest.group('obj-schema-ReportSummaryChartDataDataPoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummaryChartDataDataPoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummaryChartDataDataPoint.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReportSummaryChartDataDataPoint(od);
    });
  });

  unittest.group('obj-schema-ReportSummaryDatabaseFinding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummaryDatabaseFinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummaryDatabaseFinding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReportSummaryDatabaseFinding(od);
    });
  });

  unittest.group('obj-schema-ReportSummaryGroupFinding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummaryGroupFinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummaryGroupFinding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReportSummaryGroupFinding(od);
    });
  });

  unittest.group('obj-schema-ReportSummaryGroupPreferenceSetFinding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummaryGroupPreferenceSetFinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummaryGroupPreferenceSetFinding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReportSummaryGroupPreferenceSetFinding(od);
    });
  });

  unittest.group('obj-schema-ReportSummaryHistogramChartData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummaryHistogramChartData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummaryHistogramChartData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReportSummaryHistogramChartData(od);
    });
  });

  unittest.group('obj-schema-ReportSummaryHistogramChartDataBucket', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummaryHistogramChartDataBucket();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummaryHistogramChartDataBucket.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReportSummaryHistogramChartDataBucket(od);
    });
  });

  unittest.group('obj-schema-ReportSummaryMachineFinding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummaryMachineFinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummaryMachineFinding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReportSummaryMachineFinding(od);
    });
  });

  unittest.group('obj-schema-ReportSummaryMachineSeriesAllocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummaryMachineSeriesAllocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummaryMachineSeriesAllocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReportSummaryMachineSeriesAllocation(od);
    });
  });

  unittest.group('obj-schema-ReportSummarySoleTenantFinding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummarySoleTenantFinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummarySoleTenantFinding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReportSummarySoleTenantFinding(od);
    });
  });

  unittest.group('obj-schema-ReportSummarySoleTenantNodeAllocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummarySoleTenantNodeAllocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummarySoleTenantNodeAllocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReportSummarySoleTenantNodeAllocation(od);
    });
  });

  unittest.group('obj-schema-ReportSummaryUtilizationChartData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummaryUtilizationChartData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummaryUtilizationChartData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReportSummaryUtilizationChartData(od);
    });
  });

  unittest.group('obj-schema-ReportSummaryVMWareEngineFinding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummaryVMWareEngineFinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummaryVMWareEngineFinding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReportSummaryVMWareEngineFinding(od);
    });
  });

  unittest.group('obj-schema-ReportSummaryVMWareNode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummaryVMWareNode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummaryVMWareNode.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReportSummaryVMWareNode(od);
    });
  });

  unittest.group('obj-schema-ReportSummaryVMWareNodeAllocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummaryVMWareNodeAllocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummaryVMWareNodeAllocation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReportSummaryVMWareNodeAllocation(od);
    });
  });

  unittest.group('obj-schema-RunAssetsExportJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunAssetsExportJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunAssetsExportJobRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRunAssetsExportJobRequest(od);
    });
  });

  unittest.group('obj-schema-RunImportJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunImportJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunImportJobRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRunImportJobRequest(od);
    });
  });

  unittest.group('obj-schema-RunningProcess', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunningProcess();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunningProcess.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRunningProcess(od);
    });
  });

  unittest.group('obj-schema-RunningProcessList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunningProcessList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunningProcessList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRunningProcessList(od);
    });
  });

  unittest.group('obj-schema-RunningService', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunningService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunningService.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRunningService(od);
    });
  });

  unittest.group('obj-schema-RunningServiceList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunningServiceList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunningServiceList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRunningServiceList(od);
    });
  });

  unittest.group('obj-schema-RuntimeNetworkInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRuntimeNetworkInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RuntimeNetworkInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRuntimeNetworkInfo(od);
    });
  });

  unittest.group('obj-schema-Selinux', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSelinux();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Selinux.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSelinux(od);
    });
  });

  unittest.group('obj-schema-SendDiscoveryClientHeartbeatRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSendDiscoveryClientHeartbeatRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SendDiscoveryClientHeartbeatRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSendDiscoveryClientHeartbeatRequest(od);
    });
  });

  unittest.group('obj-schema-Settings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Settings.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSettings(od);
    });
  });

  unittest.group('obj-schema-SignedUri', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSignedUri();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SignedUri.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSignedUri(od);
    });
  });

  unittest.group('obj-schema-SignedUriDestination', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSignedUriDestination();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SignedUriDestination.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSignedUriDestination(od);
    });
  });

  unittest.group('obj-schema-SignedUris', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSignedUris();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SignedUris.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSignedUris(od);
    });
  });

  unittest.group('obj-schema-SoftwareInsight', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSoftwareInsight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SoftwareInsight.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSoftwareInsight(od);
    });
  });

  unittest.group('obj-schema-SoleTenancyPreferences', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSoleTenancyPreferences();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SoleTenancyPreferences.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSoleTenancyPreferences(od);
    });
  });

  unittest.group('obj-schema-SoleTenantNodeType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSoleTenantNodeType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SoleTenantNodeType.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSoleTenantNodeType(od);
    });
  });

  unittest.group('obj-schema-Source', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Source.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSource(od);
    });
  });

  unittest.group('obj-schema-SqlServerDatabaseDeployment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlServerDatabaseDeployment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlServerDatabaseDeployment.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSqlServerDatabaseDeployment(od);
    });
  });

  unittest.group('obj-schema-SqlServerFeature', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlServerFeature();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlServerFeature.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSqlServerFeature(od);
    });
  });

  unittest.group('obj-schema-SqlServerSchemaDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlServerSchemaDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlServerSchemaDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSqlServerSchemaDetails(od);
    });
  });

  unittest.group('obj-schema-SqlServerServerFlag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlServerServerFlag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlServerServerFlag.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSqlServerServerFlag(od);
    });
  });

  unittest.group('obj-schema-SqlServerTraceFlag', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlServerTraceFlag();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlServerTraceFlag.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSqlServerTraceFlag(od);
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

  unittest.group('obj-schema-TimeZone', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTimeZone();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TimeZone.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTimeZone(od);
    });
  });

  unittest.group('obj-schema-UpdateAssetRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateAssetRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateAssetRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUpdateAssetRequest(od);
    });
  });

  unittest.group('obj-schema-UploadFileInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUploadFileInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UploadFileInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUploadFileInfo(od);
    });
  });

  unittest.group('obj-schema-VMwareEngineMachinePreferences', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVMwareEngineMachinePreferences();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VMwareEngineMachinePreferences.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVMwareEngineMachinePreferences(od);
    });
  });

  unittest.group('obj-schema-ValidateImportJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValidateImportJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValidateImportJobRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkValidateImportJobRequest(od);
    });
  });

  unittest.group('obj-schema-ValidationReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValidationReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValidationReport.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkValidationReport(od);
    });
  });

  unittest.group('obj-schema-VirtualMachineArchitectureDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVirtualMachineArchitectureDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VirtualMachineArchitectureDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVirtualMachineArchitectureDetails(od);
    });
  });

  unittest.group('obj-schema-VirtualMachineDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVirtualMachineDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VirtualMachineDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVirtualMachineDetails(od);
    });
  });

  unittest.group('obj-schema-VirtualMachineDiskDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVirtualMachineDiskDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VirtualMachineDiskDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVirtualMachineDiskDetails(od);
    });
  });

  unittest.group('obj-schema-VirtualMachineNetworkDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVirtualMachineNetworkDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VirtualMachineNetworkDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVirtualMachineNetworkDetails(od);
    });
  });

  unittest.group('obj-schema-VirtualMachinePreferences', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVirtualMachinePreferences();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VirtualMachinePreferences.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVirtualMachinePreferences(od);
    });
  });

  unittest.group(
    'obj-schema-VirtualMachinePreferencesNetworkCostParameters',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildVirtualMachinePreferencesNetworkCostParameters();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.VirtualMachinePreferencesNetworkCostParameters.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkVirtualMachinePreferencesNetworkCostParameters(od);
      });
    },
  );

  unittest.group(
    'obj-schema-VirtualMachinePreferencesSizingOptimizationCustomParameters',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildVirtualMachinePreferencesSizingOptimizationCustomParameters();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api
            .VirtualMachinePreferencesSizingOptimizationCustomParameters.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkVirtualMachinePreferencesSizingOptimizationCustomParameters(od);
      });
    },
  );

  unittest.group('obj-schema-VmwareEngineMigrationTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareEngineMigrationTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareEngineMigrationTarget.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVmwareEngineMigrationTarget(od);
    });
  });

  unittest.group('obj-schema-VmwareEnginePreferences', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareEnginePreferences();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareEnginePreferences.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVmwareEnginePreferences(od);
    });
  });

  unittest.group('obj-schema-VmwarePlatformDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwarePlatformDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwarePlatformDetails.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVmwarePlatformDetails(od);
    });
  });

  unittest.group('obj-schema-XlsxOutputFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildXlsxOutputFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.XlsxOutputFile.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkXlsxOutputFile(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations;
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
          final resp = convert.json.encode(buildLocation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--getSettings', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations;
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
          final resp = convert.json.encode(buildSettings());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getSettings(arg_name, $fields: arg_$fields);
      checkSettings(response as api.Settings);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations;
      final arg_name = 'foo';
      final arg_extraLocationTypes = buildUnnamed119();
      final arg_filter = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            queryMap['extraLocationTypes']!,
            unittest.equals(arg_extraLocationTypes),
          );
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListLocationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        extraLocationTypes: arg_extraLocationTypes,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListLocationsResponse(response as api.ListLocationsResponse);
    });

    unittest.test('method--updateSettings', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations;
      final arg_request = buildSettings();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Settings.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSettings(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
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
      final response = await res.updateSettings(
        arg_request,
        arg_name,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsAssetsResource', () {
    unittest.test('method--aggregateValues', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.assets;
      final arg_request = buildAggregateAssetsValuesRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AggregateAssetsValuesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAggregateAssetsValuesRequest(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
          final resp = convert.json.encode(
            buildAggregateAssetsValuesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.aggregateValues(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkAggregateAssetsValuesResponse(
        response as api.AggregateAssetsValuesResponse,
      );
    });

    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.assets;
      final arg_request = buildBatchDeleteAssetsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BatchDeleteAssetsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBatchDeleteAssetsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchDelete(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--batchUpdate', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.assets;
      final arg_request = buildBatchUpdateAssetsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.BatchUpdateAssetsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBatchUpdateAssetsRequest(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
          final resp = convert.json.encode(buildBatchUpdateAssetsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.batchUpdate(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkBatchUpdateAssetsResponse(response as api.BatchUpdateAssetsResponse);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.assets;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.assets;
      final arg_name = 'foo';
      final arg_view = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAsset());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkAsset(response as api.Asset);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.assets;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_showHidden = true;
      final arg_view = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            queryMap['showHidden']!.first,
            unittest.equals('$arg_showHidden'),
          );
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListAssetsResponse());
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
        showHidden: arg_showHidden,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkListAssetsResponse(response as api.ListAssetsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.assets;
      final arg_request = buildAsset();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Asset.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAsset(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAsset());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkAsset(response as api.Asset);
    });

    unittest.test('method--reportAssetFrames', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.assets;
      final arg_request = buildFrames();
      final arg_parent = 'foo';
      final arg_source = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Frames.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkFrames(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            queryMap['source']!.first,
            unittest.equals(arg_source),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildReportAssetFramesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.reportAssetFrames(
        arg_request,
        arg_parent,
        source: arg_source,
        $fields: arg_$fields,
      );
      checkReportAssetFramesResponse(response as api.ReportAssetFramesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsAssetsExportJobsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(mock).projects.locations.assetsExportJobs;
      final arg_request = buildAssetsExportJob();
      final arg_parent = 'foo';
      final arg_assetsExportJobId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AssetsExportJob.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAssetsExportJob(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            queryMap['assetsExportJobId']!.first,
            unittest.equals(arg_assetsExportJobId),
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        assetsExportJobId: arg_assetsExportJobId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(mock).projects.locations.assetsExportJobs;
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(mock).projects.locations.assetsExportJobs;
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
          final resp = convert.json.encode(buildAssetsExportJob());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAssetsExportJob(response as api.AssetsExportJob);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(mock).projects.locations.assetsExportJobs;
      final arg_parent = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListAssetsExportJobsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListAssetsExportJobsResponse(
        response as api.ListAssetsExportJobsResponse,
      );
    });

    unittest.test('method--run', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(mock).projects.locations.assetsExportJobs;
      final arg_request = buildRunAssetsExportJobRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RunAssetsExportJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRunAssetsExportJobRequest(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
      final response = await res.run(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsDiscoveryClientsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(mock).projects.locations.discoveryClients;
      final arg_request = buildDiscoveryClient();
      final arg_parent = 'foo';
      final arg_discoveryClientId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DiscoveryClient.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDiscoveryClient(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            queryMap['discoveryClientId']!.first,
            unittest.equals(arg_discoveryClientId),
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        discoveryClientId: arg_discoveryClientId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(mock).projects.locations.discoveryClients;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(mock).projects.locations.discoveryClients;
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
          final resp = convert.json.encode(buildDiscoveryClient());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkDiscoveryClient(response as api.DiscoveryClient);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(mock).projects.locations.discoveryClients;
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
          final resp = convert.json.encode(buildListDiscoveryClientsResponse());
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
      checkListDiscoveryClientsResponse(
        response as api.ListDiscoveryClientsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(mock).projects.locations.discoveryClients;
      final arg_request = buildDiscoveryClient();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DiscoveryClient.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDiscoveryClient(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
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
      final response = await res.patch(
        arg_request,
        arg_name,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--sendHeartbeat', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(mock).projects.locations.discoveryClients;
      final arg_request = buildSendDiscoveryClientHeartbeatRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SendDiscoveryClientHeartbeatRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSendDiscoveryClientHeartbeatRequest(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
      final response = await res.sendHeartbeat(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsGroupsResource', () {
    unittest.test('method--addAssets', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.groups;
      final arg_request = buildAddAssetsToGroupRequest();
      final arg_group = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AddAssetsToGroupRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAddAssetsToGroupRequest(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
      final response = await res.addAssets(
        arg_request,
        arg_group,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.groups;
      final arg_request = buildGroup();
      final arg_parent = 'foo';
      final arg_groupId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Group.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGroup(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            queryMap['requestId']!.first,
            unittest.equals(arg_requestId),
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
        groupId: arg_groupId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.groups;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.groups;
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
          final resp = convert.json.encode(buildGroup());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkGroup(response as api.Group);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.groups;
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
          final resp = convert.json.encode(buildListGroupsResponse());
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
      checkListGroupsResponse(response as api.ListGroupsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.groups;
      final arg_request = buildGroup();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Group.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGroup(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
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
      final response = await res.patch(
        arg_request,
        arg_name,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--removeAssets', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.groups;
      final arg_request = buildRemoveAssetsFromGroupRequest();
      final arg_group = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RemoveAssetsFromGroupRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRemoveAssetsFromGroupRequest(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
      final response = await res.removeAssets(
        arg_request,
        arg_group,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsImportJobsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.importJobs;
      final arg_request = buildImportJob();
      final arg_parent = 'foo';
      final arg_importJobId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ImportJob.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkImportJob(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            queryMap['importJobId']!.first,
            unittest.equals(arg_importJobId),
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        importJobId: arg_importJobId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.importJobs;
      final arg_name = 'foo';
      final arg_force = true;
      final arg_requestId = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        force: arg_force,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.importJobs;
      final arg_name = 'foo';
      final arg_view = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildImportJob());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkImportJob(response as api.ImportJob);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.importJobs;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListImportJobsResponse());
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
        view: arg_view,
        $fields: arg_$fields,
      );
      checkListImportJobsResponse(response as api.ListImportJobsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.importJobs;
      final arg_request = buildImportJob();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ImportJob.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkImportJob(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
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
      final response = await res.patch(
        arg_request,
        arg_name,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--run', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.importJobs;
      final arg_request = buildRunImportJobRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RunImportJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRunImportJobRequest(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
      final response = await res.run(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--validate', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.importJobs;
      final arg_request = buildValidateImportJobRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ValidateImportJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkValidateImportJobRequest(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
      final response = await res.validate(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsImportJobsImportDataFilesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(
            mock,
          ).projects.locations.importJobs.importDataFiles;
      final arg_request = buildImportDataFile();
      final arg_parent = 'foo';
      final arg_importDataFileId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ImportDataFile.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkImportDataFile(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            queryMap['importDataFileId']!.first,
            unittest.equals(arg_importDataFileId),
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        importDataFileId: arg_importDataFileId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(
            mock,
          ).projects.locations.importJobs.importDataFiles;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(
            mock,
          ).projects.locations.importJobs.importDataFiles;
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
          final resp = convert.json.encode(buildImportDataFile());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkImportDataFile(response as api.ImportDataFile);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(
            mock,
          ).projects.locations.importJobs.importDataFiles;
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
          final resp = convert.json.encode(buildListImportDataFilesResponse());
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
      checkListImportDataFilesResponse(
        response as api.ListImportDataFilesResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCancelOperationRequest(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.operations;
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.operations;
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.operations;
      final arg_name = 'foo';
      final arg_filter = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListOperationsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_name,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListOperationsResponse(response as api.ListOperationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsPreferenceSetsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(mock).projects.locations.preferenceSets;
      final arg_request = buildPreferenceSet();
      final arg_parent = 'foo';
      final arg_preferenceSetId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.PreferenceSet.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPreferenceSet(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            queryMap['preferenceSetId']!.first,
            unittest.equals(arg_preferenceSetId),
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        preferenceSetId: arg_preferenceSetId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(mock).projects.locations.preferenceSets;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(mock).projects.locations.preferenceSets;
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
          final resp = convert.json.encode(buildPreferenceSet());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkPreferenceSet(response as api.PreferenceSet);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(mock).projects.locations.preferenceSets;
      final arg_parent = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
          final resp = convert.json.encode(buildListPreferenceSetsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        orderBy: arg_orderBy,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListPreferenceSetsResponse(
        response as api.ListPreferenceSetsResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(mock).projects.locations.preferenceSets;
      final arg_request = buildPreferenceSet();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.PreferenceSet.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkPreferenceSet(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
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
      final response = await res.patch(
        arg_request,
        arg_name,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsRelationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.relations;
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
          final resp = convert.json.encode(buildRelation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkRelation(response as api.Relation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.relations;
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
          final resp = convert.json.encode(buildListRelationsResponse());
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
      checkListRelationsResponse(response as api.ListRelationsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsReportConfigsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.reportConfigs;
      final arg_request = buildReportConfig();
      final arg_parent = 'foo';
      final arg_reportConfigId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ReportConfig.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkReportConfig(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            queryMap['reportConfigId']!.first,
            unittest.equals(arg_reportConfigId),
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        reportConfigId: arg_reportConfigId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.reportConfigs;
      final arg_name = 'foo';
      final arg_force = true;
      final arg_requestId = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            queryMap['force']!.first,
            unittest.equals('$arg_force'),
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        force: arg_force,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.reportConfigs;
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
          final resp = convert.json.encode(buildReportConfig());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkReportConfig(response as api.ReportConfig);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.reportConfigs;
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
          final resp = convert.json.encode(buildListReportConfigsResponse());
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
      checkListReportConfigsResponse(response as api.ListReportConfigsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsReportConfigsReportsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(mock).projects.locations.reportConfigs.reports;
      final arg_request = buildReport();
      final arg_parent = 'foo';
      final arg_reportId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Report.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkReport(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            queryMap['reportId']!.first,
            unittest.equals(arg_reportId),
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
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        reportId: arg_reportId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(mock).projects.locations.reportConfigs.reports;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(mock).projects.locations.reportConfigs.reports;
      final arg_name = 'foo';
      final arg_view = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildReport());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkReport(response as api.Report);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(mock).projects.locations.reportConfigs.reports;
      final arg_parent = 'foo';
      final arg_filter = 'foo';
      final arg_orderBy = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListReportsResponse());
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
        view: arg_view,
        $fields: arg_$fields,
      );
      checkListReportsResponse(response as api.ListReportsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsSourcesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.sources;
      final arg_request = buildSource();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_sourceId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Source.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSource(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            queryMap['sourceId']!.first,
            unittest.equals(arg_sourceId),
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
        sourceId: arg_sourceId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.sources;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.delete(
        arg_name,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.sources;
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
          final resp = convert.json.encode(buildSource());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSource(response as api.Source);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.sources;
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
          final resp = convert.json.encode(buildListSourcesResponse());
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
      checkListSourcesResponse(response as api.ListSourcesResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.sources;
      final arg_request = buildSource();
      final arg_name = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Source.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSource(obj);

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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
            queryMap['updateMask']!.first,
            unittest.equals(arg_updateMask),
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
      final response = await res.patch(
        arg_request,
        arg_name,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsSourcesErrorFramesResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(mock).projects.locations.sources.errorFrames;
      final arg_name = 'foo';
      final arg_view = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildErrorFrame());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkErrorFrame(response as api.ErrorFrame);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(mock).projects.locations.sources.errorFrames;
      final arg_parent = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('v1alpha1/'),
          );
          pathOffset += 9;
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
          unittest.expect(queryMap['view']!.first, unittest.equals(arg_view));
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListErrorFramesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        view: arg_view,
        $fields: arg_$fields,
      );
      checkListErrorFramesResponse(response as api.ListErrorFramesResponse);
    });
  });
}
