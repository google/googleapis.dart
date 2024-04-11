// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_const_declarations
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: unreachable_from_main
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:googleapis/migrationcenter/v1.dart' as api;
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
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
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
  }
  buildCounterAggregateAssetsValuesRequest--;
  return o;
}

void checkAggregateAssetsValuesRequest(api.AggregateAssetsValuesRequest o) {
  buildCounterAggregateAssetsValuesRequest++;
  if (buildCounterAggregateAssetsValuesRequest < 3) {
    checkUnnamed0(o.aggregations!);
    unittest.expect(
      o.filter!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.field!,
      unittest.equals('foo'),
    );
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

core.List<core.double> buildUnnamed2() => [
      42.0,
      42.0,
    ];

void checkUnnamed2(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o[0],
    unittest.equals(42.0),
  );
  unittest.expect(
    o[1],
    unittest.equals(42.0),
  );
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
    unittest.expect(
      o.field!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterAggregationResultCount--;
}

core.Map<core.String, core.String> buildUnnamed3() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed3(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
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
    api.AggregationResultHistogramBucket o) {
  buildCounterAggregationResultHistogramBucket++;
  if (buildCounterAggregationResultHistogramBucket < 3) {
    unittest.expect(
      o.count!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lowerBound!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.upperBound!,
      unittest.equals(42.0),
    );
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
    unittest.expect(
      o.value!,
      unittest.equals(42.0),
    );
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

core.Map<core.String, core.String> buildUnnamed6() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed6(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.String> buildUnnamed7() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed7(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
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

core.int buildCounterAsset = 0;
api.Asset buildAsset() {
  final o = api.Asset();
  buildCounterAsset++;
  if (buildCounterAsset < 3) {
    o.assignedGroups = buildUnnamed5();
    o.attributes = buildUnnamed6();
    o.createTime = 'foo';
    o.insightList = buildInsightList();
    o.labels = buildUnnamed7();
    o.machineDetails = buildMachineDetails();
    o.name = 'foo';
    o.performanceData = buildAssetPerformanceData();
    o.sources = buildUnnamed8();
    o.updateTime = 'foo';
  }
  buildCounterAsset--;
  return o;
}

void checkAsset(api.Asset o) {
  buildCounterAsset++;
  if (buildCounterAsset < 3) {
    checkUnnamed5(o.assignedGroups!);
    checkUnnamed6(o.attributes!);
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkInsightList(o.insightList!);
    checkUnnamed7(o.labels!);
    checkMachineDetails(o.machineDetails!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkAssetPerformanceData(o.performanceData!);
    checkUnnamed8(o.sources!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterAsset--;
}

core.Map<core.String, core.String> buildUnnamed9() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed9(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.String> buildUnnamed10() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed10(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
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
    o.labels = buildUnnamed10();
    o.machineDetails = buildMachineDetails();
    o.performanceSamples = buildUnnamed11();
    o.reportTime = 'foo';
    o.traceToken = 'foo';
  }
  buildCounterAssetFrame--;
  return o;
}

void checkAssetFrame(api.AssetFrame o) {
  buildCounterAssetFrame++;
  if (buildCounterAssetFrame < 3) {
    checkUnnamed9(o.attributes!);
    unittest.expect(
      o.collectionType!,
      unittest.equals('foo'),
    );
    checkUnnamed10(o.labels!);
    checkMachineDetails(o.machineDetails!);
    checkUnnamed11(o.performanceSamples!);
    unittest.expect(
      o.reportTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.traceToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterAssetFrame--;
}

core.List<core.String> buildUnnamed12() => [
      'foo',
      'foo',
    ];

void checkUnnamed12(core.List<core.String> o) {
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

core.int buildCounterAwsEc2PlatformDetails = 0;
api.AwsEc2PlatformDetails buildAwsEc2PlatformDetails() {
  final o = api.AwsEc2PlatformDetails();
  buildCounterAwsEc2PlatformDetails++;
  if (buildCounterAwsEc2PlatformDetails < 3) {
    o.location = 'foo';
    o.machineTypeLabel = 'foo';
  }
  buildCounterAwsEc2PlatformDetails--;
  return o;
}

void checkAwsEc2PlatformDetails(api.AwsEc2PlatformDetails o) {
  buildCounterAwsEc2PlatformDetails++;
  if (buildCounterAwsEc2PlatformDetails < 3) {
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.machineTypeLabel!,
      unittest.equals('foo'),
    );
  }
  buildCounterAwsEc2PlatformDetails--;
}

core.int buildCounterAzureVmPlatformDetails = 0;
api.AzureVmPlatformDetails buildAzureVmPlatformDetails() {
  final o = api.AzureVmPlatformDetails();
  buildCounterAzureVmPlatformDetails++;
  if (buildCounterAzureVmPlatformDetails < 3) {
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
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.machineTypeLabel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.provisioningState!,
      unittest.equals('foo'),
    );
  }
  buildCounterAzureVmPlatformDetails--;
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

core.int buildCounterBatchDeleteAssetsRequest = 0;
api.BatchDeleteAssetsRequest buildBatchDeleteAssetsRequest() {
  final o = api.BatchDeleteAssetsRequest();
  buildCounterBatchDeleteAssetsRequest++;
  if (buildCounterBatchDeleteAssetsRequest < 3) {
    o.allowMissing = true;
    o.names = buildUnnamed14();
  }
  buildCounterBatchDeleteAssetsRequest--;
  return o;
}

void checkBatchDeleteAssetsRequest(api.BatchDeleteAssetsRequest o) {
  buildCounterBatchDeleteAssetsRequest++;
  if (buildCounterBatchDeleteAssetsRequest < 3) {
    unittest.expect(o.allowMissing!, unittest.isTrue);
    checkUnnamed14(o.names!);
  }
  buildCounterBatchDeleteAssetsRequest--;
}

core.List<api.UpdateAssetRequest> buildUnnamed15() => [
      buildUpdateAssetRequest(),
      buildUpdateAssetRequest(),
    ];

void checkUnnamed15(core.List<api.UpdateAssetRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUpdateAssetRequest(o[0]);
  checkUpdateAssetRequest(o[1]);
}

core.int buildCounterBatchUpdateAssetsRequest = 0;
api.BatchUpdateAssetsRequest buildBatchUpdateAssetsRequest() {
  final o = api.BatchUpdateAssetsRequest();
  buildCounterBatchUpdateAssetsRequest++;
  if (buildCounterBatchUpdateAssetsRequest < 3) {
    o.requests = buildUnnamed15();
  }
  buildCounterBatchUpdateAssetsRequest--;
  return o;
}

void checkBatchUpdateAssetsRequest(api.BatchUpdateAssetsRequest o) {
  buildCounterBatchUpdateAssetsRequest++;
  if (buildCounterBatchUpdateAssetsRequest < 3) {
    checkUnnamed15(o.requests!);
  }
  buildCounterBatchUpdateAssetsRequest--;
}

core.List<api.Asset> buildUnnamed16() => [
      buildAsset(),
      buildAsset(),
    ];

void checkUnnamed16(core.List<api.Asset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAsset(o[0]);
  checkAsset(o[1]);
}

core.int buildCounterBatchUpdateAssetsResponse = 0;
api.BatchUpdateAssetsResponse buildBatchUpdateAssetsResponse() {
  final o = api.BatchUpdateAssetsResponse();
  buildCounterBatchUpdateAssetsResponse++;
  if (buildCounterBatchUpdateAssetsResponse < 3) {
    o.assets = buildUnnamed16();
  }
  buildCounterBatchUpdateAssetsResponse--;
  return o;
}

void checkBatchUpdateAssetsResponse(api.BatchUpdateAssetsResponse o) {
  buildCounterBatchUpdateAssetsResponse++;
  if (buildCounterBatchUpdateAssetsResponse < 3) {
    checkUnnamed16(o.assets!);
  }
  buildCounterBatchUpdateAssetsResponse--;
}

core.int buildCounterBiosDetails = 0;
api.BiosDetails buildBiosDetails() {
  final o = api.BiosDetails();
  buildCounterBiosDetails++;
  if (buildCounterBiosDetails < 3) {
    o.biosName = 'foo';
    o.id = 'foo';
    o.manufacturer = 'foo';
    o.releaseDate = buildDate();
    o.smbiosUuid = 'foo';
    o.version = 'foo';
  }
  buildCounterBiosDetails--;
  return o;
}

void checkBiosDetails(api.BiosDetails o) {
  buildCounterBiosDetails++;
  if (buildCounterBiosDetails < 3) {
    unittest.expect(
      o.biosName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.manufacturer!,
      unittest.equals('foo'),
    );
    checkDate(o.releaseDate!);
    unittest.expect(
      o.smbiosUuid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
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
    o.persistentDiskType = 'foo';
  }
  buildCounterComputeEnginePreferences--;
  return o;
}

void checkComputeEnginePreferences(api.ComputeEnginePreferences o) {
  buildCounterComputeEnginePreferences++;
  if (buildCounterComputeEnginePreferences < 3) {
    unittest.expect(
      o.licenseType!,
      unittest.equals('foo'),
    );
    checkMachinePreferences(o.machinePreferences!);
    unittest.expect(
      o.persistentDiskType!,
      unittest.equals('foo'),
    );
  }
  buildCounterComputeEnginePreferences--;
}

core.List<api.ComputeStorageDescriptor> buildUnnamed17() => [
      buildComputeStorageDescriptor(),
      buildComputeStorageDescriptor(),
    ];

void checkUnnamed17(core.List<api.ComputeStorageDescriptor> o) {
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
    o.storage = buildUnnamed17();
  }
  buildCounterComputeEngineShapeDescriptor--;
  return o;
}

void checkComputeEngineShapeDescriptor(api.ComputeEngineShapeDescriptor o) {
  buildCounterComputeEngineShapeDescriptor++;
  if (buildCounterComputeEngineShapeDescriptor < 3) {
    unittest.expect(
      o.logicalCoreCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.memoryMb!,
      unittest.equals(42),
    );
    unittest.expect(
      o.physicalCoreCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.series!,
      unittest.equals('foo'),
    );
    checkUnnamed17(o.storage!);
  }
  buildCounterComputeEngineShapeDescriptor--;
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
    unittest.expect(
      o.sizeGb!,
      unittest.equals(42),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.utilizedPercentage!,
      unittest.equals(42.0),
    );
  }
  buildCounterCpuUsageSample--;
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
    api.DailyResourceUsageAggregationCPU o) {
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
  }
  buildCounterDailyResourceUsageAggregationDisk--;
  return o;
}

void checkDailyResourceUsageAggregationDisk(
    api.DailyResourceUsageAggregationDisk o) {
  buildCounterDailyResourceUsageAggregationDisk++;
  if (buildCounterDailyResourceUsageAggregationDisk < 3) {
    checkDailyResourceUsageAggregationStats(o.iops!);
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
    api.DailyResourceUsageAggregationMemory o) {
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
    api.DailyResourceUsageAggregationNetwork o) {
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
    api.DailyResourceUsageAggregationStats o) {
  buildCounterDailyResourceUsageAggregationStats++;
  if (buildCounterDailyResourceUsageAggregationStats < 3) {
    unittest.expect(
      o.average!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.median!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.ninteyFifthPercentile!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.peak!,
      unittest.equals(42.0),
    );
  }
  buildCounterDailyResourceUsageAggregationStats--;
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
    unittest.expect(
      o.day!,
      unittest.equals(42),
    );
    unittest.expect(
      o.month!,
      unittest.equals(42),
    );
    unittest.expect(
      o.year!,
      unittest.equals(42),
    );
  }
  buildCounterDate--;
}

core.List<api.Status> buildUnnamed18() => [
      buildStatus(),
      buildStatus(),
    ];

void checkUnnamed18(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.Map<core.String, core.String> buildUnnamed19() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed19(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterDiscoveryClient = 0;
api.DiscoveryClient buildDiscoveryClient() {
  final o = api.DiscoveryClient();
  buildCounterDiscoveryClient++;
  if (buildCounterDiscoveryClient < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.errors = buildUnnamed18();
    o.expireTime = 'foo';
    o.heartbeatTime = 'foo';
    o.labels = buildUnnamed19();
    o.name = 'foo';
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
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed18(o.errors!);
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.heartbeatTime!,
      unittest.equals('foo'),
    );
    checkUnnamed19(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAccount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.signalsEndpoint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.source!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ttl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterDiscoveryClient--;
}

core.int buildCounterDiskEntry = 0;
api.DiskEntry buildDiskEntry() {
  final o = api.DiskEntry();
  buildCounterDiskEntry++;
  if (buildCounterDiskEntry < 3) {
    o.capacityBytes = 'foo';
    o.diskLabel = 'foo';
    o.diskLabelType = 'foo';
    o.freeBytes = 'foo';
    o.hwAddress = 'foo';
    o.interfaceType = 'foo';
    o.partitions = buildDiskPartitionList();
    o.vmware = buildVmwareDiskConfig();
  }
  buildCounterDiskEntry--;
  return o;
}

void checkDiskEntry(api.DiskEntry o) {
  buildCounterDiskEntry++;
  if (buildCounterDiskEntry < 3) {
    unittest.expect(
      o.capacityBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.diskLabel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.diskLabelType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.freeBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hwAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.interfaceType!,
      unittest.equals('foo'),
    );
    checkDiskPartitionList(o.partitions!);
    checkVmwareDiskConfig(o.vmware!);
  }
  buildCounterDiskEntry--;
}

core.List<api.DiskEntry> buildUnnamed20() => [
      buildDiskEntry(),
      buildDiskEntry(),
    ];

void checkUnnamed20(core.List<api.DiskEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDiskEntry(o[0]);
  checkDiskEntry(o[1]);
}

core.int buildCounterDiskEntryList = 0;
api.DiskEntryList buildDiskEntryList() {
  final o = api.DiskEntryList();
  buildCounterDiskEntryList++;
  if (buildCounterDiskEntryList < 3) {
    o.entries = buildUnnamed20();
  }
  buildCounterDiskEntryList--;
  return o;
}

void checkDiskEntryList(api.DiskEntryList o) {
  buildCounterDiskEntryList++;
  if (buildCounterDiskEntryList < 3) {
    checkUnnamed20(o.entries!);
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
    unittest.expect(
      o.capacityBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fileSystem!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.freeBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mountPoint!,
      unittest.equals('foo'),
    );
    checkDiskPartitionList(o.subPartitions!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uuid!,
      unittest.equals('foo'),
    );
  }
  buildCounterDiskPartition--;
}

core.List<api.DiskPartition> buildUnnamed21() => [
      buildDiskPartition(),
      buildDiskPartition(),
    ];

void checkUnnamed21(core.List<api.DiskPartition> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDiskPartition(o[0]);
  checkDiskPartition(o[1]);
}

core.int buildCounterDiskPartitionList = 0;
api.DiskPartitionList buildDiskPartitionList() {
  final o = api.DiskPartitionList();
  buildCounterDiskPartitionList++;
  if (buildCounterDiskPartitionList < 3) {
    o.entries = buildUnnamed21();
  }
  buildCounterDiskPartitionList--;
  return o;
}

void checkDiskPartitionList(api.DiskPartitionList o) {
  buildCounterDiskPartitionList++;
  if (buildCounterDiskPartitionList < 3) {
    checkUnnamed21(o.entries!);
  }
  buildCounterDiskPartitionList--;
}

core.int buildCounterDiskUsageSample = 0;
api.DiskUsageSample buildDiskUsageSample() {
  final o = api.DiskUsageSample();
  buildCounterDiskUsageSample++;
  if (buildCounterDiskUsageSample < 3) {
    o.averageIops = 42.0;
  }
  buildCounterDiskUsageSample--;
  return o;
}

void checkDiskUsageSample(api.DiskUsageSample o) {
  buildCounterDiskUsageSample++;
  if (buildCounterDiskUsageSample < 3) {
    unittest.expect(
      o.averageIops!,
      unittest.equals(42.0),
    );
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

core.List<api.FrameViolationEntry> buildUnnamed22() => [
      buildFrameViolationEntry(),
      buildFrameViolationEntry(),
    ];

void checkUnnamed22(core.List<api.FrameViolationEntry> o) {
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
    o.violations = buildUnnamed22();
  }
  buildCounterErrorFrame--;
  return o;
}

void checkErrorFrame(api.ErrorFrame o) {
  buildCounterErrorFrame++;
  if (buildCounterErrorFrame < 3) {
    unittest.expect(
      o.ingestionTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkAssetFrame(o.originalFrame!);
    checkUnnamed22(o.violations!);
  }
  buildCounterErrorFrame--;
}

core.int buildCounterExecutionReport = 0;
api.ExecutionReport buildExecutionReport() {
  final o = api.ExecutionReport();
  buildCounterExecutionReport++;
  if (buildCounterExecutionReport < 3) {
    o.executionErrors = buildValidationReport();
    o.framesReported = 42;
    o.totalRowsCount = 42;
  }
  buildCounterExecutionReport--;
  return o;
}

void checkExecutionReport(api.ExecutionReport o) {
  buildCounterExecutionReport++;
  if (buildCounterExecutionReport < 3) {
    checkValidationReport(o.executionErrors!);
    unittest.expect(
      o.framesReported!,
      unittest.equals(42),
    );
    unittest.expect(
      o.totalRowsCount!,
      unittest.equals(42),
    );
  }
  buildCounterExecutionReport--;
}

core.List<api.ImportError> buildUnnamed23() => [
      buildImportError(),
      buildImportError(),
    ];

void checkUnnamed23(core.List<api.ImportError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImportError(o[0]);
  checkImportError(o[1]);
}

core.List<api.ImportRowError> buildUnnamed24() => [
      buildImportRowError(),
      buildImportRowError(),
    ];

void checkUnnamed24(core.List<api.ImportRowError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImportRowError(o[0]);
  checkImportRowError(o[1]);
}

core.int buildCounterFileValidationReport = 0;
api.FileValidationReport buildFileValidationReport() {
  final o = api.FileValidationReport();
  buildCounterFileValidationReport++;
  if (buildCounterFileValidationReport < 3) {
    o.fileErrors = buildUnnamed23();
    o.fileName = 'foo';
    o.partialReport = true;
    o.rowErrors = buildUnnamed24();
  }
  buildCounterFileValidationReport--;
  return o;
}

void checkFileValidationReport(api.FileValidationReport o) {
  buildCounterFileValidationReport++;
  if (buildCounterFileValidationReport < 3) {
    checkUnnamed23(o.fileErrors!);
    unittest.expect(
      o.fileName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.partialReport!, unittest.isTrue);
    checkUnnamed24(o.rowErrors!);
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
    unittest.expect(
      o.fitLevel!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.field!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.violation!,
      unittest.equals('foo'),
    );
  }
  buildCounterFrameViolationEntry--;
}

core.List<api.AssetFrame> buildUnnamed25() => [
      buildAssetFrame(),
      buildAssetFrame(),
    ];

void checkUnnamed25(core.List<api.AssetFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAssetFrame(o[0]);
  checkAssetFrame(o[1]);
}

core.int buildCounterFrames = 0;
api.Frames buildFrames() {
  final o = api.Frames();
  buildCounterFrames++;
  if (buildCounterFrames < 3) {
    o.framesData = buildUnnamed25();
  }
  buildCounterFrames--;
  return o;
}

void checkFrames(api.Frames o) {
  buildCounterFrames++;
  if (buildCounterFrames < 3) {
    checkUnnamed25(o.framesData!);
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
    unittest.expect(
      o.file!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.freq!,
      unittest.equals(42),
    );
    unittest.expect(
      o.mntops!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.passno!,
      unittest.equals(42),
    );
    unittest.expect(
      o.spec!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vfstype!,
      unittest.equals('foo'),
    );
  }
  buildCounterFstabEntry--;
}

core.List<api.FstabEntry> buildUnnamed26() => [
      buildFstabEntry(),
      buildFstabEntry(),
    ];

void checkUnnamed26(core.List<api.FstabEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFstabEntry(o[0]);
  checkFstabEntry(o[1]);
}

core.int buildCounterFstabEntryList = 0;
api.FstabEntryList buildFstabEntryList() {
  final o = api.FstabEntryList();
  buildCounterFstabEntryList++;
  if (buildCounterFstabEntryList < 3) {
    o.entries = buildUnnamed26();
  }
  buildCounterFstabEntryList--;
  return o;
}

void checkFstabEntryList(api.FstabEntryList o) {
  buildCounterFstabEntryList++;
  if (buildCounterFstabEntryList < 3) {
    checkUnnamed26(o.entries!);
  }
  buildCounterFstabEntryList--;
}

core.List<core.String> buildUnnamed27() => [
      'foo',
      'foo',
    ];

void checkUnnamed27(core.List<core.String> o) {
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

core.int buildCounterGenericInsight = 0;
api.GenericInsight buildGenericInsight() {
  final o = api.GenericInsight();
  buildCounterGenericInsight++;
  if (buildCounterGenericInsight < 3) {
    o.additionalInformation = buildUnnamed27();
    o.defaultMessage = 'foo';
    o.messageId = 'foo';
  }
  buildCounterGenericInsight--;
  return o;
}

void checkGenericInsight(api.GenericInsight o) {
  buildCounterGenericInsight++;
  if (buildCounterGenericInsight < 3) {
    checkUnnamed27(o.additionalInformation!);
    unittest.expect(
      o.defaultMessage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.messageId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGenericInsight--;
}

core.int buildCounterGenericPlatformDetails = 0;
api.GenericPlatformDetails buildGenericPlatformDetails() {
  final o = api.GenericPlatformDetails();
  buildCounterGenericPlatformDetails++;
  if (buildCounterGenericPlatformDetails < 3) {
    o.location = 'foo';
  }
  buildCounterGenericPlatformDetails--;
  return o;
}

void checkGenericPlatformDetails(api.GenericPlatformDetails o) {
  buildCounterGenericPlatformDetails++;
  if (buildCounterGenericPlatformDetails < 3) {
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
  }
  buildCounterGenericPlatformDetails--;
}

core.Map<core.String, core.String> buildUnnamed28() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed28(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterGroup = 0;
api.Group buildGroup() {
  final o = api.Group();
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed28();
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterGroup--;
  return o;
}

void checkGroup(api.Group o) {
  buildCounterGroup++;
  if (buildCounterGroup < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed28(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
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
    o.selinuxMode = 'foo';
  }
  buildCounterGuestConfigDetails--;
  return o;
}

void checkGuestConfigDetails(api.GuestConfigDetails o) {
  buildCounterGuestConfigDetails++;
  if (buildCounterGuestConfigDetails < 3) {
    checkFstabEntryList(o.fstab!);
    checkHostsEntryList(o.hosts!);
    unittest.expect(
      o.issue!,
      unittest.equals('foo'),
    );
    checkNfsExportList(o.nfsExports!);
    unittest.expect(
      o.selinuxMode!,
      unittest.equals('foo'),
    );
  }
  buildCounterGuestConfigDetails--;
}

core.List<core.String> buildUnnamed29() => [
      'foo',
      'foo',
    ];

void checkUnnamed29(core.List<core.String> o) {
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

core.int buildCounterGuestInstalledApplication = 0;
api.GuestInstalledApplication buildGuestInstalledApplication() {
  final o = api.GuestInstalledApplication();
  buildCounterGuestInstalledApplication++;
  if (buildCounterGuestInstalledApplication < 3) {
    o.applicationName = 'foo';
    o.installTime = 'foo';
    o.licenses = buildUnnamed29();
    o.path = 'foo';
    o.vendor = 'foo';
    o.version = 'foo';
  }
  buildCounterGuestInstalledApplication--;
  return o;
}

void checkGuestInstalledApplication(api.GuestInstalledApplication o) {
  buildCounterGuestInstalledApplication++;
  if (buildCounterGuestInstalledApplication < 3) {
    unittest.expect(
      o.applicationName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.installTime!,
      unittest.equals('foo'),
    );
    checkUnnamed29(o.licenses!);
    unittest.expect(
      o.path!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vendor!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterGuestInstalledApplication--;
}

core.List<api.GuestInstalledApplication> buildUnnamed30() => [
      buildGuestInstalledApplication(),
      buildGuestInstalledApplication(),
    ];

void checkUnnamed30(core.List<api.GuestInstalledApplication> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGuestInstalledApplication(o[0]);
  checkGuestInstalledApplication(o[1]);
}

core.int buildCounterGuestInstalledApplicationList = 0;
api.GuestInstalledApplicationList buildGuestInstalledApplicationList() {
  final o = api.GuestInstalledApplicationList();
  buildCounterGuestInstalledApplicationList++;
  if (buildCounterGuestInstalledApplicationList < 3) {
    o.entries = buildUnnamed30();
  }
  buildCounterGuestInstalledApplicationList--;
  return o;
}

void checkGuestInstalledApplicationList(api.GuestInstalledApplicationList o) {
  buildCounterGuestInstalledApplicationList++;
  if (buildCounterGuestInstalledApplicationList < 3) {
    checkUnnamed30(o.entries!);
  }
  buildCounterGuestInstalledApplicationList--;
}

core.int buildCounterGuestOsDetails = 0;
api.GuestOsDetails buildGuestOsDetails() {
  final o = api.GuestOsDetails();
  buildCounterGuestOsDetails++;
  if (buildCounterGuestOsDetails < 3) {
    o.config = buildGuestConfigDetails();
    o.family = 'foo';
    o.osName = 'foo';
    o.runtime = buildGuestRuntimeDetails();
    o.version = 'foo';
  }
  buildCounterGuestOsDetails--;
  return o;
}

void checkGuestOsDetails(api.GuestOsDetails o) {
  buildCounterGuestOsDetails++;
  if (buildCounterGuestOsDetails < 3) {
    checkGuestConfigDetails(o.config!);
    unittest.expect(
      o.family!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.osName!,
      unittest.equals('foo'),
    );
    checkGuestRuntimeDetails(o.runtime!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
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
    o.lastBootTime = 'foo';
    o.machineName = 'foo';
    o.network = buildRuntimeNetworkInfo();
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
    unittest.expect(
      o.domain!,
      unittest.equals('foo'),
    );
    checkGuestInstalledApplicationList(o.installedApps!);
    unittest.expect(
      o.lastBootTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.machineName!,
      unittest.equals('foo'),
    );
    checkRuntimeNetworkInfo(o.network!);
    checkOpenFileList(o.openFileList!);
    checkRunningProcessList(o.processes!);
    checkRunningServiceList(o.services!);
  }
  buildCounterGuestRuntimeDetails--;
}

core.List<core.String> buildUnnamed31() => [
      'foo',
      'foo',
    ];

void checkUnnamed31(core.List<core.String> o) {
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

core.int buildCounterHostsEntry = 0;
api.HostsEntry buildHostsEntry() {
  final o = api.HostsEntry();
  buildCounterHostsEntry++;
  if (buildCounterHostsEntry < 3) {
    o.hostNames = buildUnnamed31();
    o.ip = 'foo';
  }
  buildCounterHostsEntry--;
  return o;
}

void checkHostsEntry(api.HostsEntry o) {
  buildCounterHostsEntry++;
  if (buildCounterHostsEntry < 3) {
    checkUnnamed31(o.hostNames!);
    unittest.expect(
      o.ip!,
      unittest.equals('foo'),
    );
  }
  buildCounterHostsEntry--;
}

core.List<api.HostsEntry> buildUnnamed32() => [
      buildHostsEntry(),
      buildHostsEntry(),
    ];

void checkUnnamed32(core.List<api.HostsEntry> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHostsEntry(o[0]);
  checkHostsEntry(o[1]);
}

core.int buildCounterHostsEntryList = 0;
api.HostsEntryList buildHostsEntryList() {
  final o = api.HostsEntryList();
  buildCounterHostsEntryList++;
  if (buildCounterHostsEntryList < 3) {
    o.entries = buildUnnamed32();
  }
  buildCounterHostsEntryList--;
  return o;
}

void checkHostsEntryList(api.HostsEntryList o) {
  buildCounterHostsEntryList++;
  if (buildCounterHostsEntryList < 3) {
    checkUnnamed32(o.entries!);
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
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.format!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.errorDetails!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
  }
  buildCounterImportError--;
}

core.Map<core.String, core.String> buildUnnamed33() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed33(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
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
    o.labels = buildUnnamed33();
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
    unittest.expect(
      o.assetSource!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.completeTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkExecutionReport(o.executionReport!);
    checkUnnamed33(o.labels!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkValidationReport(o.validationReport!);
  }
  buildCounterImportJob--;
}

core.List<api.ImportError> buildUnnamed34() => [
      buildImportError(),
      buildImportError(),
    ];

void checkUnnamed34(core.List<api.ImportError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImportError(o[0]);
  checkImportError(o[1]);
}

core.int buildCounterImportRowError = 0;
api.ImportRowError buildImportRowError() {
  final o = api.ImportRowError();
  buildCounterImportRowError++;
  if (buildCounterImportRowError < 3) {
    o.errors = buildUnnamed34();
    o.rowNumber = 42;
    o.vmName = 'foo';
    o.vmUuid = 'foo';
  }
  buildCounterImportRowError--;
  return o;
}

void checkImportRowError(api.ImportRowError o) {
  buildCounterImportRowError++;
  if (buildCounterImportRowError < 3) {
    checkUnnamed34(o.errors!);
    unittest.expect(
      o.rowNumber!,
      unittest.equals(42),
    );
    unittest.expect(
      o.vmName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vmUuid!,
      unittest.equals('foo'),
    );
  }
  buildCounterImportRowError--;
}

core.int buildCounterInsight = 0;
api.Insight buildInsight() {
  final o = api.Insight();
  buildCounterInsight++;
  if (buildCounterInsight < 3) {
    o.genericInsight = buildGenericInsight();
    o.migrationInsight = buildMigrationInsight();
  }
  buildCounterInsight--;
  return o;
}

void checkInsight(api.Insight o) {
  buildCounterInsight++;
  if (buildCounterInsight < 3) {
    checkGenericInsight(o.genericInsight!);
    checkMigrationInsight(o.migrationInsight!);
  }
  buildCounterInsight--;
}

core.List<api.Insight> buildUnnamed35() => [
      buildInsight(),
      buildInsight(),
    ];

void checkUnnamed35(core.List<api.Insight> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInsight(o[0]);
  checkInsight(o[1]);
}

core.int buildCounterInsightList = 0;
api.InsightList buildInsightList() {
  final o = api.InsightList();
  buildCounterInsightList++;
  if (buildCounterInsightList < 3) {
    o.insights = buildUnnamed35();
    o.updateTime = 'foo';
  }
  buildCounterInsightList--;
  return o;
}

void checkInsightList(api.InsightList o) {
  buildCounterInsightList++;
  if (buildCounterInsightList < 3) {
    checkUnnamed35(o.insights!);
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterInsightList--;
}

core.List<api.Asset> buildUnnamed36() => [
      buildAsset(),
      buildAsset(),
    ];

void checkUnnamed36(core.List<api.Asset> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAsset(o[0]);
  checkAsset(o[1]);
}

core.List<core.String> buildUnnamed37() => [
      'foo',
      'foo',
    ];

void checkUnnamed37(core.List<core.String> o) {
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

core.int buildCounterListAssetsResponse = 0;
api.ListAssetsResponse buildListAssetsResponse() {
  final o = api.ListAssetsResponse();
  buildCounterListAssetsResponse++;
  if (buildCounterListAssetsResponse < 3) {
    o.assets = buildUnnamed36();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed37();
  }
  buildCounterListAssetsResponse--;
  return o;
}

void checkListAssetsResponse(api.ListAssetsResponse o) {
  buildCounterListAssetsResponse++;
  if (buildCounterListAssetsResponse < 3) {
    checkUnnamed36(o.assets!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed37(o.unreachable!);
  }
  buildCounterListAssetsResponse--;
}

core.List<api.DiscoveryClient> buildUnnamed38() => [
      buildDiscoveryClient(),
      buildDiscoveryClient(),
    ];

void checkUnnamed38(core.List<api.DiscoveryClient> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDiscoveryClient(o[0]);
  checkDiscoveryClient(o[1]);
}

core.List<core.String> buildUnnamed39() => [
      'foo',
      'foo',
    ];

void checkUnnamed39(core.List<core.String> o) {
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

core.int buildCounterListDiscoveryClientsResponse = 0;
api.ListDiscoveryClientsResponse buildListDiscoveryClientsResponse() {
  final o = api.ListDiscoveryClientsResponse();
  buildCounterListDiscoveryClientsResponse++;
  if (buildCounterListDiscoveryClientsResponse < 3) {
    o.discoveryClients = buildUnnamed38();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed39();
  }
  buildCounterListDiscoveryClientsResponse--;
  return o;
}

void checkListDiscoveryClientsResponse(api.ListDiscoveryClientsResponse o) {
  buildCounterListDiscoveryClientsResponse++;
  if (buildCounterListDiscoveryClientsResponse < 3) {
    checkUnnamed38(o.discoveryClients!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed39(o.unreachable!);
  }
  buildCounterListDiscoveryClientsResponse--;
}

core.List<api.ErrorFrame> buildUnnamed40() => [
      buildErrorFrame(),
      buildErrorFrame(),
    ];

void checkUnnamed40(core.List<api.ErrorFrame> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkErrorFrame(o[0]);
  checkErrorFrame(o[1]);
}

core.List<core.String> buildUnnamed41() => [
      'foo',
      'foo',
    ];

void checkUnnamed41(core.List<core.String> o) {
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

core.int buildCounterListErrorFramesResponse = 0;
api.ListErrorFramesResponse buildListErrorFramesResponse() {
  final o = api.ListErrorFramesResponse();
  buildCounterListErrorFramesResponse++;
  if (buildCounterListErrorFramesResponse < 3) {
    o.errorFrames = buildUnnamed40();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed41();
  }
  buildCounterListErrorFramesResponse--;
  return o;
}

void checkListErrorFramesResponse(api.ListErrorFramesResponse o) {
  buildCounterListErrorFramesResponse++;
  if (buildCounterListErrorFramesResponse < 3) {
    checkUnnamed40(o.errorFrames!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed41(o.unreachable!);
  }
  buildCounterListErrorFramesResponse--;
}

core.List<api.Group> buildUnnamed42() => [
      buildGroup(),
      buildGroup(),
    ];

void checkUnnamed42(core.List<api.Group> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGroup(o[0]);
  checkGroup(o[1]);
}

core.List<core.String> buildUnnamed43() => [
      'foo',
      'foo',
    ];

void checkUnnamed43(core.List<core.String> o) {
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

core.int buildCounterListGroupsResponse = 0;
api.ListGroupsResponse buildListGroupsResponse() {
  final o = api.ListGroupsResponse();
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    o.groups = buildUnnamed42();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed43();
  }
  buildCounterListGroupsResponse--;
  return o;
}

void checkListGroupsResponse(api.ListGroupsResponse o) {
  buildCounterListGroupsResponse++;
  if (buildCounterListGroupsResponse < 3) {
    checkUnnamed42(o.groups!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed43(o.unreachable!);
  }
  buildCounterListGroupsResponse--;
}

core.List<api.ImportDataFile> buildUnnamed44() => [
      buildImportDataFile(),
      buildImportDataFile(),
    ];

void checkUnnamed44(core.List<api.ImportDataFile> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImportDataFile(o[0]);
  checkImportDataFile(o[1]);
}

core.List<core.String> buildUnnamed45() => [
      'foo',
      'foo',
    ];

void checkUnnamed45(core.List<core.String> o) {
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

core.int buildCounterListImportDataFilesResponse = 0;
api.ListImportDataFilesResponse buildListImportDataFilesResponse() {
  final o = api.ListImportDataFilesResponse();
  buildCounterListImportDataFilesResponse++;
  if (buildCounterListImportDataFilesResponse < 3) {
    o.importDataFiles = buildUnnamed44();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed45();
  }
  buildCounterListImportDataFilesResponse--;
  return o;
}

void checkListImportDataFilesResponse(api.ListImportDataFilesResponse o) {
  buildCounterListImportDataFilesResponse++;
  if (buildCounterListImportDataFilesResponse < 3) {
    checkUnnamed44(o.importDataFiles!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed45(o.unreachable!);
  }
  buildCounterListImportDataFilesResponse--;
}

core.List<api.ImportJob> buildUnnamed46() => [
      buildImportJob(),
      buildImportJob(),
    ];

void checkUnnamed46(core.List<api.ImportJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImportJob(o[0]);
  checkImportJob(o[1]);
}

core.List<core.String> buildUnnamed47() => [
      'foo',
      'foo',
    ];

void checkUnnamed47(core.List<core.String> o) {
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

core.int buildCounterListImportJobsResponse = 0;
api.ListImportJobsResponse buildListImportJobsResponse() {
  final o = api.ListImportJobsResponse();
  buildCounterListImportJobsResponse++;
  if (buildCounterListImportJobsResponse < 3) {
    o.importJobs = buildUnnamed46();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed47();
  }
  buildCounterListImportJobsResponse--;
  return o;
}

void checkListImportJobsResponse(api.ListImportJobsResponse o) {
  buildCounterListImportJobsResponse++;
  if (buildCounterListImportJobsResponse < 3) {
    checkUnnamed46(o.importJobs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed47(o.unreachable!);
  }
  buildCounterListImportJobsResponse--;
}

core.List<api.Location> buildUnnamed48() => [
      buildLocation(),
      buildLocation(),
    ];

void checkUnnamed48(core.List<api.Location> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkLocation(o[0]);
  checkLocation(o[1]);
}

core.int buildCounterListLocationsResponse = 0;
api.ListLocationsResponse buildListLocationsResponse() {
  final o = api.ListLocationsResponse();
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    o.locations = buildUnnamed48();
    o.nextPageToken = 'foo';
  }
  buildCounterListLocationsResponse--;
  return o;
}

void checkListLocationsResponse(api.ListLocationsResponse o) {
  buildCounterListLocationsResponse++;
  if (buildCounterListLocationsResponse < 3) {
    checkUnnamed48(o.locations!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListLocationsResponse--;
}

core.List<api.Operation> buildUnnamed49() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed49(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed49();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed49(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.PreferenceSet> buildUnnamed50() => [
      buildPreferenceSet(),
      buildPreferenceSet(),
    ];

void checkUnnamed50(core.List<api.PreferenceSet> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPreferenceSet(o[0]);
  checkPreferenceSet(o[1]);
}

core.List<core.String> buildUnnamed51() => [
      'foo',
      'foo',
    ];

void checkUnnamed51(core.List<core.String> o) {
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

core.int buildCounterListPreferenceSetsResponse = 0;
api.ListPreferenceSetsResponse buildListPreferenceSetsResponse() {
  final o = api.ListPreferenceSetsResponse();
  buildCounterListPreferenceSetsResponse++;
  if (buildCounterListPreferenceSetsResponse < 3) {
    o.nextPageToken = 'foo';
    o.preferenceSets = buildUnnamed50();
    o.unreachable = buildUnnamed51();
  }
  buildCounterListPreferenceSetsResponse--;
  return o;
}

void checkListPreferenceSetsResponse(api.ListPreferenceSetsResponse o) {
  buildCounterListPreferenceSetsResponse++;
  if (buildCounterListPreferenceSetsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed50(o.preferenceSets!);
    checkUnnamed51(o.unreachable!);
  }
  buildCounterListPreferenceSetsResponse--;
}

core.List<api.ReportConfig> buildUnnamed52() => [
      buildReportConfig(),
      buildReportConfig(),
    ];

void checkUnnamed52(core.List<api.ReportConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportConfig(o[0]);
  checkReportConfig(o[1]);
}

core.List<core.String> buildUnnamed53() => [
      'foo',
      'foo',
    ];

void checkUnnamed53(core.List<core.String> o) {
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

core.int buildCounterListReportConfigsResponse = 0;
api.ListReportConfigsResponse buildListReportConfigsResponse() {
  final o = api.ListReportConfigsResponse();
  buildCounterListReportConfigsResponse++;
  if (buildCounterListReportConfigsResponse < 3) {
    o.nextPageToken = 'foo';
    o.reportConfigs = buildUnnamed52();
    o.unreachable = buildUnnamed53();
  }
  buildCounterListReportConfigsResponse--;
  return o;
}

void checkListReportConfigsResponse(api.ListReportConfigsResponse o) {
  buildCounterListReportConfigsResponse++;
  if (buildCounterListReportConfigsResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed52(o.reportConfigs!);
    checkUnnamed53(o.unreachable!);
  }
  buildCounterListReportConfigsResponse--;
}

core.List<api.Report> buildUnnamed54() => [
      buildReport(),
      buildReport(),
    ];

void checkUnnamed54(core.List<api.Report> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReport(o[0]);
  checkReport(o[1]);
}

core.List<core.String> buildUnnamed55() => [
      'foo',
      'foo',
    ];

void checkUnnamed55(core.List<core.String> o) {
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

core.int buildCounterListReportsResponse = 0;
api.ListReportsResponse buildListReportsResponse() {
  final o = api.ListReportsResponse();
  buildCounterListReportsResponse++;
  if (buildCounterListReportsResponse < 3) {
    o.nextPageToken = 'foo';
    o.reports = buildUnnamed54();
    o.unreachable = buildUnnamed55();
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
    checkUnnamed54(o.reports!);
    checkUnnamed55(o.unreachable!);
  }
  buildCounterListReportsResponse--;
}

core.List<api.Source> buildUnnamed56() => [
      buildSource(),
      buildSource(),
    ];

void checkUnnamed56(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0]);
  checkSource(o[1]);
}

core.List<core.String> buildUnnamed57() => [
      'foo',
      'foo',
    ];

void checkUnnamed57(core.List<core.String> o) {
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

core.int buildCounterListSourcesResponse = 0;
api.ListSourcesResponse buildListSourcesResponse() {
  final o = api.ListSourcesResponse();
  buildCounterListSourcesResponse++;
  if (buildCounterListSourcesResponse < 3) {
    o.nextPageToken = 'foo';
    o.sources = buildUnnamed56();
    o.unreachable = buildUnnamed57();
  }
  buildCounterListSourcesResponse--;
  return o;
}

void checkListSourcesResponse(api.ListSourcesResponse o) {
  buildCounterListSourcesResponse++;
  if (buildCounterListSourcesResponse < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed56(o.sources!);
    checkUnnamed57(o.unreachable!);
  }
  buildCounterListSourcesResponse--;
}

core.Map<core.String, core.String> buildUnnamed58() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed58(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object?> buildUnnamed59() => {
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

void checkUnnamed59(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterLocation = 0;
api.Location buildLocation() {
  final o = api.Location();
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    o.displayName = 'foo';
    o.labels = buildUnnamed58();
    o.locationId = 'foo';
    o.metadata = buildUnnamed59();
    o.name = 'foo';
  }
  buildCounterLocation--;
  return o;
}

void checkLocation(api.Location o) {
  buildCounterLocation++;
  if (buildCounterLocation < 3) {
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed58(o.labels!);
    unittest.expect(
      o.locationId!,
      unittest.equals('foo'),
    );
    checkUnnamed59(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
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
    o.cpuName = 'foo';
    o.cpuSocketCount = 42;
    o.cpuThreadCount = 42;
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
    unittest.expect(
      o.cpuArchitecture!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cpuName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cpuSocketCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.cpuThreadCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.firmwareType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.hyperthreading!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vendor!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.coreCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    checkMachineDiskDetails(o.disks!);
    checkGuestOsDetails(o.guestOs!);
    unittest.expect(
      o.machineName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.memoryMb!,
      unittest.equals(42),
    );
    checkMachineNetworkDetails(o.network!);
    checkPlatformDetails(o.platform!);
    unittest.expect(
      o.powerState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uuid!,
      unittest.equals('foo'),
    );
  }
  buildCounterMachineDetails--;
}

core.int buildCounterMachineDiskDetails = 0;
api.MachineDiskDetails buildMachineDiskDetails() {
  final o = api.MachineDiskDetails();
  buildCounterMachineDiskDetails++;
  if (buildCounterMachineDiskDetails < 3) {
    o.disks = buildDiskEntryList();
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
    unittest.expect(
      o.totalCapacityBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalFreeBytes!,
      unittest.equals('foo'),
    );
  }
  buildCounterMachineDiskDetails--;
}

core.int buildCounterMachineNetworkDetails = 0;
api.MachineNetworkDetails buildMachineNetworkDetails() {
  final o = api.MachineNetworkDetails();
  buildCounterMachineNetworkDetails++;
  if (buildCounterMachineNetworkDetails < 3) {
    o.adapters = buildNetworkAdapterList();
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
    checkNetworkAdapterList(o.adapters!);
    unittest.expect(
      o.primaryIpAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.primaryMacAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.publicIpAddress!,
      unittest.equals('foo'),
    );
  }
  buildCounterMachineNetworkDetails--;
}

core.List<api.MachineSeries> buildUnnamed60() => [
      buildMachineSeries(),
      buildMachineSeries(),
    ];

void checkUnnamed60(core.List<api.MachineSeries> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMachineSeries(o[0]);
  checkMachineSeries(o[1]);
}

core.int buildCounterMachinePreferences = 0;
api.MachinePreferences buildMachinePreferences() {
  final o = api.MachinePreferences();
  buildCounterMachinePreferences++;
  if (buildCounterMachinePreferences < 3) {
    o.allowedMachineSeries = buildUnnamed60();
  }
  buildCounterMachinePreferences--;
  return o;
}

void checkMachinePreferences(api.MachinePreferences o) {
  buildCounterMachinePreferences++;
  if (buildCounterMachinePreferences < 3) {
    checkUnnamed60(o.allowedMachineSeries!);
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
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.utilizedPercentage!,
      unittest.equals(42.0),
    );
  }
  buildCounterMemoryUsageSample--;
}

core.int buildCounterMigrationInsight = 0;
api.MigrationInsight buildMigrationInsight() {
  final o = api.MigrationInsight();
  buildCounterMigrationInsight++;
  if (buildCounterMigrationInsight < 3) {
    o.computeEngineTarget = buildComputeEngineMigrationTarget();
    o.fit = buildFitDescriptor();
  }
  buildCounterMigrationInsight--;
  return o;
}

void checkMigrationInsight(api.MigrationInsight o) {
  buildCounterMigrationInsight++;
  if (buildCounterMigrationInsight < 3) {
    checkComputeEngineMigrationTarget(o.computeEngineTarget!);
    checkFitDescriptor(o.fit!);
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
    unittest.expect(
      o.currencyCode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nanos!,
      unittest.equals(42),
    );
    unittest.expect(
      o.units!,
      unittest.equals('foo'),
    );
  }
  buildCounterMoney--;
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
    unittest.expect(
      o.adapterType!,
      unittest.equals('foo'),
    );
    checkNetworkAddressList(o.addresses!);
    unittest.expect(
      o.macAddress!,
      unittest.equals('foo'),
    );
  }
  buildCounterNetworkAdapterDetails--;
}

core.List<api.NetworkAdapterDetails> buildUnnamed61() => [
      buildNetworkAdapterDetails(),
      buildNetworkAdapterDetails(),
    ];

void checkUnnamed61(core.List<api.NetworkAdapterDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkAdapterDetails(o[0]);
  checkNetworkAdapterDetails(o[1]);
}

core.int buildCounterNetworkAdapterList = 0;
api.NetworkAdapterList buildNetworkAdapterList() {
  final o = api.NetworkAdapterList();
  buildCounterNetworkAdapterList++;
  if (buildCounterNetworkAdapterList < 3) {
    o.entries = buildUnnamed61();
  }
  buildCounterNetworkAdapterList--;
  return o;
}

void checkNetworkAdapterList(api.NetworkAdapterList o) {
  buildCounterNetworkAdapterList++;
  if (buildCounterNetworkAdapterList < 3) {
    checkUnnamed61(o.entries!);
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
    unittest.expect(
      o.assignment!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.bcast!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fqdn!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ipAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subnetMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterNetworkAddress--;
}

core.List<api.NetworkAddress> buildUnnamed62() => [
      buildNetworkAddress(),
      buildNetworkAddress(),
    ];

void checkUnnamed62(core.List<api.NetworkAddress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkAddress(o[0]);
  checkNetworkAddress(o[1]);
}

core.int buildCounterNetworkAddressList = 0;
api.NetworkAddressList buildNetworkAddressList() {
  final o = api.NetworkAddressList();
  buildCounterNetworkAddressList++;
  if (buildCounterNetworkAddressList < 3) {
    o.entries = buildUnnamed62();
  }
  buildCounterNetworkAddressList--;
  return o;
}

void checkNetworkAddressList(api.NetworkAddressList o) {
  buildCounterNetworkAddressList++;
  if (buildCounterNetworkAddressList < 3) {
    checkUnnamed62(o.entries!);
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
    unittest.expect(
      o.localIpAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.localPort!,
      unittest.equals(42),
    );
    unittest.expect(
      o.pid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.processName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.protocol!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.remoteIpAddress!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.remotePort!,
      unittest.equals(42),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterNetworkConnection--;
}

core.List<api.NetworkConnection> buildUnnamed63() => [
      buildNetworkConnection(),
      buildNetworkConnection(),
    ];

void checkUnnamed63(core.List<api.NetworkConnection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNetworkConnection(o[0]);
  checkNetworkConnection(o[1]);
}

core.int buildCounterNetworkConnectionList = 0;
api.NetworkConnectionList buildNetworkConnectionList() {
  final o = api.NetworkConnectionList();
  buildCounterNetworkConnectionList++;
  if (buildCounterNetworkConnectionList < 3) {
    o.entries = buildUnnamed63();
  }
  buildCounterNetworkConnectionList--;
  return o;
}

void checkNetworkConnectionList(api.NetworkConnectionList o) {
  buildCounterNetworkConnectionList++;
  if (buildCounterNetworkConnectionList < 3) {
    checkUnnamed63(o.entries!);
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
    unittest.expect(
      o.averageEgressBps!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.averageIngressBps!,
      unittest.equals(42.0),
    );
  }
  buildCounterNetworkUsageSample--;
}

core.List<core.String> buildUnnamed64() => [
      'foo',
      'foo',
    ];

void checkUnnamed64(core.List<core.String> o) {
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

core.int buildCounterNfsExport = 0;
api.NfsExport buildNfsExport() {
  final o = api.NfsExport();
  buildCounterNfsExport++;
  if (buildCounterNfsExport < 3) {
    o.exportDirectory = 'foo';
    o.hosts = buildUnnamed64();
  }
  buildCounterNfsExport--;
  return o;
}

void checkNfsExport(api.NfsExport o) {
  buildCounterNfsExport++;
  if (buildCounterNfsExport < 3) {
    unittest.expect(
      o.exportDirectory!,
      unittest.equals('foo'),
    );
    checkUnnamed64(o.hosts!);
  }
  buildCounterNfsExport--;
}

core.List<api.NfsExport> buildUnnamed65() => [
      buildNfsExport(),
      buildNfsExport(),
    ];

void checkUnnamed65(core.List<api.NfsExport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNfsExport(o[0]);
  checkNfsExport(o[1]);
}

core.int buildCounterNfsExportList = 0;
api.NfsExportList buildNfsExportList() {
  final o = api.NfsExportList();
  buildCounterNfsExportList++;
  if (buildCounterNfsExportList < 3) {
    o.entries = buildUnnamed65();
  }
  buildCounterNfsExportList--;
  return o;
}

void checkNfsExportList(api.NfsExportList o) {
  buildCounterNfsExportList++;
  if (buildCounterNfsExportList < 3) {
    checkUnnamed65(o.entries!);
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
    unittest.expect(
      o.command!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.filePath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.fileType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.user!,
      unittest.equals('foo'),
    );
  }
  buildCounterOpenFileDetails--;
}

core.List<api.OpenFileDetails> buildUnnamed66() => [
      buildOpenFileDetails(),
      buildOpenFileDetails(),
    ];

void checkUnnamed66(core.List<api.OpenFileDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOpenFileDetails(o[0]);
  checkOpenFileDetails(o[1]);
}

core.int buildCounterOpenFileList = 0;
api.OpenFileList buildOpenFileList() {
  final o = api.OpenFileList();
  buildCounterOpenFileList++;
  if (buildCounterOpenFileList < 3) {
    o.entries = buildUnnamed66();
  }
  buildCounterOpenFileList--;
  return o;
}

void checkOpenFileList(api.OpenFileList o) {
  buildCounterOpenFileList++;
  if (buildCounterOpenFileList < 3) {
    checkUnnamed66(o.entries!);
  }
  buildCounterOpenFileList--;
}

core.Map<core.String, core.Object?> buildUnnamed67() => {
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

void checkUnnamed67(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed68() => {
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

void checkUnnamed68(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed67();
    o.name = 'foo';
    o.response = buildUnnamed68();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed67(o.metadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed68(o.response!);
  }
  buildCounterOperation--;
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
    unittest.expect(
      o.sampleTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterPerformanceSample--;
}

core.int buildCounterPhysicalPlatformDetails = 0;
api.PhysicalPlatformDetails buildPhysicalPlatformDetails() {
  final o = api.PhysicalPlatformDetails();
  buildCounterPhysicalPlatformDetails++;
  if (buildCounterPhysicalPlatformDetails < 3) {
    o.location = 'foo';
  }
  buildCounterPhysicalPlatformDetails--;
  return o;
}

void checkPhysicalPlatformDetails(api.PhysicalPlatformDetails o) {
  buildCounterPhysicalPlatformDetails++;
  if (buildCounterPhysicalPlatformDetails < 3) {
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
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

core.int buildCounterPreferenceSet = 0;
api.PreferenceSet buildPreferenceSet() {
  final o = api.PreferenceSet();
  buildCounterPreferenceSet++;
  if (buildCounterPreferenceSet < 3) {
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.name = 'foo';
    o.updateTime = 'foo';
    o.virtualMachinePreferences = buildVirtualMachinePreferences();
  }
  buildCounterPreferenceSet--;
  return o;
}

void checkPreferenceSet(api.PreferenceSet o) {
  buildCounterPreferenceSet++;
  if (buildCounterPreferenceSet < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
    checkVirtualMachinePreferences(o.virtualMachinePreferences!);
  }
  buildCounterPreferenceSet--;
}

core.List<core.String> buildUnnamed69() => [
      'foo',
      'foo',
    ];

void checkUnnamed69(core.List<core.String> o) {
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

core.int buildCounterRegionPreferences = 0;
api.RegionPreferences buildRegionPreferences() {
  final o = api.RegionPreferences();
  buildCounterRegionPreferences++;
  if (buildCounterRegionPreferences < 3) {
    o.preferredRegions = buildUnnamed69();
  }
  buildCounterRegionPreferences--;
  return o;
}

void checkRegionPreferences(api.RegionPreferences o) {
  buildCounterRegionPreferences++;
  if (buildCounterRegionPreferences < 3) {
    checkUnnamed69(o.preferredRegions!);
  }
  buildCounterRegionPreferences--;
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
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
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
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkReportSummary(o.summary!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
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

core.List<api.ReportConfigGroupPreferenceSetAssignment> buildUnnamed70() => [
      buildReportConfigGroupPreferenceSetAssignment(),
      buildReportConfigGroupPreferenceSetAssignment(),
    ];

void checkUnnamed70(core.List<api.ReportConfigGroupPreferenceSetAssignment> o) {
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
    o.groupPreferencesetAssignments = buildUnnamed70();
    o.name = 'foo';
    o.updateTime = 'foo';
  }
  buildCounterReportConfig--;
  return o;
}

void checkReportConfig(api.ReportConfig o) {
  buildCounterReportConfig++;
  if (buildCounterReportConfig < 3) {
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkUnnamed70(o.groupPreferencesetAssignments!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
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
    api.ReportConfigGroupPreferenceSetAssignment o) {
  buildCounterReportConfigGroupPreferenceSetAssignment++;
  if (buildCounterReportConfigGroupPreferenceSetAssignment < 3) {
    unittest.expect(
      o.group!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.preferenceSet!,
      unittest.equals('foo'),
    );
  }
  buildCounterReportConfigGroupPreferenceSetAssignment--;
}

core.List<api.ReportSummaryGroupFinding> buildUnnamed71() => [
      buildReportSummaryGroupFinding(),
      buildReportSummaryGroupFinding(),
    ];

void checkUnnamed71(core.List<api.ReportSummaryGroupFinding> o) {
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
    o.groupFindings = buildUnnamed71();
  }
  buildCounterReportSummary--;
  return o;
}

void checkReportSummary(api.ReportSummary o) {
  buildCounterReportSummary++;
  if (buildCounterReportSummary < 3) {
    checkReportSummaryAssetAggregateStats(o.allAssetsStats!);
    checkUnnamed71(o.groupFindings!);
  }
  buildCounterReportSummary--;
}

core.int buildCounterReportSummaryAssetAggregateStats = 0;
api.ReportSummaryAssetAggregateStats buildReportSummaryAssetAggregateStats() {
  final o = api.ReportSummaryAssetAggregateStats();
  buildCounterReportSummaryAssetAggregateStats++;
  if (buildCounterReportSummaryAssetAggregateStats < 3) {
    o.coreCountHistogram = buildReportSummaryHistogramChartData();
    o.memoryBytesHistogram = buildReportSummaryHistogramChartData();
    o.memoryUtilizationChart = buildReportSummaryUtilizationChartData();
    o.operatingSystem = buildReportSummaryChartData();
    o.storageBytesHistogram = buildReportSummaryHistogramChartData();
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
    api.ReportSummaryAssetAggregateStats o) {
  buildCounterReportSummaryAssetAggregateStats++;
  if (buildCounterReportSummaryAssetAggregateStats < 3) {
    checkReportSummaryHistogramChartData(o.coreCountHistogram!);
    checkReportSummaryHistogramChartData(o.memoryBytesHistogram!);
    checkReportSummaryUtilizationChartData(o.memoryUtilizationChart!);
    checkReportSummaryChartData(o.operatingSystem!);
    checkReportSummaryHistogramChartData(o.storageBytesHistogram!);
    checkReportSummaryUtilizationChartData(o.storageUtilizationChart!);
    unittest.expect(
      o.totalAssets!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalCores!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalMemoryBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalStorageBytes!,
      unittest.equals('foo'),
    );
  }
  buildCounterReportSummaryAssetAggregateStats--;
}

core.List<api.ReportSummaryChartDataDataPoint> buildUnnamed72() => [
      buildReportSummaryChartDataDataPoint(),
      buildReportSummaryChartDataDataPoint(),
    ];

void checkUnnamed72(core.List<api.ReportSummaryChartDataDataPoint> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportSummaryChartDataDataPoint(o[0]);
  checkReportSummaryChartDataDataPoint(o[1]);
}

core.int buildCounterReportSummaryChartData = 0;
api.ReportSummaryChartData buildReportSummaryChartData() {
  final o = api.ReportSummaryChartData();
  buildCounterReportSummaryChartData++;
  if (buildCounterReportSummaryChartData < 3) {
    o.dataPoints = buildUnnamed72();
  }
  buildCounterReportSummaryChartData--;
  return o;
}

void checkReportSummaryChartData(api.ReportSummaryChartData o) {
  buildCounterReportSummaryChartData++;
  if (buildCounterReportSummaryChartData < 3) {
    checkUnnamed72(o.dataPoints!);
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
    api.ReportSummaryChartDataDataPoint o) {
  buildCounterReportSummaryChartDataDataPoint++;
  if (buildCounterReportSummaryChartDataDataPoint < 3) {
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals(42.0),
    );
  }
  buildCounterReportSummaryChartDataDataPoint--;
}

core.List<core.String> buildUnnamed73() => [
      'foo',
      'foo',
    ];

void checkUnnamed73(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed74() => [
      'foo',
      'foo',
    ];

void checkUnnamed74(core.List<core.String> o) {
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

core.List<api.ReportSummaryMachineSeriesAllocation> buildUnnamed75() => [
      buildReportSummaryMachineSeriesAllocation(),
      buildReportSummaryMachineSeriesAllocation(),
    ];

void checkUnnamed75(core.List<api.ReportSummaryMachineSeriesAllocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportSummaryMachineSeriesAllocation(o[0]);
  checkReportSummaryMachineSeriesAllocation(o[1]);
}

core.int buildCounterReportSummaryComputeEngineFinding = 0;
api.ReportSummaryComputeEngineFinding buildReportSummaryComputeEngineFinding() {
  final o = api.ReportSummaryComputeEngineFinding();
  buildCounterReportSummaryComputeEngineFinding++;
  if (buildCounterReportSummaryComputeEngineFinding < 3) {
    o.allocatedAssetCount = 'foo';
    o.allocatedDiskTypes = buildUnnamed73();
    o.allocatedRegions = buildUnnamed74();
    o.machineSeriesAllocations = buildUnnamed75();
  }
  buildCounterReportSummaryComputeEngineFinding--;
  return o;
}

void checkReportSummaryComputeEngineFinding(
    api.ReportSummaryComputeEngineFinding o) {
  buildCounterReportSummaryComputeEngineFinding++;
  if (buildCounterReportSummaryComputeEngineFinding < 3) {
    unittest.expect(
      o.allocatedAssetCount!,
      unittest.equals('foo'),
    );
    checkUnnamed73(o.allocatedDiskTypes!);
    checkUnnamed74(o.allocatedRegions!);
    checkUnnamed75(o.machineSeriesAllocations!);
  }
  buildCounterReportSummaryComputeEngineFinding--;
}

core.List<api.ReportSummaryGroupPreferenceSetFinding> buildUnnamed76() => [
      buildReportSummaryGroupPreferenceSetFinding(),
      buildReportSummaryGroupPreferenceSetFinding(),
    ];

void checkUnnamed76(core.List<api.ReportSummaryGroupPreferenceSetFinding> o) {
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
    o.description = 'foo';
    o.displayName = 'foo';
    o.overlappingAssetCount = 'foo';
    o.preferenceSetFindings = buildUnnamed76();
  }
  buildCounterReportSummaryGroupFinding--;
  return o;
}

void checkReportSummaryGroupFinding(api.ReportSummaryGroupFinding o) {
  buildCounterReportSummaryGroupFinding++;
  if (buildCounterReportSummaryGroupFinding < 3) {
    checkReportSummaryAssetAggregateStats(o.assetAggregateStats!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.overlappingAssetCount!,
      unittest.equals('foo'),
    );
    checkUnnamed76(o.preferenceSetFindings!);
  }
  buildCounterReportSummaryGroupFinding--;
}

core.int buildCounterReportSummaryGroupPreferenceSetFinding = 0;
api.ReportSummaryGroupPreferenceSetFinding
    buildReportSummaryGroupPreferenceSetFinding() {
  final o = api.ReportSummaryGroupPreferenceSetFinding();
  buildCounterReportSummaryGroupPreferenceSetFinding++;
  if (buildCounterReportSummaryGroupPreferenceSetFinding < 3) {
    o.computeEngineFinding = buildReportSummaryComputeEngineFinding();
    o.description = 'foo';
    o.displayName = 'foo';
    o.machinePreferences = buildVirtualMachinePreferences();
    o.monthlyCostCompute = buildMoney();
    o.monthlyCostNetworkEgress = buildMoney();
    o.monthlyCostOsLicense = buildMoney();
    o.monthlyCostOther = buildMoney();
    o.monthlyCostStorage = buildMoney();
    o.monthlyCostTotal = buildMoney();
    o.soleTenantFinding = buildReportSummarySoleTenantFinding();
    o.vmwareEngineFinding = buildReportSummaryVmwareEngineFinding();
  }
  buildCounterReportSummaryGroupPreferenceSetFinding--;
  return o;
}

void checkReportSummaryGroupPreferenceSetFinding(
    api.ReportSummaryGroupPreferenceSetFinding o) {
  buildCounterReportSummaryGroupPreferenceSetFinding++;
  if (buildCounterReportSummaryGroupPreferenceSetFinding < 3) {
    checkReportSummaryComputeEngineFinding(o.computeEngineFinding!);
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    checkVirtualMachinePreferences(o.machinePreferences!);
    checkMoney(o.monthlyCostCompute!);
    checkMoney(o.monthlyCostNetworkEgress!);
    checkMoney(o.monthlyCostOsLicense!);
    checkMoney(o.monthlyCostOther!);
    checkMoney(o.monthlyCostStorage!);
    checkMoney(o.monthlyCostTotal!);
    checkReportSummarySoleTenantFinding(o.soleTenantFinding!);
    checkReportSummaryVmwareEngineFinding(o.vmwareEngineFinding!);
  }
  buildCounterReportSummaryGroupPreferenceSetFinding--;
}

core.List<api.ReportSummaryHistogramChartDataBucket> buildUnnamed77() => [
      buildReportSummaryHistogramChartDataBucket(),
      buildReportSummaryHistogramChartDataBucket(),
    ];

void checkUnnamed77(core.List<api.ReportSummaryHistogramChartDataBucket> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportSummaryHistogramChartDataBucket(o[0]);
  checkReportSummaryHistogramChartDataBucket(o[1]);
}

core.int buildCounterReportSummaryHistogramChartData = 0;
api.ReportSummaryHistogramChartData buildReportSummaryHistogramChartData() {
  final o = api.ReportSummaryHistogramChartData();
  buildCounterReportSummaryHistogramChartData++;
  if (buildCounterReportSummaryHistogramChartData < 3) {
    o.buckets = buildUnnamed77();
  }
  buildCounterReportSummaryHistogramChartData--;
  return o;
}

void checkReportSummaryHistogramChartData(
    api.ReportSummaryHistogramChartData o) {
  buildCounterReportSummaryHistogramChartData++;
  if (buildCounterReportSummaryHistogramChartData < 3) {
    checkUnnamed77(o.buckets!);
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
    api.ReportSummaryHistogramChartDataBucket o) {
  buildCounterReportSummaryHistogramChartDataBucket++;
  if (buildCounterReportSummaryHistogramChartDataBucket < 3) {
    unittest.expect(
      o.count!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.lowerBound!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.upperBound!,
      unittest.equals('foo'),
    );
  }
  buildCounterReportSummaryHistogramChartDataBucket--;
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
    api.ReportSummaryMachineSeriesAllocation o) {
  buildCounterReportSummaryMachineSeriesAllocation++;
  if (buildCounterReportSummaryMachineSeriesAllocation < 3) {
    unittest.expect(
      o.allocatedAssetCount!,
      unittest.equals('foo'),
    );
    checkMachineSeries(o.machineSeries!);
  }
  buildCounterReportSummaryMachineSeriesAllocation--;
}

core.List<core.String> buildUnnamed78() => [
      'foo',
      'foo',
    ];

void checkUnnamed78(core.List<core.String> o) {
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

core.List<api.ReportSummarySoleTenantNodeAllocation> buildUnnamed79() => [
      buildReportSummarySoleTenantNodeAllocation(),
      buildReportSummarySoleTenantNodeAllocation(),
    ];

void checkUnnamed79(core.List<api.ReportSummarySoleTenantNodeAllocation> o) {
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
    o.allocatedRegions = buildUnnamed78();
    o.nodeAllocations = buildUnnamed79();
  }
  buildCounterReportSummarySoleTenantFinding--;
  return o;
}

void checkReportSummarySoleTenantFinding(api.ReportSummarySoleTenantFinding o) {
  buildCounterReportSummarySoleTenantFinding++;
  if (buildCounterReportSummarySoleTenantFinding < 3) {
    unittest.expect(
      o.allocatedAssetCount!,
      unittest.equals('foo'),
    );
    checkUnnamed78(o.allocatedRegions!);
    checkUnnamed79(o.nodeAllocations!);
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
    api.ReportSummarySoleTenantNodeAllocation o) {
  buildCounterReportSummarySoleTenantNodeAllocation++;
  if (buildCounterReportSummarySoleTenantNodeAllocation < 3) {
    unittest.expect(
      o.allocatedAssetCount!,
      unittest.equals('foo'),
    );
    checkSoleTenantNodeType(o.node!);
    unittest.expect(
      o.nodeCount!,
      unittest.equals('foo'),
    );
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
    api.ReportSummaryUtilizationChartData o) {
  buildCounterReportSummaryUtilizationChartData++;
  if (buildCounterReportSummaryUtilizationChartData < 3) {
    unittest.expect(
      o.free!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.used!,
      unittest.equals('foo'),
    );
  }
  buildCounterReportSummaryUtilizationChartData--;
}

core.List<core.String> buildUnnamed80() => [
      'foo',
      'foo',
    ];

void checkUnnamed80(core.List<core.String> o) {
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

core.List<api.ReportSummaryVmwareNodeAllocation> buildUnnamed81() => [
      buildReportSummaryVmwareNodeAllocation(),
      buildReportSummaryVmwareNodeAllocation(),
    ];

void checkUnnamed81(core.List<api.ReportSummaryVmwareNodeAllocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkReportSummaryVmwareNodeAllocation(o[0]);
  checkReportSummaryVmwareNodeAllocation(o[1]);
}

core.int buildCounterReportSummaryVmwareEngineFinding = 0;
api.ReportSummaryVmwareEngineFinding buildReportSummaryVmwareEngineFinding() {
  final o = api.ReportSummaryVmwareEngineFinding();
  buildCounterReportSummaryVmwareEngineFinding++;
  if (buildCounterReportSummaryVmwareEngineFinding < 3) {
    o.allocatedAssetCount = 'foo';
    o.allocatedRegions = buildUnnamed80();
    o.nodeAllocations = buildUnnamed81();
  }
  buildCounterReportSummaryVmwareEngineFinding--;
  return o;
}

void checkReportSummaryVmwareEngineFinding(
    api.ReportSummaryVmwareEngineFinding o) {
  buildCounterReportSummaryVmwareEngineFinding++;
  if (buildCounterReportSummaryVmwareEngineFinding < 3) {
    unittest.expect(
      o.allocatedAssetCount!,
      unittest.equals('foo'),
    );
    checkUnnamed80(o.allocatedRegions!);
    checkUnnamed81(o.nodeAllocations!);
  }
  buildCounterReportSummaryVmwareEngineFinding--;
}

core.int buildCounterReportSummaryVmwareNode = 0;
api.ReportSummaryVmwareNode buildReportSummaryVmwareNode() {
  final o = api.ReportSummaryVmwareNode();
  buildCounterReportSummaryVmwareNode++;
  if (buildCounterReportSummaryVmwareNode < 3) {
    o.code = 'foo';
  }
  buildCounterReportSummaryVmwareNode--;
  return o;
}

void checkReportSummaryVmwareNode(api.ReportSummaryVmwareNode o) {
  buildCounterReportSummaryVmwareNode++;
  if (buildCounterReportSummaryVmwareNode < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
  }
  buildCounterReportSummaryVmwareNode--;
}

core.int buildCounterReportSummaryVmwareNodeAllocation = 0;
api.ReportSummaryVmwareNodeAllocation buildReportSummaryVmwareNodeAllocation() {
  final o = api.ReportSummaryVmwareNodeAllocation();
  buildCounterReportSummaryVmwareNodeAllocation++;
  if (buildCounterReportSummaryVmwareNodeAllocation < 3) {
    o.allocatedAssetCount = 'foo';
    o.nodeCount = 'foo';
    o.vmwareNode = buildReportSummaryVmwareNode();
  }
  buildCounterReportSummaryVmwareNodeAllocation--;
  return o;
}

void checkReportSummaryVmwareNodeAllocation(
    api.ReportSummaryVmwareNodeAllocation o) {
  buildCounterReportSummaryVmwareNodeAllocation++;
  if (buildCounterReportSummaryVmwareNodeAllocation < 3) {
    unittest.expect(
      o.allocatedAssetCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.nodeCount!,
      unittest.equals('foo'),
    );
    checkReportSummaryVmwareNode(o.vmwareNode!);
  }
  buildCounterReportSummaryVmwareNodeAllocation--;
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
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterRunImportJobRequest--;
}

core.Map<core.String, core.String> buildUnnamed82() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed82(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterRunningProcess = 0;
api.RunningProcess buildRunningProcess() {
  final o = api.RunningProcess();
  buildCounterRunningProcess++;
  if (buildCounterRunningProcess < 3) {
    o.attributes = buildUnnamed82();
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
    checkUnnamed82(o.attributes!);
    unittest.expect(
      o.cmdline!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.exePath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.user!,
      unittest.equals('foo'),
    );
  }
  buildCounterRunningProcess--;
}

core.List<api.RunningProcess> buildUnnamed83() => [
      buildRunningProcess(),
      buildRunningProcess(),
    ];

void checkUnnamed83(core.List<api.RunningProcess> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRunningProcess(o[0]);
  checkRunningProcess(o[1]);
}

core.int buildCounterRunningProcessList = 0;
api.RunningProcessList buildRunningProcessList() {
  final o = api.RunningProcessList();
  buildCounterRunningProcessList++;
  if (buildCounterRunningProcessList < 3) {
    o.entries = buildUnnamed83();
  }
  buildCounterRunningProcessList--;
  return o;
}

void checkRunningProcessList(api.RunningProcessList o) {
  buildCounterRunningProcessList++;
  if (buildCounterRunningProcessList < 3) {
    checkUnnamed83(o.entries!);
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
    o.pid = 'foo';
    o.serviceName = 'foo';
    o.startMode = 'foo';
    o.state = 'foo';
  }
  buildCounterRunningService--;
  return o;
}

void checkRunningService(api.RunningService o) {
  buildCounterRunningService++;
  if (buildCounterRunningService < 3) {
    unittest.expect(
      o.cmdline!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.exePath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
  }
  buildCounterRunningService--;
}

core.List<api.RunningService> buildUnnamed84() => [
      buildRunningService(),
      buildRunningService(),
    ];

void checkUnnamed84(core.List<api.RunningService> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRunningService(o[0]);
  checkRunningService(o[1]);
}

core.int buildCounterRunningServiceList = 0;
api.RunningServiceList buildRunningServiceList() {
  final o = api.RunningServiceList();
  buildCounterRunningServiceList++;
  if (buildCounterRunningServiceList < 3) {
    o.entries = buildUnnamed84();
  }
  buildCounterRunningServiceList--;
  return o;
}

void checkRunningServiceList(api.RunningServiceList o) {
  buildCounterRunningServiceList++;
  if (buildCounterRunningServiceList < 3) {
    checkUnnamed84(o.entries!);
  }
  buildCounterRunningServiceList--;
}

core.int buildCounterRuntimeNetworkInfo = 0;
api.RuntimeNetworkInfo buildRuntimeNetworkInfo() {
  final o = api.RuntimeNetworkInfo();
  buildCounterRuntimeNetworkInfo++;
  if (buildCounterRuntimeNetworkInfo < 3) {
    o.connections = buildNetworkConnectionList();
    o.scanTime = 'foo';
  }
  buildCounterRuntimeNetworkInfo--;
  return o;
}

void checkRuntimeNetworkInfo(api.RuntimeNetworkInfo o) {
  buildCounterRuntimeNetworkInfo++;
  if (buildCounterRuntimeNetworkInfo < 3) {
    checkNetworkConnectionList(o.connections!);
    unittest.expect(
      o.scanTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterRuntimeNetworkInfo--;
}

core.List<api.Status> buildUnnamed85() => [
      buildStatus(),
      buildStatus(),
    ];

void checkUnnamed85(core.List<api.Status> o) {
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
    o.errors = buildUnnamed85();
    o.version = 'foo';
  }
  buildCounterSendDiscoveryClientHeartbeatRequest--;
  return o;
}

void checkSendDiscoveryClientHeartbeatRequest(
    api.SendDiscoveryClientHeartbeatRequest o) {
  buildCounterSendDiscoveryClientHeartbeatRequest++;
  if (buildCounterSendDiscoveryClientHeartbeatRequest < 3) {
    checkUnnamed85(o.errors!);
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterSendDiscoveryClientHeartbeatRequest--;
}

core.int buildCounterSettings = 0;
api.Settings buildSettings() {
  final o = api.Settings();
  buildCounterSettings++;
  if (buildCounterSettings < 3) {
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
    unittest.expect(o.disableCloudLogging!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.preferenceSet!,
      unittest.equals('foo'),
    );
  }
  buildCounterSettings--;
}

core.List<api.SoleTenantNodeType> buildUnnamed86() => [
      buildSoleTenantNodeType(),
      buildSoleTenantNodeType(),
    ];

void checkUnnamed86(core.List<api.SoleTenantNodeType> o) {
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
    o.nodeTypes = buildUnnamed86();
  }
  buildCounterSoleTenancyPreferences--;
  return o;
}

void checkSoleTenancyPreferences(api.SoleTenancyPreferences o) {
  buildCounterSoleTenancyPreferences++;
  if (buildCounterSoleTenancyPreferences < 3) {
    unittest.expect(
      o.commitmentPlan!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cpuOvercommitRatio!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.hostMaintenancePolicy!,
      unittest.equals('foo'),
    );
    checkUnnamed86(o.nodeTypes!);
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
    unittest.expect(
      o.nodeName!,
      unittest.equals('foo'),
    );
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
    o.managed = true;
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
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.displayName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.errorFrameCount!,
      unittest.equals(42),
    );
    unittest.expect(o.managed!, unittest.isTrue);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pendingFrameCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.priority!,
      unittest.equals(42),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterSource--;
}

core.Map<core.String, core.Object?> buildUnnamed87() => {
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

void checkUnnamed87(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o['x']!) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(
    casted7['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted7['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted7['string'],
    unittest.equals('foo'),
  );
  var casted8 = (o['y']!) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(
    casted8['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted8['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted8['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed88() => [
      buildUnnamed87(),
      buildUnnamed87(),
    ];

void checkUnnamed88(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed87(o[0]);
  checkUnnamed87(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed88();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(
      o.code!,
      unittest.equals(42),
    );
    checkUnnamed88(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
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
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateMask!,
      unittest.equals('foo'),
    );
  }
  buildCounterUpdateAssetRequest--;
}

core.Map<core.String, core.String> buildUnnamed89() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed89(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(
    o['x']!,
    unittest.equals('foo'),
  );
  unittest.expect(
    o['y']!,
    unittest.equals('foo'),
  );
}

core.int buildCounterUploadFileInfo = 0;
api.UploadFileInfo buildUploadFileInfo() {
  final o = api.UploadFileInfo();
  buildCounterUploadFileInfo++;
  if (buildCounterUploadFileInfo < 3) {
    o.headers = buildUnnamed89();
    o.signedUri = 'foo';
    o.uriExpirationTime = 'foo';
  }
  buildCounterUploadFileInfo--;
  return o;
}

void checkUploadFileInfo(api.UploadFileInfo o) {
  buildCounterUploadFileInfo++;
  if (buildCounterUploadFileInfo < 3) {
    checkUnnamed89(o.headers!);
    unittest.expect(
      o.signedUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uriExpirationTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterUploadFileInfo--;
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
    unittest.expect(
      o.requestId!,
      unittest.equals('foo'),
    );
  }
  buildCounterValidateImportJobRequest--;
}

core.List<api.FileValidationReport> buildUnnamed90() => [
      buildFileValidationReport(),
      buildFileValidationReport(),
    ];

void checkUnnamed90(core.List<api.FileValidationReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileValidationReport(o[0]);
  checkFileValidationReport(o[1]);
}

core.List<api.ImportError> buildUnnamed91() => [
      buildImportError(),
      buildImportError(),
    ];

void checkUnnamed91(core.List<api.ImportError> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkImportError(o[0]);
  checkImportError(o[1]);
}

core.int buildCounterValidationReport = 0;
api.ValidationReport buildValidationReport() {
  final o = api.ValidationReport();
  buildCounterValidationReport++;
  if (buildCounterValidationReport < 3) {
    o.fileValidations = buildUnnamed90();
    o.jobErrors = buildUnnamed91();
  }
  buildCounterValidationReport--;
  return o;
}

void checkValidationReport(api.ValidationReport o) {
  buildCounterValidationReport++;
  if (buildCounterValidationReport < 3) {
    checkUnnamed90(o.fileValidations!);
    checkUnnamed91(o.jobErrors!);
  }
  buildCounterValidationReport--;
}

core.int buildCounterVirtualMachinePreferences = 0;
api.VirtualMachinePreferences buildVirtualMachinePreferences() {
  final o = api.VirtualMachinePreferences();
  buildCounterVirtualMachinePreferences++;
  if (buildCounterVirtualMachinePreferences < 3) {
    o.commitmentPlan = 'foo';
    o.computeEnginePreferences = buildComputeEnginePreferences();
    o.regionPreferences = buildRegionPreferences();
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
    unittest.expect(
      o.commitmentPlan!,
      unittest.equals('foo'),
    );
    checkComputeEnginePreferences(o.computeEnginePreferences!);
    checkRegionPreferences(o.regionPreferences!);
    unittest.expect(
      o.sizingOptimizationStrategy!,
      unittest.equals('foo'),
    );
    checkSoleTenancyPreferences(o.soleTenancyPreferences!);
    unittest.expect(
      o.targetProduct!,
      unittest.equals('foo'),
    );
    checkVmwareEnginePreferences(o.vmwareEnginePreferences!);
  }
  buildCounterVirtualMachinePreferences--;
}

core.int buildCounterVmwareDiskConfig = 0;
api.VmwareDiskConfig buildVmwareDiskConfig() {
  final o = api.VmwareDiskConfig();
  buildCounterVmwareDiskConfig++;
  if (buildCounterVmwareDiskConfig < 3) {
    o.backingType = 'foo';
    o.rdmCompatibility = 'foo';
    o.shared = true;
    o.vmdkMode = 'foo';
  }
  buildCounterVmwareDiskConfig--;
  return o;
}

void checkVmwareDiskConfig(api.VmwareDiskConfig o) {
  buildCounterVmwareDiskConfig++;
  if (buildCounterVmwareDiskConfig < 3) {
    unittest.expect(
      o.backingType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.rdmCompatibility!,
      unittest.equals('foo'),
    );
    unittest.expect(o.shared!, unittest.isTrue);
    unittest.expect(
      o.vmdkMode!,
      unittest.equals('foo'),
    );
  }
  buildCounterVmwareDiskConfig--;
}

core.int buildCounterVmwareEnginePreferences = 0;
api.VmwareEnginePreferences buildVmwareEnginePreferences() {
  final o = api.VmwareEnginePreferences();
  buildCounterVmwareEnginePreferences++;
  if (buildCounterVmwareEnginePreferences < 3) {
    o.commitmentPlan = 'foo';
    o.cpuOvercommitRatio = 42.0;
    o.memoryOvercommitRatio = 42.0;
    o.storageDeduplicationCompressionRatio = 42.0;
  }
  buildCounterVmwareEnginePreferences--;
  return o;
}

void checkVmwareEnginePreferences(api.VmwareEnginePreferences o) {
  buildCounterVmwareEnginePreferences++;
  if (buildCounterVmwareEnginePreferences < 3) {
    unittest.expect(
      o.commitmentPlan!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.cpuOvercommitRatio!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.memoryOvercommitRatio!,
      unittest.equals(42.0),
    );
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
    o.esxVersion = 'foo';
    o.osid = 'foo';
    o.vcenterFolder = 'foo';
    o.vcenterUri = 'foo';
    o.vcenterVersion = 'foo';
    o.vcenterVmId = 'foo';
  }
  buildCounterVmwarePlatformDetails--;
  return o;
}

void checkVmwarePlatformDetails(api.VmwarePlatformDetails o) {
  buildCounterVmwarePlatformDetails++;
  if (buildCounterVmwarePlatformDetails < 3) {
    unittest.expect(
      o.esxVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.osid!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vcenterFolder!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vcenterUri!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vcenterVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vcenterVmId!,
      unittest.equals('foo'),
    );
  }
  buildCounterVmwarePlatformDetails--;
}

void main() {
  unittest.group('obj-schema-AddAssetsToGroupRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAddAssetsToGroupRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AddAssetsToGroupRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAddAssetsToGroupRequest(od);
    });
  });

  unittest.group('obj-schema-AggregateAssetsValuesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregateAssetsValuesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregateAssetsValuesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAggregateAssetsValuesRequest(od);
    });
  });

  unittest.group('obj-schema-AggregateAssetsValuesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregateAssetsValuesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregateAssetsValuesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAggregateAssetsValuesResponse(od);
    });
  });

  unittest.group('obj-schema-Aggregation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Aggregation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAggregation(od);
    });
  });

  unittest.group('obj-schema-AggregationCount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregationCount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregationCount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAggregationCount(od);
    });
  });

  unittest.group('obj-schema-AggregationFrequency', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregationFrequency();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregationFrequency.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAggregationFrequency(od);
    });
  });

  unittest.group('obj-schema-AggregationHistogram', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregationHistogram();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregationHistogram.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAggregationHistogram(od);
    });
  });

  unittest.group('obj-schema-AggregationResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregationResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregationResult.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAggregationResult(od);
    });
  });

  unittest.group('obj-schema-AggregationResultCount', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregationResultCount();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregationResultCount.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAggregationResultCount(od);
    });
  });

  unittest.group('obj-schema-AggregationResultFrequency', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregationResultFrequency();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregationResultFrequency.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAggregationResultFrequency(od);
    });
  });

  unittest.group('obj-schema-AggregationResultHistogram', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregationResultHistogram();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregationResultHistogram.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAggregationResultHistogram(od);
    });
  });

  unittest.group('obj-schema-AggregationResultHistogramBucket', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregationResultHistogramBucket();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregationResultHistogramBucket.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAggregationResultHistogramBucket(od);
    });
  });

  unittest.group('obj-schema-AggregationResultSum', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregationResultSum();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregationResultSum.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAggregationResultSum(od);
    });
  });

  unittest.group('obj-schema-AggregationSum', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAggregationSum();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AggregationSum.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAggregationSum(od);
    });
  });

  unittest.group('obj-schema-Asset', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAsset();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Asset.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAsset(od);
    });
  });

  unittest.group('obj-schema-AssetFrame', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssetFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AssetFrame.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAssetFrame(od);
    });
  });

  unittest.group('obj-schema-AssetList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssetList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.AssetList.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkAssetList(od);
    });
  });

  unittest.group('obj-schema-AssetPerformanceData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAssetPerformanceData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AssetPerformanceData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAssetPerformanceData(od);
    });
  });

  unittest.group('obj-schema-AwsEc2PlatformDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAwsEc2PlatformDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AwsEc2PlatformDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAwsEc2PlatformDetails(od);
    });
  });

  unittest.group('obj-schema-AzureVmPlatformDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAzureVmPlatformDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AzureVmPlatformDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAzureVmPlatformDetails(od);
    });
  });

  unittest.group('obj-schema-BatchDeleteAssetsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchDeleteAssetsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchDeleteAssetsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchDeleteAssetsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateAssetsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateAssetsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateAssetsRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateAssetsRequest(od);
    });
  });

  unittest.group('obj-schema-BatchUpdateAssetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatchUpdateAssetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BatchUpdateAssetsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBatchUpdateAssetsResponse(od);
    });
  });

  unittest.group('obj-schema-BiosDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBiosDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BiosDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBiosDetails(od);
    });
  });

  unittest.group('obj-schema-CancelOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCancelOperationRequest(od);
    });
  });

  unittest.group('obj-schema-ComputeEngineMigrationTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeEngineMigrationTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeEngineMigrationTarget.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComputeEngineMigrationTarget(od);
    });
  });

  unittest.group('obj-schema-ComputeEnginePreferences', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeEnginePreferences();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeEnginePreferences.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComputeEnginePreferences(od);
    });
  });

  unittest.group('obj-schema-ComputeEngineShapeDescriptor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeEngineShapeDescriptor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeEngineShapeDescriptor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComputeEngineShapeDescriptor(od);
    });
  });

  unittest.group('obj-schema-ComputeStorageDescriptor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputeStorageDescriptor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputeStorageDescriptor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComputeStorageDescriptor(od);
    });
  });

  unittest.group('obj-schema-CpuUsageSample', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCpuUsageSample();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CpuUsageSample.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCpuUsageSample(od);
    });
  });

  unittest.group('obj-schema-DailyResourceUsageAggregation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDailyResourceUsageAggregation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DailyResourceUsageAggregation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDailyResourceUsageAggregation(od);
    });
  });

  unittest.group('obj-schema-DailyResourceUsageAggregationCPU', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDailyResourceUsageAggregationCPU();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DailyResourceUsageAggregationCPU.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDailyResourceUsageAggregationCPU(od);
    });
  });

  unittest.group('obj-schema-DailyResourceUsageAggregationDisk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDailyResourceUsageAggregationDisk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DailyResourceUsageAggregationDisk.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDailyResourceUsageAggregationDisk(od);
    });
  });

  unittest.group('obj-schema-DailyResourceUsageAggregationMemory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDailyResourceUsageAggregationMemory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DailyResourceUsageAggregationMemory.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDailyResourceUsageAggregationMemory(od);
    });
  });

  unittest.group('obj-schema-DailyResourceUsageAggregationNetwork', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDailyResourceUsageAggregationNetwork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DailyResourceUsageAggregationNetwork.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDailyResourceUsageAggregationNetwork(od);
    });
  });

  unittest.group('obj-schema-DailyResourceUsageAggregationStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDailyResourceUsageAggregationStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DailyResourceUsageAggregationStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDailyResourceUsageAggregationStats(od);
    });
  });

  unittest.group('obj-schema-Date', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Date.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDate(od);
    });
  });

  unittest.group('obj-schema-DiscoveryClient', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiscoveryClient();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiscoveryClient.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDiscoveryClient(od);
    });
  });

  unittest.group('obj-schema-DiskEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiskEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.DiskEntry.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDiskEntry(od);
    });
  });

  unittest.group('obj-schema-DiskEntryList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiskEntryList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiskEntryList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDiskEntryList(od);
    });
  });

  unittest.group('obj-schema-DiskPartition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiskPartition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiskPartition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDiskPartition(od);
    });
  });

  unittest.group('obj-schema-DiskPartitionList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiskPartitionList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiskPartitionList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDiskPartitionList(od);
    });
  });

  unittest.group('obj-schema-DiskUsageSample', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiskUsageSample();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiskUsageSample.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDiskUsageSample(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEmpty();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Empty.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-ErrorFrame', () {
    unittest.test('to-json--from-json', () async {
      final o = buildErrorFrame();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ErrorFrame.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkErrorFrame(od);
    });
  });

  unittest.group('obj-schema-ExecutionReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecutionReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecutionReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExecutionReport(od);
    });
  });

  unittest.group('obj-schema-FileValidationReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileValidationReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileValidationReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFileValidationReport(od);
    });
  });

  unittest.group('obj-schema-FitDescriptor', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFitDescriptor();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FitDescriptor.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFitDescriptor(od);
    });
  });

  unittest.group('obj-schema-FrameViolationEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFrameViolationEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FrameViolationEntry.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFrameViolationEntry(od);
    });
  });

  unittest.group('obj-schema-Frames', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFrames();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Frames.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFrames(od);
    });
  });

  unittest.group('obj-schema-FstabEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFstabEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.FstabEntry.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkFstabEntry(od);
    });
  });

  unittest.group('obj-schema-FstabEntryList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFstabEntryList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FstabEntryList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFstabEntryList(od);
    });
  });

  unittest.group('obj-schema-GenericInsight', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenericInsight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenericInsight.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGenericInsight(od);
    });
  });

  unittest.group('obj-schema-GenericPlatformDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGenericPlatformDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GenericPlatformDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGenericPlatformDetails(od);
    });
  });

  unittest.group('obj-schema-Group', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Group.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGroup(od);
    });
  });

  unittest.group('obj-schema-GuestConfigDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGuestConfigDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GuestConfigDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGuestConfigDetails(od);
    });
  });

  unittest.group('obj-schema-GuestInstalledApplication', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGuestInstalledApplication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GuestInstalledApplication.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGuestInstalledApplication(od);
    });
  });

  unittest.group('obj-schema-GuestInstalledApplicationList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGuestInstalledApplicationList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GuestInstalledApplicationList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGuestInstalledApplicationList(od);
    });
  });

  unittest.group('obj-schema-GuestOsDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGuestOsDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GuestOsDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGuestOsDetails(od);
    });
  });

  unittest.group('obj-schema-GuestRuntimeDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGuestRuntimeDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GuestRuntimeDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGuestRuntimeDetails(od);
    });
  });

  unittest.group('obj-schema-HostsEntry', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHostsEntry();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.HostsEntry.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHostsEntry(od);
    });
  });

  unittest.group('obj-schema-HostsEntryList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHostsEntryList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HostsEntryList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHostsEntryList(od);
    });
  });

  unittest.group('obj-schema-ImportDataFile', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportDataFile();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportDataFile.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportDataFile(od);
    });
  });

  unittest.group('obj-schema-ImportError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportError(od);
    });
  });

  unittest.group('obj-schema-ImportJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ImportJob.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkImportJob(od);
    });
  });

  unittest.group('obj-schema-ImportRowError', () {
    unittest.test('to-json--from-json', () async {
      final o = buildImportRowError();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ImportRowError.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkImportRowError(od);
    });
  });

  unittest.group('obj-schema-Insight', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Insight.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkInsight(od);
    });
  });

  unittest.group('obj-schema-InsightList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInsightList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InsightList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInsightList(od);
    });
  });

  unittest.group('obj-schema-ListAssetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAssetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAssetsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListAssetsResponse(od);
    });
  });

  unittest.group('obj-schema-ListDiscoveryClientsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListDiscoveryClientsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListDiscoveryClientsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListDiscoveryClientsResponse(od);
    });
  });

  unittest.group('obj-schema-ListErrorFramesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListErrorFramesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListErrorFramesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListErrorFramesResponse(od);
    });
  });

  unittest.group('obj-schema-ListGroupsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListGroupsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListGroupsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListGroupsResponse(od);
    });
  });

  unittest.group('obj-schema-ListImportDataFilesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListImportDataFilesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListImportDataFilesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListImportDataFilesResponse(od);
    });
  });

  unittest.group('obj-schema-ListImportJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListImportJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListImportJobsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListImportJobsResponse(od);
    });
  });

  unittest.group('obj-schema-ListLocationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListLocationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListLocationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListLocationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListOperationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListOperationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListOperationsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListOperationsResponse(od);
    });
  });

  unittest.group('obj-schema-ListPreferenceSetsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListPreferenceSetsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListPreferenceSetsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListPreferenceSetsResponse(od);
    });
  });

  unittest.group('obj-schema-ListReportConfigsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListReportConfigsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListReportConfigsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListReportConfigsResponse(od);
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

  unittest.group('obj-schema-ListSourcesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSourcesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSourcesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListSourcesResponse(od);
    });
  });

  unittest.group('obj-schema-Location', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Location.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLocation(od);
    });
  });

  unittest.group('obj-schema-MachineArchitectureDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMachineArchitectureDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MachineArchitectureDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMachineArchitectureDetails(od);
    });
  });

  unittest.group('obj-schema-MachineDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMachineDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MachineDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMachineDetails(od);
    });
  });

  unittest.group('obj-schema-MachineDiskDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMachineDiskDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MachineDiskDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMachineDiskDetails(od);
    });
  });

  unittest.group('obj-schema-MachineNetworkDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMachineNetworkDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MachineNetworkDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMachineNetworkDetails(od);
    });
  });

  unittest.group('obj-schema-MachinePreferences', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMachinePreferences();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MachinePreferences.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMachinePreferences(od);
    });
  });

  unittest.group('obj-schema-MachineSeries', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMachineSeries();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MachineSeries.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMachineSeries(od);
    });
  });

  unittest.group('obj-schema-MemoryUsageSample', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMemoryUsageSample();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MemoryUsageSample.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMemoryUsageSample(od);
    });
  });

  unittest.group('obj-schema-MigrationInsight', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMigrationInsight();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MigrationInsight.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMigrationInsight(od);
    });
  });

  unittest.group('obj-schema-Money', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMoney();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Money.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMoney(od);
    });
  });

  unittest.group('obj-schema-NetworkAdapterDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkAdapterDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkAdapterDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkAdapterDetails(od);
    });
  });

  unittest.group('obj-schema-NetworkAdapterList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkAdapterList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkAdapterList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkAdapterList(od);
    });
  });

  unittest.group('obj-schema-NetworkAddress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkAddress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkAddress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkAddress(od);
    });
  });

  unittest.group('obj-schema-NetworkAddressList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkAddressList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkAddressList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkAddressList(od);
    });
  });

  unittest.group('obj-schema-NetworkConnection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkConnection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkConnection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkConnection(od);
    });
  });

  unittest.group('obj-schema-NetworkConnectionList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkConnectionList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkConnectionList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkConnectionList(od);
    });
  });

  unittest.group('obj-schema-NetworkUsageSample', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNetworkUsageSample();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NetworkUsageSample.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNetworkUsageSample(od);
    });
  });

  unittest.group('obj-schema-NfsExport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNfsExport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.NfsExport.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkNfsExport(od);
    });
  });

  unittest.group('obj-schema-NfsExportList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNfsExportList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NfsExportList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNfsExportList(od);
    });
  });

  unittest.group('obj-schema-OpenFileDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOpenFileDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OpenFileDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOpenFileDetails(od);
    });
  });

  unittest.group('obj-schema-OpenFileList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOpenFileList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OpenFileList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOpenFileList(od);
    });
  });

  unittest.group('obj-schema-Operation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOperation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Operation.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkOperation(od);
    });
  });

  unittest.group('obj-schema-PerformanceSample', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPerformanceSample();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PerformanceSample.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPerformanceSample(od);
    });
  });

  unittest.group('obj-schema-PhysicalPlatformDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPhysicalPlatformDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PhysicalPlatformDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPhysicalPlatformDetails(od);
    });
  });

  unittest.group('obj-schema-PlatformDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPlatformDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PlatformDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPlatformDetails(od);
    });
  });

  unittest.group('obj-schema-PreferenceSet', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPreferenceSet();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PreferenceSet.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPreferenceSet(od);
    });
  });

  unittest.group('obj-schema-RegionPreferences', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegionPreferences();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegionPreferences.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRegionPreferences(od);
    });
  });

  unittest.group('obj-schema-RemoveAssetsFromGroupRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRemoveAssetsFromGroupRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RemoveAssetsFromGroupRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRemoveAssetsFromGroupRequest(od);
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

  unittest.group('obj-schema-ReportAssetFramesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportAssetFramesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportAssetFramesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportAssetFramesResponse(od);
    });
  });

  unittest.group('obj-schema-ReportConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportConfig(od);
    });
  });

  unittest.group('obj-schema-ReportConfigGroupPreferenceSetAssignment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportConfigGroupPreferenceSetAssignment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportConfigGroupPreferenceSetAssignment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportConfigGroupPreferenceSetAssignment(od);
    });
  });

  unittest.group('obj-schema-ReportSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportSummary(od);
    });
  });

  unittest.group('obj-schema-ReportSummaryAssetAggregateStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummaryAssetAggregateStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummaryAssetAggregateStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportSummaryAssetAggregateStats(od);
    });
  });

  unittest.group('obj-schema-ReportSummaryChartData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummaryChartData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummaryChartData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportSummaryChartData(od);
    });
  });

  unittest.group('obj-schema-ReportSummaryChartDataDataPoint', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummaryChartDataDataPoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummaryChartDataDataPoint.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportSummaryChartDataDataPoint(od);
    });
  });

  unittest.group('obj-schema-ReportSummaryComputeEngineFinding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummaryComputeEngineFinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummaryComputeEngineFinding.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportSummaryComputeEngineFinding(od);
    });
  });

  unittest.group('obj-schema-ReportSummaryGroupFinding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummaryGroupFinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummaryGroupFinding.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportSummaryGroupFinding(od);
    });
  });

  unittest.group('obj-schema-ReportSummaryGroupPreferenceSetFinding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummaryGroupPreferenceSetFinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummaryGroupPreferenceSetFinding.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportSummaryGroupPreferenceSetFinding(od);
    });
  });

  unittest.group('obj-schema-ReportSummaryHistogramChartData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummaryHistogramChartData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummaryHistogramChartData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportSummaryHistogramChartData(od);
    });
  });

  unittest.group('obj-schema-ReportSummaryHistogramChartDataBucket', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummaryHistogramChartDataBucket();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummaryHistogramChartDataBucket.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportSummaryHistogramChartDataBucket(od);
    });
  });

  unittest.group('obj-schema-ReportSummaryMachineSeriesAllocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummaryMachineSeriesAllocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummaryMachineSeriesAllocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportSummaryMachineSeriesAllocation(od);
    });
  });

  unittest.group('obj-schema-ReportSummarySoleTenantFinding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummarySoleTenantFinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummarySoleTenantFinding.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportSummarySoleTenantFinding(od);
    });
  });

  unittest.group('obj-schema-ReportSummarySoleTenantNodeAllocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummarySoleTenantNodeAllocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummarySoleTenantNodeAllocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportSummarySoleTenantNodeAllocation(od);
    });
  });

  unittest.group('obj-schema-ReportSummaryUtilizationChartData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummaryUtilizationChartData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummaryUtilizationChartData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportSummaryUtilizationChartData(od);
    });
  });

  unittest.group('obj-schema-ReportSummaryVmwareEngineFinding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummaryVmwareEngineFinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummaryVmwareEngineFinding.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportSummaryVmwareEngineFinding(od);
    });
  });

  unittest.group('obj-schema-ReportSummaryVmwareNode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummaryVmwareNode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummaryVmwareNode.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportSummaryVmwareNode(od);
    });
  });

  unittest.group('obj-schema-ReportSummaryVmwareNodeAllocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportSummaryVmwareNodeAllocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportSummaryVmwareNodeAllocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportSummaryVmwareNodeAllocation(od);
    });
  });

  unittest.group('obj-schema-RunImportJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunImportJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunImportJobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRunImportJobRequest(od);
    });
  });

  unittest.group('obj-schema-RunningProcess', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunningProcess();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunningProcess.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRunningProcess(od);
    });
  });

  unittest.group('obj-schema-RunningProcessList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunningProcessList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunningProcessList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRunningProcessList(od);
    });
  });

  unittest.group('obj-schema-RunningService', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunningService();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunningService.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRunningService(od);
    });
  });

  unittest.group('obj-schema-RunningServiceList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRunningServiceList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RunningServiceList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRunningServiceList(od);
    });
  });

  unittest.group('obj-schema-RuntimeNetworkInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRuntimeNetworkInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RuntimeNetworkInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRuntimeNetworkInfo(od);
    });
  });

  unittest.group('obj-schema-SendDiscoveryClientHeartbeatRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSendDiscoveryClientHeartbeatRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SendDiscoveryClientHeartbeatRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSendDiscoveryClientHeartbeatRequest(od);
    });
  });

  unittest.group('obj-schema-Settings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Settings.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSettings(od);
    });
  });

  unittest.group('obj-schema-SoleTenancyPreferences', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSoleTenancyPreferences();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SoleTenancyPreferences.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSoleTenancyPreferences(od);
    });
  });

  unittest.group('obj-schema-SoleTenantNodeType', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSoleTenantNodeType();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SoleTenantNodeType.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSoleTenantNodeType(od);
    });
  });

  unittest.group('obj-schema-Source', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Source.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSource(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Status.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-UpdateAssetRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUpdateAssetRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UpdateAssetRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUpdateAssetRequest(od);
    });
  });

  unittest.group('obj-schema-UploadFileInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUploadFileInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UploadFileInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkUploadFileInfo(od);
    });
  });

  unittest.group('obj-schema-ValidateImportJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValidateImportJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValidateImportJobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkValidateImportJobRequest(od);
    });
  });

  unittest.group('obj-schema-ValidationReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValidationReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValidationReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkValidationReport(od);
    });
  });

  unittest.group('obj-schema-VirtualMachinePreferences', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVirtualMachinePreferences();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VirtualMachinePreferences.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVirtualMachinePreferences(od);
    });
  });

  unittest.group('obj-schema-VmwareDiskConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareDiskConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareDiskConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareDiskConfig(od);
    });
  });

  unittest.group('obj-schema-VmwareEnginePreferences', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwareEnginePreferences();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwareEnginePreferences.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwareEnginePreferences(od);
    });
  });

  unittest.group('obj-schema-VmwarePlatformDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVmwarePlatformDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VmwarePlatformDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkVmwarePlatformDetails(od);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations;
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
        final resp = convert.json.encode(buildLocation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkLocation(response as api.Location);
    });

    unittest.test('method--getSettings', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations;
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
        final resp = convert.json.encode(buildSettings());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getSettings(arg_name, $fields: arg_$fields);
      checkSettings(response as api.Settings);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations;
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
        final resp = convert.json.encode(buildListLocationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Settings.fromJson(json as core.Map<core.String, core.dynamic>);
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.updateSettings(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AggregateAssetsValuesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
        final resp = convert.json.encode(buildAggregateAssetsValuesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.aggregateValues(arg_request, arg_parent,
          $fields: arg_$fields);
      checkAggregateAssetsValuesResponse(
          response as api.AggregateAssetsValuesResponse);
    });

    unittest.test('method--batchDelete', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.assets;
      final arg_request = buildBatchDeleteAssetsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchDeleteAssetsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchDelete(arg_request, arg_parent, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--batchUpdate', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.assets;
      final arg_request = buildBatchUpdateAssetsRequest();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.BatchUpdateAssetsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
        final resp = convert.json.encode(buildBatchUpdateAssetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.batchUpdate(arg_request, arg_parent, $fields: arg_$fields);
      checkBatchUpdateAssetsResponse(response as api.BatchUpdateAssetsResponse);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.assets;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
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
      final response = await res.delete(arg_name,
          requestId: arg_requestId, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.assets;
      final arg_name = 'foo';
      final arg_view = 'foo';
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildAsset());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
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
      final arg_view = 'foo';
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListAssetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Asset.fromJson(json as core.Map<core.String, core.dynamic>);
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
        final resp = convert.json.encode(buildAsset());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkAsset(response as api.Asset);
    });

    unittest.test('method--reportAssetFrames', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.assets;
      final arg_request = buildFrames();
      final arg_parent = 'foo';
      final arg_source = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Frames.fromJson(json as core.Map<core.String, core.dynamic>);
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
          queryMap['source']!.first,
          unittest.equals(arg_source),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildReportAssetFramesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.reportAssetFrames(arg_request, arg_parent,
          source: arg_source, $fields: arg_$fields);
      checkReportAssetFramesResponse(response as api.ReportAssetFramesResponse);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DiscoveryClient.fromJson(
            json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          discoveryClientId: arg_discoveryClientId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(mock).projects.locations.discoveryClients;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(mock).projects.locations.discoveryClients;
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
        final resp = convert.json.encode(buildDiscoveryClient());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
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
        final resp = convert.json.encode(buildListDiscoveryClientsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListDiscoveryClientsResponse(
          response as api.ListDiscoveryClientsResponse);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.DiscoveryClient.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--sendHeartbeat', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(mock).projects.locations.discoveryClients;
      final arg_request = buildSendDiscoveryClientHeartbeatRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SendDiscoveryClientHeartbeatRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.sendHeartbeat(arg_request, arg_name, $fields: arg_$fields);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.AddAssetsToGroupRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.addAssets(arg_request, arg_group, $fields: arg_$fields);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Group.fromJson(json as core.Map<core.String, core.dynamic>);
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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          groupId: arg_groupId, requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.groups;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.groups;
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
        final resp = convert.json.encode(buildGroup());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
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
        final resp = convert.json.encode(buildListGroupsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Group.fromJson(json as core.Map<core.String, core.dynamic>);
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--removeAssets', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.groups;
      final arg_request = buildRemoveAssetsFromGroupRequest();
      final arg_group = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RemoveAssetsFromGroupRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.removeAssets(arg_request, arg_group, $fields: arg_$fields);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.ImportJob.fromJson(json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          importJobId: arg_importJobId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.importJobs;
      final arg_name = 'foo';
      final arg_force = true;
      final arg_requestId = 'foo';
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          force: arg_force, requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.importJobs;
      final arg_name = 'foo';
      final arg_view = 'foo';
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildImportJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListImportJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.ImportJob.fromJson(json as core.Map<core.String, core.dynamic>);
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--run', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.importJobs;
      final arg_request = buildRunImportJobRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.RunImportJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.run(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--validate', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.importJobs;
      final arg_request = buildValidateImportJobRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ValidateImportJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.validate(arg_request, arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsImportJobsImportDataFilesResource',
      () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock)
          .projects
          .locations
          .importJobs
          .importDataFiles;
      final arg_request = buildImportDataFile();
      final arg_parent = 'foo';
      final arg_importDataFileId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ImportDataFile.fromJson(
            json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          importDataFileId: arg_importDataFileId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock)
          .projects
          .locations
          .importJobs
          .importDataFiles;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock)
          .projects
          .locations
          .importJobs
          .importDataFiles;
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
        final resp = convert.json.encode(buildImportDataFile());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkImportDataFile(response as api.ImportDataFile);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock)
          .projects
          .locations
          .importJobs
          .importDataFiles;
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
        final resp = convert.json.encode(buildListImportDataFilesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListImportDataFilesResponse(
          response as api.ListImportDataFilesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.operations;
      final arg_request = buildCancelOperationRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CancelOperationRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.cancel(arg_request, arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.operations;
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
        final resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.operations;
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
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
        final resp = convert.json.encode(buildListOperationsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_name,
          filter: arg_filter,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PreferenceSet.fromJson(
            json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          preferenceSetId: arg_preferenceSetId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(mock).projects.locations.preferenceSets;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(mock).projects.locations.preferenceSets;
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
        final resp = convert.json.encode(buildPreferenceSet());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
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
        final resp = convert.json.encode(buildListPreferenceSetsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkListPreferenceSetsResponse(
          response as api.ListPreferenceSetsResponse);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.PreferenceSet.fromJson(
            json as core.Map<core.String, core.dynamic>);
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReportConfig.fromJson(
            json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          reportConfigId: arg_reportConfigId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.reportConfigs;
      final arg_name = 'foo';
      final arg_force = true;
      final arg_requestId = 'foo';
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          force: arg_force, requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.reportConfigs;
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
        final resp = convert.json.encode(buildReportConfig());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
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
        final resp = convert.json.encode(buildListReportConfigsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Report.fromJson(json as core.Map<core.String, core.dynamic>);
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

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          reportId: arg_reportId,
          requestId: arg_requestId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(mock).projects.locations.reportConfigs.reports;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res =
          api.MigrationCenterApi(mock).projects.locations.reportConfigs.reports;
      final arg_name = 'foo';
      final arg_view = 'foo';
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
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
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
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
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Source.fromJson(json as core.Map<core.String, core.dynamic>);
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
          queryMap['sourceId']!.first,
          unittest.equals(arg_sourceId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_parent,
          requestId: arg_requestId,
          sourceId: arg_sourceId,
          $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.sources;
      final arg_name = 'foo';
      final arg_requestId = 'foo';
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
          queryMap['requestId']!.first,
          unittest.equals(arg_requestId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(arg_name,
          requestId: arg_requestId, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.MigrationCenterApi(mock).projects.locations.sources;
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
        final resp = convert.json.encode(buildSource());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
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
        final resp = convert.json.encode(buildListSourcesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          filter: arg_filter,
          orderBy: arg_orderBy,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
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
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Source.fromJson(json as core.Map<core.String, core.dynamic>);
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
        final resp = convert.json.encode(buildOperation());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.patch(arg_request, arg_name,
          requestId: arg_requestId,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildErrorFrame());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.get(arg_name, view: arg_view, $fields: arg_$fields);
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
          queryMap['view']!.first,
          unittest.equals(arg_view),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListErrorFramesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_parent,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListErrorFramesResponse(response as api.ListErrorFramesResponse);
    });
  });
}
