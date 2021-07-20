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

core.List<api.StreamLocation> buildUnnamed8587() => [
      buildStreamLocation(),
      buildStreamLocation(),
    ];

void checkUnnamed8587(core.List<api.StreamLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStreamLocation(o[0]);
  checkStreamLocation(o[1]);
}

core.List<api.KeyRangeLocation> buildUnnamed8588() => [
      buildKeyRangeLocation(),
      buildKeyRangeLocation(),
    ];

void checkUnnamed8588(core.List<api.KeyRangeLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyRangeLocation(o[0]);
  checkKeyRangeLocation(o[1]);
}

core.List<api.StreamLocation> buildUnnamed8589() => [
      buildStreamLocation(),
      buildStreamLocation(),
    ];

void checkUnnamed8589(core.List<api.StreamLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStreamLocation(o[0]);
  checkStreamLocation(o[1]);
}

core.List<api.StateFamilyConfig> buildUnnamed8590() => [
      buildStateFamilyConfig(),
      buildStateFamilyConfig(),
    ];

void checkUnnamed8590(core.List<api.StateFamilyConfig> o) {
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
    o.inputs = buildUnnamed8587();
    o.keyRanges = buildUnnamed8588();
    o.outputs = buildUnnamed8589();
    o.stateFamilies = buildUnnamed8590();
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
    checkUnnamed8587(o.inputs!);
    checkUnnamed8588(o.keyRanges!);
    checkUnnamed8589(o.outputs!);
    checkUnnamed8590(o.stateFamilies!);
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

core.Map<core.String, core.String> buildUnnamed8591() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8591(core.Map<core.String, core.String> o) {
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
    o.parameters = buildUnnamed8591();
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
    checkUnnamed8591(o.parameters!);
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

core.List<core.String> buildUnnamed8592() => [
      'foo',
      'foo',
    ];

void checkUnnamed8592(core.List<core.String> o) {
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
    o.dataDisks = buildUnnamed8592();
    o.vmInstance = 'foo';
  }
  buildCounterDataDiskAssignment--;
  return o;
}

void checkDataDiskAssignment(api.DataDiskAssignment o) {
  buildCounterDataDiskAssignment++;
  if (buildCounterDataDiskAssignment < 3) {
    checkUnnamed8592(o.dataDisks!);
    unittest.expect(
      o.vmInstance!,
      unittest.equals('foo'),
    );
  }
  buildCounterDataDiskAssignment--;
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
    o.enableHotKeyLogging = true;
  }
  buildCounterDebugOptions--;
  return o;
}

