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

import 'package:googleapis_beta/dataflow/v1b3.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterApproximateProgress = 0;
api.ApproximateProgress buildApproximateProgress() {
  final o = api.ApproximateProgress();
  buildCounterApproximateProgress++;
  if (buildCounterApproximateProgress < 3) {
    o.percentComplete = 42.0;
    o.position = buildPosition();
    o.remainingTime = 'foo';
  }
  buildCounterApproximateProgress--;
  return o;
}

void checkApproximateProgress(api.ApproximateProgress o) {
  buildCounterApproximateProgress++;
  if (buildCounterApproximateProgress < 3) {
    unittest.expect(
      o.percentComplete!,
      unittest.equals(42.0),
    );
    checkPosition(o.position!);
    unittest.expect(
      o.remainingTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterApproximateProgress--;
}

core.int buildCounterApproximateReportedProgress = 0;
api.ApproximateReportedProgress buildApproximateReportedProgress() {
  final o = api.ApproximateReportedProgress();
  buildCounterApproximateReportedProgress++;
  if (buildCounterApproximateReportedProgress < 3) {
    o.consumedParallelism = buildReportedParallelism();
    o.fractionConsumed = 42.0;
    o.position = buildPosition();
    o.remainingParallelism = buildReportedParallelism();
  }
  buildCounterApproximateReportedProgress--;
  return o;
}

void checkApproximateReportedProgress(api.ApproximateReportedProgress o) {
  buildCounterApproximateReportedProgress++;
  if (buildCounterApproximateReportedProgress < 3) {
    checkReportedParallelism(o.consumedParallelism!);
    unittest.expect(
      o.fractionConsumed!,
      unittest.equals(42.0),
    );
    checkPosition(o.position!);
    checkReportedParallelism(o.remainingParallelism!);
  }
  buildCounterApproximateReportedProgress--;
}

core.int buildCounterApproximateSplitRequest = 0;
api.ApproximateSplitRequest buildApproximateSplitRequest() {
  final o = api.ApproximateSplitRequest();
  buildCounterApproximateSplitRequest++;
  if (buildCounterApproximateSplitRequest < 3) {
    o.fractionConsumed = 42.0;
    o.fractionOfRemainder = 42.0;
    o.position = buildPosition();
  }
  buildCounterApproximateSplitRequest--;
  return o;
}

void checkApproximateSplitRequest(api.ApproximateSplitRequest o) {
  buildCounterApproximateSplitRequest++;
  if (buildCounterApproximateSplitRequest < 3) {
    unittest.expect(
      o.fractionConsumed!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.fractionOfRemainder!,
      unittest.equals(42.0),
    );
    checkPosition(o.position!);
  }
  buildCounterApproximateSplitRequest--;
}

core.int buildCounterAutoscalingEvent = 0;
api.AutoscalingEvent buildAutoscalingEvent() {
  final o = api.AutoscalingEvent();
  buildCounterAutoscalingEvent++;
  if (buildCounterAutoscalingEvent < 3) {
    o.currentNumWorkers = 'foo';
    o.description = buildStructuredMessage();
    o.eventType = 'foo';
    o.targetNumWorkers = 'foo';
    o.time = 'foo';
    o.workerPool = 'foo';
  }
  buildCounterAutoscalingEvent--;
  return o;
}

void checkAutoscalingEvent(api.AutoscalingEvent o) {
  buildCounterAutoscalingEvent++;
  if (buildCounterAutoscalingEvent < 3) {
    unittest.expect(
      o.currentNumWorkers!,
      unittest.equals('foo'),
    );
    checkStructuredMessage(o.description!);
    unittest.expect(
      o.eventType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.targetNumWorkers!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.time!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workerPool!,
      unittest.equals('foo'),
    );
  }
  buildCounterAutoscalingEvent--;
}

core.int buildCounterAutoscalingSettings = 0;
api.AutoscalingSettings buildAutoscalingSettings() {
  final o = api.AutoscalingSettings();
  buildCounterAutoscalingSettings++;
  if (buildCounterAutoscalingSettings < 3) {
    o.algorithm = 'foo';
    o.maxNumWorkers = 42;
  }
  buildCounterAutoscalingSettings--;
  return o;
}

void checkAutoscalingSettings(api.AutoscalingSettings o) {
  buildCounterAutoscalingSettings++;
  if (buildCounterAutoscalingSettings < 3) {
    unittest.expect(
      o.algorithm!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxNumWorkers!,
      unittest.equals(42),
    );
  }
  buildCounterAutoscalingSettings--;
}

core.int buildCounterBase2Exponent = 0;
api.Base2Exponent buildBase2Exponent() {
  final o = api.Base2Exponent();
  buildCounterBase2Exponent++;
  if (buildCounterBase2Exponent < 3) {
    o.numberOfBuckets = 42;
    o.scale = 42;
  }
  buildCounterBase2Exponent--;
  return o;
}

void checkBase2Exponent(api.Base2Exponent o) {
  buildCounterBase2Exponent++;
  if (buildCounterBase2Exponent < 3) {
    unittest.expect(
      o.numberOfBuckets!,
      unittest.equals(42),
    );
    unittest.expect(
      o.scale!,
      unittest.equals(42),
    );
  }
  buildCounterBase2Exponent--;
}

core.int buildCounterBigQueryIODetails = 0;
api.BigQueryIODetails buildBigQueryIODetails() {
  final o = api.BigQueryIODetails();
  buildCounterBigQueryIODetails++;
  if (buildCounterBigQueryIODetails < 3) {
    o.dataset = 'foo';
    o.projectId = 'foo';
    o.query = 'foo';
    o.table = 'foo';
  }
  buildCounterBigQueryIODetails--;
  return o;
}

void checkBigQueryIODetails(api.BigQueryIODetails o) {
  buildCounterBigQueryIODetails++;
  if (buildCounterBigQueryIODetails < 3) {
    unittest.expect(
      o.dataset!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.query!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.table!,
      unittest.equals('foo'),
    );
  }
  buildCounterBigQueryIODetails--;
}

core.int buildCounterBigTableIODetails = 0;
api.BigTableIODetails buildBigTableIODetails() {
  final o = api.BigTableIODetails();
  buildCounterBigTableIODetails++;
  if (buildCounterBigTableIODetails < 3) {
    o.instanceId = 'foo';
    o.projectId = 'foo';
    o.tableId = 'foo';
  }
  buildCounterBigTableIODetails--;
  return o;
}

void checkBigTableIODetails(api.BigTableIODetails o) {
  buildCounterBigTableIODetails++;
  if (buildCounterBigTableIODetails < 3) {
    unittest.expect(
      o.instanceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tableId!,
      unittest.equals('foo'),
    );
  }
  buildCounterBigTableIODetails--;
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

core.int buildCounterBoundedTrie = 0;
api.BoundedTrie buildBoundedTrie() {
  final o = api.BoundedTrie();
  buildCounterBoundedTrie++;
  if (buildCounterBoundedTrie < 3) {
    o.bound = 42;
    o.root = buildBoundedTrieNode();
    o.singleton = buildUnnamed0();
  }
  buildCounterBoundedTrie--;
  return o;
}

void checkBoundedTrie(api.BoundedTrie o) {
  buildCounterBoundedTrie++;
  if (buildCounterBoundedTrie < 3) {
    unittest.expect(
      o.bound!,
      unittest.equals(42),
    );
    checkBoundedTrieNode(o.root!);
    checkUnnamed0(o.singleton!);
  }
  buildCounterBoundedTrie--;
}

core.Map<core.String, api.BoundedTrieNode> buildUnnamed1() => {
      'x': buildBoundedTrieNode(),
      'y': buildBoundedTrieNode(),
    };

void checkUnnamed1(core.Map<core.String, api.BoundedTrieNode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBoundedTrieNode(o['x']!);
  checkBoundedTrieNode(o['y']!);
}

core.int buildCounterBoundedTrieNode = 0;
api.BoundedTrieNode buildBoundedTrieNode() {
  final o = api.BoundedTrieNode();
  buildCounterBoundedTrieNode++;
  if (buildCounterBoundedTrieNode < 3) {
    o.children = buildUnnamed1();
    o.truncated = true;
  }
  buildCounterBoundedTrieNode--;
  return o;
}

void checkBoundedTrieNode(api.BoundedTrieNode o) {
  buildCounterBoundedTrieNode++;
  if (buildCounterBoundedTrieNode < 3) {
    checkUnnamed1(o.children!);
    unittest.expect(o.truncated!, unittest.isTrue);
  }
  buildCounterBoundedTrieNode--;
}

core.int buildCounterBucketOptions = 0;
api.BucketOptions buildBucketOptions() {
  final o = api.BucketOptions();
  buildCounterBucketOptions++;
  if (buildCounterBucketOptions < 3) {
    o.exponential = buildBase2Exponent();
    o.linear = buildLinear();
  }
  buildCounterBucketOptions--;
  return o;
}

void checkBucketOptions(api.BucketOptions o) {
  buildCounterBucketOptions++;
  if (buildCounterBucketOptions < 3) {
    checkBase2Exponent(o.exponential!);
    checkLinear(o.linear!);
  }
  buildCounterBucketOptions--;
}

core.int buildCounterCPUTime = 0;
api.CPUTime buildCPUTime() {
  final o = api.CPUTime();
  buildCounterCPUTime++;
  if (buildCounterCPUTime < 3) {
    o.rate = 42.0;
    o.timestamp = 'foo';
    o.totalMs = 'foo';
  }
  buildCounterCPUTime--;
  return o;
}

void checkCPUTime(api.CPUTime o) {
  buildCounterCPUTime++;
  if (buildCounterCPUTime < 3) {
    unittest.expect(
      o.rate!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.timestamp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalMs!,
      unittest.equals('foo'),
    );
  }
  buildCounterCPUTime--;
}

core.int buildCounterComponentSource = 0;
api.ComponentSource buildComponentSource() {
  final o = api.ComponentSource();
  buildCounterComponentSource++;
  if (buildCounterComponentSource < 3) {
    o.name = 'foo';
    o.originalTransformOrCollection = 'foo';
    o.userName = 'foo';
  }
  buildCounterComponentSource--;
  return o;
}

void checkComponentSource(api.ComponentSource o) {
  buildCounterComponentSource++;
  if (buildCounterComponentSource < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.originalTransformOrCollection!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userName!,
      unittest.equals('foo'),
    );
  }
  buildCounterComponentSource--;
}

core.int buildCounterComponentTransform = 0;
api.ComponentTransform buildComponentTransform() {
  final o = api.ComponentTransform();
  buildCounterComponentTransform++;
  if (buildCounterComponentTransform < 3) {
    o.name = 'foo';
    o.originalTransform = 'foo';
    o.userName = 'foo';
  }
  buildCounterComponentTransform--;
  return o;
}

void checkComponentTransform(api.ComponentTransform o) {
  buildCounterComponentTransform++;
  if (buildCounterComponentTransform < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.originalTransform!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userName!,
      unittest.equals('foo'),
    );
  }
  buildCounterComponentTransform--;
}

core.List<api.StreamLocation> buildUnnamed2() => [
      buildStreamLocation(),
      buildStreamLocation(),
    ];

void checkUnnamed2(core.List<api.StreamLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStreamLocation(o[0]);
  checkStreamLocation(o[1]);
}

core.List<api.KeyRangeLocation> buildUnnamed3() => [
      buildKeyRangeLocation(),
      buildKeyRangeLocation(),
    ];

void checkUnnamed3(core.List<api.KeyRangeLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyRangeLocation(o[0]);
  checkKeyRangeLocation(o[1]);
}

core.List<api.StreamLocation> buildUnnamed4() => [
      buildStreamLocation(),
      buildStreamLocation(),
    ];

void checkUnnamed4(core.List<api.StreamLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStreamLocation(o[0]);
  checkStreamLocation(o[1]);
}

core.List<api.StateFamilyConfig> buildUnnamed5() => [
      buildStateFamilyConfig(),
      buildStateFamilyConfig(),
    ];

void checkUnnamed5(core.List<api.StateFamilyConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStateFamilyConfig(o[0]);
  checkStateFamilyConfig(o[1]);
}

core.int buildCounterComputationTopology = 0;
api.ComputationTopology buildComputationTopology() {
  final o = api.ComputationTopology();
  buildCounterComputationTopology++;
  if (buildCounterComputationTopology < 3) {
    o.computationId = 'foo';
    o.inputs = buildUnnamed2();
    o.keyRanges = buildUnnamed3();
    o.outputs = buildUnnamed4();
    o.stateFamilies = buildUnnamed5();
    o.systemStageName = 'foo';
  }
  buildCounterComputationTopology--;
  return o;
}

void checkComputationTopology(api.ComputationTopology o) {
  buildCounterComputationTopology++;
  if (buildCounterComputationTopology < 3) {
    unittest.expect(
      o.computationId!,
      unittest.equals('foo'),
    );
    checkUnnamed2(o.inputs!);
    checkUnnamed3(o.keyRanges!);
    checkUnnamed4(o.outputs!);
    checkUnnamed5(o.stateFamilies!);
    unittest.expect(
      o.systemStageName!,
      unittest.equals('foo'),
    );
  }
  buildCounterComputationTopology--;
}

core.int buildCounterConcatPosition = 0;
api.ConcatPosition buildConcatPosition() {
  final o = api.ConcatPosition();
  buildCounterConcatPosition++;
  if (buildCounterConcatPosition < 3) {
    o.index = 42;
    o.position = buildPosition();
  }
  buildCounterConcatPosition--;
  return o;
}

void checkConcatPosition(api.ConcatPosition o) {
  buildCounterConcatPosition++;
  if (buildCounterConcatPosition < 3) {
    unittest.expect(
      o.index!,
      unittest.equals(42),
    );
    checkPosition(o.position!);
  }
  buildCounterConcatPosition--;
}

core.int buildCounterContainerSpec = 0;
api.ContainerSpec buildContainerSpec() {
  final o = api.ContainerSpec();
  buildCounterContainerSpec++;
  if (buildCounterContainerSpec < 3) {
    o.defaultEnvironment = buildFlexTemplateRuntimeEnvironment();
    o.image = 'foo';
    o.imageRepositoryCertPath = 'foo';
    o.imageRepositoryPasswordSecretId = 'foo';
    o.imageRepositoryUsernameSecretId = 'foo';
    o.metadata = buildTemplateMetadata();
    o.sdkInfo = buildSDKInfo();
  }
  buildCounterContainerSpec--;
  return o;
}

void checkContainerSpec(api.ContainerSpec o) {
  buildCounterContainerSpec++;
  if (buildCounterContainerSpec < 3) {
    checkFlexTemplateRuntimeEnvironment(o.defaultEnvironment!);
    unittest.expect(
      o.image!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageRepositoryCertPath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageRepositoryPasswordSecretId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.imageRepositoryUsernameSecretId!,
      unittest.equals('foo'),
    );
    checkTemplateMetadata(o.metadata!);
    checkSDKInfo(o.sdkInfo!);
  }
  buildCounterContainerSpec--;
}

core.int buildCounterCounterMetadata = 0;
api.CounterMetadata buildCounterMetadata() {
  final o = api.CounterMetadata();
  buildCounterCounterMetadata++;
  if (buildCounterCounterMetadata < 3) {
    o.description = 'foo';
    o.kind = 'foo';
    o.otherUnits = 'foo';
    o.standardUnits = 'foo';
  }
  buildCounterCounterMetadata--;
  return o;
}

void checkCounterMetadata(api.CounterMetadata o) {
  buildCounterCounterMetadata++;
  if (buildCounterCounterMetadata < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.otherUnits!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.standardUnits!,
      unittest.equals('foo'),
    );
  }
  buildCounterCounterMetadata--;
}

core.int buildCounterCounterStructuredName = 0;
api.CounterStructuredName buildCounterStructuredName() {
  final o = api.CounterStructuredName();
  buildCounterCounterStructuredName++;
  if (buildCounterCounterStructuredName < 3) {
    o.componentStepName = 'foo';
    o.executionStepName = 'foo';
    o.inputIndex = 42;
    o.name = 'foo';
    o.origin = 'foo';
    o.originNamespace = 'foo';
    o.originalRequestingStepName = 'foo';
    o.originalStepName = 'foo';
    o.portion = 'foo';
    o.workerId = 'foo';
  }
  buildCounterCounterStructuredName--;
  return o;
}

