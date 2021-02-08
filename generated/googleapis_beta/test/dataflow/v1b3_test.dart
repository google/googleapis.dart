// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

import 'dart:async' as async;
import 'dart:convert' as convert;
import 'dart:core' as core;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;
import 'package:googleapis_beta/dataflow/v1b3.dart' as api;

import '../test_shared.dart';

core.int buildCounterApproximateProgress = 0;
api.ApproximateProgress buildApproximateProgress() {
  var o = api.ApproximateProgress();
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
    unittest.expect(o.percentComplete, unittest.equals(42.0));
    checkPosition(o.position as api.Position);
    unittest.expect(o.remainingTime, unittest.equals('foo'));
  }
  buildCounterApproximateProgress--;
}

core.int buildCounterApproximateReportedProgress = 0;
api.ApproximateReportedProgress buildApproximateReportedProgress() {
  var o = api.ApproximateReportedProgress();
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
    checkReportedParallelism(o.consumedParallelism as api.ReportedParallelism);
    unittest.expect(o.fractionConsumed, unittest.equals(42.0));
    checkPosition(o.position as api.Position);
    checkReportedParallelism(o.remainingParallelism as api.ReportedParallelism);
  }
  buildCounterApproximateReportedProgress--;
}

core.int buildCounterApproximateSplitRequest = 0;
api.ApproximateSplitRequest buildApproximateSplitRequest() {
  var o = api.ApproximateSplitRequest();
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
    unittest.expect(o.fractionConsumed, unittest.equals(42.0));
    unittest.expect(o.fractionOfRemainder, unittest.equals(42.0));
    checkPosition(o.position as api.Position);
  }
  buildCounterApproximateSplitRequest--;
}

core.int buildCounterArtifact = 0;
api.Artifact buildArtifact() {
  var o = api.Artifact();
  buildCounterArtifact++;
  if (buildCounterArtifact < 3) {
    o.containerSpec = buildContainerSpec();
    o.jobGraphGcsPath = 'foo';
    o.metadata = buildTemplateMetadata();
  }
  buildCounterArtifact--;
  return o;
}

void checkArtifact(api.Artifact o) {
  buildCounterArtifact++;
  if (buildCounterArtifact < 3) {
    checkContainerSpec(o.containerSpec as api.ContainerSpec);
    unittest.expect(o.jobGraphGcsPath, unittest.equals('foo'));
    checkTemplateMetadata(o.metadata as api.TemplateMetadata);
  }
  buildCounterArtifact--;
}

core.int buildCounterAutoscalingEvent = 0;
api.AutoscalingEvent buildAutoscalingEvent() {
  var o = api.AutoscalingEvent();
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
    unittest.expect(o.currentNumWorkers, unittest.equals('foo'));
    checkStructuredMessage(o.description as api.StructuredMessage);
    unittest.expect(o.eventType, unittest.equals('foo'));
    unittest.expect(o.targetNumWorkers, unittest.equals('foo'));
    unittest.expect(o.time, unittest.equals('foo'));
    unittest.expect(o.workerPool, unittest.equals('foo'));
  }
  buildCounterAutoscalingEvent--;
}

core.int buildCounterAutoscalingSettings = 0;
api.AutoscalingSettings buildAutoscalingSettings() {
  var o = api.AutoscalingSettings();
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
    unittest.expect(o.algorithm, unittest.equals('foo'));
    unittest.expect(o.maxNumWorkers, unittest.equals(42));
  }
  buildCounterAutoscalingSettings--;
}

core.int buildCounterBigQueryIODetails = 0;
api.BigQueryIODetails buildBigQueryIODetails() {
  var o = api.BigQueryIODetails();
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
    unittest.expect(o.dataset, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.query, unittest.equals('foo'));
    unittest.expect(o.table, unittest.equals('foo'));
  }
  buildCounterBigQueryIODetails--;
}

core.int buildCounterBigTableIODetails = 0;
api.BigTableIODetails buildBigTableIODetails() {
  var o = api.BigTableIODetails();
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
    unittest.expect(o.instanceId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.tableId, unittest.equals('foo'));
  }
  buildCounterBigTableIODetails--;
}

core.int buildCounterCPUTime = 0;
api.CPUTime buildCPUTime() {
  var o = api.CPUTime();
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
    unittest.expect(o.rate, unittest.equals(42.0));
    unittest.expect(o.timestamp, unittest.equals('foo'));
    unittest.expect(o.totalMs, unittest.equals('foo'));
  }
  buildCounterCPUTime--;
}

core.int buildCounterCommitTemplateVersionRequest = 0;
api.CommitTemplateVersionRequest buildCommitTemplateVersionRequest() {
  var o = api.CommitTemplateVersionRequest();
  buildCounterCommitTemplateVersionRequest++;
  if (buildCounterCommitTemplateVersionRequest < 3) {
    o.templateVersion = buildTemplateVersion();
  }
  buildCounterCommitTemplateVersionRequest--;
  return o;
}

void checkCommitTemplateVersionRequest(api.CommitTemplateVersionRequest o) {
  buildCounterCommitTemplateVersionRequest++;
  if (buildCounterCommitTemplateVersionRequest < 3) {
    checkTemplateVersion(o.templateVersion as api.TemplateVersion);
  }
  buildCounterCommitTemplateVersionRequest--;
}

core.int buildCounterComponentSource = 0;
api.ComponentSource buildComponentSource() {
  var o = api.ComponentSource();
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
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.originalTransformOrCollection, unittest.equals('foo'));
    unittest.expect(o.userName, unittest.equals('foo'));
  }
  buildCounterComponentSource--;
}

core.int buildCounterComponentTransform = 0;
api.ComponentTransform buildComponentTransform() {
  var o = api.ComponentTransform();
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
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.originalTransform, unittest.equals('foo'));
    unittest.expect(o.userName, unittest.equals('foo'));
  }
  buildCounterComponentTransform--;
}

core.List<api.StreamLocation> buildUnnamed7572() {
  var o = <api.StreamLocation>[];
  o.add(buildStreamLocation());
  o.add(buildStreamLocation());
  return o;
}

void checkUnnamed7572(core.List<api.StreamLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStreamLocation(o[0] as api.StreamLocation);
  checkStreamLocation(o[1] as api.StreamLocation);
}

core.List<api.KeyRangeLocation> buildUnnamed7573() {
  var o = <api.KeyRangeLocation>[];
  o.add(buildKeyRangeLocation());
  o.add(buildKeyRangeLocation());
  return o;
}

void checkUnnamed7573(core.List<api.KeyRangeLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyRangeLocation(o[0] as api.KeyRangeLocation);
  checkKeyRangeLocation(o[1] as api.KeyRangeLocation);
}

core.List<api.StreamLocation> buildUnnamed7574() {
  var o = <api.StreamLocation>[];
  o.add(buildStreamLocation());
  o.add(buildStreamLocation());
  return o;
}

void checkUnnamed7574(core.List<api.StreamLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStreamLocation(o[0] as api.StreamLocation);
  checkStreamLocation(o[1] as api.StreamLocation);
}

core.List<api.StateFamilyConfig> buildUnnamed7575() {
  var o = <api.StateFamilyConfig>[];
  o.add(buildStateFamilyConfig());
  o.add(buildStateFamilyConfig());
  return o;
}

void checkUnnamed7575(core.List<api.StateFamilyConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStateFamilyConfig(o[0] as api.StateFamilyConfig);
  checkStateFamilyConfig(o[1] as api.StateFamilyConfig);
}

core.int buildCounterComputationTopology = 0;
api.ComputationTopology buildComputationTopology() {
  var o = api.ComputationTopology();
  buildCounterComputationTopology++;
  if (buildCounterComputationTopology < 3) {
    o.computationId = 'foo';
    o.inputs = buildUnnamed7572();
    o.keyRanges = buildUnnamed7573();
    o.outputs = buildUnnamed7574();
    o.stateFamilies = buildUnnamed7575();
    o.systemStageName = 'foo';
  }
  buildCounterComputationTopology--;
  return o;
}

void checkComputationTopology(api.ComputationTopology o) {
  buildCounterComputationTopology++;
  if (buildCounterComputationTopology < 3) {
    unittest.expect(o.computationId, unittest.equals('foo'));
    checkUnnamed7572(o.inputs);
    checkUnnamed7573(o.keyRanges);
    checkUnnamed7574(o.outputs);
    checkUnnamed7575(o.stateFamilies);
    unittest.expect(o.systemStageName, unittest.equals('foo'));
  }
  buildCounterComputationTopology--;
}

core.int buildCounterConcatPosition = 0;
api.ConcatPosition buildConcatPosition() {
  var o = api.ConcatPosition();
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
    unittest.expect(o.index, unittest.equals(42));
    checkPosition(o.position as api.Position);
  }
  buildCounterConcatPosition--;
}

core.int buildCounterContainerSpec = 0;
api.ContainerSpec buildContainerSpec() {
  var o = api.ContainerSpec();
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
    checkFlexTemplateRuntimeEnvironment(
        o.defaultEnvironment as api.FlexTemplateRuntimeEnvironment);
    unittest.expect(o.image, unittest.equals('foo'));
    checkTemplateMetadata(o.metadata as api.TemplateMetadata);
    checkSDKInfo(o.sdkInfo as api.SDKInfo);
  }
  buildCounterContainerSpec--;
}

core.int buildCounterCounterMetadata = 0;
api.CounterMetadata buildCounterMetadata() {
  var o = api.CounterMetadata();
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
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.otherUnits, unittest.equals('foo'));
    unittest.expect(o.standardUnits, unittest.equals('foo'));
  }
  buildCounterCounterMetadata--;
}

core.int buildCounterCounterStructuredName = 0;
api.CounterStructuredName buildCounterStructuredName() {
  var o = api.CounterStructuredName();
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
    unittest.expect(o.componentStepName, unittest.equals('foo'));
    unittest.expect(o.executionStepName, unittest.equals('foo'));
    unittest.expect(o.inputIndex, unittest.equals(42));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.origin, unittest.equals('foo'));
    unittest.expect(o.originNamespace, unittest.equals('foo'));
    unittest.expect(o.originalRequestingStepName, unittest.equals('foo'));
    unittest.expect(o.originalStepName, unittest.equals('foo'));
    unittest.expect(o.portion, unittest.equals('foo'));
    unittest.expect(o.workerId, unittest.equals('foo'));
  }
  buildCounterCounterStructuredName--;
}

core.int buildCounterCounterStructuredNameAndMetadata = 0;
api.CounterStructuredNameAndMetadata buildCounterStructuredNameAndMetadata() {
  var o = api.CounterStructuredNameAndMetadata();
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
    checkCounterMetadata(o.metadata as api.CounterMetadata);
    checkCounterStructuredName(o.name as api.CounterStructuredName);
  }
  buildCounterCounterStructuredNameAndMetadata--;
}

core.int buildCounterCounterUpdate = 0;
api.CounterUpdate buildCounterUpdate() {
  var o = api.CounterUpdate();
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
    unittest.expect(o.boolean, unittest.isTrue);
    unittest.expect(o.cumulative, unittest.isTrue);
    checkDistributionUpdate(o.distribution as api.DistributionUpdate);
    unittest.expect(o.floatingPoint, unittest.equals(42.0));
    checkFloatingPointList(o.floatingPointList as api.FloatingPointList);
    checkFloatingPointMean(o.floatingPointMean as api.FloatingPointMean);
    checkSplitInt64(o.integer as api.SplitInt64);
    checkIntegerGauge(o.integerGauge as api.IntegerGauge);
    checkIntegerList(o.integerList as api.IntegerList);
    checkIntegerMean(o.integerMean as api.IntegerMean);
    var casted1 = (o.internal) as core.Map;
    unittest.expect(casted1, unittest.hasLength(3));
    unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted1['bool'], unittest.equals(true));
    unittest.expect(casted1['string'], unittest.equals('foo'));
    checkNameAndKind(o.nameAndKind as api.NameAndKind);
    unittest.expect(o.shortId, unittest.equals('foo'));
    checkStringList(o.stringList as api.StringList);
    checkCounterStructuredNameAndMetadata(
        o.structuredNameAndMetadata as api.CounterStructuredNameAndMetadata);
  }
  buildCounterCounterUpdate--;
}

core.Map<core.String, core.String> buildUnnamed7576() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7576(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterCreateJobFromTemplateRequest = 0;
api.CreateJobFromTemplateRequest buildCreateJobFromTemplateRequest() {
  var o = api.CreateJobFromTemplateRequest();
  buildCounterCreateJobFromTemplateRequest++;
  if (buildCounterCreateJobFromTemplateRequest < 3) {
    o.environment = buildRuntimeEnvironment();
    o.gcsPath = 'foo';
    o.jobName = 'foo';
    o.location = 'foo';
    o.parameters = buildUnnamed7576();
  }
  buildCounterCreateJobFromTemplateRequest--;
  return o;
}

void checkCreateJobFromTemplateRequest(api.CreateJobFromTemplateRequest o) {
  buildCounterCreateJobFromTemplateRequest++;
  if (buildCounterCreateJobFromTemplateRequest < 3) {
    checkRuntimeEnvironment(o.environment as api.RuntimeEnvironment);
    unittest.expect(o.gcsPath, unittest.equals('foo'));
    unittest.expect(o.jobName, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    checkUnnamed7576(o.parameters);
  }
  buildCounterCreateJobFromTemplateRequest--;
}

core.int buildCounterCreateTemplateVersionRequest = 0;
api.CreateTemplateVersionRequest buildCreateTemplateVersionRequest() {
  var o = api.CreateTemplateVersionRequest();
  buildCounterCreateTemplateVersionRequest++;
  if (buildCounterCreateTemplateVersionRequest < 3) {
    o.templateVersion = buildTemplateVersion();
  }
  buildCounterCreateTemplateVersionRequest--;
  return o;
}

void checkCreateTemplateVersionRequest(api.CreateTemplateVersionRequest o) {
  buildCounterCreateTemplateVersionRequest++;
  if (buildCounterCreateTemplateVersionRequest < 3) {
    checkTemplateVersion(o.templateVersion as api.TemplateVersion);
  }
  buildCounterCreateTemplateVersionRequest--;
}

core.int buildCounterCustomSourceLocation = 0;
api.CustomSourceLocation buildCustomSourceLocation() {
  var o = api.CustomSourceLocation();
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
    unittest.expect(o.stateful, unittest.isTrue);
  }
  buildCounterCustomSourceLocation--;
}

core.List<core.String> buildUnnamed7577() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7577(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDataDiskAssignment = 0;
api.DataDiskAssignment buildDataDiskAssignment() {
  var o = api.DataDiskAssignment();
  buildCounterDataDiskAssignment++;
  if (buildCounterDataDiskAssignment < 3) {
    o.dataDisks = buildUnnamed7577();
    o.vmInstance = 'foo';
  }
  buildCounterDataDiskAssignment--;
  return o;
}

void checkDataDiskAssignment(api.DataDiskAssignment o) {
  buildCounterDataDiskAssignment++;
  if (buildCounterDataDiskAssignment < 3) {
    checkUnnamed7577(o.dataDisks);
    unittest.expect(o.vmInstance, unittest.equals('foo'));
  }
  buildCounterDataDiskAssignment--;
}

core.int buildCounterDatastoreIODetails = 0;
api.DatastoreIODetails buildDatastoreIODetails() {
  var o = api.DatastoreIODetails();
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
    unittest.expect(o.namespace, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterDatastoreIODetails--;
}

core.int buildCounterDeleteSnapshotResponse = 0;
api.DeleteSnapshotResponse buildDeleteSnapshotResponse() {
  var o = api.DeleteSnapshotResponse();
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
  var o = api.DerivedSource();
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
    unittest.expect(o.derivationMode, unittest.equals('foo'));
    checkSource(o.source as api.Source);
  }
  buildCounterDerivedSource--;
}

core.int buildCounterDisk = 0;
api.Disk buildDisk() {
  var o = api.Disk();
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
    unittest.expect(o.diskType, unittest.equals('foo'));
    unittest.expect(o.mountPoint, unittest.equals('foo'));
    unittest.expect(o.sizeGb, unittest.equals(42));
  }
  buildCounterDisk--;
}

core.int buildCounterDisplayData = 0;
api.DisplayData buildDisplayData() {
  var o = api.DisplayData();
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
    unittest.expect(o.boolValue, unittest.isTrue);
    unittest.expect(o.durationValue, unittest.equals('foo'));
    unittest.expect(o.floatValue, unittest.equals(42.0));
    unittest.expect(o.int64Value, unittest.equals('foo'));
    unittest.expect(o.javaClassValue, unittest.equals('foo'));
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.namespace, unittest.equals('foo'));
    unittest.expect(o.shortStrValue, unittest.equals('foo'));
    unittest.expect(o.strValue, unittest.equals('foo'));
    unittest.expect(o.timestampValue, unittest.equals('foo'));
    unittest.expect(o.url, unittest.equals('foo'));
  }
  buildCounterDisplayData--;
}

core.int buildCounterDistributionUpdate = 0;
api.DistributionUpdate buildDistributionUpdate() {
  var o = api.DistributionUpdate();
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
    checkSplitInt64(o.count as api.SplitInt64);
    checkHistogram(o.histogram as api.Histogram);
    checkSplitInt64(o.max as api.SplitInt64);
    checkSplitInt64(o.min as api.SplitInt64);
    checkSplitInt64(o.sum as api.SplitInt64);
    unittest.expect(o.sumOfSquares, unittest.equals(42.0));
  }
  buildCounterDistributionUpdate--;
}

core.int buildCounterDynamicSourceSplit = 0;
api.DynamicSourceSplit buildDynamicSourceSplit() {
  var o = api.DynamicSourceSplit();
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
    checkDerivedSource(o.primary as api.DerivedSource);
    checkDerivedSource(o.residual as api.DerivedSource);
  }
  buildCounterDynamicSourceSplit--;
}

core.int buildCounterEmpty = 0;
api.Empty buildEmpty() {
  var o = api.Empty();
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

core.List<core.String> buildUnnamed7578() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7578(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed7579() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7579(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted2 = (o['x']) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted2['bool'], unittest.equals(true));
  unittest.expect(casted2['string'], unittest.equals('foo'));
  var casted3 = (o['y']) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted3['bool'], unittest.equals(true));
  unittest.expect(casted3['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed7580() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7580(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted4 = (o['x']) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted4['bool'], unittest.equals(true));
  unittest.expect(casted4['string'], unittest.equals('foo'));
  var casted5 = (o['y']) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted5['bool'], unittest.equals(true));
  unittest.expect(casted5['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed7581() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7581(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted6 = (o['x']) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted6['bool'], unittest.equals(true));
  unittest.expect(casted6['string'], unittest.equals('foo'));
  var casted7 = (o['y']) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted7['bool'], unittest.equals(true));
  unittest.expect(casted7['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed7582() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7582(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted8 = (o['x']) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted8['bool'], unittest.equals(true));
  unittest.expect(casted8['string'], unittest.equals('foo'));
  var casted9 = (o['y']) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted9['bool'], unittest.equals(true));
  unittest.expect(casted9['string'], unittest.equals('foo'));
}

core.List<api.WorkerPool> buildUnnamed7583() {
  var o = <api.WorkerPool>[];
  o.add(buildWorkerPool());
  o.add(buildWorkerPool());
  return o;
}

void checkUnnamed7583(core.List<api.WorkerPool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkerPool(o[0] as api.WorkerPool);
  checkWorkerPool(o[1] as api.WorkerPool);
}

core.int buildCounterEnvironment = 0;
api.Environment buildEnvironment() {
  var o = api.Environment();
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    o.clusterManagerApiService = 'foo';
    o.dataset = 'foo';
    o.experiments = buildUnnamed7578();
    o.flexResourceSchedulingGoal = 'foo';
    o.internalExperiments = buildUnnamed7579();
    o.sdkPipelineOptions = buildUnnamed7580();
    o.serviceAccountEmail = 'foo';
    o.serviceKmsKeyName = 'foo';
    o.shuffleMode = 'foo';
    o.tempStoragePrefix = 'foo';
    o.userAgent = buildUnnamed7581();
    o.version = buildUnnamed7582();
    o.workerPools = buildUnnamed7583();
    o.workerRegion = 'foo';
    o.workerZone = 'foo';
  }
  buildCounterEnvironment--;
  return o;
}

void checkEnvironment(api.Environment o) {
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    unittest.expect(o.clusterManagerApiService, unittest.equals('foo'));
    unittest.expect(o.dataset, unittest.equals('foo'));
    checkUnnamed7578(o.experiments);
    unittest.expect(o.flexResourceSchedulingGoal, unittest.equals('foo'));
    checkUnnamed7579(o.internalExperiments);
    checkUnnamed7580(o.sdkPipelineOptions);
    unittest.expect(o.serviceAccountEmail, unittest.equals('foo'));
    unittest.expect(o.serviceKmsKeyName, unittest.equals('foo'));
    unittest.expect(o.shuffleMode, unittest.equals('foo'));
    unittest.expect(o.tempStoragePrefix, unittest.equals('foo'));
    checkUnnamed7581(o.userAgent);
    checkUnnamed7582(o.version);
    checkUnnamed7583(o.workerPools);
    unittest.expect(o.workerRegion, unittest.equals('foo'));
    unittest.expect(o.workerZone, unittest.equals('foo'));
  }
  buildCounterEnvironment--;
}

core.int buildCounterExecutionStageState = 0;
api.ExecutionStageState buildExecutionStageState() {
  var o = api.ExecutionStageState();
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
    unittest.expect(o.currentStateTime, unittest.equals('foo'));
    unittest.expect(o.executionStageName, unittest.equals('foo'));
    unittest.expect(o.executionStageState, unittest.equals('foo'));
  }
  buildCounterExecutionStageState--;
}

core.List<api.ComponentSource> buildUnnamed7584() {
  var o = <api.ComponentSource>[];
  o.add(buildComponentSource());
  o.add(buildComponentSource());
  return o;
}

void checkUnnamed7584(core.List<api.ComponentSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComponentSource(o[0] as api.ComponentSource);
  checkComponentSource(o[1] as api.ComponentSource);
}

core.List<api.ComponentTransform> buildUnnamed7585() {
  var o = <api.ComponentTransform>[];
  o.add(buildComponentTransform());
  o.add(buildComponentTransform());
  return o;
}

void checkUnnamed7585(core.List<api.ComponentTransform> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComponentTransform(o[0] as api.ComponentTransform);
  checkComponentTransform(o[1] as api.ComponentTransform);
}

core.List<api.StageSource> buildUnnamed7586() {
  var o = <api.StageSource>[];
  o.add(buildStageSource());
  o.add(buildStageSource());
  return o;
}

void checkUnnamed7586(core.List<api.StageSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStageSource(o[0] as api.StageSource);
  checkStageSource(o[1] as api.StageSource);
}

core.List<api.StageSource> buildUnnamed7587() {
  var o = <api.StageSource>[];
  o.add(buildStageSource());
  o.add(buildStageSource());
  return o;
}

void checkUnnamed7587(core.List<api.StageSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStageSource(o[0] as api.StageSource);
  checkStageSource(o[1] as api.StageSource);
}

core.List<core.String> buildUnnamed7588() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7588(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterExecutionStageSummary = 0;
api.ExecutionStageSummary buildExecutionStageSummary() {
  var o = api.ExecutionStageSummary();
  buildCounterExecutionStageSummary++;
  if (buildCounterExecutionStageSummary < 3) {
    o.componentSource = buildUnnamed7584();
    o.componentTransform = buildUnnamed7585();
    o.id = 'foo';
    o.inputSource = buildUnnamed7586();
    o.kind = 'foo';
    o.name = 'foo';
    o.outputSource = buildUnnamed7587();
    o.prerequisiteStage = buildUnnamed7588();
  }
  buildCounterExecutionStageSummary--;
  return o;
}

void checkExecutionStageSummary(api.ExecutionStageSummary o) {
  buildCounterExecutionStageSummary++;
  if (buildCounterExecutionStageSummary < 3) {
    checkUnnamed7584(o.componentSource);
    checkUnnamed7585(o.componentTransform);
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed7586(o.inputSource);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed7587(o.outputSource);
    checkUnnamed7588(o.prerequisiteStage);
  }
  buildCounterExecutionStageSummary--;
}

core.int buildCounterFailedLocation = 0;
api.FailedLocation buildFailedLocation() {
  var o = api.FailedLocation();
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
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterFailedLocation--;
}

core.int buildCounterFileIODetails = 0;
api.FileIODetails buildFileIODetails() {
  var o = api.FileIODetails();
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
    unittest.expect(o.filePattern, unittest.equals('foo'));
  }
  buildCounterFileIODetails--;
}

core.List<api.InstructionInput> buildUnnamed7589() {
  var o = <api.InstructionInput>[];
  o.add(buildInstructionInput());
  o.add(buildInstructionInput());
  return o;
}

void checkUnnamed7589(core.List<api.InstructionInput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstructionInput(o[0] as api.InstructionInput);
  checkInstructionInput(o[1] as api.InstructionInput);
}

core.int buildCounterFlattenInstruction = 0;
api.FlattenInstruction buildFlattenInstruction() {
  var o = api.FlattenInstruction();
  buildCounterFlattenInstruction++;
  if (buildCounterFlattenInstruction < 3) {
    o.inputs = buildUnnamed7589();
  }
  buildCounterFlattenInstruction--;
  return o;
}

void checkFlattenInstruction(api.FlattenInstruction o) {
  buildCounterFlattenInstruction++;
  if (buildCounterFlattenInstruction < 3) {
    checkUnnamed7589(o.inputs);
  }
  buildCounterFlattenInstruction--;
}