void checkDebugOptions(api.DebugOptions o) {
  buildCounterDebugOptions++;
  if (buildCounterDebugOptions < 3) {
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

core.List<core.String> buildUnnamed8593() => [
      'foo',
      'foo',
    ];

void checkUnnamed8593(core.List<core.String> o) {
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

core.Map<core.String, core.Object> buildUnnamed8594() => {
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

void checkUnnamed8594(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed8595() => {
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

void checkUnnamed8595(core.Map<core.String, core.Object> o) {
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

core.List<core.String> buildUnnamed8596() => [
      'foo',
      'foo',
    ];

void checkUnnamed8596(core.List<core.String> o) {
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

core.Map<core.String, core.Object> buildUnnamed8597() => {
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

void checkUnnamed8597(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed8598() => {
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

void checkUnnamed8598(core.Map<core.String, core.Object> o) {
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

core.List<api.WorkerPool> buildUnnamed8599() => [
      buildWorkerPool(),
      buildWorkerPool(),
    ];

void checkUnnamed8599(core.List<api.WorkerPool> o) {
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
    o.experiments = buildUnnamed8593();
    o.flexResourceSchedulingGoal = 'foo';
    o.internalExperiments = buildUnnamed8594();
    o.sdkPipelineOptions = buildUnnamed8595();
    o.serviceAccountEmail = 'foo';
    o.serviceKmsKeyName = 'foo';
    o.serviceOptions = buildUnnamed8596();
    o.shuffleMode = 'foo';
    o.tempStoragePrefix = 'foo';
    o.userAgent = buildUnnamed8597();
    o.version = buildUnnamed8598();
    o.workerPools = buildUnnamed8599();
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
    checkUnnamed8593(o.experiments!);
    unittest.expect(
      o.flexResourceSchedulingGoal!,
      unittest.equals('foo'),
    );
    checkUnnamed8594(o.internalExperiments!);
    checkUnnamed8595(o.sdkPipelineOptions!);
    unittest.expect(
      o.serviceAccountEmail!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.serviceKmsKeyName!,
      unittest.equals('foo'),
    );
    checkUnnamed8596(o.serviceOptions!);
    unittest.expect(
      o.shuffleMode!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.tempStoragePrefix!,
      unittest.equals('foo'),
    );
    checkUnnamed8597(o.userAgent!);
    checkUnnamed8598(o.version!);
    checkUnnamed8599(o.workerPools!);
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

core.List<api.ComponentSource> buildUnnamed8600() => [
      buildComponentSource(),
      buildComponentSource(),
    ];

void checkUnnamed8600(core.List<api.ComponentSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComponentSource(o[0]);
  checkComponentSource(o[1]);
}

core.List<api.ComponentTransform> buildUnnamed8601() => [
      buildComponentTransform(),
      buildComponentTransform(),
    ];

void checkUnnamed8601(core.List<api.ComponentTransform> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComponentTransform(o[0]);
  checkComponentTransform(o[1]);
}

core.List<api.StageSource> buildUnnamed8602() => [
      buildStageSource(),
      buildStageSource(),
    ];

void checkUnnamed8602(core.List<api.StageSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStageSource(o[0]);
  checkStageSource(o[1]);
}

core.List<api.StageSource> buildUnnamed8603() => [
      buildStageSource(),
      buildStageSource(),
    ];

void checkUnnamed8603(core.List<api.StageSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStageSource(o[0]);
  checkStageSource(o[1]);
}

core.List<core.String> buildUnnamed8604() => [
      'foo',
      'foo',
    ];

void checkUnnamed8604(core.List<core.String> o) {
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
    o.componentSource = buildUnnamed8600();
    o.componentTransform = buildUnnamed8601();
    o.id = 'foo';
    o.inputSource = buildUnnamed8602();
    o.kind = 'foo';
    o.name = 'foo';
    o.outputSource = buildUnnamed8603();
    o.prerequisiteStage = buildUnnamed8604();
  }
  buildCounterExecutionStageSummary--;
  return o;
}

void checkExecutionStageSummary(api.ExecutionStageSummary o) {
  buildCounterExecutionStageSummary++;
  if (buildCounterExecutionStageSummary < 3) {
    checkUnnamed8600(o.componentSource!);
    checkUnnamed8601(o.componentTransform!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed8602(o.inputSource!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed8603(o.outputSource!);
    checkUnnamed8604(o.prerequisiteStage!);
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

core.List<api.InstructionInput> buildUnnamed8605() => [
      buildInstructionInput(),
      buildInstructionInput(),
    ];

void checkUnnamed8605(core.List<api.InstructionInput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstructionInput(o[0]);
  checkInstructionInput(o[1]);
}

core.int buildCounterFlattenInstruction = 0;
api.FlattenInstruction buildFlattenInstruction() {
  final o = api.FlattenInstruction();
  buildCounterFlattenInstruction++;
  if (buildCounterFlattenInstruction < 3) {
    o.inputs = buildUnnamed8605();
  }
  buildCounterFlattenInstruction--;
  return o;
}

void checkFlattenInstruction(api.FlattenInstruction o) {
  buildCounterFlattenInstruction++;
  if (buildCounterFlattenInstruction < 3) {
    checkUnnamed8605(o.inputs!);
  }
  buildCounterFlattenInstruction--;
}

core.List<core.String> buildUnnamed8606() => [
      'foo',
      'foo',
    ];

void checkUnnamed8606(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed8607() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8607(core.Map<core.String, core.String> o) {
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
    o.additionalExperiments = buildUnnamed8606();
    o.additionalUserLabels = buildUnnamed8607();
    o.diskSizeGb = 42;
    o.enableStreamingEngine = true;
    o.flexrsGoal = 'foo';
    o.ipConfiguration = 'foo';
    o.kmsKeyName = 'foo';
    o.machineType = 'foo';
    o.maxNumWorkers = 42;
    o.maxWorkers = 42;
    o.network = 'foo';
    o.numWorkers = 42;
    o.sdkContainerImage = 'foo';
    o.serviceAccountEmail = 'foo';
    o.stagingLocation = 'foo';
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
    checkUnnamed8606(o.additionalExperiments!);
    checkUnnamed8607(o.additionalUserLabels!);
    unittest.expect(
      o.diskSizeGb!,
      unittest.equals(42),
    );
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
      o.machineType!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.maxNumWorkers!,
      unittest.equals(42),
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

core.List<core.double> buildUnnamed8608() => [
      42.0,
      42.0,
    ];

void checkUnnamed8608(core.List<core.double> o) {
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
    o.elements = buildUnnamed8608();
  }
  buildCounterFloatingPointList--;
  return o;
}

void checkFloatingPointList(api.FloatingPointList o) {
  buildCounterFloatingPointList++;
  if (buildCounterFloatingPointList < 3) {
    checkUnnamed8608(o.elements!);
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

core.List<core.String> buildUnnamed8609() => [
      'foo',
      'foo',
    ];

void checkUnnamed8609(core.List<core.String> o) {
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
    o.bucketCounts = buildUnnamed8609();
    o.firstBucketOffset = 42;
  }
  buildCounterHistogram--;
  return o;
}

void checkHistogram(api.Histogram o) {
  buildCounterHistogram++;
  if (buildCounterHistogram < 3) {
    checkUnnamed8609(o.bucketCounts!);
    unittest.expect(
      o.firstBucketOffset!,
      unittest.equals(42),
    );
  }
  buildCounterHistogram--;
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

core.Map<core.String, core.Object> buildUnnamed8610() => {
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

void checkUnnamed8610(core.Map<core.String, core.Object> o) {
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
    o.codec = buildUnnamed8610();
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
    checkUnnamed8610(o.codec!);
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

core.List<api.SplitInt64> buildUnnamed8611() => [
      buildSplitInt64(),
      buildSplitInt64(),
    ];

void checkUnnamed8611(core.List<api.SplitInt64> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSplitInt64(o[0]);
  checkSplitInt64(o[1]);
}

core.int buildCounterIntegerList = 0;
api.IntegerList buildIntegerList() {
  final o = api.IntegerList();
  buildCounterIntegerList++;
  if (buildCounterIntegerList < 3) {
    o.elements = buildUnnamed8611();
  }
  buildCounterIntegerList--;
  return o;
}

void checkIntegerList(api.IntegerList o) {
  buildCounterIntegerList++;
  if (buildCounterIntegerList < 3) {
    checkUnnamed8611(o.elements!);
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

core.Map<core.String, core.String> buildUnnamed8612() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8612(core.Map<core.String, core.String> o) {
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

core.List<api.ExecutionStageState> buildUnnamed8613() => [
      buildExecutionStageState(),
      buildExecutionStageState(),
    ];

void checkUnnamed8613(core.List<api.ExecutionStageState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecutionStageState(o[0]);
  checkExecutionStageState(o[1]);
}

core.List<api.Step> buildUnnamed8614() => [
      buildStep(),
      buildStep(),
    ];

void checkUnnamed8614(core.List<api.Step> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStep(o[0]);
  checkStep(o[1]);
}

core.List<core.String> buildUnnamed8615() => [
      'foo',
      'foo',
    ];

void checkUnnamed8615(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed8616() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8616(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed8612();
    o.location = 'foo';
    o.name = 'foo';
    o.pipelineDescription = buildPipelineDescription();
    o.projectId = 'foo';
    o.replaceJobId = 'foo';
    o.replacedByJobId = 'foo';
    o.requestedState = 'foo';
    o.satisfiesPzs = true;
    o.stageStates = buildUnnamed8613();
    o.startTime = 'foo';
    o.steps = buildUnnamed8614();
    o.stepsLocation = 'foo';
    o.tempFiles = buildUnnamed8615();
    o.transformNameMapping = buildUnnamed8616();
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
    checkUnnamed8612(o.labels!);
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
    unittest.expect(o.satisfiesPzs!, unittest.isTrue);
    checkUnnamed8613(o.stageStates!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    checkUnnamed8614(o.steps!);
    unittest.expect(
      o.stepsLocation!,
      unittest.equals('foo'),
    );
    checkUnnamed8615(o.tempFiles!);
    checkUnnamed8616(o.transformNameMapping!);
    unittest.expect(
      o.type!,
      unittest.equals('foo'),
    );
  }
  buildCounterJob--;
}

core.List<api.StageSummary> buildUnnamed8617() => [
      buildStageSummary(),
      buildStageSummary(),
    ];

void checkUnnamed8617(core.List<api.StageSummary> o) {
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
    o.stages = buildUnnamed8617();
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
    checkUnnamed8617(o.stages!);
  }
  buildCounterJobExecutionDetails--;
}

core.Map<core.String, api.JobExecutionStageInfo> buildUnnamed8618() => {
      'x': buildJobExecutionStageInfo(),
      'y': buildJobExecutionStageInfo(),
    };

void checkUnnamed8618(core.Map<core.String, api.JobExecutionStageInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobExecutionStageInfo(o['x']!);
  checkJobExecutionStageInfo(o['y']!);
}

core.int buildCounterJobExecutionInfo = 0;
api.JobExecutionInfo buildJobExecutionInfo() {
  final o = api.JobExecutionInfo();
  buildCounterJobExecutionInfo++;
  if (buildCounterJobExecutionInfo < 3) {
    o.stages = buildUnnamed8618();
  }
  buildCounterJobExecutionInfo--;
  return o;
}

void checkJobExecutionInfo(api.JobExecutionInfo o) {
  buildCounterJobExecutionInfo++;
  if (buildCounterJobExecutionInfo < 3) {
    checkUnnamed8618(o.stages!);
  }
  buildCounterJobExecutionInfo--;
}

core.List<core.String> buildUnnamed8619() => [
      'foo',
      'foo',
    ];

void checkUnnamed8619(core.List<core.String> o) {
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
    o.stepName = buildUnnamed8619();
  }
  buildCounterJobExecutionStageInfo--;
  return o;
}

void checkJobExecutionStageInfo(api.JobExecutionStageInfo o) {
  buildCounterJobExecutionStageInfo++;
  if (buildCounterJobExecutionStageInfo < 3) {
    checkUnnamed8619(o.stepName!);
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

core.List<api.BigTableIODetails> buildUnnamed8620() => [
      buildBigTableIODetails(),
      buildBigTableIODetails(),
    ];

void checkUnnamed8620(core.List<api.BigTableIODetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBigTableIODetails(o[0]);
  checkBigTableIODetails(o[1]);
}

core.List<api.BigQueryIODetails> buildUnnamed8621() => [
      buildBigQueryIODetails(),
      buildBigQueryIODetails(),
    ];

void checkUnnamed8621(core.List<api.BigQueryIODetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBigQueryIODetails(o[0]);
  checkBigQueryIODetails(o[1]);
}

core.List<api.DatastoreIODetails> buildUnnamed8622() => [
      buildDatastoreIODetails(),
      buildDatastoreIODetails(),
    ];

void checkUnnamed8622(core.List<api.DatastoreIODetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatastoreIODetails(o[0]);
  checkDatastoreIODetails(o[1]);
}

core.List<api.FileIODetails> buildUnnamed8623() => [
      buildFileIODetails(),
      buildFileIODetails(),
    ];

void checkUnnamed8623(core.List<api.FileIODetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileIODetails(o[0]);
  checkFileIODetails(o[1]);
}

core.List<api.PubSubIODetails> buildUnnamed8624() => [
      buildPubSubIODetails(),
      buildPubSubIODetails(),
    ];

void checkUnnamed8624(core.List<api.PubSubIODetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPubSubIODetails(o[0]);
  checkPubSubIODetails(o[1]);
}

core.List<api.SpannerIODetails> buildUnnamed8625() => [
      buildSpannerIODetails(),
      buildSpannerIODetails(),
    ];

void checkUnnamed8625(core.List<api.SpannerIODetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpannerIODetails(o[0]);
  checkSpannerIODetails(o[1]);
}

core.int buildCounterJobMetadata = 0;
api.JobMetadata buildJobMetadata() {
  final o = api.JobMetadata();
  buildCounterJobMetadata++;
  if (buildCounterJobMetadata < 3) {
    o.bigTableDetails = buildUnnamed8620();
    o.bigqueryDetails = buildUnnamed8621();
    o.datastoreDetails = buildUnnamed8622();
    o.fileDetails = buildUnnamed8623();
    o.pubsubDetails = buildUnnamed8624();
    o.sdkVersion = buildSdkVersion();
    o.spannerDetails = buildUnnamed8625();
  }
  buildCounterJobMetadata--;
  return o;
}

void checkJobMetadata(api.JobMetadata o) {
  buildCounterJobMetadata++;
  if (buildCounterJobMetadata < 3) {
    checkUnnamed8620(o.bigTableDetails!);
    checkUnnamed8621(o.bigqueryDetails!);
    checkUnnamed8622(o.datastoreDetails!);
    checkUnnamed8623(o.fileDetails!);
    checkUnnamed8624(o.pubsubDetails!);
    checkSdkVersion(o.sdkVersion!);
    checkUnnamed8625(o.spannerDetails!);
  }
  buildCounterJobMetadata--;
}

core.List<api.MetricUpdate> buildUnnamed8626() => [
      buildMetricUpdate(),
      buildMetricUpdate(),
    ];

void checkUnnamed8626(core.List<api.MetricUpdate> o) {
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
    o.metrics = buildUnnamed8626();
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
    checkUnnamed8626(o.metrics!);
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

core.Map<core.String, core.String> buildUnnamed8627() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8627(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed8628() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8628(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed8629() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8629(core.Map<core.String, core.String> o) {
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
    o.launchOptions = buildUnnamed8627();
    o.parameters = buildUnnamed8628();
    o.transformNameMappings = buildUnnamed8629();
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
    checkUnnamed8627(o.launchOptions!);
    checkUnnamed8628(o.parameters!);
    checkUnnamed8629(o.transformNameMappings!);
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

core.Map<core.String, core.String> buildUnnamed8630() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8630(core.Map<core.String, core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed8631() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8631(core.Map<core.String, core.String> o) {
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
    o.parameters = buildUnnamed8630();
    o.transformNameMapping = buildUnnamed8631();
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
    checkUnnamed8630(o.parameters!);
    checkUnnamed8631(o.transformNameMapping!);
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

core.Map<core.String, core.Object> buildUnnamed8632() => {
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

void checkUnnamed8632(core.Map<core.String, core.Object> o) {
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

core.List<core.String> buildUnnamed8633() => [
      'foo',
      'foo',
    ];

void checkUnnamed8633(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8634() => [
      'foo',
      'foo',
    ];

void checkUnnamed8634(core.List<core.String> o) {
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
    o.requestedLeaseDuration = 'foo';
    o.unifiedWorkerRequest = buildUnnamed8632();
    o.workItemTypes = buildUnnamed8633();
    o.workerCapabilities = buildUnnamed8634();
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
      o.requestedLeaseDuration!,
      unittest.equals('foo'),
    );
    checkUnnamed8632(o.unifiedWorkerRequest!);
    checkUnnamed8633(o.workItemTypes!);
    checkUnnamed8634(o.workerCapabilities!);
    unittest.expect(
      o.workerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterLeaseWorkItemRequest--;
}

core.Map<core.String, core.Object> buildUnnamed8635() => {
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

void checkUnnamed8635(core.Map<core.String, core.Object> o) {
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

core.List<api.WorkItem> buildUnnamed8636() => [
      buildWorkItem(),
      buildWorkItem(),
    ];

void checkUnnamed8636(core.List<api.WorkItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkItem(o[0]);
  checkWorkItem(o[1]);
}

core.int buildCounterLeaseWorkItemResponse = 0;
api.LeaseWorkItemResponse buildLeaseWorkItemResponse() {
  final o = api.LeaseWorkItemResponse();
  buildCounterLeaseWorkItemResponse++;
  if (buildCounterLeaseWorkItemResponse < 3) {
    o.unifiedWorkerResponse = buildUnnamed8635();
    o.workItems = buildUnnamed8636();
  }
  buildCounterLeaseWorkItemResponse--;
  return o;
}

void checkLeaseWorkItemResponse(api.LeaseWorkItemResponse o) {
  buildCounterLeaseWorkItemResponse++;
  if (buildCounterLeaseWorkItemResponse < 3) {
    checkUnnamed8635(o.unifiedWorkerResponse!);
    checkUnnamed8636(o.workItems!);
  }
  buildCounterLeaseWorkItemResponse--;
}

core.List<api.AutoscalingEvent> buildUnnamed8637() => [
      buildAutoscalingEvent(),
      buildAutoscalingEvent(),
    ];

void checkUnnamed8637(core.List<api.AutoscalingEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutoscalingEvent(o[0]);
  checkAutoscalingEvent(o[1]);
}

core.List<api.JobMessage> buildUnnamed8638() => [
      buildJobMessage(),
      buildJobMessage(),
    ];

void checkUnnamed8638(core.List<api.JobMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobMessage(o[0]);
  checkJobMessage(o[1]);
}

core.int buildCounterListJobMessagesResponse = 0;
api.ListJobMessagesResponse buildListJobMessagesResponse() {
  final o = api.ListJobMessagesResponse();
  buildCounterListJobMessagesResponse++;
  if (buildCounterListJobMessagesResponse < 3) {
    o.autoscalingEvents = buildUnnamed8637();
    o.jobMessages = buildUnnamed8638();
    o.nextPageToken = 'foo';
  }
  buildCounterListJobMessagesResponse--;
  return o;
}

void checkListJobMessagesResponse(api.ListJobMessagesResponse o) {
  buildCounterListJobMessagesResponse++;
  if (buildCounterListJobMessagesResponse < 3) {
    checkUnnamed8637(o.autoscalingEvents!);
    checkUnnamed8638(o.jobMessages!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListJobMessagesResponse--;
}

core.List<api.FailedLocation> buildUnnamed8639() => [
      buildFailedLocation(),
      buildFailedLocation(),
    ];

void checkUnnamed8639(core.List<api.FailedLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFailedLocation(o[0]);
  checkFailedLocation(o[1]);
}

core.List<api.Job> buildUnnamed8640() => [
      buildJob(),
      buildJob(),
    ];

void checkUnnamed8640(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterListJobsResponse = 0;
api.ListJobsResponse buildListJobsResponse() {
  final o = api.ListJobsResponse();
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    o.failedLocation = buildUnnamed8639();
    o.jobs = buildUnnamed8640();
    o.nextPageToken = 'foo';
  }
  buildCounterListJobsResponse--;
  return o;
}

void checkListJobsResponse(api.ListJobsResponse o) {
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    checkUnnamed8639(o.failedLocation!);
    checkUnnamed8640(o.jobs!);
    unittest.expect(
      o.nextPageToken!,
      unittest.equals('foo'),
    );
  }
  buildCounterListJobsResponse--;
}

core.List<api.Snapshot> buildUnnamed8641() => [
      buildSnapshot(),
      buildSnapshot(),
    ];

void checkUnnamed8641(core.List<api.Snapshot> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSnapshot(o[0]);
  checkSnapshot(o[1]);
}

core.int buildCounterListSnapshotsResponse = 0;
api.ListSnapshotsResponse buildListSnapshotsResponse() {
  final o = api.ListSnapshotsResponse();
  buildCounterListSnapshotsResponse++;
  if (buildCounterListSnapshotsResponse < 3) {
    o.snapshots = buildUnnamed8641();
  }
  buildCounterListSnapshotsResponse--;
  return o;
}

void checkListSnapshotsResponse(api.ListSnapshotsResponse o) {
  buildCounterListSnapshotsResponse++;
  if (buildCounterListSnapshotsResponse < 3) {
    checkUnnamed8641(o.snapshots!);
  }
  buildCounterListSnapshotsResponse--;
}

core.List<api.ParallelInstruction> buildUnnamed8642() => [
      buildParallelInstruction(),
      buildParallelInstruction(),
    ];

void checkUnnamed8642(core.List<api.ParallelInstruction> o) {
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
    o.instructions = buildUnnamed8642();
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
    checkUnnamed8642(o.instructions!);
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

core.Map<core.String, core.String> buildUnnamed8643() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8643(core.Map<core.String, core.String> o) {
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
    o.context = buildUnnamed8643();
    o.name = 'foo';
    o.origin = 'foo';
  }
  buildCounterMetricStructuredName--;
  return o;
}

void checkMetricStructuredName(api.MetricStructuredName o) {
  buildCounterMetricStructuredName++;
  if (buildCounterMetricStructuredName < 3) {
    checkUnnamed8643(o.context!);
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
    unittest.expect(
      o.updateTime!,
      unittest.equals('foo'),
    );
  }
  buildCounterMetricUpdate--;
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

core.List<api.MultiOutputInfo> buildUnnamed8644() => [
      buildMultiOutputInfo(),
      buildMultiOutputInfo(),
    ];

void checkUnnamed8644(core.List<api.MultiOutputInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMultiOutputInfo(o[0]);
  checkMultiOutputInfo(o[1]);
}

core.List<api.SideInputInfo> buildUnnamed8645() => [
      buildSideInputInfo(),
      buildSideInputInfo(),
    ];

void checkUnnamed8645(core.List<api.SideInputInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSideInputInfo(o[0]);
  checkSideInputInfo(o[1]);
}

core.Map<core.String, core.Object> buildUnnamed8646() => {
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

void checkUnnamed8646(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted23 = (o['x']!) as core.Map;
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
  var casted24 = (o['y']!) as core.Map;
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
}

core.int buildCounterParDoInstruction = 0;
api.ParDoInstruction buildParDoInstruction() {
  final o = api.ParDoInstruction();
  buildCounterParDoInstruction++;
  if (buildCounterParDoInstruction < 3) {
    o.input = buildInstructionInput();
    o.multiOutputInfos = buildUnnamed8644();
    o.numOutputs = 42;
    o.sideInputs = buildUnnamed8645();
    o.userFn = buildUnnamed8646();
  }
  buildCounterParDoInstruction--;
  return o;
}

void checkParDoInstruction(api.ParDoInstruction o) {
  buildCounterParDoInstruction++;
  if (buildCounterParDoInstruction < 3) {
    checkInstructionInput(o.input!);
    checkUnnamed8644(o.multiOutputInfos!);
    unittest.expect(
      o.numOutputs!,
      unittest.equals(42),
    );
    checkUnnamed8645(o.sideInputs!);
    checkUnnamed8646(o.userFn!);
  }
  buildCounterParDoInstruction--;
}

core.List<api.InstructionOutput> buildUnnamed8647() => [
      buildInstructionOutput(),
      buildInstructionOutput(),
    ];

void checkUnnamed8647(core.List<api.InstructionOutput> o) {
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
    o.outputs = buildUnnamed8647();
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
    checkUnnamed8647(o.outputs!);
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
    var casted25 = (o.value!) as core.Map;
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
  buildCounterParameter--;
}

core.Map<core.String, core.String> buildUnnamed8648() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8648(core.Map<core.String, core.String> o) {
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

core.List<core.String> buildUnnamed8649() => [
      'foo',
      'foo',
    ];

void checkUnnamed8649(core.List<core.String> o) {
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
    o.customMetadata = buildUnnamed8648();
    o.helpText = 'foo';
    o.isOptional = true;
    o.label = 'foo';
    o.name = 'foo';
    o.paramType = 'foo';
    o.regexes = buildUnnamed8649();
  }
  buildCounterParameterMetadata--;
  return o;
}

void checkParameterMetadata(api.ParameterMetadata o) {
  buildCounterParameterMetadata++;
  if (buildCounterParameterMetadata < 3) {
    checkUnnamed8648(o.customMetadata!);
    unittest.expect(
      o.helpText!,
      unittest.equals('foo'),
    );
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
    checkUnnamed8649(o.regexes!);
  }
  buildCounterParameterMetadata--;
}

core.Map<core.String, core.Object> buildUnnamed8650() => {
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

void checkUnnamed8650(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted26 = (o['x']!) as core.Map;
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
  var casted27 = (o['y']!) as core.Map;
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
}

core.List<api.SideInputInfo> buildUnnamed8651() => [
      buildSideInputInfo(),
      buildSideInputInfo(),
    ];

void checkUnnamed8651(core.List<api.SideInputInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSideInputInfo(o[0]);
  checkSideInputInfo(o[1]);
}

core.Map<core.String, core.Object> buildUnnamed8652() => {
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

void checkUnnamed8652(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted28 = (o['x']!) as core.Map;
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
  var casted29 = (o['y']!) as core.Map;
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
}

core.int buildCounterPartialGroupByKeyInstruction = 0;
api.PartialGroupByKeyInstruction buildPartialGroupByKeyInstruction() {
  final o = api.PartialGroupByKeyInstruction();
  buildCounterPartialGroupByKeyInstruction++;
  if (buildCounterPartialGroupByKeyInstruction < 3) {
    o.input = buildInstructionInput();
    o.inputElementCodec = buildUnnamed8650();
    o.originalCombineValuesInputStoreName = 'foo';
    o.originalCombineValuesStepName = 'foo';
    o.sideInputs = buildUnnamed8651();
    o.valueCombiningFn = buildUnnamed8652();
  }
  buildCounterPartialGroupByKeyInstruction--;
  return o;
}

void checkPartialGroupByKeyInstruction(api.PartialGroupByKeyInstruction o) {
  buildCounterPartialGroupByKeyInstruction++;
  if (buildCounterPartialGroupByKeyInstruction < 3) {
    checkInstructionInput(o.input!);
    checkUnnamed8650(o.inputElementCodec!);
    unittest.expect(
      o.originalCombineValuesInputStoreName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.originalCombineValuesStepName!,
      unittest.equals('foo'),
    );
    checkUnnamed8651(o.sideInputs!);
    checkUnnamed8652(o.valueCombiningFn!);
  }
  buildCounterPartialGroupByKeyInstruction--;
}

core.List<api.DisplayData> buildUnnamed8653() => [
      buildDisplayData(),
      buildDisplayData(),
    ];

void checkUnnamed8653(core.List<api.DisplayData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisplayData(o[0]);
  checkDisplayData(o[1]);
}

core.List<api.ExecutionStageSummary> buildUnnamed8654() => [
      buildExecutionStageSummary(),
      buildExecutionStageSummary(),
    ];

void checkUnnamed8654(core.List<api.ExecutionStageSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecutionStageSummary(o[0]);
  checkExecutionStageSummary(o[1]);
}

core.List<api.TransformSummary> buildUnnamed8655() => [
      buildTransformSummary(),
      buildTransformSummary(),
    ];

void checkUnnamed8655(core.List<api.TransformSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransformSummary(o[0]);
  checkTransformSummary(o[1]);
}

core.int buildCounterPipelineDescription = 0;
api.PipelineDescription buildPipelineDescription() {
  final o = api.PipelineDescription();
  buildCounterPipelineDescription++;
  if (buildCounterPipelineDescription < 3) {
    o.displayData = buildUnnamed8653();
    o.executionPipelineStage = buildUnnamed8654();
    o.originalPipelineTransform = buildUnnamed8655();
  }
  buildCounterPipelineDescription--;
  return o;
}

void checkPipelineDescription(api.PipelineDescription o) {
  buildCounterPipelineDescription++;
  if (buildCounterPipelineDescription < 3) {
    checkUnnamed8653(o.displayData!);
    checkUnnamed8654(o.executionPipelineStage!);
    checkUnnamed8655(o.originalPipelineTransform!);
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

core.List<api.Point> buildUnnamed8656() => [
      buildPoint(),
      buildPoint(),
    ];

void checkUnnamed8656(core.List<api.Point> o) {
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
    o.dataPoints = buildUnnamed8656();
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
    checkUnnamed8656(o.dataPoints!);
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

core.List<core.String> buildUnnamed8657() => [
      'foo',
      'foo',
    ];

void checkUnnamed8657(core.List<core.String> o) {
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

core.int buildCounterQueryInfo = 0;
api.QueryInfo buildQueryInfo() {
  final o = api.QueryInfo();
  buildCounterQueryInfo++;
  if (buildCounterQueryInfo < 3) {
    o.queryProperty = buildUnnamed8657();
  }
  buildCounterQueryInfo--;
  return o;
}

void checkQueryInfo(api.QueryInfo o) {
  buildCounterQueryInfo++;
  if (buildCounterQueryInfo < 3) {
    checkUnnamed8657(o.queryProperty!);
  }
  buildCounterQueryInfo--;
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

core.Map<core.String, core.Object> buildUnnamed8658() => {
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

void checkUnnamed8658(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted30 = (o['x']!) as core.Map;
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
  var casted31 = (o['y']!) as core.Map;
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
}

core.List<api.WorkItemStatus> buildUnnamed8659() => [
      buildWorkItemStatus(),
      buildWorkItemStatus(),
    ];

void checkUnnamed8659(core.List<api.WorkItemStatus> o) {
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
    o.unifiedWorkerRequest = buildUnnamed8658();
    o.workItemStatuses = buildUnnamed8659();
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
    checkUnnamed8658(o.unifiedWorkerRequest!);
    checkUnnamed8659(o.workItemStatuses!);
    unittest.expect(
      o.workerId!,
      unittest.equals('foo'),
    );
  }
  buildCounterReportWorkItemStatusRequest--;
}

core.Map<core.String, core.Object> buildUnnamed8660() => {
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

void checkUnnamed8660(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted32 = (o['x']!) as core.Map;
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
  var casted33 = (o['y']!) as core.Map;
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
}

core.List<api.WorkItemServiceState> buildUnnamed8661() => [
      buildWorkItemServiceState(),
      buildWorkItemServiceState(),
    ];

void checkUnnamed8661(core.List<api.WorkItemServiceState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkItemServiceState(o[0]);
  checkWorkItemServiceState(o[1]);
}

core.int buildCounterReportWorkItemStatusResponse = 0;
api.ReportWorkItemStatusResponse buildReportWorkItemStatusResponse() {
  final o = api.ReportWorkItemStatusResponse();
  buildCounterReportWorkItemStatusResponse++;
  if (buildCounterReportWorkItemStatusResponse < 3) {
    o.unifiedWorkerResponse = buildUnnamed8660();
    o.workItemServiceStates = buildUnnamed8661();
  }
  buildCounterReportWorkItemStatusResponse--;
  return o;
}

void checkReportWorkItemStatusResponse(api.ReportWorkItemStatusResponse o) {
  buildCounterReportWorkItemStatusResponse++;
  if (buildCounterReportWorkItemStatusResponse < 3) {
    checkUnnamed8660(o.unifiedWorkerResponse!);
    checkUnnamed8661(o.workItemServiceStates!);
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

core.Map<core.String, api.ResourceUtilizationReport> buildUnnamed8662() => {
      'x': buildResourceUtilizationReport(),
      'y': buildResourceUtilizationReport(),
    };

void checkUnnamed8662(core.Map<core.String, api.ResourceUtilizationReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceUtilizationReport(o['x']!);
  checkResourceUtilizationReport(o['y']!);
}

core.List<api.CPUTime> buildUnnamed8663() => [
      buildCPUTime(),
      buildCPUTime(),
    ];

void checkUnnamed8663(core.List<api.CPUTime> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCPUTime(o[0]);
  checkCPUTime(o[1]);
}

core.List<api.MemInfo> buildUnnamed8664() => [
      buildMemInfo(),
      buildMemInfo(),
    ];

void checkUnnamed8664(core.List<api.MemInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMemInfo(o[0]);
  checkMemInfo(o[1]);
}

core.int buildCounterResourceUtilizationReport = 0;
api.ResourceUtilizationReport buildResourceUtilizationReport() {
  final o = api.ResourceUtilizationReport();
  buildCounterResourceUtilizationReport++;
  if (buildCounterResourceUtilizationReport < 3) {
    o.containers = buildUnnamed8662();
    o.cpuTime = buildUnnamed8663();
    o.memoryInfo = buildUnnamed8664();
  }
  buildCounterResourceUtilizationReport--;
  return o;
}

void checkResourceUtilizationReport(api.ResourceUtilizationReport o) {
  buildCounterResourceUtilizationReport++;
  if (buildCounterResourceUtilizationReport < 3) {
    checkUnnamed8662(o.containers!);
    checkUnnamed8663(o.cpuTime!);
    checkUnnamed8664(o.memoryInfo!);
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

core.List<core.String> buildUnnamed8665() => [
      'foo',
      'foo',
    ];

void checkUnnamed8665(core.List<core.String> o) {
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

core.Map<core.String, core.String> buildUnnamed8666() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8666(core.Map<core.String, core.String> o) {
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
    o.additionalExperiments = buildUnnamed8665();
    o.additionalUserLabels = buildUnnamed8666();
    o.bypassTempDirValidation = true;
    o.enableStreamingEngine = true;
    o.ipConfiguration = 'foo';
    o.kmsKeyName = 'foo';
    o.machineType = 'foo';
    o.maxWorkers = 42;
    o.network = 'foo';
    o.numWorkers = 42;
    o.serviceAccountEmail = 'foo';
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
    checkUnnamed8665(o.additionalExperiments!);
    checkUnnamed8666(o.additionalUserLabels!);
    unittest.expect(o.bypassTempDirValidation!, unittest.isTrue);
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

core.List<api.ParameterMetadata> buildUnnamed8667() => [
      buildParameterMetadata(),
      buildParameterMetadata(),
    ];

void checkUnnamed8667(core.List<api.ParameterMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameterMetadata(o[0]);
  checkParameterMetadata(o[1]);
}

core.int buildCounterRuntimeMetadata = 0;
api.RuntimeMetadata buildRuntimeMetadata() {
  final o = api.RuntimeMetadata();
  buildCounterRuntimeMetadata++;
  if (buildCounterRuntimeMetadata < 3) {
    o.parameters = buildUnnamed8667();
    o.sdkInfo = buildSDKInfo();
  }
  buildCounterRuntimeMetadata--;
  return o;
}

void checkRuntimeMetadata(api.RuntimeMetadata o) {
  buildCounterRuntimeMetadata++;
  if (buildCounterRuntimeMetadata < 3) {
    checkUnnamed8667(o.parameters!);
    checkSDKInfo(o.sdkInfo!);
  }
  buildCounterRuntimeMetadata--;
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

core.int buildCounterSdkHarnessContainerImage = 0;
api.SdkHarnessContainerImage buildSdkHarnessContainerImage() {
  final o = api.SdkHarnessContainerImage();
  buildCounterSdkHarnessContainerImage++;
  if (buildCounterSdkHarnessContainerImage < 3) {
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

core.int buildCounterSdkVersion = 0;
api.SdkVersion buildSdkVersion() {
  final o = api.SdkVersion();
  buildCounterSdkVersion++;
  if (buildCounterSdkVersion < 3) {
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

core.List<api.WorkerMessage> buildUnnamed8668() => [
      buildWorkerMessage(),
      buildWorkerMessage(),
    ];

void checkUnnamed8668(core.List<api.WorkerMessage> o) {
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
    o.workerMessages = buildUnnamed8668();
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
    checkUnnamed8668(o.workerMessages!);
  }
  buildCounterSendWorkerMessagesRequest--;
}

core.List<api.WorkerMessageResponse> buildUnnamed8669() => [
      buildWorkerMessageResponse(),
      buildWorkerMessageResponse(),
    ];

void checkUnnamed8669(core.List<api.WorkerMessageResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkerMessageResponse(o[0]);
  checkWorkerMessageResponse(o[1]);
}

core.int buildCounterSendWorkerMessagesResponse = 0;
api.SendWorkerMessagesResponse buildSendWorkerMessagesResponse() {
  final o = api.SendWorkerMessagesResponse();
  buildCounterSendWorkerMessagesResponse++;
  if (buildCounterSendWorkerMessagesResponse < 3) {
    o.workerMessageResponses = buildUnnamed8669();
  }
  buildCounterSendWorkerMessagesResponse--;
  return o;
}

void checkSendWorkerMessagesResponse(api.SendWorkerMessagesResponse o) {
  buildCounterSendWorkerMessagesResponse++;
  if (buildCounterSendWorkerMessagesResponse < 3) {
    checkUnnamed8669(o.workerMessageResponses!);
  }
  buildCounterSendWorkerMessagesResponse--;
}

core.List<api.SideInputInfo> buildUnnamed8670() => [
      buildSideInputInfo(),
      buildSideInputInfo(),
    ];

void checkUnnamed8670(core.List<api.SideInputInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSideInputInfo(o[0]);
  checkSideInputInfo(o[1]);
}

core.List<api.SeqMapTaskOutputInfo> buildUnnamed8671() => [
      buildSeqMapTaskOutputInfo(),
      buildSeqMapTaskOutputInfo(),
    ];

void checkUnnamed8671(core.List<api.SeqMapTaskOutputInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSeqMapTaskOutputInfo(o[0]);
  checkSeqMapTaskOutputInfo(o[1]);
}

core.Map<core.String, core.Object> buildUnnamed8672() => {
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

void checkUnnamed8672(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted34 = (o['x']!) as core.Map;
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
  var casted35 = (o['y']!) as core.Map;
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
}

core.int buildCounterSeqMapTask = 0;
api.SeqMapTask buildSeqMapTask() {
  final o = api.SeqMapTask();
  buildCounterSeqMapTask++;
  if (buildCounterSeqMapTask < 3) {
    o.inputs = buildUnnamed8670();
    o.name = 'foo';
    o.outputInfos = buildUnnamed8671();
    o.stageName = 'foo';
    o.systemName = 'foo';
    o.userFn = buildUnnamed8672();
  }
  buildCounterSeqMapTask--;
  return o;
}

void checkSeqMapTask(api.SeqMapTask o) {
  buildCounterSeqMapTask++;
  if (buildCounterSeqMapTask < 3) {
    checkUnnamed8670(o.inputs!);
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed8671(o.outputInfos!);
    unittest.expect(
      o.stageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.systemName!,
      unittest.equals('foo'),
    );
    checkUnnamed8672(o.userFn!);
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

core.Map<core.String, core.Object> buildUnnamed8673() => {
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

void checkUnnamed8673(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted36 = (o['x']!) as core.Map;
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
  var casted37 = (o['y']!) as core.Map;
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
}

core.List<api.Source> buildUnnamed8674() => [
      buildSource(),
      buildSource(),
    ];

void checkUnnamed8674(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0]);
  checkSource(o[1]);
}

core.int buildCounterSideInputInfo = 0;
api.SideInputInfo buildSideInputInfo() {
  final o = api.SideInputInfo();
  buildCounterSideInputInfo++;
  if (buildCounterSideInputInfo < 3) {
    o.kind = buildUnnamed8673();
    o.sources = buildUnnamed8674();
    o.tag = 'foo';
  }
  buildCounterSideInputInfo--;
  return o;
}

void checkSideInputInfo(api.SideInputInfo o) {
  buildCounterSideInputInfo++;
  if (buildCounterSideInputInfo < 3) {
    checkUnnamed8673(o.kind!);
    checkUnnamed8674(o.sources!);
    unittest.expect(
      o.tag!,
      unittest.equals('foo'),
    );
  }
  buildCounterSideInputInfo--;
}

core.Map<core.String, core.Object> buildUnnamed8675() => {
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

void checkUnnamed8675(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted38 = (o['x']!) as core.Map;
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
  var casted39 = (o['y']!) as core.Map;
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
}

core.Map<core.String, core.Object> buildUnnamed8676() => {
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

void checkUnnamed8676(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted40 = (o['x']!) as core.Map;
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
  var casted41 = (o['y']!) as core.Map;
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
}

core.int buildCounterSink = 0;
api.Sink buildSink() {
  final o = api.Sink();
  buildCounterSink++;
  if (buildCounterSink < 3) {
    o.codec = buildUnnamed8675();
    o.spec = buildUnnamed8676();
  }
  buildCounterSink--;
  return o;
}

void checkSink(api.Sink o) {
  buildCounterSink++;
  if (buildCounterSink < 3) {
    checkUnnamed8675(o.codec!);
    checkUnnamed8676(o.spec!);
  }
  buildCounterSink--;
}

core.List<api.PubsubSnapshotMetadata> buildUnnamed8677() => [
      buildPubsubSnapshotMetadata(),
      buildPubsubSnapshotMetadata(),
    ];

void checkUnnamed8677(core.List<api.PubsubSnapshotMetadata> o) {
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
    o.pubsubMetadata = buildUnnamed8677();
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
    checkUnnamed8677(o.pubsubMetadata!);
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

core.Map<core.String, core.Object> buildUnnamed8678() => {
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

void checkUnnamed8678(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted42 = (o['x']!) as core.Map;
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
  var casted43 = (o['y']!) as core.Map;
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
}

core.List<core.Map<core.String, core.Object>> buildUnnamed8679() => [
      buildUnnamed8678(),
      buildUnnamed8678(),
    ];

void checkUnnamed8679(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed8678(o[0]);
  checkUnnamed8678(o[1]);
}

core.Map<core.String, core.Object> buildUnnamed8680() => {
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

void checkUnnamed8680(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted44 = (o['x']!) as core.Map;
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
  var casted45 = (o['y']!) as core.Map;
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
}

core.Map<core.String, core.Object> buildUnnamed8681() => {
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

void checkUnnamed8681(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted46 = (o['x']!) as core.Map;
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
  var casted47 = (o['y']!) as core.Map;
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
}

core.int buildCounterSource = 0;
api.Source buildSource() {
  final o = api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.baseSpecs = buildUnnamed8679();
    o.codec = buildUnnamed8680();
    o.doesNotNeedSplitting = true;
    o.metadata = buildSourceMetadata();
    o.spec = buildUnnamed8681();
  }
  buildCounterSource--;
  return o;
}

void checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    checkUnnamed8679(o.baseSpecs!);
    checkUnnamed8680(o.codec!);
    unittest.expect(o.doesNotNeedSplitting!, unittest.isTrue);
    checkSourceMetadata(o.metadata!);
    checkUnnamed8681(o.spec!);
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

core.List<api.DerivedSource> buildUnnamed8682() => [
      buildDerivedSource(),
      buildDerivedSource(),
    ];

void checkUnnamed8682(core.List<api.DerivedSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDerivedSource(o[0]);
  checkDerivedSource(o[1]);
}

core.List<api.SourceSplitShard> buildUnnamed8683() => [
      buildSourceSplitShard(),
      buildSourceSplitShard(),
    ];

void checkUnnamed8683(core.List<api.SourceSplitShard> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSourceSplitShard(o[0]);
  checkSourceSplitShard(o[1]);
}

core.int buildCounterSourceSplitResponse = 0;
api.SourceSplitResponse buildSourceSplitResponse() {
  final o = api.SourceSplitResponse();
  buildCounterSourceSplitResponse++;
  if (buildCounterSourceSplitResponse < 3) {
    o.bundles = buildUnnamed8682();
    o.outcome = 'foo';
    o.shards = buildUnnamed8683();
  }
  buildCounterSourceSplitResponse--;
  return o;
}

void checkSourceSplitResponse(api.SourceSplitResponse o) {
  buildCounterSourceSplitResponse++;
  if (buildCounterSourceSplitResponse < 3) {
    checkUnnamed8682(o.bundles!);
    unittest.expect(
      o.outcome!,
      unittest.equals('foo'),
    );
    checkUnnamed8683(o.shards!);
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

core.List<api.WorkerDetails> buildUnnamed8684() => [
      buildWorkerDetails(),
      buildWorkerDetails(),
    ];

void checkUnnamed8684(core.List<api.WorkerDetails> o) {
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
    o.workers = buildUnnamed8684();
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
    checkUnnamed8684(o.workers!);
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

core.List<api.MetricUpdate> buildUnnamed8685() => [
      buildMetricUpdate(),
      buildMetricUpdate(),
    ];

void checkUnnamed8685(core.List<api.MetricUpdate> o) {
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
    o.metrics = buildUnnamed8685();
    o.progress = buildProgressTimeseries();
    o.stageId = 'foo';
    o.startTime = 'foo';
    o.state = 'foo';
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
    checkUnnamed8685(o.metrics!);
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

core.Map<core.String, core.Object> buildUnnamed8686() => {
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

void checkUnnamed8686(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted48 = (o['x']!) as core.Map;
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
  var casted49 = (o['y']!) as core.Map;
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
}

core.List<core.Map<core.String, core.Object>> buildUnnamed8687() => [
      buildUnnamed8686(),
      buildUnnamed8686(),
    ];

void checkUnnamed8687(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed8686(o[0]);
  checkUnnamed8686(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed8687();
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
    checkUnnamed8687(o.details!);
    unittest.expect(
      o.message!,
      unittest.equals('foo'),
    );
  }
  buildCounterStatus--;
}

core.Map<core.String, core.Object> buildUnnamed8688() => {
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

void checkUnnamed8688(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted50 = (o['x']!) as core.Map;
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
  var casted51 = (o['y']!) as core.Map;
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
}

core.int buildCounterStep = 0;
api.Step buildStep() {
  final o = api.Step();
  buildCounterStep++;
  if (buildCounterStep < 3) {
    o.kind = 'foo';
    o.name = 'foo';
    o.properties = buildUnnamed8688();
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
    checkUnnamed8688(o.properties!);
  }
  buildCounterStep--;
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

core.List<api.ParallelInstruction> buildUnnamed8689() => [
      buildParallelInstruction(),
      buildParallelInstruction(),
    ];

void checkUnnamed8689(core.List<api.ParallelInstruction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParallelInstruction(o[0]);
  checkParallelInstruction(o[1]);
}

core.Map<core.String, core.String> buildUnnamed8690() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8690(core.Map<core.String, core.String> o) {
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
    o.instructions = buildUnnamed8689();
    o.stageName = 'foo';
    o.systemName = 'foo';
    o.transformUserNameToStateFamily = buildUnnamed8690();
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
    checkUnnamed8689(o.instructions!);
    unittest.expect(
      o.stageName!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.systemName!,
      unittest.equals('foo'),
    );
    checkUnnamed8690(o.transformUserNameToStateFamily!);
  }
  buildCounterStreamingComputationConfig--;
}

core.List<api.KeyRangeDataDiskAssignment> buildUnnamed8691() => [
      buildKeyRangeDataDiskAssignment(),
      buildKeyRangeDataDiskAssignment(),
    ];

void checkUnnamed8691(core.List<api.KeyRangeDataDiskAssignment> o) {
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
    o.rangeAssignments = buildUnnamed8691();
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
    checkUnnamed8691(o.rangeAssignments!);
  }
  buildCounterStreamingComputationRanges--;
}

core.List<api.StreamingComputationRanges> buildUnnamed8692() => [
      buildStreamingComputationRanges(),
      buildStreamingComputationRanges(),
    ];

void checkUnnamed8692(core.List<api.StreamingComputationRanges> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStreamingComputationRanges(o[0]);
  checkStreamingComputationRanges(o[1]);
}

core.List<api.MountedDataDisk> buildUnnamed8693() => [
      buildMountedDataDisk(),
      buildMountedDataDisk(),
    ];

void checkUnnamed8693(core.List<api.MountedDataDisk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMountedDataDisk(o[0]);
  checkMountedDataDisk(o[1]);
}

core.int buildCounterStreamingComputationTask = 0;
api.StreamingComputationTask buildStreamingComputationTask() {
  final o = api.StreamingComputationTask();
  buildCounterStreamingComputationTask++;
  if (buildCounterStreamingComputationTask < 3) {
    o.computationRanges = buildUnnamed8692();
    o.dataDisks = buildUnnamed8693();
    o.taskType = 'foo';
  }
  buildCounterStreamingComputationTask--;
  return o;
}

void checkStreamingComputationTask(api.StreamingComputationTask o) {
  buildCounterStreamingComputationTask++;
  if (buildCounterStreamingComputationTask < 3) {
    checkUnnamed8692(o.computationRanges!);
    checkUnnamed8693(o.dataDisks!);
    unittest.expect(
      o.taskType!,
      unittest.equals('foo'),
    );
  }
  buildCounterStreamingComputationTask--;
}

core.List<api.StreamingComputationConfig> buildUnnamed8694() => [
      buildStreamingComputationConfig(),
      buildStreamingComputationConfig(),
    ];

void checkUnnamed8694(core.List<api.StreamingComputationConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStreamingComputationConfig(o[0]);
  checkStreamingComputationConfig(o[1]);
}

core.Map<core.String, core.String> buildUnnamed8695() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8695(core.Map<core.String, core.String> o) {
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
    o.streamingComputationConfigs = buildUnnamed8694();
    o.userStepToStateFamilyNameMap = buildUnnamed8695();
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
    checkUnnamed8694(o.streamingComputationConfigs!);
    checkUnnamed8695(o.userStepToStateFamilyNameMap!);
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

core.List<core.String> buildUnnamed8696() => [
      'foo',
      'foo',
    ];

void checkUnnamed8696(core.List<core.String> o) {
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
    o.elements = buildUnnamed8696();
  }
  buildCounterStringList--;
  return o;
}

void checkStringList(api.StringList o) {
  buildCounterStringList++;
  if (buildCounterStringList < 3) {
    checkUnnamed8696(o.elements!);
  }
  buildCounterStringList--;
}

core.List<api.Parameter> buildUnnamed8697() => [
      buildParameter(),
      buildParameter(),
    ];

void checkUnnamed8697(core.List<api.Parameter> o) {
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
    o.parameters = buildUnnamed8697();
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
    checkUnnamed8697(o.parameters!);
  }
  buildCounterStructuredMessage--;
}

core.List<core.String> buildUnnamed8698() => [
      'foo',
      'foo',
    ];

void checkUnnamed8698(core.List<core.String> o) {
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
    o.oauthScopes = buildUnnamed8698();
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
    checkUnnamed8698(o.oauthScopes!);
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

core.List<api.ParameterMetadata> buildUnnamed8699() => [
      buildParameterMetadata(),
      buildParameterMetadata(),
    ];

void checkUnnamed8699(core.List<api.ParameterMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameterMetadata(o[0]);
  checkParameterMetadata(o[1]);
}

core.int buildCounterTemplateMetadata = 0;
api.TemplateMetadata buildTemplateMetadata() {
  final o = api.TemplateMetadata();
  buildCounterTemplateMetadata++;
  if (buildCounterTemplateMetadata < 3) {
    o.description = 'foo';
    o.name = 'foo';
    o.parameters = buildUnnamed8699();
  }
  buildCounterTemplateMetadata--;
  return o;
}

void checkTemplateMetadata(api.TemplateMetadata o) {
  buildCounterTemplateMetadata++;
  if (buildCounterTemplateMetadata < 3) {
    unittest.expect(
      o.description!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed8699(o.parameters!);
  }
  buildCounterTemplateMetadata--;
}

core.List<api.ComputationTopology> buildUnnamed8700() => [
      buildComputationTopology(),
      buildComputationTopology(),
    ];

void checkUnnamed8700(core.List<api.ComputationTopology> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComputationTopology(o[0]);
  checkComputationTopology(o[1]);
}

core.List<api.DataDiskAssignment> buildUnnamed8701() => [
      buildDataDiskAssignment(),
      buildDataDiskAssignment(),
    ];

void checkUnnamed8701(core.List<api.DataDiskAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataDiskAssignment(o[0]);
  checkDataDiskAssignment(o[1]);
}

core.Map<core.String, core.String> buildUnnamed8702() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8702(core.Map<core.String, core.String> o) {
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
    o.computations = buildUnnamed8700();
    o.dataDiskAssignments = buildUnnamed8701();
    o.forwardingKeyBits = 42;
    o.persistentStateVersion = 42;
    o.userStageToComputationNameMap = buildUnnamed8702();
  }
  buildCounterTopologyConfig--;
  return o;
}

void checkTopologyConfig(api.TopologyConfig o) {
  buildCounterTopologyConfig++;
  if (buildCounterTopologyConfig < 3) {
    checkUnnamed8700(o.computations!);
    checkUnnamed8701(o.dataDiskAssignments!);
    unittest.expect(
      o.forwardingKeyBits!,
      unittest.equals(42),
    );
    unittest.expect(
      o.persistentStateVersion!,
      unittest.equals(42),
    );
    checkUnnamed8702(o.userStageToComputationNameMap!);
  }
  buildCounterTopologyConfig--;
}

core.List<api.DisplayData> buildUnnamed8703() => [
      buildDisplayData(),
      buildDisplayData(),
    ];

void checkUnnamed8703(core.List<api.DisplayData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisplayData(o[0]);
  checkDisplayData(o[1]);
}

core.List<core.String> buildUnnamed8704() => [
      'foo',
      'foo',
    ];

void checkUnnamed8704(core.List<core.String> o) {
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

core.List<core.String> buildUnnamed8705() => [
      'foo',
      'foo',
    ];

void checkUnnamed8705(core.List<core.String> o) {
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
    o.displayData = buildUnnamed8703();
    o.id = 'foo';
    o.inputCollectionName = buildUnnamed8704();
    o.kind = 'foo';
    o.name = 'foo';
    o.outputCollectionName = buildUnnamed8705();
  }
  buildCounterTransformSummary--;
  return o;
}

void checkTransformSummary(api.TransformSummary o) {
  buildCounterTransformSummary++;
  if (buildCounterTransformSummary < 3) {
    checkUnnamed8703(o.displayData!);
    unittest.expect(
      o.id!,
      unittest.equals('foo'),
    );
    checkUnnamed8704(o.inputCollectionName!);
    unittest.expect(
      o.kind!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.name!,
      unittest.equals('foo'),
    );
    checkUnnamed8705(o.outputCollectionName!);
  }
  buildCounterTransformSummary--;
}

core.int buildCounterValidateResponse = 0;
api.ValidateResponse buildValidateResponse() {
  final o = api.ValidateResponse();
  buildCounterValidateResponse++;
  if (buildCounterValidateResponse < 3) {
    o.errorMessage = 'foo';
    o.queryInfo = buildQueryInfo();
  }
  buildCounterValidateResponse--;
  return o;
}

void checkValidateResponse(api.ValidateResponse o) {
  buildCounterValidateResponse++;
  if (buildCounterValidateResponse < 3) {
    unittest.expect(
      o.errorMessage!,
      unittest.equals('foo'),
    );
    checkQueryInfo(o.queryInfo!);
  }
  buildCounterValidateResponse--;
}

core.List<api.Package> buildUnnamed8706() => [
      buildPackage(),
      buildPackage(),
    ];

void checkUnnamed8706(core.List<api.Package> o) {
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
    o.packages = buildUnnamed8706();
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
    checkUnnamed8706(o.packages!);
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

core.List<api.MetricUpdate> buildUnnamed8707() => [
      buildMetricUpdate(),
      buildMetricUpdate(),
    ];

void checkUnnamed8707(core.List<api.MetricUpdate> o) {
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
    o.metrics = buildUnnamed8707();
    o.progress = buildProgressTimeseries();
    o.startTime = 'foo';
    o.state = 'foo';
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
    checkUnnamed8707(o.metrics!);
    checkProgressTimeseries(o.progress!);
    unittest.expect(
      o.startTime!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.state!,
      unittest.equals('foo'),
    );
    unittest.expect(
      o.taskId!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkItemDetails--;
}

core.Map<core.String, core.Object> buildUnnamed8708() => {
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

void checkUnnamed8708(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted52 = (o['x']!) as core.Map;
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
  var casted53 = (o['y']!) as core.Map;
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
}

core.List<api.MetricShortId> buildUnnamed8709() => [
      buildMetricShortId(),
      buildMetricShortId(),
    ];

void checkUnnamed8709(core.List<api.MetricShortId> o) {
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
    o.harnessData = buildUnnamed8708();
    o.hotKeyDetection = buildHotKeyDetection();
    o.leaseExpireTime = 'foo';
    o.metricShortId = buildUnnamed8709();
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
    checkUnnamed8708(o.harnessData!);
    checkHotKeyDetection(o.hotKeyDetection!);
    unittest.expect(
      o.leaseExpireTime!,
      unittest.equals('foo'),
    );
    checkUnnamed8709(o.metricShortId!);
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

core.List<api.CounterUpdate> buildUnnamed8710() => [
      buildCounterUpdate(),
      buildCounterUpdate(),
    ];

void checkUnnamed8710(core.List<api.CounterUpdate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCounterUpdate(o[0]);
  checkCounterUpdate(o[1]);
}

core.List<api.Status> buildUnnamed8711() => [
      buildStatus(),
      buildStatus(),
    ];

void checkUnnamed8711(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.List<api.MetricUpdate> buildUnnamed8712() => [
      buildMetricUpdate(),
      buildMetricUpdate(),
    ];

void checkUnnamed8712(core.List<api.MetricUpdate> o) {
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
    o.counterUpdates = buildUnnamed8710();
    o.dynamicSourceSplit = buildDynamicSourceSplit();
    o.errors = buildUnnamed8711();
    o.metricUpdates = buildUnnamed8712();
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
    checkUnnamed8710(o.counterUpdates!);
    checkDynamicSourceSplit(o.dynamicSourceSplit!);
    checkUnnamed8711(o.errors!);
    checkUnnamed8712(o.metricUpdates!);
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

core.List<api.WorkItemDetails> buildUnnamed8713() => [
      buildWorkItemDetails(),
      buildWorkItemDetails(),
    ];

void checkUnnamed8713(core.List<api.WorkItemDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkItemDetails(o[0]);
  checkWorkItemDetails(o[1]);
}

core.int buildCounterWorkerDetails = 0;
api.WorkerDetails buildWorkerDetails() {
  final o = api.WorkerDetails();
  buildCounterWorkerDetails++;
  if (buildCounterWorkerDetails < 3) {
    o.workItems = buildUnnamed8713();
    o.workerName = 'foo';
  }
  buildCounterWorkerDetails--;
  return o;
}

void checkWorkerDetails(api.WorkerDetails o) {
  buildCounterWorkerDetails++;
  if (buildCounterWorkerDetails < 3) {
    checkUnnamed8713(o.workItems!);
    unittest.expect(
      o.workerName!,
      unittest.equals('foo'),
    );
  }
  buildCounterWorkerDetails--;
}

core.Map<core.String, core.Object> buildUnnamed8714() => {
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

void checkUnnamed8714(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted54 = (o['x']!) as core.Map;
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
  var casted55 = (o['y']!) as core.Map;
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
}

core.List<core.Map<core.String, core.Object>> buildUnnamed8715() => [
      buildUnnamed8714(),
      buildUnnamed8714(),
    ];

void checkUnnamed8715(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed8714(o[0]);
  checkUnnamed8714(o[1]);
}

core.int buildCounterWorkerHealthReport = 0;
api.WorkerHealthReport buildWorkerHealthReport() {
  final o = api.WorkerHealthReport();
  buildCounterWorkerHealthReport++;
  if (buildCounterWorkerHealthReport < 3) {
    o.msg = 'foo';
    o.pods = buildUnnamed8715();
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
    checkUnnamed8715(o.pods!);
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

core.Map<core.String, core.String> buildUnnamed8716() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8716(core.Map<core.String, core.String> o) {
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
    o.metadata = buildUnnamed8716();
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
    checkUnnamed8716(o.metadata!);
  }
  buildCounterWorkerLifecycleEvent--;
}

core.Map<core.String, core.String> buildUnnamed8717() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8717(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed8717();
    o.time = 'foo';
    o.workerHealthReport = buildWorkerHealthReport();
    o.workerLifecycleEvent = buildWorkerLifecycleEvent();
    o.workerMessageCode = buildWorkerMessageCode();
    o.workerMetrics = buildResourceUtilizationReport();
    o.workerShutdownNotice = buildWorkerShutdownNotice();
  }
  buildCounterWorkerMessage--;
  return o;
}

void checkWorkerMessage(api.WorkerMessage o) {
  buildCounterWorkerMessage++;
  if (buildCounterWorkerMessage < 3) {
    checkUnnamed8717(o.labels!);
    unittest.expect(
      o.time!,
      unittest.equals('foo'),
    );
    checkWorkerHealthReport(o.workerHealthReport!);
    checkWorkerLifecycleEvent(o.workerLifecycleEvent!);
    checkWorkerMessageCode(o.workerMessageCode!);
    checkResourceUtilizationReport(o.workerMetrics!);
    checkWorkerShutdownNotice(o.workerShutdownNotice!);
  }
  buildCounterWorkerMessage--;
}

core.Map<core.String, core.Object> buildUnnamed8718() => {
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

void checkUnnamed8718(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted56 = (o['x']!) as core.Map;
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
  var casted57 = (o['y']!) as core.Map;
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
}

core.int buildCounterWorkerMessageCode = 0;
api.WorkerMessageCode buildWorkerMessageCode() {
  final o = api.WorkerMessageCode();
  buildCounterWorkerMessageCode++;
  if (buildCounterWorkerMessageCode < 3) {
    o.code = 'foo';
    o.parameters = buildUnnamed8718();
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
    checkUnnamed8718(o.parameters!);
  }
  buildCounterWorkerMessageCode--;
}

core.int buildCounterWorkerMessageResponse = 0;
api.WorkerMessageResponse buildWorkerMessageResponse() {
  final o = api.WorkerMessageResponse();
  buildCounterWorkerMessageResponse++;
  if (buildCounterWorkerMessageResponse < 3) {
    o.workerHealthReportResponse = buildWorkerHealthReportResponse();
    o.workerMetricsResponse = buildResourceUtilizationReportResponse();
    o.workerShutdownNoticeResponse = buildWorkerShutdownNoticeResponse();
  }
  buildCounterWorkerMessageResponse--;
  return o;
}

void checkWorkerMessageResponse(api.WorkerMessageResponse o) {
  buildCounterWorkerMessageResponse++;
  if (buildCounterWorkerMessageResponse < 3) {
    checkWorkerHealthReportResponse(o.workerHealthReportResponse!);
    checkResourceUtilizationReportResponse(o.workerMetricsResponse!);
    checkWorkerShutdownNoticeResponse(o.workerShutdownNoticeResponse!);
  }
  buildCounterWorkerMessageResponse--;
}

core.List<api.Disk> buildUnnamed8719() => [
      buildDisk(),
      buildDisk(),
    ];

void checkUnnamed8719(core.List<api.Disk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisk(o[0]);
  checkDisk(o[1]);
}

core.Map<core.String, core.String> buildUnnamed8720() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed8720(core.Map<core.String, core.String> o) {
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

core.List<api.Package> buildUnnamed8721() => [
      buildPackage(),
      buildPackage(),
    ];

void checkUnnamed8721(core.List<api.Package> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPackage(o[0]);
  checkPackage(o[1]);
}

core.Map<core.String, core.Object> buildUnnamed8722() => {
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

void checkUnnamed8722(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted58 = (o['x']!) as core.Map;
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
  var casted59 = (o['y']!) as core.Map;
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
}

core.List<api.SdkHarnessContainerImage> buildUnnamed8723() => [
      buildSdkHarnessContainerImage(),
      buildSdkHarnessContainerImage(),
    ];

void checkUnnamed8723(core.List<api.SdkHarnessContainerImage> o) {
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
    o.dataDisks = buildUnnamed8719();
    o.defaultPackageSet = 'foo';
    o.diskSizeGb = 42;
    o.diskSourceImage = 'foo';
    o.diskType = 'foo';
    o.ipConfiguration = 'foo';
    o.kind = 'foo';
    o.machineType = 'foo';
    o.metadata = buildUnnamed8720();
    o.network = 'foo';
    o.numThreadsPerWorker = 42;
    o.numWorkers = 42;
    o.onHostMaintenance = 'foo';
    o.packages = buildUnnamed8721();
    o.poolArgs = buildUnnamed8722();
    o.sdkHarnessContainerImages = buildUnnamed8723();
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
    checkUnnamed8719(o.dataDisks!);
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
    checkUnnamed8720(o.metadata!);
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
    checkUnnamed8721(o.packages!);
    checkUnnamed8722(o.poolArgs!);
    checkUnnamed8723(o.sdkHarnessContainerImages!);
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

  unittest.group('obj-schema-HotKeyDetection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHotKeyDetection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HotKeyDetection.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkHotKeyDetection(od);
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

  unittest.group('obj-schema-PartialGroupByKeyInstruction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPartialGroupByKeyInstruction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PartialGroupByKeyInstruction.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkPartialGroupByKeyInstruction(od);
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

  unittest.group('obj-schema-QueryInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.QueryInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkQueryInfo(od);
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

  unittest.group('obj-schema-SDKInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSDKInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od =
          api.SDKInfo.fromJson(oJson as core.Map<core.String, core.dynamic>);
      checkSDKInfo(od);
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

  unittest.group('obj-schema-ValidateResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValidateResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValidateResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>);
      checkValidateResponse(od);
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
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['location']!.first,
          unittest.equals(arg_location),
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
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
          queryMap['filter']!.first,
          unittest.equals(arg_filter),
        );
        unittest.expect(
          queryMap['location']!.first,
          unittest.equals(arg_location),
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
        final resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(arg_request, arg_projectId, arg_jobId,
          location: arg_location, $fields: arg_$fields);
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
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_view = 'foo';
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
        final resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.update(
          arg_request, arg_projectId, arg_location, arg_jobId,
          $fields: arg_$fields);
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

  unittest.group('resource-ProjectsLocationsSqlResource', () {
    unittest.test('method--validate', () async {
      final mock = HttpServerMock();
      final res = api.DataflowApi(mock).projects.locations.sql;
      final arg_projectId = 'foo';
      final arg_location = 'foo';
      final arg_query = 'foo';
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
        index = path.indexOf('/sql:validate', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(
          subPart,
          unittest.equals('$arg_location'),
        );
        unittest.expect(
          path.substring(pathOffset, pathOffset + 13),
          unittest.equals('/sql:validate'),
        );
        pathOffset += 13;

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
          queryMap['query']!.first,
          unittest.equals(arg_query),
        );
        unittest.expect(
          queryMap['fields']!.first,
          unittest.equals(arg_$fields),
        );

        final h = {
          'content-type': 'application/json; charset=utf-8',
        };
        final resp = convert.json.encode(buildValidateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      final response = await res.validate(arg_projectId, arg_location,
          query: arg_query, $fields: arg_$fields);
      checkValidateResponse(response as api.ValidateResponse);
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