void checkCounterStructuredName(api.CounterStructuredName o) {
  buildCounterCounterStructuredName++;
  if (buildCounterCounterStructuredName < 3) {
    unittest.expect(
      o.componentStepName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.executionStepName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.inputIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.origin!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.originNamespace!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.originalRequestingStepName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.originalStepName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.portion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterCounterStructuredName--;
}

core.int buildCounterCounterStructuredNameAndMetadata = 0;
api.CounterStructuredNameAndMetadata buildCounterStructuredNameAndMetadata() {
  final o = api.CounterStructuredNameAndMetadata();
  buildCounterCounterStructuredNameAndMetadata++;
  if (buildCounterCounterStructuredNameAndMetadata < 3) {
    o.metadata = buildCounterMetadata();
    o.name = buildCounterStructuredName();
  }
  buildCounterCounterStructuredNameAndMetadata--;
  return o;
}

void checkCounterStructuredNameAndMetadata(
    api.CounterStructuredNameAndMetadata o) {
  buildCounterCounterStructuredNameAndMetadata++;
  if (buildCounterCounterStructuredNameAndMetadata < 3) {
    checkCounterMetadata(o.metadata!);
    checkCounterStructuredName(o.name!);
  }
  buildCounterCounterStructuredNameAndMetadata--;
}

core.int buildCounterCounterUpdate = 0;
api.CounterUpdate buildCounterUpdate() {
  final o = api.CounterUpdate();
  buildCounterCounterUpdate++;
  if (buildCounterCounterUpdate < 3) {
    o.boolean = true;
    o.boundedTrie = buildBoundedTrie();
    o.cumulative = true;
    o.distribution = buildDistributionUpdate();
    o.floatingPoint = 42.0;
    o.floatingPointList = buildFloatingPointList();
    o.floatingPointMean = buildFloatingPointMean();
    o.integer = buildSplitInt64();
    o.integerGauge = buildIntegerGauge();
    o.integerList = buildIntegerList();
    o.integerMean = buildIntegerMean();
    o.internal = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.nameAndKind = buildNameAndKind();
    o.shortId = 'foo';
    o.stringList = buildStringList();
    o.structuredNameAndMetadata = buildCounterStructuredNameAndMetadata();
  }
  buildCounterCounterUpdate--;
  return o;
}

void checkCounterUpdate(api.CounterUpdate o) {
  buildCounterCounterUpdate++;
  if (buildCounterCounterUpdate < 3) {
    unittest.expect(o.boolean!, unittest.isTrue);
    checkBoundedTrie(o.boundedTrie!);
    unittest.expect(o.cumulative!, unittest.isTrue);
    checkDistributionUpdate(o.distribution!);
    unittest.expect(
      o.floatingPoint!,
      unittest.equals(42.0),
    );
    checkFloatingPointList(o.floatingPointList!);
    checkFloatingPointMean(o.floatingPointMean!);
    checkSplitInt64(o.integer!);
    checkIntegerGauge(o.integerGauge!);
    checkIntegerList(o.integerList!);
    checkIntegerMean(o.integerMean!);
    var casted1 = (o.internal!) as core.Map;
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
    checkNameAndKind(o.nameAndKind!);
    unittest.expect(
      o.shortId!,
      unittest.equals('foo'),
    );
    checkStringList(o.stringList!);
    checkCounterStructuredNameAndMetadata(o.structuredNameAndMetadata!);
  }
  buildCounterCounterUpdate--;
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

core.int buildCounterCreateJobFromTemplateRequest = 0;
api.CreateJobFromTemplateRequest buildCreateJobFromTemplateRequest() {
  final o = api.CreateJobFromTemplateRequest();
  buildCounterCreateJobFromTemplateRequest++;
  if (buildCounterCreateJobFromTemplateRequest < 3) {
    o.environment = buildRuntimeEnvironment();
    o.gcsPath = 'foo';
    o.jobName = 'foo';
    o.location = 'foo';
    o.parameters = buildUnnamed6();
  }
  buildCounterCreateJobFromTemplateRequest--;
  return o;
}

void checkCreateJobFromTemplateRequest(api.CreateJobFromTemplateRequest o) {
  buildCounterCreateJobFromTemplateRequest++;
  if (buildCounterCreateJobFromTemplateRequest < 3) {
    checkRuntimeEnvironment(o.environment!);
    unittest.expect(
      o.gcsPath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jobName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    checkUnnamed6(o.parameters!);
  }
  buildCounterCreateJobFromTemplateRequest--;
}

core.int buildCounterCustomSourceLocation = 0;
api.CustomSourceLocation buildCustomSourceLocation() {
  final o = api.CustomSourceLocation();
  buildCounterCustomSourceLocation++;
  if (buildCounterCustomSourceLocation < 3) {
    o.stateful = true;
  }
  buildCounterCustomSourceLocation--;
  return o;
}

void checkCustomSourceLocation(api.CustomSourceLocation o) {
  buildCounterCustomSourceLocation++;
  if (buildCounterCustomSourceLocation < 3) {
    unittest.expect(o.stateful!, unittest.isTrue);
  }
  buildCounterCustomSourceLocation--;
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

core.int buildCounterDataDiskAssignment = 0;
api.DataDiskAssignment buildDataDiskAssignment() {
  final o = api.DataDiskAssignment();
  buildCounterDataDiskAssignment++;
  if (buildCounterDataDiskAssignment < 3) {
    o.dataDisks = buildUnnamed7();
    o.vmInstance = 'foo';
  }
  buildCounterDataDiskAssignment--;
  return o;
}

void checkDataDiskAssignment(api.DataDiskAssignment o) {
  buildCounterDataDiskAssignment++;
  if (buildCounterDataDiskAssignment < 3) {
    checkUnnamed7(o.dataDisks!);
    unittest.expect(
      o.vmInstance!,
      unittest.equals('foo'),
    );
  }
  buildCounterDataDiskAssignment--;
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

core.int buildCounterDataSamplingConfig = 0;
api.DataSamplingConfig buildDataSamplingConfig() {
  final o = api.DataSamplingConfig();
  buildCounterDataSamplingConfig++;
  if (buildCounterDataSamplingConfig < 3) {
    o.behaviors = buildUnnamed8();
  }
  buildCounterDataSamplingConfig--;
  return o;
}

void checkDataSamplingConfig(api.DataSamplingConfig o) {
  buildCounterDataSamplingConfig++;
  if (buildCounterDataSamplingConfig < 3) {
    checkUnnamed8(o.behaviors!);
  }
  buildCounterDataSamplingConfig--;
}

core.int buildCounterDataSamplingReport = 0;
api.DataSamplingReport buildDataSamplingReport() {
  final o = api.DataSamplingReport();
  buildCounterDataSamplingReport++;
  if (buildCounterDataSamplingReport < 3) {
    o.bytesWrittenDelta = 'foo';
    o.elementsSampledBytes = 'foo';
    o.elementsSampledCount = 'foo';
    o.exceptionsSampledCount = 'foo';
    o.pcollectionsSampledCount = 'foo';
    o.persistenceErrorsCount = 'foo';
    o.translationErrorsCount = 'foo';
  }
  buildCounterDataSamplingReport--;
  return o;
}

void checkDataSamplingReport(api.DataSamplingReport o) {
  buildCounterDataSamplingReport++;
  if (buildCounterDataSamplingReport < 3) {
    unittest.expect(
      o.bytesWrittenDelta!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.elementsSampledBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.elementsSampledCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.exceptionsSampledCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.pcollectionsSampledCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.persistenceErrorsCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.translationErrorsCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterDataSamplingReport--;
}

core.int buildCounterDataflowGaugeValue = 0;
api.DataflowGaugeValue buildDataflowGaugeValue() {
  final o = api.DataflowGaugeValue();
  buildCounterDataflowGaugeValue++;
  if (buildCounterDataflowGaugeValue < 3) {
    o.measuredTime = 'foo';
    o.value = 'foo';
  }
  buildCounterDataflowGaugeValue--;
  return o;
}

void checkDataflowGaugeValue(api.DataflowGaugeValue o) {
  buildCounterDataflowGaugeValue++;
  if (buildCounterDataflowGaugeValue < 3) {
    unittest.expect(
      o.measuredTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterDataflowGaugeValue--;
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

core.int buildCounterDataflowHistogramValue = 0;
api.DataflowHistogramValue buildDataflowHistogramValue() {
  final o = api.DataflowHistogramValue();
  buildCounterDataflowHistogramValue++;
  if (buildCounterDataflowHistogramValue < 3) {
    o.bucketCounts = buildUnnamed9();
    o.bucketOptions = buildBucketOptions();
    o.count = 'foo';
    o.outlierStats = buildOutlierStats();
  }
  buildCounterDataflowHistogramValue--;
  return o;
}

void checkDataflowHistogramValue(api.DataflowHistogramValue o) {
  buildCounterDataflowHistogramValue++;
  if (buildCounterDataflowHistogramValue < 3) {
    checkUnnamed9(o.bucketCounts!);
    checkBucketOptions(o.bucketOptions!);
    unittest.expect(
      o.count!,
      unittest.equals('foo'),
    );
    checkOutlierStats(o.outlierStats!);
  }
  buildCounterDataflowHistogramValue--;
}

core.int buildCounterDatastoreIODetails = 0;
api.DatastoreIODetails buildDatastoreIODetails() {
  final o = api.DatastoreIODetails();
  buildCounterDatastoreIODetails++;
  if (buildCounterDatastoreIODetails < 3) {
    o.namespace = 'foo';
    o.projectId = 'foo';
  }
  buildCounterDatastoreIODetails--;
  return o;
}

void checkDatastoreIODetails(api.DatastoreIODetails o) {
  buildCounterDatastoreIODetails++;
  if (buildCounterDatastoreIODetails < 3) {
    unittest.expect(
      o.namespace!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterDatastoreIODetails--;
}

core.int buildCounterDebugOptions = 0;
api.DebugOptions buildDebugOptions() {
  final o = api.DebugOptions();
  buildCounterDebugOptions++;
  if (buildCounterDebugOptions < 3) {
    o.dataSampling = buildDataSamplingConfig();
    o.enableHotKeyLogging = true;
  }
  buildCounterDebugOptions--;
  return o;
}

void checkDebugOptions(api.DebugOptions o) {
  buildCounterDebugOptions++;
  if (buildCounterDebugOptions < 3) {
    checkDataSamplingConfig(o.dataSampling!);
    unittest.expect(o.enableHotKeyLogging!, unittest.isTrue);
  }
  buildCounterDebugOptions--;
}

core.int buildCounterDeleteSnapshotResponse = 0;
api.DeleteSnapshotResponse buildDeleteSnapshotResponse() {
  final o = api.DeleteSnapshotResponse();
  buildCounterDeleteSnapshotResponse++;
  if (buildCounterDeleteSnapshotResponse < 3) {}
  buildCounterDeleteSnapshotResponse--;
  return o;
}

void checkDeleteSnapshotResponse(api.DeleteSnapshotResponse o) {
  buildCounterDeleteSnapshotResponse++;
  if (buildCounterDeleteSnapshotResponse < 3) {}
  buildCounterDeleteSnapshotResponse--;
}

core.int buildCounterDerivedSource = 0;
api.DerivedSource buildDerivedSource() {
  final o = api.DerivedSource();
  buildCounterDerivedSource++;
  if (buildCounterDerivedSource < 3) {
    o.derivationMode = 'foo';
    o.source = buildSource();
  }
  buildCounterDerivedSource--;
  return o;
}

void checkDerivedSource(api.DerivedSource o) {
  buildCounterDerivedSource++;
  if (buildCounterDerivedSource < 3) {
    unittest.expect(
      o.derivationMode!,
      unittest.equals('foo'),
    );
    checkSource(o.source!);
  }
  buildCounterDerivedSource--;
}

core.int buildCounterDisk = 0;
api.Disk buildDisk() {
  final o = api.Disk();
  buildCounterDisk++;
  if (buildCounterDisk < 3) {
    o.diskType = 'foo';
    o.mountPoint = 'foo';
    o.sizeGb = 42;
  }
  buildCounterDisk--;
  return o;
}

void checkDisk(api.Disk o) {
  buildCounterDisk++;
  if (buildCounterDisk < 3) {
    unittest.expect(
      o.diskType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.mountPoint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sizeGb!,
      unittest.equals(42),
    );
  }
  buildCounterDisk--;
}

core.int buildCounterDisplayData = 0;
api.DisplayData buildDisplayData() {
  final o = api.DisplayData();
  buildCounterDisplayData++;
  if (buildCounterDisplayData < 3) {
    o.boolValue = true;
    o.durationValue = 'foo';
    o.floatValue = 42.0;
    o.int64Value = 'foo';
    o.javaClassValue = 'foo';
    o.key = 'foo';
    o.label = 'foo';
    o.namespace = 'foo';
    o.shortStrValue = 'foo';
    o.strValue = 'foo';
    o.timestampValue = 'foo';
    o.url = 'foo';
  }
  buildCounterDisplayData--;
  return o;
}

void checkDisplayData(api.DisplayData o) {
  buildCounterDisplayData++;
  if (buildCounterDisplayData < 3) {
    unittest.expect(o.boolValue!, unittest.isTrue);
    unittest.expect(
      o.durationValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.floatValue!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.int64Value!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.javaClassValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.namespace!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shortStrValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.strValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timestampValue!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.url!,
      unittest.equals('foo'),
    );
  }
  buildCounterDisplayData--;
}

core.int buildCounterDistributionUpdate = 0;
api.DistributionUpdate buildDistributionUpdate() {
  final o = api.DistributionUpdate();
  buildCounterDistributionUpdate++;
  if (buildCounterDistributionUpdate < 3) {
    o.count = buildSplitInt64();
    o.histogram = buildHistogram();
    o.max = buildSplitInt64();
    o.min = buildSplitInt64();
    o.sum = buildSplitInt64();
    o.sumOfSquares = 42.0;
  }
  buildCounterDistributionUpdate--;
  return o;
}

void checkDistributionUpdate(api.DistributionUpdate o) {
  buildCounterDistributionUpdate++;
  if (buildCounterDistributionUpdate < 3) {
    checkSplitInt64(o.count!);
    checkHistogram(o.histogram!);
    checkSplitInt64(o.max!);
    checkSplitInt64(o.min!);
    checkSplitInt64(o.sum!);
    unittest.expect(
      o.sumOfSquares!,
      unittest.equals(42.0),
    );
  }
  buildCounterDistributionUpdate--;
}

core.int buildCounterDynamicSourceSplit = 0;
api.DynamicSourceSplit buildDynamicSourceSplit() {
  final o = api.DynamicSourceSplit();
  buildCounterDynamicSourceSplit++;
  if (buildCounterDynamicSourceSplit < 3) {
    o.primary = buildDerivedSource();
    o.residual = buildDerivedSource();
  }
  buildCounterDynamicSourceSplit--;
  return o;
}

void checkDynamicSourceSplit(api.DynamicSourceSplit o) {
  buildCounterDynamicSourceSplit++;
  if (buildCounterDynamicSourceSplit < 3) {
    checkDerivedSource(o.primary!);
    checkDerivedSource(o.residual!);
  }
  buildCounterDynamicSourceSplit--;
}

core.List<core.String> buildUnnamed10() => [
      'foo',
      'foo',
    ];

void checkUnnamed10(core.List<core.String> o) {
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

core.Map<core.String, core.Object?> buildUnnamed11() => {
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

void checkUnnamed11(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted2 = (o['x']!) as core.Map;
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
  var casted3 = (o['y']!) as core.Map;
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
}

core.Map<core.String, core.Object?> buildUnnamed12() => {
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

void checkUnnamed12(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted4 = (o['x']!) as core.Map;
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
  var casted5 = (o['y']!) as core.Map;
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
}

core.List<core.String> buildUnnamed13() => [
      'foo',
      'foo',
    ];

void checkUnnamed13(core.List<core.String> o) {
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

core.Map<core.String, core.Object?> buildUnnamed14() => {
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

void checkUnnamed14(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted6 = (o['x']!) as core.Map;
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
  var casted7 = (o['y']!) as core.Map;
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
}

core.Map<core.String, core.Object?> buildUnnamed15() => {
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

void checkUnnamed15(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted8 = (o['x']!) as core.Map;
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
  var casted9 = (o['y']!) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(
    casted9['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted9['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted9['string'],
    unittest.equals('foo'),
  );
}

core.List<api.WorkerPool> buildUnnamed16() => [
      buildWorkerPool(),
      buildWorkerPool(),
    ];

void checkUnnamed16(core.List<api.WorkerPool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkerPool(o[0]);
  checkWorkerPool(o[1]);
}

core.int buildCounterEnvironment = 0;
api.Environment buildEnvironment() {
  final o = api.Environment();
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    o.clusterManagerApiService = 'foo';
    o.dataset = 'foo';
    o.debugOptions = buildDebugOptions();
    o.experiments = buildUnnamed10();
    o.flexResourceSchedulingGoal = 'foo';
    o.internalExperiments = buildUnnamed11();
    o.sdkPipelineOptions = buildUnnamed12();
    o.serviceAccountEmail = 'foo';
    o.serviceKmsKeyName = 'foo';
    o.serviceOptions = buildUnnamed13();
    o.shuffleMode = 'foo';
    o.streamingMode = 'foo';
    o.tempStoragePrefix = 'foo';
    o.useStreamingEngineResourceBasedBilling = true;
    o.userAgent = buildUnnamed14();
    o.version = buildUnnamed15();
    o.workerPools = buildUnnamed16();
    o.workerRegion = 'foo';
    o.workerZone = 'foo';
  }
  buildCounterEnvironment--;
  return o;
}

void checkEnvironment(api.Environment o) {
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    unittest.expect(
      o.clusterManagerApiService!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataset!,
      unittest.equals('foo'),
    );
    checkDebugOptions(o.debugOptions!);
    checkUnnamed10(o.experiments!);
    unittest.expect(
      o.flexResourceSchedulingGoal!,
      unittest.equals('foo'),
    );
    checkUnnamed11(o.internalExperiments!);
    checkUnnamed12(o.sdkPipelineOptions!);
    unittest.expect(
      o.serviceAccountEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceKmsKeyName!,
      unittest.equals('foo'),
    );
    checkUnnamed13(o.serviceOptions!);
    unittest.expect(
      o.shuffleMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.streamingMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tempStoragePrefix!,
      unittest.equals('foo'),
    );
    unittest.expect(o.useStreamingEngineResourceBasedBilling!, unittest.isTrue);
    checkUnnamed14(o.userAgent!);
    checkUnnamed15(o.version!);
    checkUnnamed16(o.workerPools!);
    unittest.expect(
      o.workerRegion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workerZone!,
      unittest.equals('foo'),
    );
  }
  buildCounterEnvironment--;
}

core.int buildCounterExecutionStageState = 0;
api.ExecutionStageState buildExecutionStageState() {
  final o = api.ExecutionStageState();
  buildCounterExecutionStageState++;
  if (buildCounterExecutionStageState < 3) {
    o.currentStateTime = 'foo';
    o.executionStageName = 'foo';
    o.executionStageState = 'foo';
  }
  buildCounterExecutionStageState--;
  return o;
}

void checkExecutionStageState(api.ExecutionStageState o) {
  buildCounterExecutionStageState++;
  if (buildCounterExecutionStageState < 3) {
    unittest.expect(
      o.currentStateTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.executionStageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.executionStageState!,
      unittest.equals('foo'),
    );
  }
  buildCounterExecutionStageState--;
}

core.List<api.ComponentSource> buildUnnamed17() => [
      buildComponentSource(),
      buildComponentSource(),
    ];

void checkUnnamed17(core.List<api.ComponentSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComponentSource(o[0]);
  checkComponentSource(o[1]);
}

core.List<api.ComponentTransform> buildUnnamed18() => [
      buildComponentTransform(),
      buildComponentTransform(),
    ];

void checkUnnamed18(core.List<api.ComponentTransform> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComponentTransform(o[0]);
  checkComponentTransform(o[1]);
}

core.List<api.StageSource> buildUnnamed19() => [
      buildStageSource(),
      buildStageSource(),
    ];

void checkUnnamed19(core.List<api.StageSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStageSource(o[0]);
  checkStageSource(o[1]);
}

core.List<api.StageSource> buildUnnamed20() => [
      buildStageSource(),
      buildStageSource(),
    ];

void checkUnnamed20(core.List<api.StageSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStageSource(o[0]);
  checkStageSource(o[1]);
}

core.List<core.String> buildUnnamed21() => [
      'foo',
      'foo',
    ];

void checkUnnamed21(core.List<core.String> o) {
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

core.int buildCounterExecutionStageSummary = 0;
api.ExecutionStageSummary buildExecutionStageSummary() {
  final o = api.ExecutionStageSummary();
  buildCounterExecutionStageSummary++;
  if (buildCounterExecutionStageSummary < 3) {
    o.componentSource = buildUnnamed17();
    o.componentTransform = buildUnnamed18();
    o.id = 'foo';
    o.inputSource = buildUnnamed19();
    o.kind = 'foo';
    o.name = 'foo';
    o.outputSource = buildUnnamed20();
    o.prerequisiteStage = buildUnnamed21();
  }
  buildCounterExecutionStageSummary--;
  return o;
}

void checkExecutionStageSummary(api.ExecutionStageSummary o) {
  buildCounterExecutionStageSummary++;
  if (buildCounterExecutionStageSummary < 3) {
    checkUnnamed17(o.componentSource!);
    checkUnnamed18(o.componentTransform!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed19(o.inputSource!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed20(o.outputSource!);
    checkUnnamed21(o.prerequisiteStage!);
  }
  buildCounterExecutionStageSummary--;
}

core.int buildCounterFailedLocation = 0;
api.FailedLocation buildFailedLocation() {
  final o = api.FailedLocation();
  buildCounterFailedLocation++;
  if (buildCounterFailedLocation < 3) {
    o.name = 'foo';
  }
  buildCounterFailedLocation--;
  return o;
}

void checkFailedLocation(api.FailedLocation o) {
  buildCounterFailedLocation++;
  if (buildCounterFailedLocation < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterFailedLocation--;
}

core.int buildCounterFileIODetails = 0;
api.FileIODetails buildFileIODetails() {
  final o = api.FileIODetails();
  buildCounterFileIODetails++;
  if (buildCounterFileIODetails < 3) {
    o.filePattern = 'foo';
  }
  buildCounterFileIODetails--;
  return o;
}

void checkFileIODetails(api.FileIODetails o) {
  buildCounterFileIODetails++;
  if (buildCounterFileIODetails < 3) {
    unittest.expect(
      o.filePattern!,
      unittest.equals('foo'),
    );
  }
  buildCounterFileIODetails--;
}

core.List<api.InstructionInput> buildUnnamed22() => [
      buildInstructionInput(),
      buildInstructionInput(),
    ];

void checkUnnamed22(core.List<api.InstructionInput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstructionInput(o[0]);
  checkInstructionInput(o[1]);
}

core.int buildCounterFlattenInstruction = 0;
api.FlattenInstruction buildFlattenInstruction() {
  final o = api.FlattenInstruction();
  buildCounterFlattenInstruction++;
  if (buildCounterFlattenInstruction < 3) {
    o.inputs = buildUnnamed22();
  }
  buildCounterFlattenInstruction--;
  return o;
}

void checkFlattenInstruction(api.FlattenInstruction o) {
  buildCounterFlattenInstruction++;
  if (buildCounterFlattenInstruction < 3) {
    checkUnnamed22(o.inputs!);
  }
  buildCounterFlattenInstruction--;
}

core.List<core.String> buildUnnamed23() => [
      'foo',
      'foo',
    ];

void checkUnnamed23(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed24() => [
      'foo',
      'foo',
    ];

void checkUnnamed24(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed25() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed25(core.Map<core.String, core.String> o) {
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

core.int buildCounterFlexTemplateRuntimeEnvironment = 0;
api.FlexTemplateRuntimeEnvironment buildFlexTemplateRuntimeEnvironment() {
  final o = api.FlexTemplateRuntimeEnvironment();
  buildCounterFlexTemplateRuntimeEnvironment++;
  if (buildCounterFlexTemplateRuntimeEnvironment < 3) {
    o.additionalExperiments = buildUnnamed23();
    o.additionalPipelineOptions = buildUnnamed24();
    o.additionalUserLabels = buildUnnamed25();
    o.autoscalingAlgorithm = 'foo';
    o.diskSizeGb = 42;
    o.dumpHeapOnOom = true;
    o.enableLauncherVmSerialPortLogging = true;
    o.enableStreamingEngine = true;
    o.flexrsGoal = 'foo';
    o.ipConfiguration = 'foo';
    o.kmsKeyName = 'foo';
    o.launcherMachineType = 'foo';
    o.machineType = 'foo';
    o.maxWorkers = 42;
    o.network = 'foo';
    o.numWorkers = 42;
    o.saveHeapDumpsToGcsPath = 'foo';
    o.sdkContainerImage = 'foo';
    o.serviceAccountEmail = 'foo';
    o.stagingLocation = 'foo';
    o.streamingMode = 'foo';
    o.subnetwork = 'foo';
    o.tempLocation = 'foo';
    o.workerRegion = 'foo';
    o.workerZone = 'foo';
    o.zone = 'foo';
  }
  buildCounterFlexTemplateRuntimeEnvironment--;
  return o;
}

void checkFlexTemplateRuntimeEnvironment(api.FlexTemplateRuntimeEnvironment o) {
  buildCounterFlexTemplateRuntimeEnvironment++;
  if (buildCounterFlexTemplateRuntimeEnvironment < 3) {
    checkUnnamed23(o.additionalExperiments!);
    checkUnnamed24(o.additionalPipelineOptions!);
    checkUnnamed25(o.additionalUserLabels!);
    unittest.expect(
      o.autoscalingAlgorithm!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.diskSizeGb!,
      unittest.equals(42),
    );
    unittest.expect(o.dumpHeapOnOom!, unittest.isTrue);
    unittest.expect(o.enableLauncherVmSerialPortLogging!, unittest.isTrue);
    unittest.expect(o.enableStreamingEngine!, unittest.isTrue);
    unittest.expect(
      o.flexrsGoal!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ipConfiguration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.launcherMachineType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxWorkers!,
      unittest.equals(42),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numWorkers!,
      unittest.equals(42),
    );
    unittest.expect(
      o.saveHeapDumpsToGcsPath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sdkContainerImage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceAccountEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.stagingLocation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.streamingMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subnetwork!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tempLocation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workerRegion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workerZone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterFlexTemplateRuntimeEnvironment--;
}

core.List<core.double> buildUnnamed26() => [
      42.0,
      42.0,
    ];

void checkUnnamed26(core.List<core.double> o) {
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

core.int buildCounterFloatingPointList = 0;
api.FloatingPointList buildFloatingPointList() {
  final o = api.FloatingPointList();
  buildCounterFloatingPointList++;
  if (buildCounterFloatingPointList < 3) {
    o.elements = buildUnnamed26();
  }
  buildCounterFloatingPointList--;
  return o;
}

void checkFloatingPointList(api.FloatingPointList o) {
  buildCounterFloatingPointList++;
  if (buildCounterFloatingPointList < 3) {
    checkUnnamed26(o.elements!);
  }
  buildCounterFloatingPointList--;
}

core.int buildCounterFloatingPointMean = 0;
api.FloatingPointMean buildFloatingPointMean() {
  final o = api.FloatingPointMean();
  buildCounterFloatingPointMean++;
  if (buildCounterFloatingPointMean < 3) {
    o.count = buildSplitInt64();
    o.sum = 42.0;
  }
  buildCounterFloatingPointMean--;
  return o;
}

void checkFloatingPointMean(api.FloatingPointMean o) {
  buildCounterFloatingPointMean++;
  if (buildCounterFloatingPointMean < 3) {
    checkSplitInt64(o.count!);
    unittest.expect(
      o.sum!,
      unittest.equals(42.0),
    );
  }
  buildCounterFloatingPointMean--;
}

core.int buildCounterGPUUsage = 0;
api.GPUUsage buildGPUUsage() {
  final o = api.GPUUsage();
  buildCounterGPUUsage++;
  if (buildCounterGPUUsage < 3) {
    o.timestamp = 'foo';
    o.utilization = buildGPUUtilization();
  }
  buildCounterGPUUsage--;
  return o;
}

void checkGPUUsage(api.GPUUsage o) {
  buildCounterGPUUsage++;
  if (buildCounterGPUUsage < 3) {
    unittest.expect(
      o.timestamp!,
      unittest.equals('foo'),
    );
    checkGPUUtilization(o.utilization!);
  }
  buildCounterGPUUsage--;
}

core.int buildCounterGPUUtilization = 0;
api.GPUUtilization buildGPUUtilization() {
  final o = api.GPUUtilization();
  buildCounterGPUUtilization++;
  if (buildCounterGPUUtilization < 3) {
    o.rate = 42.0;
  }
  buildCounterGPUUtilization--;
  return o;
}

void checkGPUUtilization(api.GPUUtilization o) {
  buildCounterGPUUtilization++;
  if (buildCounterGPUUtilization < 3) {
    unittest.expect(
      o.rate!,
      unittest.equals(42.0),
    );
  }
  buildCounterGPUUtilization--;
}

core.int buildCounterGetDebugConfigRequest = 0;
api.GetDebugConfigRequest buildGetDebugConfigRequest() {
  final o = api.GetDebugConfigRequest();
  buildCounterGetDebugConfigRequest++;
  if (buildCounterGetDebugConfigRequest < 3) {
    o.componentId = 'foo';
    o.location = 'foo';
    o.workerId = 'foo';
  }
  buildCounterGetDebugConfigRequest--;
  return o;
}

void checkGetDebugConfigRequest(api.GetDebugConfigRequest o) {
  buildCounterGetDebugConfigRequest++;
  if (buildCounterGetDebugConfigRequest < 3) {
    unittest.expect(
      o.componentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterGetDebugConfigRequest--;
}

core.int buildCounterGetDebugConfigResponse = 0;
api.GetDebugConfigResponse buildGetDebugConfigResponse() {
  final o = api.GetDebugConfigResponse();
  buildCounterGetDebugConfigResponse++;
  if (buildCounterGetDebugConfigResponse < 3) {
    o.config = 'foo';
  }
  buildCounterGetDebugConfigResponse--;
  return o;
}

void checkGetDebugConfigResponse(api.GetDebugConfigResponse o) {
  buildCounterGetDebugConfigResponse++;
  if (buildCounterGetDebugConfigResponse < 3) {
    unittest.expect(
      o.config!,
      unittest.equals('foo'),
    );
  }
  buildCounterGetDebugConfigResponse--;
}

core.int buildCounterGetTemplateResponse = 0;
api.GetTemplateResponse buildGetTemplateResponse() {
  final o = api.GetTemplateResponse();
  buildCounterGetTemplateResponse++;
  if (buildCounterGetTemplateResponse < 3) {
    o.metadata = buildTemplateMetadata();
    o.runtimeMetadata = buildRuntimeMetadata();
    o.status = buildStatus();
    o.templateType = 'foo';
  }
  buildCounterGetTemplateResponse--;
  return o;
}

void checkGetTemplateResponse(api.GetTemplateResponse o) {
  buildCounterGetTemplateResponse++;
  if (buildCounterGetTemplateResponse < 3) {
    checkTemplateMetadata(o.metadata!);
    checkRuntimeMetadata(o.runtimeMetadata!);
    checkStatus(o.status!);
    unittest.expect(
      o.templateType!,
      unittest.equals('foo'),
    );
  }
  buildCounterGetTemplateResponse--;
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

core.int buildCounterHistogram = 0;
api.Histogram buildHistogram() {
  final o = api.Histogram();
  buildCounterHistogram++;
  if (buildCounterHistogram < 3) {
    o.bucketCounts = buildUnnamed27();
    o.firstBucketOffset = 42;
  }
  buildCounterHistogram--;
  return o;
}

void checkHistogram(api.Histogram o) {
  buildCounterHistogram++;
  if (buildCounterHistogram < 3) {
    checkUnnamed27(o.bucketCounts!);
    unittest.expect(
      o.firstBucketOffset!,
      unittest.equals(42),
    );
  }
  buildCounterHistogram--;
}

core.Map<core.String, api.HotKeyInfo> buildUnnamed28() => {
      'x': buildHotKeyInfo(),
      'y': buildHotKeyInfo(),
    };

void checkUnnamed28(core.Map<core.String, api.HotKeyInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkHotKeyInfo(o['x']!);
  checkHotKeyInfo(o['y']!);
}

core.int buildCounterHotKeyDebuggingInfo = 0;
api.HotKeyDebuggingInfo buildHotKeyDebuggingInfo() {
  final o = api.HotKeyDebuggingInfo();
  buildCounterHotKeyDebuggingInfo++;
  if (buildCounterHotKeyDebuggingInfo < 3) {
    o.detectedHotKeys = buildUnnamed28();
  }
  buildCounterHotKeyDebuggingInfo--;
  return o;
}

void checkHotKeyDebuggingInfo(api.HotKeyDebuggingInfo o) {
  buildCounterHotKeyDebuggingInfo++;
  if (buildCounterHotKeyDebuggingInfo < 3) {
    checkUnnamed28(o.detectedHotKeys!);
  }
  buildCounterHotKeyDebuggingInfo--;
}

core.int buildCounterHotKeyDetection = 0;
api.HotKeyDetection buildHotKeyDetection() {
  final o = api.HotKeyDetection();
  buildCounterHotKeyDetection++;
  if (buildCounterHotKeyDetection < 3) {
    o.hotKeyAge = 'foo';
    o.systemName = 'foo';
    o.userStepName = 'foo';
  }
  buildCounterHotKeyDetection--;
  return o;
}

void checkHotKeyDetection(api.HotKeyDetection o) {
  buildCounterHotKeyDetection++;
  if (buildCounterHotKeyDetection < 3) {
    unittest.expect(
      o.hotKeyAge!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.systemName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userStepName!,
      unittest.equals('foo'),
    );
  }
  buildCounterHotKeyDetection--;
}

core.int buildCounterHotKeyInfo = 0;
api.HotKeyInfo buildHotKeyInfo() {
  final o = api.HotKeyInfo();
  buildCounterHotKeyInfo++;
  if (buildCounterHotKeyInfo < 3) {
    o.hotKeyAge = 'foo';
    o.key = 'foo';
    o.keyTruncated = true;
  }
  buildCounterHotKeyInfo--;
  return o;
}

void checkHotKeyInfo(api.HotKeyInfo o) {
  buildCounterHotKeyInfo++;
  if (buildCounterHotKeyInfo < 3) {
    unittest.expect(
      o.hotKeyAge!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(o.keyTruncated!, unittest.isTrue);
  }
  buildCounterHotKeyInfo--;
}

core.int buildCounterInstructionInput = 0;
api.InstructionInput buildInstructionInput() {
  final o = api.InstructionInput();
  buildCounterInstructionInput++;
  if (buildCounterInstructionInput < 3) {
    o.outputNum = 42;
    o.producerInstructionIndex = 42;
  }
  buildCounterInstructionInput--;
  return o;
}

void checkInstructionInput(api.InstructionInput o) {
  buildCounterInstructionInput++;
  if (buildCounterInstructionInput < 3) {
    unittest.expect(
      o.outputNum!,
      unittest.equals(42),
    );
    unittest.expect(
      o.producerInstructionIndex!,
      unittest.equals(42),
    );
  }
  buildCounterInstructionInput--;
}

core.Map<core.String, core.Object?> buildUnnamed29() => {
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

void checkUnnamed29(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted10 = (o['x']!) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(
    casted10['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted10['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted10['string'],
    unittest.equals('foo'),
  );
  var casted11 = (o['y']!) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(
    casted11['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted11['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted11['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterInstructionOutput = 0;
api.InstructionOutput buildInstructionOutput() {
  final o = api.InstructionOutput();
  buildCounterInstructionOutput++;
  if (buildCounterInstructionOutput < 3) {
    o.codec = buildUnnamed29();
    o.name = 'foo';
    o.onlyCountKeyBytes = true;
    o.onlyCountValueBytes = true;
    o.originalName = 'foo';
    o.systemName = 'foo';
  }
  buildCounterInstructionOutput--;
  return o;
}

void checkInstructionOutput(api.InstructionOutput o) {
  buildCounterInstructionOutput++;
  if (buildCounterInstructionOutput < 3) {
    checkUnnamed29(o.codec!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(o.onlyCountKeyBytes!, unittest.isTrue);
    unittest.expect(o.onlyCountValueBytes!, unittest.isTrue);
    unittest.expect(
      o.originalName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.systemName!,
      unittest.equals('foo'),
    );
  }
  buildCounterInstructionOutput--;
}

core.int buildCounterIntegerGauge = 0;
api.IntegerGauge buildIntegerGauge() {
  final o = api.IntegerGauge();
  buildCounterIntegerGauge++;
  if (buildCounterIntegerGauge < 3) {
    o.timestamp = 'foo';
    o.value = buildSplitInt64();
  }
  buildCounterIntegerGauge--;
  return o;
}

void checkIntegerGauge(api.IntegerGauge o) {
  buildCounterIntegerGauge++;
  if (buildCounterIntegerGauge < 3) {
    unittest.expect(
      o.timestamp!,
      unittest.equals('foo'),
    );
    checkSplitInt64(o.value!);
  }
  buildCounterIntegerGauge--;
}

core.List<api.SplitInt64> buildUnnamed30() => [
      buildSplitInt64(),
      buildSplitInt64(),
    ];

void checkUnnamed30(core.List<api.SplitInt64> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSplitInt64(o[0]);
  checkSplitInt64(o[1]);
}

core.int buildCounterIntegerList = 0;
api.IntegerList buildIntegerList() {
  final o = api.IntegerList();
  buildCounterIntegerList++;
  if (buildCounterIntegerList < 3) {
    o.elements = buildUnnamed30();
  }
  buildCounterIntegerList--;
  return o;
}

void checkIntegerList(api.IntegerList o) {
  buildCounterIntegerList++;
  if (buildCounterIntegerList < 3) {
    checkUnnamed30(o.elements!);
  }
  buildCounterIntegerList--;
}

core.int buildCounterIntegerMean = 0;
api.IntegerMean buildIntegerMean() {
  final o = api.IntegerMean();
  buildCounterIntegerMean++;
  if (buildCounterIntegerMean < 3) {
    o.count = buildSplitInt64();
    o.sum = buildSplitInt64();
  }
  buildCounterIntegerMean--;
  return o;
}

void checkIntegerMean(api.IntegerMean o) {
  buildCounterIntegerMean++;
  if (buildCounterIntegerMean < 3) {
    checkSplitInt64(o.count!);
    checkSplitInt64(o.sum!);
  }
  buildCounterIntegerMean--;
}

core.Map<core.String, core.String> buildUnnamed31() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed31(core.Map<core.String, core.String> o) {
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

core.List<api.ExecutionStageState> buildUnnamed32() => [
      buildExecutionStageState(),
      buildExecutionStageState(),
    ];

void checkUnnamed32(core.List<api.ExecutionStageState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecutionStageState(o[0]);
  checkExecutionStageState(o[1]);
}

core.List<api.Step> buildUnnamed33() => [
      buildStep(),
      buildStep(),
    ];

void checkUnnamed33(core.List<api.Step> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStep(o[0]);
  checkStep(o[1]);
}

core.List<core.String> buildUnnamed34() => [
      'foo',
      'foo',
    ];

void checkUnnamed34(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed35() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed35(core.Map<core.String, core.String> o) {
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

core.int buildCounterJob = 0;
api.Job buildJob() {
  final o = api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.clientRequestId = 'foo';
    o.createTime = 'foo';
    o.createdFromSnapshotId = 'foo';
    o.currentState = 'foo';
    o.currentStateTime = 'foo';
    o.environment = buildEnvironment();
    o.executionInfo = buildJobExecutionInfo();
    o.id = 'foo';
    o.jobMetadata = buildJobMetadata();
    o.labels = buildUnnamed31();
    o.location = 'foo';
    o.name = 'foo';
    o.pipelineDescription = buildPipelineDescription();
    o.projectId = 'foo';
    o.replaceJobId = 'foo';
    o.replacedByJobId = 'foo';
    o.requestedState = 'foo';
    o.runtimeUpdatableParams = buildRuntimeUpdatableParams();
    o.satisfiesPzi = true;
    o.satisfiesPzs = true;
    o.serviceResources = buildServiceResources();
    o.stageStates = buildUnnamed32();
    o.startTime = 'foo';
    o.steps = buildUnnamed33();
    o.stepsLocation = 'foo';
    o.tempFiles = buildUnnamed34();
    o.transformNameMapping = buildUnnamed35();
    o.type = 'foo';
  }
  buildCounterJob--;
  return o;
}

void checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    unittest.expect(
      o.clientRequestId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.createdFromSnapshotId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currentState!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currentStateTime!,
      unittest.equals('foo'),
    );
    checkEnvironment(o.environment!);
    checkJobExecutionInfo(o.executionInfo!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkJobMetadata(o.jobMetadata!);
    checkUnnamed31(o.labels!);
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkPipelineDescription(o.pipelineDescription!);
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.replaceJobId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.replacedByJobId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestedState!,
      unittest.equals('foo'),
    );
    checkRuntimeUpdatableParams(o.runtimeUpdatableParams!);
    unittest.expect(o.satisfiesPzi!, unittest.isTrue);
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    checkServiceResources(o.serviceResources!);
    checkUnnamed32(o.stageStates!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    checkUnnamed33(o.steps!);
    unittest.expect(
      o.stepsLocation!,
      unittest.equals('foo'),
    );
    checkUnnamed34(o.tempFiles!);
    checkUnnamed35(o.transformNameMapping!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterJob--;
}

core.List<api.StageSummary> buildUnnamed36() => [
      buildStageSummary(),
      buildStageSummary(),
    ];

void checkUnnamed36(core.List<api.StageSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStageSummary(o[0]);
  checkStageSummary(o[1]);
}

core.int buildCounterJobExecutionDetails = 0;
api.JobExecutionDetails buildJobExecutionDetails() {
  final o = api.JobExecutionDetails();
  buildCounterJobExecutionDetails++;
  if (buildCounterJobExecutionDetails < 3) {
    o.nextPageToken = 'foo';
    o.stages = buildUnnamed36();
  }
  buildCounterJobExecutionDetails--;
  return o;
}

void checkJobExecutionDetails(api.JobExecutionDetails o) {
  buildCounterJobExecutionDetails++;
  if (buildCounterJobExecutionDetails < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed36(o.stages!);
  }
  buildCounterJobExecutionDetails--;
}

core.Map<core.String, api.JobExecutionStageInfo> buildUnnamed37() => {
      'x': buildJobExecutionStageInfo(),
      'y': buildJobExecutionStageInfo(),
    };

void checkUnnamed37(core.Map<core.String, api.JobExecutionStageInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobExecutionStageInfo(o['x']!);
  checkJobExecutionStageInfo(o['y']!);
}

core.int buildCounterJobExecutionInfo = 0;
api.JobExecutionInfo buildJobExecutionInfo() {
  final o = api.JobExecutionInfo();
  buildCounterJobExecutionInfo++;
  if (buildCounterJobExecutionInfo < 3) {
    o.stages = buildUnnamed37();
  }
  buildCounterJobExecutionInfo--;
  return o;
}

void checkJobExecutionInfo(api.JobExecutionInfo o) {
  buildCounterJobExecutionInfo++;
  if (buildCounterJobExecutionInfo < 3) {
    checkUnnamed37(o.stages!);
  }
  buildCounterJobExecutionInfo--;
}

core.List<core.String> buildUnnamed38() => [
      'foo',
      'foo',
    ];

void checkUnnamed38(core.List<core.String> o) {
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

core.int buildCounterJobExecutionStageInfo = 0;
api.JobExecutionStageInfo buildJobExecutionStageInfo() {
  final o = api.JobExecutionStageInfo();
  buildCounterJobExecutionStageInfo++;
  if (buildCounterJobExecutionStageInfo < 3) {
    o.stepName = buildUnnamed38();
  }
  buildCounterJobExecutionStageInfo--;
  return o;
}

void checkJobExecutionStageInfo(api.JobExecutionStageInfo o) {
  buildCounterJobExecutionStageInfo++;
  if (buildCounterJobExecutionStageInfo < 3) {
    checkUnnamed38(o.stepName!);
  }
  buildCounterJobExecutionStageInfo--;
}

core.int buildCounterJobMessage = 0;
api.JobMessage buildJobMessage() {
  final o = api.JobMessage();
  buildCounterJobMessage++;
  if (buildCounterJobMessage < 3) {
    o.id = 'foo';
    o.messageImportance = 'foo';
    o.messageText = 'foo';
    o.time = 'foo';
  }
  buildCounterJobMessage--;
  return o;
}

void checkJobMessage(api.JobMessage o) {
  buildCounterJobMessage++;
  if (buildCounterJobMessage < 3) {
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.messageImportance!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.messageText!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.time!,
      unittest.equals('foo'),
    );
  }
  buildCounterJobMessage--;
}

core.List<api.BigTableIODetails> buildUnnamed39() => [
      buildBigTableIODetails(),
      buildBigTableIODetails(),
    ];

void checkUnnamed39(core.List<api.BigTableIODetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBigTableIODetails(o[0]);
  checkBigTableIODetails(o[1]);
}

core.List<api.BigQueryIODetails> buildUnnamed40() => [
      buildBigQueryIODetails(),
      buildBigQueryIODetails(),
    ];

void checkUnnamed40(core.List<api.BigQueryIODetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBigQueryIODetails(o[0]);
  checkBigQueryIODetails(o[1]);
}

core.List<api.DatastoreIODetails> buildUnnamed41() => [
      buildDatastoreIODetails(),
      buildDatastoreIODetails(),
    ];

void checkUnnamed41(core.List<api.DatastoreIODetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatastoreIODetails(o[0]);
  checkDatastoreIODetails(o[1]);
}

core.List<api.FileIODetails> buildUnnamed42() => [
      buildFileIODetails(),
      buildFileIODetails(),
    ];

void checkUnnamed42(core.List<api.FileIODetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileIODetails(o[0]);
  checkFileIODetails(o[1]);
}

core.List<api.PubSubIODetails> buildUnnamed43() => [
      buildPubSubIODetails(),
      buildPubSubIODetails(),
    ];

void checkUnnamed43(core.List<api.PubSubIODetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPubSubIODetails(o[0]);
  checkPubSubIODetails(o[1]);
}

core.List<api.SpannerIODetails> buildUnnamed44() => [
      buildSpannerIODetails(),
      buildSpannerIODetails(),
    ];

void checkUnnamed44(core.List<api.SpannerIODetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpannerIODetails(o[0]);
  checkSpannerIODetails(o[1]);
}

core.Map<core.String, core.String> buildUnnamed45() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed45(core.Map<core.String, core.String> o) {
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

core.int buildCounterJobMetadata = 0;
api.JobMetadata buildJobMetadata() {
  final o = api.JobMetadata();
  buildCounterJobMetadata++;
  if (buildCounterJobMetadata < 3) {
    o.bigTableDetails = buildUnnamed39();
    o.bigqueryDetails = buildUnnamed40();
    o.datastoreDetails = buildUnnamed41();
    o.fileDetails = buildUnnamed42();
    o.pubsubDetails = buildUnnamed43();
    o.sdkVersion = buildSdkVersion();
    o.spannerDetails = buildUnnamed44();
    o.userDisplayProperties = buildUnnamed45();
  }
  buildCounterJobMetadata--;
  return o;
}

void checkJobMetadata(api.JobMetadata o) {
  buildCounterJobMetadata++;
  if (buildCounterJobMetadata < 3) {
    checkUnnamed39(o.bigTableDetails!);
    checkUnnamed40(o.bigqueryDetails!);
    checkUnnamed41(o.datastoreDetails!);
    checkUnnamed42(o.fileDetails!);
    checkUnnamed43(o.pubsubDetails!);
    checkSdkVersion(o.sdkVersion!);
    checkUnnamed44(o.spannerDetails!);
    checkUnnamed45(o.userDisplayProperties!);
  }
  buildCounterJobMetadata--;
}

core.List<api.MetricUpdate> buildUnnamed46() => [
      buildMetricUpdate(),
      buildMetricUpdate(),
    ];

void checkUnnamed46(core.List<api.MetricUpdate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricUpdate(o[0]);
  checkMetricUpdate(o[1]);
}

core.int buildCounterJobMetrics = 0;
api.JobMetrics buildJobMetrics() {
  final o = api.JobMetrics();
  buildCounterJobMetrics++;
  if (buildCounterJobMetrics < 3) {
    o.metricTime = 'foo';
    o.metrics = buildUnnamed46();
  }
  buildCounterJobMetrics--;
  return o;
}

void checkJobMetrics(api.JobMetrics o) {
  buildCounterJobMetrics++;
  if (buildCounterJobMetrics < 3) {
    unittest.expect(
      o.metricTime!,
      unittest.equals('foo'),
    );
    checkUnnamed46(o.metrics!);
  }
  buildCounterJobMetrics--;
}

core.int buildCounterKeyRangeDataDiskAssignment = 0;
api.KeyRangeDataDiskAssignment buildKeyRangeDataDiskAssignment() {
  final o = api.KeyRangeDataDiskAssignment();
  buildCounterKeyRangeDataDiskAssignment++;
  if (buildCounterKeyRangeDataDiskAssignment < 3) {
    o.dataDisk = 'foo';
    o.end = 'foo';
    o.start = 'foo';
  }
  buildCounterKeyRangeDataDiskAssignment--;
  return o;
}

void checkKeyRangeDataDiskAssignment(api.KeyRangeDataDiskAssignment o) {
  buildCounterKeyRangeDataDiskAssignment++;
  if (buildCounterKeyRangeDataDiskAssignment < 3) {
    unittest.expect(
      o.dataDisk!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.end!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.start!,
      unittest.equals('foo'),
    );
  }
  buildCounterKeyRangeDataDiskAssignment--;
}

core.int buildCounterKeyRangeLocation = 0;
api.KeyRangeLocation buildKeyRangeLocation() {
  final o = api.KeyRangeLocation();
  buildCounterKeyRangeLocation++;
  if (buildCounterKeyRangeLocation < 3) {
    o.dataDisk = 'foo';
    o.deliveryEndpoint = 'foo';
    o.deprecatedPersistentDirectory = 'foo';
    o.end = 'foo';
    o.start = 'foo';
  }
  buildCounterKeyRangeLocation--;
  return o;
}

void checkKeyRangeLocation(api.KeyRangeLocation o) {
  buildCounterKeyRangeLocation++;
  if (buildCounterKeyRangeLocation < 3) {
    unittest.expect(
      o.dataDisk!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deliveryEndpoint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.deprecatedPersistentDirectory!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.end!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.start!,
      unittest.equals('foo'),
    );
  }
  buildCounterKeyRangeLocation--;
}

core.Map<core.String, core.String> buildUnnamed47() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed47(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed48() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed48(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed49() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed49(core.Map<core.String, core.String> o) {
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

core.int buildCounterLaunchFlexTemplateParameter = 0;
api.LaunchFlexTemplateParameter buildLaunchFlexTemplateParameter() {
  final o = api.LaunchFlexTemplateParameter();
  buildCounterLaunchFlexTemplateParameter++;
  if (buildCounterLaunchFlexTemplateParameter < 3) {
    o.containerSpec = buildContainerSpec();
    o.containerSpecGcsPath = 'foo';
    o.environment = buildFlexTemplateRuntimeEnvironment();
    o.jobName = 'foo';
    o.launchOptions = buildUnnamed47();
    o.parameters = buildUnnamed48();
    o.transformNameMappings = buildUnnamed49();
    o.update = true;
  }
  buildCounterLaunchFlexTemplateParameter--;
  return o;
}

void checkLaunchFlexTemplateParameter(api.LaunchFlexTemplateParameter o) {
  buildCounterLaunchFlexTemplateParameter++;
  if (buildCounterLaunchFlexTemplateParameter < 3) {
    checkContainerSpec(o.containerSpec!);
    unittest.expect(
      o.containerSpecGcsPath!,
      unittest.equals('foo'),
    );
    checkFlexTemplateRuntimeEnvironment(o.environment!);
    unittest.expect(
      o.jobName!,
      unittest.equals('foo'),
    );
    checkUnnamed47(o.launchOptions!);
    checkUnnamed48(o.parameters!);
    checkUnnamed49(o.transformNameMappings!);
    unittest.expect(o.update!, unittest.isTrue);
  }
  buildCounterLaunchFlexTemplateParameter--;
}

core.int buildCounterLaunchFlexTemplateRequest = 0;
api.LaunchFlexTemplateRequest buildLaunchFlexTemplateRequest() {
  final o = api.LaunchFlexTemplateRequest();
  buildCounterLaunchFlexTemplateRequest++;
  if (buildCounterLaunchFlexTemplateRequest < 3) {
    o.launchParameter = buildLaunchFlexTemplateParameter();
    o.validateOnly = true;
  }
  buildCounterLaunchFlexTemplateRequest--;
  return o;
}

void checkLaunchFlexTemplateRequest(api.LaunchFlexTemplateRequest o) {
  buildCounterLaunchFlexTemplateRequest++;
  if (buildCounterLaunchFlexTemplateRequest < 3) {
    checkLaunchFlexTemplateParameter(o.launchParameter!);
    unittest.expect(o.validateOnly!, unittest.isTrue);
  }
  buildCounterLaunchFlexTemplateRequest--;
}

core.int buildCounterLaunchFlexTemplateResponse = 0;
api.LaunchFlexTemplateResponse buildLaunchFlexTemplateResponse() {
  final o = api.LaunchFlexTemplateResponse();
  buildCounterLaunchFlexTemplateResponse++;
  if (buildCounterLaunchFlexTemplateResponse < 3) {
    o.job = buildJob();
  }
  buildCounterLaunchFlexTemplateResponse--;
  return o;
}

void checkLaunchFlexTemplateResponse(api.LaunchFlexTemplateResponse o) {
  buildCounterLaunchFlexTemplateResponse++;
  if (buildCounterLaunchFlexTemplateResponse < 3) {
    checkJob(o.job!);
  }
  buildCounterLaunchFlexTemplateResponse--;
}

core.Map<core.String, core.String> buildUnnamed50() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed50(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed51() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed51(core.Map<core.String, core.String> o) {
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

core.int buildCounterLaunchTemplateParameters = 0;
api.LaunchTemplateParameters buildLaunchTemplateParameters() {
  final o = api.LaunchTemplateParameters();
  buildCounterLaunchTemplateParameters++;
  if (buildCounterLaunchTemplateParameters < 3) {
    o.environment = buildRuntimeEnvironment();
    o.jobName = 'foo';
    o.parameters = buildUnnamed50();
    o.transformNameMapping = buildUnnamed51();
    o.update = true;
  }
  buildCounterLaunchTemplateParameters--;
  return o;
}

void checkLaunchTemplateParameters(api.LaunchTemplateParameters o) {
  buildCounterLaunchTemplateParameters++;
  if (buildCounterLaunchTemplateParameters < 3) {
    checkRuntimeEnvironment(o.environment!);
    unittest.expect(
      o.jobName!,
      unittest.equals('foo'),
    );
    checkUnnamed50(o.parameters!);
    checkUnnamed51(o.transformNameMapping!);
    unittest.expect(o.update!, unittest.isTrue);
  }
  buildCounterLaunchTemplateParameters--;
}

core.int buildCounterLaunchTemplateResponse = 0;
api.LaunchTemplateResponse buildLaunchTemplateResponse() {
  final o = api.LaunchTemplateResponse();
  buildCounterLaunchTemplateResponse++;
  if (buildCounterLaunchTemplateResponse < 3) {
    o.job = buildJob();
  }
  buildCounterLaunchTemplateResponse--;
  return o;
}

void checkLaunchTemplateResponse(api.LaunchTemplateResponse o) {
  buildCounterLaunchTemplateResponse++;
  if (buildCounterLaunchTemplateResponse < 3) {
    checkJob(o.job!);
  }
  buildCounterLaunchTemplateResponse--;
}

core.Map<core.String, core.Object?> buildUnnamed52() => {
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

void checkUnnamed52(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted12 = (o['x']!) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(
    casted12['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted12['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted12['string'],
    unittest.equals('foo'),
  );
  var casted13 = (o['y']!) as core.Map;
  unittest.expect(casted13, unittest.hasLength(3));
  unittest.expect(
    casted13['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted13['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted13['string'],
    unittest.equals('foo'),
  );
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

core.List<core.String> buildUnnamed54() => [
      'foo',
      'foo',
    ];

void checkUnnamed54(core.List<core.String> o) {
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

core.int buildCounterLeaseWorkItemRequest = 0;
api.LeaseWorkItemRequest buildLeaseWorkItemRequest() {
  final o = api.LeaseWorkItemRequest();
  buildCounterLeaseWorkItemRequest++;
  if (buildCounterLeaseWorkItemRequest < 3) {
    o.currentWorkerTime = 'foo';
    o.location = 'foo';
    o.projectNumber = 'foo';
    o.requestedLeaseDuration = 'foo';
    o.unifiedWorkerRequest = buildUnnamed52();
    o.workItemTypes = buildUnnamed53();
    o.workerCapabilities = buildUnnamed54();
    o.workerId = 'foo';
  }
  buildCounterLeaseWorkItemRequest--;
  return o;
}

void checkLeaseWorkItemRequest(api.LeaseWorkItemRequest o) {
  buildCounterLeaseWorkItemRequest++;
  if (buildCounterLeaseWorkItemRequest < 3) {
    unittest.expect(
      o.currentWorkerTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectNumber!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.requestedLeaseDuration!,
      unittest.equals('foo'),
    );
    checkUnnamed52(o.unifiedWorkerRequest!);
    checkUnnamed53(o.workItemTypes!);
    checkUnnamed54(o.workerCapabilities!);
    unittest.expect(
      o.workerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterLeaseWorkItemRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed55() => {
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

void checkUnnamed55(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted14 = (o['x']!) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(
    casted14['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted14['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted14['string'],
    unittest.equals('foo'),
  );
  var casted15 = (o['y']!) as core.Map;
  unittest.expect(casted15, unittest.hasLength(3));
  unittest.expect(
    casted15['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted15['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted15['string'],
    unittest.equals('foo'),
  );
}

core.List<api.WorkItem> buildUnnamed56() => [
      buildWorkItem(),
      buildWorkItem(),
    ];

void checkUnnamed56(core.List<api.WorkItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkItem(o[0]);
  checkWorkItem(o[1]);
}

core.int buildCounterLeaseWorkItemResponse = 0;
api.LeaseWorkItemResponse buildLeaseWorkItemResponse() {
  final o = api.LeaseWorkItemResponse();
  buildCounterLeaseWorkItemResponse++;
  if (buildCounterLeaseWorkItemResponse < 3) {
    o.unifiedWorkerResponse = buildUnnamed55();
    o.workItems = buildUnnamed56();
  }
  buildCounterLeaseWorkItemResponse--;
  return o;
}

void checkLeaseWorkItemResponse(api.LeaseWorkItemResponse o) {
  buildCounterLeaseWorkItemResponse++;
  if (buildCounterLeaseWorkItemResponse < 3) {
    checkUnnamed55(o.unifiedWorkerResponse!);
    checkUnnamed56(o.workItems!);
  }
  buildCounterLeaseWorkItemResponse--;
}

core.int buildCounterLinear = 0;
api.Linear buildLinear() {
  final o = api.Linear();
  buildCounterLinear++;
  if (buildCounterLinear < 3) {
    o.numberOfBuckets = 42;
    o.start = 42.0;
    o.width = 42.0;
  }
  buildCounterLinear--;
  return o;
}

void checkLinear(api.Linear o) {
  buildCounterLinear++;
  if (buildCounterLinear < 3) {
    unittest.expect(
      o.numberOfBuckets!,
      unittest.equals(42),
    );
    unittest.expect(
      o.start!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.width!,
      unittest.equals(42.0),
    );
  }
  buildCounterLinear--;
}

core.List<api.AutoscalingEvent> buildUnnamed57() => [
      buildAutoscalingEvent(),
      buildAutoscalingEvent(),
    ];

void checkUnnamed57(core.List<api.AutoscalingEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutoscalingEvent(o[0]);
  checkAutoscalingEvent(o[1]);
}

core.List<api.JobMessage> buildUnnamed58() => [
      buildJobMessage(),
      buildJobMessage(),
    ];

void checkUnnamed58(core.List<api.JobMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobMessage(o[0]);
  checkJobMessage(o[1]);
}

core.int buildCounterListJobMessagesResponse = 0;
api.ListJobMessagesResponse buildListJobMessagesResponse() {
  final o = api.ListJobMessagesResponse();
  buildCounterListJobMessagesResponse++;
  if (buildCounterListJobMessagesResponse < 3) {
    o.autoscalingEvents = buildUnnamed57();
    o.jobMessages = buildUnnamed58();
    o.nextPageToken = 'foo';
  }
  buildCounterListJobMessagesResponse--;
  return o;
}

void checkListJobMessagesResponse(api.ListJobMessagesResponse o) {
  buildCounterListJobMessagesResponse++;
  if (buildCounterListJobMessagesResponse < 3) {
    checkUnnamed57(o.autoscalingEvents!);
    checkUnnamed58(o.jobMessages!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListJobMessagesResponse--;
}

core.List<api.FailedLocation> buildUnnamed59() => [
      buildFailedLocation(),
      buildFailedLocation(),
    ];

void checkUnnamed59(core.List<api.FailedLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFailedLocation(o[0]);
  checkFailedLocation(o[1]);
}

core.List<api.Job> buildUnnamed60() => [
      buildJob(),
      buildJob(),
    ];

void checkUnnamed60(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterListJobsResponse = 0;
api.ListJobsResponse buildListJobsResponse() {
  final o = api.ListJobsResponse();
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    o.failedLocation = buildUnnamed59();
    o.jobs = buildUnnamed60();
    o.nextPageToken = 'foo';
  }
  buildCounterListJobsResponse--;
  return o;
}

void checkListJobsResponse(api.ListJobsResponse o) {
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    checkUnnamed59(o.failedLocation!);
    checkUnnamed60(o.jobs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListJobsResponse--;
}

core.List<api.Snapshot> buildUnnamed61() => [
      buildSnapshot(),
      buildSnapshot(),
    ];

void checkUnnamed61(core.List<api.Snapshot> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSnapshot(o[0]);
  checkSnapshot(o[1]);
}

core.int buildCounterListSnapshotsResponse = 0;
api.ListSnapshotsResponse buildListSnapshotsResponse() {
  final o = api.ListSnapshotsResponse();
  buildCounterListSnapshotsResponse++;
  if (buildCounterListSnapshotsResponse < 3) {
    o.snapshots = buildUnnamed61();
  }
  buildCounterListSnapshotsResponse--;
  return o;
}

void checkListSnapshotsResponse(api.ListSnapshotsResponse o) {
  buildCounterListSnapshotsResponse++;
  if (buildCounterListSnapshotsResponse < 3) {
    checkUnnamed61(o.snapshots!);
  }
  buildCounterListSnapshotsResponse--;
}

core.List<api.ParallelInstruction> buildUnnamed62() => [
      buildParallelInstruction(),
      buildParallelInstruction(),
    ];

void checkUnnamed62(core.List<api.ParallelInstruction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParallelInstruction(o[0]);
  checkParallelInstruction(o[1]);
}

core.int buildCounterMapTask = 0;
api.MapTask buildMapTask() {
  final o = api.MapTask();
  buildCounterMapTask++;
  if (buildCounterMapTask < 3) {
    o.counterPrefix = 'foo';
    o.instructions = buildUnnamed62();
    o.stageName = 'foo';
    o.systemName = 'foo';
  }
  buildCounterMapTask--;
  return o;
}

void checkMapTask(api.MapTask o) {
  buildCounterMapTask++;
  if (buildCounterMapTask < 3) {
    unittest.expect(
      o.counterPrefix!,
      unittest.equals('foo'),
    );
    checkUnnamed62(o.instructions!);
    unittest.expect(
      o.stageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.systemName!,
      unittest.equals('foo'),
    );
  }
  buildCounterMapTask--;
}

core.int buildCounterMemInfo = 0;
api.MemInfo buildMemInfo() {
  final o = api.MemInfo();
  buildCounterMemInfo++;
  if (buildCounterMemInfo < 3) {
    o.currentLimitBytes = 'foo';
    o.currentOoms = 'foo';
    o.currentRssBytes = 'foo';
    o.timestamp = 'foo';
    o.totalGbMs = 'foo';
  }
  buildCounterMemInfo--;
  return o;
}

void checkMemInfo(api.MemInfo o) {
  buildCounterMemInfo++;
  if (buildCounterMemInfo < 3) {
    unittest.expect(
      o.currentLimitBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currentOoms!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.currentRssBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timestamp!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.totalGbMs!,
      unittest.equals('foo'),
    );
  }
  buildCounterMemInfo--;
}

core.int buildCounterMetricShortId = 0;
api.MetricShortId buildMetricShortId() {
  final o = api.MetricShortId();
  buildCounterMetricShortId++;
  if (buildCounterMetricShortId < 3) {
    o.metricIndex = 42;
    o.shortId = 'foo';
  }
  buildCounterMetricShortId--;
  return o;
}

void checkMetricShortId(api.MetricShortId o) {
  buildCounterMetricShortId++;
  if (buildCounterMetricShortId < 3) {
    unittest.expect(
      o.metricIndex!,
      unittest.equals(42),
    );
    unittest.expect(
      o.shortId!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetricShortId--;
}

core.Map<core.String, core.String> buildUnnamed63() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed63(core.Map<core.String, core.String> o) {
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

core.int buildCounterMetricStructuredName = 0;
api.MetricStructuredName buildMetricStructuredName() {
  final o = api.MetricStructuredName();
  buildCounterMetricStructuredName++;
  if (buildCounterMetricStructuredName < 3) {
    o.context = buildUnnamed63();
    o.name = 'foo';
    o.origin = 'foo';
  }
  buildCounterMetricStructuredName--;
  return o;
}

void checkMetricStructuredName(api.MetricStructuredName o) {
  buildCounterMetricStructuredName++;
  if (buildCounterMetricStructuredName < 3) {
    checkUnnamed63(o.context!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.origin!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetricStructuredName--;
}

core.int buildCounterMetricUpdate = 0;
api.MetricUpdate buildMetricUpdate() {
  final o = api.MetricUpdate();
  buildCounterMetricUpdate++;
  if (buildCounterMetricUpdate < 3) {
    o.cumulative = true;
    o.distribution = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.gauge = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.internal = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.kind = 'foo';
    o.meanCount = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.meanSum = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.name = buildMetricStructuredName();
    o.scalar = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.set = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.trie = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
    o.updateTime = 'foo';
  }
  buildCounterMetricUpdate--;
  return o;
}

void checkMetricUpdate(api.MetricUpdate o) {
  buildCounterMetricUpdate++;
  if (buildCounterMetricUpdate < 3) {
    unittest.expect(o.cumulative!, unittest.isTrue);
    var casted16 = (o.distribution!) as core.Map;
    unittest.expect(casted16, unittest.hasLength(3));
    unittest.expect(
      casted16['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted16['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted16['string'],
      unittest.equals('foo'),
    );
    var casted17 = (o.gauge!) as core.Map;
    unittest.expect(casted17, unittest.hasLength(3));
    unittest.expect(
      casted17['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted17['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted17['string'],
      unittest.equals('foo'),
    );
    var casted18 = (o.internal!) as core.Map;
    unittest.expect(casted18, unittest.hasLength(3));
    unittest.expect(
      casted18['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted18['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted18['string'],
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    var casted19 = (o.meanCount!) as core.Map;
    unittest.expect(casted19, unittest.hasLength(3));
    unittest.expect(
      casted19['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted19['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted19['string'],
      unittest.equals('foo'),
    );
    var casted20 = (o.meanSum!) as core.Map;
    unittest.expect(casted20, unittest.hasLength(3));
    unittest.expect(
      casted20['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted20['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted20['string'],
      unittest.equals('foo'),
    );
    checkMetricStructuredName(o.name!);
    var casted21 = (o.scalar!) as core.Map;
    unittest.expect(casted21, unittest.hasLength(3));
    unittest.expect(
      casted21['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted21['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted21['string'],
      unittest.equals('foo'),
    );
    var casted22 = (o.set!) as core.Map;
    unittest.expect(casted22, unittest.hasLength(3));
    unittest.expect(
      casted22['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted22['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted22['string'],
      unittest.equals('foo'),
    );
    var casted23 = (o.trie!) as core.Map;
    unittest.expect(casted23, unittest.hasLength(3));
    unittest.expect(
      casted23['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted23['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted23['string'],
      unittest.equals('foo'),
    );
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetricUpdate--;
}

core.Map<core.String, core.String> buildUnnamed64() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed64(core.Map<core.String, core.String> o) {
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

core.int buildCounterMetricValue = 0;
api.MetricValue buildMetricValue() {
  final o = api.MetricValue();
  buildCounterMetricValue++;
  if (buildCounterMetricValue < 3) {
    o.metric = 'foo';
    o.metricLabels = buildUnnamed64();
    o.valueGauge64 = buildDataflowGaugeValue();
    o.valueHistogram = buildDataflowHistogramValue();
    o.valueInt64 = 'foo';
  }
  buildCounterMetricValue--;
  return o;
}

void checkMetricValue(api.MetricValue o) {
  buildCounterMetricValue++;
  if (buildCounterMetricValue < 3) {
    unittest.expect(
      o.metric!,
      unittest.equals('foo'),
    );
    checkUnnamed64(o.metricLabels!);
    checkDataflowGaugeValue(o.valueGauge64!);
    checkDataflowHistogramValue(o.valueHistogram!);
    unittest.expect(
      o.valueInt64!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetricValue--;
}

core.int buildCounterMountedDataDisk = 0;
api.MountedDataDisk buildMountedDataDisk() {
  final o = api.MountedDataDisk();
  buildCounterMountedDataDisk++;
  if (buildCounterMountedDataDisk < 3) {
    o.dataDisk = 'foo';
  }
  buildCounterMountedDataDisk--;
  return o;
}

void checkMountedDataDisk(api.MountedDataDisk o) {
  buildCounterMountedDataDisk++;
  if (buildCounterMountedDataDisk < 3) {
    unittest.expect(
      o.dataDisk!,
      unittest.equals('foo'),
    );
  }
  buildCounterMountedDataDisk--;
}

core.int buildCounterMultiOutputInfo = 0;
api.MultiOutputInfo buildMultiOutputInfo() {
  final o = api.MultiOutputInfo();
  buildCounterMultiOutputInfo++;
  if (buildCounterMultiOutputInfo < 3) {
    o.tag = 'foo';
  }
  buildCounterMultiOutputInfo--;
  return o;
}

void checkMultiOutputInfo(api.MultiOutputInfo o) {
  buildCounterMultiOutputInfo++;
  if (buildCounterMultiOutputInfo < 3) {
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
  }
  buildCounterMultiOutputInfo--;
}

core.int buildCounterNameAndKind = 0;
api.NameAndKind buildNameAndKind() {
  final o = api.NameAndKind();
  buildCounterNameAndKind++;
  if (buildCounterNameAndKind < 3) {
    o.kind = 'foo';
    o.name = 'foo';
  }
  buildCounterNameAndKind--;
  return o;
}

void checkNameAndKind(api.NameAndKind o) {
  buildCounterNameAndKind++;
  if (buildCounterNameAndKind < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterNameAndKind--;
}

core.int buildCounterOutlierStats = 0;
api.OutlierStats buildOutlierStats() {
  final o = api.OutlierStats();
  buildCounterOutlierStats++;
  if (buildCounterOutlierStats < 3) {
    o.overflowCount = 'foo';
    o.overflowMean = 42.0;
    o.underflowCount = 'foo';
    o.underflowMean = 42.0;
  }
  buildCounterOutlierStats--;
  return o;
}

void checkOutlierStats(api.OutlierStats o) {
  buildCounterOutlierStats++;
  if (buildCounterOutlierStats < 3) {
    unittest.expect(
      o.overflowCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.overflowMean!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.underflowCount!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.underflowMean!,
      unittest.equals(42.0),
    );
  }
  buildCounterOutlierStats--;
}

core.int buildCounterPackage = 0;
api.Package buildPackage() {
  final o = api.Package();
  buildCounterPackage++;
  if (buildCounterPackage < 3) {
    o.location = 'foo';
    o.name = 'foo';
  }
  buildCounterPackage--;
  return o;
}

void checkPackage(api.Package o) {
  buildCounterPackage++;
  if (buildCounterPackage < 3) {
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
  }
  buildCounterPackage--;
}

core.List<api.MultiOutputInfo> buildUnnamed65() => [
      buildMultiOutputInfo(),
      buildMultiOutputInfo(),
    ];

void checkUnnamed65(core.List<api.MultiOutputInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMultiOutputInfo(o[0]);
  checkMultiOutputInfo(o[1]);
}

core.List<api.SideInputInfo> buildUnnamed66() => [
      buildSideInputInfo(),
      buildSideInputInfo(),
    ];

void checkUnnamed66(core.List<api.SideInputInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSideInputInfo(o[0]);
  checkSideInputInfo(o[1]);
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
  var casted24 = (o['x']!) as core.Map;
  unittest.expect(casted24, unittest.hasLength(3));
  unittest.expect(
    casted24['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted24['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted24['string'],
    unittest.equals('foo'),
  );
  var casted25 = (o['y']!) as core.Map;
  unittest.expect(casted25, unittest.hasLength(3));
  unittest.expect(
    casted25['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted25['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted25['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterParDoInstruction = 0;
api.ParDoInstruction buildParDoInstruction() {
  final o = api.ParDoInstruction();
  buildCounterParDoInstruction++;
  if (buildCounterParDoInstruction < 3) {
    o.input = buildInstructionInput();
    o.multiOutputInfos = buildUnnamed65();
    o.numOutputs = 42;
    o.sideInputs = buildUnnamed66();
    o.userFn = buildUnnamed67();
  }
  buildCounterParDoInstruction--;
  return o;
}

void checkParDoInstruction(api.ParDoInstruction o) {
  buildCounterParDoInstruction++;
  if (buildCounterParDoInstruction < 3) {
    checkInstructionInput(o.input!);
    checkUnnamed65(o.multiOutputInfos!);
    unittest.expect(
      o.numOutputs!,
      unittest.equals(42),
    );
    checkUnnamed66(o.sideInputs!);
    checkUnnamed67(o.userFn!);
  }
  buildCounterParDoInstruction--;
}

core.List<api.InstructionOutput> buildUnnamed68() => [
      buildInstructionOutput(),
      buildInstructionOutput(),
    ];

void checkUnnamed68(core.List<api.InstructionOutput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstructionOutput(o[0]);
  checkInstructionOutput(o[1]);
}

core.int buildCounterParallelInstruction = 0;
api.ParallelInstruction buildParallelInstruction() {
  final o = api.ParallelInstruction();
  buildCounterParallelInstruction++;
  if (buildCounterParallelInstruction < 3) {
    o.flatten = buildFlattenInstruction();
    o.name = 'foo';
    o.originalName = 'foo';
    o.outputs = buildUnnamed68();
    o.parDo = buildParDoInstruction();
    o.partialGroupByKey = buildPartialGroupByKeyInstruction();
    o.read = buildReadInstruction();
    o.systemName = 'foo';
    o.write = buildWriteInstruction();
  }
  buildCounterParallelInstruction--;
  return o;
}

void checkParallelInstruction(api.ParallelInstruction o) {
  buildCounterParallelInstruction++;
  if (buildCounterParallelInstruction < 3) {
    checkFlattenInstruction(o.flatten!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.originalName!,
      unittest.equals('foo'),
    );
    checkUnnamed68(o.outputs!);
    checkParDoInstruction(o.parDo!);
    checkPartialGroupByKeyInstruction(o.partialGroupByKey!);
    checkReadInstruction(o.read!);
    unittest.expect(
      o.systemName!,
      unittest.equals('foo'),
    );
    checkWriteInstruction(o.write!);
  }
  buildCounterParallelInstruction--;
}

core.int buildCounterParameter = 0;
api.Parameter buildParameter() {
  final o = api.Parameter();
  buildCounterParameter++;
  if (buildCounterParameter < 3) {
    o.key = 'foo';
    o.value = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterParameter--;
  return o;
}

void checkParameter(api.Parameter o) {
  buildCounterParameter++;
  if (buildCounterParameter < 3) {
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    var casted26 = (o.value!) as core.Map;
    unittest.expect(casted26, unittest.hasLength(3));
    unittest.expect(
      casted26['list'],
      unittest.equals([1, 2, 3]),
    );
    unittest.expect(
      casted26['bool'],
      unittest.equals(true),
    );
    unittest.expect(
      casted26['string'],
      unittest.equals('foo'),
    );
  }
  buildCounterParameter--;
}

core.Map<core.String, core.String> buildUnnamed69() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed69(core.Map<core.String, core.String> o) {
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

core.List<api.ParameterMetadataEnumOption> buildUnnamed70() => [
      buildParameterMetadataEnumOption(),
      buildParameterMetadataEnumOption(),
    ];

void checkUnnamed70(core.List<api.ParameterMetadataEnumOption> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameterMetadataEnumOption(o[0]);
  checkParameterMetadataEnumOption(o[1]);
}

core.List<core.String> buildUnnamed71() => [
      'foo',
      'foo',
    ];

void checkUnnamed71(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed72() => [
      'foo',
      'foo',
    ];

void checkUnnamed72(core.List<core.String> o) {
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

core.int buildCounterParameterMetadata = 0;
api.ParameterMetadata buildParameterMetadata() {
  final o = api.ParameterMetadata();
  buildCounterParameterMetadata++;
  if (buildCounterParameterMetadata < 3) {
    o.customMetadata = buildUnnamed69();
    o.defaultValue = 'foo';
    o.enumOptions = buildUnnamed70();
    o.groupName = 'foo';
    o.helpText = 'foo';
    o.hiddenUi = true;
    o.isOptional = true;
    o.label = 'foo';
    o.name = 'foo';
    o.paramType = 'foo';
    o.parentName = 'foo';
    o.parentTriggerValues = buildUnnamed71();
    o.regexes = buildUnnamed72();
  }
  buildCounterParameterMetadata--;
  return o;
}

void checkParameterMetadata(api.ParameterMetadata o) {
  buildCounterParameterMetadata++;
  if (buildCounterParameterMetadata < 3) {
    checkUnnamed69(o.customMetadata!);
    unittest.expect(
      o.defaultValue!,
      unittest.equals('foo'),
    );
    checkUnnamed70(o.enumOptions!);
    unittest.expect(
      o.groupName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.helpText!,
      unittest.equals('foo'),
    );
    unittest.expect(o.hiddenUi!, unittest.isTrue);
    unittest.expect(o.isOptional!, unittest.isTrue);
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.paramType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.parentName!,
      unittest.equals('foo'),
    );
    checkUnnamed71(o.parentTriggerValues!);
    checkUnnamed72(o.regexes!);
  }
  buildCounterParameterMetadata--;
}

core.int buildCounterParameterMetadataEnumOption = 0;
api.ParameterMetadataEnumOption buildParameterMetadataEnumOption() {
  final o = api.ParameterMetadataEnumOption();
  buildCounterParameterMetadataEnumOption++;
  if (buildCounterParameterMetadataEnumOption < 3) {
    o.description = 'foo';
    o.label = 'foo';
    o.value = 'foo';
  }
  buildCounterParameterMetadataEnumOption--;
  return o;
}

void checkParameterMetadataEnumOption(api.ParameterMetadataEnumOption o) {
  buildCounterParameterMetadataEnumOption++;
  if (buildCounterParameterMetadataEnumOption < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.label!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals('foo'),
    );
  }
  buildCounterParameterMetadataEnumOption--;
}

core.Map<core.String, core.Object?> buildUnnamed73() => {
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

void checkUnnamed73(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted27 = (o['x']!) as core.Map;
  unittest.expect(casted27, unittest.hasLength(3));
  unittest.expect(
    casted27['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted27['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted27['string'],
    unittest.equals('foo'),
  );
  var casted28 = (o['y']!) as core.Map;
  unittest.expect(casted28, unittest.hasLength(3));
  unittest.expect(
    casted28['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted28['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted28['string'],
    unittest.equals('foo'),
  );
}

core.List<api.SideInputInfo> buildUnnamed74() => [
      buildSideInputInfo(),
      buildSideInputInfo(),
    ];

void checkUnnamed74(core.List<api.SideInputInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSideInputInfo(o[0]);
  checkSideInputInfo(o[1]);
}

core.Map<core.String, core.Object?> buildUnnamed75() => {
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

void checkUnnamed75(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted29 = (o['x']!) as core.Map;
  unittest.expect(casted29, unittest.hasLength(3));
  unittest.expect(
    casted29['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted29['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted29['string'],
    unittest.equals('foo'),
  );
  var casted30 = (o['y']!) as core.Map;
  unittest.expect(casted30, unittest.hasLength(3));
  unittest.expect(
    casted30['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted30['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted30['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterPartialGroupByKeyInstruction = 0;
api.PartialGroupByKeyInstruction buildPartialGroupByKeyInstruction() {
  final o = api.PartialGroupByKeyInstruction();
  buildCounterPartialGroupByKeyInstruction++;
  if (buildCounterPartialGroupByKeyInstruction < 3) {
    o.input = buildInstructionInput();
    o.inputElementCodec = buildUnnamed73();
    o.originalCombineValuesInputStoreName = 'foo';
    o.originalCombineValuesStepName = 'foo';
    o.sideInputs = buildUnnamed74();
    o.valueCombiningFn = buildUnnamed75();
  }
  buildCounterPartialGroupByKeyInstruction--;
  return o;
}

void checkPartialGroupByKeyInstruction(api.PartialGroupByKeyInstruction o) {
  buildCounterPartialGroupByKeyInstruction++;
  if (buildCounterPartialGroupByKeyInstruction < 3) {
    checkInstructionInput(o.input!);
    checkUnnamed73(o.inputElementCodec!);
    unittest.expect(
      o.originalCombineValuesInputStoreName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.originalCombineValuesStepName!,
      unittest.equals('foo'),
    );
    checkUnnamed74(o.sideInputs!);
    checkUnnamed75(o.valueCombiningFn!);
  }
  buildCounterPartialGroupByKeyInstruction--;
}

core.List<api.MetricValue> buildUnnamed76() => [
      buildMetricValue(),
      buildMetricValue(),
    ];

void checkUnnamed76(core.List<api.MetricValue> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricValue(o[0]);
  checkMetricValue(o[1]);
}

core.int buildCounterPerStepNamespaceMetrics = 0;
api.PerStepNamespaceMetrics buildPerStepNamespaceMetrics() {
  final o = api.PerStepNamespaceMetrics();
  buildCounterPerStepNamespaceMetrics++;
  if (buildCounterPerStepNamespaceMetrics < 3) {
    o.metricValues = buildUnnamed76();
    o.metricsNamespace = 'foo';
    o.originalStep = 'foo';
  }
  buildCounterPerStepNamespaceMetrics--;
  return o;
}

void checkPerStepNamespaceMetrics(api.PerStepNamespaceMetrics o) {
  buildCounterPerStepNamespaceMetrics++;
  if (buildCounterPerStepNamespaceMetrics < 3) {
    checkUnnamed76(o.metricValues!);
    unittest.expect(
      o.metricsNamespace!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.originalStep!,
      unittest.equals('foo'),
    );
  }
  buildCounterPerStepNamespaceMetrics--;
}

core.List<api.PerStepNamespaceMetrics> buildUnnamed77() => [
      buildPerStepNamespaceMetrics(),
      buildPerStepNamespaceMetrics(),
    ];

void checkUnnamed77(core.List<api.PerStepNamespaceMetrics> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPerStepNamespaceMetrics(o[0]);
  checkPerStepNamespaceMetrics(o[1]);
}

core.int buildCounterPerWorkerMetrics = 0;
api.PerWorkerMetrics buildPerWorkerMetrics() {
  final o = api.PerWorkerMetrics();
  buildCounterPerWorkerMetrics++;
  if (buildCounterPerWorkerMetrics < 3) {
    o.perStepNamespaceMetrics = buildUnnamed77();
  }
  buildCounterPerWorkerMetrics--;
  return o;
}

void checkPerWorkerMetrics(api.PerWorkerMetrics o) {
  buildCounterPerWorkerMetrics++;
  if (buildCounterPerWorkerMetrics < 3) {
    checkUnnamed77(o.perStepNamespaceMetrics!);
  }
  buildCounterPerWorkerMetrics--;
}

core.List<api.DisplayData> buildUnnamed78() => [
      buildDisplayData(),
      buildDisplayData(),
    ];

void checkUnnamed78(core.List<api.DisplayData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisplayData(o[0]);
  checkDisplayData(o[1]);
}

core.List<api.ExecutionStageSummary> buildUnnamed79() => [
      buildExecutionStageSummary(),
      buildExecutionStageSummary(),
    ];

void checkUnnamed79(core.List<api.ExecutionStageSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecutionStageSummary(o[0]);
  checkExecutionStageSummary(o[1]);
}

core.List<api.TransformSummary> buildUnnamed80() => [
      buildTransformSummary(),
      buildTransformSummary(),
    ];

void checkUnnamed80(core.List<api.TransformSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransformSummary(o[0]);
  checkTransformSummary(o[1]);
}

core.int buildCounterPipelineDescription = 0;
api.PipelineDescription buildPipelineDescription() {
  final o = api.PipelineDescription();
  buildCounterPipelineDescription++;
  if (buildCounterPipelineDescription < 3) {
    o.displayData = buildUnnamed78();
    o.executionPipelineStage = buildUnnamed79();
    o.originalPipelineTransform = buildUnnamed80();
    o.stepNamesHash = 'foo';
  }
  buildCounterPipelineDescription--;
  return o;
}

void checkPipelineDescription(api.PipelineDescription o) {
  buildCounterPipelineDescription++;
  if (buildCounterPipelineDescription < 3) {
    checkUnnamed78(o.displayData!);
    checkUnnamed79(o.executionPipelineStage!);
    checkUnnamed80(o.originalPipelineTransform!);
    unittest.expect(
      o.stepNamesHash!,
      unittest.equals('foo'),
    );
  }
  buildCounterPipelineDescription--;
}

core.int buildCounterPoint = 0;
api.Point buildPoint() {
  final o = api.Point();
  buildCounterPoint++;
  if (buildCounterPoint < 3) {
    o.time = 'foo';
    o.value = 42.0;
  }
  buildCounterPoint--;
  return o;
}

void checkPoint(api.Point o) {
  buildCounterPoint++;
  if (buildCounterPoint < 3) {
    unittest.expect(
      o.time!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.value!,
      unittest.equals(42.0),
    );
  }
  buildCounterPoint--;
}

core.int buildCounterPosition = 0;
api.Position buildPosition() {
  final o = api.Position();
  buildCounterPosition++;
  if (buildCounterPosition < 3) {
    o.byteOffset = 'foo';
    o.concatPosition = buildConcatPosition();
    o.end = true;
    o.key = 'foo';
    o.recordIndex = 'foo';
    o.shufflePosition = 'foo';
  }
  buildCounterPosition--;
  return o;
}

void checkPosition(api.Position o) {
  buildCounterPosition++;
  if (buildCounterPosition < 3) {
    unittest.expect(
      o.byteOffset!,
      unittest.equals('foo'),
    );
    checkConcatPosition(o.concatPosition!);
    unittest.expect(o.end!, unittest.isTrue);
    unittest.expect(
      o.key!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.recordIndex!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shufflePosition!,
      unittest.equals('foo'),
    );
  }
  buildCounterPosition--;
}

core.List<api.Point> buildUnnamed81() => [
      buildPoint(),
      buildPoint(),
    ];

void checkUnnamed81(core.List<api.Point> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPoint(o[0]);
  checkPoint(o[1]);
}

core.int buildCounterProgressTimeseries = 0;
api.ProgressTimeseries buildProgressTimeseries() {
  final o = api.ProgressTimeseries();
  buildCounterProgressTimeseries++;
  if (buildCounterProgressTimeseries < 3) {
    o.currentProgress = 42.0;
    o.dataPoints = buildUnnamed81();
  }
  buildCounterProgressTimeseries--;
  return o;
}

void checkProgressTimeseries(api.ProgressTimeseries o) {
  buildCounterProgressTimeseries++;
  if (buildCounterProgressTimeseries < 3) {
    unittest.expect(
      o.currentProgress!,
      unittest.equals(42.0),
    );
    checkUnnamed81(o.dataPoints!);
  }
  buildCounterProgressTimeseries--;
}

core.int buildCounterPubSubIODetails = 0;
api.PubSubIODetails buildPubSubIODetails() {
  final o = api.PubSubIODetails();
  buildCounterPubSubIODetails++;
  if (buildCounterPubSubIODetails < 3) {
    o.subscription = 'foo';
    o.topic = 'foo';
  }
  buildCounterPubSubIODetails--;
  return o;
}

void checkPubSubIODetails(api.PubSubIODetails o) {
  buildCounterPubSubIODetails++;
  if (buildCounterPubSubIODetails < 3) {
    unittest.expect(
      o.subscription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.topic!,
      unittest.equals('foo'),
    );
  }
  buildCounterPubSubIODetails--;
}

core.int buildCounterPubsubLocation = 0;
api.PubsubLocation buildPubsubLocation() {
  final o = api.PubsubLocation();
  buildCounterPubsubLocation++;
  if (buildCounterPubsubLocation < 3) {
    o.dropLateData = true;
    o.dynamicDestinations = true;
    o.idLabel = 'foo';
    o.subscription = 'foo';
    o.timestampLabel = 'foo';
    o.topic = 'foo';
    o.trackingSubscription = 'foo';
    o.withAttributes = true;
  }
  buildCounterPubsubLocation--;
  return o;
}

void checkPubsubLocation(api.PubsubLocation o) {
  buildCounterPubsubLocation++;
  if (buildCounterPubsubLocation < 3) {
    unittest.expect(o.dropLateData!, unittest.isTrue);
    unittest.expect(o.dynamicDestinations!, unittest.isTrue);
    unittest.expect(
      o.idLabel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subscription!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.timestampLabel!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.topic!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.trackingSubscription!,
      unittest.equals('foo'),
    );
    unittest.expect(o.withAttributes!, unittest.isTrue);
  }
  buildCounterPubsubLocation--;
}

core.int buildCounterPubsubSnapshotMetadata = 0;
api.PubsubSnapshotMetadata buildPubsubSnapshotMetadata() {
  final o = api.PubsubSnapshotMetadata();
  buildCounterPubsubSnapshotMetadata++;
  if (buildCounterPubsubSnapshotMetadata < 3) {
    o.expireTime = 'foo';
    o.snapshotName = 'foo';
    o.topicName = 'foo';
  }
  buildCounterPubsubSnapshotMetadata--;
  return o;
}

void checkPubsubSnapshotMetadata(api.PubsubSnapshotMetadata o) {
  buildCounterPubsubSnapshotMetadata++;
  if (buildCounterPubsubSnapshotMetadata < 3) {
    unittest.expect(
      o.expireTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.snapshotName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.topicName!,
      unittest.equals('foo'),
    );
  }
  buildCounterPubsubSnapshotMetadata--;
}

core.int buildCounterReadInstruction = 0;
api.ReadInstruction buildReadInstruction() {
  final o = api.ReadInstruction();
  buildCounterReadInstruction++;
  if (buildCounterReadInstruction < 3) {
    o.source = buildSource();
  }
  buildCounterReadInstruction--;
  return o;
}

void checkReadInstruction(api.ReadInstruction o) {
  buildCounterReadInstruction++;
  if (buildCounterReadInstruction < 3) {
    checkSource(o.source!);
  }
  buildCounterReadInstruction--;
}

core.Map<core.String, core.Object?> buildUnnamed82() => {
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

void checkUnnamed82(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted31 = (o['x']!) as core.Map;
  unittest.expect(casted31, unittest.hasLength(3));
  unittest.expect(
    casted31['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted31['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted31['string'],
    unittest.equals('foo'),
  );
  var casted32 = (o['y']!) as core.Map;
  unittest.expect(casted32, unittest.hasLength(3));
  unittest.expect(
    casted32['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted32['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted32['string'],
    unittest.equals('foo'),
  );
}

core.List<api.WorkItemStatus> buildUnnamed83() => [
      buildWorkItemStatus(),
      buildWorkItemStatus(),
    ];

void checkUnnamed83(core.List<api.WorkItemStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkItemStatus(o[0]);
  checkWorkItemStatus(o[1]);
}

core.int buildCounterReportWorkItemStatusRequest = 0;
api.ReportWorkItemStatusRequest buildReportWorkItemStatusRequest() {
  final o = api.ReportWorkItemStatusRequest();
  buildCounterReportWorkItemStatusRequest++;
  if (buildCounterReportWorkItemStatusRequest < 3) {
    o.currentWorkerTime = 'foo';
    o.location = 'foo';
    o.projectNumber = 'foo';
    o.unifiedWorkerRequest = buildUnnamed82();
    o.workItemStatuses = buildUnnamed83();
    o.workerId = 'foo';
  }
  buildCounterReportWorkItemStatusRequest--;
  return o;
}

void checkReportWorkItemStatusRequest(api.ReportWorkItemStatusRequest o) {
  buildCounterReportWorkItemStatusRequest++;
  if (buildCounterReportWorkItemStatusRequest < 3) {
    unittest.expect(
      o.currentWorkerTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectNumber!,
      unittest.equals('foo'),
    );
    checkUnnamed82(o.unifiedWorkerRequest!);
    checkUnnamed83(o.workItemStatuses!);
    unittest.expect(
      o.workerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterReportWorkItemStatusRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed84() => {
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

void checkUnnamed84(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted33 = (o['x']!) as core.Map;
  unittest.expect(casted33, unittest.hasLength(3));
  unittest.expect(
    casted33['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted33['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted33['string'],
    unittest.equals('foo'),
  );
  var casted34 = (o['y']!) as core.Map;
  unittest.expect(casted34, unittest.hasLength(3));
  unittest.expect(
    casted34['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted34['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted34['string'],
    unittest.equals('foo'),
  );
}

core.List<api.WorkItemServiceState> buildUnnamed85() => [
      buildWorkItemServiceState(),
      buildWorkItemServiceState(),
    ];

void checkUnnamed85(core.List<api.WorkItemServiceState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkItemServiceState(o[0]);
  checkWorkItemServiceState(o[1]);
}

core.int buildCounterReportWorkItemStatusResponse = 0;
api.ReportWorkItemStatusResponse buildReportWorkItemStatusResponse() {
  final o = api.ReportWorkItemStatusResponse();
  buildCounterReportWorkItemStatusResponse++;
  if (buildCounterReportWorkItemStatusResponse < 3) {
    o.unifiedWorkerResponse = buildUnnamed84();
    o.workItemServiceStates = buildUnnamed85();
  }
  buildCounterReportWorkItemStatusResponse--;
  return o;
}

void checkReportWorkItemStatusResponse(api.ReportWorkItemStatusResponse o) {
  buildCounterReportWorkItemStatusResponse++;
  if (buildCounterReportWorkItemStatusResponse < 3) {
    checkUnnamed84(o.unifiedWorkerResponse!);
    checkUnnamed85(o.workItemServiceStates!);
  }
  buildCounterReportWorkItemStatusResponse--;
}

core.int buildCounterReportedParallelism = 0;
api.ReportedParallelism buildReportedParallelism() {
  final o = api.ReportedParallelism();
  buildCounterReportedParallelism++;
  if (buildCounterReportedParallelism < 3) {
    o.isInfinite = true;
    o.value = 42.0;
  }
  buildCounterReportedParallelism--;
  return o;
}

void checkReportedParallelism(api.ReportedParallelism o) {
  buildCounterReportedParallelism++;
  if (buildCounterReportedParallelism < 3) {
    unittest.expect(o.isInfinite!, unittest.isTrue);
    unittest.expect(
      o.value!,
      unittest.equals(42.0),
    );
  }
  buildCounterReportedParallelism--;
}

core.Map<core.String, api.ResourceUtilizationReport> buildUnnamed86() => {
      'x': buildResourceUtilizationReport(),
      'y': buildResourceUtilizationReport(),
    };

void checkUnnamed86(core.Map<core.String, api.ResourceUtilizationReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceUtilizationReport(o['x']!);
  checkResourceUtilizationReport(o['y']!);
}

core.List<api.CPUTime> buildUnnamed87() => [
      buildCPUTime(),
      buildCPUTime(),
    ];

void checkUnnamed87(core.List<api.CPUTime> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCPUTime(o[0]);
  checkCPUTime(o[1]);
}

core.List<api.GPUUsage> buildUnnamed88() => [
      buildGPUUsage(),
      buildGPUUsage(),
    ];

void checkUnnamed88(core.List<api.GPUUsage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGPUUsage(o[0]);
  checkGPUUsage(o[1]);
}

core.List<api.MemInfo> buildUnnamed89() => [
      buildMemInfo(),
      buildMemInfo(),
    ];

void checkUnnamed89(core.List<api.MemInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMemInfo(o[0]);
  checkMemInfo(o[1]);
}

core.int buildCounterResourceUtilizationReport = 0;
api.ResourceUtilizationReport buildResourceUtilizationReport() {
  final o = api.ResourceUtilizationReport();
  buildCounterResourceUtilizationReport++;
  if (buildCounterResourceUtilizationReport < 3) {
    o.containers = buildUnnamed86();
    o.cpuTime = buildUnnamed87();
    o.gpuUsage = buildUnnamed88();
    o.memoryInfo = buildUnnamed89();
  }
  buildCounterResourceUtilizationReport--;
  return o;
}

void checkResourceUtilizationReport(api.ResourceUtilizationReport o) {
  buildCounterResourceUtilizationReport++;
  if (buildCounterResourceUtilizationReport < 3) {
    checkUnnamed86(o.containers!);
    checkUnnamed87(o.cpuTime!);
    checkUnnamed88(o.gpuUsage!);
    checkUnnamed89(o.memoryInfo!);
  }
  buildCounterResourceUtilizationReport--;
}

core.int buildCounterResourceUtilizationReportResponse = 0;
api.ResourceUtilizationReportResponse buildResourceUtilizationReportResponse() {
  final o = api.ResourceUtilizationReportResponse();
  buildCounterResourceUtilizationReportResponse++;
  if (buildCounterResourceUtilizationReportResponse < 3) {}
  buildCounterResourceUtilizationReportResponse--;
  return o;
}

void checkResourceUtilizationReportResponse(
    api.ResourceUtilizationReportResponse o) {
  buildCounterResourceUtilizationReportResponse++;
  if (buildCounterResourceUtilizationReportResponse < 3) {}
  buildCounterResourceUtilizationReportResponse--;
}

core.List<core.String> buildUnnamed90() => [
      'foo',
      'foo',
    ];

void checkUnnamed90(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed91() => [
      'foo',
      'foo',
    ];

void checkUnnamed91(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed92() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed92(core.Map<core.String, core.String> o) {
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

core.int buildCounterRuntimeEnvironment = 0;
api.RuntimeEnvironment buildRuntimeEnvironment() {
  final o = api.RuntimeEnvironment();
  buildCounterRuntimeEnvironment++;
  if (buildCounterRuntimeEnvironment < 3) {
    o.additionalExperiments = buildUnnamed90();
    o.additionalPipelineOptions = buildUnnamed91();
    o.additionalUserLabels = buildUnnamed92();
    o.bypassTempDirValidation = true;
    o.diskSizeGb = 42;
    o.enableStreamingEngine = true;
    o.ipConfiguration = 'foo';
    o.kmsKeyName = 'foo';
    o.machineType = 'foo';
    o.maxWorkers = 42;
    o.network = 'foo';
    o.numWorkers = 42;
    o.serviceAccountEmail = 'foo';
    o.streamingMode = 'foo';
    o.subnetwork = 'foo';
    o.tempLocation = 'foo';
    o.workerRegion = 'foo';
    o.workerZone = 'foo';
    o.zone = 'foo';
  }
  buildCounterRuntimeEnvironment--;
  return o;
}

void checkRuntimeEnvironment(api.RuntimeEnvironment o) {
  buildCounterRuntimeEnvironment++;
  if (buildCounterRuntimeEnvironment < 3) {
    checkUnnamed90(o.additionalExperiments!);
    checkUnnamed91(o.additionalPipelineOptions!);
    checkUnnamed92(o.additionalUserLabels!);
    unittest.expect(o.bypassTempDirValidation!, unittest.isTrue);
    unittest.expect(
      o.diskSizeGb!,
      unittest.equals(42),
    );
    unittest.expect(o.enableStreamingEngine!, unittest.isTrue);
    unittest.expect(
      o.ipConfiguration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kmsKeyName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxWorkers!,
      unittest.equals(42),
    );
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numWorkers!,
      unittest.equals(42),
    );
    unittest.expect(
      o.serviceAccountEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.streamingMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.subnetwork!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tempLocation!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workerRegion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workerZone!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterRuntimeEnvironment--;
}

core.List<api.ParameterMetadata> buildUnnamed93() => [
      buildParameterMetadata(),
      buildParameterMetadata(),
    ];

void checkUnnamed93(core.List<api.ParameterMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameterMetadata(o[0]);
  checkParameterMetadata(o[1]);
}

core.int buildCounterRuntimeMetadata = 0;
api.RuntimeMetadata buildRuntimeMetadata() {
  final o = api.RuntimeMetadata();
  buildCounterRuntimeMetadata++;
  if (buildCounterRuntimeMetadata < 3) {
    o.parameters = buildUnnamed93();
    o.sdkInfo = buildSDKInfo();
  }
  buildCounterRuntimeMetadata--;
  return o;
}

void checkRuntimeMetadata(api.RuntimeMetadata o) {
  buildCounterRuntimeMetadata++;
  if (buildCounterRuntimeMetadata < 3) {
    checkUnnamed93(o.parameters!);
    checkSDKInfo(o.sdkInfo!);
  }
  buildCounterRuntimeMetadata--;
}

core.int buildCounterRuntimeUpdatableParams = 0;
api.RuntimeUpdatableParams buildRuntimeUpdatableParams() {
  final o = api.RuntimeUpdatableParams();
  buildCounterRuntimeUpdatableParams++;
  if (buildCounterRuntimeUpdatableParams < 3) {
    o.maxNumWorkers = 42;
    o.minNumWorkers = 42;
    o.workerUtilizationHint = 42.0;
  }
  buildCounterRuntimeUpdatableParams--;
  return o;
}

void checkRuntimeUpdatableParams(api.RuntimeUpdatableParams o) {
  buildCounterRuntimeUpdatableParams++;
  if (buildCounterRuntimeUpdatableParams < 3) {
    unittest.expect(
      o.maxNumWorkers!,
      unittest.equals(42),
    );
    unittest.expect(
      o.minNumWorkers!,
      unittest.equals(42),
    );
    unittest.expect(
      o.workerUtilizationHint!,
      unittest.equals(42.0),
    );
  }
  buildCounterRuntimeUpdatableParams--;
}

core.int buildCounterSDKInfo = 0;
api.SDKInfo buildSDKInfo() {
  final o = api.SDKInfo();
  buildCounterSDKInfo++;
  if (buildCounterSDKInfo < 3) {
    o.language = 'foo';
    o.version = 'foo';
  }
  buildCounterSDKInfo--;
  return o;
}

void checkSDKInfo(api.SDKInfo o) {
  buildCounterSDKInfo++;
  if (buildCounterSDKInfo < 3) {
    unittest.expect(
      o.language!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
  }
  buildCounterSDKInfo--;
}

core.int buildCounterSdkBug = 0;
api.SdkBug buildSdkBug() {
  final o = api.SdkBug();
  buildCounterSdkBug++;
  if (buildCounterSdkBug < 3) {
    o.severity = 'foo';
    o.type = 'foo';
    o.uri = 'foo';
  }
  buildCounterSdkBug--;
  return o;
}

void checkSdkBug(api.SdkBug o) {
  buildCounterSdkBug++;
  if (buildCounterSdkBug < 3) {
    unittest.expect(
      o.severity!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.uri!,
      unittest.equals('foo'),
    );
  }
  buildCounterSdkBug--;
}

core.List<core.String> buildUnnamed94() => [
      'foo',
      'foo',
    ];

void checkUnnamed94(core.List<core.String> o) {
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

core.int buildCounterSdkHarnessContainerImage = 0;
api.SdkHarnessContainerImage buildSdkHarnessContainerImage() {
  final o = api.SdkHarnessContainerImage();
  buildCounterSdkHarnessContainerImage++;
  if (buildCounterSdkHarnessContainerImage < 3) {
    o.capabilities = buildUnnamed94();
    o.containerImage = 'foo';
    o.environmentId = 'foo';
    o.useSingleCorePerContainer = true;
  }
  buildCounterSdkHarnessContainerImage--;
  return o;
}

void checkSdkHarnessContainerImage(api.SdkHarnessContainerImage o) {
  buildCounterSdkHarnessContainerImage++;
  if (buildCounterSdkHarnessContainerImage < 3) {
    checkUnnamed94(o.capabilities!);
    unittest.expect(
      o.containerImage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.environmentId!,
      unittest.equals('foo'),
    );
    unittest.expect(o.useSingleCorePerContainer!, unittest.isTrue);
  }
  buildCounterSdkHarnessContainerImage--;
}

core.List<api.SdkBug> buildUnnamed95() => [
      buildSdkBug(),
      buildSdkBug(),
    ];

void checkUnnamed95(core.List<api.SdkBug> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSdkBug(o[0]);
  checkSdkBug(o[1]);
}

core.int buildCounterSdkVersion = 0;
api.SdkVersion buildSdkVersion() {
  final o = api.SdkVersion();
  buildCounterSdkVersion++;
  if (buildCounterSdkVersion < 3) {
    o.bugs = buildUnnamed95();
    o.sdkSupportStatus = 'foo';
    o.version = 'foo';
    o.versionDisplayName = 'foo';
  }
  buildCounterSdkVersion--;
  return o;
}

void checkSdkVersion(api.SdkVersion o) {
  buildCounterSdkVersion++;
  if (buildCounterSdkVersion < 3) {
    checkUnnamed95(o.bugs!);
    unittest.expect(
      o.sdkSupportStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.version!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.versionDisplayName!,
      unittest.equals('foo'),
    );
  }
  buildCounterSdkVersion--;
}

core.int buildCounterSendDebugCaptureRequest = 0;
api.SendDebugCaptureRequest buildSendDebugCaptureRequest() {
  final o = api.SendDebugCaptureRequest();
  buildCounterSendDebugCaptureRequest++;
  if (buildCounterSendDebugCaptureRequest < 3) {
    o.componentId = 'foo';
    o.data = 'foo';
    o.dataFormat = 'foo';
    o.location = 'foo';
    o.workerId = 'foo';
  }
  buildCounterSendDebugCaptureRequest--;
  return o;
}

void checkSendDebugCaptureRequest(api.SendDebugCaptureRequest o) {
  buildCounterSendDebugCaptureRequest++;
  if (buildCounterSendDebugCaptureRequest < 3) {
    unittest.expect(
      o.componentId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.data!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.dataFormat!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSendDebugCaptureRequest--;
}

core.int buildCounterSendDebugCaptureResponse = 0;
api.SendDebugCaptureResponse buildSendDebugCaptureResponse() {
  final o = api.SendDebugCaptureResponse();
  buildCounterSendDebugCaptureResponse++;
  if (buildCounterSendDebugCaptureResponse < 3) {}
  buildCounterSendDebugCaptureResponse--;
  return o;
}

void checkSendDebugCaptureResponse(api.SendDebugCaptureResponse o) {
  buildCounterSendDebugCaptureResponse++;
  if (buildCounterSendDebugCaptureResponse < 3) {}
  buildCounterSendDebugCaptureResponse--;
}

core.List<api.WorkerMessage> buildUnnamed96() => [
      buildWorkerMessage(),
      buildWorkerMessage(),
    ];

void checkUnnamed96(core.List<api.WorkerMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkerMessage(o[0]);
  checkWorkerMessage(o[1]);
}

core.int buildCounterSendWorkerMessagesRequest = 0;
api.SendWorkerMessagesRequest buildSendWorkerMessagesRequest() {
  final o = api.SendWorkerMessagesRequest();
  buildCounterSendWorkerMessagesRequest++;
  if (buildCounterSendWorkerMessagesRequest < 3) {
    o.location = 'foo';
    o.workerMessages = buildUnnamed96();
  }
  buildCounterSendWorkerMessagesRequest--;
  return o;
}

void checkSendWorkerMessagesRequest(api.SendWorkerMessagesRequest o) {
  buildCounterSendWorkerMessagesRequest++;
  if (buildCounterSendWorkerMessagesRequest < 3) {
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    checkUnnamed96(o.workerMessages!);
  }
  buildCounterSendWorkerMessagesRequest--;
}

core.List<api.WorkerMessageResponse> buildUnnamed97() => [
      buildWorkerMessageResponse(),
      buildWorkerMessageResponse(),
    ];

void checkUnnamed97(core.List<api.WorkerMessageResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkerMessageResponse(o[0]);
  checkWorkerMessageResponse(o[1]);
}

core.int buildCounterSendWorkerMessagesResponse = 0;
api.SendWorkerMessagesResponse buildSendWorkerMessagesResponse() {
  final o = api.SendWorkerMessagesResponse();
  buildCounterSendWorkerMessagesResponse++;
  if (buildCounterSendWorkerMessagesResponse < 3) {
    o.workerMessageResponses = buildUnnamed97();
  }
  buildCounterSendWorkerMessagesResponse--;
  return o;
}

void checkSendWorkerMessagesResponse(api.SendWorkerMessagesResponse o) {
  buildCounterSendWorkerMessagesResponse++;
  if (buildCounterSendWorkerMessagesResponse < 3) {
    checkUnnamed97(o.workerMessageResponses!);
  }
  buildCounterSendWorkerMessagesResponse--;
}

core.List<api.SideInputInfo> buildUnnamed98() => [
      buildSideInputInfo(),
      buildSideInputInfo(),
    ];

void checkUnnamed98(core.List<api.SideInputInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSideInputInfo(o[0]);
  checkSideInputInfo(o[1]);
}

core.List<api.SeqMapTaskOutputInfo> buildUnnamed99() => [
      buildSeqMapTaskOutputInfo(),
      buildSeqMapTaskOutputInfo(),
    ];

void checkUnnamed99(core.List<api.SeqMapTaskOutputInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSeqMapTaskOutputInfo(o[0]);
  checkSeqMapTaskOutputInfo(o[1]);
}

core.Map<core.String, core.Object?> buildUnnamed100() => {
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

void checkUnnamed100(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted35 = (o['x']!) as core.Map;
  unittest.expect(casted35, unittest.hasLength(3));
  unittest.expect(
    casted35['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted35['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted35['string'],
    unittest.equals('foo'),
  );
  var casted36 = (o['y']!) as core.Map;
  unittest.expect(casted36, unittest.hasLength(3));
  unittest.expect(
    casted36['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted36['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted36['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterSeqMapTask = 0;
api.SeqMapTask buildSeqMapTask() {
  final o = api.SeqMapTask();
  buildCounterSeqMapTask++;
  if (buildCounterSeqMapTask < 3) {
    o.inputs = buildUnnamed98();
    o.name = 'foo';
    o.outputInfos = buildUnnamed99();
    o.stageName = 'foo';
    o.systemName = 'foo';
    o.userFn = buildUnnamed100();
  }
  buildCounterSeqMapTask--;
  return o;
}

void checkSeqMapTask(api.SeqMapTask o) {
  buildCounterSeqMapTask++;
  if (buildCounterSeqMapTask < 3) {
    checkUnnamed98(o.inputs!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed99(o.outputInfos!);
    unittest.expect(
      o.stageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.systemName!,
      unittest.equals('foo'),
    );
    checkUnnamed100(o.userFn!);
  }
  buildCounterSeqMapTask--;
}

core.int buildCounterSeqMapTaskOutputInfo = 0;
api.SeqMapTaskOutputInfo buildSeqMapTaskOutputInfo() {
  final o = api.SeqMapTaskOutputInfo();
  buildCounterSeqMapTaskOutputInfo++;
  if (buildCounterSeqMapTaskOutputInfo < 3) {
    o.sink = buildSink();
    o.tag = 'foo';
  }
  buildCounterSeqMapTaskOutputInfo--;
  return o;
}

void checkSeqMapTaskOutputInfo(api.SeqMapTaskOutputInfo o) {
  buildCounterSeqMapTaskOutputInfo++;
  if (buildCounterSeqMapTaskOutputInfo < 3) {
    checkSink(o.sink!);
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
  }
  buildCounterSeqMapTaskOutputInfo--;
}

core.List<core.String> buildUnnamed101() => [
      'foo',
      'foo',
    ];

void checkUnnamed101(core.List<core.String> o) {
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

core.int buildCounterServiceResources = 0;
api.ServiceResources buildServiceResources() {
  final o = api.ServiceResources();
  buildCounterServiceResources++;
  if (buildCounterServiceResources < 3) {
    o.zones = buildUnnamed101();
  }
  buildCounterServiceResources--;
  return o;
}

void checkServiceResources(api.ServiceResources o) {
  buildCounterServiceResources++;
  if (buildCounterServiceResources < 3) {
    checkUnnamed101(o.zones!);
  }
  buildCounterServiceResources--;
}

core.int buildCounterShellTask = 0;
api.ShellTask buildShellTask() {
  final o = api.ShellTask();
  buildCounterShellTask++;
  if (buildCounterShellTask < 3) {
    o.command = 'foo';
    o.exitCode = 42;
  }
  buildCounterShellTask--;
  return o;
}

void checkShellTask(api.ShellTask o) {
  buildCounterShellTask++;
  if (buildCounterShellTask < 3) {
    unittest.expect(
      o.command!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.exitCode!,
      unittest.equals(42),
    );
  }
  buildCounterShellTask--;
}

core.Map<core.String, core.Object?> buildUnnamed102() => {
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

void checkUnnamed102(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted37 = (o['x']!) as core.Map;
  unittest.expect(casted37, unittest.hasLength(3));
  unittest.expect(
    casted37['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted37['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted37['string'],
    unittest.equals('foo'),
  );
  var casted38 = (o['y']!) as core.Map;
  unittest.expect(casted38, unittest.hasLength(3));
  unittest.expect(
    casted38['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted38['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted38['string'],
    unittest.equals('foo'),
  );
}

core.List<api.Source> buildUnnamed103() => [
      buildSource(),
      buildSource(),
    ];

void checkUnnamed103(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0]);
  checkSource(o[1]);
}

core.int buildCounterSideInputInfo = 0;
api.SideInputInfo buildSideInputInfo() {
  final o = api.SideInputInfo();
  buildCounterSideInputInfo++;
  if (buildCounterSideInputInfo < 3) {
    o.kind = buildUnnamed102();
    o.sources = buildUnnamed103();
    o.tag = 'foo';
  }
  buildCounterSideInputInfo--;
  return o;
}

void checkSideInputInfo(api.SideInputInfo o) {
  buildCounterSideInputInfo++;
  if (buildCounterSideInputInfo < 3) {
    checkUnnamed102(o.kind!);
    checkUnnamed103(o.sources!);
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
  }
  buildCounterSideInputInfo--;
}

core.Map<core.String, core.Object?> buildUnnamed104() => {
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

void checkUnnamed104(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted39 = (o['x']!) as core.Map;
  unittest.expect(casted39, unittest.hasLength(3));
  unittest.expect(
    casted39['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted39['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted39['string'],
    unittest.equals('foo'),
  );
  var casted40 = (o['y']!) as core.Map;
  unittest.expect(casted40, unittest.hasLength(3));
  unittest.expect(
    casted40['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted40['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted40['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object?> buildUnnamed105() => {
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

void checkUnnamed105(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted41 = (o['x']!) as core.Map;
  unittest.expect(casted41, unittest.hasLength(3));
  unittest.expect(
    casted41['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted41['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted41['string'],
    unittest.equals('foo'),
  );
  var casted42 = (o['y']!) as core.Map;
  unittest.expect(casted42, unittest.hasLength(3));
  unittest.expect(
    casted42['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted42['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted42['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterSink = 0;
api.Sink buildSink() {
  final o = api.Sink();
  buildCounterSink++;
  if (buildCounterSink < 3) {
    o.codec = buildUnnamed104();
    o.spec = buildUnnamed105();
  }
  buildCounterSink--;
  return o;
}

void checkSink(api.Sink o) {
  buildCounterSink++;
  if (buildCounterSink < 3) {
    checkUnnamed104(o.codec!);
    checkUnnamed105(o.spec!);
  }
  buildCounterSink--;
}

core.List<api.PubsubSnapshotMetadata> buildUnnamed106() => [
      buildPubsubSnapshotMetadata(),
      buildPubsubSnapshotMetadata(),
    ];

void checkUnnamed106(core.List<api.PubsubSnapshotMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPubsubSnapshotMetadata(o[0]);
  checkPubsubSnapshotMetadata(o[1]);
}

core.int buildCounterSnapshot = 0;
api.Snapshot buildSnapshot() {
  final o = api.Snapshot();
  buildCounterSnapshot++;
  if (buildCounterSnapshot < 3) {
    o.creationTime = 'foo';
    o.description = 'foo';
    o.diskSizeBytes = 'foo';
    o.id = 'foo';
    o.projectId = 'foo';
    o.pubsubMetadata = buildUnnamed106();
    o.region = 'foo';
    o.sourceJobId = 'foo';
    o.state = 'foo';
    o.ttl = 'foo';
  }
  buildCounterSnapshot--;
  return o;
}

void checkSnapshot(api.Snapshot o) {
  buildCounterSnapshot++;
  if (buildCounterSnapshot < 3) {
    unittest.expect(
      o.creationTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.diskSizeBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    checkUnnamed106(o.pubsubMetadata!);
    unittest.expect(
      o.region!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sourceJobId!,
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
  }
  buildCounterSnapshot--;
}

core.int buildCounterSnapshotJobRequest = 0;
api.SnapshotJobRequest buildSnapshotJobRequest() {
  final o = api.SnapshotJobRequest();
  buildCounterSnapshotJobRequest++;
  if (buildCounterSnapshotJobRequest < 3) {
    o.description = 'foo';
    o.location = 'foo';
    o.snapshotSources = true;
    o.ttl = 'foo';
  }
  buildCounterSnapshotJobRequest--;
  return o;
}

void checkSnapshotJobRequest(api.SnapshotJobRequest o) {
  buildCounterSnapshotJobRequest++;
  if (buildCounterSnapshotJobRequest < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.location!,
      unittest.equals('foo'),
    );
    unittest.expect(o.snapshotSources!, unittest.isTrue);
    unittest.expect(
      o.ttl!,
      unittest.equals('foo'),
    );
  }
  buildCounterSnapshotJobRequest--;
}

core.Map<core.String, core.Object?> buildUnnamed107() => {
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

void checkUnnamed107(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted43 = (o['x']!) as core.Map;
  unittest.expect(casted43, unittest.hasLength(3));
  unittest.expect(
    casted43['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted43['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted43['string'],
    unittest.equals('foo'),
  );
  var casted44 = (o['y']!) as core.Map;
  unittest.expect(casted44, unittest.hasLength(3));
  unittest.expect(
    casted44['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted44['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted44['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed108() => [
      buildUnnamed107(),
      buildUnnamed107(),
    ];

void checkUnnamed108(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed107(o[0]);
  checkUnnamed107(o[1]);
}

core.Map<core.String, core.Object?> buildUnnamed109() => {
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

void checkUnnamed109(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted45 = (o['x']!) as core.Map;
  unittest.expect(casted45, unittest.hasLength(3));
  unittest.expect(
    casted45['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted45['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted45['string'],
    unittest.equals('foo'),
  );
  var casted46 = (o['y']!) as core.Map;
  unittest.expect(casted46, unittest.hasLength(3));
  unittest.expect(
    casted46['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted46['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted46['string'],
    unittest.equals('foo'),
  );
}

core.Map<core.String, core.Object?> buildUnnamed110() => {
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

void checkUnnamed110(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted47 = (o['x']!) as core.Map;
  unittest.expect(casted47, unittest.hasLength(3));
  unittest.expect(
    casted47['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted47['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted47['string'],
    unittest.equals('foo'),
  );
  var casted48 = (o['y']!) as core.Map;
  unittest.expect(casted48, unittest.hasLength(3));
  unittest.expect(
    casted48['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted48['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted48['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterSource = 0;
api.Source buildSource() {
  final o = api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.baseSpecs = buildUnnamed108();
    o.codec = buildUnnamed109();
    o.doesNotNeedSplitting = true;
    o.metadata = buildSourceMetadata();
    o.spec = buildUnnamed110();
  }
  buildCounterSource--;
  return o;
}

void checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    checkUnnamed108(o.baseSpecs!);
    checkUnnamed109(o.codec!);
    unittest.expect(o.doesNotNeedSplitting!, unittest.isTrue);
    checkSourceMetadata(o.metadata!);
    checkUnnamed110(o.spec!);
  }
  buildCounterSource--;
}

core.int buildCounterSourceFork = 0;
api.SourceFork buildSourceFork() {
  final o = api.SourceFork();
  buildCounterSourceFork++;
  if (buildCounterSourceFork < 3) {
    o.primary = buildSourceSplitShard();
    o.primarySource = buildDerivedSource();
    o.residual = buildSourceSplitShard();
    o.residualSource = buildDerivedSource();
  }
  buildCounterSourceFork--;
  return o;
}

void checkSourceFork(api.SourceFork o) {
  buildCounterSourceFork++;
  if (buildCounterSourceFork < 3) {
    checkSourceSplitShard(o.primary!);
    checkDerivedSource(o.primarySource!);
    checkSourceSplitShard(o.residual!);
    checkDerivedSource(o.residualSource!);
  }
  buildCounterSourceFork--;
}

core.int buildCounterSourceGetMetadataRequest = 0;
api.SourceGetMetadataRequest buildSourceGetMetadataRequest() {
  final o = api.SourceGetMetadataRequest();
  buildCounterSourceGetMetadataRequest++;
  if (buildCounterSourceGetMetadataRequest < 3) {
    o.source = buildSource();
  }
  buildCounterSourceGetMetadataRequest--;
  return o;
}

void checkSourceGetMetadataRequest(api.SourceGetMetadataRequest o) {
  buildCounterSourceGetMetadataRequest++;
  if (buildCounterSourceGetMetadataRequest < 3) {
    checkSource(o.source!);
  }
  buildCounterSourceGetMetadataRequest--;
}

core.int buildCounterSourceGetMetadataResponse = 0;
api.SourceGetMetadataResponse buildSourceGetMetadataResponse() {
  final o = api.SourceGetMetadataResponse();
  buildCounterSourceGetMetadataResponse++;
  if (buildCounterSourceGetMetadataResponse < 3) {
    o.metadata = buildSourceMetadata();
  }
  buildCounterSourceGetMetadataResponse--;
  return o;
}

void checkSourceGetMetadataResponse(api.SourceGetMetadataResponse o) {
  buildCounterSourceGetMetadataResponse++;
  if (buildCounterSourceGetMetadataResponse < 3) {
    checkSourceMetadata(o.metadata!);
  }
  buildCounterSourceGetMetadataResponse--;
}

core.int buildCounterSourceMetadata = 0;
api.SourceMetadata buildSourceMetadata() {
  final o = api.SourceMetadata();
  buildCounterSourceMetadata++;
  if (buildCounterSourceMetadata < 3) {
    o.estimatedSizeBytes = 'foo';
    o.infinite = true;
    o.producesSortedKeys = true;
  }
  buildCounterSourceMetadata--;
  return o;
}

void checkSourceMetadata(api.SourceMetadata o) {
  buildCounterSourceMetadata++;
  if (buildCounterSourceMetadata < 3) {
    unittest.expect(
      o.estimatedSizeBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(o.infinite!, unittest.isTrue);
    unittest.expect(o.producesSortedKeys!, unittest.isTrue);
  }
  buildCounterSourceMetadata--;
}

core.int buildCounterSourceOperationRequest = 0;
api.SourceOperationRequest buildSourceOperationRequest() {
  final o = api.SourceOperationRequest();
  buildCounterSourceOperationRequest++;
  if (buildCounterSourceOperationRequest < 3) {
    o.getMetadata = buildSourceGetMetadataRequest();
    o.name = 'foo';
    o.originalName = 'foo';
    o.split = buildSourceSplitRequest();
    o.stageName = 'foo';
    o.systemName = 'foo';
  }
  buildCounterSourceOperationRequest--;
  return o;
}

void checkSourceOperationRequest(api.SourceOperationRequest o) {
  buildCounterSourceOperationRequest++;
  if (buildCounterSourceOperationRequest < 3) {
    checkSourceGetMetadataRequest(o.getMetadata!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.originalName!,
      unittest.equals('foo'),
    );
    checkSourceSplitRequest(o.split!);
    unittest.expect(
      o.stageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.systemName!,
      unittest.equals('foo'),
    );
  }
  buildCounterSourceOperationRequest--;
}

core.int buildCounterSourceOperationResponse = 0;
api.SourceOperationResponse buildSourceOperationResponse() {
  final o = api.SourceOperationResponse();
  buildCounterSourceOperationResponse++;
  if (buildCounterSourceOperationResponse < 3) {
    o.getMetadata = buildSourceGetMetadataResponse();
    o.split = buildSourceSplitResponse();
  }
  buildCounterSourceOperationResponse--;
  return o;
}

void checkSourceOperationResponse(api.SourceOperationResponse o) {
  buildCounterSourceOperationResponse++;
  if (buildCounterSourceOperationResponse < 3) {
    checkSourceGetMetadataResponse(o.getMetadata!);
    checkSourceSplitResponse(o.split!);
  }
  buildCounterSourceOperationResponse--;
}

core.int buildCounterSourceSplitOptions = 0;
api.SourceSplitOptions buildSourceSplitOptions() {
  final o = api.SourceSplitOptions();
  buildCounterSourceSplitOptions++;
  if (buildCounterSourceSplitOptions < 3) {
    o.desiredBundleSizeBytes = 'foo';
    o.desiredShardSizeBytes = 'foo';
  }
  buildCounterSourceSplitOptions--;
  return o;
}

void checkSourceSplitOptions(api.SourceSplitOptions o) {
  buildCounterSourceSplitOptions++;
  if (buildCounterSourceSplitOptions < 3) {
    unittest.expect(
      o.desiredBundleSizeBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.desiredShardSizeBytes!,
      unittest.equals('foo'),
    );
  }
  buildCounterSourceSplitOptions--;
}

core.int buildCounterSourceSplitRequest = 0;
api.SourceSplitRequest buildSourceSplitRequest() {
  final o = api.SourceSplitRequest();
  buildCounterSourceSplitRequest++;
  if (buildCounterSourceSplitRequest < 3) {
    o.options = buildSourceSplitOptions();
    o.source = buildSource();
  }
  buildCounterSourceSplitRequest--;
  return o;
}

void checkSourceSplitRequest(api.SourceSplitRequest o) {
  buildCounterSourceSplitRequest++;
  if (buildCounterSourceSplitRequest < 3) {
    checkSourceSplitOptions(o.options!);
    checkSource(o.source!);
  }
  buildCounterSourceSplitRequest--;
}

core.List<api.DerivedSource> buildUnnamed111() => [
      buildDerivedSource(),
      buildDerivedSource(),
    ];

void checkUnnamed111(core.List<api.DerivedSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDerivedSource(o[0]);
  checkDerivedSource(o[1]);
}

core.List<api.SourceSplitShard> buildUnnamed112() => [
      buildSourceSplitShard(),
      buildSourceSplitShard(),
    ];

void checkUnnamed112(core.List<api.SourceSplitShard> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSourceSplitShard(o[0]);
  checkSourceSplitShard(o[1]);
}

core.int buildCounterSourceSplitResponse = 0;
api.SourceSplitResponse buildSourceSplitResponse() {
  final o = api.SourceSplitResponse();
  buildCounterSourceSplitResponse++;
  if (buildCounterSourceSplitResponse < 3) {
    o.bundles = buildUnnamed111();
    o.outcome = 'foo';
    o.shards = buildUnnamed112();
  }
  buildCounterSourceSplitResponse--;
  return o;
}

void checkSourceSplitResponse(api.SourceSplitResponse o) {
  buildCounterSourceSplitResponse++;
  if (buildCounterSourceSplitResponse < 3) {
    checkUnnamed111(o.bundles!);
    unittest.expect(
      o.outcome!,
      unittest.equals('foo'),
    );
    checkUnnamed112(o.shards!);
  }
  buildCounterSourceSplitResponse--;
}

core.int buildCounterSourceSplitShard = 0;
api.SourceSplitShard buildSourceSplitShard() {
  final o = api.SourceSplitShard();
  buildCounterSourceSplitShard++;
  if (buildCounterSourceSplitShard < 3) {
    o.derivationMode = 'foo';
    o.source = buildSource();
  }
  buildCounterSourceSplitShard--;
  return o;
}

void checkSourceSplitShard(api.SourceSplitShard o) {
  buildCounterSourceSplitShard++;
  if (buildCounterSourceSplitShard < 3) {
    unittest.expect(
      o.derivationMode!,
      unittest.equals('foo'),
    );
    checkSource(o.source!);
  }
  buildCounterSourceSplitShard--;
}

core.int buildCounterSpannerIODetails = 0;
api.SpannerIODetails buildSpannerIODetails() {
  final o = api.SpannerIODetails();
  buildCounterSpannerIODetails++;
  if (buildCounterSpannerIODetails < 3) {
    o.databaseId = 'foo';
    o.instanceId = 'foo';
    o.projectId = 'foo';
  }
  buildCounterSpannerIODetails--;
  return o;
}

void checkSpannerIODetails(api.SpannerIODetails o) {
  buildCounterSpannerIODetails++;
  if (buildCounterSpannerIODetails < 3) {
    unittest.expect(
      o.databaseId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.instanceId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
  }
  buildCounterSpannerIODetails--;
}

core.int buildCounterSplitInt64 = 0;
api.SplitInt64 buildSplitInt64() {
  final o = api.SplitInt64();
  buildCounterSplitInt64++;
  if (buildCounterSplitInt64 < 3) {
    o.highBits = 42;
    o.lowBits = 42;
  }
  buildCounterSplitInt64--;
  return o;
}

void checkSplitInt64(api.SplitInt64 o) {
  buildCounterSplitInt64++;
  if (buildCounterSplitInt64 < 3) {
    unittest.expect(
      o.highBits!,
      unittest.equals(42),
    );
    unittest.expect(
      o.lowBits!,
      unittest.equals(42),
    );
  }
  buildCounterSplitInt64--;
}

core.List<api.WorkerDetails> buildUnnamed113() => [
      buildWorkerDetails(),
      buildWorkerDetails(),
    ];

void checkUnnamed113(core.List<api.WorkerDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkerDetails(o[0]);
  checkWorkerDetails(o[1]);
}

core.int buildCounterStageExecutionDetails = 0;
api.StageExecutionDetails buildStageExecutionDetails() {
  final o = api.StageExecutionDetails();
  buildCounterStageExecutionDetails++;
  if (buildCounterStageExecutionDetails < 3) {
    o.nextPageToken = 'foo';
    o.workers = buildUnnamed113();
  }
  buildCounterStageExecutionDetails--;
  return o;
}

void checkStageExecutionDetails(api.StageExecutionDetails o) {
  buildCounterStageExecutionDetails++;
  if (buildCounterStageExecutionDetails < 3) {
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
    checkUnnamed113(o.workers!);
  }
  buildCounterStageExecutionDetails--;
}

core.int buildCounterStageSource = 0;
api.StageSource buildStageSource() {
  final o = api.StageSource();
  buildCounterStageSource++;
  if (buildCounterStageSource < 3) {
    o.name = 'foo';
    o.originalTransformOrCollection = 'foo';
    o.sizeBytes = 'foo';
    o.userName = 'foo';
  }
  buildCounterStageSource--;
  return o;
}

void checkStageSource(api.StageSource o) {
  buildCounterStageSource++;
  if (buildCounterStageSource < 3) {
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.originalTransformOrCollection!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.sizeBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userName!,
      unittest.equals('foo'),
    );
  }
  buildCounterStageSource--;
}

core.List<api.MetricUpdate> buildUnnamed114() => [
      buildMetricUpdate(),
      buildMetricUpdate(),
    ];

void checkUnnamed114(core.List<api.MetricUpdate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricUpdate(o[0]);
  checkMetricUpdate(o[1]);
}

core.int buildCounterStageSummary = 0;
api.StageSummary buildStageSummary() {
  final o = api.StageSummary();
  buildCounterStageSummary++;
  if (buildCounterStageSummary < 3) {
    o.endTime = 'foo';
    o.metrics = buildUnnamed114();
    o.progress = buildProgressTimeseries();
    o.stageId = 'foo';
    o.startTime = 'foo';
    o.state = 'foo';
    o.stragglerSummary = buildStragglerSummary();
  }
  buildCounterStageSummary--;
  return o;
}

void checkStageSummary(api.StageSummary o) {
  buildCounterStageSummary++;
  if (buildCounterStageSummary < 3) {
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkUnnamed114(o.metrics!);
    checkProgressTimeseries(o.progress!);
    unittest.expect(
      o.stageId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkStragglerSummary(o.stragglerSummary!);
  }
  buildCounterStageSummary--;
}

core.int buildCounterStateFamilyConfig = 0;
api.StateFamilyConfig buildStateFamilyConfig() {
  final o = api.StateFamilyConfig();
  buildCounterStateFamilyConfig++;
  if (buildCounterStateFamilyConfig < 3) {
    o.isRead = true;
    o.stateFamily = 'foo';
  }
  buildCounterStateFamilyConfig--;
  return o;
}

void checkStateFamilyConfig(api.StateFamilyConfig o) {
  buildCounterStateFamilyConfig++;
  if (buildCounterStateFamilyConfig < 3) {
    unittest.expect(o.isRead!, unittest.isTrue);
    unittest.expect(
      o.stateFamily!,
      unittest.equals('foo'),
    );
  }
  buildCounterStateFamilyConfig--;
}

core.Map<core.String, core.Object?> buildUnnamed115() => {
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

void checkUnnamed115(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted49 = (o['x']!) as core.Map;
  unittest.expect(casted49, unittest.hasLength(3));
  unittest.expect(
    casted49['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted49['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted49['string'],
    unittest.equals('foo'),
  );
  var casted50 = (o['y']!) as core.Map;
  unittest.expect(casted50, unittest.hasLength(3));
  unittest.expect(
    casted50['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted50['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted50['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed116() => [
      buildUnnamed115(),
      buildUnnamed115(),
    ];

void checkUnnamed116(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed115(o[0]);
  checkUnnamed115(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed116();
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
    checkUnnamed116(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.Map<core.String, core.Object?> buildUnnamed117() => {
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

void checkUnnamed117(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted51 = (o['x']!) as core.Map;
  unittest.expect(casted51, unittest.hasLength(3));
  unittest.expect(
    casted51['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted51['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted51['string'],
    unittest.equals('foo'),
  );
  var casted52 = (o['y']!) as core.Map;
  unittest.expect(casted52, unittest.hasLength(3));
  unittest.expect(
    casted52['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted52['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted52['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterStep = 0;
api.Step buildStep() {
  final o = api.Step();
  buildCounterStep++;
  if (buildCounterStep < 3) {
    o.kind = 'foo';
    o.name = 'foo';
    o.properties = buildUnnamed117();
  }
  buildCounterStep--;
  return o;
}

void checkStep(api.Step o) {
  buildCounterStep++;
  if (buildCounterStep < 3) {
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed117(o.properties!);
  }
  buildCounterStep--;
}

core.int buildCounterStraggler = 0;
api.Straggler buildStraggler() {
  final o = api.Straggler();
  buildCounterStraggler++;
  if (buildCounterStraggler < 3) {
    o.batchStraggler = buildStragglerInfo();
    o.streamingStraggler = buildStreamingStragglerInfo();
  }
  buildCounterStraggler--;
  return o;
}

void checkStraggler(api.Straggler o) {
  buildCounterStraggler++;
  if (buildCounterStraggler < 3) {
    checkStragglerInfo(o.batchStraggler!);
    checkStreamingStragglerInfo(o.streamingStraggler!);
  }
  buildCounterStraggler--;
}

core.int buildCounterStragglerDebuggingInfo = 0;
api.StragglerDebuggingInfo buildStragglerDebuggingInfo() {
  final o = api.StragglerDebuggingInfo();
  buildCounterStragglerDebuggingInfo++;
  if (buildCounterStragglerDebuggingInfo < 3) {
    o.hotKey = buildHotKeyDebuggingInfo();
  }
  buildCounterStragglerDebuggingInfo--;
  return o;
}

void checkStragglerDebuggingInfo(api.StragglerDebuggingInfo o) {
  buildCounterStragglerDebuggingInfo++;
  if (buildCounterStragglerDebuggingInfo < 3) {
    checkHotKeyDebuggingInfo(o.hotKey!);
  }
  buildCounterStragglerDebuggingInfo--;
}

core.Map<core.String, api.StragglerDebuggingInfo> buildUnnamed118() => {
      'x': buildStragglerDebuggingInfo(),
      'y': buildStragglerDebuggingInfo(),
    };

void checkUnnamed118(core.Map<core.String, api.StragglerDebuggingInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStragglerDebuggingInfo(o['x']!);
  checkStragglerDebuggingInfo(o['y']!);
}

core.int buildCounterStragglerInfo = 0;
api.StragglerInfo buildStragglerInfo() {
  final o = api.StragglerInfo();
  buildCounterStragglerInfo++;
  if (buildCounterStragglerInfo < 3) {
    o.causes = buildUnnamed118();
    o.startTime = 'foo';
  }
  buildCounterStragglerInfo--;
  return o;
}

void checkStragglerInfo(api.StragglerInfo o) {
  buildCounterStragglerInfo++;
  if (buildCounterStragglerInfo < 3) {
    checkUnnamed118(o.causes!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterStragglerInfo--;
}

core.List<api.Straggler> buildUnnamed119() => [
      buildStraggler(),
      buildStraggler(),
    ];

void checkUnnamed119(core.List<api.Straggler> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStraggler(o[0]);
  checkStraggler(o[1]);
}

core.Map<core.String, core.String> buildUnnamed120() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed120(core.Map<core.String, core.String> o) {
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

core.int buildCounterStragglerSummary = 0;
api.StragglerSummary buildStragglerSummary() {
  final o = api.StragglerSummary();
  buildCounterStragglerSummary++;
  if (buildCounterStragglerSummary < 3) {
    o.recentStragglers = buildUnnamed119();
    o.stragglerCauseCount = buildUnnamed120();
    o.totalStragglerCount = 'foo';
  }
  buildCounterStragglerSummary--;
  return o;
}

void checkStragglerSummary(api.StragglerSummary o) {
  buildCounterStragglerSummary++;
  if (buildCounterStragglerSummary < 3) {
    checkUnnamed119(o.recentStragglers!);
    checkUnnamed120(o.stragglerCauseCount!);
    unittest.expect(
      o.totalStragglerCount!,
      unittest.equals('foo'),
    );
  }
  buildCounterStragglerSummary--;
}

core.int buildCounterStreamLocation = 0;
api.StreamLocation buildStreamLocation() {
  final o = api.StreamLocation();
  buildCounterStreamLocation++;
  if (buildCounterStreamLocation < 3) {
    o.customSourceLocation = buildCustomSourceLocation();
    o.pubsubLocation = buildPubsubLocation();
    o.sideInputLocation = buildStreamingSideInputLocation();
    o.streamingStageLocation = buildStreamingStageLocation();
  }
  buildCounterStreamLocation--;
  return o;
}

void checkStreamLocation(api.StreamLocation o) {
  buildCounterStreamLocation++;
  if (buildCounterStreamLocation < 3) {
    checkCustomSourceLocation(o.customSourceLocation!);
    checkPubsubLocation(o.pubsubLocation!);
    checkStreamingSideInputLocation(o.sideInputLocation!);
    checkStreamingStageLocation(o.streamingStageLocation!);
  }
  buildCounterStreamLocation--;
}

core.int buildCounterStreamingApplianceSnapshotConfig = 0;
api.StreamingApplianceSnapshotConfig buildStreamingApplianceSnapshotConfig() {
  final o = api.StreamingApplianceSnapshotConfig();
  buildCounterStreamingApplianceSnapshotConfig++;
  if (buildCounterStreamingApplianceSnapshotConfig < 3) {
    o.importStateEndpoint = 'foo';
    o.snapshotId = 'foo';
  }
  buildCounterStreamingApplianceSnapshotConfig--;
  return o;
}

void checkStreamingApplianceSnapshotConfig(
    api.StreamingApplianceSnapshotConfig o) {
  buildCounterStreamingApplianceSnapshotConfig++;
  if (buildCounterStreamingApplianceSnapshotConfig < 3) {
    unittest.expect(
      o.importStateEndpoint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.snapshotId!,
      unittest.equals('foo'),
    );
  }
  buildCounterStreamingApplianceSnapshotConfig--;
}

core.List<api.ParallelInstruction> buildUnnamed121() => [
      buildParallelInstruction(),
      buildParallelInstruction(),
    ];

void checkUnnamed121(core.List<api.ParallelInstruction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParallelInstruction(o[0]);
  checkParallelInstruction(o[1]);
}

core.Map<core.String, core.String> buildUnnamed122() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed122(core.Map<core.String, core.String> o) {
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

core.int buildCounterStreamingComputationConfig = 0;
api.StreamingComputationConfig buildStreamingComputationConfig() {
  final o = api.StreamingComputationConfig();
  buildCounterStreamingComputationConfig++;
  if (buildCounterStreamingComputationConfig < 3) {
    o.computationId = 'foo';
    o.instructions = buildUnnamed121();
    o.stageName = 'foo';
    o.systemName = 'foo';
    o.transformUserNameToStateFamily = buildUnnamed122();
  }
  buildCounterStreamingComputationConfig--;
  return o;
}

void checkStreamingComputationConfig(api.StreamingComputationConfig o) {
  buildCounterStreamingComputationConfig++;
  if (buildCounterStreamingComputationConfig < 3) {
    unittest.expect(
      o.computationId!,
      unittest.equals('foo'),
    );
    checkUnnamed121(o.instructions!);
    unittest.expect(
      o.stageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.systemName!,
      unittest.equals('foo'),
    );
    checkUnnamed122(o.transformUserNameToStateFamily!);
  }
  buildCounterStreamingComputationConfig--;
}

core.List<api.KeyRangeDataDiskAssignment> buildUnnamed123() => [
      buildKeyRangeDataDiskAssignment(),
      buildKeyRangeDataDiskAssignment(),
    ];

void checkUnnamed123(core.List<api.KeyRangeDataDiskAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyRangeDataDiskAssignment(o[0]);
  checkKeyRangeDataDiskAssignment(o[1]);
}

core.int buildCounterStreamingComputationRanges = 0;
api.StreamingComputationRanges buildStreamingComputationRanges() {
  final o = api.StreamingComputationRanges();
  buildCounterStreamingComputationRanges++;
  if (buildCounterStreamingComputationRanges < 3) {
    o.computationId = 'foo';
    o.rangeAssignments = buildUnnamed123();
  }
  buildCounterStreamingComputationRanges--;
  return o;
}

void checkStreamingComputationRanges(api.StreamingComputationRanges o) {
  buildCounterStreamingComputationRanges++;
  if (buildCounterStreamingComputationRanges < 3) {
    unittest.expect(
      o.computationId!,
      unittest.equals('foo'),
    );
    checkUnnamed123(o.rangeAssignments!);
  }
  buildCounterStreamingComputationRanges--;
}

core.List<api.StreamingComputationRanges> buildUnnamed124() => [
      buildStreamingComputationRanges(),
      buildStreamingComputationRanges(),
    ];

void checkUnnamed124(core.List<api.StreamingComputationRanges> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStreamingComputationRanges(o[0]);
  checkStreamingComputationRanges(o[1]);
}

core.List<api.MountedDataDisk> buildUnnamed125() => [
      buildMountedDataDisk(),
      buildMountedDataDisk(),
    ];

void checkUnnamed125(core.List<api.MountedDataDisk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMountedDataDisk(o[0]);
  checkMountedDataDisk(o[1]);
}

core.int buildCounterStreamingComputationTask = 0;
api.StreamingComputationTask buildStreamingComputationTask() {
  final o = api.StreamingComputationTask();
  buildCounterStreamingComputationTask++;
  if (buildCounterStreamingComputationTask < 3) {
    o.computationRanges = buildUnnamed124();
    o.dataDisks = buildUnnamed125();
    o.taskType = 'foo';
  }
  buildCounterStreamingComputationTask--;
  return o;
}

void checkStreamingComputationTask(api.StreamingComputationTask o) {
  buildCounterStreamingComputationTask++;
  if (buildCounterStreamingComputationTask < 3) {
    checkUnnamed124(o.computationRanges!);
    checkUnnamed125(o.dataDisks!);
    unittest.expect(
      o.taskType!,
      unittest.equals('foo'),
    );
  }
  buildCounterStreamingComputationTask--;
}

core.List<api.StreamingComputationConfig> buildUnnamed126() => [
      buildStreamingComputationConfig(),
      buildStreamingComputationConfig(),
    ];

void checkUnnamed126(core.List<api.StreamingComputationConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStreamingComputationConfig(o[0]);
  checkStreamingComputationConfig(o[1]);
}

core.Map<core.String, core.String> buildUnnamed127() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed127(core.Map<core.String, core.String> o) {
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

core.int buildCounterStreamingConfigTask = 0;
api.StreamingConfigTask buildStreamingConfigTask() {
  final o = api.StreamingConfigTask();
  buildCounterStreamingConfigTask++;
  if (buildCounterStreamingConfigTask < 3) {
    o.commitStreamChunkSizeBytes = 'foo';
    o.getDataStreamChunkSizeBytes = 'foo';
    o.maxWorkItemCommitBytes = 'foo';
    o.operationalLimits = buildStreamingOperationalLimits();
    o.streamingComputationConfigs = buildUnnamed126();
    o.userStepToStateFamilyNameMap = buildUnnamed127();
    o.userWorkerRunnerV1Settings = 'foo';
    o.userWorkerRunnerV2Settings = 'foo';
    o.windmillServiceEndpoint = 'foo';
    o.windmillServicePort = 'foo';
  }
  buildCounterStreamingConfigTask--;
  return o;
}

void checkStreamingConfigTask(api.StreamingConfigTask o) {
  buildCounterStreamingConfigTask++;
  if (buildCounterStreamingConfigTask < 3) {
    unittest.expect(
      o.commitStreamChunkSizeBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.getDataStreamChunkSizeBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxWorkItemCommitBytes!,
      unittest.equals('foo'),
    );
    checkStreamingOperationalLimits(o.operationalLimits!);
    checkUnnamed126(o.streamingComputationConfigs!);
    checkUnnamed127(o.userStepToStateFamilyNameMap!);
    unittest.expect(
      o.userWorkerRunnerV1Settings!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.userWorkerRunnerV2Settings!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.windmillServiceEndpoint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.windmillServicePort!,
      unittest.equals('foo'),
    );
  }
  buildCounterStreamingConfigTask--;
}

core.int buildCounterStreamingOperationalLimits = 0;
api.StreamingOperationalLimits buildStreamingOperationalLimits() {
  final o = api.StreamingOperationalLimits();
  buildCounterStreamingOperationalLimits++;
  if (buildCounterStreamingOperationalLimits < 3) {
    o.maxBagElementBytes = 'foo';
    o.maxGlobalDataBytes = 'foo';
    o.maxKeyBytes = 'foo';
    o.maxProductionOutputBytes = 'foo';
    o.maxSortedListElementBytes = 'foo';
    o.maxSourceStateBytes = 'foo';
    o.maxTagBytes = 'foo';
    o.maxValueBytes = 'foo';
  }
  buildCounterStreamingOperationalLimits--;
  return o;
}

void checkStreamingOperationalLimits(api.StreamingOperationalLimits o) {
  buildCounterStreamingOperationalLimits++;
  if (buildCounterStreamingOperationalLimits < 3) {
    unittest.expect(
      o.maxBagElementBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxGlobalDataBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxKeyBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxProductionOutputBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxSortedListElementBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxSourceStateBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxTagBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxValueBytes!,
      unittest.equals('foo'),
    );
  }
  buildCounterStreamingOperationalLimits--;
}

core.int buildCounterStreamingScalingReport = 0;
api.StreamingScalingReport buildStreamingScalingReport() {
  final o = api.StreamingScalingReport();
  buildCounterStreamingScalingReport++;
  if (buildCounterStreamingScalingReport < 3) {
    o.activeBundleCount = 42;
    o.activeThreadCount = 42;
    o.maximumBundleCount = 42;
    o.maximumBytes = 'foo';
    o.maximumBytesCount = 42;
    o.maximumThreadCount = 42;
    o.outstandingBundleCount = 42;
    o.outstandingBytes = 'foo';
    o.outstandingBytesCount = 42;
  }
  buildCounterStreamingScalingReport--;
  return o;
}

void checkStreamingScalingReport(api.StreamingScalingReport o) {
  buildCounterStreamingScalingReport++;
  if (buildCounterStreamingScalingReport < 3) {
    unittest.expect(
      o.activeBundleCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.activeThreadCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maximumBundleCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maximumBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maximumBytesCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.maximumThreadCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.outstandingBundleCount!,
      unittest.equals(42),
    );
    unittest.expect(
      o.outstandingBytes!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.outstandingBytesCount!,
      unittest.equals(42),
    );
  }
  buildCounterStreamingScalingReport--;
}

core.int buildCounterStreamingScalingReportResponse = 0;
api.StreamingScalingReportResponse buildStreamingScalingReportResponse() {
  final o = api.StreamingScalingReportResponse();
  buildCounterStreamingScalingReportResponse++;
  if (buildCounterStreamingScalingReportResponse < 3) {
    o.maximumThreadCount = 42;
  }
  buildCounterStreamingScalingReportResponse--;
  return o;
}

void checkStreamingScalingReportResponse(api.StreamingScalingReportResponse o) {
  buildCounterStreamingScalingReportResponse++;
  if (buildCounterStreamingScalingReportResponse < 3) {
    unittest.expect(
      o.maximumThreadCount!,
      unittest.equals(42),
    );
  }
  buildCounterStreamingScalingReportResponse--;
}

core.int buildCounterStreamingSetupTask = 0;
api.StreamingSetupTask buildStreamingSetupTask() {
  final o = api.StreamingSetupTask();
  buildCounterStreamingSetupTask++;
  if (buildCounterStreamingSetupTask < 3) {
    o.drain = true;
    o.receiveWorkPort = 42;
    o.snapshotConfig = buildStreamingApplianceSnapshotConfig();
    o.streamingComputationTopology = buildTopologyConfig();
    o.workerHarnessPort = 42;
  }
  buildCounterStreamingSetupTask--;
  return o;
}

void checkStreamingSetupTask(api.StreamingSetupTask o) {
  buildCounterStreamingSetupTask++;
  if (buildCounterStreamingSetupTask < 3) {
    unittest.expect(o.drain!, unittest.isTrue);
    unittest.expect(
      o.receiveWorkPort!,
      unittest.equals(42),
    );
    checkStreamingApplianceSnapshotConfig(o.snapshotConfig!);
    checkTopologyConfig(o.streamingComputationTopology!);
    unittest.expect(
      o.workerHarnessPort!,
      unittest.equals(42),
    );
  }
  buildCounterStreamingSetupTask--;
}

core.int buildCounterStreamingSideInputLocation = 0;
api.StreamingSideInputLocation buildStreamingSideInputLocation() {
  final o = api.StreamingSideInputLocation();
  buildCounterStreamingSideInputLocation++;
  if (buildCounterStreamingSideInputLocation < 3) {
    o.stateFamily = 'foo';
    o.tag = 'foo';
  }
  buildCounterStreamingSideInputLocation--;
  return o;
}

void checkStreamingSideInputLocation(api.StreamingSideInputLocation o) {
  buildCounterStreamingSideInputLocation++;
  if (buildCounterStreamingSideInputLocation < 3) {
    unittest.expect(
      o.stateFamily!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
  }
  buildCounterStreamingSideInputLocation--;
}

core.int buildCounterStreamingStageLocation = 0;
api.StreamingStageLocation buildStreamingStageLocation() {
  final o = api.StreamingStageLocation();
  buildCounterStreamingStageLocation++;
  if (buildCounterStreamingStageLocation < 3) {
    o.streamId = 'foo';
  }
  buildCounterStreamingStageLocation--;
  return o;
}

void checkStreamingStageLocation(api.StreamingStageLocation o) {
  buildCounterStreamingStageLocation++;
  if (buildCounterStreamingStageLocation < 3) {
    unittest.expect(
      o.streamId!,
      unittest.equals('foo'),
    );
  }
  buildCounterStreamingStageLocation--;
}

core.int buildCounterStreamingStragglerInfo = 0;
api.StreamingStragglerInfo buildStreamingStragglerInfo() {
  final o = api.StreamingStragglerInfo();
  buildCounterStreamingStragglerInfo++;
  if (buildCounterStreamingStragglerInfo < 3) {
    o.dataWatermarkLag = 'foo';
    o.endTime = 'foo';
    o.startTime = 'foo';
    o.systemWatermarkLag = 'foo';
    o.workerName = 'foo';
  }
  buildCounterStreamingStragglerInfo--;
  return o;
}

void checkStreamingStragglerInfo(api.StreamingStragglerInfo o) {
  buildCounterStreamingStragglerInfo++;
  if (buildCounterStreamingStragglerInfo < 3) {
    unittest.expect(
      o.dataWatermarkLag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.systemWatermarkLag!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workerName!,
      unittest.equals('foo'),
    );
  }
  buildCounterStreamingStragglerInfo--;
}

core.List<core.String> buildUnnamed128() => [
      'foo',
      'foo',
    ];

void checkUnnamed128(core.List<core.String> o) {
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

core.int buildCounterStringList = 0;
api.StringList buildStringList() {
  final o = api.StringList();
  buildCounterStringList++;
  if (buildCounterStringList < 3) {
    o.elements = buildUnnamed128();
  }
  buildCounterStringList--;
  return o;
}

void checkStringList(api.StringList o) {
  buildCounterStringList++;
  if (buildCounterStringList < 3) {
    checkUnnamed128(o.elements!);
  }
  buildCounterStringList--;
}

core.List<api.Parameter> buildUnnamed129() => [
      buildParameter(),
      buildParameter(),
    ];

void checkUnnamed129(core.List<api.Parameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameter(o[0]);
  checkParameter(o[1]);
}

core.int buildCounterStructuredMessage = 0;
api.StructuredMessage buildStructuredMessage() {
  final o = api.StructuredMessage();
  buildCounterStructuredMessage++;
  if (buildCounterStructuredMessage < 3) {
    o.messageKey = 'foo';
    o.messageText = 'foo';
    o.parameters = buildUnnamed129();
  }
  buildCounterStructuredMessage--;
  return o;
}

void checkStructuredMessage(api.StructuredMessage o) {
  buildCounterStructuredMessage++;
  if (buildCounterStructuredMessage < 3) {
    unittest.expect(
      o.messageKey!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.messageText!,
      unittest.equals('foo'),
    );
    checkUnnamed129(o.parameters!);
  }
  buildCounterStructuredMessage--;
}

core.List<core.String> buildUnnamed130() => [
      'foo',
      'foo',
    ];

void checkUnnamed130(core.List<core.String> o) {
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

core.int buildCounterTaskRunnerSettings = 0;
api.TaskRunnerSettings buildTaskRunnerSettings() {
  final o = api.TaskRunnerSettings();
  buildCounterTaskRunnerSettings++;
  if (buildCounterTaskRunnerSettings < 3) {
    o.alsologtostderr = true;
    o.baseTaskDir = 'foo';
    o.baseUrl = 'foo';
    o.commandlinesFileName = 'foo';
    o.continueOnException = true;
    o.dataflowApiVersion = 'foo';
    o.harnessCommand = 'foo';
    o.languageHint = 'foo';
    o.logDir = 'foo';
    o.logToSerialconsole = true;
    o.logUploadLocation = 'foo';
    o.oauthScopes = buildUnnamed130();
    o.parallelWorkerSettings = buildWorkerSettings();
    o.streamingWorkerMainClass = 'foo';
    o.taskGroup = 'foo';
    o.taskUser = 'foo';
    o.tempStoragePrefix = 'foo';
    o.vmId = 'foo';
    o.workflowFileName = 'foo';
  }
  buildCounterTaskRunnerSettings--;
  return o;
}

void checkTaskRunnerSettings(api.TaskRunnerSettings o) {
  buildCounterTaskRunnerSettings++;
  if (buildCounterTaskRunnerSettings < 3) {
    unittest.expect(o.alsologtostderr!, unittest.isTrue);
    unittest.expect(
      o.baseTaskDir!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.baseUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.commandlinesFileName!,
      unittest.equals('foo'),
    );
    unittest.expect(o.continueOnException!, unittest.isTrue);
    unittest.expect(
      o.dataflowApiVersion!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.harnessCommand!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.languageHint!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.logDir!,
      unittest.equals('foo'),
    );
    unittest.expect(o.logToSerialconsole!, unittest.isTrue);
    unittest.expect(
      o.logUploadLocation!,
      unittest.equals('foo'),
    );
    checkUnnamed130(o.oauthScopes!);
    checkWorkerSettings(o.parallelWorkerSettings!);
    unittest.expect(
      o.streamingWorkerMainClass!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taskGroup!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taskUser!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tempStoragePrefix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vmId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workflowFileName!,
      unittest.equals('foo'),
    );
  }
  buildCounterTaskRunnerSettings--;
}

core.List<api.ParameterMetadata> buildUnnamed131() => [
      buildParameterMetadata(),
      buildParameterMetadata(),
    ];

void checkUnnamed131(core.List<api.ParameterMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameterMetadata(o[0]);
  checkParameterMetadata(o[1]);
}

core.int buildCounterTemplateMetadata = 0;
api.TemplateMetadata buildTemplateMetadata() {
  final o = api.TemplateMetadata();
  buildCounterTemplateMetadata++;
  if (buildCounterTemplateMetadata < 3) {
    o.defaultStreamingMode = 'foo';
    o.description = 'foo';
    o.name = 'foo';
    o.parameters = buildUnnamed131();
    o.streaming = true;
    o.supportsAtLeastOnce = true;
    o.supportsExactlyOnce = true;
    o.yamlDefinition = 'foo';
  }
  buildCounterTemplateMetadata--;
  return o;
}

void checkTemplateMetadata(api.TemplateMetadata o) {
  buildCounterTemplateMetadata++;
  if (buildCounterTemplateMetadata < 3) {
    unittest.expect(
      o.defaultStreamingMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed131(o.parameters!);
    unittest.expect(o.streaming!, unittest.isTrue);
    unittest.expect(o.supportsAtLeastOnce!, unittest.isTrue);
    unittest.expect(o.supportsExactlyOnce!, unittest.isTrue);
    unittest.expect(
      o.yamlDefinition!,
      unittest.equals('foo'),
    );
  }
  buildCounterTemplateMetadata--;
}

core.List<api.ComputationTopology> buildUnnamed132() => [
      buildComputationTopology(),
      buildComputationTopology(),
    ];

void checkUnnamed132(core.List<api.ComputationTopology> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComputationTopology(o[0]);
  checkComputationTopology(o[1]);
}

core.List<api.DataDiskAssignment> buildUnnamed133() => [
      buildDataDiskAssignment(),
      buildDataDiskAssignment(),
    ];

void checkUnnamed133(core.List<api.DataDiskAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataDiskAssignment(o[0]);
  checkDataDiskAssignment(o[1]);
}

core.Map<core.String, core.String> buildUnnamed134() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed134(core.Map<core.String, core.String> o) {
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

core.int buildCounterTopologyConfig = 0;
api.TopologyConfig buildTopologyConfig() {
  final o = api.TopologyConfig();
  buildCounterTopologyConfig++;
  if (buildCounterTopologyConfig < 3) {
    o.computations = buildUnnamed132();
    o.dataDiskAssignments = buildUnnamed133();
    o.forwardingKeyBits = 42;
    o.persistentStateVersion = 42;
    o.userStageToComputationNameMap = buildUnnamed134();
  }
  buildCounterTopologyConfig--;
  return o;
}

void checkTopologyConfig(api.TopologyConfig o) {
  buildCounterTopologyConfig++;
  if (buildCounterTopologyConfig < 3) {
    checkUnnamed132(o.computations!);
    checkUnnamed133(o.dataDiskAssignments!);
    unittest.expect(
      o.forwardingKeyBits!,
      unittest.equals(42),
    );
    unittest.expect(
      o.persistentStateVersion!,
      unittest.equals(42),
    );
    checkUnnamed134(o.userStageToComputationNameMap!);
  }
  buildCounterTopologyConfig--;
}

core.List<api.DisplayData> buildUnnamed135() => [
      buildDisplayData(),
      buildDisplayData(),
    ];

void checkUnnamed135(core.List<api.DisplayData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisplayData(o[0]);
  checkDisplayData(o[1]);
}

core.List<core.String> buildUnnamed136() => [
      'foo',
      'foo',
    ];

void checkUnnamed136(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed137() => [
      'foo',
      'foo',
    ];

void checkUnnamed137(core.List<core.String> o) {
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

core.int buildCounterTransformSummary = 0;
api.TransformSummary buildTransformSummary() {
  final o = api.TransformSummary();
  buildCounterTransformSummary++;
  if (buildCounterTransformSummary < 3) {
    o.displayData = buildUnnamed135();
    o.id = 'foo';
    o.inputCollectionName = buildUnnamed136();
    o.kind = 'foo';
    o.name = 'foo';
    o.outputCollectionName = buildUnnamed137();
  }
  buildCounterTransformSummary--;
  return o;
}

void checkTransformSummary(api.TransformSummary o) {
  buildCounterTransformSummary++;
  if (buildCounterTransformSummary < 3) {
    checkUnnamed135(o.displayData!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed136(o.inputCollectionName!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed137(o.outputCollectionName!);
  }
  buildCounterTransformSummary--;
}

core.List<api.Package> buildUnnamed138() => [
      buildPackage(),
      buildPackage(),
    ];

void checkUnnamed138(core.List<api.Package> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPackage(o[0]);
  checkPackage(o[1]);
}

core.int buildCounterWorkItem = 0;
api.WorkItem buildWorkItem() {
  final o = api.WorkItem();
  buildCounterWorkItem++;
  if (buildCounterWorkItem < 3) {
    o.configuration = 'foo';
    o.id = 'foo';
    o.initialReportIndex = 'foo';
    o.jobId = 'foo';
    o.leaseExpireTime = 'foo';
    o.mapTask = buildMapTask();
    o.packages = buildUnnamed138();
    o.projectId = 'foo';
    o.reportStatusInterval = 'foo';
    o.seqMapTask = buildSeqMapTask();
    o.shellTask = buildShellTask();
    o.sourceOperationTask = buildSourceOperationRequest();
    o.streamingComputationTask = buildStreamingComputationTask();
    o.streamingConfigTask = buildStreamingConfigTask();
    o.streamingSetupTask = buildStreamingSetupTask();
  }
  buildCounterWorkItem--;
  return o;
}

void checkWorkItem(api.WorkItem o) {
  buildCounterWorkItem++;
  if (buildCounterWorkItem < 3) {
    unittest.expect(
      o.configuration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.initialReportIndex!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.jobId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.leaseExpireTime!,
      unittest.equals('foo'),
    );
    checkMapTask(o.mapTask!);
    checkUnnamed138(o.packages!);
    unittest.expect(
      o.projectId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reportStatusInterval!,
      unittest.equals('foo'),
    );
    checkSeqMapTask(o.seqMapTask!);
    checkShellTask(o.shellTask!);
    checkSourceOperationRequest(o.sourceOperationTask!);
    checkStreamingComputationTask(o.streamingComputationTask!);
    checkStreamingConfigTask(o.streamingConfigTask!);
    checkStreamingSetupTask(o.streamingSetupTask!);
  }
  buildCounterWorkItem--;
}

core.List<api.MetricUpdate> buildUnnamed139() => [
      buildMetricUpdate(),
      buildMetricUpdate(),
    ];

void checkUnnamed139(core.List<api.MetricUpdate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricUpdate(o[0]);
  checkMetricUpdate(o[1]);
}

core.int buildCounterWorkItemDetails = 0;
api.WorkItemDetails buildWorkItemDetails() {
  final o = api.WorkItemDetails();
  buildCounterWorkItemDetails++;
  if (buildCounterWorkItemDetails < 3) {
    o.attemptId = 'foo';
    o.endTime = 'foo';
    o.metrics = buildUnnamed139();
    o.progress = buildProgressTimeseries();
    o.startTime = 'foo';
    o.state = 'foo';
    o.stragglerInfo = buildStragglerInfo();
    o.taskId = 'foo';
  }
  buildCounterWorkItemDetails--;
  return o;
}

void checkWorkItemDetails(api.WorkItemDetails o) {
  buildCounterWorkItemDetails++;
  if (buildCounterWorkItemDetails < 3) {
    unittest.expect(
      o.attemptId!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.endTime!,
      unittest.equals('foo'),
    );
    checkUnnamed139(o.metrics!);
    checkProgressTimeseries(o.progress!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    checkStragglerInfo(o.stragglerInfo!);
    unittest.expect(
      o.taskId!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkItemDetails--;
}

core.Map<core.String, core.Object?> buildUnnamed140() => {
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

void checkUnnamed140(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted53 = (o['x']!) as core.Map;
  unittest.expect(casted53, unittest.hasLength(3));
  unittest.expect(
    casted53['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted53['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted53['string'],
    unittest.equals('foo'),
  );
  var casted54 = (o['y']!) as core.Map;
  unittest.expect(casted54, unittest.hasLength(3));
  unittest.expect(
    casted54['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted54['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted54['string'],
    unittest.equals('foo'),
  );
}

core.List<api.MetricShortId> buildUnnamed141() => [
      buildMetricShortId(),
      buildMetricShortId(),
    ];

void checkUnnamed141(core.List<api.MetricShortId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricShortId(o[0]);
  checkMetricShortId(o[1]);
}

core.int buildCounterWorkItemServiceState = 0;
api.WorkItemServiceState buildWorkItemServiceState() {
  final o = api.WorkItemServiceState();
  buildCounterWorkItemServiceState++;
  if (buildCounterWorkItemServiceState < 3) {
    o.completeWorkStatus = buildStatus();
    o.harnessData = buildUnnamed140();
    o.hotKeyDetection = buildHotKeyDetection();
    o.leaseExpireTime = 'foo';
    o.metricShortId = buildUnnamed141();
    o.nextReportIndex = 'foo';
    o.reportStatusInterval = 'foo';
    o.splitRequest = buildApproximateSplitRequest();
    o.suggestedStopPoint = buildApproximateProgress();
    o.suggestedStopPosition = buildPosition();
  }
  buildCounterWorkItemServiceState--;
  return o;
}

void checkWorkItemServiceState(api.WorkItemServiceState o) {
  buildCounterWorkItemServiceState++;
  if (buildCounterWorkItemServiceState < 3) {
    checkStatus(o.completeWorkStatus!);
    checkUnnamed140(o.harnessData!);
    checkHotKeyDetection(o.hotKeyDetection!);
    unittest.expect(
      o.leaseExpireTime!,
      unittest.equals('foo'),
    );
    checkUnnamed141(o.metricShortId!);
    unittest.expect(
      o.nextReportIndex!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.reportStatusInterval!,
      unittest.equals('foo'),
    );
    checkApproximateSplitRequest(o.splitRequest!);
    checkApproximateProgress(o.suggestedStopPoint!);
    checkPosition(o.suggestedStopPosition!);
  }
  buildCounterWorkItemServiceState--;
}

core.List<api.CounterUpdate> buildUnnamed142() => [
      buildCounterUpdate(),
      buildCounterUpdate(),
    ];

void checkUnnamed142(core.List<api.CounterUpdate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCounterUpdate(o[0]);
  checkCounterUpdate(o[1]);
}

core.List<api.Status> buildUnnamed143() => [
      buildStatus(),
      buildStatus(),
    ];

void checkUnnamed143(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.List<api.MetricUpdate> buildUnnamed144() => [
      buildMetricUpdate(),
      buildMetricUpdate(),
    ];

void checkUnnamed144(core.List<api.MetricUpdate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricUpdate(o[0]);
  checkMetricUpdate(o[1]);
}

core.int buildCounterWorkItemStatus = 0;
api.WorkItemStatus buildWorkItemStatus() {
  final o = api.WorkItemStatus();
  buildCounterWorkItemStatus++;
  if (buildCounterWorkItemStatus < 3) {
    o.completed = true;
    o.counterUpdates = buildUnnamed142();
    o.dynamicSourceSplit = buildDynamicSourceSplit();
    o.errors = buildUnnamed143();
    o.metricUpdates = buildUnnamed144();
    o.progress = buildApproximateProgress();
    o.reportIndex = 'foo';
    o.reportedProgress = buildApproximateReportedProgress();
    o.requestedLeaseDuration = 'foo';
    o.sourceFork = buildSourceFork();
    o.sourceOperationResponse = buildSourceOperationResponse();
    o.stopPosition = buildPosition();
    o.totalThrottlerWaitTimeSeconds = 42.0;
    o.workItemId = 'foo';
  }
  buildCounterWorkItemStatus--;
  return o;
}

void checkWorkItemStatus(api.WorkItemStatus o) {
  buildCounterWorkItemStatus++;
  if (buildCounterWorkItemStatus < 3) {
    unittest.expect(o.completed!, unittest.isTrue);
    checkUnnamed142(o.counterUpdates!);
    checkDynamicSourceSplit(o.dynamicSourceSplit!);
    checkUnnamed143(o.errors!);
    checkUnnamed144(o.metricUpdates!);
    checkApproximateProgress(o.progress!);
    unittest.expect(
      o.reportIndex!,
      unittest.equals('foo'),
    );
    checkApproximateReportedProgress(o.reportedProgress!);
    unittest.expect(
      o.requestedLeaseDuration!,
      unittest.equals('foo'),
    );
    checkSourceFork(o.sourceFork!);
    checkSourceOperationResponse(o.sourceOperationResponse!);
    checkPosition(o.stopPosition!);
    unittest.expect(
      o.totalThrottlerWaitTimeSeconds!,
      unittest.equals(42.0),
    );
    unittest.expect(
      o.workItemId!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkItemStatus--;
}

core.List<api.WorkItemDetails> buildUnnamed145() => [
      buildWorkItemDetails(),
      buildWorkItemDetails(),
    ];

void checkUnnamed145(core.List<api.WorkItemDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkItemDetails(o[0]);
  checkWorkItemDetails(o[1]);
}

core.int buildCounterWorkerDetails = 0;
api.WorkerDetails buildWorkerDetails() {
  final o = api.WorkerDetails();
  buildCounterWorkerDetails++;
  if (buildCounterWorkerDetails < 3) {
    o.workItems = buildUnnamed145();
    o.workerName = 'foo';
  }
  buildCounterWorkerDetails--;
  return o;
}

void checkWorkerDetails(api.WorkerDetails o) {
  buildCounterWorkerDetails++;
  if (buildCounterWorkerDetails < 3) {
    checkUnnamed145(o.workItems!);
    unittest.expect(
      o.workerName!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkerDetails--;
}

core.Map<core.String, core.Object?> buildUnnamed146() => {
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

void checkUnnamed146(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted55 = (o['x']!) as core.Map;
  unittest.expect(casted55, unittest.hasLength(3));
  unittest.expect(
    casted55['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted55['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted55['string'],
    unittest.equals('foo'),
  );
  var casted56 = (o['y']!) as core.Map;
  unittest.expect(casted56, unittest.hasLength(3));
  unittest.expect(
    casted56['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted56['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted56['string'],
    unittest.equals('foo'),
  );
}

core.List<core.Map<core.String, core.Object?>> buildUnnamed147() => [
      buildUnnamed146(),
      buildUnnamed146(),
    ];

void checkUnnamed147(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed146(o[0]);
  checkUnnamed146(o[1]);
}

core.int buildCounterWorkerHealthReport = 0;
api.WorkerHealthReport buildWorkerHealthReport() {
  final o = api.WorkerHealthReport();
  buildCounterWorkerHealthReport++;
  if (buildCounterWorkerHealthReport < 3) {
    o.msg = 'foo';
    o.pods = buildUnnamed147();
    o.reportInterval = 'foo';
    o.vmBrokenCode = 'foo';
    o.vmIsBroken = true;
    o.vmIsHealthy = true;
    o.vmStartupTime = 'foo';
  }
  buildCounterWorkerHealthReport--;
  return o;
}

void checkWorkerHealthReport(api.WorkerHealthReport o) {
  buildCounterWorkerHealthReport++;
  if (buildCounterWorkerHealthReport < 3) {
    unittest.expect(
      o.msg!,
      unittest.equals('foo'),
    );
    checkUnnamed147(o.pods!);
    unittest.expect(
      o.reportInterval!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.vmBrokenCode!,
      unittest.equals('foo'),
    );
    unittest.expect(o.vmIsBroken!, unittest.isTrue);
    unittest.expect(o.vmIsHealthy!, unittest.isTrue);
    unittest.expect(
      o.vmStartupTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkerHealthReport--;
}

core.int buildCounterWorkerHealthReportResponse = 0;
api.WorkerHealthReportResponse buildWorkerHealthReportResponse() {
  final o = api.WorkerHealthReportResponse();
  buildCounterWorkerHealthReportResponse++;
  if (buildCounterWorkerHealthReportResponse < 3) {
    o.reportInterval = 'foo';
  }
  buildCounterWorkerHealthReportResponse--;
  return o;
}

void checkWorkerHealthReportResponse(api.WorkerHealthReportResponse o) {
  buildCounterWorkerHealthReportResponse++;
  if (buildCounterWorkerHealthReportResponse < 3) {
    unittest.expect(
      o.reportInterval!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkerHealthReportResponse--;
}

core.Map<core.String, core.String> buildUnnamed148() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed148(core.Map<core.String, core.String> o) {
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

core.int buildCounterWorkerLifecycleEvent = 0;
api.WorkerLifecycleEvent buildWorkerLifecycleEvent() {
  final o = api.WorkerLifecycleEvent();
  buildCounterWorkerLifecycleEvent++;
  if (buildCounterWorkerLifecycleEvent < 3) {
    o.containerStartTime = 'foo';
    o.event = 'foo';
    o.metadata = buildUnnamed148();
  }
  buildCounterWorkerLifecycleEvent--;
  return o;
}

void checkWorkerLifecycleEvent(api.WorkerLifecycleEvent o) {
  buildCounterWorkerLifecycleEvent++;
  if (buildCounterWorkerLifecycleEvent < 3) {
    unittest.expect(
      o.containerStartTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.event!,
      unittest.equals('foo'),
    );
    checkUnnamed148(o.metadata!);
  }
  buildCounterWorkerLifecycleEvent--;
}

core.Map<core.String, core.String> buildUnnamed149() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed149(core.Map<core.String, core.String> o) {
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

core.int buildCounterWorkerMessage = 0;
api.WorkerMessage buildWorkerMessage() {
  final o = api.WorkerMessage();
  buildCounterWorkerMessage++;
  if (buildCounterWorkerMessage < 3) {
    o.dataSamplingReport = buildDataSamplingReport();
    o.labels = buildUnnamed149();
    o.perWorkerMetrics = buildPerWorkerMetrics();
    o.streamingScalingReport = buildStreamingScalingReport();
    o.time = 'foo';
    o.workerHealthReport = buildWorkerHealthReport();
    o.workerLifecycleEvent = buildWorkerLifecycleEvent();
    o.workerMessageCode = buildWorkerMessageCode();
    o.workerMetrics = buildResourceUtilizationReport();
    o.workerShutdownNotice = buildWorkerShutdownNotice();
    o.workerThreadScalingReport = buildWorkerThreadScalingReport();
  }
  buildCounterWorkerMessage--;
  return o;
}

void checkWorkerMessage(api.WorkerMessage o) {
  buildCounterWorkerMessage++;
  if (buildCounterWorkerMessage < 3) {
    checkDataSamplingReport(o.dataSamplingReport!);
    checkUnnamed149(o.labels!);
    checkPerWorkerMetrics(o.perWorkerMetrics!);
    checkStreamingScalingReport(o.streamingScalingReport!);
    unittest.expect(
      o.time!,
      unittest.equals('foo'),
    );
    checkWorkerHealthReport(o.workerHealthReport!);
    checkWorkerLifecycleEvent(o.workerLifecycleEvent!);
    checkWorkerMessageCode(o.workerMessageCode!);
    checkResourceUtilizationReport(o.workerMetrics!);
    checkWorkerShutdownNotice(o.workerShutdownNotice!);
    checkWorkerThreadScalingReport(o.workerThreadScalingReport!);
  }
  buildCounterWorkerMessage--;
}

core.Map<core.String, core.Object?> buildUnnamed150() => {
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

void checkUnnamed150(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted57 = (o['x']!) as core.Map;
  unittest.expect(casted57, unittest.hasLength(3));
  unittest.expect(
    casted57['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted57['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted57['string'],
    unittest.equals('foo'),
  );
  var casted58 = (o['y']!) as core.Map;
  unittest.expect(casted58, unittest.hasLength(3));
  unittest.expect(
    casted58['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted58['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted58['string'],
    unittest.equals('foo'),
  );
}

core.int buildCounterWorkerMessageCode = 0;
api.WorkerMessageCode buildWorkerMessageCode() {
  final o = api.WorkerMessageCode();
  buildCounterWorkerMessageCode++;
  if (buildCounterWorkerMessageCode < 3) {
    o.code = 'foo';
    o.parameters = buildUnnamed150();
  }
  buildCounterWorkerMessageCode--;
  return o;
}

void checkWorkerMessageCode(api.WorkerMessageCode o) {
  buildCounterWorkerMessageCode++;
  if (buildCounterWorkerMessageCode < 3) {
    unittest.expect(
      o.code!,
      unittest.equals('foo'),
    );
    checkUnnamed150(o.parameters!);
  }
  buildCounterWorkerMessageCode--;
}

core.int buildCounterWorkerMessageResponse = 0;
api.WorkerMessageResponse buildWorkerMessageResponse() {
  final o = api.WorkerMessageResponse();
  buildCounterWorkerMessageResponse++;
  if (buildCounterWorkerMessageResponse < 3) {
    o.streamingScalingReportResponse = buildStreamingScalingReportResponse();
    o.workerHealthReportResponse = buildWorkerHealthReportResponse();
    o.workerMetricsResponse = buildResourceUtilizationReportResponse();
    o.workerShutdownNoticeResponse = buildWorkerShutdownNoticeResponse();
    o.workerThreadScalingReportResponse =
        buildWorkerThreadScalingReportResponse();
  }
  buildCounterWorkerMessageResponse--;
  return o;
}

void checkWorkerMessageResponse(api.WorkerMessageResponse o) {
  buildCounterWorkerMessageResponse++;
  if (buildCounterWorkerMessageResponse < 3) {
    checkStreamingScalingReportResponse(o.streamingScalingReportResponse!);
    checkWorkerHealthReportResponse(o.workerHealthReportResponse!);
    checkResourceUtilizationReportResponse(o.workerMetricsResponse!);
    checkWorkerShutdownNoticeResponse(o.workerShutdownNoticeResponse!);
    checkWorkerThreadScalingReportResponse(
        o.workerThreadScalingReportResponse!);
  }
  buildCounterWorkerMessageResponse--;
}

core.List<api.Disk> buildUnnamed151() => [
      buildDisk(),
      buildDisk(),
    ];

void checkUnnamed151(core.List<api.Disk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisk(o[0]);
  checkDisk(o[1]);
}

core.Map<core.String, core.String> buildUnnamed152() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed152(core.Map<core.String, core.String> o) {
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

core.List<api.Package> buildUnnamed153() => [
      buildPackage(),
      buildPackage(),
    ];

void checkUnnamed153(core.List<api.Package> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPackage(o[0]);
  checkPackage(o[1]);
}

core.Map<core.String, core.Object?> buildUnnamed154() => {
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

void checkUnnamed154(core.Map<core.String, core.Object?> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted59 = (o['x']!) as core.Map;
  unittest.expect(casted59, unittest.hasLength(3));
  unittest.expect(
    casted59['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted59['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted59['string'],
    unittest.equals('foo'),
  );
  var casted60 = (o['y']!) as core.Map;
  unittest.expect(casted60, unittest.hasLength(3));
  unittest.expect(
    casted60['list'],
    unittest.equals([1, 2, 3]),
  );
  unittest.expect(
    casted60['bool'],
    unittest.equals(true),
  );
  unittest.expect(
    casted60['string'],
    unittest.equals('foo'),
  );
}

core.List<api.SdkHarnessContainerImage> buildUnnamed155() => [
      buildSdkHarnessContainerImage(),
      buildSdkHarnessContainerImage(),
    ];

void checkUnnamed155(core.List<api.SdkHarnessContainerImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSdkHarnessContainerImage(o[0]);
  checkSdkHarnessContainerImage(o[1]);
}

core.int buildCounterWorkerPool = 0;
api.WorkerPool buildWorkerPool() {
  final o = api.WorkerPool();
  buildCounterWorkerPool++;
  if (buildCounterWorkerPool < 3) {
    o.autoscalingSettings = buildAutoscalingSettings();
    o.dataDisks = buildUnnamed151();
    o.defaultPackageSet = 'foo';
    o.diskSizeGb = 42;
    o.diskSourceImage = 'foo';
    o.diskType = 'foo';
    o.ipConfiguration = 'foo';
    o.kind = 'foo';
    o.machineType = 'foo';
    o.metadata = buildUnnamed152();
    o.network = 'foo';
    o.numThreadsPerWorker = 42;
    o.numWorkers = 42;
    o.onHostMaintenance = 'foo';
    o.packages = buildUnnamed153();
    o.poolArgs = buildUnnamed154();
    o.sdkHarnessContainerImages = buildUnnamed155();
    o.subnetwork = 'foo';
    o.taskrunnerSettings = buildTaskRunnerSettings();
    o.teardownPolicy = 'foo';
    o.workerHarnessContainerImage = 'foo';
    o.zone = 'foo';
  }
  buildCounterWorkerPool--;
  return o;
}

void checkWorkerPool(api.WorkerPool o) {
  buildCounterWorkerPool++;
  if (buildCounterWorkerPool < 3) {
    checkAutoscalingSettings(o.autoscalingSettings!);
    checkUnnamed151(o.dataDisks!);
    unittest.expect(
      o.defaultPackageSet!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.diskSizeGb!,
      unittest.equals(42),
    );
    unittest.expect(
      o.diskSourceImage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.diskType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.ipConfiguration!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.machineType!,
      unittest.equals('foo'),
    );
    checkUnnamed152(o.metadata!);
    unittest.expect(
      o.network!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.numThreadsPerWorker!,
      unittest.equals(42),
    );
    unittest.expect(
      o.numWorkers!,
      unittest.equals(42),
    );
    unittest.expect(
      o.onHostMaintenance!,
      unittest.equals('foo'),
    );
    checkUnnamed153(o.packages!);
    checkUnnamed154(o.poolArgs!);
    checkUnnamed155(o.sdkHarnessContainerImages!);
    unittest.expect(
      o.subnetwork!,
      unittest.equals('foo'),
    );
    checkTaskRunnerSettings(o.taskrunnerSettings!);
    unittest.expect(
      o.teardownPolicy!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workerHarnessContainerImage!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.zone!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkerPool--;
}

core.int buildCounterWorkerSettings = 0;
api.WorkerSettings buildWorkerSettings() {
  final o = api.WorkerSettings();
  buildCounterWorkerSettings++;
  if (buildCounterWorkerSettings < 3) {
    o.baseUrl = 'foo';
    o.reportingEnabled = true;
    o.servicePath = 'foo';
    o.shuffleServicePath = 'foo';
    o.tempStoragePrefix = 'foo';
    o.workerId = 'foo';
  }
  buildCounterWorkerSettings--;
  return o;
}

void checkWorkerSettings(api.WorkerSettings o) {
  buildCounterWorkerSettings++;
  if (buildCounterWorkerSettings < 3) {
    unittest.expect(
      o.baseUrl!,
      unittest.equals('foo'),
    );
    unittest.expect(o.reportingEnabled!, unittest.isTrue);
    unittest.expect(
      o.servicePath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.shuffleServicePath!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tempStoragePrefix!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.workerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkerSettings--;
}

core.int buildCounterWorkerShutdownNotice = 0;
api.WorkerShutdownNotice buildWorkerShutdownNotice() {
  final o = api.WorkerShutdownNotice();
  buildCounterWorkerShutdownNotice++;
  if (buildCounterWorkerShutdownNotice < 3) {
    o.reason = 'foo';
  }
  buildCounterWorkerShutdownNotice--;
  return o;
}

void checkWorkerShutdownNotice(api.WorkerShutdownNotice o) {
  buildCounterWorkerShutdownNotice++;
  if (buildCounterWorkerShutdownNotice < 3) {
    unittest.expect(
      o.reason!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkerShutdownNotice--;
}

core.int buildCounterWorkerShutdownNoticeResponse = 0;
api.WorkerShutdownNoticeResponse buildWorkerShutdownNoticeResponse() {
  final o = api.WorkerShutdownNoticeResponse();
  buildCounterWorkerShutdownNoticeResponse++;
  if (buildCounterWorkerShutdownNoticeResponse < 3) {}
  buildCounterWorkerShutdownNoticeResponse--;
  return o;
}

void checkWorkerShutdownNoticeResponse(api.WorkerShutdownNoticeResponse o) {
  buildCounterWorkerShutdownNoticeResponse++;
  if (buildCounterWorkerShutdownNoticeResponse < 3) {}
  buildCounterWorkerShutdownNoticeResponse--;
}

core.int buildCounterWorkerThreadScalingReport = 0;
api.WorkerThreadScalingReport buildWorkerThreadScalingReport() {
  final o = api.WorkerThreadScalingReport();
  buildCounterWorkerThreadScalingReport++;
  if (buildCounterWorkerThreadScalingReport < 3) {
    o.currentThreadCount = 42;
  }
  buildCounterWorkerThreadScalingReport--;
  return o;
}

void checkWorkerThreadScalingReport(api.WorkerThreadScalingReport o) {
  buildCounterWorkerThreadScalingReport++;
  if (buildCounterWorkerThreadScalingReport < 3) {
    unittest.expect(
      o.currentThreadCount!,
      unittest.equals(42),
    );
  }
  buildCounterWorkerThreadScalingReport--;
}

core.int buildCounterWorkerThreadScalingReportResponse = 0;
api.WorkerThreadScalingReportResponse buildWorkerThreadScalingReportResponse() {
  final o = api.WorkerThreadScalingReportResponse();
  buildCounterWorkerThreadScalingReportResponse++;
  if (buildCounterWorkerThreadScalingReportResponse < 3) {
    o.recommendedThreadCount = 42;
  }
  buildCounterWorkerThreadScalingReportResponse--;
  return o;
}

void checkWorkerThreadScalingReportResponse(
    api.WorkerThreadScalingReportResponse o) {
  buildCounterWorkerThreadScalingReportResponse++;
  if (buildCounterWorkerThreadScalingReportResponse < 3) {
    unittest.expect(
      o.recommendedThreadCount!,
      unittest.equals(42),
    );
  }
  buildCounterWorkerThreadScalingReportResponse--;
}

core.int buildCounterWriteInstruction = 0;
api.WriteInstruction buildWriteInstruction() {
  final o = api.WriteInstruction();
  buildCounterWriteInstruction++;
  if (buildCounterWriteInstruction < 3) {
    o.input = buildInstructionInput();
    o.sink = buildSink();
  }
  buildCounterWriteInstruction--;
  return o;
}

void checkWriteInstruction(api.WriteInstruction o) {
  buildCounterWriteInstruction++;
  if (buildCounterWriteInstruction < 3) {
    checkInstructionInput(o.input!);
    checkSink(o.sink!);
  }
  buildCounterWriteInstruction--;
}

void main() {
  unittest.group('obj-schema-ApproximateProgress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApproximateProgress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApproximateProgress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApproximateProgress(od);
    });
  });

  unittest.group('obj-schema-ApproximateReportedProgress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApproximateReportedProgress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApproximateReportedProgress.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApproximateReportedProgress(od);
    });
  });

  unittest.group('obj-schema-ApproximateSplitRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApproximateSplitRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApproximateSplitRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkApproximateSplitRequest(od);
    });
  });

  unittest.group('obj-schema-AutoscalingEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutoscalingEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutoscalingEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAutoscalingEvent(od);
    });
  });

  unittest.group('obj-schema-AutoscalingSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutoscalingSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutoscalingSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkAutoscalingSettings(od);
    });
  });

  unittest.group('obj-schema-Base2Exponent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBase2Exponent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Base2Exponent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBase2Exponent(od);
    });
  });

  unittest.group('obj-schema-BigQueryIODetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBigQueryIODetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BigQueryIODetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBigQueryIODetails(od);
    });
  });

  unittest.group('obj-schema-BigTableIODetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBigTableIODetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BigTableIODetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBigTableIODetails(od);
    });
  });

  unittest.group('obj-schema-BoundedTrie', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBoundedTrie();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BoundedTrie.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBoundedTrie(od);
    });
  });

  unittest.group('obj-schema-BoundedTrieNode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBoundedTrieNode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BoundedTrieNode.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBoundedTrieNode(od);
    });
  });

  unittest.group('obj-schema-BucketOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBucketOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BucketOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkBucketOptions(od);
    });
  });

  unittest.group('obj-schema-CPUTime', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCPUTime();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.CPUTime.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkCPUTime(od);
    });
  });

  unittest.group('obj-schema-ComponentSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComponentSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComponentSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComponentSource(od);
    });
  });

  unittest.group('obj-schema-ComponentTransform', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComponentTransform();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComponentTransform.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComponentTransform(od);
    });
  });

  unittest.group('obj-schema-ComputationTopology', () {
    unittest.test('to-json--from-json', () async {
      final o = buildComputationTopology();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ComputationTopology.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkComputationTopology(od);
    });
  });

  unittest.group('obj-schema-ConcatPosition', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConcatPosition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConcatPosition.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkConcatPosition(od);
    });
  });

  unittest.group('obj-schema-ContainerSpec', () {
    unittest.test('to-json--from-json', () async {
      final o = buildContainerSpec();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ContainerSpec.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkContainerSpec(od);
    });
  });

  unittest.group('obj-schema-CounterMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCounterMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CounterMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCounterMetadata(od);
    });
  });

  unittest.group('obj-schema-CounterStructuredName', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCounterStructuredName();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CounterStructuredName.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCounterStructuredName(od);
    });
  });

  unittest.group('obj-schema-CounterStructuredNameAndMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCounterStructuredNameAndMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CounterStructuredNameAndMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCounterStructuredNameAndMetadata(od);
    });
  });

  unittest.group('obj-schema-CounterUpdate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCounterUpdate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CounterUpdate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCounterUpdate(od);
    });
  });

  unittest.group('obj-schema-CreateJobFromTemplateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCreateJobFromTemplateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CreateJobFromTemplateRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCreateJobFromTemplateRequest(od);
    });
  });

  unittest.group('obj-schema-CustomSourceLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCustomSourceLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CustomSourceLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkCustomSourceLocation(od);
    });
  });

  unittest.group('obj-schema-DataDiskAssignment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataDiskAssignment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataDiskAssignment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataDiskAssignment(od);
    });
  });

  unittest.group('obj-schema-DataSamplingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSamplingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataSamplingConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataSamplingConfig(od);
    });
  });

  unittest.group('obj-schema-DataSamplingReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataSamplingReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataSamplingReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataSamplingReport(od);
    });
  });

  unittest.group('obj-schema-DataflowGaugeValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataflowGaugeValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataflowGaugeValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataflowGaugeValue(od);
    });
  });

  unittest.group('obj-schema-DataflowHistogramValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataflowHistogramValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataflowHistogramValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDataflowHistogramValue(od);
    });
  });

  unittest.group('obj-schema-DatastoreIODetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDatastoreIODetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DatastoreIODetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDatastoreIODetails(od);
    });
  });

  unittest.group('obj-schema-DebugOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDebugOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DebugOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDebugOptions(od);
    });
  });

  unittest.group('obj-schema-DeleteSnapshotResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDeleteSnapshotResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DeleteSnapshotResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDeleteSnapshotResponse(od);
    });
  });

  unittest.group('obj-schema-DerivedSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDerivedSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DerivedSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDerivedSource(od);
    });
  });

  unittest.group('obj-schema-Disk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Disk.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkDisk(od);
    });
  });

  unittest.group('obj-schema-DisplayData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDisplayData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DisplayData.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDisplayData(od);
    });
  });

  unittest.group('obj-schema-DistributionUpdate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDistributionUpdate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DistributionUpdate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDistributionUpdate(od);
    });
  });

  unittest.group('obj-schema-DynamicSourceSplit', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDynamicSourceSplit();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DynamicSourceSplit.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkDynamicSourceSplit(od);
    });
  });

  unittest.group('obj-schema-Environment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnvironment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Environment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkEnvironment(od);
    });
  });

  unittest.group('obj-schema-ExecutionStageState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecutionStageState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecutionStageState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExecutionStageState(od);
    });
  });

  unittest.group('obj-schema-ExecutionStageSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecutionStageSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecutionStageSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkExecutionStageSummary(od);
    });
  });

  unittest.group('obj-schema-FailedLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFailedLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FailedLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFailedLocation(od);
    });
  });

  unittest.group('obj-schema-FileIODetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFileIODetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FileIODetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFileIODetails(od);
    });
  });

  unittest.group('obj-schema-FlattenInstruction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFlattenInstruction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FlattenInstruction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFlattenInstruction(od);
    });
  });

  unittest.group('obj-schema-FlexTemplateRuntimeEnvironment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFlexTemplateRuntimeEnvironment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FlexTemplateRuntimeEnvironment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFlexTemplateRuntimeEnvironment(od);
    });
  });

  unittest.group('obj-schema-FloatingPointList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFloatingPointList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FloatingPointList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFloatingPointList(od);
    });
  });

  unittest.group('obj-schema-FloatingPointMean', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFloatingPointMean();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FloatingPointMean.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkFloatingPointMean(od);
    });
  });

  unittest.group('obj-schema-GPUUsage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGPUUsage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.GPUUsage.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkGPUUsage(od);
    });
  });

  unittest.group('obj-schema-GPUUtilization', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGPUUtilization();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GPUUtilization.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGPUUtilization(od);
    });
  });

  unittest.group('obj-schema-GetDebugConfigRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetDebugConfigRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetDebugConfigRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetDebugConfigRequest(od);
    });
  });

  unittest.group('obj-schema-GetDebugConfigResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetDebugConfigResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetDebugConfigResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetDebugConfigResponse(od);
    });
  });

  unittest.group('obj-schema-GetTemplateResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetTemplateResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetTemplateResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkGetTemplateResponse(od);
    });
  });

  unittest.group('obj-schema-Histogram', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHistogram();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Histogram.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHistogram(od);
    });
  });

  unittest.group('obj-schema-HotKeyDebuggingInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHotKeyDebuggingInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HotKeyDebuggingInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHotKeyDebuggingInfo(od);
    });
  });

  unittest.group('obj-schema-HotKeyDetection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHotKeyDetection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HotKeyDetection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHotKeyDetection(od);
    });
  });

  unittest.group('obj-schema-HotKeyInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHotKeyInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.HotKeyInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkHotKeyInfo(od);
    });
  });

  unittest.group('obj-schema-InstructionInput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstructionInput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstructionInput.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstructionInput(od);
    });
  });

  unittest.group('obj-schema-InstructionOutput', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstructionOutput();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstructionOutput.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkInstructionOutput(od);
    });
  });

  unittest.group('obj-schema-IntegerGauge', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIntegerGauge();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IntegerGauge.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIntegerGauge(od);
    });
  });

  unittest.group('obj-schema-IntegerList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIntegerList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IntegerList.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIntegerList(od);
    });
  });

  unittest.group('obj-schema-IntegerMean', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIntegerMean();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IntegerMean.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkIntegerMean(od);
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

  unittest.group('obj-schema-JobExecutionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobExecutionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobExecutionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJobExecutionDetails(od);
    });
  });

  unittest.group('obj-schema-JobExecutionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobExecutionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobExecutionInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJobExecutionInfo(od);
    });
  });

  unittest.group('obj-schema-JobExecutionStageInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobExecutionStageInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobExecutionStageInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJobExecutionStageInfo(od);
    });
  });

  unittest.group('obj-schema-JobMessage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.JobMessage.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJobMessage(od);
    });
  });

  unittest.group('obj-schema-JobMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkJobMetadata(od);
    });
  });

  unittest.group('obj-schema-JobMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.JobMetrics.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkJobMetrics(od);
    });
  });

  unittest.group('obj-schema-KeyRangeDataDiskAssignment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKeyRangeDataDiskAssignment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KeyRangeDataDiskAssignment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkKeyRangeDataDiskAssignment(od);
    });
  });

  unittest.group('obj-schema-KeyRangeLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKeyRangeLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KeyRangeLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkKeyRangeLocation(od);
    });
  });

  unittest.group('obj-schema-LaunchFlexTemplateParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLaunchFlexTemplateParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LaunchFlexTemplateParameter.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLaunchFlexTemplateParameter(od);
    });
  });

  unittest.group('obj-schema-LaunchFlexTemplateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLaunchFlexTemplateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LaunchFlexTemplateRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLaunchFlexTemplateRequest(od);
    });
  });

  unittest.group('obj-schema-LaunchFlexTemplateResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLaunchFlexTemplateResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LaunchFlexTemplateResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLaunchFlexTemplateResponse(od);
    });
  });

  unittest.group('obj-schema-LaunchTemplateParameters', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLaunchTemplateParameters();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LaunchTemplateParameters.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLaunchTemplateParameters(od);
    });
  });

  unittest.group('obj-schema-LaunchTemplateResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLaunchTemplateResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LaunchTemplateResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLaunchTemplateResponse(od);
    });
  });

  unittest.group('obj-schema-LeaseWorkItemRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLeaseWorkItemRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LeaseWorkItemRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLeaseWorkItemRequest(od);
    });
  });

  unittest.group('obj-schema-LeaseWorkItemResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLeaseWorkItemResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LeaseWorkItemResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkLeaseWorkItemResponse(od);
    });
  });

  unittest.group('obj-schema-Linear', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLinear();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Linear.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkLinear(od);
    });
  });

  unittest.group('obj-schema-ListJobMessagesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListJobMessagesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListJobMessagesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListJobMessagesResponse(od);
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

  unittest.group('obj-schema-ListSnapshotsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSnapshotsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSnapshotsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkListSnapshotsResponse(od);
    });
  });

  unittest.group('obj-schema-MapTask', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMapTask();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.MapTask.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMapTask(od);
    });
  });

  unittest.group('obj-schema-MemInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMemInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.MemInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkMemInfo(od);
    });
  });

  unittest.group('obj-schema-MetricShortId', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricShortId();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricShortId.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetricShortId(od);
    });
  });

  unittest.group('obj-schema-MetricStructuredName', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricStructuredName();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricStructuredName.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetricStructuredName(od);
    });
  });

  unittest.group('obj-schema-MetricUpdate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricUpdate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricUpdate.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetricUpdate(od);
    });
  });

  unittest.group('obj-schema-MetricValue', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetricValue();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetricValue.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMetricValue(od);
    });
  });

  unittest.group('obj-schema-MountedDataDisk', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMountedDataDisk();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MountedDataDisk.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMountedDataDisk(od);
    });
  });

  unittest.group('obj-schema-MultiOutputInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMultiOutputInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MultiOutputInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkMultiOutputInfo(od);
    });
  });

  unittest.group('obj-schema-NameAndKind', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNameAndKind();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NameAndKind.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkNameAndKind(od);
    });
  });

  unittest.group('obj-schema-OutlierStats', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOutlierStats();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OutlierStats.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkOutlierStats(od);
    });
  });

  unittest.group('obj-schema-Package', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPackage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Package.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPackage(od);
    });
  });

  unittest.group('obj-schema-ParDoInstruction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParDoInstruction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ParDoInstruction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkParDoInstruction(od);
    });
  });

  unittest.group('obj-schema-ParallelInstruction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParallelInstruction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ParallelInstruction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkParallelInstruction(od);
    });
  });

  unittest.group('obj-schema-Parameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Parameter.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkParameter(od);
    });
  });

  unittest.group('obj-schema-ParameterMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParameterMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ParameterMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkParameterMetadata(od);
    });
  });

  unittest.group('obj-schema-ParameterMetadataEnumOption', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParameterMetadataEnumOption();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ParameterMetadataEnumOption.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkParameterMetadataEnumOption(od);
    });
  });

  unittest.group('obj-schema-PartialGroupByKeyInstruction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartialGroupByKeyInstruction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartialGroupByKeyInstruction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPartialGroupByKeyInstruction(od);
    });
  });

  unittest.group('obj-schema-PerStepNamespaceMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPerStepNamespaceMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PerStepNamespaceMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPerStepNamespaceMetrics(od);
    });
  });

  unittest.group('obj-schema-PerWorkerMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPerWorkerMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PerWorkerMetrics.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPerWorkerMetrics(od);
    });
  });

  unittest.group('obj-schema-PipelineDescription', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPipelineDescription();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PipelineDescription.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPipelineDescription(od);
    });
  });

  unittest.group('obj-schema-Point', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPoint();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Point.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPoint(od);
    });
  });

  unittest.group('obj-schema-Position', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPosition();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Position.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkPosition(od);
    });
  });

  unittest.group('obj-schema-ProgressTimeseries', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProgressTimeseries();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProgressTimeseries.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkProgressTimeseries(od);
    });
  });

  unittest.group('obj-schema-PubSubIODetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPubSubIODetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PubSubIODetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPubSubIODetails(od);
    });
  });

  unittest.group('obj-schema-PubsubLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPubsubLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PubsubLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPubsubLocation(od);
    });
  });

  unittest.group('obj-schema-PubsubSnapshotMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPubsubSnapshotMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PubsubSnapshotMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPubsubSnapshotMetadata(od);
    });
  });

  unittest.group('obj-schema-ReadInstruction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReadInstruction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReadInstruction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReadInstruction(od);
    });
  });

  unittest.group('obj-schema-ReportWorkItemStatusRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportWorkItemStatusRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportWorkItemStatusRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportWorkItemStatusRequest(od);
    });
  });

  unittest.group('obj-schema-ReportWorkItemStatusResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportWorkItemStatusResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportWorkItemStatusResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportWorkItemStatusResponse(od);
    });
  });

  unittest.group('obj-schema-ReportedParallelism', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReportedParallelism();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReportedParallelism.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkReportedParallelism(od);
    });
  });

  unittest.group('obj-schema-ResourceUtilizationReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceUtilizationReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceUtilizationReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceUtilizationReport(od);
    });
  });

  unittest.group('obj-schema-ResourceUtilizationReportResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceUtilizationReportResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceUtilizationReportResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkResourceUtilizationReportResponse(od);
    });
  });

  unittest.group('obj-schema-RuntimeEnvironment', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRuntimeEnvironment();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RuntimeEnvironment.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRuntimeEnvironment(od);
    });
  });

  unittest.group('obj-schema-RuntimeMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRuntimeMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RuntimeMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRuntimeMetadata(od);
    });
  });

  unittest.group('obj-schema-RuntimeUpdatableParams', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRuntimeUpdatableParams();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RuntimeUpdatableParams.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkRuntimeUpdatableParams(od);
    });
  });

  unittest.group('obj-schema-SDKInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSDKInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SDKInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSDKInfo(od);
    });
  });

  unittest.group('obj-schema-SdkBug', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSdkBug();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SdkBug.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSdkBug(od);
    });
  });

  unittest.group('obj-schema-SdkHarnessContainerImage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSdkHarnessContainerImage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SdkHarnessContainerImage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSdkHarnessContainerImage(od);
    });
  });

  unittest.group('obj-schema-SdkVersion', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSdkVersion();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SdkVersion.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSdkVersion(od);
    });
  });

  unittest.group('obj-schema-SendDebugCaptureRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSendDebugCaptureRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SendDebugCaptureRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSendDebugCaptureRequest(od);
    });
  });

  unittest.group('obj-schema-SendDebugCaptureResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSendDebugCaptureResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SendDebugCaptureResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSendDebugCaptureResponse(od);
    });
  });

  unittest.group('obj-schema-SendWorkerMessagesRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSendWorkerMessagesRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SendWorkerMessagesRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSendWorkerMessagesRequest(od);
    });
  });

  unittest.group('obj-schema-SendWorkerMessagesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSendWorkerMessagesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SendWorkerMessagesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSendWorkerMessagesResponse(od);
    });
  });

  unittest.group('obj-schema-SeqMapTask', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSeqMapTask();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SeqMapTask.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSeqMapTask(od);
    });
  });

  unittest.group('obj-schema-SeqMapTaskOutputInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSeqMapTaskOutputInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SeqMapTaskOutputInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSeqMapTaskOutputInfo(od);
    });
  });

  unittest.group('obj-schema-ServiceResources', () {
    unittest.test('to-json--from-json', () async {
      final o = buildServiceResources();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ServiceResources.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkServiceResources(od);
    });
  });

  unittest.group('obj-schema-ShellTask', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShellTask();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.ShellTask.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkShellTask(od);
    });
  });

  unittest.group('obj-schema-SideInputInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSideInputInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SideInputInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSideInputInfo(od);
    });
  });

  unittest.group('obj-schema-Sink', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSink();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Sink.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSink(od);
    });
  });

  unittest.group('obj-schema-Snapshot', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSnapshot();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Snapshot.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSnapshot(od);
    });
  });

  unittest.group('obj-schema-SnapshotJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSnapshotJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SnapshotJobRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSnapshotJobRequest(od);
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

  unittest.group('obj-schema-SourceFork', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceFork();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SourceFork.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSourceFork(od);
    });
  });

  unittest.group('obj-schema-SourceGetMetadataRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceGetMetadataRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceGetMetadataRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceGetMetadataRequest(od);
    });
  });

  unittest.group('obj-schema-SourceGetMetadataResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceGetMetadataResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceGetMetadataResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceGetMetadataResponse(od);
    });
  });

  unittest.group('obj-schema-SourceMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceMetadata(od);
    });
  });

  unittest.group('obj-schema-SourceOperationRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceOperationRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceOperationRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceOperationRequest(od);
    });
  });

  unittest.group('obj-schema-SourceOperationResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceOperationResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceOperationResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceOperationResponse(od);
    });
  });

  unittest.group('obj-schema-SourceSplitOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceSplitOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceSplitOptions.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceSplitOptions(od);
    });
  });

  unittest.group('obj-schema-SourceSplitRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceSplitRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceSplitRequest.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceSplitRequest(od);
    });
  });

  unittest.group('obj-schema-SourceSplitResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceSplitResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceSplitResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceSplitResponse(od);
    });
  });

  unittest.group('obj-schema-SourceSplitShard', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceSplitShard();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceSplitShard.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSourceSplitShard(od);
    });
  });

  unittest.group('obj-schema-SpannerIODetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSpannerIODetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SpannerIODetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkSpannerIODetails(od);
    });
  });

  unittest.group('obj-schema-SplitInt64', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSplitInt64();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SplitInt64.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSplitInt64(od);
    });
  });

  unittest.group('obj-schema-StageExecutionDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStageExecutionDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StageExecutionDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStageExecutionDetails(od);
    });
  });

  unittest.group('obj-schema-StageSource', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStageSource();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StageSource.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStageSource(od);
    });
  });

  unittest.group('obj-schema-StageSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStageSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StageSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStageSummary(od);
    });
  });

  unittest.group('obj-schema-StateFamilyConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStateFamilyConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StateFamilyConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStateFamilyConfig(od);
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

  unittest.group('obj-schema-Step', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStep();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Step.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStep(od);
    });
  });

  unittest.group('obj-schema-Straggler', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStraggler();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.Straggler.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStraggler(od);
    });
  });

  unittest.group('obj-schema-StragglerDebuggingInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStragglerDebuggingInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StragglerDebuggingInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStragglerDebuggingInfo(od);
    });
  });

  unittest.group('obj-schema-StragglerInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStragglerInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StragglerInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStragglerInfo(od);
    });
  });

  unittest.group('obj-schema-StragglerSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStragglerSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StragglerSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStragglerSummary(od);
    });
  });

  unittest.group('obj-schema-StreamLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStreamLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StreamLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStreamLocation(od);
    });
  });

  unittest.group('obj-schema-StreamingApplianceSnapshotConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStreamingApplianceSnapshotConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StreamingApplianceSnapshotConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStreamingApplianceSnapshotConfig(od);
    });
  });

  unittest.group('obj-schema-StreamingComputationConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStreamingComputationConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StreamingComputationConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStreamingComputationConfig(od);
    });
  });

  unittest.group('obj-schema-StreamingComputationRanges', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStreamingComputationRanges();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StreamingComputationRanges.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStreamingComputationRanges(od);
    });
  });

  unittest.group('obj-schema-StreamingComputationTask', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStreamingComputationTask();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StreamingComputationTask.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStreamingComputationTask(od);
    });
  });

  unittest.group('obj-schema-StreamingConfigTask', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStreamingConfigTask();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StreamingConfigTask.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStreamingConfigTask(od);
    });
  });

  unittest.group('obj-schema-StreamingOperationalLimits', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStreamingOperationalLimits();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StreamingOperationalLimits.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStreamingOperationalLimits(od);
    });
  });

  unittest.group('obj-schema-StreamingScalingReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStreamingScalingReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StreamingScalingReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStreamingScalingReport(od);
    });
  });

  unittest.group('obj-schema-StreamingScalingReportResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStreamingScalingReportResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StreamingScalingReportResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStreamingScalingReportResponse(od);
    });
  });

  unittest.group('obj-schema-StreamingSetupTask', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStreamingSetupTask();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StreamingSetupTask.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStreamingSetupTask(od);
    });
  });

  unittest.group('obj-schema-StreamingSideInputLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStreamingSideInputLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StreamingSideInputLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStreamingSideInputLocation(od);
    });
  });

  unittest.group('obj-schema-StreamingStageLocation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStreamingStageLocation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StreamingStageLocation.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStreamingStageLocation(od);
    });
  });

  unittest.group('obj-schema-StreamingStragglerInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStreamingStragglerInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StreamingStragglerInfo.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStreamingStragglerInfo(od);
    });
  });

  unittest.group('obj-schema-StringList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStringList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.StringList.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkStringList(od);
    });
  });

  unittest.group('obj-schema-StructuredMessage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStructuredMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StructuredMessage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkStructuredMessage(od);
    });
  });

  unittest.group('obj-schema-TaskRunnerSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTaskRunnerSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TaskRunnerSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTaskRunnerSettings(od);
    });
  });

  unittest.group('obj-schema-TemplateMetadata', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTemplateMetadata();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TemplateMetadata.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTemplateMetadata(od);
    });
  });

  unittest.group('obj-schema-TopologyConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTopologyConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TopologyConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTopologyConfig(od);
    });
  });

  unittest.group('obj-schema-TransformSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTransformSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TransformSummary.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkTransformSummary(od);
    });
  });

  unittest.group('obj-schema-WorkItem', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkItem();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.WorkItem.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWorkItem(od);
    });
  });

  unittest.group('obj-schema-WorkItemDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkItemDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkItemDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkItemDetails(od);
    });
  });

  unittest.group('obj-schema-WorkItemServiceState', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkItemServiceState();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkItemServiceState.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkItemServiceState(od);
    });
  });

  unittest.group('obj-schema-WorkItemStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkItemStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkItemStatus.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkItemStatus(od);
    });
  });

  unittest.group('obj-schema-WorkerDetails', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkerDetails();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkerDetails.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkerDetails(od);
    });
  });

  unittest.group('obj-schema-WorkerHealthReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkerHealthReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkerHealthReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkerHealthReport(od);
    });
  });

  unittest.group('obj-schema-WorkerHealthReportResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkerHealthReportResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkerHealthReportResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkerHealthReportResponse(od);
    });
  });

  unittest.group('obj-schema-WorkerLifecycleEvent', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkerLifecycleEvent();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkerLifecycleEvent.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkerLifecycleEvent(od);
    });
  });

  unittest.group('obj-schema-WorkerMessage', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkerMessage();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkerMessage.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkerMessage(od);
    });
  });

  unittest.group('obj-schema-WorkerMessageCode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkerMessageCode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkerMessageCode.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkerMessageCode(od);
    });
  });

  unittest.group('obj-schema-WorkerMessageResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkerMessageResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkerMessageResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkerMessageResponse(od);
    });
  });

  unittest.group('obj-schema-WorkerPool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkerPool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.WorkerPool.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkWorkerPool(od);
    });
  });

  unittest.group('obj-schema-WorkerSettings', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkerSettings();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkerSettings.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkerSettings(od);
    });
  });

  unittest.group('obj-schema-WorkerShutdownNotice', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkerShutdownNotice();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkerShutdownNotice.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkerShutdownNotice(od);
    });
  });

  unittest.group('obj-schema-WorkerShutdownNoticeResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkerShutdownNoticeResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkerShutdownNoticeResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkerShutdownNoticeResponse(od);
    });
  });

  unittest.group('obj-schema-WorkerThreadScalingReport', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkerThreadScalingReport();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkerThreadScalingReport.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkerThreadScalingReport(od);
    });
  });

  unittest.group('obj-schema-WorkerThreadScalingReportResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkerThreadScalingReportResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkerThreadScalingReportResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWorkerThreadScalingReportResponse(od);
    });
  });

  unittest.group('obj-schema-WriteInstruction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWriteInstruction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WriteInstruction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkWriteInstruction(od);
    });
  });

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--deleteSnapshots', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects;
      final arg_projectId = 'foo';
      final arg_location = 'foo';
      final arg_snapshotId = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/snapshots', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/snapshots'),
        );
        pathOffset += 10;

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
          queryMap['location']!.first,
          unittest.equals(arg_location),
        );
        unittest.expect(
          queryMap['snapshotId']!.first,
          unittest.equals(arg_snapshotId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildDeleteSnapshotResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.deleteSnapshots(arg_projectId,
          location: arg_location,
          snapshotId: arg_snapshotId,
          $fields: arg_$fields);
      checkDeleteSnapshotResponse(response as api.DeleteSnapshotResponse);
    });

    unittest.test('method--workerMessages', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects;
      final arg_request = buildSendWorkerMessagesRequest();
      final arg_projectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SendWorkerMessagesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSendWorkerMessagesRequest(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/WorkerMessages', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/WorkerMessages'),
        );
        pathOffset += 15;

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
        final resp = convert.json.encode(buildSendWorkerMessagesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.workerMessages(arg_request, arg_projectId,
          $fields: arg_$fields);
      checkSendWorkerMessagesResponse(
          response as api.SendWorkerMessagesResponse);
    });
  });

  unittest.group('resource-ProjectsJobsResource', () {
    unittest.test('method--aggregated', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.jobs;
      final arg_projectId = 'foo';
      final arg_filter = 'foo';
      final arg_location = 'foo';
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/jobs:aggregated', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/jobs:aggregated'),
        );
        pathOffset += 16;

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
          queryMap['location']!.first,
          unittest.equals(arg_location),
        );
        unittest.expect(
          queryMap['name']!.first,
          unittest.equals(arg_name),
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
        final resp = convert.json.encode(buildListJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.aggregated(arg_projectId,
          filter: arg_filter,
          location: arg_location,
          name: arg_name,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListJobsResponse(response as api.ListJobsResponse);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.jobs;
      final arg_request = buildJob();
      final arg_projectId = 'foo';
      final arg_location = 'foo';
      final arg_replaceJobId = 'foo';
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Job.fromJson(json as core.Map<core.String, core.dynamic>);
        checkJob(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/jobs', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/jobs'),
        );
        pathOffset += 5;

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
          queryMap['location']!.first,
          unittest.equals(arg_location),
        );
        unittest.expect(
          queryMap['replaceJobId']!.first,
          unittest.equals(arg_replaceJobId),
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
        final resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(arg_request, arg_projectId,
          location: arg_location,
          replaceJobId: arg_replaceJobId,
          view: arg_view,
          $fields: arg_$fields);
      checkJob(response as api.Job);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.jobs;
      final arg_projectId = 'foo';
      final arg_jobId = 'foo';
      final arg_location = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/jobs/'),
        );
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_jobId'),
        );

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
          queryMap['location']!.first,
          unittest.equals(arg_location),
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
        final resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_projectId, arg_jobId,
          location: arg_location, view: arg_view, $fields: arg_$fields);
      checkJob(response as api.Job);
    });

    unittest.test('method--getMetrics', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.jobs;
      final arg_projectId = 'foo';
      final arg_jobId = 'foo';
      final arg_location = 'foo';
      final arg_startTime = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/jobs/'),
        );
        pathOffset += 6;
        index = path.indexOf('/metrics', pathOffset);
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
          unittest.equals('/metrics'),
        );
        pathOffset += 8;

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
          queryMap['location']!.first,
          unittest.equals(arg_location),
        );
        unittest.expect(
          queryMap['startTime']!.first,
          unittest.equals(arg_startTime),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildJobMetrics());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getMetrics(arg_projectId, arg_jobId,
          location: arg_location,
          startTime: arg_startTime,
          $fields: arg_$fields);
      checkJobMetrics(response as api.JobMetrics);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.jobs;
      final arg_projectId = 'foo';
      final arg_filter = 'foo';
      final arg_location = 'foo';
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/jobs', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/jobs'),
        );
        pathOffset += 5;

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
          queryMap['location']!.first,
          unittest.equals(arg_location),
        );
        unittest.expect(
          queryMap['name']!.first,
          unittest.equals(arg_name),
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
        final resp = convert.json.encode(buildListJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_projectId,
          filter: arg_filter,
          location: arg_location,
          name: arg_name,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListJobsResponse(response as api.ListJobsResponse);
    });

    unittest.test('method--snapshot', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.jobs;
      final arg_request = buildSnapshotJobRequest();
      final arg_projectId = 'foo';
      final arg_jobId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SnapshotJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSnapshotJobRequest(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/jobs/'),
        );
        pathOffset += 6;
        index = path.indexOf(':snapshot', pathOffset);
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
          unittest.equals(':snapshot'),
        );
        pathOffset += 9;

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
        final resp = convert.json.encode(buildSnapshot());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.snapshot(arg_request, arg_projectId, arg_jobId,
          $fields: arg_$fields);
      checkSnapshot(response as api.Snapshot);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.jobs;
      final arg_request = buildJob();
      final arg_projectId = 'foo';
      final arg_jobId = 'foo';
      final arg_location = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Job.fromJson(json as core.Map<core.String, core.dynamic>);
        checkJob(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/jobs/'),
        );
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_jobId'),
        );

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
          queryMap['location']!.first,
          unittest.equals(arg_location),
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
        final resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_projectId, arg_jobId,
          location: arg_location,
          updateMask: arg_updateMask,
          $fields: arg_$fields);
      checkJob(response as api.Job);
    });
  });

  unittest.group('resource-ProjectsJobsDebugResource', () {
    unittest.test('method--getConfig', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.jobs.debug;
      final arg_request = buildGetDebugConfigRequest();
      final arg_projectId = 'foo';
      final arg_jobId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetDebugConfigRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetDebugConfigRequest(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/jobs/'),
        );
        pathOffset += 6;
        index = path.indexOf('/debug/getConfig', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_jobId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/debug/getConfig'),
        );
        pathOffset += 16;

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
        final resp = convert.json.encode(buildGetDebugConfigResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getConfig(
          arg_request, arg_projectId, arg_jobId,
          $fields: arg_$fields);
      checkGetDebugConfigResponse(response as api.GetDebugConfigResponse);
    });

    unittest.test('method--sendCapture', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.jobs.debug;
      final arg_request = buildSendDebugCaptureRequest();
      final arg_projectId = 'foo';
      final arg_jobId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SendDebugCaptureRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSendDebugCaptureRequest(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/jobs/'),
        );
        pathOffset += 6;
        index = path.indexOf('/debug/sendCapture', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_jobId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/debug/sendCapture'),
        );
        pathOffset += 18;

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
        final resp = convert.json.encode(buildSendDebugCaptureResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.sendCapture(
          arg_request, arg_projectId, arg_jobId,
          $fields: arg_$fields);
      checkSendDebugCaptureResponse(response as api.SendDebugCaptureResponse);
    });
  });

  unittest.group('resource-ProjectsJobsMessagesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.jobs.messages;
      final arg_projectId = 'foo';
      final arg_jobId = 'foo';
      final arg_endTime = 'foo';
      final arg_location = 'foo';
      final arg_minimumImportance = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_startTime = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/jobs/'),
        );
        pathOffset += 6;
        index = path.indexOf('/messages', pathOffset);
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
          unittest.equals('/messages'),
        );
        pathOffset += 9;

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
          queryMap['endTime']!.first,
          unittest.equals(arg_endTime),
        );
        unittest.expect(
          queryMap['location']!.first,
          unittest.equals(arg_location),
        );
        unittest.expect(
          queryMap['minimumImportance']!.first,
          unittest.equals(arg_minimumImportance),
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
          queryMap['startTime']!.first,
          unittest.equals(arg_startTime),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListJobMessagesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_projectId, arg_jobId,
          endTime: arg_endTime,
          location: arg_location,
          minimumImportance: arg_minimumImportance,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          startTime: arg_startTime,
          $fields: arg_$fields);
      checkListJobMessagesResponse(response as api.ListJobMessagesResponse);
    });
  });

  unittest.group('resource-ProjectsJobsWorkItemsResource', () {
    unittest.test('method--lease', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.jobs.workItems;
      final arg_request = buildLeaseWorkItemRequest();
      final arg_projectId = 'foo';
      final arg_jobId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LeaseWorkItemRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLeaseWorkItemRequest(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/jobs/'),
        );
        pathOffset += 6;
        index = path.indexOf('/workItems:lease', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_jobId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/workItems:lease'),
        );
        pathOffset += 16;

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
        final resp = convert.json.encode(buildLeaseWorkItemResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.lease(arg_request, arg_projectId, arg_jobId,
          $fields: arg_$fields);
      checkLeaseWorkItemResponse(response as api.LeaseWorkItemResponse);
    });

    unittest.test('method--reportStatus', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.jobs.workItems;
      final arg_request = buildReportWorkItemStatusRequest();
      final arg_projectId = 'foo';
      final arg_jobId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReportWorkItemStatusRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReportWorkItemStatusRequest(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/jobs/'),
        );
        pathOffset += 6;
        index = path.indexOf('/workItems:reportStatus', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_jobId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('/workItems:reportStatus'),
        );
        pathOffset += 23;

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
        final resp = convert.json.encode(buildReportWorkItemStatusResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.reportStatus(
          arg_request, arg_projectId, arg_jobId,
          $fields: arg_$fields);
      checkReportWorkItemStatusResponse(
          response as api.ReportWorkItemStatusResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--workerMessages', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.locations;
      final arg_request = buildSendWorkerMessagesRequest();
      final arg_projectId = 'foo';
      final arg_location = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SendWorkerMessagesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSendWorkerMessagesRequest(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/WorkerMessages', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 15),
          unittest.equals('/WorkerMessages'),
        );
        pathOffset += 15;

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
        final resp = convert.json.encode(buildSendWorkerMessagesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.workerMessages(
          arg_request, arg_projectId, arg_location,
          $fields: arg_$fields);
      checkSendWorkerMessagesResponse(
          response as api.SendWorkerMessagesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsFlexTemplatesResource', () {
    unittest.test('method--launch', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.locations.flexTemplates;
      final arg_request = buildLaunchFlexTemplateRequest();
      final arg_projectId = 'foo';
      final arg_location = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LaunchFlexTemplateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLaunchFlexTemplateRequest(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/flexTemplates:launch', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 21),
          unittest.equals('/flexTemplates:launch'),
        );
        pathOffset += 21;

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
        final resp = convert.json.encode(buildLaunchFlexTemplateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.launch(
          arg_request, arg_projectId, arg_location,
          $fields: arg_$fields);
      checkLaunchFlexTemplateResponse(
          response as api.LaunchFlexTemplateResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsJobsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.locations.jobs;
      final arg_request = buildJob();
      final arg_projectId = 'foo';
      final arg_location = 'foo';
      final arg_replaceJobId = 'foo';
      final arg_view = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Job.fromJson(json as core.Map<core.String, core.dynamic>);
        checkJob(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/jobs', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/jobs'),
        );
        pathOffset += 5;

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
          queryMap['replaceJobId']!.first,
          unittest.equals(arg_replaceJobId),
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
        final resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(
          arg_request, arg_projectId, arg_location,
          replaceJobId: arg_replaceJobId, view: arg_view, $fields: arg_$fields);
      checkJob(response as api.Job);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.locations.jobs;
      final arg_projectId = 'foo';
      final arg_location = 'foo';
      final arg_jobId = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/jobs/'),
        );
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_jobId'),
        );

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
        final resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_projectId, arg_location, arg_jobId,
          view: arg_view, $fields: arg_$fields);
      checkJob(response as api.Job);
    });

    unittest.test('method--getExecutionDetails', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.locations.jobs;
      final arg_projectId = 'foo';
      final arg_location = 'foo';
      final arg_jobId = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/jobs/'),
        );
        pathOffset += 6;
        index = path.indexOf('/executionDetails', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_jobId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/executionDetails'),
        );
        pathOffset += 17;

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
        final resp = convert.json.encode(buildJobExecutionDetails());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getExecutionDetails(
          arg_projectId, arg_location, arg_jobId,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          $fields: arg_$fields);
      checkJobExecutionDetails(response as api.JobExecutionDetails);
    });

    unittest.test('method--getMetrics', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.locations.jobs;
      final arg_projectId = 'foo';
      final arg_location = 'foo';
      final arg_jobId = 'foo';
      final arg_startTime = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/jobs/'),
        );
        pathOffset += 6;
        index = path.indexOf('/metrics', pathOffset);
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
          unittest.equals('/metrics'),
        );
        pathOffset += 8;

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
          queryMap['startTime']!.first,
          unittest.equals(arg_startTime),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildJobMetrics());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getMetrics(
          arg_projectId, arg_location, arg_jobId,
          startTime: arg_startTime, $fields: arg_$fields);
      checkJobMetrics(response as api.JobMetrics);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.locations.jobs;
      final arg_projectId = 'foo';
      final arg_location = 'foo';
      final arg_filter = 'foo';
      final arg_name = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/jobs', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 5),
          unittest.equals('/jobs'),
        );
        pathOffset += 5;

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
          queryMap['name']!.first,
          unittest.equals(arg_name),
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
        final resp = convert.json.encode(buildListJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_projectId, arg_location,
          filter: arg_filter,
          name: arg_name,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          view: arg_view,
          $fields: arg_$fields);
      checkListJobsResponse(response as api.ListJobsResponse);
    });

    unittest.test('method--snapshot', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.locations.jobs;
      final arg_request = buildSnapshotJobRequest();
      final arg_projectId = 'foo';
      final arg_location = 'foo';
      final arg_jobId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SnapshotJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSnapshotJobRequest(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/jobs/'),
        );
        pathOffset += 6;
        index = path.indexOf(':snapshot', pathOffset);
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
          unittest.equals(':snapshot'),
        );
        pathOffset += 9;

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
        final resp = convert.json.encode(buildSnapshot());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.snapshot(
          arg_request, arg_projectId, arg_location, arg_jobId,
          $fields: arg_$fields);
      checkSnapshot(response as api.Snapshot);
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.locations.jobs;
      final arg_request = buildJob();
      final arg_projectId = 'foo';
      final arg_location = 'foo';
      final arg_jobId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj =
            api.Job.fromJson(json as core.Map<core.String, core.dynamic>);
        checkJob(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/jobs/'),
        );
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_jobId'),
        );

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
        final resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_projectId, arg_location, arg_jobId,
          updateMask: arg_updateMask, $fields: arg_$fields);
      checkJob(response as api.Job);
    });
  });

  unittest.group('resource-ProjectsLocationsJobsDebugResource', () {
    unittest.test('method--getConfig', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.locations.jobs.debug;
      final arg_request = buildGetDebugConfigRequest();
      final arg_projectId = 'foo';
      final arg_location = 'foo';
      final arg_jobId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.GetDebugConfigRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetDebugConfigRequest(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/jobs/'),
        );
        pathOffset += 6;
        index = path.indexOf('/debug/getConfig', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_jobId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/debug/getConfig'),
        );
        pathOffset += 16;

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
        final resp = convert.json.encode(buildGetDebugConfigResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getConfig(
          arg_request, arg_projectId, arg_location, arg_jobId,
          $fields: arg_$fields);
      checkGetDebugConfigResponse(response as api.GetDebugConfigResponse);
    });

    unittest.test('method--sendCapture', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.locations.jobs.debug;
      final arg_request = buildSendDebugCaptureRequest();
      final arg_projectId = 'foo';
      final arg_location = 'foo';
      final arg_jobId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.SendDebugCaptureRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSendDebugCaptureRequest(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/jobs/'),
        );
        pathOffset += 6;
        index = path.indexOf('/debug/sendCapture', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_jobId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 18),
          unittest.equals('/debug/sendCapture'),
        );
        pathOffset += 18;

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
        final resp = convert.json.encode(buildSendDebugCaptureResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.sendCapture(
          arg_request, arg_projectId, arg_location, arg_jobId,
          $fields: arg_$fields);
      checkSendDebugCaptureResponse(response as api.SendDebugCaptureResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsJobsMessagesResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.locations.jobs.messages;
      final arg_projectId = 'foo';
      final arg_location = 'foo';
      final arg_jobId = 'foo';
      final arg_endTime = 'foo';
      final arg_minimumImportance = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_startTime = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/jobs/'),
        );
        pathOffset += 6;
        index = path.indexOf('/messages', pathOffset);
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
          unittest.equals('/messages'),
        );
        pathOffset += 9;

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
          queryMap['endTime']!.first,
          unittest.equals(arg_endTime),
        );
        unittest.expect(
          queryMap['minimumImportance']!.first,
          unittest.equals(arg_minimumImportance),
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
          queryMap['startTime']!.first,
          unittest.equals(arg_startTime),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListJobMessagesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_projectId, arg_location, arg_jobId,
          endTime: arg_endTime,
          minimumImportance: arg_minimumImportance,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          startTime: arg_startTime,
          $fields: arg_$fields);
      checkListJobMessagesResponse(response as api.ListJobMessagesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsJobsSnapshotsResource', () {
    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.locations.jobs.snapshots;
      final arg_projectId = 'foo';
      final arg_location = 'foo';
      final arg_jobId = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/jobs/'),
        );
        pathOffset += 6;
        index = path.indexOf('/snapshots', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_jobId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/snapshots'),
        );
        pathOffset += 10;

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
        final resp = convert.json.encode(buildListSnapshotsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_projectId, arg_location, arg_jobId,
          $fields: arg_$fields);
      checkListSnapshotsResponse(response as api.ListSnapshotsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsJobsStagesResource', () {
    unittest.test('method--getExecutionDetails', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.locations.jobs.stages;
      final arg_projectId = 'foo';
      final arg_location = 'foo';
      final arg_jobId = 'foo';
      final arg_stageId = 'foo';
      final arg_endTime = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_startTime = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/jobs/'),
        );
        pathOffset += 6;
        index = path.indexOf('/stages/', pathOffset);
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
          unittest.equals('/stages/'),
        );
        pathOffset += 8;
        index = path.indexOf('/executionDetails', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_stageId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/executionDetails'),
        );
        pathOffset += 17;

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
          queryMap['endTime']!.first,
          unittest.equals(arg_endTime),
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
          queryMap['startTime']!.first,
          unittest.equals(arg_startTime),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildStageExecutionDetails());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.getExecutionDetails(
          arg_projectId, arg_location, arg_jobId, arg_stageId,
          endTime: arg_endTime,
          pageSize: arg_pageSize,
          pageToken: arg_pageToken,
          startTime: arg_startTime,
          $fields: arg_$fields);
      checkStageExecutionDetails(response as api.StageExecutionDetails);
    });
  });

  unittest.group('resource-ProjectsLocationsJobsWorkItemsResource', () {
    unittest.test('method--lease', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.locations.jobs.workItems;
      final arg_request = buildLeaseWorkItemRequest();
      final arg_projectId = 'foo';
      final arg_location = 'foo';
      final arg_jobId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LeaseWorkItemRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLeaseWorkItemRequest(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/jobs/'),
        );
        pathOffset += 6;
        index = path.indexOf('/workItems:lease', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_jobId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 16),
          unittest.equals('/workItems:lease'),
        );
        pathOffset += 16;

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
        final resp = convert.json.encode(buildLeaseWorkItemResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.lease(
          arg_request, arg_projectId, arg_location, arg_jobId,
          $fields: arg_$fields);
      checkLeaseWorkItemResponse(response as api.LeaseWorkItemResponse);
    });

    unittest.test('method--reportStatus', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.locations.jobs.workItems;
      final arg_request = buildReportWorkItemStatusRequest();
      final arg_projectId = 'foo';
      final arg_location = 'foo';
      final arg_jobId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.ReportWorkItemStatusRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReportWorkItemStatusRequest(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 6),
          unittest.equals('/jobs/'),
        );
        pathOffset += 6;
        index = path.indexOf('/workItems:reportStatus', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_jobId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 23),
          unittest.equals('/workItems:reportStatus'),
        );
        pathOffset += 23;

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
        final resp = convert.json.encode(buildReportWorkItemStatusResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.reportStatus(
          arg_request, arg_projectId, arg_location, arg_jobId,
          $fields: arg_$fields);
      checkReportWorkItemStatusResponse(
          response as api.ReportWorkItemStatusResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsSnapshotsResource', () {
    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.locations.snapshots;
      final arg_projectId = 'foo';
      final arg_location = 'foo';
      final arg_snapshotId = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/snapshots/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/snapshots/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_snapshotId'),
        );

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
        final resp = convert.json.encode(buildDeleteSnapshotResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.delete(
          arg_projectId, arg_location, arg_snapshotId,
          $fields: arg_$fields);
      checkDeleteSnapshotResponse(response as api.DeleteSnapshotResponse);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.locations.snapshots;
      final arg_projectId = 'foo';
      final arg_location = 'foo';
      final arg_snapshotId = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/snapshots/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/snapshots/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_snapshotId'),
        );

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
        final resp = convert.json.encode(buildSnapshot());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(
          arg_projectId, arg_location, arg_snapshotId,
          $fields: arg_$fields);
      checkSnapshot(response as api.Snapshot);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.locations.snapshots;
      final arg_projectId = 'foo';
      final arg_location = 'foo';
      final arg_jobId = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/snapshots', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/snapshots'),
        );
        pathOffset += 10;

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
          queryMap['jobId']!.first,
          unittest.equals(arg_jobId),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListSnapshotsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_projectId, arg_location,
          jobId: arg_jobId, $fields: arg_$fields);
      checkListSnapshotsResponse(response as api.ListSnapshotsResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsTemplatesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.locations.templates;
      final arg_request = buildCreateJobFromTemplateRequest();
      final arg_projectId = 'foo';
      final arg_location = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateJobFromTemplateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateJobFromTemplateRequest(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/templates', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/templates'),
        );
        pathOffset += 10;

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
        final resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.create(
          arg_request, arg_projectId, arg_location,
          $fields: arg_$fields);
      checkJob(response as api.Job);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.locations.templates;
      final arg_projectId = 'foo';
      final arg_location = 'foo';
      final arg_gcsPath = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/templates:get', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/templates:get'),
        );
        pathOffset += 14;

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
          queryMap['gcsPath']!.first,
          unittest.equals(arg_gcsPath),
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
        final resp = convert.json.encode(buildGetTemplateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_projectId, arg_location,
          gcsPath: arg_gcsPath, view: arg_view, $fields: arg_$fields);
      checkGetTemplateResponse(response as api.GetTemplateResponse);
    });

    unittest.test('method--launch', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.locations.templates;
      final arg_request = buildLaunchTemplateParameters();
      final arg_projectId = 'foo';
      final arg_location = 'foo';
      final arg_dynamicTemplate_gcsPath = 'foo';
      final arg_dynamicTemplate_stagingLocation = 'foo';
      final arg_gcsPath = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LaunchTemplateParameters.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLaunchTemplateParameters(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/locations/'),
        );
        pathOffset += 11;
        index = path.indexOf('/templates:launch', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/templates:launch'),
        );
        pathOffset += 17;

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
          queryMap['dynamicTemplate.gcsPath']!.first,
          unittest.equals(arg_dynamicTemplate_gcsPath),
        );
        unittest.expect(
          queryMap['dynamicTemplate.stagingLocation']!.first,
          unittest.equals(arg_dynamicTemplate_stagingLocation),
        );
        unittest.expect(
          queryMap['gcsPath']!.first,
          unittest.equals(arg_gcsPath),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLaunchTemplateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.launch(
          arg_request, arg_projectId, arg_location,
          dynamicTemplate_gcsPath: arg_dynamicTemplate_gcsPath,
          dynamicTemplate_stagingLocation: arg_dynamicTemplate_stagingLocation,
          gcsPath: arg_gcsPath,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkLaunchTemplateResponse(response as api.LaunchTemplateResponse);
    });
  });

  unittest.group('resource-ProjectsSnapshotsResource', () {
    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.snapshots;
      final arg_projectId = 'foo';
      final arg_snapshotId = 'foo';
      final arg_location = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/snapshots/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 11),
          unittest.equals('/snapshots/'),
        );
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(
          subPart,
          unittest.equals('$arg_snapshotId'),
        );

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
          queryMap['location']!.first,
          unittest.equals(arg_location),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildSnapshot());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_projectId, arg_snapshotId,
          location: arg_location, $fields: arg_$fields);
      checkSnapshot(response as api.Snapshot);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.snapshots;
      final arg_projectId = 'foo';
      final arg_jobId = 'foo';
      final arg_location = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/snapshots', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/snapshots'),
        );
        pathOffset += 10;

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
          queryMap['jobId']!.first,
          unittest.equals(arg_jobId),
        );
        unittest.expect(
          queryMap['location']!.first,
          unittest.equals(arg_location),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildListSnapshotsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.list(arg_projectId,
          jobId: arg_jobId, location: arg_location, $fields: arg_$fields);
      checkListSnapshotsResponse(response as api.ListSnapshotsResponse);
    });
  });

  unittest.group('resource-ProjectsTemplatesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.templates;
      final arg_request = buildCreateJobFromTemplateRequest();
      final arg_projectId = 'foo';
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.CreateJobFromTemplateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateJobFromTemplateRequest(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/templates', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 10),
          unittest.equals('/templates'),
        );
        pathOffset += 10;

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
        final resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response =
          await res.create(arg_request, arg_projectId, $fields: arg_$fields);
      checkJob(response as api.Job);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.templates;
      final arg_projectId = 'foo';
      final arg_gcsPath = 'foo';
      final arg_location = 'foo';
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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/templates:get', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('/templates:get'),
        );
        pathOffset += 14;

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
          queryMap['gcsPath']!.first,
          unittest.equals(arg_gcsPath),
        );
        unittest.expect(
          queryMap['location']!.first,
          unittest.equals(arg_location),
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
        final resp = convert.json.encode(buildGetTemplateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.get(arg_projectId,
          gcsPath: arg_gcsPath,
          location: arg_location,
          view: arg_view,
          $fields: arg_$fields);
      checkGetTemplateResponse(response as api.GetTemplateResponse);
    });

    unittest.test('method--launch', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.templates;
      final arg_request = buildLaunchTemplateParameters();
      final arg_projectId = 'foo';
      final arg_dynamicTemplate_gcsPath = 'foo';
      final arg_dynamicTemplate_stagingLocation = 'foo';
      final arg_gcsPath = 'foo';
      final arg_location = 'foo';
      final arg_validateOnly = true;
      final arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        final obj = api.LaunchTemplateParameters.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLaunchTemplateParameters(obj);

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
          path.substring(pathOffset, pathOffset + 14),
          unittest.equals('v1b3/projects/'),
        );
        pathOffset += 14;
        index = path.indexOf('/templates:launch', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_projectId'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 17),
          unittest.equals('/templates:launch'),
        );
        pathOffset += 17;

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
          queryMap['dynamicTemplate.gcsPath']!.first,
          unittest.equals(arg_dynamicTemplate_gcsPath),
        );
        unittest.expect(
          queryMap['dynamicTemplate.stagingLocation']!.first,
          unittest.equals(arg_dynamicTemplate_stagingLocation),
        );
        unittest.expect(
          queryMap['gcsPath']!.first,
          unittest.equals(arg_gcsPath),
        );
        unittest.expect(
          queryMap['location']!.first,
          unittest.equals(arg_location),
        );
        unittest.expect(
          queryMap['validateOnly']!.first,
          unittest.equals('$arg_validateOnly'),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildLaunchTemplateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.launch(arg_request, arg_projectId,
          dynamicTemplate_gcsPath: arg_dynamicTemplate_gcsPath,
          dynamicTemplate_stagingLocation: arg_dynamicTemplate_stagingLocation,
          gcsPath: arg_gcsPath,
          location: arg_location,
          validateOnly: arg_validateOnly,
          $fields: arg_$fields);
      checkLaunchTemplateResponse(response as api.LaunchTemplateResponse);
    });
  });
}