core.List<core.String> buildUnnamed7590() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7590(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed7591() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7591(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterFlexTemplateRuntimeEnvironment = 0;
api.FlexTemplateRuntimeEnvironment buildFlexTemplateRuntimeEnvironment() {
  var o = api.FlexTemplateRuntimeEnvironment();
  buildCounterFlexTemplateRuntimeEnvironment++;
  if (buildCounterFlexTemplateRuntimeEnvironment < 3) {
    o.additionalExperiments = buildUnnamed7590();
    o.additionalUserLabels = buildUnnamed7591();
    o.enableStreamingEngine = true;
    o.flexrsGoal = 'foo';
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
  buildCounterFlexTemplateRuntimeEnvironment--;
  return o;
}

void checkFlexTemplateRuntimeEnvironment(api.FlexTemplateRuntimeEnvironment o) {
  buildCounterFlexTemplateRuntimeEnvironment++;
  if (buildCounterFlexTemplateRuntimeEnvironment < 3) {
    checkUnnamed7590(o.additionalExperiments);
    checkUnnamed7591(o.additionalUserLabels);
    unittest.expect(o.enableStreamingEngine, unittest.isTrue);
    unittest.expect(o.flexrsGoal, unittest.equals('foo'));
    unittest.expect(o.ipConfiguration, unittest.equals('foo'));
    unittest.expect(o.kmsKeyName, unittest.equals('foo'));
    unittest.expect(o.machineType, unittest.equals('foo'));
    unittest.expect(o.maxWorkers, unittest.equals(42));
    unittest.expect(o.network, unittest.equals('foo'));
    unittest.expect(o.numWorkers, unittest.equals(42));
    unittest.expect(o.serviceAccountEmail, unittest.equals('foo'));
    unittest.expect(o.subnetwork, unittest.equals('foo'));
    unittest.expect(o.tempLocation, unittest.equals('foo'));
    unittest.expect(o.workerRegion, unittest.equals('foo'));
    unittest.expect(o.workerZone, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterFlexTemplateRuntimeEnvironment--;
}

core.List<core.double> buildUnnamed7592() {
  var o = <core.double>[];
  o.add(42.0);
  o.add(42.0);
  return o;
}

void checkUnnamed7592(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterFloatingPointList = 0;
api.FloatingPointList buildFloatingPointList() {
  var o = api.FloatingPointList();
  buildCounterFloatingPointList++;
  if (buildCounterFloatingPointList < 3) {
    o.elements = buildUnnamed7592();
  }
  buildCounterFloatingPointList--;
  return o;
}

void checkFloatingPointList(api.FloatingPointList o) {
  buildCounterFloatingPointList++;
  if (buildCounterFloatingPointList < 3) {
    checkUnnamed7592(o.elements);
  }
  buildCounterFloatingPointList--;
}

core.int buildCounterFloatingPointMean = 0;
api.FloatingPointMean buildFloatingPointMean() {
  var o = api.FloatingPointMean();
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
    checkSplitInt64(o.count as api.SplitInt64);
    unittest.expect(o.sum, unittest.equals(42.0));
  }
  buildCounterFloatingPointMean--;
}

core.int buildCounterGetDebugConfigRequest = 0;
api.GetDebugConfigRequest buildGetDebugConfigRequest() {
  var o = api.GetDebugConfigRequest();
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
    unittest.expect(o.componentId, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.workerId, unittest.equals('foo'));
  }
  buildCounterGetDebugConfigRequest--;
}

core.int buildCounterGetDebugConfigResponse = 0;
api.GetDebugConfigResponse buildGetDebugConfigResponse() {
  var o = api.GetDebugConfigResponse();
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
    unittest.expect(o.config, unittest.equals('foo'));
  }
  buildCounterGetDebugConfigResponse--;
}

core.int buildCounterGetTemplateResponse = 0;
api.GetTemplateResponse buildGetTemplateResponse() {
  var o = api.GetTemplateResponse();
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
    checkTemplateMetadata(o.metadata as api.TemplateMetadata);
    checkRuntimeMetadata(o.runtimeMetadata as api.RuntimeMetadata);
    checkStatus(o.status as api.Status);
    unittest.expect(o.templateType, unittest.equals('foo'));
  }
  buildCounterGetTemplateResponse--;
}

core.List<core.String> buildUnnamed7593() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7593(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterHistogram = 0;
api.Histogram buildHistogram() {
  var o = api.Histogram();
  buildCounterHistogram++;
  if (buildCounterHistogram < 3) {
    o.bucketCounts = buildUnnamed7593();
    o.firstBucketOffset = 42;
  }
  buildCounterHistogram--;
  return o;
}

void checkHistogram(api.Histogram o) {
  buildCounterHistogram++;
  if (buildCounterHistogram < 3) {
    checkUnnamed7593(o.bucketCounts);
    unittest.expect(o.firstBucketOffset, unittest.equals(42));
  }
  buildCounterHistogram--;
}

core.int buildCounterHotKeyDetection = 0;
api.HotKeyDetection buildHotKeyDetection() {
  var o = api.HotKeyDetection();
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
    unittest.expect(o.hotKeyAge, unittest.equals('foo'));
    unittest.expect(o.systemName, unittest.equals('foo'));
    unittest.expect(o.userStepName, unittest.equals('foo'));
  }
  buildCounterHotKeyDetection--;
}

core.int buildCounterInstructionInput = 0;
api.InstructionInput buildInstructionInput() {
  var o = api.InstructionInput();
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
    unittest.expect(o.outputNum, unittest.equals(42));
    unittest.expect(o.producerInstructionIndex, unittest.equals(42));
  }
  buildCounterInstructionInput--;
}

core.Map<core.String, core.Object> buildUnnamed7594() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7594(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted10 = (o['x']) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted10['bool'], unittest.equals(true));
  unittest.expect(casted10['string'], unittest.equals('foo'));
  var casted11 = (o['y']) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(casted11['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted11['bool'], unittest.equals(true));
  unittest.expect(casted11['string'], unittest.equals('foo'));
}

core.int buildCounterInstructionOutput = 0;
api.InstructionOutput buildInstructionOutput() {
  var o = api.InstructionOutput();
  buildCounterInstructionOutput++;
  if (buildCounterInstructionOutput < 3) {
    o.codec = buildUnnamed7594();
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
    checkUnnamed7594(o.codec);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.onlyCountKeyBytes, unittest.isTrue);
    unittest.expect(o.onlyCountValueBytes, unittest.isTrue);
    unittest.expect(o.originalName, unittest.equals('foo'));
    unittest.expect(o.systemName, unittest.equals('foo'));
  }
  buildCounterInstructionOutput--;
}

core.int buildCounterIntegerGauge = 0;
api.IntegerGauge buildIntegerGauge() {
  var o = api.IntegerGauge();
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
    unittest.expect(o.timestamp, unittest.equals('foo'));
    checkSplitInt64(o.value as api.SplitInt64);
  }
  buildCounterIntegerGauge--;
}

core.List<api.SplitInt64> buildUnnamed7595() {
  var o = <api.SplitInt64>[];
  o.add(buildSplitInt64());
  o.add(buildSplitInt64());
  return o;
}

void checkUnnamed7595(core.List<api.SplitInt64> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSplitInt64(o[0] as api.SplitInt64);
  checkSplitInt64(o[1] as api.SplitInt64);
}

core.int buildCounterIntegerList = 0;
api.IntegerList buildIntegerList() {
  var o = api.IntegerList();
  buildCounterIntegerList++;
  if (buildCounterIntegerList < 3) {
    o.elements = buildUnnamed7595();
  }
  buildCounterIntegerList--;
  return o;
}

void checkIntegerList(api.IntegerList o) {
  buildCounterIntegerList++;
  if (buildCounterIntegerList < 3) {
    checkUnnamed7595(o.elements);
  }
  buildCounterIntegerList--;
}

core.int buildCounterIntegerMean = 0;
api.IntegerMean buildIntegerMean() {
  var o = api.IntegerMean();
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
    checkSplitInt64(o.count as api.SplitInt64);
    checkSplitInt64(o.sum as api.SplitInt64);
  }
  buildCounterIntegerMean--;
}

core.Map<core.String, core.String> buildUnnamed7596() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7596(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<api.ExecutionStageState> buildUnnamed7597() {
  var o = <api.ExecutionStageState>[];
  o.add(buildExecutionStageState());
  o.add(buildExecutionStageState());
  return o;
}

void checkUnnamed7597(core.List<api.ExecutionStageState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecutionStageState(o[0] as api.ExecutionStageState);
  checkExecutionStageState(o[1] as api.ExecutionStageState);
}

core.List<api.Step> buildUnnamed7598() {
  var o = <api.Step>[];
  o.add(buildStep());
  o.add(buildStep());
  return o;
}

void checkUnnamed7598(core.List<api.Step> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStep(o[0] as api.Step);
  checkStep(o[1] as api.Step);
}

core.List<core.String> buildUnnamed7599() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7599(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed7600() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7600(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterJob = 0;
api.Job buildJob() {
  var o = api.Job();
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
    o.labels = buildUnnamed7596();
    o.location = 'foo';
    o.name = 'foo';
    o.pipelineDescription = buildPipelineDescription();
    o.projectId = 'foo';
    o.replaceJobId = 'foo';
    o.replacedByJobId = 'foo';
    o.requestedState = 'foo';
    o.satisfiesPzs = true;
    o.stageStates = buildUnnamed7597();
    o.startTime = 'foo';
    o.steps = buildUnnamed7598();
    o.stepsLocation = 'foo';
    o.tempFiles = buildUnnamed7599();
    o.transformNameMapping = buildUnnamed7600();
    o.type = 'foo';
  }
  buildCounterJob--;
  return o;
}

void checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    unittest.expect(o.clientRequestId, unittest.equals('foo'));
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.createdFromSnapshotId, unittest.equals('foo'));
    unittest.expect(o.currentState, unittest.equals('foo'));
    unittest.expect(o.currentStateTime, unittest.equals('foo'));
    checkEnvironment(o.environment as api.Environment);
    checkJobExecutionInfo(o.executionInfo as api.JobExecutionInfo);
    unittest.expect(o.id, unittest.equals('foo'));
    checkJobMetadata(o.jobMetadata as api.JobMetadata);
    checkUnnamed7596(o.labels);
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkPipelineDescription(o.pipelineDescription as api.PipelineDescription);
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.replaceJobId, unittest.equals('foo'));
    unittest.expect(o.replacedByJobId, unittest.equals('foo'));
    unittest.expect(o.requestedState, unittest.equals('foo'));
    unittest.expect(o.satisfiesPzs, unittest.isTrue);
    checkUnnamed7597(o.stageStates);
    unittest.expect(o.startTime, unittest.equals('foo'));
    checkUnnamed7598(o.steps);
    unittest.expect(o.stepsLocation, unittest.equals('foo'));
    checkUnnamed7599(o.tempFiles);
    checkUnnamed7600(o.transformNameMapping);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterJob--;
}

core.List<api.StageSummary> buildUnnamed7601() {
  var o = <api.StageSummary>[];
  o.add(buildStageSummary());
  o.add(buildStageSummary());
  return o;
}

void checkUnnamed7601(core.List<api.StageSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStageSummary(o[0] as api.StageSummary);
  checkStageSummary(o[1] as api.StageSummary);
}

core.int buildCounterJobExecutionDetails = 0;
api.JobExecutionDetails buildJobExecutionDetails() {
  var o = api.JobExecutionDetails();
  buildCounterJobExecutionDetails++;
  if (buildCounterJobExecutionDetails < 3) {
    o.nextPageToken = 'foo';
    o.stages = buildUnnamed7601();
  }
  buildCounterJobExecutionDetails--;
  return o;
}

void checkJobExecutionDetails(api.JobExecutionDetails o) {
  buildCounterJobExecutionDetails++;
  if (buildCounterJobExecutionDetails < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed7601(o.stages);
  }
  buildCounterJobExecutionDetails--;
}

core.Map<core.String, api.JobExecutionStageInfo> buildUnnamed7602() {
  var o = <core.String, api.JobExecutionStageInfo>{};
  o['x'] = buildJobExecutionStageInfo();
  o['y'] = buildJobExecutionStageInfo();
  return o;
}

void checkUnnamed7602(core.Map<core.String, api.JobExecutionStageInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobExecutionStageInfo(o['x'] as api.JobExecutionStageInfo);
  checkJobExecutionStageInfo(o['y'] as api.JobExecutionStageInfo);
}

core.int buildCounterJobExecutionInfo = 0;
api.JobExecutionInfo buildJobExecutionInfo() {
  var o = api.JobExecutionInfo();
  buildCounterJobExecutionInfo++;
  if (buildCounterJobExecutionInfo < 3) {
    o.stages = buildUnnamed7602();
  }
  buildCounterJobExecutionInfo--;
  return o;
}

void checkJobExecutionInfo(api.JobExecutionInfo o) {
  buildCounterJobExecutionInfo++;
  if (buildCounterJobExecutionInfo < 3) {
    checkUnnamed7602(o.stages);
  }
  buildCounterJobExecutionInfo--;
}

core.List<core.String> buildUnnamed7603() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7603(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterJobExecutionStageInfo = 0;
api.JobExecutionStageInfo buildJobExecutionStageInfo() {
  var o = api.JobExecutionStageInfo();
  buildCounterJobExecutionStageInfo++;
  if (buildCounterJobExecutionStageInfo < 3) {
    o.stepName = buildUnnamed7603();
  }
  buildCounterJobExecutionStageInfo--;
  return o;
}

void checkJobExecutionStageInfo(api.JobExecutionStageInfo o) {
  buildCounterJobExecutionStageInfo++;
  if (buildCounterJobExecutionStageInfo < 3) {
    checkUnnamed7603(o.stepName);
  }
  buildCounterJobExecutionStageInfo--;
}

core.int buildCounterJobMessage = 0;
api.JobMessage buildJobMessage() {
  var o = api.JobMessage();
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
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.messageImportance, unittest.equals('foo'));
    unittest.expect(o.messageText, unittest.equals('foo'));
    unittest.expect(o.time, unittest.equals('foo'));
  }
  buildCounterJobMessage--;
}

core.List<api.BigTableIODetails> buildUnnamed7604() {
  var o = <api.BigTableIODetails>[];
  o.add(buildBigTableIODetails());
  o.add(buildBigTableIODetails());
  return o;
}

void checkUnnamed7604(core.List<api.BigTableIODetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBigTableIODetails(o[0] as api.BigTableIODetails);
  checkBigTableIODetails(o[1] as api.BigTableIODetails);
}

core.List<api.BigQueryIODetails> buildUnnamed7605() {
  var o = <api.BigQueryIODetails>[];
  o.add(buildBigQueryIODetails());
  o.add(buildBigQueryIODetails());
  return o;
}

void checkUnnamed7605(core.List<api.BigQueryIODetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBigQueryIODetails(o[0] as api.BigQueryIODetails);
  checkBigQueryIODetails(o[1] as api.BigQueryIODetails);
}

core.List<api.DatastoreIODetails> buildUnnamed7606() {
  var o = <api.DatastoreIODetails>[];
  o.add(buildDatastoreIODetails());
  o.add(buildDatastoreIODetails());
  return o;
}

void checkUnnamed7606(core.List<api.DatastoreIODetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatastoreIODetails(o[0] as api.DatastoreIODetails);
  checkDatastoreIODetails(o[1] as api.DatastoreIODetails);
}

core.List<api.FileIODetails> buildUnnamed7607() {
  var o = <api.FileIODetails>[];
  o.add(buildFileIODetails());
  o.add(buildFileIODetails());
  return o;
}

void checkUnnamed7607(core.List<api.FileIODetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileIODetails(o[0] as api.FileIODetails);
  checkFileIODetails(o[1] as api.FileIODetails);
}

core.List<api.PubSubIODetails> buildUnnamed7608() {
  var o = <api.PubSubIODetails>[];
  o.add(buildPubSubIODetails());
  o.add(buildPubSubIODetails());
  return o;
}

void checkUnnamed7608(core.List<api.PubSubIODetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPubSubIODetails(o[0] as api.PubSubIODetails);
  checkPubSubIODetails(o[1] as api.PubSubIODetails);
}

core.List<api.SpannerIODetails> buildUnnamed7609() {
  var o = <api.SpannerIODetails>[];
  o.add(buildSpannerIODetails());
  o.add(buildSpannerIODetails());
  return o;
}

void checkUnnamed7609(core.List<api.SpannerIODetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpannerIODetails(o[0] as api.SpannerIODetails);
  checkSpannerIODetails(o[1] as api.SpannerIODetails);
}

core.int buildCounterJobMetadata = 0;
api.JobMetadata buildJobMetadata() {
  var o = api.JobMetadata();
  buildCounterJobMetadata++;
  if (buildCounterJobMetadata < 3) {
    o.bigTableDetails = buildUnnamed7604();
    o.bigqueryDetails = buildUnnamed7605();
    o.datastoreDetails = buildUnnamed7606();
    o.fileDetails = buildUnnamed7607();
    o.pubsubDetails = buildUnnamed7608();
    o.sdkVersion = buildSdkVersion();
    o.spannerDetails = buildUnnamed7609();
  }
  buildCounterJobMetadata--;
  return o;
}

void checkJobMetadata(api.JobMetadata o) {
  buildCounterJobMetadata++;
  if (buildCounterJobMetadata < 3) {
    checkUnnamed7604(o.bigTableDetails);
    checkUnnamed7605(o.bigqueryDetails);
    checkUnnamed7606(o.datastoreDetails);
    checkUnnamed7607(o.fileDetails);
    checkUnnamed7608(o.pubsubDetails);
    checkSdkVersion(o.sdkVersion as api.SdkVersion);
    checkUnnamed7609(o.spannerDetails);
  }
  buildCounterJobMetadata--;
}

core.List<api.MetricUpdate> buildUnnamed7610() {
  var o = <api.MetricUpdate>[];
  o.add(buildMetricUpdate());
  o.add(buildMetricUpdate());
  return o;
}

void checkUnnamed7610(core.List<api.MetricUpdate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricUpdate(o[0] as api.MetricUpdate);
  checkMetricUpdate(o[1] as api.MetricUpdate);
}

core.int buildCounterJobMetrics = 0;
api.JobMetrics buildJobMetrics() {
  var o = api.JobMetrics();
  buildCounterJobMetrics++;
  if (buildCounterJobMetrics < 3) {
    o.metricTime = 'foo';
    o.metrics = buildUnnamed7610();
  }
  buildCounterJobMetrics--;
  return o;
}

void checkJobMetrics(api.JobMetrics o) {
  buildCounterJobMetrics++;
  if (buildCounterJobMetrics < 3) {
    unittest.expect(o.metricTime, unittest.equals('foo'));
    checkUnnamed7610(o.metrics);
  }
  buildCounterJobMetrics--;
}

core.int buildCounterKeyRangeDataDiskAssignment = 0;
api.KeyRangeDataDiskAssignment buildKeyRangeDataDiskAssignment() {
  var o = api.KeyRangeDataDiskAssignment();
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
    unittest.expect(o.dataDisk, unittest.equals('foo'));
    unittest.expect(o.end, unittest.equals('foo'));
    unittest.expect(o.start, unittest.equals('foo'));
  }
  buildCounterKeyRangeDataDiskAssignment--;
}

core.int buildCounterKeyRangeLocation = 0;
api.KeyRangeLocation buildKeyRangeLocation() {
  var o = api.KeyRangeLocation();
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
    unittest.expect(o.dataDisk, unittest.equals('foo'));
    unittest.expect(o.deliveryEndpoint, unittest.equals('foo'));
    unittest.expect(o.deprecatedPersistentDirectory, unittest.equals('foo'));
    unittest.expect(o.end, unittest.equals('foo'));
    unittest.expect(o.start, unittest.equals('foo'));
  }
  buildCounterKeyRangeLocation--;
}

core.Map<core.String, core.String> buildUnnamed7611() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7611(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed7612() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7612(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed7613() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7613(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterLaunchFlexTemplateParameter = 0;
api.LaunchFlexTemplateParameter buildLaunchFlexTemplateParameter() {
  var o = api.LaunchFlexTemplateParameter();
  buildCounterLaunchFlexTemplateParameter++;
  if (buildCounterLaunchFlexTemplateParameter < 3) {
    o.containerSpec = buildContainerSpec();
    o.containerSpecGcsPath = 'foo';
    o.environment = buildFlexTemplateRuntimeEnvironment();
    o.jobName = 'foo';
    o.launchOptions = buildUnnamed7611();
    o.parameters = buildUnnamed7612();
    o.transformNameMappings = buildUnnamed7613();
    o.update = true;
  }
  buildCounterLaunchFlexTemplateParameter--;
  return o;
}

void checkLaunchFlexTemplateParameter(api.LaunchFlexTemplateParameter o) {
  buildCounterLaunchFlexTemplateParameter++;
  if (buildCounterLaunchFlexTemplateParameter < 3) {
    checkContainerSpec(o.containerSpec as api.ContainerSpec);
    unittest.expect(o.containerSpecGcsPath, unittest.equals('foo'));
    checkFlexTemplateRuntimeEnvironment(
        o.environment as api.FlexTemplateRuntimeEnvironment);
    unittest.expect(o.jobName, unittest.equals('foo'));
    checkUnnamed7611(o.launchOptions);
    checkUnnamed7612(o.parameters);
    checkUnnamed7613(o.transformNameMappings);
    unittest.expect(o.update, unittest.isTrue);
  }
  buildCounterLaunchFlexTemplateParameter--;
}

core.int buildCounterLaunchFlexTemplateRequest = 0;
api.LaunchFlexTemplateRequest buildLaunchFlexTemplateRequest() {
  var o = api.LaunchFlexTemplateRequest();
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
    checkLaunchFlexTemplateParameter(
        o.launchParameter as api.LaunchFlexTemplateParameter);
    unittest.expect(o.validateOnly, unittest.isTrue);
  }
  buildCounterLaunchFlexTemplateRequest--;
}

core.int buildCounterLaunchFlexTemplateResponse = 0;
api.LaunchFlexTemplateResponse buildLaunchFlexTemplateResponse() {
  var o = api.LaunchFlexTemplateResponse();
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
    checkJob(o.job as api.Job);
  }
  buildCounterLaunchFlexTemplateResponse--;
}

core.Map<core.String, core.String> buildUnnamed7614() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7614(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed7615() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7615(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterLaunchTemplateParameters = 0;
api.LaunchTemplateParameters buildLaunchTemplateParameters() {
  var o = api.LaunchTemplateParameters();
  buildCounterLaunchTemplateParameters++;
  if (buildCounterLaunchTemplateParameters < 3) {
    o.environment = buildRuntimeEnvironment();
    o.jobName = 'foo';
    o.parameters = buildUnnamed7614();
    o.transformNameMapping = buildUnnamed7615();
    o.update = true;
  }
  buildCounterLaunchTemplateParameters--;
  return o;
}

void checkLaunchTemplateParameters(api.LaunchTemplateParameters o) {
  buildCounterLaunchTemplateParameters++;
  if (buildCounterLaunchTemplateParameters < 3) {
    checkRuntimeEnvironment(o.environment as api.RuntimeEnvironment);
    unittest.expect(o.jobName, unittest.equals('foo'));
    checkUnnamed7614(o.parameters);
    checkUnnamed7615(o.transformNameMapping);
    unittest.expect(o.update, unittest.isTrue);
  }
  buildCounterLaunchTemplateParameters--;
}

core.int buildCounterLaunchTemplateResponse = 0;
api.LaunchTemplateResponse buildLaunchTemplateResponse() {
  var o = api.LaunchTemplateResponse();
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
    checkJob(o.job as api.Job);
  }
  buildCounterLaunchTemplateResponse--;
}

core.Map<core.String, core.Object> buildUnnamed7616() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7616(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted12 = (o['x']) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(casted12['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted12['bool'], unittest.equals(true));
  unittest.expect(casted12['string'], unittest.equals('foo'));
  var casted13 = (o['y']) as core.Map;
  unittest.expect(casted13, unittest.hasLength(3));
  unittest.expect(casted13['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted13['bool'], unittest.equals(true));
  unittest.expect(casted13['string'], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed7617() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7617(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed7618() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7618(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLeaseWorkItemRequest = 0;
api.LeaseWorkItemRequest buildLeaseWorkItemRequest() {
  var o = api.LeaseWorkItemRequest();
  buildCounterLeaseWorkItemRequest++;
  if (buildCounterLeaseWorkItemRequest < 3) {
    o.currentWorkerTime = 'foo';
    o.location = 'foo';
    o.requestedLeaseDuration = 'foo';
    o.unifiedWorkerRequest = buildUnnamed7616();
    o.workItemTypes = buildUnnamed7617();
    o.workerCapabilities = buildUnnamed7618();
    o.workerId = 'foo';
  }
  buildCounterLeaseWorkItemRequest--;
  return o;
}

void checkLeaseWorkItemRequest(api.LeaseWorkItemRequest o) {
  buildCounterLeaseWorkItemRequest++;
  if (buildCounterLeaseWorkItemRequest < 3) {
    unittest.expect(o.currentWorkerTime, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.requestedLeaseDuration, unittest.equals('foo'));
    checkUnnamed7616(o.unifiedWorkerRequest);
    checkUnnamed7617(o.workItemTypes);
    checkUnnamed7618(o.workerCapabilities);
    unittest.expect(o.workerId, unittest.equals('foo'));
  }
  buildCounterLeaseWorkItemRequest--;
}

core.Map<core.String, core.Object> buildUnnamed7619() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7619(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted14 = (o['x']) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(casted14['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted14['bool'], unittest.equals(true));
  unittest.expect(casted14['string'], unittest.equals('foo'));
  var casted15 = (o['y']) as core.Map;
  unittest.expect(casted15, unittest.hasLength(3));
  unittest.expect(casted15['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted15['bool'], unittest.equals(true));
  unittest.expect(casted15['string'], unittest.equals('foo'));
}

core.List<api.WorkItem> buildUnnamed7620() {
  var o = <api.WorkItem>[];
  o.add(buildWorkItem());
  o.add(buildWorkItem());
  return o;
}

void checkUnnamed7620(core.List<api.WorkItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkItem(o[0] as api.WorkItem);
  checkWorkItem(o[1] as api.WorkItem);
}

core.int buildCounterLeaseWorkItemResponse = 0;
api.LeaseWorkItemResponse buildLeaseWorkItemResponse() {
  var o = api.LeaseWorkItemResponse();
  buildCounterLeaseWorkItemResponse++;
  if (buildCounterLeaseWorkItemResponse < 3) {
    o.unifiedWorkerResponse = buildUnnamed7619();
    o.workItems = buildUnnamed7620();
  }
  buildCounterLeaseWorkItemResponse--;
  return o;
}

void checkLeaseWorkItemResponse(api.LeaseWorkItemResponse o) {
  buildCounterLeaseWorkItemResponse++;
  if (buildCounterLeaseWorkItemResponse < 3) {
    checkUnnamed7619(o.unifiedWorkerResponse);
    checkUnnamed7620(o.workItems);
  }
  buildCounterLeaseWorkItemResponse--;
}

core.List<api.AutoscalingEvent> buildUnnamed7621() {
  var o = <api.AutoscalingEvent>[];
  o.add(buildAutoscalingEvent());
  o.add(buildAutoscalingEvent());
  return o;
}

void checkUnnamed7621(core.List<api.AutoscalingEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutoscalingEvent(o[0] as api.AutoscalingEvent);
  checkAutoscalingEvent(o[1] as api.AutoscalingEvent);
}

core.List<api.JobMessage> buildUnnamed7622() {
  var o = <api.JobMessage>[];
  o.add(buildJobMessage());
  o.add(buildJobMessage());
  return o;
}

void checkUnnamed7622(core.List<api.JobMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobMessage(o[0] as api.JobMessage);
  checkJobMessage(o[1] as api.JobMessage);
}

core.int buildCounterListJobMessagesResponse = 0;
api.ListJobMessagesResponse buildListJobMessagesResponse() {
  var o = api.ListJobMessagesResponse();
  buildCounterListJobMessagesResponse++;
  if (buildCounterListJobMessagesResponse < 3) {
    o.autoscalingEvents = buildUnnamed7621();
    o.jobMessages = buildUnnamed7622();
    o.nextPageToken = 'foo';
  }
  buildCounterListJobMessagesResponse--;
  return o;
}

void checkListJobMessagesResponse(api.ListJobMessagesResponse o) {
  buildCounterListJobMessagesResponse++;
  if (buildCounterListJobMessagesResponse < 3) {
    checkUnnamed7621(o.autoscalingEvents);
    checkUnnamed7622(o.jobMessages);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListJobMessagesResponse--;
}

core.List<api.FailedLocation> buildUnnamed7623() {
  var o = <api.FailedLocation>[];
  o.add(buildFailedLocation());
  o.add(buildFailedLocation());
  return o;
}

void checkUnnamed7623(core.List<api.FailedLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFailedLocation(o[0] as api.FailedLocation);
  checkFailedLocation(o[1] as api.FailedLocation);
}

core.List<api.Job> buildUnnamed7624() {
  var o = <api.Job>[];
  o.add(buildJob());
  o.add(buildJob());
  return o;
}

void checkUnnamed7624(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0] as api.Job);
  checkJob(o[1] as api.Job);
}

core.int buildCounterListJobsResponse = 0;
api.ListJobsResponse buildListJobsResponse() {
  var o = api.ListJobsResponse();
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    o.failedLocation = buildUnnamed7623();
    o.jobs = buildUnnamed7624();
    o.nextPageToken = 'foo';
  }
  buildCounterListJobsResponse--;
  return o;
}

void checkListJobsResponse(api.ListJobsResponse o) {
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    checkUnnamed7623(o.failedLocation);
    checkUnnamed7624(o.jobs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListJobsResponse--;
}

core.List<api.Snapshot> buildUnnamed7625() {
  var o = <api.Snapshot>[];
  o.add(buildSnapshot());
  o.add(buildSnapshot());
  return o;
}

void checkUnnamed7625(core.List<api.Snapshot> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSnapshot(o[0] as api.Snapshot);
  checkSnapshot(o[1] as api.Snapshot);
}

core.int buildCounterListSnapshotsResponse = 0;
api.ListSnapshotsResponse buildListSnapshotsResponse() {
  var o = api.ListSnapshotsResponse();
  buildCounterListSnapshotsResponse++;
  if (buildCounterListSnapshotsResponse < 3) {
    o.snapshots = buildUnnamed7625();
  }
  buildCounterListSnapshotsResponse--;
  return o;
}

void checkListSnapshotsResponse(api.ListSnapshotsResponse o) {
  buildCounterListSnapshotsResponse++;
  if (buildCounterListSnapshotsResponse < 3) {
    checkUnnamed7625(o.snapshots);
  }
  buildCounterListSnapshotsResponse--;
}

core.List<api.TemplateVersion> buildUnnamed7626() {
  var o = <api.TemplateVersion>[];
  o.add(buildTemplateVersion());
  o.add(buildTemplateVersion());
  return o;
}

void checkUnnamed7626(core.List<api.TemplateVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTemplateVersion(o[0] as api.TemplateVersion);
  checkTemplateVersion(o[1] as api.TemplateVersion);
}

core.int buildCounterListTemplateVersionsResponse = 0;
api.ListTemplateVersionsResponse buildListTemplateVersionsResponse() {
  var o = api.ListTemplateVersionsResponse();
  buildCounterListTemplateVersionsResponse++;
  if (buildCounterListTemplateVersionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.templateVersions = buildUnnamed7626();
  }
  buildCounterListTemplateVersionsResponse--;
  return o;
}

void checkListTemplateVersionsResponse(api.ListTemplateVersionsResponse o) {
  buildCounterListTemplateVersionsResponse++;
  if (buildCounterListTemplateVersionsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed7626(o.templateVersions);
  }
  buildCounterListTemplateVersionsResponse--;
}

core.List<api.ParallelInstruction> buildUnnamed7627() {
  var o = <api.ParallelInstruction>[];
  o.add(buildParallelInstruction());
  o.add(buildParallelInstruction());
  return o;
}

void checkUnnamed7627(core.List<api.ParallelInstruction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParallelInstruction(o[0] as api.ParallelInstruction);
  checkParallelInstruction(o[1] as api.ParallelInstruction);
}

core.int buildCounterMapTask = 0;
api.MapTask buildMapTask() {
  var o = api.MapTask();
  buildCounterMapTask++;
  if (buildCounterMapTask < 3) {
    o.counterPrefix = 'foo';
    o.instructions = buildUnnamed7627();
    o.stageName = 'foo';
    o.systemName = 'foo';
  }
  buildCounterMapTask--;
  return o;
}

void checkMapTask(api.MapTask o) {
  buildCounterMapTask++;
  if (buildCounterMapTask < 3) {
    unittest.expect(o.counterPrefix, unittest.equals('foo'));
    checkUnnamed7627(o.instructions);
    unittest.expect(o.stageName, unittest.equals('foo'));
    unittest.expect(o.systemName, unittest.equals('foo'));
  }
  buildCounterMapTask--;
}

core.int buildCounterMemInfo = 0;
api.MemInfo buildMemInfo() {
  var o = api.MemInfo();
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
    unittest.expect(o.currentLimitBytes, unittest.equals('foo'));
    unittest.expect(o.currentRssBytes, unittest.equals('foo'));
    unittest.expect(o.timestamp, unittest.equals('foo'));
    unittest.expect(o.totalGbMs, unittest.equals('foo'));
  }
  buildCounterMemInfo--;
}

core.int buildCounterMetricShortId = 0;
api.MetricShortId buildMetricShortId() {
  var o = api.MetricShortId();
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
    unittest.expect(o.metricIndex, unittest.equals(42));
    unittest.expect(o.shortId, unittest.equals('foo'));
  }
  buildCounterMetricShortId--;
}

core.Map<core.String, core.String> buildUnnamed7628() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7628(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterMetricStructuredName = 0;
api.MetricStructuredName buildMetricStructuredName() {
  var o = api.MetricStructuredName();
  buildCounterMetricStructuredName++;
  if (buildCounterMetricStructuredName < 3) {
    o.context = buildUnnamed7628();
    o.name = 'foo';
    o.origin = 'foo';
  }
  buildCounterMetricStructuredName--;
  return o;
}

void checkMetricStructuredName(api.MetricStructuredName o) {
  buildCounterMetricStructuredName++;
  if (buildCounterMetricStructuredName < 3) {
    checkUnnamed7628(o.context);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.origin, unittest.equals('foo'));
  }
  buildCounterMetricStructuredName--;
}

core.int buildCounterMetricUpdate = 0;
api.MetricUpdate buildMetricUpdate() {
  var o = api.MetricUpdate();
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
    unittest.expect(o.cumulative, unittest.isTrue);
    var casted16 = (o.distribution) as core.Map;
    unittest.expect(casted16, unittest.hasLength(3));
    unittest.expect(casted16['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted16['bool'], unittest.equals(true));
    unittest.expect(casted16['string'], unittest.equals('foo'));
    var casted17 = (o.gauge) as core.Map;
    unittest.expect(casted17, unittest.hasLength(3));
    unittest.expect(casted17['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted17['bool'], unittest.equals(true));
    unittest.expect(casted17['string'], unittest.equals('foo'));
    var casted18 = (o.internal) as core.Map;
    unittest.expect(casted18, unittest.hasLength(3));
    unittest.expect(casted18['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted18['bool'], unittest.equals(true));
    unittest.expect(casted18['string'], unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    var casted19 = (o.meanCount) as core.Map;
    unittest.expect(casted19, unittest.hasLength(3));
    unittest.expect(casted19['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted19['bool'], unittest.equals(true));
    unittest.expect(casted19['string'], unittest.equals('foo'));
    var casted20 = (o.meanSum) as core.Map;
    unittest.expect(casted20, unittest.hasLength(3));
    unittest.expect(casted20['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted20['bool'], unittest.equals(true));
    unittest.expect(casted20['string'], unittest.equals('foo'));
    checkMetricStructuredName(o.name as api.MetricStructuredName);
    var casted21 = (o.scalar) as core.Map;
    unittest.expect(casted21, unittest.hasLength(3));
    unittest.expect(casted21['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted21['bool'], unittest.equals(true));
    unittest.expect(casted21['string'], unittest.equals('foo'));
    var casted22 = (o.set) as core.Map;
    unittest.expect(casted22, unittest.hasLength(3));
    unittest.expect(casted22['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted22['bool'], unittest.equals(true));
    unittest.expect(casted22['string'], unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterMetricUpdate--;
}

core.int buildCounterModifyTemplateVersionLabelRequest = 0;
api.ModifyTemplateVersionLabelRequest buildModifyTemplateVersionLabelRequest() {
  var o = api.ModifyTemplateVersionLabelRequest();
  buildCounterModifyTemplateVersionLabelRequest++;
  if (buildCounterModifyTemplateVersionLabelRequest < 3) {
    o.key = 'foo';
    o.op = 'foo';
    o.value = 'foo';
  }
  buildCounterModifyTemplateVersionLabelRequest--;
  return o;
}

void checkModifyTemplateVersionLabelRequest(
    api.ModifyTemplateVersionLabelRequest o) {
  buildCounterModifyTemplateVersionLabelRequest++;
  if (buildCounterModifyTemplateVersionLabelRequest < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.op, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals('foo'));
  }
  buildCounterModifyTemplateVersionLabelRequest--;
}

core.Map<core.String, core.String> buildUnnamed7629() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7629(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterModifyTemplateVersionLabelResponse = 0;
api.ModifyTemplateVersionLabelResponse
    buildModifyTemplateVersionLabelResponse() {
  var o = api.ModifyTemplateVersionLabelResponse();
  buildCounterModifyTemplateVersionLabelResponse++;
  if (buildCounterModifyTemplateVersionLabelResponse < 3) {
    o.labels = buildUnnamed7629();
  }
  buildCounterModifyTemplateVersionLabelResponse--;
  return o;
}

void checkModifyTemplateVersionLabelResponse(
    api.ModifyTemplateVersionLabelResponse o) {
  buildCounterModifyTemplateVersionLabelResponse++;
  if (buildCounterModifyTemplateVersionLabelResponse < 3) {
    checkUnnamed7629(o.labels);
  }
  buildCounterModifyTemplateVersionLabelResponse--;
}

core.int buildCounterModifyTemplateVersionTagRequest = 0;
api.ModifyTemplateVersionTagRequest buildModifyTemplateVersionTagRequest() {
  var o = api.ModifyTemplateVersionTagRequest();
  buildCounterModifyTemplateVersionTagRequest++;
  if (buildCounterModifyTemplateVersionTagRequest < 3) {
    o.removeOnly = true;
    o.tag = 'foo';
  }
  buildCounterModifyTemplateVersionTagRequest--;
  return o;
}

void checkModifyTemplateVersionTagRequest(
    api.ModifyTemplateVersionTagRequest o) {
  buildCounterModifyTemplateVersionTagRequest++;
  if (buildCounterModifyTemplateVersionTagRequest < 3) {
    unittest.expect(o.removeOnly, unittest.isTrue);
    unittest.expect(o.tag, unittest.equals('foo'));
  }
  buildCounterModifyTemplateVersionTagRequest--;
}

core.List<core.String> buildUnnamed7630() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7630(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterModifyTemplateVersionTagResponse = 0;
api.ModifyTemplateVersionTagResponse buildModifyTemplateVersionTagResponse() {
  var o = api.ModifyTemplateVersionTagResponse();
  buildCounterModifyTemplateVersionTagResponse++;
  if (buildCounterModifyTemplateVersionTagResponse < 3) {
    o.tags = buildUnnamed7630();
  }
  buildCounterModifyTemplateVersionTagResponse--;
  return o;
}

void checkModifyTemplateVersionTagResponse(
    api.ModifyTemplateVersionTagResponse o) {
  buildCounterModifyTemplateVersionTagResponse++;
  if (buildCounterModifyTemplateVersionTagResponse < 3) {
    checkUnnamed7630(o.tags);
  }
  buildCounterModifyTemplateVersionTagResponse--;
}

core.int buildCounterMountedDataDisk = 0;
api.MountedDataDisk buildMountedDataDisk() {
  var o = api.MountedDataDisk();
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
    unittest.expect(o.dataDisk, unittest.equals('foo'));
  }
  buildCounterMountedDataDisk--;
}

core.int buildCounterMultiOutputInfo = 0;
api.MultiOutputInfo buildMultiOutputInfo() {
  var o = api.MultiOutputInfo();
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
    unittest.expect(o.tag, unittest.equals('foo'));
  }
  buildCounterMultiOutputInfo--;
}

core.int buildCounterNameAndKind = 0;
api.NameAndKind buildNameAndKind() {
  var o = api.NameAndKind();
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
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterNameAndKind--;
}

core.int buildCounterPackage = 0;
api.Package buildPackage() {
  var o = api.Package();
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
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterPackage--;
}

core.List<api.MultiOutputInfo> buildUnnamed7631() {
  var o = <api.MultiOutputInfo>[];
  o.add(buildMultiOutputInfo());
  o.add(buildMultiOutputInfo());
  return o;
}

void checkUnnamed7631(core.List<api.MultiOutputInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMultiOutputInfo(o[0] as api.MultiOutputInfo);
  checkMultiOutputInfo(o[1] as api.MultiOutputInfo);
}

core.List<api.SideInputInfo> buildUnnamed7632() {
  var o = <api.SideInputInfo>[];
  o.add(buildSideInputInfo());
  o.add(buildSideInputInfo());
  return o;
}

void checkUnnamed7632(core.List<api.SideInputInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSideInputInfo(o[0] as api.SideInputInfo);
  checkSideInputInfo(o[1] as api.SideInputInfo);
}

core.Map<core.String, core.Object> buildUnnamed7633() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7633(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted23 = (o['x']) as core.Map;
  unittest.expect(casted23, unittest.hasLength(3));
  unittest.expect(casted23['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted23['bool'], unittest.equals(true));
  unittest.expect(casted23['string'], unittest.equals('foo'));
  var casted24 = (o['y']) as core.Map;
  unittest.expect(casted24, unittest.hasLength(3));
  unittest.expect(casted24['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted24['bool'], unittest.equals(true));
  unittest.expect(casted24['string'], unittest.equals('foo'));
}

core.int buildCounterParDoInstruction = 0;
api.ParDoInstruction buildParDoInstruction() {
  var o = api.ParDoInstruction();
  buildCounterParDoInstruction++;
  if (buildCounterParDoInstruction < 3) {
    o.input = buildInstructionInput();
    o.multiOutputInfos = buildUnnamed7631();
    o.numOutputs = 42;
    o.sideInputs = buildUnnamed7632();
    o.userFn = buildUnnamed7633();
  }
  buildCounterParDoInstruction--;
  return o;
}

void checkParDoInstruction(api.ParDoInstruction o) {
  buildCounterParDoInstruction++;
  if (buildCounterParDoInstruction < 3) {
    checkInstructionInput(o.input as api.InstructionInput);
    checkUnnamed7631(o.multiOutputInfos);
    unittest.expect(o.numOutputs, unittest.equals(42));
    checkUnnamed7632(o.sideInputs);
    checkUnnamed7633(o.userFn);
  }
  buildCounterParDoInstruction--;
}

core.List<api.InstructionOutput> buildUnnamed7634() {
  var o = <api.InstructionOutput>[];
  o.add(buildInstructionOutput());
  o.add(buildInstructionOutput());
  return o;
}

void checkUnnamed7634(core.List<api.InstructionOutput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstructionOutput(o[0] as api.InstructionOutput);
  checkInstructionOutput(o[1] as api.InstructionOutput);
}

core.int buildCounterParallelInstruction = 0;
api.ParallelInstruction buildParallelInstruction() {
  var o = api.ParallelInstruction();
  buildCounterParallelInstruction++;
  if (buildCounterParallelInstruction < 3) {
    o.flatten = buildFlattenInstruction();
    o.name = 'foo';
    o.originalName = 'foo';
    o.outputs = buildUnnamed7634();
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
    checkFlattenInstruction(o.flatten as api.FlattenInstruction);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.originalName, unittest.equals('foo'));
    checkUnnamed7634(o.outputs);
    checkParDoInstruction(o.parDo as api.ParDoInstruction);
    checkPartialGroupByKeyInstruction(
        o.partialGroupByKey as api.PartialGroupByKeyInstruction);
    checkReadInstruction(o.read as api.ReadInstruction);
    unittest.expect(o.systemName, unittest.equals('foo'));
    checkWriteInstruction(o.write as api.WriteInstruction);
  }
  buildCounterParallelInstruction--;
}

core.int buildCounterParameter = 0;
api.Parameter buildParameter() {
  var o = api.Parameter();
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
    unittest.expect(o.key, unittest.equals('foo'));
    var casted25 = (o.value) as core.Map;
    unittest.expect(casted25, unittest.hasLength(3));
    unittest.expect(casted25['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted25['bool'], unittest.equals(true));
    unittest.expect(casted25['string'], unittest.equals('foo'));
  }
  buildCounterParameter--;
}

core.List<core.String> buildUnnamed7635() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7635(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterParameterMetadata = 0;
api.ParameterMetadata buildParameterMetadata() {
  var o = api.ParameterMetadata();
  buildCounterParameterMetadata++;
  if (buildCounterParameterMetadata < 3) {
    o.helpText = 'foo';
    o.isOptional = true;
    o.label = 'foo';
    o.name = 'foo';
    o.paramType = 'foo';
    o.regexes = buildUnnamed7635();
  }
  buildCounterParameterMetadata--;
  return o;
}

void checkParameterMetadata(api.ParameterMetadata o) {
  buildCounterParameterMetadata++;
  if (buildCounterParameterMetadata < 3) {
    unittest.expect(o.helpText, unittest.equals('foo'));
    unittest.expect(o.isOptional, unittest.isTrue);
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.paramType, unittest.equals('foo'));
    checkUnnamed7635(o.regexes);
  }
  buildCounterParameterMetadata--;
}

core.Map<core.String, core.Object> buildUnnamed7636() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7636(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted26 = (o['x']) as core.Map;
  unittest.expect(casted26, unittest.hasLength(3));
  unittest.expect(casted26['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted26['bool'], unittest.equals(true));
  unittest.expect(casted26['string'], unittest.equals('foo'));
  var casted27 = (o['y']) as core.Map;
  unittest.expect(casted27, unittest.hasLength(3));
  unittest.expect(casted27['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted27['bool'], unittest.equals(true));
  unittest.expect(casted27['string'], unittest.equals('foo'));
}

core.List<api.SideInputInfo> buildUnnamed7637() {
  var o = <api.SideInputInfo>[];
  o.add(buildSideInputInfo());
  o.add(buildSideInputInfo());
  return o;
}

void checkUnnamed7637(core.List<api.SideInputInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSideInputInfo(o[0] as api.SideInputInfo);
  checkSideInputInfo(o[1] as api.SideInputInfo);
}

core.Map<core.String, core.Object> buildUnnamed7638() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7638(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted28 = (o['x']) as core.Map;
  unittest.expect(casted28, unittest.hasLength(3));
  unittest.expect(casted28['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted28['bool'], unittest.equals(true));
  unittest.expect(casted28['string'], unittest.equals('foo'));
  var casted29 = (o['y']) as core.Map;
  unittest.expect(casted29, unittest.hasLength(3));
  unittest.expect(casted29['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted29['bool'], unittest.equals(true));
  unittest.expect(casted29['string'], unittest.equals('foo'));
}

core.int buildCounterPartialGroupByKeyInstruction = 0;
api.PartialGroupByKeyInstruction buildPartialGroupByKeyInstruction() {
  var o = api.PartialGroupByKeyInstruction();
  buildCounterPartialGroupByKeyInstruction++;
  if (buildCounterPartialGroupByKeyInstruction < 3) {
    o.input = buildInstructionInput();
    o.inputElementCodec = buildUnnamed7636();
    o.originalCombineValuesInputStoreName = 'foo';
    o.originalCombineValuesStepName = 'foo';
    o.sideInputs = buildUnnamed7637();
    o.valueCombiningFn = buildUnnamed7638();
  }
  buildCounterPartialGroupByKeyInstruction--;
  return o;
}

void checkPartialGroupByKeyInstruction(api.PartialGroupByKeyInstruction o) {
  buildCounterPartialGroupByKeyInstruction++;
  if (buildCounterPartialGroupByKeyInstruction < 3) {
    checkInstructionInput(o.input as api.InstructionInput);
    checkUnnamed7636(o.inputElementCodec);
    unittest.expect(
        o.originalCombineValuesInputStoreName, unittest.equals('foo'));
    unittest.expect(o.originalCombineValuesStepName, unittest.equals('foo'));
    checkUnnamed7637(o.sideInputs);
    checkUnnamed7638(o.valueCombiningFn);
  }
  buildCounterPartialGroupByKeyInstruction--;
}

core.List<api.DisplayData> buildUnnamed7639() {
  var o = <api.DisplayData>[];
  o.add(buildDisplayData());
  o.add(buildDisplayData());
  return o;
}

void checkUnnamed7639(core.List<api.DisplayData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisplayData(o[0] as api.DisplayData);
  checkDisplayData(o[1] as api.DisplayData);
}

core.List<api.ExecutionStageSummary> buildUnnamed7640() {
  var o = <api.ExecutionStageSummary>[];
  o.add(buildExecutionStageSummary());
  o.add(buildExecutionStageSummary());
  return o;
}

void checkUnnamed7640(core.List<api.ExecutionStageSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecutionStageSummary(o[0] as api.ExecutionStageSummary);
  checkExecutionStageSummary(o[1] as api.ExecutionStageSummary);
}

core.List<api.TransformSummary> buildUnnamed7641() {
  var o = <api.TransformSummary>[];
  o.add(buildTransformSummary());
  o.add(buildTransformSummary());
  return o;
}

void checkUnnamed7641(core.List<api.TransformSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransformSummary(o[0] as api.TransformSummary);
  checkTransformSummary(o[1] as api.TransformSummary);
}

core.int buildCounterPipelineDescription = 0;
api.PipelineDescription buildPipelineDescription() {
  var o = api.PipelineDescription();
  buildCounterPipelineDescription++;
  if (buildCounterPipelineDescription < 3) {
    o.displayData = buildUnnamed7639();
    o.executionPipelineStage = buildUnnamed7640();
    o.originalPipelineTransform = buildUnnamed7641();
  }
  buildCounterPipelineDescription--;
  return o;
}

void checkPipelineDescription(api.PipelineDescription o) {
  buildCounterPipelineDescription++;
  if (buildCounterPipelineDescription < 3) {
    checkUnnamed7639(o.displayData);
    checkUnnamed7640(o.executionPipelineStage);
    checkUnnamed7641(o.originalPipelineTransform);
  }
  buildCounterPipelineDescription--;
}

core.int buildCounterPoint = 0;
api.Point buildPoint() {
  var o = api.Point();
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
    unittest.expect(o.time, unittest.equals('foo'));
    unittest.expect(o.value, unittest.equals(42.0));
  }
  buildCounterPoint--;
}

core.int buildCounterPosition = 0;
api.Position buildPosition() {
  var o = api.Position();
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
    unittest.expect(o.byteOffset, unittest.equals('foo'));
    checkConcatPosition(o.concatPosition as api.ConcatPosition);
    unittest.expect(o.end, unittest.isTrue);
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.recordIndex, unittest.equals('foo'));
    unittest.expect(o.shufflePosition, unittest.equals('foo'));
  }
  buildCounterPosition--;
}

core.List<api.Point> buildUnnamed7642() {
  var o = <api.Point>[];
  o.add(buildPoint());
  o.add(buildPoint());
  return o;
}

void checkUnnamed7642(core.List<api.Point> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPoint(o[0] as api.Point);
  checkPoint(o[1] as api.Point);
}

core.int buildCounterProgressTimeseries = 0;
api.ProgressTimeseries buildProgressTimeseries() {
  var o = api.ProgressTimeseries();
  buildCounterProgressTimeseries++;
  if (buildCounterProgressTimeseries < 3) {
    o.currentProgress = 42.0;
    o.dataPoints = buildUnnamed7642();
  }
  buildCounterProgressTimeseries--;
  return o;
}

void checkProgressTimeseries(api.ProgressTimeseries o) {
  buildCounterProgressTimeseries++;
  if (buildCounterProgressTimeseries < 3) {
    unittest.expect(o.currentProgress, unittest.equals(42.0));
    checkUnnamed7642(o.dataPoints);
  }
  buildCounterProgressTimeseries--;
}

core.int buildCounterPubSubIODetails = 0;
api.PubSubIODetails buildPubSubIODetails() {
  var o = api.PubSubIODetails();
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
    unittest.expect(o.subscription, unittest.equals('foo'));
    unittest.expect(o.topic, unittest.equals('foo'));
  }
  buildCounterPubSubIODetails--;
}

core.int buildCounterPubsubLocation = 0;
api.PubsubLocation buildPubsubLocation() {
  var o = api.PubsubLocation();
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
    unittest.expect(o.dropLateData, unittest.isTrue);
    unittest.expect(o.idLabel, unittest.equals('foo'));
    unittest.expect(o.subscription, unittest.equals('foo'));
    unittest.expect(o.timestampLabel, unittest.equals('foo'));
    unittest.expect(o.topic, unittest.equals('foo'));
    unittest.expect(o.trackingSubscription, unittest.equals('foo'));
    unittest.expect(o.withAttributes, unittest.isTrue);
  }
  buildCounterPubsubLocation--;
}

core.int buildCounterPubsubSnapshotMetadata = 0;
api.PubsubSnapshotMetadata buildPubsubSnapshotMetadata() {
  var o = api.PubsubSnapshotMetadata();
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
    unittest.expect(o.expireTime, unittest.equals('foo'));
    unittest.expect(o.snapshotName, unittest.equals('foo'));
    unittest.expect(o.topicName, unittest.equals('foo'));
  }
  buildCounterPubsubSnapshotMetadata--;
}

core.List<core.String> buildUnnamed7643() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7643(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterQueryInfo = 0;
api.QueryInfo buildQueryInfo() {
  var o = api.QueryInfo();
  buildCounterQueryInfo++;
  if (buildCounterQueryInfo < 3) {
    o.queryProperty = buildUnnamed7643();
  }
  buildCounterQueryInfo--;
  return o;
}

void checkQueryInfo(api.QueryInfo o) {
  buildCounterQueryInfo++;
  if (buildCounterQueryInfo < 3) {
    checkUnnamed7643(o.queryProperty);
  }
  buildCounterQueryInfo--;
}

core.int buildCounterReadInstruction = 0;
api.ReadInstruction buildReadInstruction() {
  var o = api.ReadInstruction();
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
    checkSource(o.source as api.Source);
  }
  buildCounterReadInstruction--;
}

core.Map<core.String, core.Object> buildUnnamed7644() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7644(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted30 = (o['x']) as core.Map;
  unittest.expect(casted30, unittest.hasLength(3));
  unittest.expect(casted30['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted30['bool'], unittest.equals(true));
  unittest.expect(casted30['string'], unittest.equals('foo'));
  var casted31 = (o['y']) as core.Map;
  unittest.expect(casted31, unittest.hasLength(3));
  unittest.expect(casted31['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted31['bool'], unittest.equals(true));
  unittest.expect(casted31['string'], unittest.equals('foo'));
}

core.List<api.WorkItemStatus> buildUnnamed7645() {
  var o = <api.WorkItemStatus>[];
  o.add(buildWorkItemStatus());
  o.add(buildWorkItemStatus());
  return o;
}

void checkUnnamed7645(core.List<api.WorkItemStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkItemStatus(o[0] as api.WorkItemStatus);
  checkWorkItemStatus(o[1] as api.WorkItemStatus);
}

core.int buildCounterReportWorkItemStatusRequest = 0;
api.ReportWorkItemStatusRequest buildReportWorkItemStatusRequest() {
  var o = api.ReportWorkItemStatusRequest();
  buildCounterReportWorkItemStatusRequest++;
  if (buildCounterReportWorkItemStatusRequest < 3) {
    o.currentWorkerTime = 'foo';
    o.location = 'foo';
    o.unifiedWorkerRequest = buildUnnamed7644();
    o.workItemStatuses = buildUnnamed7645();
    o.workerId = 'foo';
  }
  buildCounterReportWorkItemStatusRequest--;
  return o;
}

void checkReportWorkItemStatusRequest(api.ReportWorkItemStatusRequest o) {
  buildCounterReportWorkItemStatusRequest++;
  if (buildCounterReportWorkItemStatusRequest < 3) {
    unittest.expect(o.currentWorkerTime, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    checkUnnamed7644(o.unifiedWorkerRequest);
    checkUnnamed7645(o.workItemStatuses);
    unittest.expect(o.workerId, unittest.equals('foo'));
  }
  buildCounterReportWorkItemStatusRequest--;
}

core.Map<core.String, core.Object> buildUnnamed7646() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7646(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted32 = (o['x']) as core.Map;
  unittest.expect(casted32, unittest.hasLength(3));
  unittest.expect(casted32['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted32['bool'], unittest.equals(true));
  unittest.expect(casted32['string'], unittest.equals('foo'));
  var casted33 = (o['y']) as core.Map;
  unittest.expect(casted33, unittest.hasLength(3));
  unittest.expect(casted33['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted33['bool'], unittest.equals(true));
  unittest.expect(casted33['string'], unittest.equals('foo'));
}

core.List<api.WorkItemServiceState> buildUnnamed7647() {
  var o = <api.WorkItemServiceState>[];
  o.add(buildWorkItemServiceState());
  o.add(buildWorkItemServiceState());
  return o;
}

void checkUnnamed7647(core.List<api.WorkItemServiceState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkItemServiceState(o[0] as api.WorkItemServiceState);
  checkWorkItemServiceState(o[1] as api.WorkItemServiceState);
}

core.int buildCounterReportWorkItemStatusResponse = 0;
api.ReportWorkItemStatusResponse buildReportWorkItemStatusResponse() {
  var o = api.ReportWorkItemStatusResponse();
  buildCounterReportWorkItemStatusResponse++;
  if (buildCounterReportWorkItemStatusResponse < 3) {
    o.unifiedWorkerResponse = buildUnnamed7646();
    o.workItemServiceStates = buildUnnamed7647();
  }
  buildCounterReportWorkItemStatusResponse--;
  return o;
}

void checkReportWorkItemStatusResponse(api.ReportWorkItemStatusResponse o) {
  buildCounterReportWorkItemStatusResponse++;
  if (buildCounterReportWorkItemStatusResponse < 3) {
    checkUnnamed7646(o.unifiedWorkerResponse);
    checkUnnamed7647(o.workItemServiceStates);
  }
  buildCounterReportWorkItemStatusResponse--;
}

core.int buildCounterReportedParallelism = 0;
api.ReportedParallelism buildReportedParallelism() {
  var o = api.ReportedParallelism();
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
    unittest.expect(o.isInfinite, unittest.isTrue);
    unittest.expect(o.value, unittest.equals(42.0));
  }
  buildCounterReportedParallelism--;
}

core.Map<core.String, api.ResourceUtilizationReport> buildUnnamed7648() {
  var o = <core.String, api.ResourceUtilizationReport>{};
  o['x'] = buildResourceUtilizationReport();
  o['y'] = buildResourceUtilizationReport();
  return o;
}

void checkUnnamed7648(core.Map<core.String, api.ResourceUtilizationReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceUtilizationReport(o['x'] as api.ResourceUtilizationReport);
  checkResourceUtilizationReport(o['y'] as api.ResourceUtilizationReport);
}

core.List<api.CPUTime> buildUnnamed7649() {
  var o = <api.CPUTime>[];
  o.add(buildCPUTime());
  o.add(buildCPUTime());
  return o;
}

void checkUnnamed7649(core.List<api.CPUTime> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCPUTime(o[0] as api.CPUTime);
  checkCPUTime(o[1] as api.CPUTime);
}

core.List<api.MemInfo> buildUnnamed7650() {
  var o = <api.MemInfo>[];
  o.add(buildMemInfo());
  o.add(buildMemInfo());
  return o;
}

void checkUnnamed7650(core.List<api.MemInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMemInfo(o[0] as api.MemInfo);
  checkMemInfo(o[1] as api.MemInfo);
}

core.int buildCounterResourceUtilizationReport = 0;
api.ResourceUtilizationReport buildResourceUtilizationReport() {
  var o = api.ResourceUtilizationReport();
  buildCounterResourceUtilizationReport++;
  if (buildCounterResourceUtilizationReport < 3) {
    o.containers = buildUnnamed7648();
    o.cpuTime = buildUnnamed7649();
    o.memoryInfo = buildUnnamed7650();
  }
  buildCounterResourceUtilizationReport--;
  return o;
}

void checkResourceUtilizationReport(api.ResourceUtilizationReport o) {
  buildCounterResourceUtilizationReport++;
  if (buildCounterResourceUtilizationReport < 3) {
    checkUnnamed7648(o.containers);
    checkUnnamed7649(o.cpuTime);
    checkUnnamed7650(o.memoryInfo);
  }
  buildCounterResourceUtilizationReport--;
}

core.int buildCounterResourceUtilizationReportResponse = 0;
api.ResourceUtilizationReportResponse buildResourceUtilizationReportResponse() {
  var o = api.ResourceUtilizationReportResponse();
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

core.List<core.String> buildUnnamed7651() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7651(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed7652() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7652(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterRuntimeEnvironment = 0;
api.RuntimeEnvironment buildRuntimeEnvironment() {
  var o = api.RuntimeEnvironment();
  buildCounterRuntimeEnvironment++;
  if (buildCounterRuntimeEnvironment < 3) {
    o.additionalExperiments = buildUnnamed7651();
    o.additionalUserLabels = buildUnnamed7652();
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
    checkUnnamed7651(o.additionalExperiments);
    checkUnnamed7652(o.additionalUserLabels);
    unittest.expect(o.bypassTempDirValidation, unittest.isTrue);
    unittest.expect(o.enableStreamingEngine, unittest.isTrue);
    unittest.expect(o.ipConfiguration, unittest.equals('foo'));
    unittest.expect(o.kmsKeyName, unittest.equals('foo'));
    unittest.expect(o.machineType, unittest.equals('foo'));
    unittest.expect(o.maxWorkers, unittest.equals(42));
    unittest.expect(o.network, unittest.equals('foo'));
    unittest.expect(o.numWorkers, unittest.equals(42));
    unittest.expect(o.serviceAccountEmail, unittest.equals('foo'));
    unittest.expect(o.subnetwork, unittest.equals('foo'));
    unittest.expect(o.tempLocation, unittest.equals('foo'));
    unittest.expect(o.workerRegion, unittest.equals('foo'));
    unittest.expect(o.workerZone, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterRuntimeEnvironment--;
}

core.List<api.ParameterMetadata> buildUnnamed7653() {
  var o = <api.ParameterMetadata>[];
  o.add(buildParameterMetadata());
  o.add(buildParameterMetadata());
  return o;
}

void checkUnnamed7653(core.List<api.ParameterMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameterMetadata(o[0] as api.ParameterMetadata);
  checkParameterMetadata(o[1] as api.ParameterMetadata);
}

core.int buildCounterRuntimeMetadata = 0;
api.RuntimeMetadata buildRuntimeMetadata() {
  var o = api.RuntimeMetadata();
  buildCounterRuntimeMetadata++;
  if (buildCounterRuntimeMetadata < 3) {
    o.parameters = buildUnnamed7653();
    o.sdkInfo = buildSDKInfo();
  }
  buildCounterRuntimeMetadata--;
  return o;
}

void checkRuntimeMetadata(api.RuntimeMetadata o) {
  buildCounterRuntimeMetadata++;
  if (buildCounterRuntimeMetadata < 3) {
    checkUnnamed7653(o.parameters);
    checkSDKInfo(o.sdkInfo as api.SDKInfo);
  }
  buildCounterRuntimeMetadata--;
}

core.int buildCounterSDKInfo = 0;
api.SDKInfo buildSDKInfo() {
  var o = api.SDKInfo();
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
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterSDKInfo--;
}

core.int buildCounterSdkHarnessContainerImage = 0;
api.SdkHarnessContainerImage buildSdkHarnessContainerImage() {
  var o = api.SdkHarnessContainerImage();
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
    unittest.expect(o.containerImage, unittest.equals('foo'));
    unittest.expect(o.environmentId, unittest.equals('foo'));
    unittest.expect(o.useSingleCorePerContainer, unittest.isTrue);
  }
  buildCounterSdkHarnessContainerImage--;
}

core.int buildCounterSdkVersion = 0;
api.SdkVersion buildSdkVersion() {
  var o = api.SdkVersion();
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
    unittest.expect(o.sdkSupportStatus, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
    unittest.expect(o.versionDisplayName, unittest.equals('foo'));
  }
  buildCounterSdkVersion--;
}

core.int buildCounterSendDebugCaptureRequest = 0;
api.SendDebugCaptureRequest buildSendDebugCaptureRequest() {
  var o = api.SendDebugCaptureRequest();
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
    unittest.expect(o.componentId, unittest.equals('foo'));
    unittest.expect(o.data, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.workerId, unittest.equals('foo'));
  }
  buildCounterSendDebugCaptureRequest--;
}

core.int buildCounterSendDebugCaptureResponse = 0;
api.SendDebugCaptureResponse buildSendDebugCaptureResponse() {
  var o = api.SendDebugCaptureResponse();
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

core.List<api.WorkerMessage> buildUnnamed7654() {
  var o = <api.WorkerMessage>[];
  o.add(buildWorkerMessage());
  o.add(buildWorkerMessage());
  return o;
}

void checkUnnamed7654(core.List<api.WorkerMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkerMessage(o[0] as api.WorkerMessage);
  checkWorkerMessage(o[1] as api.WorkerMessage);
}

core.int buildCounterSendWorkerMessagesRequest = 0;
api.SendWorkerMessagesRequest buildSendWorkerMessagesRequest() {
  var o = api.SendWorkerMessagesRequest();
  buildCounterSendWorkerMessagesRequest++;
  if (buildCounterSendWorkerMessagesRequest < 3) {
    o.location = 'foo';
    o.workerMessages = buildUnnamed7654();
  }
  buildCounterSendWorkerMessagesRequest--;
  return o;
}

void checkSendWorkerMessagesRequest(api.SendWorkerMessagesRequest o) {
  buildCounterSendWorkerMessagesRequest++;
  if (buildCounterSendWorkerMessagesRequest < 3) {
    unittest.expect(o.location, unittest.equals('foo'));
    checkUnnamed7654(o.workerMessages);
  }
  buildCounterSendWorkerMessagesRequest--;
}

core.List<api.WorkerMessageResponse> buildUnnamed7655() {
  var o = <api.WorkerMessageResponse>[];
  o.add(buildWorkerMessageResponse());
  o.add(buildWorkerMessageResponse());
  return o;
}

void checkUnnamed7655(core.List<api.WorkerMessageResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkerMessageResponse(o[0] as api.WorkerMessageResponse);
  checkWorkerMessageResponse(o[1] as api.WorkerMessageResponse);
}

core.int buildCounterSendWorkerMessagesResponse = 0;
api.SendWorkerMessagesResponse buildSendWorkerMessagesResponse() {
  var o = api.SendWorkerMessagesResponse();
  buildCounterSendWorkerMessagesResponse++;
  if (buildCounterSendWorkerMessagesResponse < 3) {
    o.workerMessageResponses = buildUnnamed7655();
  }
  buildCounterSendWorkerMessagesResponse--;
  return o;
}

void checkSendWorkerMessagesResponse(api.SendWorkerMessagesResponse o) {
  buildCounterSendWorkerMessagesResponse++;
  if (buildCounterSendWorkerMessagesResponse < 3) {
    checkUnnamed7655(o.workerMessageResponses);
  }
  buildCounterSendWorkerMessagesResponse--;
}

core.List<api.SideInputInfo> buildUnnamed7656() {
  var o = <api.SideInputInfo>[];
  o.add(buildSideInputInfo());
  o.add(buildSideInputInfo());
  return o;
}

void checkUnnamed7656(core.List<api.SideInputInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSideInputInfo(o[0] as api.SideInputInfo);
  checkSideInputInfo(o[1] as api.SideInputInfo);
}

core.List<api.SeqMapTaskOutputInfo> buildUnnamed7657() {
  var o = <api.SeqMapTaskOutputInfo>[];
  o.add(buildSeqMapTaskOutputInfo());
  o.add(buildSeqMapTaskOutputInfo());
  return o;
}

void checkUnnamed7657(core.List<api.SeqMapTaskOutputInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSeqMapTaskOutputInfo(o[0] as api.SeqMapTaskOutputInfo);
  checkSeqMapTaskOutputInfo(o[1] as api.SeqMapTaskOutputInfo);
}

core.Map<core.String, core.Object> buildUnnamed7658() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7658(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted34 = (o['x']) as core.Map;
  unittest.expect(casted34, unittest.hasLength(3));
  unittest.expect(casted34['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted34['bool'], unittest.equals(true));
  unittest.expect(casted34['string'], unittest.equals('foo'));
  var casted35 = (o['y']) as core.Map;
  unittest.expect(casted35, unittest.hasLength(3));
  unittest.expect(casted35['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted35['bool'], unittest.equals(true));
  unittest.expect(casted35['string'], unittest.equals('foo'));
}

core.int buildCounterSeqMapTask = 0;
api.SeqMapTask buildSeqMapTask() {
  var o = api.SeqMapTask();
  buildCounterSeqMapTask++;
  if (buildCounterSeqMapTask < 3) {
    o.inputs = buildUnnamed7656();
    o.name = 'foo';
    o.outputInfos = buildUnnamed7657();
    o.stageName = 'foo';
    o.systemName = 'foo';
    o.userFn = buildUnnamed7658();
  }
  buildCounterSeqMapTask--;
  return o;
}

void checkSeqMapTask(api.SeqMapTask o) {
  buildCounterSeqMapTask++;
  if (buildCounterSeqMapTask < 3) {
    checkUnnamed7656(o.inputs);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed7657(o.outputInfos);
    unittest.expect(o.stageName, unittest.equals('foo'));
    unittest.expect(o.systemName, unittest.equals('foo'));
    checkUnnamed7658(o.userFn);
  }
  buildCounterSeqMapTask--;
}

core.int buildCounterSeqMapTaskOutputInfo = 0;
api.SeqMapTaskOutputInfo buildSeqMapTaskOutputInfo() {
  var o = api.SeqMapTaskOutputInfo();
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
    checkSink(o.sink as api.Sink);
    unittest.expect(o.tag, unittest.equals('foo'));
  }
  buildCounterSeqMapTaskOutputInfo--;
}

core.int buildCounterShellTask = 0;
api.ShellTask buildShellTask() {
  var o = api.ShellTask();
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
    unittest.expect(o.command, unittest.equals('foo'));
    unittest.expect(o.exitCode, unittest.equals(42));
  }
  buildCounterShellTask--;
}

core.Map<core.String, core.Object> buildUnnamed7659() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7659(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted36 = (o['x']) as core.Map;
  unittest.expect(casted36, unittest.hasLength(3));
  unittest.expect(casted36['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted36['bool'], unittest.equals(true));
  unittest.expect(casted36['string'], unittest.equals('foo'));
  var casted37 = (o['y']) as core.Map;
  unittest.expect(casted37, unittest.hasLength(3));
  unittest.expect(casted37['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted37['bool'], unittest.equals(true));
  unittest.expect(casted37['string'], unittest.equals('foo'));
}

core.List<api.Source> buildUnnamed7660() {
  var o = <api.Source>[];
  o.add(buildSource());
  o.add(buildSource());
  return o;
}

void checkUnnamed7660(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0] as api.Source);
  checkSource(o[1] as api.Source);
}

core.int buildCounterSideInputInfo = 0;
api.SideInputInfo buildSideInputInfo() {
  var o = api.SideInputInfo();
  buildCounterSideInputInfo++;
  if (buildCounterSideInputInfo < 3) {
    o.kind = buildUnnamed7659();
    o.sources = buildUnnamed7660();
    o.tag = 'foo';
  }
  buildCounterSideInputInfo--;
  return o;
}

void checkSideInputInfo(api.SideInputInfo o) {
  buildCounterSideInputInfo++;
  if (buildCounterSideInputInfo < 3) {
    checkUnnamed7659(o.kind);
    checkUnnamed7660(o.sources);
    unittest.expect(o.tag, unittest.equals('foo'));
  }
  buildCounterSideInputInfo--;
}

core.Map<core.String, core.Object> buildUnnamed7661() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7661(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted38 = (o['x']) as core.Map;
  unittest.expect(casted38, unittest.hasLength(3));
  unittest.expect(casted38['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted38['bool'], unittest.equals(true));
  unittest.expect(casted38['string'], unittest.equals('foo'));
  var casted39 = (o['y']) as core.Map;
  unittest.expect(casted39, unittest.hasLength(3));
  unittest.expect(casted39['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted39['bool'], unittest.equals(true));
  unittest.expect(casted39['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed7662() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7662(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted40 = (o['x']) as core.Map;
  unittest.expect(casted40, unittest.hasLength(3));
  unittest.expect(casted40['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted40['bool'], unittest.equals(true));
  unittest.expect(casted40['string'], unittest.equals('foo'));
  var casted41 = (o['y']) as core.Map;
  unittest.expect(casted41, unittest.hasLength(3));
  unittest.expect(casted41['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted41['bool'], unittest.equals(true));
  unittest.expect(casted41['string'], unittest.equals('foo'));
}

core.int buildCounterSink = 0;
api.Sink buildSink() {
  var o = api.Sink();
  buildCounterSink++;
  if (buildCounterSink < 3) {
    o.codec = buildUnnamed7661();
    o.spec = buildUnnamed7662();
  }
  buildCounterSink--;
  return o;
}

void checkSink(api.Sink o) {
  buildCounterSink++;
  if (buildCounterSink < 3) {
    checkUnnamed7661(o.codec);
    checkUnnamed7662(o.spec);
  }
  buildCounterSink--;
}

core.List<api.PubsubSnapshotMetadata> buildUnnamed7663() {
  var o = <api.PubsubSnapshotMetadata>[];
  o.add(buildPubsubSnapshotMetadata());
  o.add(buildPubsubSnapshotMetadata());
  return o;
}

void checkUnnamed7663(core.List<api.PubsubSnapshotMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPubsubSnapshotMetadata(o[0] as api.PubsubSnapshotMetadata);
  checkPubsubSnapshotMetadata(o[1] as api.PubsubSnapshotMetadata);
}

core.int buildCounterSnapshot = 0;
api.Snapshot buildSnapshot() {
  var o = api.Snapshot();
  buildCounterSnapshot++;
  if (buildCounterSnapshot < 3) {
    o.creationTime = 'foo';
    o.description = 'foo';
    o.diskSizeBytes = 'foo';
    o.id = 'foo';
    o.projectId = 'foo';
    o.pubsubMetadata = buildUnnamed7663();
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
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.diskSizeBytes, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkUnnamed7663(o.pubsubMetadata);
    unittest.expect(o.sourceJobId, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.ttl, unittest.equals('foo'));
  }
  buildCounterSnapshot--;
}

core.int buildCounterSnapshotJobRequest = 0;
api.SnapshotJobRequest buildSnapshotJobRequest() {
  var o = api.SnapshotJobRequest();
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
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.snapshotSources, unittest.isTrue);
    unittest.expect(o.ttl, unittest.equals('foo'));
  }
  buildCounterSnapshotJobRequest--;
}

core.Map<core.String, core.Object> buildUnnamed7664() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7664(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted42 = (o['x']) as core.Map;
  unittest.expect(casted42, unittest.hasLength(3));
  unittest.expect(casted42['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted42['bool'], unittest.equals(true));
  unittest.expect(casted42['string'], unittest.equals('foo'));
  var casted43 = (o['y']) as core.Map;
  unittest.expect(casted43, unittest.hasLength(3));
  unittest.expect(casted43['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted43['bool'], unittest.equals(true));
  unittest.expect(casted43['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed7665() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed7664());
  o.add(buildUnnamed7664());
  return o;
}

void checkUnnamed7665(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed7664(o[0]);
  checkUnnamed7664(o[1]);
}

core.Map<core.String, core.Object> buildUnnamed7666() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7666(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted44 = (o['x']) as core.Map;
  unittest.expect(casted44, unittest.hasLength(3));
  unittest.expect(casted44['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted44['bool'], unittest.equals(true));
  unittest.expect(casted44['string'], unittest.equals('foo'));
  var casted45 = (o['y']) as core.Map;
  unittest.expect(casted45, unittest.hasLength(3));
  unittest.expect(casted45['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted45['bool'], unittest.equals(true));
  unittest.expect(casted45['string'], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed7667() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7667(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted46 = (o['x']) as core.Map;
  unittest.expect(casted46, unittest.hasLength(3));
  unittest.expect(casted46['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted46['bool'], unittest.equals(true));
  unittest.expect(casted46['string'], unittest.equals('foo'));
  var casted47 = (o['y']) as core.Map;
  unittest.expect(casted47, unittest.hasLength(3));
  unittest.expect(casted47['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted47['bool'], unittest.equals(true));
  unittest.expect(casted47['string'], unittest.equals('foo'));
}

core.int buildCounterSource = 0;
api.Source buildSource() {
  var o = api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.baseSpecs = buildUnnamed7665();
    o.codec = buildUnnamed7666();
    o.doesNotNeedSplitting = true;
    o.metadata = buildSourceMetadata();
    o.spec = buildUnnamed7667();
  }
  buildCounterSource--;
  return o;
}

void checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    checkUnnamed7665(o.baseSpecs);
    checkUnnamed7666(o.codec);
    unittest.expect(o.doesNotNeedSplitting, unittest.isTrue);
    checkSourceMetadata(o.metadata as api.SourceMetadata);
    checkUnnamed7667(o.spec);
  }
  buildCounterSource--;
}

core.int buildCounterSourceFork = 0;
api.SourceFork buildSourceFork() {
  var o = api.SourceFork();
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
    checkSourceSplitShard(o.primary as api.SourceSplitShard);
    checkDerivedSource(o.primarySource as api.DerivedSource);
    checkSourceSplitShard(o.residual as api.SourceSplitShard);
    checkDerivedSource(o.residualSource as api.DerivedSource);
  }
  buildCounterSourceFork--;
}

core.int buildCounterSourceGetMetadataRequest = 0;
api.SourceGetMetadataRequest buildSourceGetMetadataRequest() {
  var o = api.SourceGetMetadataRequest();
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
    checkSource(o.source as api.Source);
  }
  buildCounterSourceGetMetadataRequest--;
}

core.int buildCounterSourceGetMetadataResponse = 0;
api.SourceGetMetadataResponse buildSourceGetMetadataResponse() {
  var o = api.SourceGetMetadataResponse();
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
    checkSourceMetadata(o.metadata as api.SourceMetadata);
  }
  buildCounterSourceGetMetadataResponse--;
}

core.int buildCounterSourceMetadata = 0;
api.SourceMetadata buildSourceMetadata() {
  var o = api.SourceMetadata();
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
    unittest.expect(o.estimatedSizeBytes, unittest.equals('foo'));
    unittest.expect(o.infinite, unittest.isTrue);
    unittest.expect(o.producesSortedKeys, unittest.isTrue);
  }
  buildCounterSourceMetadata--;
}

core.int buildCounterSourceOperationRequest = 0;
api.SourceOperationRequest buildSourceOperationRequest() {
  var o = api.SourceOperationRequest();
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
    checkSourceGetMetadataRequest(
        o.getMetadata as api.SourceGetMetadataRequest);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.originalName, unittest.equals('foo'));
    checkSourceSplitRequest(o.split as api.SourceSplitRequest);
    unittest.expect(o.stageName, unittest.equals('foo'));
    unittest.expect(o.systemName, unittest.equals('foo'));
  }
  buildCounterSourceOperationRequest--;
}

core.int buildCounterSourceOperationResponse = 0;
api.SourceOperationResponse buildSourceOperationResponse() {
  var o = api.SourceOperationResponse();
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
    checkSourceGetMetadataResponse(
        o.getMetadata as api.SourceGetMetadataResponse);
    checkSourceSplitResponse(o.split as api.SourceSplitResponse);
  }
  buildCounterSourceOperationResponse--;
}

core.int buildCounterSourceSplitOptions = 0;
api.SourceSplitOptions buildSourceSplitOptions() {
  var o = api.SourceSplitOptions();
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
    unittest.expect(o.desiredBundleSizeBytes, unittest.equals('foo'));
    unittest.expect(o.desiredShardSizeBytes, unittest.equals('foo'));
  }
  buildCounterSourceSplitOptions--;
}

core.int buildCounterSourceSplitRequest = 0;
api.SourceSplitRequest buildSourceSplitRequest() {
  var o = api.SourceSplitRequest();
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
    checkSourceSplitOptions(o.options as api.SourceSplitOptions);
    checkSource(o.source as api.Source);
  }
  buildCounterSourceSplitRequest--;
}

core.List<api.DerivedSource> buildUnnamed7668() {
  var o = <api.DerivedSource>[];
  o.add(buildDerivedSource());
  o.add(buildDerivedSource());
  return o;
}

void checkUnnamed7668(core.List<api.DerivedSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDerivedSource(o[0] as api.DerivedSource);
  checkDerivedSource(o[1] as api.DerivedSource);
}

core.List<api.SourceSplitShard> buildUnnamed7669() {
  var o = <api.SourceSplitShard>[];
  o.add(buildSourceSplitShard());
  o.add(buildSourceSplitShard());
  return o;
}

void checkUnnamed7669(core.List<api.SourceSplitShard> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSourceSplitShard(o[0] as api.SourceSplitShard);
  checkSourceSplitShard(o[1] as api.SourceSplitShard);
}

core.int buildCounterSourceSplitResponse = 0;
api.SourceSplitResponse buildSourceSplitResponse() {
  var o = api.SourceSplitResponse();
  buildCounterSourceSplitResponse++;
  if (buildCounterSourceSplitResponse < 3) {
    o.bundles = buildUnnamed7668();
    o.outcome = 'foo';
    o.shards = buildUnnamed7669();
  }
  buildCounterSourceSplitResponse--;
  return o;
}

void checkSourceSplitResponse(api.SourceSplitResponse o) {
  buildCounterSourceSplitResponse++;
  if (buildCounterSourceSplitResponse < 3) {
    checkUnnamed7668(o.bundles);
    unittest.expect(o.outcome, unittest.equals('foo'));
    checkUnnamed7669(o.shards);
  }
  buildCounterSourceSplitResponse--;
}

core.int buildCounterSourceSplitShard = 0;
api.SourceSplitShard buildSourceSplitShard() {
  var o = api.SourceSplitShard();
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
    unittest.expect(o.derivationMode, unittest.equals('foo'));
    checkSource(o.source as api.Source);
  }
  buildCounterSourceSplitShard--;
}

core.int buildCounterSpannerIODetails = 0;
api.SpannerIODetails buildSpannerIODetails() {
  var o = api.SpannerIODetails();
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
    unittest.expect(o.databaseId, unittest.equals('foo'));
    unittest.expect(o.instanceId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterSpannerIODetails--;
}

core.int buildCounterSplitInt64 = 0;
api.SplitInt64 buildSplitInt64() {
  var o = api.SplitInt64();
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
    unittest.expect(o.highBits, unittest.equals(42));
    unittest.expect(o.lowBits, unittest.equals(42));
  }
  buildCounterSplitInt64--;
}

core.List<api.WorkerDetails> buildUnnamed7670() {
  var o = <api.WorkerDetails>[];
  o.add(buildWorkerDetails());
  o.add(buildWorkerDetails());
  return o;
}

void checkUnnamed7670(core.List<api.WorkerDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkerDetails(o[0] as api.WorkerDetails);
  checkWorkerDetails(o[1] as api.WorkerDetails);
}

core.int buildCounterStageExecutionDetails = 0;
api.StageExecutionDetails buildStageExecutionDetails() {
  var o = api.StageExecutionDetails();
  buildCounterStageExecutionDetails++;
  if (buildCounterStageExecutionDetails < 3) {
    o.nextPageToken = 'foo';
    o.workers = buildUnnamed7670();
  }
  buildCounterStageExecutionDetails--;
  return o;
}

void checkStageExecutionDetails(api.StageExecutionDetails o) {
  buildCounterStageExecutionDetails++;
  if (buildCounterStageExecutionDetails < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed7670(o.workers);
  }
  buildCounterStageExecutionDetails--;
}

core.int buildCounterStageSource = 0;
api.StageSource buildStageSource() {
  var o = api.StageSource();
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
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.originalTransformOrCollection, unittest.equals('foo'));
    unittest.expect(o.sizeBytes, unittest.equals('foo'));
    unittest.expect(o.userName, unittest.equals('foo'));
  }
  buildCounterStageSource--;
}

core.List<api.MetricUpdate> buildUnnamed7671() {
  var o = <api.MetricUpdate>[];
  o.add(buildMetricUpdate());
  o.add(buildMetricUpdate());
  return o;
}

void checkUnnamed7671(core.List<api.MetricUpdate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricUpdate(o[0] as api.MetricUpdate);
  checkMetricUpdate(o[1] as api.MetricUpdate);
}

core.int buildCounterStageSummary = 0;
api.StageSummary buildStageSummary() {
  var o = api.StageSummary();
  buildCounterStageSummary++;
  if (buildCounterStageSummary < 3) {
    o.endTime = 'foo';
    o.metrics = buildUnnamed7671();
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
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkUnnamed7671(o.metrics);
    checkProgressTimeseries(o.progress as api.ProgressTimeseries);
    unittest.expect(o.stageId, unittest.equals('foo'));
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
  }
  buildCounterStageSummary--;
}

core.int buildCounterStateFamilyConfig = 0;
api.StateFamilyConfig buildStateFamilyConfig() {
  var o = api.StateFamilyConfig();
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
    unittest.expect(o.isRead, unittest.isTrue);
    unittest.expect(o.stateFamily, unittest.equals('foo'));
  }
  buildCounterStateFamilyConfig--;
}

core.Map<core.String, core.Object> buildUnnamed7672() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7672(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted48 = (o['x']) as core.Map;
  unittest.expect(casted48, unittest.hasLength(3));
  unittest.expect(casted48['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted48['bool'], unittest.equals(true));
  unittest.expect(casted48['string'], unittest.equals('foo'));
  var casted49 = (o['y']) as core.Map;
  unittest.expect(casted49, unittest.hasLength(3));
  unittest.expect(casted49['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted49['bool'], unittest.equals(true));
  unittest.expect(casted49['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed7673() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed7672());
  o.add(buildUnnamed7672());
  return o;
}

void checkUnnamed7673(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed7672(o[0]);
  checkUnnamed7672(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed7673();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed7673(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.Map<core.String, core.Object> buildUnnamed7674() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7674(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted50 = (o['x']) as core.Map;
  unittest.expect(casted50, unittest.hasLength(3));
  unittest.expect(casted50['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted50['bool'], unittest.equals(true));
  unittest.expect(casted50['string'], unittest.equals('foo'));
  var casted51 = (o['y']) as core.Map;
  unittest.expect(casted51, unittest.hasLength(3));
  unittest.expect(casted51['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted51['bool'], unittest.equals(true));
  unittest.expect(casted51['string'], unittest.equals('foo'));
}

core.int buildCounterStep = 0;
api.Step buildStep() {
  var o = api.Step();
  buildCounterStep++;
  if (buildCounterStep < 3) {
    o.kind = 'foo';
    o.name = 'foo';
    o.properties = buildUnnamed7674();
  }
  buildCounterStep--;
  return o;
}

void checkStep(api.Step o) {
  buildCounterStep++;
  if (buildCounterStep < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed7674(o.properties);
  }
  buildCounterStep--;
}

core.int buildCounterStreamLocation = 0;
api.StreamLocation buildStreamLocation() {
  var o = api.StreamLocation();
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
    checkCustomSourceLocation(
        o.customSourceLocation as api.CustomSourceLocation);
    checkPubsubLocation(o.pubsubLocation as api.PubsubLocation);
    checkStreamingSideInputLocation(
        o.sideInputLocation as api.StreamingSideInputLocation);
    checkStreamingStageLocation(
        o.streamingStageLocation as api.StreamingStageLocation);
  }
  buildCounterStreamLocation--;
}

core.int buildCounterStreamingApplianceSnapshotConfig = 0;
api.StreamingApplianceSnapshotConfig buildStreamingApplianceSnapshotConfig() {
  var o = api.StreamingApplianceSnapshotConfig();
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
    unittest.expect(o.importStateEndpoint, unittest.equals('foo'));
    unittest.expect(o.snapshotId, unittest.equals('foo'));
  }
  buildCounterStreamingApplianceSnapshotConfig--;
}

core.List<api.ParallelInstruction> buildUnnamed7675() {
  var o = <api.ParallelInstruction>[];
  o.add(buildParallelInstruction());
  o.add(buildParallelInstruction());
  return o;
}

void checkUnnamed7675(core.List<api.ParallelInstruction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParallelInstruction(o[0] as api.ParallelInstruction);
  checkParallelInstruction(o[1] as api.ParallelInstruction);
}

core.Map<core.String, core.String> buildUnnamed7676() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7676(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterStreamingComputationConfig = 0;
api.StreamingComputationConfig buildStreamingComputationConfig() {
  var o = api.StreamingComputationConfig();
  buildCounterStreamingComputationConfig++;
  if (buildCounterStreamingComputationConfig < 3) {
    o.computationId = 'foo';
    o.instructions = buildUnnamed7675();
    o.stageName = 'foo';
    o.systemName = 'foo';
    o.transformUserNameToStateFamily = buildUnnamed7676();
  }
  buildCounterStreamingComputationConfig--;
  return o;
}

void checkStreamingComputationConfig(api.StreamingComputationConfig o) {
  buildCounterStreamingComputationConfig++;
  if (buildCounterStreamingComputationConfig < 3) {
    unittest.expect(o.computationId, unittest.equals('foo'));
    checkUnnamed7675(o.instructions);
    unittest.expect(o.stageName, unittest.equals('foo'));
    unittest.expect(o.systemName, unittest.equals('foo'));
    checkUnnamed7676(o.transformUserNameToStateFamily);
  }
  buildCounterStreamingComputationConfig--;
}

core.List<api.KeyRangeDataDiskAssignment> buildUnnamed7677() {
  var o = <api.KeyRangeDataDiskAssignment>[];
  o.add(buildKeyRangeDataDiskAssignment());
  o.add(buildKeyRangeDataDiskAssignment());
  return o;
}

void checkUnnamed7677(core.List<api.KeyRangeDataDiskAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyRangeDataDiskAssignment(o[0] as api.KeyRangeDataDiskAssignment);
  checkKeyRangeDataDiskAssignment(o[1] as api.KeyRangeDataDiskAssignment);
}

core.int buildCounterStreamingComputationRanges = 0;
api.StreamingComputationRanges buildStreamingComputationRanges() {
  var o = api.StreamingComputationRanges();
  buildCounterStreamingComputationRanges++;
  if (buildCounterStreamingComputationRanges < 3) {
    o.computationId = 'foo';
    o.rangeAssignments = buildUnnamed7677();
  }
  buildCounterStreamingComputationRanges--;
  return o;
}

void checkStreamingComputationRanges(api.StreamingComputationRanges o) {
  buildCounterStreamingComputationRanges++;
  if (buildCounterStreamingComputationRanges < 3) {
    unittest.expect(o.computationId, unittest.equals('foo'));
    checkUnnamed7677(o.rangeAssignments);
  }
  buildCounterStreamingComputationRanges--;
}

core.List<api.StreamingComputationRanges> buildUnnamed7678() {
  var o = <api.StreamingComputationRanges>[];
  o.add(buildStreamingComputationRanges());
  o.add(buildStreamingComputationRanges());
  return o;
}

void checkUnnamed7678(core.List<api.StreamingComputationRanges> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStreamingComputationRanges(o[0] as api.StreamingComputationRanges);
  checkStreamingComputationRanges(o[1] as api.StreamingComputationRanges);
}

core.List<api.MountedDataDisk> buildUnnamed7679() {
  var o = <api.MountedDataDisk>[];
  o.add(buildMountedDataDisk());
  o.add(buildMountedDataDisk());
  return o;
}

void checkUnnamed7679(core.List<api.MountedDataDisk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMountedDataDisk(o[0] as api.MountedDataDisk);
  checkMountedDataDisk(o[1] as api.MountedDataDisk);
}

core.int buildCounterStreamingComputationTask = 0;
api.StreamingComputationTask buildStreamingComputationTask() {
  var o = api.StreamingComputationTask();
  buildCounterStreamingComputationTask++;
  if (buildCounterStreamingComputationTask < 3) {
    o.computationRanges = buildUnnamed7678();
    o.dataDisks = buildUnnamed7679();
    o.taskType = 'foo';
  }
  buildCounterStreamingComputationTask--;
  return o;
}

void checkStreamingComputationTask(api.StreamingComputationTask o) {
  buildCounterStreamingComputationTask++;
  if (buildCounterStreamingComputationTask < 3) {
    checkUnnamed7678(o.computationRanges);
    checkUnnamed7679(o.dataDisks);
    unittest.expect(o.taskType, unittest.equals('foo'));
  }
  buildCounterStreamingComputationTask--;
}

core.List<api.StreamingComputationConfig> buildUnnamed7680() {
  var o = <api.StreamingComputationConfig>[];
  o.add(buildStreamingComputationConfig());
  o.add(buildStreamingComputationConfig());
  return o;
}

void checkUnnamed7680(core.List<api.StreamingComputationConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStreamingComputationConfig(o[0] as api.StreamingComputationConfig);
  checkStreamingComputationConfig(o[1] as api.StreamingComputationConfig);
}

core.Map<core.String, core.String> buildUnnamed7681() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7681(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterStreamingConfigTask = 0;
api.StreamingConfigTask buildStreamingConfigTask() {
  var o = api.StreamingConfigTask();
  buildCounterStreamingConfigTask++;
  if (buildCounterStreamingConfigTask < 3) {
    o.commitStreamChunkSizeBytes = 'foo';
    o.getDataStreamChunkSizeBytes = 'foo';
    o.maxWorkItemCommitBytes = 'foo';
    o.streamingComputationConfigs = buildUnnamed7680();
    o.userStepToStateFamilyNameMap = buildUnnamed7681();
    o.windmillServiceEndpoint = 'foo';
    o.windmillServicePort = 'foo';
  }
  buildCounterStreamingConfigTask--;
  return o;
}

void checkStreamingConfigTask(api.StreamingConfigTask o) {
  buildCounterStreamingConfigTask++;
  if (buildCounterStreamingConfigTask < 3) {
    unittest.expect(o.commitStreamChunkSizeBytes, unittest.equals('foo'));
    unittest.expect(o.getDataStreamChunkSizeBytes, unittest.equals('foo'));
    unittest.expect(o.maxWorkItemCommitBytes, unittest.equals('foo'));
    checkUnnamed7680(o.streamingComputationConfigs);
    checkUnnamed7681(o.userStepToStateFamilyNameMap);
    unittest.expect(o.windmillServiceEndpoint, unittest.equals('foo'));
    unittest.expect(o.windmillServicePort, unittest.equals('foo'));
  }
  buildCounterStreamingConfigTask--;
}

core.int buildCounterStreamingSetupTask = 0;
api.StreamingSetupTask buildStreamingSetupTask() {
  var o = api.StreamingSetupTask();
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
    unittest.expect(o.drain, unittest.isTrue);
    unittest.expect(o.receiveWorkPort, unittest.equals(42));
    checkStreamingApplianceSnapshotConfig(
        o.snapshotConfig as api.StreamingApplianceSnapshotConfig);
    checkTopologyConfig(o.streamingComputationTopology as api.TopologyConfig);
    unittest.expect(o.workerHarnessPort, unittest.equals(42));
  }
  buildCounterStreamingSetupTask--;
}

core.int buildCounterStreamingSideInputLocation = 0;
api.StreamingSideInputLocation buildStreamingSideInputLocation() {
  var o = api.StreamingSideInputLocation();
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
    unittest.expect(o.stateFamily, unittest.equals('foo'));
    unittest.expect(o.tag, unittest.equals('foo'));
  }
  buildCounterStreamingSideInputLocation--;
}

core.int buildCounterStreamingStageLocation = 0;
api.StreamingStageLocation buildStreamingStageLocation() {
  var o = api.StreamingStageLocation();
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
    unittest.expect(o.streamId, unittest.equals('foo'));
  }
  buildCounterStreamingStageLocation--;
}

core.List<core.String> buildUnnamed7682() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7682(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStringList = 0;
api.StringList buildStringList() {
  var o = api.StringList();
  buildCounterStringList++;
  if (buildCounterStringList < 3) {
    o.elements = buildUnnamed7682();
  }
  buildCounterStringList--;
  return o;
}

void checkStringList(api.StringList o) {
  buildCounterStringList++;
  if (buildCounterStringList < 3) {
    checkUnnamed7682(o.elements);
  }
  buildCounterStringList--;
}

core.List<api.Parameter> buildUnnamed7683() {
  var o = <api.Parameter>[];
  o.add(buildParameter());
  o.add(buildParameter());
  return o;
}

void checkUnnamed7683(core.List<api.Parameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameter(o[0] as api.Parameter);
  checkParameter(o[1] as api.Parameter);
}

core.int buildCounterStructuredMessage = 0;
api.StructuredMessage buildStructuredMessage() {
  var o = api.StructuredMessage();
  buildCounterStructuredMessage++;
  if (buildCounterStructuredMessage < 3) {
    o.messageKey = 'foo';
    o.messageText = 'foo';
    o.parameters = buildUnnamed7683();
  }
  buildCounterStructuredMessage--;
  return o;
}

void checkStructuredMessage(api.StructuredMessage o) {
  buildCounterStructuredMessage++;
  if (buildCounterStructuredMessage < 3) {
    unittest.expect(o.messageKey, unittest.equals('foo'));
    unittest.expect(o.messageText, unittest.equals('foo'));
    checkUnnamed7683(o.parameters);
  }
  buildCounterStructuredMessage--;
}

core.List<core.String> buildUnnamed7684() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7684(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTaskRunnerSettings = 0;
api.TaskRunnerSettings buildTaskRunnerSettings() {
  var o = api.TaskRunnerSettings();
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
    o.oauthScopes = buildUnnamed7684();
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
    unittest.expect(o.alsologtostderr, unittest.isTrue);
    unittest.expect(o.baseTaskDir, unittest.equals('foo'));
    unittest.expect(o.baseUrl, unittest.equals('foo'));
    unittest.expect(o.commandlinesFileName, unittest.equals('foo'));
    unittest.expect(o.continueOnException, unittest.isTrue);
    unittest.expect(o.dataflowApiVersion, unittest.equals('foo'));
    unittest.expect(o.harnessCommand, unittest.equals('foo'));
    unittest.expect(o.languageHint, unittest.equals('foo'));
    unittest.expect(o.logDir, unittest.equals('foo'));
    unittest.expect(o.logToSerialconsole, unittest.isTrue);
    unittest.expect(o.logUploadLocation, unittest.equals('foo'));
    checkUnnamed7684(o.oauthScopes);
    checkWorkerSettings(o.parallelWorkerSettings as api.WorkerSettings);
    unittest.expect(o.streamingWorkerMainClass, unittest.equals('foo'));
    unittest.expect(o.taskGroup, unittest.equals('foo'));
    unittest.expect(o.taskUser, unittest.equals('foo'));
    unittest.expect(o.tempStoragePrefix, unittest.equals('foo'));
    unittest.expect(o.vmId, unittest.equals('foo'));
    unittest.expect(o.workflowFileName, unittest.equals('foo'));
  }
  buildCounterTaskRunnerSettings--;
}

core.List<api.ParameterMetadata> buildUnnamed7685() {
  var o = <api.ParameterMetadata>[];
  o.add(buildParameterMetadata());
  o.add(buildParameterMetadata());
  return o;
}

void checkUnnamed7685(core.List<api.ParameterMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameterMetadata(o[0] as api.ParameterMetadata);
  checkParameterMetadata(o[1] as api.ParameterMetadata);
}

core.int buildCounterTemplateMetadata = 0;
api.TemplateMetadata buildTemplateMetadata() {
  var o = api.TemplateMetadata();
  buildCounterTemplateMetadata++;
  if (buildCounterTemplateMetadata < 3) {
    o.description = 'foo';
    o.name = 'foo';
    o.parameters = buildUnnamed7685();
  }
  buildCounterTemplateMetadata--;
  return o;
}

void checkTemplateMetadata(api.TemplateMetadata o) {
  buildCounterTemplateMetadata++;
  if (buildCounterTemplateMetadata < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed7685(o.parameters);
  }
  buildCounterTemplateMetadata--;
}

core.Map<core.String, core.String> buildUnnamed7686() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7686(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed7687() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7687(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTemplateVersion = 0;
api.TemplateVersion buildTemplateVersion() {
  var o = api.TemplateVersion();
  buildCounterTemplateVersion++;
  if (buildCounterTemplateVersion < 3) {
    o.artifact = buildArtifact();
    o.createTime = 'foo';
    o.description = 'foo';
    o.displayName = 'foo';
    o.labels = buildUnnamed7686();
    o.projectId = 'foo';
    o.tags = buildUnnamed7687();
    o.type = 'foo';
    o.versionId = 'foo';
  }
  buildCounterTemplateVersion--;
  return o;
}

void checkTemplateVersion(api.TemplateVersion o) {
  buildCounterTemplateVersion++;
  if (buildCounterTemplateVersion < 3) {
    checkArtifact(o.artifact as api.Artifact);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed7686(o.labels);
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkUnnamed7687(o.tags);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.versionId, unittest.equals('foo'));
  }
  buildCounterTemplateVersion--;
}

core.List<api.ComputationTopology> buildUnnamed7688() {
  var o = <api.ComputationTopology>[];
  o.add(buildComputationTopology());
  o.add(buildComputationTopology());
  return o;
}

void checkUnnamed7688(core.List<api.ComputationTopology> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComputationTopology(o[0] as api.ComputationTopology);
  checkComputationTopology(o[1] as api.ComputationTopology);
}

core.List<api.DataDiskAssignment> buildUnnamed7689() {
  var o = <api.DataDiskAssignment>[];
  o.add(buildDataDiskAssignment());
  o.add(buildDataDiskAssignment());
  return o;
}

void checkUnnamed7689(core.List<api.DataDiskAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataDiskAssignment(o[0] as api.DataDiskAssignment);
  checkDataDiskAssignment(o[1] as api.DataDiskAssignment);
}

core.Map<core.String, core.String> buildUnnamed7690() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7690(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterTopologyConfig = 0;
api.TopologyConfig buildTopologyConfig() {
  var o = api.TopologyConfig();
  buildCounterTopologyConfig++;
  if (buildCounterTopologyConfig < 3) {
    o.computations = buildUnnamed7688();
    o.dataDiskAssignments = buildUnnamed7689();
    o.forwardingKeyBits = 42;
    o.persistentStateVersion = 42;
    o.userStageToComputationNameMap = buildUnnamed7690();
  }
  buildCounterTopologyConfig--;
  return o;
}

void checkTopologyConfig(api.TopologyConfig o) {
  buildCounterTopologyConfig++;
  if (buildCounterTopologyConfig < 3) {
    checkUnnamed7688(o.computations);
    checkUnnamed7689(o.dataDiskAssignments);
    unittest.expect(o.forwardingKeyBits, unittest.equals(42));
    unittest.expect(o.persistentStateVersion, unittest.equals(42));
    checkUnnamed7690(o.userStageToComputationNameMap);
  }
  buildCounterTopologyConfig--;
}

core.List<api.DisplayData> buildUnnamed7691() {
  var o = <api.DisplayData>[];
  o.add(buildDisplayData());
  o.add(buildDisplayData());
  return o;
}

void checkUnnamed7691(core.List<api.DisplayData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisplayData(o[0] as api.DisplayData);
  checkDisplayData(o[1] as api.DisplayData);
}

core.List<core.String> buildUnnamed7692() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7692(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed7693() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed7693(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTransformSummary = 0;
api.TransformSummary buildTransformSummary() {
  var o = api.TransformSummary();
  buildCounterTransformSummary++;
  if (buildCounterTransformSummary < 3) {
    o.displayData = buildUnnamed7691();
    o.id = 'foo';
    o.inputCollectionName = buildUnnamed7692();
    o.kind = 'foo';
    o.name = 'foo';
    o.outputCollectionName = buildUnnamed7693();
  }
  buildCounterTransformSummary--;
  return o;
}

void checkTransformSummary(api.TransformSummary o) {
  buildCounterTransformSummary++;
  if (buildCounterTransformSummary < 3) {
    checkUnnamed7691(o.displayData);
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed7692(o.inputCollectionName);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed7693(o.outputCollectionName);
  }
  buildCounterTransformSummary--;
}

core.int buildCounterValidateResponse = 0;
api.ValidateResponse buildValidateResponse() {
  var o = api.ValidateResponse();
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
    unittest.expect(o.errorMessage, unittest.equals('foo'));
    checkQueryInfo(o.queryInfo as api.QueryInfo);
  }
  buildCounterValidateResponse--;
}

core.List<api.Package> buildUnnamed7694() {
  var o = <api.Package>[];
  o.add(buildPackage());
  o.add(buildPackage());
  return o;
}

void checkUnnamed7694(core.List<api.Package> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPackage(o[0] as api.Package);
  checkPackage(o[1] as api.Package);
}

core.int buildCounterWorkItem = 0;
api.WorkItem buildWorkItem() {
  var o = api.WorkItem();
  buildCounterWorkItem++;
  if (buildCounterWorkItem < 3) {
    o.configuration = 'foo';
    o.id = 'foo';
    o.initialReportIndex = 'foo';
    o.jobId = 'foo';
    o.leaseExpireTime = 'foo';
    o.mapTask = buildMapTask();
    o.packages = buildUnnamed7694();
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
    unittest.expect(o.configuration, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.initialReportIndex, unittest.equals('foo'));
    unittest.expect(o.jobId, unittest.equals('foo'));
    unittest.expect(o.leaseExpireTime, unittest.equals('foo'));
    checkMapTask(o.mapTask as api.MapTask);
    checkUnnamed7694(o.packages);
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.reportStatusInterval, unittest.equals('foo'));
    checkSeqMapTask(o.seqMapTask as api.SeqMapTask);
    checkShellTask(o.shellTask as api.ShellTask);
    checkSourceOperationRequest(
        o.sourceOperationTask as api.SourceOperationRequest);
    checkStreamingComputationTask(
        o.streamingComputationTask as api.StreamingComputationTask);
    checkStreamingConfigTask(o.streamingConfigTask as api.StreamingConfigTask);
    checkStreamingSetupTask(o.streamingSetupTask as api.StreamingSetupTask);
  }
  buildCounterWorkItem--;
}

core.List<api.MetricUpdate> buildUnnamed7695() {
  var o = <api.MetricUpdate>[];
  o.add(buildMetricUpdate());
  o.add(buildMetricUpdate());
  return o;
}

void checkUnnamed7695(core.List<api.MetricUpdate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricUpdate(o[0] as api.MetricUpdate);
  checkMetricUpdate(o[1] as api.MetricUpdate);
}

core.int buildCounterWorkItemDetails = 0;
api.WorkItemDetails buildWorkItemDetails() {
  var o = api.WorkItemDetails();
  buildCounterWorkItemDetails++;
  if (buildCounterWorkItemDetails < 3) {
    o.attemptId = 'foo';
    o.endTime = 'foo';
    o.metrics = buildUnnamed7695();
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
    unittest.expect(o.attemptId, unittest.equals('foo'));
    unittest.expect(o.endTime, unittest.equals('foo'));
    checkUnnamed7695(o.metrics);
    checkProgressTimeseries(o.progress as api.ProgressTimeseries);
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.taskId, unittest.equals('foo'));
  }
  buildCounterWorkItemDetails--;
}

core.Map<core.String, core.Object> buildUnnamed7696() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7696(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted52 = (o['x']) as core.Map;
  unittest.expect(casted52, unittest.hasLength(3));
  unittest.expect(casted52['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted52['bool'], unittest.equals(true));
  unittest.expect(casted52['string'], unittest.equals('foo'));
  var casted53 = (o['y']) as core.Map;
  unittest.expect(casted53, unittest.hasLength(3));
  unittest.expect(casted53['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted53['bool'], unittest.equals(true));
  unittest.expect(casted53['string'], unittest.equals('foo'));
}

core.List<api.MetricShortId> buildUnnamed7697() {
  var o = <api.MetricShortId>[];
  o.add(buildMetricShortId());
  o.add(buildMetricShortId());
  return o;
}

void checkUnnamed7697(core.List<api.MetricShortId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricShortId(o[0] as api.MetricShortId);
  checkMetricShortId(o[1] as api.MetricShortId);
}

core.int buildCounterWorkItemServiceState = 0;
api.WorkItemServiceState buildWorkItemServiceState() {
  var o = api.WorkItemServiceState();
  buildCounterWorkItemServiceState++;
  if (buildCounterWorkItemServiceState < 3) {
    o.completeWorkStatus = buildStatus();
    o.harnessData = buildUnnamed7696();
    o.hotKeyDetection = buildHotKeyDetection();
    o.leaseExpireTime = 'foo';
    o.metricShortId = buildUnnamed7697();
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
    checkStatus(o.completeWorkStatus as api.Status);
    checkUnnamed7696(o.harnessData);
    checkHotKeyDetection(o.hotKeyDetection as api.HotKeyDetection);
    unittest.expect(o.leaseExpireTime, unittest.equals('foo'));
    checkUnnamed7697(o.metricShortId);
    unittest.expect(o.nextReportIndex, unittest.equals('foo'));
    unittest.expect(o.reportStatusInterval, unittest.equals('foo'));
    checkApproximateSplitRequest(o.splitRequest as api.ApproximateSplitRequest);
    checkApproximateProgress(o.suggestedStopPoint as api.ApproximateProgress);
    checkPosition(o.suggestedStopPosition as api.Position);
  }
  buildCounterWorkItemServiceState--;
}

core.List<api.CounterUpdate> buildUnnamed7698() {
  var o = <api.CounterUpdate>[];
  o.add(buildCounterUpdate());
  o.add(buildCounterUpdate());
  return o;
}

void checkUnnamed7698(core.List<api.CounterUpdate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCounterUpdate(o[0] as api.CounterUpdate);
  checkCounterUpdate(o[1] as api.CounterUpdate);
}

core.List<api.Status> buildUnnamed7699() {
  var o = <api.Status>[];
  o.add(buildStatus());
  o.add(buildStatus());
  return o;
}

void checkUnnamed7699(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0] as api.Status);
  checkStatus(o[1] as api.Status);
}

core.List<api.MetricUpdate> buildUnnamed7700() {
  var o = <api.MetricUpdate>[];
  o.add(buildMetricUpdate());
  o.add(buildMetricUpdate());
  return o;
}

void checkUnnamed7700(core.List<api.MetricUpdate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricUpdate(o[0] as api.MetricUpdate);
  checkMetricUpdate(o[1] as api.MetricUpdate);
}

core.int buildCounterWorkItemStatus = 0;
api.WorkItemStatus buildWorkItemStatus() {
  var o = api.WorkItemStatus();
  buildCounterWorkItemStatus++;
  if (buildCounterWorkItemStatus < 3) {
    o.completed = true;
    o.counterUpdates = buildUnnamed7698();
    o.dynamicSourceSplit = buildDynamicSourceSplit();
    o.errors = buildUnnamed7699();
    o.metricUpdates = buildUnnamed7700();
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
    unittest.expect(o.completed, unittest.isTrue);
    checkUnnamed7698(o.counterUpdates);
    checkDynamicSourceSplit(o.dynamicSourceSplit as api.DynamicSourceSplit);
    checkUnnamed7699(o.errors);
    checkUnnamed7700(o.metricUpdates);
    checkApproximateProgress(o.progress as api.ApproximateProgress);
    unittest.expect(o.reportIndex, unittest.equals('foo'));
    checkApproximateReportedProgress(
        o.reportedProgress as api.ApproximateReportedProgress);
    unittest.expect(o.requestedLeaseDuration, unittest.equals('foo'));
    checkSourceFork(o.sourceFork as api.SourceFork);
    checkSourceOperationResponse(
        o.sourceOperationResponse as api.SourceOperationResponse);
    checkPosition(o.stopPosition as api.Position);
    unittest.expect(o.totalThrottlerWaitTimeSeconds, unittest.equals(42.0));
    unittest.expect(o.workItemId, unittest.equals('foo'));
  }
  buildCounterWorkItemStatus--;
}

core.List<api.WorkItemDetails> buildUnnamed7701() {
  var o = <api.WorkItemDetails>[];
  o.add(buildWorkItemDetails());
  o.add(buildWorkItemDetails());
  return o;
}

void checkUnnamed7701(core.List<api.WorkItemDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkItemDetails(o[0] as api.WorkItemDetails);
  checkWorkItemDetails(o[1] as api.WorkItemDetails);
}

core.int buildCounterWorkerDetails = 0;
api.WorkerDetails buildWorkerDetails() {
  var o = api.WorkerDetails();
  buildCounterWorkerDetails++;
  if (buildCounterWorkerDetails < 3) {
    o.workItems = buildUnnamed7701();
    o.workerName = 'foo';
  }
  buildCounterWorkerDetails--;
  return o;
}

void checkWorkerDetails(api.WorkerDetails o) {
  buildCounterWorkerDetails++;
  if (buildCounterWorkerDetails < 3) {
    checkUnnamed7701(o.workItems);
    unittest.expect(o.workerName, unittest.equals('foo'));
  }
  buildCounterWorkerDetails--;
}

core.Map<core.String, core.Object> buildUnnamed7702() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7702(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted54 = (o['x']) as core.Map;
  unittest.expect(casted54, unittest.hasLength(3));
  unittest.expect(casted54['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted54['bool'], unittest.equals(true));
  unittest.expect(casted54['string'], unittest.equals('foo'));
  var casted55 = (o['y']) as core.Map;
  unittest.expect(casted55, unittest.hasLength(3));
  unittest.expect(casted55['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted55['bool'], unittest.equals(true));
  unittest.expect(casted55['string'], unittest.equals('foo'));
}

core.List<core.Map<core.String, core.Object>> buildUnnamed7703() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed7702());
  o.add(buildUnnamed7702());
  return o;
}

void checkUnnamed7703(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed7702(o[0]);
  checkUnnamed7702(o[1]);
}

core.int buildCounterWorkerHealthReport = 0;
api.WorkerHealthReport buildWorkerHealthReport() {
  var o = api.WorkerHealthReport();
  buildCounterWorkerHealthReport++;
  if (buildCounterWorkerHealthReport < 3) {
    o.msg = 'foo';
    o.pods = buildUnnamed7703();
    o.reportInterval = 'foo';
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
    unittest.expect(o.msg, unittest.equals('foo'));
    checkUnnamed7703(o.pods);
    unittest.expect(o.reportInterval, unittest.equals('foo'));
    unittest.expect(o.vmIsBroken, unittest.isTrue);
    unittest.expect(o.vmIsHealthy, unittest.isTrue);
    unittest.expect(o.vmStartupTime, unittest.equals('foo'));
  }
  buildCounterWorkerHealthReport--;
}

core.int buildCounterWorkerHealthReportResponse = 0;
api.WorkerHealthReportResponse buildWorkerHealthReportResponse() {
  var o = api.WorkerHealthReportResponse();
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
    unittest.expect(o.reportInterval, unittest.equals('foo'));
  }
  buildCounterWorkerHealthReportResponse--;
}

core.Map<core.String, core.String> buildUnnamed7704() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7704(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterWorkerLifecycleEvent = 0;
api.WorkerLifecycleEvent buildWorkerLifecycleEvent() {
  var o = api.WorkerLifecycleEvent();
  buildCounterWorkerLifecycleEvent++;
  if (buildCounterWorkerLifecycleEvent < 3) {
    o.containerStartTime = 'foo';
    o.event = 'foo';
    o.metadata = buildUnnamed7704();
  }
  buildCounterWorkerLifecycleEvent--;
  return o;
}

void checkWorkerLifecycleEvent(api.WorkerLifecycleEvent o) {
  buildCounterWorkerLifecycleEvent++;
  if (buildCounterWorkerLifecycleEvent < 3) {
    unittest.expect(o.containerStartTime, unittest.equals('foo'));
    unittest.expect(o.event, unittest.equals('foo'));
    checkUnnamed7704(o.metadata);
  }
  buildCounterWorkerLifecycleEvent--;
}

core.Map<core.String, core.String> buildUnnamed7705() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7705(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterWorkerMessage = 0;
api.WorkerMessage buildWorkerMessage() {
  var o = api.WorkerMessage();
  buildCounterWorkerMessage++;
  if (buildCounterWorkerMessage < 3) {
    o.labels = buildUnnamed7705();
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
    checkUnnamed7705(o.labels);
    unittest.expect(o.time, unittest.equals('foo'));
    checkWorkerHealthReport(o.workerHealthReport as api.WorkerHealthReport);
    checkWorkerLifecycleEvent(
        o.workerLifecycleEvent as api.WorkerLifecycleEvent);
    checkWorkerMessageCode(o.workerMessageCode as api.WorkerMessageCode);
    checkResourceUtilizationReport(
        o.workerMetrics as api.ResourceUtilizationReport);
    checkWorkerShutdownNotice(
        o.workerShutdownNotice as api.WorkerShutdownNotice);
  }
  buildCounterWorkerMessage--;
}

core.Map<core.String, core.Object> buildUnnamed7706() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7706(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted56 = (o['x']) as core.Map;
  unittest.expect(casted56, unittest.hasLength(3));
  unittest.expect(casted56['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted56['bool'], unittest.equals(true));
  unittest.expect(casted56['string'], unittest.equals('foo'));
  var casted57 = (o['y']) as core.Map;
  unittest.expect(casted57, unittest.hasLength(3));
  unittest.expect(casted57['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted57['bool'], unittest.equals(true));
  unittest.expect(casted57['string'], unittest.equals('foo'));
}

core.int buildCounterWorkerMessageCode = 0;
api.WorkerMessageCode buildWorkerMessageCode() {
  var o = api.WorkerMessageCode();
  buildCounterWorkerMessageCode++;
  if (buildCounterWorkerMessageCode < 3) {
    o.code = 'foo';
    o.parameters = buildUnnamed7706();
  }
  buildCounterWorkerMessageCode--;
  return o;
}

void checkWorkerMessageCode(api.WorkerMessageCode o) {
  buildCounterWorkerMessageCode++;
  if (buildCounterWorkerMessageCode < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed7706(o.parameters);
  }
  buildCounterWorkerMessageCode--;
}

core.int buildCounterWorkerMessageResponse = 0;
api.WorkerMessageResponse buildWorkerMessageResponse() {
  var o = api.WorkerMessageResponse();
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
    checkWorkerHealthReportResponse(
        o.workerHealthReportResponse as api.WorkerHealthReportResponse);
    checkResourceUtilizationReportResponse(
        o.workerMetricsResponse as api.ResourceUtilizationReportResponse);
    checkWorkerShutdownNoticeResponse(
        o.workerShutdownNoticeResponse as api.WorkerShutdownNoticeResponse);
  }
  buildCounterWorkerMessageResponse--;
}

core.List<api.Disk> buildUnnamed7707() {
  var o = <api.Disk>[];
  o.add(buildDisk());
  o.add(buildDisk());
  return o;
}

void checkUnnamed7707(core.List<api.Disk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisk(o[0] as api.Disk);
  checkDisk(o[1] as api.Disk);
}

core.Map<core.String, core.String> buildUnnamed7708() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed7708(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<api.Package> buildUnnamed7709() {
  var o = <api.Package>[];
  o.add(buildPackage());
  o.add(buildPackage());
  return o;
}

void checkUnnamed7709(core.List<api.Package> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPackage(o[0] as api.Package);
  checkPackage(o[1] as api.Package);
}

core.Map<core.String, core.Object> buildUnnamed7710() {
  var o = <core.String, core.Object>{};
  o['x'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o['y'] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

void checkUnnamed7710(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted58 = (o['x']) as core.Map;
  unittest.expect(casted58, unittest.hasLength(3));
  unittest.expect(casted58['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted58['bool'], unittest.equals(true));
  unittest.expect(casted58['string'], unittest.equals('foo'));
  var casted59 = (o['y']) as core.Map;
  unittest.expect(casted59, unittest.hasLength(3));
  unittest.expect(casted59['list'], unittest.equals([1, 2, 3]));
  unittest.expect(casted59['bool'], unittest.equals(true));
  unittest.expect(casted59['string'], unittest.equals('foo'));
}

core.List<api.SdkHarnessContainerImage> buildUnnamed7711() {
  var o = <api.SdkHarnessContainerImage>[];
  o.add(buildSdkHarnessContainerImage());
  o.add(buildSdkHarnessContainerImage());
  return o;
}

void checkUnnamed7711(core.List<api.SdkHarnessContainerImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSdkHarnessContainerImage(o[0] as api.SdkHarnessContainerImage);
  checkSdkHarnessContainerImage(o[1] as api.SdkHarnessContainerImage);
}

core.int buildCounterWorkerPool = 0;
api.WorkerPool buildWorkerPool() {
  var o = api.WorkerPool();
  buildCounterWorkerPool++;
  if (buildCounterWorkerPool < 3) {
    o.autoscalingSettings = buildAutoscalingSettings();
    o.dataDisks = buildUnnamed7707();
    o.defaultPackageSet = 'foo';
    o.diskSizeGb = 42;
    o.diskSourceImage = 'foo';
    o.diskType = 'foo';
    o.ipConfiguration = 'foo';
    o.kind = 'foo';
    o.machineType = 'foo';
    o.metadata = buildUnnamed7708();
    o.network = 'foo';
    o.numThreadsPerWorker = 42;
    o.numWorkers = 42;
    o.onHostMaintenance = 'foo';
    o.packages = buildUnnamed7709();
    o.poolArgs = buildUnnamed7710();
    o.sdkHarnessContainerImages = buildUnnamed7711();
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
    checkAutoscalingSettings(o.autoscalingSettings as api.AutoscalingSettings);
    checkUnnamed7707(o.dataDisks);
    unittest.expect(o.defaultPackageSet, unittest.equals('foo'));
    unittest.expect(o.diskSizeGb, unittest.equals(42));
    unittest.expect(o.diskSourceImage, unittest.equals('foo'));
    unittest.expect(o.diskType, unittest.equals('foo'));
    unittest.expect(o.ipConfiguration, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.machineType, unittest.equals('foo'));
    checkUnnamed7708(o.metadata);
    unittest.expect(o.network, unittest.equals('foo'));
    unittest.expect(o.numThreadsPerWorker, unittest.equals(42));
    unittest.expect(o.numWorkers, unittest.equals(42));
    unittest.expect(o.onHostMaintenance, unittest.equals('foo'));
    checkUnnamed7709(o.packages);
    checkUnnamed7710(o.poolArgs);
    checkUnnamed7711(o.sdkHarnessContainerImages);
    unittest.expect(o.subnetwork, unittest.equals('foo'));
    checkTaskRunnerSettings(o.taskrunnerSettings as api.TaskRunnerSettings);
    unittest.expect(o.teardownPolicy, unittest.equals('foo'));
    unittest.expect(o.workerHarnessContainerImage, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterWorkerPool--;
}

core.int buildCounterWorkerSettings = 0;
api.WorkerSettings buildWorkerSettings() {
  var o = api.WorkerSettings();
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
    unittest.expect(o.baseUrl, unittest.equals('foo'));
    unittest.expect(o.reportingEnabled, unittest.isTrue);
    unittest.expect(o.servicePath, unittest.equals('foo'));
    unittest.expect(o.shuffleServicePath, unittest.equals('foo'));
    unittest.expect(o.tempStoragePrefix, unittest.equals('foo'));
    unittest.expect(o.workerId, unittest.equals('foo'));
  }
  buildCounterWorkerSettings--;
}

core.int buildCounterWorkerShutdownNotice = 0;
api.WorkerShutdownNotice buildWorkerShutdownNotice() {
  var o = api.WorkerShutdownNotice();
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
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterWorkerShutdownNotice--;
}

core.int buildCounterWorkerShutdownNoticeResponse = 0;
api.WorkerShutdownNoticeResponse buildWorkerShutdownNoticeResponse() {
  var o = api.WorkerShutdownNoticeResponse();
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
  var o = api.WriteInstruction();
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
    checkInstructionInput(o.input as api.InstructionInput);
    checkSink(o.sink as api.Sink);
  }
  buildCounterWriteInstruction--;
}

void main() {
  unittest.group('obj-schema-ApproximateProgress', () {
    unittest.test('to-json--from-json', () {
      var o = buildApproximateProgress();
      var od = api.ApproximateProgress.fromJson(o.toJson());
      checkApproximateProgress(od as api.ApproximateProgress);
    });
  });

  unittest.group('obj-schema-ApproximateReportedProgress', () {
    unittest.test('to-json--from-json', () {
      var o = buildApproximateReportedProgress();
      var od = api.ApproximateReportedProgress.fromJson(o.toJson());
      checkApproximateReportedProgress(od as api.ApproximateReportedProgress);
    });
  });

  unittest.group('obj-schema-ApproximateSplitRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildApproximateSplitRequest();
      var od = api.ApproximateSplitRequest.fromJson(o.toJson());
      checkApproximateSplitRequest(od as api.ApproximateSplitRequest);
    });
  });

  unittest.group('obj-schema-Artifact', () {
    unittest.test('to-json--from-json', () {
      var o = buildArtifact();
      var od = api.Artifact.fromJson(o.toJson());
      checkArtifact(od as api.Artifact);
    });
  });

  unittest.group('obj-schema-AutoscalingEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildAutoscalingEvent();
      var od = api.AutoscalingEvent.fromJson(o.toJson());
      checkAutoscalingEvent(od as api.AutoscalingEvent);
    });
  });

  unittest.group('obj-schema-AutoscalingSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildAutoscalingSettings();
      var od = api.AutoscalingSettings.fromJson(o.toJson());
      checkAutoscalingSettings(od as api.AutoscalingSettings);
    });
  });

  unittest.group('obj-schema-BigQueryIODetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildBigQueryIODetails();
      var od = api.BigQueryIODetails.fromJson(o.toJson());
      checkBigQueryIODetails(od as api.BigQueryIODetails);
    });
  });

  unittest.group('obj-schema-BigTableIODetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildBigTableIODetails();
      var od = api.BigTableIODetails.fromJson(o.toJson());
      checkBigTableIODetails(od as api.BigTableIODetails);
    });
  });

  unittest.group('obj-schema-CPUTime', () {
    unittest.test('to-json--from-json', () {
      var o = buildCPUTime();
      var od = api.CPUTime.fromJson(o.toJson());
      checkCPUTime(od as api.CPUTime);
    });
  });

  unittest.group('obj-schema-CommitTemplateVersionRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCommitTemplateVersionRequest();
      var od = api.CommitTemplateVersionRequest.fromJson(o.toJson());
      checkCommitTemplateVersionRequest(od as api.CommitTemplateVersionRequest);
    });
  });

  unittest.group('obj-schema-ComponentSource', () {
    unittest.test('to-json--from-json', () {
      var o = buildComponentSource();
      var od = api.ComponentSource.fromJson(o.toJson());
      checkComponentSource(od as api.ComponentSource);
    });
  });

  unittest.group('obj-schema-ComponentTransform', () {
    unittest.test('to-json--from-json', () {
      var o = buildComponentTransform();
      var od = api.ComponentTransform.fromJson(o.toJson());
      checkComponentTransform(od as api.ComponentTransform);
    });
  });

  unittest.group('obj-schema-ComputationTopology', () {
    unittest.test('to-json--from-json', () {
      var o = buildComputationTopology();
      var od = api.ComputationTopology.fromJson(o.toJson());
      checkComputationTopology(od as api.ComputationTopology);
    });
  });

  unittest.group('obj-schema-ConcatPosition', () {
    unittest.test('to-json--from-json', () {
      var o = buildConcatPosition();
      var od = api.ConcatPosition.fromJson(o.toJson());
      checkConcatPosition(od as api.ConcatPosition);
    });
  });

  unittest.group('obj-schema-ContainerSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildContainerSpec();
      var od = api.ContainerSpec.fromJson(o.toJson());
      checkContainerSpec(od as api.ContainerSpec);
    });
  });

  unittest.group('obj-schema-CounterMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildCounterMetadata();
      var od = api.CounterMetadata.fromJson(o.toJson());
      checkCounterMetadata(od as api.CounterMetadata);
    });
  });

  unittest.group('obj-schema-CounterStructuredName', () {
    unittest.test('to-json--from-json', () {
      var o = buildCounterStructuredName();
      var od = api.CounterStructuredName.fromJson(o.toJson());
      checkCounterStructuredName(od as api.CounterStructuredName);
    });
  });

  unittest.group('obj-schema-CounterStructuredNameAndMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildCounterStructuredNameAndMetadata();
      var od = api.CounterStructuredNameAndMetadata.fromJson(o.toJson());
      checkCounterStructuredNameAndMetadata(
          od as api.CounterStructuredNameAndMetadata);
    });
  });

  unittest.group('obj-schema-CounterUpdate', () {
    unittest.test('to-json--from-json', () {
      var o = buildCounterUpdate();
      var od = api.CounterUpdate.fromJson(o.toJson());
      checkCounterUpdate(od as api.CounterUpdate);
    });
  });

  unittest.group('obj-schema-CreateJobFromTemplateRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateJobFromTemplateRequest();
      var od = api.CreateJobFromTemplateRequest.fromJson(o.toJson());
      checkCreateJobFromTemplateRequest(od as api.CreateJobFromTemplateRequest);
    });
  });

  unittest.group('obj-schema-CreateTemplateVersionRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateTemplateVersionRequest();
      var od = api.CreateTemplateVersionRequest.fromJson(o.toJson());
      checkCreateTemplateVersionRequest(od as api.CreateTemplateVersionRequest);
    });
  });

  unittest.group('obj-schema-CustomSourceLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomSourceLocation();
      var od = api.CustomSourceLocation.fromJson(o.toJson());
      checkCustomSourceLocation(od as api.CustomSourceLocation);
    });
  });

  unittest.group('obj-schema-DataDiskAssignment', () {
    unittest.test('to-json--from-json', () {
      var o = buildDataDiskAssignment();
      var od = api.DataDiskAssignment.fromJson(o.toJson());
      checkDataDiskAssignment(od as api.DataDiskAssignment);
    });
  });

  unittest.group('obj-schema-DatastoreIODetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatastoreIODetails();
      var od = api.DatastoreIODetails.fromJson(o.toJson());
      checkDatastoreIODetails(od as api.DatastoreIODetails);
    });
  });

  unittest.group('obj-schema-DeleteSnapshotResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteSnapshotResponse();
      var od = api.DeleteSnapshotResponse.fromJson(o.toJson());
      checkDeleteSnapshotResponse(od as api.DeleteSnapshotResponse);
    });
  });

  unittest.group('obj-schema-DerivedSource', () {
    unittest.test('to-json--from-json', () {
      var o = buildDerivedSource();
      var od = api.DerivedSource.fromJson(o.toJson());
      checkDerivedSource(od as api.DerivedSource);
    });
  });

  unittest.group('obj-schema-Disk', () {
    unittest.test('to-json--from-json', () {
      var o = buildDisk();
      var od = api.Disk.fromJson(o.toJson());
      checkDisk(od as api.Disk);
    });
  });

  unittest.group('obj-schema-DisplayData', () {
    unittest.test('to-json--from-json', () {
      var o = buildDisplayData();
      var od = api.DisplayData.fromJson(o.toJson());
      checkDisplayData(od as api.DisplayData);
    });
  });

  unittest.group('obj-schema-DistributionUpdate', () {
    unittest.test('to-json--from-json', () {
      var o = buildDistributionUpdate();
      var od = api.DistributionUpdate.fromJson(o.toJson());
      checkDistributionUpdate(od as api.DistributionUpdate);
    });
  });

  unittest.group('obj-schema-DynamicSourceSplit', () {
    unittest.test('to-json--from-json', () {
      var o = buildDynamicSourceSplit();
      var od = api.DynamicSourceSplit.fromJson(o.toJson());
      checkDynamicSourceSplit(od as api.DynamicSourceSplit);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od as api.Empty);
    });
  });

  unittest.group('obj-schema-Environment', () {
    unittest.test('to-json--from-json', () {
      var o = buildEnvironment();
      var od = api.Environment.fromJson(o.toJson());
      checkEnvironment(od as api.Environment);
    });
  });

  unittest.group('obj-schema-ExecutionStageState', () {
    unittest.test('to-json--from-json', () {
      var o = buildExecutionStageState();
      var od = api.ExecutionStageState.fromJson(o.toJson());
      checkExecutionStageState(od as api.ExecutionStageState);
    });
  });

  unittest.group('obj-schema-ExecutionStageSummary', () {
    unittest.test('to-json--from-json', () {
      var o = buildExecutionStageSummary();
      var od = api.ExecutionStageSummary.fromJson(o.toJson());
      checkExecutionStageSummary(od as api.ExecutionStageSummary);
    });
  });

  unittest.group('obj-schema-FailedLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildFailedLocation();
      var od = api.FailedLocation.fromJson(o.toJson());
      checkFailedLocation(od as api.FailedLocation);
    });
  });

  unittest.group('obj-schema-FileIODetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildFileIODetails();
      var od = api.FileIODetails.fromJson(o.toJson());
      checkFileIODetails(od as api.FileIODetails);
    });
  });

  unittest.group('obj-schema-FlattenInstruction', () {
    unittest.test('to-json--from-json', () {
      var o = buildFlattenInstruction();
      var od = api.FlattenInstruction.fromJson(o.toJson());
      checkFlattenInstruction(od as api.FlattenInstruction);
    });
  });

  unittest.group('obj-schema-FlexTemplateRuntimeEnvironment', () {
    unittest.test('to-json--from-json', () {
      var o = buildFlexTemplateRuntimeEnvironment();
      var od = api.FlexTemplateRuntimeEnvironment.fromJson(o.toJson());
      checkFlexTemplateRuntimeEnvironment(
          od as api.FlexTemplateRuntimeEnvironment);
    });
  });

  unittest.group('obj-schema-FloatingPointList', () {
    unittest.test('to-json--from-json', () {
      var o = buildFloatingPointList();
      var od = api.FloatingPointList.fromJson(o.toJson());
      checkFloatingPointList(od as api.FloatingPointList);
    });
  });

  unittest.group('obj-schema-FloatingPointMean', () {
    unittest.test('to-json--from-json', () {
      var o = buildFloatingPointMean();
      var od = api.FloatingPointMean.fromJson(o.toJson());
      checkFloatingPointMean(od as api.FloatingPointMean);
    });
  });

  unittest.group('obj-schema-GetDebugConfigRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGetDebugConfigRequest();
      var od = api.GetDebugConfigRequest.fromJson(o.toJson());
      checkGetDebugConfigRequest(od as api.GetDebugConfigRequest);
    });
  });

  unittest.group('obj-schema-GetDebugConfigResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGetDebugConfigResponse();
      var od = api.GetDebugConfigResponse.fromJson(o.toJson());
      checkGetDebugConfigResponse(od as api.GetDebugConfigResponse);
    });
  });

  unittest.group('obj-schema-GetTemplateResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGetTemplateResponse();
      var od = api.GetTemplateResponse.fromJson(o.toJson());
      checkGetTemplateResponse(od as api.GetTemplateResponse);
    });
  });

  unittest.group('obj-schema-Histogram', () {
    unittest.test('to-json--from-json', () {
      var o = buildHistogram();
      var od = api.Histogram.fromJson(o.toJson());
      checkHistogram(od as api.Histogram);
    });
  });

  unittest.group('obj-schema-HotKeyDetection', () {
    unittest.test('to-json--from-json', () {
      var o = buildHotKeyDetection();
      var od = api.HotKeyDetection.fromJson(o.toJson());
      checkHotKeyDetection(od as api.HotKeyDetection);
    });
  });

  unittest.group('obj-schema-InstructionInput', () {
    unittest.test('to-json--from-json', () {
      var o = buildInstructionInput();
      var od = api.InstructionInput.fromJson(o.toJson());
      checkInstructionInput(od as api.InstructionInput);
    });
  });

  unittest.group('obj-schema-InstructionOutput', () {
    unittest.test('to-json--from-json', () {
      var o = buildInstructionOutput();
      var od = api.InstructionOutput.fromJson(o.toJson());
      checkInstructionOutput(od as api.InstructionOutput);
    });
  });

  unittest.group('obj-schema-IntegerGauge', () {
    unittest.test('to-json--from-json', () {
      var o = buildIntegerGauge();
      var od = api.IntegerGauge.fromJson(o.toJson());
      checkIntegerGauge(od as api.IntegerGauge);
    });
  });

  unittest.group('obj-schema-IntegerList', () {
    unittest.test('to-json--from-json', () {
      var o = buildIntegerList();
      var od = api.IntegerList.fromJson(o.toJson());
      checkIntegerList(od as api.IntegerList);
    });
  });

  unittest.group('obj-schema-IntegerMean', () {
    unittest.test('to-json--from-json', () {
      var o = buildIntegerMean();
      var od = api.IntegerMean.fromJson(o.toJson());
      checkIntegerMean(od as api.IntegerMean);
    });
  });

  unittest.group('obj-schema-Job', () {
    unittest.test('to-json--from-json', () {
      var o = buildJob();
      var od = api.Job.fromJson(o.toJson());
      checkJob(od as api.Job);
    });
  });

  unittest.group('obj-schema-JobExecutionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildJobExecutionDetails();
      var od = api.JobExecutionDetails.fromJson(o.toJson());
      checkJobExecutionDetails(od as api.JobExecutionDetails);
    });
  });

  unittest.group('obj-schema-JobExecutionInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildJobExecutionInfo();
      var od = api.JobExecutionInfo.fromJson(o.toJson());
      checkJobExecutionInfo(od as api.JobExecutionInfo);
    });
  });

  unittest.group('obj-schema-JobExecutionStageInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildJobExecutionStageInfo();
      var od = api.JobExecutionStageInfo.fromJson(o.toJson());
      checkJobExecutionStageInfo(od as api.JobExecutionStageInfo);
    });
  });

  unittest.group('obj-schema-JobMessage', () {
    unittest.test('to-json--from-json', () {
      var o = buildJobMessage();
      var od = api.JobMessage.fromJson(o.toJson());
      checkJobMessage(od as api.JobMessage);
    });
  });

  unittest.group('obj-schema-JobMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildJobMetadata();
      var od = api.JobMetadata.fromJson(o.toJson());
      checkJobMetadata(od as api.JobMetadata);
    });
  });

  unittest.group('obj-schema-JobMetrics', () {
    unittest.test('to-json--from-json', () {
      var o = buildJobMetrics();
      var od = api.JobMetrics.fromJson(o.toJson());
      checkJobMetrics(od as api.JobMetrics);
    });
  });

  unittest.group('obj-schema-KeyRangeDataDiskAssignment', () {
    unittest.test('to-json--from-json', () {
      var o = buildKeyRangeDataDiskAssignment();
      var od = api.KeyRangeDataDiskAssignment.fromJson(o.toJson());
      checkKeyRangeDataDiskAssignment(od as api.KeyRangeDataDiskAssignment);
    });
  });

  unittest.group('obj-schema-KeyRangeLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildKeyRangeLocation();
      var od = api.KeyRangeLocation.fromJson(o.toJson());
      checkKeyRangeLocation(od as api.KeyRangeLocation);
    });
  });

  unittest.group('obj-schema-LaunchFlexTemplateParameter', () {
    unittest.test('to-json--from-json', () {
      var o = buildLaunchFlexTemplateParameter();
      var od = api.LaunchFlexTemplateParameter.fromJson(o.toJson());
      checkLaunchFlexTemplateParameter(od as api.LaunchFlexTemplateParameter);
    });
  });

  unittest.group('obj-schema-LaunchFlexTemplateRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildLaunchFlexTemplateRequest();
      var od = api.LaunchFlexTemplateRequest.fromJson(o.toJson());
      checkLaunchFlexTemplateRequest(od as api.LaunchFlexTemplateRequest);
    });
  });

  unittest.group('obj-schema-LaunchFlexTemplateResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLaunchFlexTemplateResponse();
      var od = api.LaunchFlexTemplateResponse.fromJson(o.toJson());
      checkLaunchFlexTemplateResponse(od as api.LaunchFlexTemplateResponse);
    });
  });

  unittest.group('obj-schema-LaunchTemplateParameters', () {
    unittest.test('to-json--from-json', () {
      var o = buildLaunchTemplateParameters();
      var od = api.LaunchTemplateParameters.fromJson(o.toJson());
      checkLaunchTemplateParameters(od as api.LaunchTemplateParameters);
    });
  });

  unittest.group('obj-schema-LaunchTemplateResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLaunchTemplateResponse();
      var od = api.LaunchTemplateResponse.fromJson(o.toJson());
      checkLaunchTemplateResponse(od as api.LaunchTemplateResponse);
    });
  });

  unittest.group('obj-schema-LeaseWorkItemRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildLeaseWorkItemRequest();
      var od = api.LeaseWorkItemRequest.fromJson(o.toJson());
      checkLeaseWorkItemRequest(od as api.LeaseWorkItemRequest);
    });
  });

  unittest.group('obj-schema-LeaseWorkItemResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLeaseWorkItemResponse();
      var od = api.LeaseWorkItemResponse.fromJson(o.toJson());
      checkLeaseWorkItemResponse(od as api.LeaseWorkItemResponse);
    });
  });

  unittest.group('obj-schema-ListJobMessagesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListJobMessagesResponse();
      var od = api.ListJobMessagesResponse.fromJson(o.toJson());
      checkListJobMessagesResponse(od as api.ListJobMessagesResponse);
    });
  });

  unittest.group('obj-schema-ListJobsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListJobsResponse();
      var od = api.ListJobsResponse.fromJson(o.toJson());
      checkListJobsResponse(od as api.ListJobsResponse);
    });
  });

  unittest.group('obj-schema-ListSnapshotsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListSnapshotsResponse();
      var od = api.ListSnapshotsResponse.fromJson(o.toJson());
      checkListSnapshotsResponse(od as api.ListSnapshotsResponse);
    });
  });

  unittest.group('obj-schema-ListTemplateVersionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListTemplateVersionsResponse();
      var od = api.ListTemplateVersionsResponse.fromJson(o.toJson());
      checkListTemplateVersionsResponse(od as api.ListTemplateVersionsResponse);
    });
  });

  unittest.group('obj-schema-MapTask', () {
    unittest.test('to-json--from-json', () {
      var o = buildMapTask();
      var od = api.MapTask.fromJson(o.toJson());
      checkMapTask(od as api.MapTask);
    });
  });

  unittest.group('obj-schema-MemInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildMemInfo();
      var od = api.MemInfo.fromJson(o.toJson());
      checkMemInfo(od as api.MemInfo);
    });
  });

  unittest.group('obj-schema-MetricShortId', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetricShortId();
      var od = api.MetricShortId.fromJson(o.toJson());
      checkMetricShortId(od as api.MetricShortId);
    });
  });

  unittest.group('obj-schema-MetricStructuredName', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetricStructuredName();
      var od = api.MetricStructuredName.fromJson(o.toJson());
      checkMetricStructuredName(od as api.MetricStructuredName);
    });
  });

  unittest.group('obj-schema-MetricUpdate', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetricUpdate();
      var od = api.MetricUpdate.fromJson(o.toJson());
      checkMetricUpdate(od as api.MetricUpdate);
    });
  });

  unittest.group('obj-schema-ModifyTemplateVersionLabelRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildModifyTemplateVersionLabelRequest();
      var od = api.ModifyTemplateVersionLabelRequest.fromJson(o.toJson());
      checkModifyTemplateVersionLabelRequest(
          od as api.ModifyTemplateVersionLabelRequest);
    });
  });

  unittest.group('obj-schema-ModifyTemplateVersionLabelResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildModifyTemplateVersionLabelResponse();
      var od = api.ModifyTemplateVersionLabelResponse.fromJson(o.toJson());
      checkModifyTemplateVersionLabelResponse(
          od as api.ModifyTemplateVersionLabelResponse);
    });
  });

  unittest.group('obj-schema-ModifyTemplateVersionTagRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildModifyTemplateVersionTagRequest();
      var od = api.ModifyTemplateVersionTagRequest.fromJson(o.toJson());
      checkModifyTemplateVersionTagRequest(
          od as api.ModifyTemplateVersionTagRequest);
    });
  });

  unittest.group('obj-schema-ModifyTemplateVersionTagResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildModifyTemplateVersionTagResponse();
      var od = api.ModifyTemplateVersionTagResponse.fromJson(o.toJson());
      checkModifyTemplateVersionTagResponse(
          od as api.ModifyTemplateVersionTagResponse);
    });
  });

  unittest.group('obj-schema-MountedDataDisk', () {
    unittest.test('to-json--from-json', () {
      var o = buildMountedDataDisk();
      var od = api.MountedDataDisk.fromJson(o.toJson());
      checkMountedDataDisk(od as api.MountedDataDisk);
    });
  });

  unittest.group('obj-schema-MultiOutputInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildMultiOutputInfo();
      var od = api.MultiOutputInfo.fromJson(o.toJson());
      checkMultiOutputInfo(od as api.MultiOutputInfo);
    });
  });

  unittest.group('obj-schema-NameAndKind', () {
    unittest.test('to-json--from-json', () {
      var o = buildNameAndKind();
      var od = api.NameAndKind.fromJson(o.toJson());
      checkNameAndKind(od as api.NameAndKind);
    });
  });

  unittest.group('obj-schema-Package', () {
    unittest.test('to-json--from-json', () {
      var o = buildPackage();
      var od = api.Package.fromJson(o.toJson());
      checkPackage(od as api.Package);
    });
  });

  unittest.group('obj-schema-ParDoInstruction', () {
    unittest.test('to-json--from-json', () {
      var o = buildParDoInstruction();
      var od = api.ParDoInstruction.fromJson(o.toJson());
      checkParDoInstruction(od as api.ParDoInstruction);
    });
  });

  unittest.group('obj-schema-ParallelInstruction', () {
    unittest.test('to-json--from-json', () {
      var o = buildParallelInstruction();
      var od = api.ParallelInstruction.fromJson(o.toJson());
      checkParallelInstruction(od as api.ParallelInstruction);
    });
  });

  unittest.group('obj-schema-Parameter', () {
    unittest.test('to-json--from-json', () {
      var o = buildParameter();
      var od = api.Parameter.fromJson(o.toJson());
      checkParameter(od as api.Parameter);
    });
  });

  unittest.group('obj-schema-ParameterMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildParameterMetadata();
      var od = api.ParameterMetadata.fromJson(o.toJson());
      checkParameterMetadata(od as api.ParameterMetadata);
    });
  });

  unittest.group('obj-schema-PartialGroupByKeyInstruction', () {
    unittest.test('to-json--from-json', () {
      var o = buildPartialGroupByKeyInstruction();
      var od = api.PartialGroupByKeyInstruction.fromJson(o.toJson());
      checkPartialGroupByKeyInstruction(od as api.PartialGroupByKeyInstruction);
    });
  });

  unittest.group('obj-schema-PipelineDescription', () {
    unittest.test('to-json--from-json', () {
      var o = buildPipelineDescription();
      var od = api.PipelineDescription.fromJson(o.toJson());
      checkPipelineDescription(od as api.PipelineDescription);
    });
  });

  unittest.group('obj-schema-Point', () {
    unittest.test('to-json--from-json', () {
      var o = buildPoint();
      var od = api.Point.fromJson(o.toJson());
      checkPoint(od as api.Point);
    });
  });

  unittest.group('obj-schema-Position', () {
    unittest.test('to-json--from-json', () {
      var o = buildPosition();
      var od = api.Position.fromJson(o.toJson());
      checkPosition(od as api.Position);
    });
  });

  unittest.group('obj-schema-ProgressTimeseries', () {
    unittest.test('to-json--from-json', () {
      var o = buildProgressTimeseries();
      var od = api.ProgressTimeseries.fromJson(o.toJson());
      checkProgressTimeseries(od as api.ProgressTimeseries);
    });
  });

  unittest.group('obj-schema-PubSubIODetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildPubSubIODetails();
      var od = api.PubSubIODetails.fromJson(o.toJson());
      checkPubSubIODetails(od as api.PubSubIODetails);
    });
  });

  unittest.group('obj-schema-PubsubLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildPubsubLocation();
      var od = api.PubsubLocation.fromJson(o.toJson());
      checkPubsubLocation(od as api.PubsubLocation);
    });
  });

  unittest.group('obj-schema-PubsubSnapshotMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildPubsubSnapshotMetadata();
      var od = api.PubsubSnapshotMetadata.fromJson(o.toJson());
      checkPubsubSnapshotMetadata(od as api.PubsubSnapshotMetadata);
    });
  });

  unittest.group('obj-schema-QueryInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildQueryInfo();
      var od = api.QueryInfo.fromJson(o.toJson());
      checkQueryInfo(od as api.QueryInfo);
    });
  });

  unittest.group('obj-schema-ReadInstruction', () {
    unittest.test('to-json--from-json', () {
      var o = buildReadInstruction();
      var od = api.ReadInstruction.fromJson(o.toJson());
      checkReadInstruction(od as api.ReadInstruction);
    });
  });

  unittest.group('obj-schema-ReportWorkItemStatusRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportWorkItemStatusRequest();
      var od = api.ReportWorkItemStatusRequest.fromJson(o.toJson());
      checkReportWorkItemStatusRequest(od as api.ReportWorkItemStatusRequest);
    });
  });

  unittest.group('obj-schema-ReportWorkItemStatusResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportWorkItemStatusResponse();
      var od = api.ReportWorkItemStatusResponse.fromJson(o.toJson());
      checkReportWorkItemStatusResponse(od as api.ReportWorkItemStatusResponse);
    });
  });

  unittest.group('obj-schema-ReportedParallelism', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportedParallelism();
      var od = api.ReportedParallelism.fromJson(o.toJson());
      checkReportedParallelism(od as api.ReportedParallelism);
    });
  });

  unittest.group('obj-schema-ResourceUtilizationReport', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceUtilizationReport();
      var od = api.ResourceUtilizationReport.fromJson(o.toJson());
      checkResourceUtilizationReport(od as api.ResourceUtilizationReport);
    });
  });

  unittest.group('obj-schema-ResourceUtilizationReportResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceUtilizationReportResponse();
      var od = api.ResourceUtilizationReportResponse.fromJson(o.toJson());
      checkResourceUtilizationReportResponse(
          od as api.ResourceUtilizationReportResponse);
    });
  });

  unittest.group('obj-schema-RuntimeEnvironment', () {
    unittest.test('to-json--from-json', () {
      var o = buildRuntimeEnvironment();
      var od = api.RuntimeEnvironment.fromJson(o.toJson());
      checkRuntimeEnvironment(od as api.RuntimeEnvironment);
    });
  });

  unittest.group('obj-schema-RuntimeMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildRuntimeMetadata();
      var od = api.RuntimeMetadata.fromJson(o.toJson());
      checkRuntimeMetadata(od as api.RuntimeMetadata);
    });
  });

  unittest.group('obj-schema-SDKInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildSDKInfo();
      var od = api.SDKInfo.fromJson(o.toJson());
      checkSDKInfo(od as api.SDKInfo);
    });
  });

  unittest.group('obj-schema-SdkHarnessContainerImage', () {
    unittest.test('to-json--from-json', () {
      var o = buildSdkHarnessContainerImage();
      var od = api.SdkHarnessContainerImage.fromJson(o.toJson());
      checkSdkHarnessContainerImage(od as api.SdkHarnessContainerImage);
    });
  });

  unittest.group('obj-schema-SdkVersion', () {
    unittest.test('to-json--from-json', () {
      var o = buildSdkVersion();
      var od = api.SdkVersion.fromJson(o.toJson());
      checkSdkVersion(od as api.SdkVersion);
    });
  });

  unittest.group('obj-schema-SendDebugCaptureRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSendDebugCaptureRequest();
      var od = api.SendDebugCaptureRequest.fromJson(o.toJson());
      checkSendDebugCaptureRequest(od as api.SendDebugCaptureRequest);
    });
  });

  unittest.group('obj-schema-SendDebugCaptureResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSendDebugCaptureResponse();
      var od = api.SendDebugCaptureResponse.fromJson(o.toJson());
      checkSendDebugCaptureResponse(od as api.SendDebugCaptureResponse);
    });
  });

  unittest.group('obj-schema-SendWorkerMessagesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSendWorkerMessagesRequest();
      var od = api.SendWorkerMessagesRequest.fromJson(o.toJson());
      checkSendWorkerMessagesRequest(od as api.SendWorkerMessagesRequest);
    });
  });

  unittest.group('obj-schema-SendWorkerMessagesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSendWorkerMessagesResponse();
      var od = api.SendWorkerMessagesResponse.fromJson(o.toJson());
      checkSendWorkerMessagesResponse(od as api.SendWorkerMessagesResponse);
    });
  });

  unittest.group('obj-schema-SeqMapTask', () {
    unittest.test('to-json--from-json', () {
      var o = buildSeqMapTask();
      var od = api.SeqMapTask.fromJson(o.toJson());
      checkSeqMapTask(od as api.SeqMapTask);
    });
  });

  unittest.group('obj-schema-SeqMapTaskOutputInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildSeqMapTaskOutputInfo();
      var od = api.SeqMapTaskOutputInfo.fromJson(o.toJson());
      checkSeqMapTaskOutputInfo(od as api.SeqMapTaskOutputInfo);
    });
  });

  unittest.group('obj-schema-ShellTask', () {
    unittest.test('to-json--from-json', () {
      var o = buildShellTask();
      var od = api.ShellTask.fromJson(o.toJson());
      checkShellTask(od as api.ShellTask);
    });
  });

  unittest.group('obj-schema-SideInputInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildSideInputInfo();
      var od = api.SideInputInfo.fromJson(o.toJson());
      checkSideInputInfo(od as api.SideInputInfo);
    });
  });

  unittest.group('obj-schema-Sink', () {
    unittest.test('to-json--from-json', () {
      var o = buildSink();
      var od = api.Sink.fromJson(o.toJson());
      checkSink(od as api.Sink);
    });
  });

  unittest.group('obj-schema-Snapshot', () {
    unittest.test('to-json--from-json', () {
      var o = buildSnapshot();
      var od = api.Snapshot.fromJson(o.toJson());
      checkSnapshot(od as api.Snapshot);
    });
  });

  unittest.group('obj-schema-SnapshotJobRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSnapshotJobRequest();
      var od = api.SnapshotJobRequest.fromJson(o.toJson());
      checkSnapshotJobRequest(od as api.SnapshotJobRequest);
    });
  });

  unittest.group('obj-schema-Source', () {
    unittest.test('to-json--from-json', () {
      var o = buildSource();
      var od = api.Source.fromJson(o.toJson());
      checkSource(od as api.Source);
    });
  });

  unittest.group('obj-schema-SourceFork', () {
    unittest.test('to-json--from-json', () {
      var o = buildSourceFork();
      var od = api.SourceFork.fromJson(o.toJson());
      checkSourceFork(od as api.SourceFork);
    });
  });

  unittest.group('obj-schema-SourceGetMetadataRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSourceGetMetadataRequest();
      var od = api.SourceGetMetadataRequest.fromJson(o.toJson());
      checkSourceGetMetadataRequest(od as api.SourceGetMetadataRequest);
    });
  });

  unittest.group('obj-schema-SourceGetMetadataResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSourceGetMetadataResponse();
      var od = api.SourceGetMetadataResponse.fromJson(o.toJson());
      checkSourceGetMetadataResponse(od as api.SourceGetMetadataResponse);
    });
  });

  unittest.group('obj-schema-SourceMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildSourceMetadata();
      var od = api.SourceMetadata.fromJson(o.toJson());
      checkSourceMetadata(od as api.SourceMetadata);
    });
  });

  unittest.group('obj-schema-SourceOperationRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSourceOperationRequest();
      var od = api.SourceOperationRequest.fromJson(o.toJson());
      checkSourceOperationRequest(od as api.SourceOperationRequest);
    });
  });

  unittest.group('obj-schema-SourceOperationResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSourceOperationResponse();
      var od = api.SourceOperationResponse.fromJson(o.toJson());
      checkSourceOperationResponse(od as api.SourceOperationResponse);
    });
  });

  unittest.group('obj-schema-SourceSplitOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildSourceSplitOptions();
      var od = api.SourceSplitOptions.fromJson(o.toJson());
      checkSourceSplitOptions(od as api.SourceSplitOptions);
    });
  });

  unittest.group('obj-schema-SourceSplitRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSourceSplitRequest();
      var od = api.SourceSplitRequest.fromJson(o.toJson());
      checkSourceSplitRequest(od as api.SourceSplitRequest);
    });
  });

  unittest.group('obj-schema-SourceSplitResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSourceSplitResponse();
      var od = api.SourceSplitResponse.fromJson(o.toJson());
      checkSourceSplitResponse(od as api.SourceSplitResponse);
    });
  });

  unittest.group('obj-schema-SourceSplitShard', () {
    unittest.test('to-json--from-json', () {
      var o = buildSourceSplitShard();
      var od = api.SourceSplitShard.fromJson(o.toJson());
      checkSourceSplitShard(od as api.SourceSplitShard);
    });
  });

  unittest.group('obj-schema-SpannerIODetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildSpannerIODetails();
      var od = api.SpannerIODetails.fromJson(o.toJson());
      checkSpannerIODetails(od as api.SpannerIODetails);
    });
  });

  unittest.group('obj-schema-SplitInt64', () {
    unittest.test('to-json--from-json', () {
      var o = buildSplitInt64();
      var od = api.SplitInt64.fromJson(o.toJson());
      checkSplitInt64(od as api.SplitInt64);
    });
  });

  unittest.group('obj-schema-StageExecutionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildStageExecutionDetails();
      var od = api.StageExecutionDetails.fromJson(o.toJson());
      checkStageExecutionDetails(od as api.StageExecutionDetails);
    });
  });

  unittest.group('obj-schema-StageSource', () {
    unittest.test('to-json--from-json', () {
      var o = buildStageSource();
      var od = api.StageSource.fromJson(o.toJson());
      checkStageSource(od as api.StageSource);
    });
  });

  unittest.group('obj-schema-StageSummary', () {
    unittest.test('to-json--from-json', () {
      var o = buildStageSummary();
      var od = api.StageSummary.fromJson(o.toJson());
      checkStageSummary(od as api.StageSummary);
    });
  });

  unittest.group('obj-schema-StateFamilyConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildStateFamilyConfig();
      var od = api.StateFamilyConfig.fromJson(o.toJson());
      checkStateFamilyConfig(od as api.StateFamilyConfig);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od as api.Status);
    });
  });

  unittest.group('obj-schema-Step', () {
    unittest.test('to-json--from-json', () {
      var o = buildStep();
      var od = api.Step.fromJson(o.toJson());
      checkStep(od as api.Step);
    });
  });

  unittest.group('obj-schema-StreamLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildStreamLocation();
      var od = api.StreamLocation.fromJson(o.toJson());
      checkStreamLocation(od as api.StreamLocation);
    });
  });

  unittest.group('obj-schema-StreamingApplianceSnapshotConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildStreamingApplianceSnapshotConfig();
      var od = api.StreamingApplianceSnapshotConfig.fromJson(o.toJson());
      checkStreamingApplianceSnapshotConfig(
          od as api.StreamingApplianceSnapshotConfig);
    });
  });

  unittest.group('obj-schema-StreamingComputationConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildStreamingComputationConfig();
      var od = api.StreamingComputationConfig.fromJson(o.toJson());
      checkStreamingComputationConfig(od as api.StreamingComputationConfig);
    });
  });

  unittest.group('obj-schema-StreamingComputationRanges', () {
    unittest.test('to-json--from-json', () {
      var o = buildStreamingComputationRanges();
      var od = api.StreamingComputationRanges.fromJson(o.toJson());
      checkStreamingComputationRanges(od as api.StreamingComputationRanges);
    });
  });

  unittest.group('obj-schema-StreamingComputationTask', () {
    unittest.test('to-json--from-json', () {
      var o = buildStreamingComputationTask();
      var od = api.StreamingComputationTask.fromJson(o.toJson());
      checkStreamingComputationTask(od as api.StreamingComputationTask);
    });
  });

  unittest.group('obj-schema-StreamingConfigTask', () {
    unittest.test('to-json--from-json', () {
      var o = buildStreamingConfigTask();
      var od = api.StreamingConfigTask.fromJson(o.toJson());
      checkStreamingConfigTask(od as api.StreamingConfigTask);
    });
  });

  unittest.group('obj-schema-StreamingSetupTask', () {
    unittest.test('to-json--from-json', () {
      var o = buildStreamingSetupTask();
      var od = api.StreamingSetupTask.fromJson(o.toJson());
      checkStreamingSetupTask(od as api.StreamingSetupTask);
    });
  });

  unittest.group('obj-schema-StreamingSideInputLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildStreamingSideInputLocation();
      var od = api.StreamingSideInputLocation.fromJson(o.toJson());
      checkStreamingSideInputLocation(od as api.StreamingSideInputLocation);
    });
  });

  unittest.group('obj-schema-StreamingStageLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildStreamingStageLocation();
      var od = api.StreamingStageLocation.fromJson(o.toJson());
      checkStreamingStageLocation(od as api.StreamingStageLocation);
    });
  });

  unittest.group('obj-schema-StringList', () {
    unittest.test('to-json--from-json', () {
      var o = buildStringList();
      var od = api.StringList.fromJson(o.toJson());
      checkStringList(od as api.StringList);
    });
  });

  unittest.group('obj-schema-StructuredMessage', () {
    unittest.test('to-json--from-json', () {
      var o = buildStructuredMessage();
      var od = api.StructuredMessage.fromJson(o.toJson());
      checkStructuredMessage(od as api.StructuredMessage);
    });
  });

  unittest.group('obj-schema-TaskRunnerSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildTaskRunnerSettings();
      var od = api.TaskRunnerSettings.fromJson(o.toJson());
      checkTaskRunnerSettings(od as api.TaskRunnerSettings);
    });
  });

  unittest.group('obj-schema-TemplateMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildTemplateMetadata();
      var od = api.TemplateMetadata.fromJson(o.toJson());
      checkTemplateMetadata(od as api.TemplateMetadata);
    });
  });

  unittest.group('obj-schema-TemplateVersion', () {
    unittest.test('to-json--from-json', () {
      var o = buildTemplateVersion();
      var od = api.TemplateVersion.fromJson(o.toJson());
      checkTemplateVersion(od as api.TemplateVersion);
    });
  });

  unittest.group('obj-schema-TopologyConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildTopologyConfig();
      var od = api.TopologyConfig.fromJson(o.toJson());
      checkTopologyConfig(od as api.TopologyConfig);
    });
  });

  unittest.group('obj-schema-TransformSummary', () {
    unittest.test('to-json--from-json', () {
      var o = buildTransformSummary();
      var od = api.TransformSummary.fromJson(o.toJson());
      checkTransformSummary(od as api.TransformSummary);
    });
  });

  unittest.group('obj-schema-ValidateResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildValidateResponse();
      var od = api.ValidateResponse.fromJson(o.toJson());
      checkValidateResponse(od as api.ValidateResponse);
    });
  });

  unittest.group('obj-schema-WorkItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkItem();
      var od = api.WorkItem.fromJson(o.toJson());
      checkWorkItem(od as api.WorkItem);
    });
  });

  unittest.group('obj-schema-WorkItemDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkItemDetails();
      var od = api.WorkItemDetails.fromJson(o.toJson());
      checkWorkItemDetails(od as api.WorkItemDetails);
    });
  });

  unittest.group('obj-schema-WorkItemServiceState', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkItemServiceState();
      var od = api.WorkItemServiceState.fromJson(o.toJson());
      checkWorkItemServiceState(od as api.WorkItemServiceState);
    });
  });

  unittest.group('obj-schema-WorkItemStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkItemStatus();
      var od = api.WorkItemStatus.fromJson(o.toJson());
      checkWorkItemStatus(od as api.WorkItemStatus);
    });
  });

  unittest.group('obj-schema-WorkerDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkerDetails();
      var od = api.WorkerDetails.fromJson(o.toJson());
      checkWorkerDetails(od as api.WorkerDetails);
    });
  });

  unittest.group('obj-schema-WorkerHealthReport', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkerHealthReport();
      var od = api.WorkerHealthReport.fromJson(o.toJson());
      checkWorkerHealthReport(od as api.WorkerHealthReport);
    });
  });

  unittest.group('obj-schema-WorkerHealthReportResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkerHealthReportResponse();
      var od = api.WorkerHealthReportResponse.fromJson(o.toJson());
      checkWorkerHealthReportResponse(od as api.WorkerHealthReportResponse);
    });
  });

  unittest.group('obj-schema-WorkerLifecycleEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkerLifecycleEvent();
      var od = api.WorkerLifecycleEvent.fromJson(o.toJson());
      checkWorkerLifecycleEvent(od as api.WorkerLifecycleEvent);
    });
  });

  unittest.group('obj-schema-WorkerMessage', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkerMessage();
      var od = api.WorkerMessage.fromJson(o.toJson());
      checkWorkerMessage(od as api.WorkerMessage);
    });
  });

  unittest.group('obj-schema-WorkerMessageCode', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkerMessageCode();
      var od = api.WorkerMessageCode.fromJson(o.toJson());
      checkWorkerMessageCode(od as api.WorkerMessageCode);
    });
  });

  unittest.group('obj-schema-WorkerMessageResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkerMessageResponse();
      var od = api.WorkerMessageResponse.fromJson(o.toJson());
      checkWorkerMessageResponse(od as api.WorkerMessageResponse);
    });
  });

  unittest.group('obj-schema-WorkerPool', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkerPool();
      var od = api.WorkerPool.fromJson(o.toJson());
      checkWorkerPool(od as api.WorkerPool);
    });
  });

  unittest.group('obj-schema-WorkerSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkerSettings();
      var od = api.WorkerSettings.fromJson(o.toJson());
      checkWorkerSettings(od as api.WorkerSettings);
    });
  });

  unittest.group('obj-schema-WorkerShutdownNotice', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkerShutdownNotice();
      var od = api.WorkerShutdownNotice.fromJson(o.toJson());
      checkWorkerShutdownNotice(od as api.WorkerShutdownNotice);
    });
  });

  unittest.group('obj-schema-WorkerShutdownNoticeResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkerShutdownNoticeResponse();
      var od = api.WorkerShutdownNoticeResponse.fromJson(o.toJson());
      checkWorkerShutdownNoticeResponse(od as api.WorkerShutdownNoticeResponse);
    });
  });

  unittest.group('obj-schema-WriteInstruction', () {
    unittest.test('to-json--from-json', () {
      var o = buildWriteInstruction();
      var od = api.WriteInstruction.fromJson(o.toJson());
      checkWriteInstruction(od as api.WriteInstruction);
    });
  });

  unittest.group('resource-ProjectsResource', () {
    unittest.test('method--deleteSnapshots', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects;
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_snapshotId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/snapshots', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/snapshots"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(
            queryMap["snapshotId"].first, unittest.equals(arg_snapshotId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDeleteSnapshotResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteSnapshots(arg_projectId,
              location: arg_location,
              snapshotId: arg_snapshotId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDeleteSnapshotResponse(response as api.DeleteSnapshotResponse);
      })));
    });

    unittest.test('method--workerMessages', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects;
      var arg_request = buildSendWorkerMessagesRequest();
      var arg_projectId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SendWorkerMessagesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSendWorkerMessagesRequest(obj as api.SendWorkerMessagesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/WorkerMessages', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/WorkerMessages"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSendWorkerMessagesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .workerMessages(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSendWorkerMessagesResponse(
            response as api.SendWorkerMessagesResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsCatalogTemplatesResource', () {
    unittest.test('method--commit', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.catalogTemplates;
      var arg_request = buildCommitTemplateVersionRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CommitTemplateVersionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCommitTemplateVersionRequest(
            obj as api.CommitTemplateVersionRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("v1b3/"));
        pathOffset += 5;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTemplateVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .commit(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTemplateVersion(response as api.TemplateVersion);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.catalogTemplates;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("v1b3/"));
        pathOffset += 5;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildEmpty());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkEmpty(response as api.Empty);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.catalogTemplates;
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("v1b3/"));
        pathOffset += 5;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTemplateVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTemplateVersion(response as api.TemplateVersion);
      })));
    });

    unittest.test('method--label', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.catalogTemplates;
      var arg_request = buildModifyTemplateVersionLabelRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ModifyTemplateVersionLabelRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkModifyTemplateVersionLabelRequest(
            obj as api.ModifyTemplateVersionLabelRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("v1b3/"));
        pathOffset += 5;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp =
            convert.json.encode(buildModifyTemplateVersionLabelResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .label(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkModifyTemplateVersionLabelResponse(
            response as api.ModifyTemplateVersionLabelResponse);
      })));
    });

    unittest.test('method--tag', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.catalogTemplates;
      var arg_request = buildModifyTemplateVersionTagRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ModifyTemplateVersionTagRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkModifyTemplateVersionTagRequest(
            obj as api.ModifyTemplateVersionTagRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("v1b3/"));
        pathOffset += 5;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildModifyTemplateVersionTagResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .tag(arg_request, arg_name, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkModifyTemplateVersionTagResponse(
            response as api.ModifyTemplateVersionTagResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsCatalogTemplatesTemplateVersionsResource',
      () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res =
          api.DataflowApi(mock).projects.catalogTemplates.templateVersions;
      var arg_request = buildCreateTemplateVersionRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreateTemplateVersionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateTemplateVersionRequest(
            obj as api.CreateTemplateVersionRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("v1b3/"));
        pathOffset += 5;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildTemplateVersion());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_parent, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkTemplateVersion(response as api.TemplateVersion);
      })));
    });
  });

  unittest.group('resource-ProjectsJobsResource', () {
    unittest.test('method--aggregated', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.jobs;
      var arg_projectId = 'foo';
      var arg_filter = 'foo';
      var arg_location = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/jobs:aggregated', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/jobs:aggregated"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .aggregated(arg_projectId,
              filter: arg_filter,
              location: arg_location,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              view: arg_view,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListJobsResponse(response as api.ListJobsResponse);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.jobs;
      var arg_request = buildJob();
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_replaceJobId = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Job.fromJson(json as core.Map<core.String, core.dynamic>);
        checkJob(obj as api.Job);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/jobs', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/jobs"));
        pathOffset += 5;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(
            queryMap["replaceJobId"].first, unittest.equals(arg_replaceJobId));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_projectId,
              location: arg_location,
              replaceJobId: arg_replaceJobId,
              view: arg_view,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response as api.Job);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.jobs;
      var arg_projectId = 'foo';
      var arg_jobId = 'foo';
      var arg_location = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_jobId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_jobId,
              location: arg_location, view: arg_view, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response as api.Job);
      })));
    });

    unittest.test('method--getMetrics', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.jobs;
      var arg_projectId = 'foo';
      var arg_jobId = 'foo';
      var arg_location = 'foo';
      var arg_startTime = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf('/metrics', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_jobId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/metrics"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(
            queryMap["startTime"].first, unittest.equals(arg_startTime));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildJobMetrics());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getMetrics(arg_projectId, arg_jobId,
              location: arg_location,
              startTime: arg_startTime,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJobMetrics(response as api.JobMetrics);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.jobs;
      var arg_projectId = 'foo';
      var arg_filter = 'foo';
      var arg_location = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/jobs', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/jobs"));
        pathOffset += 5;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId,
              filter: arg_filter,
              location: arg_location,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              view: arg_view,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListJobsResponse(response as api.ListJobsResponse);
      })));
    });

    unittest.test('method--snapshot', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.jobs;
      var arg_request = buildSnapshotJobRequest();
      var arg_projectId = 'foo';
      var arg_jobId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SnapshotJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSnapshotJobRequest(obj as api.SnapshotJobRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf(':snapshot', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_jobId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals(":snapshot"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSnapshot());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .snapshot(arg_request, arg_projectId, arg_jobId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSnapshot(response as api.Snapshot);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.jobs;
      var arg_request = buildJob();
      var arg_projectId = 'foo';
      var arg_jobId = 'foo';
      var arg_location = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Job.fromJson(json as core.Map<core.String, core.dynamic>);
        checkJob(obj as api.Job);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_jobId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_projectId, arg_jobId,
              location: arg_location, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response as api.Job);
      })));
    });
  });

  unittest.group('resource-ProjectsJobsDebugResource', () {
    unittest.test('method--getConfig', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.jobs.debug;
      var arg_request = buildGetDebugConfigRequest();
      var arg_projectId = 'foo';
      var arg_jobId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetDebugConfigRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetDebugConfigRequest(obj as api.GetDebugConfigRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf('/debug/getConfig', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_jobId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/debug/getConfig"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGetDebugConfigResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getConfig(arg_request, arg_projectId, arg_jobId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetDebugConfigResponse(response as api.GetDebugConfigResponse);
      })));
    });

    unittest.test('method--sendCapture', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.jobs.debug;
      var arg_request = buildSendDebugCaptureRequest();
      var arg_projectId = 'foo';
      var arg_jobId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SendDebugCaptureRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSendDebugCaptureRequest(obj as api.SendDebugCaptureRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf('/debug/sendCapture', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_jobId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/debug/sendCapture"));
        pathOffset += 18;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSendDebugCaptureResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .sendCapture(arg_request, arg_projectId, arg_jobId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSendDebugCaptureResponse(response as api.SendDebugCaptureResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsJobsMessagesResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.jobs.messages;
      var arg_projectId = 'foo';
      var arg_jobId = 'foo';
      var arg_endTime = 'foo';
      var arg_location = 'foo';
      var arg_minimumImportance = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_startTime = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf('/messages', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_jobId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/messages"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["endTime"].first, unittest.equals(arg_endTime));
        unittest.expect(
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(queryMap["minimumImportance"].first,
            unittest.equals(arg_minimumImportance));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["startTime"].first, unittest.equals(arg_startTime));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListJobMessagesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_jobId,
              endTime: arg_endTime,
              location: arg_location,
              minimumImportance: arg_minimumImportance,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              startTime: arg_startTime,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListJobMessagesResponse(response as api.ListJobMessagesResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsJobsWorkItemsResource', () {
    unittest.test('method--lease', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.jobs.workItems;
      var arg_request = buildLeaseWorkItemRequest();
      var arg_projectId = 'foo';
      var arg_jobId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LeaseWorkItemRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLeaseWorkItemRequest(obj as api.LeaseWorkItemRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf('/workItems:lease', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_jobId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/workItems:lease"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLeaseWorkItemResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .lease(arg_request, arg_projectId, arg_jobId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLeaseWorkItemResponse(response as api.LeaseWorkItemResponse);
      })));
    });

    unittest.test('method--reportStatus', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.jobs.workItems;
      var arg_request = buildReportWorkItemStatusRequest();
      var arg_projectId = 'foo';
      var arg_jobId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ReportWorkItemStatusRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReportWorkItemStatusRequest(
            obj as api.ReportWorkItemStatusRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf('/workItems:reportStatus', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_jobId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 23),
            unittest.equals("/workItems:reportStatus"));
        pathOffset += 23;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildReportWorkItemStatusResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reportStatus(arg_request, arg_projectId, arg_jobId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReportWorkItemStatusResponse(
            response as api.ReportWorkItemStatusResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsResource', () {
    unittest.test('method--workerMessages', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.locations;
      var arg_request = buildSendWorkerMessagesRequest();
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SendWorkerMessagesRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSendWorkerMessagesRequest(obj as api.SendWorkerMessagesRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf('/WorkerMessages', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_location'));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/WorkerMessages"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSendWorkerMessagesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .workerMessages(arg_request, arg_projectId, arg_location,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSendWorkerMessagesResponse(
            response as api.SendWorkerMessagesResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsFlexTemplatesResource', () {
    unittest.test('method--launch', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.locations.flexTemplates;
      var arg_request = buildLaunchFlexTemplateRequest();
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LaunchFlexTemplateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLaunchFlexTemplateRequest(obj as api.LaunchFlexTemplateRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf('/flexTemplates:launch', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_location'));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/flexTemplates:launch"));
        pathOffset += 21;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLaunchFlexTemplateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .launch(arg_request, arg_projectId, arg_location,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLaunchFlexTemplateResponse(
            response as api.LaunchFlexTemplateResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsJobsResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.locations.jobs;
      var arg_request = buildJob();
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_replaceJobId = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Job.fromJson(json as core.Map<core.String, core.dynamic>);
        checkJob(obj as api.Job);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf('/jobs', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_location'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/jobs"));
        pathOffset += 5;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["replaceJobId"].first, unittest.equals(arg_replaceJobId));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_projectId, arg_location,
              replaceJobId: arg_replaceJobId,
              view: arg_view,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response as api.Job);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.locations.jobs;
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_jobId = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_location'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_jobId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_location, arg_jobId,
              view: arg_view, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response as api.Job);
      })));
    });

    unittest.test('method--getExecutionDetails', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.locations.jobs;
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_jobId = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_location'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf('/executionDetails', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_jobId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/executionDetails"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildJobExecutionDetails());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getExecutionDetails(arg_projectId, arg_location, arg_jobId,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJobExecutionDetails(response as api.JobExecutionDetails);
      })));
    });

    unittest.test('method--getMetrics', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.locations.jobs;
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_jobId = 'foo';
      var arg_startTime = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_location'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf('/metrics', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_jobId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/metrics"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["startTime"].first, unittest.equals(arg_startTime));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildJobMetrics());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getMetrics(arg_projectId, arg_location, arg_jobId,
              startTime: arg_startTime, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJobMetrics(response as api.JobMetrics);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.locations.jobs;
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_filter = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf('/jobs', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_location'));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/jobs"));
        pathOffset += 5;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListJobsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_location,
              filter: arg_filter,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              view: arg_view,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListJobsResponse(response as api.ListJobsResponse);
      })));
    });

    unittest.test('method--snapshot', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.locations.jobs;
      var arg_request = buildSnapshotJobRequest();
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_jobId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SnapshotJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSnapshotJobRequest(obj as api.SnapshotJobRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_location'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf(':snapshot', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_jobId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals(":snapshot"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSnapshot());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .snapshot(arg_request, arg_projectId, arg_location, arg_jobId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSnapshot(response as api.Snapshot);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.locations.jobs;
      var arg_request = buildJob();
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_jobId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Job.fromJson(json as core.Map<core.String, core.dynamic>);
        checkJob(obj as api.Job);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_location'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_jobId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_projectId, arg_location, arg_jobId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response as api.Job);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsJobsDebugResource', () {
    unittest.test('method--getConfig', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.locations.jobs.debug;
      var arg_request = buildGetDebugConfigRequest();
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_jobId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetDebugConfigRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkGetDebugConfigRequest(obj as api.GetDebugConfigRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_location'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf('/debug/getConfig', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_jobId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/debug/getConfig"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGetDebugConfigResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getConfig(arg_request, arg_projectId, arg_location, arg_jobId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetDebugConfigResponse(response as api.GetDebugConfigResponse);
      })));
    });

    unittest.test('method--sendCapture', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.locations.jobs.debug;
      var arg_request = buildSendDebugCaptureRequest();
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_jobId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SendDebugCaptureRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkSendDebugCaptureRequest(obj as api.SendDebugCaptureRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_location'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf('/debug/sendCapture', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_jobId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/debug/sendCapture"));
        pathOffset += 18;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSendDebugCaptureResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .sendCapture(arg_request, arg_projectId, arg_location, arg_jobId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSendDebugCaptureResponse(response as api.SendDebugCaptureResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsJobsMessagesResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.locations.jobs.messages;
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_jobId = 'foo';
      var arg_endTime = 'foo';
      var arg_minimumImportance = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_startTime = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_location'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf('/messages', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_jobId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/messages"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["endTime"].first, unittest.equals(arg_endTime));
        unittest.expect(queryMap["minimumImportance"].first,
            unittest.equals(arg_minimumImportance));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["startTime"].first, unittest.equals(arg_startTime));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListJobMessagesResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_location, arg_jobId,
              endTime: arg_endTime,
              minimumImportance: arg_minimumImportance,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              startTime: arg_startTime,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListJobMessagesResponse(response as api.ListJobMessagesResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsJobsSnapshotsResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.locations.jobs.snapshots;
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_jobId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_location'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf('/snapshots', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_jobId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/snapshots"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListSnapshotsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_location, arg_jobId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListSnapshotsResponse(response as api.ListSnapshotsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsJobsStagesResource', () {
    unittest.test('method--getExecutionDetails', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.locations.jobs.stages;
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_jobId = 'foo';
      var arg_stageId = 'foo';
      var arg_endTime = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_startTime = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_location'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf('/stages/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_jobId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/stages/"));
        pathOffset += 8;
        index = path.indexOf('/executionDetails', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_stageId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/executionDetails"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["endTime"].first, unittest.equals(arg_endTime));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["startTime"].first, unittest.equals(arg_startTime));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildStageExecutionDetails());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getExecutionDetails(
              arg_projectId, arg_location, arg_jobId, arg_stageId,
              endTime: arg_endTime,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              startTime: arg_startTime,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkStageExecutionDetails(response as api.StageExecutionDetails);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsJobsWorkItemsResource', () {
    unittest.test('method--lease', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.locations.jobs.workItems;
      var arg_request = buildLeaseWorkItemRequest();
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_jobId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LeaseWorkItemRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLeaseWorkItemRequest(obj as api.LeaseWorkItemRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_location'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf('/workItems:lease', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_jobId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/workItems:lease"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLeaseWorkItemResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .lease(arg_request, arg_projectId, arg_location, arg_jobId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLeaseWorkItemResponse(response as api.LeaseWorkItemResponse);
      })));
    });

    unittest.test('method--reportStatus', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.locations.jobs.workItems;
      var arg_request = buildReportWorkItemStatusRequest();
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_jobId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ReportWorkItemStatusRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkReportWorkItemStatusRequest(
            obj as api.ReportWorkItemStatusRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf('/jobs/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_location'));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf('/workItems:reportStatus', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_jobId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 23),
            unittest.equals("/workItems:reportStatus"));
        pathOffset += 23;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildReportWorkItemStatusResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reportStatus(arg_request, arg_projectId, arg_location, arg_jobId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReportWorkItemStatusResponse(
            response as api.ReportWorkItemStatusResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsSnapshotsResource', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.locations.snapshots;
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_snapshotId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf('/snapshots/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_location'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/snapshots/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_snapshotId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildDeleteSnapshotResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_projectId, arg_location, arg_snapshotId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDeleteSnapshotResponse(response as api.DeleteSnapshotResponse);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.locations.snapshots;
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_snapshotId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf('/snapshots/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_location'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/snapshots/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_snapshotId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSnapshot());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_location, arg_snapshotId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSnapshot(response as api.Snapshot);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.locations.snapshots;
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_jobId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf('/snapshots', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_location'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/snapshots"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["jobId"].first, unittest.equals(arg_jobId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListSnapshotsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_location,
              jobId: arg_jobId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListSnapshotsResponse(response as api.ListSnapshotsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsSqlResource', () {
    unittest.test('method--validate', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.locations.sql;
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_query = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf('/sql:validate', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_location'));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/sql:validate"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildValidateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .validate(arg_projectId, arg_location,
              query: arg_query, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkValidateResponse(response as api.ValidateResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsTemplatesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.locations.templates;
      var arg_request = buildCreateJobFromTemplateRequest();
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreateJobFromTemplateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateJobFromTemplateRequest(
            obj as api.CreateJobFromTemplateRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf('/templates', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_location'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/templates"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_projectId, arg_location,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response as api.Job);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.locations.templates;
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_gcsPath = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf('/templates:get', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_location'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/templates:get"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["gcsPath"].first, unittest.equals(arg_gcsPath));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGetTemplateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_location,
              gcsPath: arg_gcsPath, view: arg_view, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetTemplateResponse(response as api.GetTemplateResponse);
      })));
    });

    unittest.test('method--launch', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.locations.templates;
      var arg_request = buildLaunchTemplateParameters();
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_dynamicTemplate_gcsPath = 'foo';
      var arg_dynamicTemplate_stagingLocation = 'foo';
      var arg_gcsPath = 'foo';
      var arg_validateOnly = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LaunchTemplateParameters.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLaunchTemplateParameters(obj as api.LaunchTemplateParameters);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/locations/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf('/templates:launch', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_location'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/templates:launch"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["dynamicTemplate.gcsPath"].first,
            unittest.equals(arg_dynamicTemplate_gcsPath));
        unittest.expect(queryMap["dynamicTemplate.stagingLocation"].first,
            unittest.equals(arg_dynamicTemplate_stagingLocation));
        unittest.expect(
            queryMap["gcsPath"].first, unittest.equals(arg_gcsPath));
        unittest.expect(queryMap["validateOnly"].first,
            unittest.equals("$arg_validateOnly"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLaunchTemplateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .launch(arg_request, arg_projectId, arg_location,
              dynamicTemplate_gcsPath: arg_dynamicTemplate_gcsPath,
              dynamicTemplate_stagingLocation:
                  arg_dynamicTemplate_stagingLocation,
              gcsPath: arg_gcsPath,
              validateOnly: arg_validateOnly,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLaunchTemplateResponse(response as api.LaunchTemplateResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsSnapshotsResource', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.snapshots;
      var arg_projectId = 'foo';
      var arg_snapshotId = 'foo';
      var arg_location = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/snapshots/', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/snapshots/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals('$arg_snapshotId'));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildSnapshot());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_snapshotId,
              location: arg_location, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSnapshot(response as api.Snapshot);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.snapshots;
      var arg_projectId = 'foo';
      var arg_jobId = 'foo';
      var arg_location = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/snapshots', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/snapshots"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["jobId"].first, unittest.equals(arg_jobId));
        unittest.expect(
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListSnapshotsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId,
              jobId: arg_jobId, location: arg_location, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListSnapshotsResponse(response as api.ListSnapshotsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsTemplateVersionsResource', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.templateVersions;
      var arg_parent = 'foo';
      var arg_pageSize = 42;
      var arg_pageToken = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("v1b3/"));
        pathOffset += 5;
        // NOTE: We cannot test reserved expansions due to the inability to reverse the operation;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildListTemplateVersionsResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_parent,
              pageSize: arg_pageSize,
              pageToken: arg_pageToken,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListTemplateVersionsResponse(
            response as api.ListTemplateVersionsResponse);
      })));
    });
  });

  unittest.group('resource-ProjectsTemplatesResource', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.templates;
      var arg_request = buildCreateJobFromTemplateRequest();
      var arg_projectId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreateJobFromTemplateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkCreateJobFromTemplateRequest(
            obj as api.CreateJobFromTemplateRequest);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/templates', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/templates"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildJob());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response as api.Job);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.templates;
      var arg_projectId = 'foo';
      var arg_gcsPath = 'foo';
      var arg_location = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/templates:get', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/templates:get"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(
            queryMap["gcsPath"].first, unittest.equals(arg_gcsPath));
        unittest.expect(
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildGetTemplateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId,
              gcsPath: arg_gcsPath,
              location: arg_location,
              view: arg_view,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetTemplateResponse(response as api.GetTemplateResponse);
      })));
    });

    unittest.test('method--launch', () {
      var mock = HttpServerMock();
      var res = api.DataflowApi(mock).projects.templates;
      var arg_request = buildLaunchTemplateParameters();
      var arg_projectId = 'foo';
      var arg_dynamicTemplate_gcsPath = 'foo';
      var arg_dynamicTemplate_stagingLocation = 'foo';
      var arg_gcsPath = 'foo';
      var arg_location = 'foo';
      var arg_validateOnly = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LaunchTemplateParameters.fromJson(
            json as core.Map<core.String, core.dynamic>);
        checkLaunchTemplateParameters(obj as api.LaunchTemplateParameters);

        var path = (req.url).path;
        var pathOffset = 0;
        core.int index;
        core.String subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf('/templates:launch', pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals('$arg_projectId'));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/templates:launch"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
        void addQueryParam(core.String n, core.String v) =>
            queryMap.putIfAbsent(n, () => []).add(v);

        if (query.isNotEmpty) {
          for (var part in query.split('&')) {
            var keyValue = part.split('=');
            addQueryParam(
              core.Uri.decodeQueryComponent(keyValue[0]),
              core.Uri.decodeQueryComponent(keyValue[1]),
            );
          }
        }
        unittest.expect(queryMap["dynamicTemplate.gcsPath"].first,
            unittest.equals(arg_dynamicTemplate_gcsPath));
        unittest.expect(queryMap["dynamicTemplate.stagingLocation"].first,
            unittest.equals(arg_dynamicTemplate_stagingLocation));
        unittest.expect(
            queryMap["gcsPath"].first, unittest.equals(arg_gcsPath));
        unittest.expect(
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(queryMap["validateOnly"].first,
            unittest.equals("$arg_validateOnly"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          'content-type': 'application/json; charset=utf-8',
        };
        var resp = convert.json.encode(buildLaunchTemplateResponse());
        return async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .launch(arg_request, arg_projectId,
              dynamicTemplate_gcsPath: arg_dynamicTemplate_gcsPath,
              dynamicTemplate_stagingLocation:
                  arg_dynamicTemplate_stagingLocation,
              gcsPath: arg_gcsPath,
              location: arg_location,
              validateOnly: arg_validateOnly,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLaunchTemplateResponse(response as api.LaunchTemplateResponse);
      })));
    });
  });
}
