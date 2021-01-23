// ignore_for_file: camel_case_types
// ignore_for_file: comment_references
// ignore_for_file: directives_ordering
// ignore_for_file: file_names
// ignore_for_file: library_names
// ignore_for_file: lines_longer_than_80_chars
// ignore_for_file: non_constant_identifier_names
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: prefer_final_locals
// ignore_for_file: prefer_interpolation_to_compose_strings
// ignore_for_file: unnecessary_brace_in_string_interps
// ignore_for_file: unnecessary_cast
// ignore_for_file: unnecessary_lambdas
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: unnecessary_string_interpolations
// ignore_for_file: avoid_returning_null
// ignore_for_file: cascade_invocations
// ignore_for_file: prefer_single_quotes
// ignore_for_file: unused_local_variable

library googleapis_beta.dataflow.v1b3.test;

import "dart:core" as core;
import "dart:async" as async;
import "dart:convert" as convert;

import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import 'package:googleapis_beta/dataflow/v1b3.dart' as api;

class HttpServerMock extends http.BaseClient {
  core.Function _callback;
  core.bool _expectJson;

  void register(core.Function callback, core.bool expectJson) {
    _callback = callback;
    _expectJson = expectJson;
  }

  @core.override
  async.Future<http.StreamedResponse> send(http.BaseRequest request) async {
    if (_expectJson) {
      final jsonString =
          await request.finalize().transform(convert.utf8.decoder).join('');
      if (jsonString.isEmpty) {
        return _callback(request, null);
      } else {
        return _callback(request, convert.json.decode(jsonString));
      }
    } else {
      var stream = request.finalize();
      if (stream == null) {
        return _callback(request, []);
      } else {
        final data = await stream.toBytes();
        return _callback(request, data);
      }
    }
  }
}

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = async.Stream.fromIterable([convert.utf8.encode(body)]);
  return http.StreamedResponse(stream, status, headers: headers);
}

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
    checkPosition(o.position);
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
    checkReportedParallelism(o.consumedParallelism);
    unittest.expect(o.fractionConsumed, unittest.equals(42.0));
    checkPosition(o.position);
    checkReportedParallelism(o.remainingParallelism);
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
    checkPosition(o.position);
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
    checkContainerSpec(o.containerSpec);
    unittest.expect(o.jobGraphGcsPath, unittest.equals('foo'));
    checkTemplateMetadata(o.metadata);
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
    checkStructuredMessage(o.description);
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
    checkTemplateVersion(o.templateVersion);
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

core.List<api.StreamLocation> buildUnnamed6644() {
  var o = <api.StreamLocation>[];
  o.add(buildStreamLocation());
  o.add(buildStreamLocation());
  return o;
}

void checkUnnamed6644(core.List<api.StreamLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStreamLocation(o[0]);
  checkStreamLocation(o[1]);
}

core.List<api.KeyRangeLocation> buildUnnamed6645() {
  var o = <api.KeyRangeLocation>[];
  o.add(buildKeyRangeLocation());
  o.add(buildKeyRangeLocation());
  return o;
}

void checkUnnamed6645(core.List<api.KeyRangeLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyRangeLocation(o[0]);
  checkKeyRangeLocation(o[1]);
}

core.List<api.StreamLocation> buildUnnamed6646() {
  var o = <api.StreamLocation>[];
  o.add(buildStreamLocation());
  o.add(buildStreamLocation());
  return o;
}

void checkUnnamed6646(core.List<api.StreamLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStreamLocation(o[0]);
  checkStreamLocation(o[1]);
}

core.List<api.StateFamilyConfig> buildUnnamed6647() {
  var o = <api.StateFamilyConfig>[];
  o.add(buildStateFamilyConfig());
  o.add(buildStateFamilyConfig());
  return o;
}

void checkUnnamed6647(core.List<api.StateFamilyConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStateFamilyConfig(o[0]);
  checkStateFamilyConfig(o[1]);
}

core.int buildCounterComputationTopology = 0;
api.ComputationTopology buildComputationTopology() {
  var o = api.ComputationTopology();
  buildCounterComputationTopology++;
  if (buildCounterComputationTopology < 3) {
    o.computationId = 'foo';
    o.inputs = buildUnnamed6644();
    o.keyRanges = buildUnnamed6645();
    o.outputs = buildUnnamed6646();
    o.stateFamilies = buildUnnamed6647();
    o.systemStageName = 'foo';
  }
  buildCounterComputationTopology--;
  return o;
}

void checkComputationTopology(api.ComputationTopology o) {
  buildCounterComputationTopology++;
  if (buildCounterComputationTopology < 3) {
    unittest.expect(o.computationId, unittest.equals('foo'));
    checkUnnamed6644(o.inputs);
    checkUnnamed6645(o.keyRanges);
    checkUnnamed6646(o.outputs);
    checkUnnamed6647(o.stateFamilies);
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
    checkPosition(o.position);
  }
  buildCounterConcatPosition--;
}

core.int buildCounterContainerSpec = 0;
api.ContainerSpec buildContainerSpec() {
  var o = api.ContainerSpec();
  buildCounterContainerSpec++;
  if (buildCounterContainerSpec < 3) {
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
    unittest.expect(o.image, unittest.equals('foo'));
    checkTemplateMetadata(o.metadata);
    checkSDKInfo(o.sdkInfo);
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
    checkCounterMetadata(o.metadata);
    checkCounterStructuredName(o.name);
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
    checkDistributionUpdate(o.distribution);
    unittest.expect(o.floatingPoint, unittest.equals(42.0));
    checkFloatingPointList(o.floatingPointList);
    checkFloatingPointMean(o.floatingPointMean);
    checkSplitInt64(o.integer);
    checkIntegerGauge(o.integerGauge);
    checkIntegerList(o.integerList);
    checkIntegerMean(o.integerMean);
    var casted1 = (o.internal) as core.Map;
    unittest.expect(casted1, unittest.hasLength(3));
    unittest.expect(casted1['list'], unittest.equals([1, 2, 3]));
    unittest.expect(casted1['bool'], unittest.equals(true));
    unittest.expect(casted1['string'], unittest.equals('foo'));
    checkNameAndKind(o.nameAndKind);
    unittest.expect(o.shortId, unittest.equals('foo'));
    checkStringList(o.stringList);
    checkCounterStructuredNameAndMetadata(o.structuredNameAndMetadata);
  }
  buildCounterCounterUpdate--;
}

core.Map<core.String, core.String> buildUnnamed6648() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6648(core.Map<core.String, core.String> o) {
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
    o.parameters = buildUnnamed6648();
  }
  buildCounterCreateJobFromTemplateRequest--;
  return o;
}

void checkCreateJobFromTemplateRequest(api.CreateJobFromTemplateRequest o) {
  buildCounterCreateJobFromTemplateRequest++;
  if (buildCounterCreateJobFromTemplateRequest < 3) {
    checkRuntimeEnvironment(o.environment);
    unittest.expect(o.gcsPath, unittest.equals('foo'));
    unittest.expect(o.jobName, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    checkUnnamed6648(o.parameters);
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
    checkTemplateVersion(o.templateVersion);
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

core.List<core.String> buildUnnamed6649() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6649(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDataDiskAssignment = 0;
api.DataDiskAssignment buildDataDiskAssignment() {
  var o = api.DataDiskAssignment();
  buildCounterDataDiskAssignment++;
  if (buildCounterDataDiskAssignment < 3) {
    o.dataDisks = buildUnnamed6649();
    o.vmInstance = 'foo';
  }
  buildCounterDataDiskAssignment--;
  return o;
}

void checkDataDiskAssignment(api.DataDiskAssignment o) {
  buildCounterDataDiskAssignment++;
  if (buildCounterDataDiskAssignment < 3) {
    checkUnnamed6649(o.dataDisks);
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
    checkSource(o.source);
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
    checkSplitInt64(o.count);
    checkHistogram(o.histogram);
    checkSplitInt64(o.max);
    checkSplitInt64(o.min);
    checkSplitInt64(o.sum);
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
    checkDerivedSource(o.primary);
    checkDerivedSource(o.residual);
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

core.List<core.String> buildUnnamed6650() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6650(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.Object> buildUnnamed6651() {
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

void checkUnnamed6651(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed6652() {
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

void checkUnnamed6652(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed6653() {
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

void checkUnnamed6653(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed6654() {
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

void checkUnnamed6654(core.Map<core.String, core.Object> o) {
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

core.List<api.WorkerPool> buildUnnamed6655() {
  var o = <api.WorkerPool>[];
  o.add(buildWorkerPool());
  o.add(buildWorkerPool());
  return o;
}

void checkUnnamed6655(core.List<api.WorkerPool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkerPool(o[0]);
  checkWorkerPool(o[1]);
}

core.int buildCounterEnvironment = 0;
api.Environment buildEnvironment() {
  var o = api.Environment();
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    o.clusterManagerApiService = 'foo';
    o.dataset = 'foo';
    o.experiments = buildUnnamed6650();
    o.flexResourceSchedulingGoal = 'foo';
    o.internalExperiments = buildUnnamed6651();
    o.sdkPipelineOptions = buildUnnamed6652();
    o.serviceAccountEmail = 'foo';
    o.serviceKmsKeyName = 'foo';
    o.tempStoragePrefix = 'foo';
    o.userAgent = buildUnnamed6653();
    o.version = buildUnnamed6654();
    o.workerPools = buildUnnamed6655();
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
    checkUnnamed6650(o.experiments);
    unittest.expect(o.flexResourceSchedulingGoal, unittest.equals('foo'));
    checkUnnamed6651(o.internalExperiments);
    checkUnnamed6652(o.sdkPipelineOptions);
    unittest.expect(o.serviceAccountEmail, unittest.equals('foo'));
    unittest.expect(o.serviceKmsKeyName, unittest.equals('foo'));
    unittest.expect(o.tempStoragePrefix, unittest.equals('foo'));
    checkUnnamed6653(o.userAgent);
    checkUnnamed6654(o.version);
    checkUnnamed6655(o.workerPools);
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

core.List<api.ComponentSource> buildUnnamed6656() {
  var o = <api.ComponentSource>[];
  o.add(buildComponentSource());
  o.add(buildComponentSource());
  return o;
}

void checkUnnamed6656(core.List<api.ComponentSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComponentSource(o[0]);
  checkComponentSource(o[1]);
}

core.List<api.ComponentTransform> buildUnnamed6657() {
  var o = <api.ComponentTransform>[];
  o.add(buildComponentTransform());
  o.add(buildComponentTransform());
  return o;
}

void checkUnnamed6657(core.List<api.ComponentTransform> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComponentTransform(o[0]);
  checkComponentTransform(o[1]);
}

core.List<api.StageSource> buildUnnamed6658() {
  var o = <api.StageSource>[];
  o.add(buildStageSource());
  o.add(buildStageSource());
  return o;
}

void checkUnnamed6658(core.List<api.StageSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStageSource(o[0]);
  checkStageSource(o[1]);
}

core.List<api.StageSource> buildUnnamed6659() {
  var o = <api.StageSource>[];
  o.add(buildStageSource());
  o.add(buildStageSource());
  return o;
}

void checkUnnamed6659(core.List<api.StageSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStageSource(o[0]);
  checkStageSource(o[1]);
}

core.int buildCounterExecutionStageSummary = 0;
api.ExecutionStageSummary buildExecutionStageSummary() {
  var o = api.ExecutionStageSummary();
  buildCounterExecutionStageSummary++;
  if (buildCounterExecutionStageSummary < 3) {
    o.componentSource = buildUnnamed6656();
    o.componentTransform = buildUnnamed6657();
    o.id = 'foo';
    o.inputSource = buildUnnamed6658();
    o.kind = 'foo';
    o.name = 'foo';
    o.outputSource = buildUnnamed6659();
  }
  buildCounterExecutionStageSummary--;
  return o;
}

void checkExecutionStageSummary(api.ExecutionStageSummary o) {
  buildCounterExecutionStageSummary++;
  if (buildCounterExecutionStageSummary < 3) {
    checkUnnamed6656(o.componentSource);
    checkUnnamed6657(o.componentTransform);
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed6658(o.inputSource);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6659(o.outputSource);
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

core.List<api.InstructionInput> buildUnnamed6660() {
  var o = <api.InstructionInput>[];
  o.add(buildInstructionInput());
  o.add(buildInstructionInput());
  return o;
}

void checkUnnamed6660(core.List<api.InstructionInput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstructionInput(o[0]);
  checkInstructionInput(o[1]);
}

core.int buildCounterFlattenInstruction = 0;
api.FlattenInstruction buildFlattenInstruction() {
  var o = api.FlattenInstruction();
  buildCounterFlattenInstruction++;
  if (buildCounterFlattenInstruction < 3) {
    o.inputs = buildUnnamed6660();
  }
  buildCounterFlattenInstruction--;
  return o;
}

void checkFlattenInstruction(api.FlattenInstruction o) {
  buildCounterFlattenInstruction++;
  if (buildCounterFlattenInstruction < 3) {
    checkUnnamed6660(o.inputs);
  }
  buildCounterFlattenInstruction--;
}

core.List<core.String> buildUnnamed6661() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6661(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed6662() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6662(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterFlexTemplateRuntimeEnvironment = 0;
api.FlexTemplateRuntimeEnvironment buildFlexTemplateRuntimeEnvironment() {
  var o = api.FlexTemplateRuntimeEnvironment();
  buildCounterFlexTemplateRuntimeEnvironment++;
  if (buildCounterFlexTemplateRuntimeEnvironment < 3) {
    o.additionalExperiments = buildUnnamed6661();
    o.additionalUserLabels = buildUnnamed6662();
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
  buildCounterFlexTemplateRuntimeEnvironment--;
  return o;
}

void checkFlexTemplateRuntimeEnvironment(api.FlexTemplateRuntimeEnvironment o) {
  buildCounterFlexTemplateRuntimeEnvironment++;
  if (buildCounterFlexTemplateRuntimeEnvironment < 3) {
    checkUnnamed6661(o.additionalExperiments);
    checkUnnamed6662(o.additionalUserLabels);
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
  buildCounterFlexTemplateRuntimeEnvironment--;
}

core.List<core.double> buildUnnamed6663() {
  var o = <core.double>[];
  o.add(42.0);
  o.add(42.0);
  return o;
}

void checkUnnamed6663(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterFloatingPointList = 0;
api.FloatingPointList buildFloatingPointList() {
  var o = api.FloatingPointList();
  buildCounterFloatingPointList++;
  if (buildCounterFloatingPointList < 3) {
    o.elements = buildUnnamed6663();
  }
  buildCounterFloatingPointList--;
  return o;
}

void checkFloatingPointList(api.FloatingPointList o) {
  buildCounterFloatingPointList++;
  if (buildCounterFloatingPointList < 3) {
    checkUnnamed6663(o.elements);
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
    checkSplitInt64(o.count);
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
    checkTemplateMetadata(o.metadata);
    checkRuntimeMetadata(o.runtimeMetadata);
    checkStatus(o.status);
    unittest.expect(o.templateType, unittest.equals('foo'));
  }
  buildCounterGetTemplateResponse--;
}

core.List<core.String> buildUnnamed6664() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6664(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterHistogram = 0;
api.Histogram buildHistogram() {
  var o = api.Histogram();
  buildCounterHistogram++;
  if (buildCounterHistogram < 3) {
    o.bucketCounts = buildUnnamed6664();
    o.firstBucketOffset = 42;
  }
  buildCounterHistogram--;
  return o;
}

void checkHistogram(api.Histogram o) {
  buildCounterHistogram++;
  if (buildCounterHistogram < 3) {
    checkUnnamed6664(o.bucketCounts);
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

core.Map<core.String, core.Object> buildUnnamed6665() {
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

void checkUnnamed6665(core.Map<core.String, core.Object> o) {
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
    o.codec = buildUnnamed6665();
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
    checkUnnamed6665(o.codec);
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
    checkSplitInt64(o.value);
  }
  buildCounterIntegerGauge--;
}

core.List<api.SplitInt64> buildUnnamed6666() {
  var o = <api.SplitInt64>[];
  o.add(buildSplitInt64());
  o.add(buildSplitInt64());
  return o;
}

void checkUnnamed6666(core.List<api.SplitInt64> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSplitInt64(o[0]);
  checkSplitInt64(o[1]);
}

core.int buildCounterIntegerList = 0;
api.IntegerList buildIntegerList() {
  var o = api.IntegerList();
  buildCounterIntegerList++;
  if (buildCounterIntegerList < 3) {
    o.elements = buildUnnamed6666();
  }
  buildCounterIntegerList--;
  return o;
}

void checkIntegerList(api.IntegerList o) {
  buildCounterIntegerList++;
  if (buildCounterIntegerList < 3) {
    checkUnnamed6666(o.elements);
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
    checkSplitInt64(o.count);
    checkSplitInt64(o.sum);
  }
  buildCounterIntegerMean--;
}

core.Map<core.String, core.String> buildUnnamed6667() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6667(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<api.ExecutionStageState> buildUnnamed6668() {
  var o = <api.ExecutionStageState>[];
  o.add(buildExecutionStageState());
  o.add(buildExecutionStageState());
  return o;
}

void checkUnnamed6668(core.List<api.ExecutionStageState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecutionStageState(o[0]);
  checkExecutionStageState(o[1]);
}

core.List<api.Step> buildUnnamed6669() {
  var o = <api.Step>[];
  o.add(buildStep());
  o.add(buildStep());
  return o;
}

void checkUnnamed6669(core.List<api.Step> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStep(o[0]);
  checkStep(o[1]);
}

core.List<core.String> buildUnnamed6670() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6670(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed6671() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6671(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed6667();
    o.location = 'foo';
    o.name = 'foo';
    o.pipelineDescription = buildPipelineDescription();
    o.projectId = 'foo';
    o.replaceJobId = 'foo';
    o.replacedByJobId = 'foo';
    o.requestedState = 'foo';
    o.stageStates = buildUnnamed6668();
    o.startTime = 'foo';
    o.steps = buildUnnamed6669();
    o.stepsLocation = 'foo';
    o.tempFiles = buildUnnamed6670();
    o.transformNameMapping = buildUnnamed6671();
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
    checkEnvironment(o.environment);
    checkJobExecutionInfo(o.executionInfo);
    unittest.expect(o.id, unittest.equals('foo'));
    checkJobMetadata(o.jobMetadata);
    checkUnnamed6667(o.labels);
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkPipelineDescription(o.pipelineDescription);
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.replaceJobId, unittest.equals('foo'));
    unittest.expect(o.replacedByJobId, unittest.equals('foo'));
    unittest.expect(o.requestedState, unittest.equals('foo'));
    checkUnnamed6668(o.stageStates);
    unittest.expect(o.startTime, unittest.equals('foo'));
    checkUnnamed6669(o.steps);
    unittest.expect(o.stepsLocation, unittest.equals('foo'));
    checkUnnamed6670(o.tempFiles);
    checkUnnamed6671(o.transformNameMapping);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterJob--;
}

core.List<api.StageSummary> buildUnnamed6672() {
  var o = <api.StageSummary>[];
  o.add(buildStageSummary());
  o.add(buildStageSummary());
  return o;
}

void checkUnnamed6672(core.List<api.StageSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStageSummary(o[0]);
  checkStageSummary(o[1]);
}

core.int buildCounterJobExecutionDetails = 0;
api.JobExecutionDetails buildJobExecutionDetails() {
  var o = api.JobExecutionDetails();
  buildCounterJobExecutionDetails++;
  if (buildCounterJobExecutionDetails < 3) {
    o.nextPageToken = 'foo';
    o.stages = buildUnnamed6672();
  }
  buildCounterJobExecutionDetails--;
  return o;
}

void checkJobExecutionDetails(api.JobExecutionDetails o) {
  buildCounterJobExecutionDetails++;
  if (buildCounterJobExecutionDetails < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6672(o.stages);
  }
  buildCounterJobExecutionDetails--;
}

core.Map<core.String, api.JobExecutionStageInfo> buildUnnamed6673() {
  var o = <core.String, api.JobExecutionStageInfo>{};
  o['x'] = buildJobExecutionStageInfo();
  o['y'] = buildJobExecutionStageInfo();
  return o;
}

void checkUnnamed6673(core.Map<core.String, api.JobExecutionStageInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobExecutionStageInfo(o['x']);
  checkJobExecutionStageInfo(o['y']);
}

core.int buildCounterJobExecutionInfo = 0;
api.JobExecutionInfo buildJobExecutionInfo() {
  var o = api.JobExecutionInfo();
  buildCounterJobExecutionInfo++;
  if (buildCounterJobExecutionInfo < 3) {
    o.stages = buildUnnamed6673();
  }
  buildCounterJobExecutionInfo--;
  return o;
}

void checkJobExecutionInfo(api.JobExecutionInfo o) {
  buildCounterJobExecutionInfo++;
  if (buildCounterJobExecutionInfo < 3) {
    checkUnnamed6673(o.stages);
  }
  buildCounterJobExecutionInfo--;
}

core.List<core.String> buildUnnamed6674() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6674(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterJobExecutionStageInfo = 0;
api.JobExecutionStageInfo buildJobExecutionStageInfo() {
  var o = api.JobExecutionStageInfo();
  buildCounterJobExecutionStageInfo++;
  if (buildCounterJobExecutionStageInfo < 3) {
    o.stepName = buildUnnamed6674();
  }
  buildCounterJobExecutionStageInfo--;
  return o;
}

void checkJobExecutionStageInfo(api.JobExecutionStageInfo o) {
  buildCounterJobExecutionStageInfo++;
  if (buildCounterJobExecutionStageInfo < 3) {
    checkUnnamed6674(o.stepName);
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

core.List<api.BigTableIODetails> buildUnnamed6675() {
  var o = <api.BigTableIODetails>[];
  o.add(buildBigTableIODetails());
  o.add(buildBigTableIODetails());
  return o;
}

void checkUnnamed6675(core.List<api.BigTableIODetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBigTableIODetails(o[0]);
  checkBigTableIODetails(o[1]);
}

core.List<api.BigQueryIODetails> buildUnnamed6676() {
  var o = <api.BigQueryIODetails>[];
  o.add(buildBigQueryIODetails());
  o.add(buildBigQueryIODetails());
  return o;
}

void checkUnnamed6676(core.List<api.BigQueryIODetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBigQueryIODetails(o[0]);
  checkBigQueryIODetails(o[1]);
}

core.List<api.DatastoreIODetails> buildUnnamed6677() {
  var o = <api.DatastoreIODetails>[];
  o.add(buildDatastoreIODetails());
  o.add(buildDatastoreIODetails());
  return o;
}

void checkUnnamed6677(core.List<api.DatastoreIODetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatastoreIODetails(o[0]);
  checkDatastoreIODetails(o[1]);
}

core.List<api.FileIODetails> buildUnnamed6678() {
  var o = <api.FileIODetails>[];
  o.add(buildFileIODetails());
  o.add(buildFileIODetails());
  return o;
}

void checkUnnamed6678(core.List<api.FileIODetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileIODetails(o[0]);
  checkFileIODetails(o[1]);
}

core.List<api.PubSubIODetails> buildUnnamed6679() {
  var o = <api.PubSubIODetails>[];
  o.add(buildPubSubIODetails());
  o.add(buildPubSubIODetails());
  return o;
}

void checkUnnamed6679(core.List<api.PubSubIODetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPubSubIODetails(o[0]);
  checkPubSubIODetails(o[1]);
}

core.List<api.SpannerIODetails> buildUnnamed6680() {
  var o = <api.SpannerIODetails>[];
  o.add(buildSpannerIODetails());
  o.add(buildSpannerIODetails());
  return o;
}

void checkUnnamed6680(core.List<api.SpannerIODetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpannerIODetails(o[0]);
  checkSpannerIODetails(o[1]);
}

core.int buildCounterJobMetadata = 0;
api.JobMetadata buildJobMetadata() {
  var o = api.JobMetadata();
  buildCounterJobMetadata++;
  if (buildCounterJobMetadata < 3) {
    o.bigTableDetails = buildUnnamed6675();
    o.bigqueryDetails = buildUnnamed6676();
    o.datastoreDetails = buildUnnamed6677();
    o.fileDetails = buildUnnamed6678();
    o.pubsubDetails = buildUnnamed6679();
    o.sdkVersion = buildSdkVersion();
    o.spannerDetails = buildUnnamed6680();
  }
  buildCounterJobMetadata--;
  return o;
}

void checkJobMetadata(api.JobMetadata o) {
  buildCounterJobMetadata++;
  if (buildCounterJobMetadata < 3) {
    checkUnnamed6675(o.bigTableDetails);
    checkUnnamed6676(o.bigqueryDetails);
    checkUnnamed6677(o.datastoreDetails);
    checkUnnamed6678(o.fileDetails);
    checkUnnamed6679(o.pubsubDetails);
    checkSdkVersion(o.sdkVersion);
    checkUnnamed6680(o.spannerDetails);
  }
  buildCounterJobMetadata--;
}

core.List<api.MetricUpdate> buildUnnamed6681() {
  var o = <api.MetricUpdate>[];
  o.add(buildMetricUpdate());
  o.add(buildMetricUpdate());
  return o;
}

void checkUnnamed6681(core.List<api.MetricUpdate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricUpdate(o[0]);
  checkMetricUpdate(o[1]);
}

core.int buildCounterJobMetrics = 0;
api.JobMetrics buildJobMetrics() {
  var o = api.JobMetrics();
  buildCounterJobMetrics++;
  if (buildCounterJobMetrics < 3) {
    o.metricTime = 'foo';
    o.metrics = buildUnnamed6681();
  }
  buildCounterJobMetrics--;
  return o;
}

void checkJobMetrics(api.JobMetrics o) {
  buildCounterJobMetrics++;
  if (buildCounterJobMetrics < 3) {
    unittest.expect(o.metricTime, unittest.equals('foo'));
    checkUnnamed6681(o.metrics);
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

core.Map<core.String, core.String> buildUnnamed6682() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6682(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed6683() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6683(core.Map<core.String, core.String> o) {
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
    o.launchOptions = buildUnnamed6682();
    o.parameters = buildUnnamed6683();
  }
  buildCounterLaunchFlexTemplateParameter--;
  return o;
}

void checkLaunchFlexTemplateParameter(api.LaunchFlexTemplateParameter o) {
  buildCounterLaunchFlexTemplateParameter++;
  if (buildCounterLaunchFlexTemplateParameter < 3) {
    checkContainerSpec(o.containerSpec);
    unittest.expect(o.containerSpecGcsPath, unittest.equals('foo'));
    checkFlexTemplateRuntimeEnvironment(o.environment);
    unittest.expect(o.jobName, unittest.equals('foo'));
    checkUnnamed6682(o.launchOptions);
    checkUnnamed6683(o.parameters);
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
    checkLaunchFlexTemplateParameter(o.launchParameter);
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
    checkJob(o.job);
  }
  buildCounterLaunchFlexTemplateResponse--;
}

core.Map<core.String, core.String> buildUnnamed6684() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6684(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed6685() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6685(core.Map<core.String, core.String> o) {
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
    o.parameters = buildUnnamed6684();
    o.transformNameMapping = buildUnnamed6685();
    o.update = true;
  }
  buildCounterLaunchTemplateParameters--;
  return o;
}

void checkLaunchTemplateParameters(api.LaunchTemplateParameters o) {
  buildCounterLaunchTemplateParameters++;
  if (buildCounterLaunchTemplateParameters < 3) {
    checkRuntimeEnvironment(o.environment);
    unittest.expect(o.jobName, unittest.equals('foo'));
    checkUnnamed6684(o.parameters);
    checkUnnamed6685(o.transformNameMapping);
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
    checkJob(o.job);
  }
  buildCounterLaunchTemplateResponse--;
}

core.Map<core.String, core.Object> buildUnnamed6686() {
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

void checkUnnamed6686(core.Map<core.String, core.Object> o) {
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

core.List<core.String> buildUnnamed6687() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6687(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed6688() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6688(core.List<core.String> o) {
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
    o.unifiedWorkerRequest = buildUnnamed6686();
    o.workItemTypes = buildUnnamed6687();
    o.workerCapabilities = buildUnnamed6688();
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
    checkUnnamed6686(o.unifiedWorkerRequest);
    checkUnnamed6687(o.workItemTypes);
    checkUnnamed6688(o.workerCapabilities);
    unittest.expect(o.workerId, unittest.equals('foo'));
  }
  buildCounterLeaseWorkItemRequest--;
}

core.Map<core.String, core.Object> buildUnnamed6689() {
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

void checkUnnamed6689(core.Map<core.String, core.Object> o) {
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

core.List<api.WorkItem> buildUnnamed6690() {
  var o = <api.WorkItem>[];
  o.add(buildWorkItem());
  o.add(buildWorkItem());
  return o;
}

void checkUnnamed6690(core.List<api.WorkItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkItem(o[0]);
  checkWorkItem(o[1]);
}

core.int buildCounterLeaseWorkItemResponse = 0;
api.LeaseWorkItemResponse buildLeaseWorkItemResponse() {
  var o = api.LeaseWorkItemResponse();
  buildCounterLeaseWorkItemResponse++;
  if (buildCounterLeaseWorkItemResponse < 3) {
    o.unifiedWorkerResponse = buildUnnamed6689();
    o.workItems = buildUnnamed6690();
  }
  buildCounterLeaseWorkItemResponse--;
  return o;
}

void checkLeaseWorkItemResponse(api.LeaseWorkItemResponse o) {
  buildCounterLeaseWorkItemResponse++;
  if (buildCounterLeaseWorkItemResponse < 3) {
    checkUnnamed6689(o.unifiedWorkerResponse);
    checkUnnamed6690(o.workItems);
  }
  buildCounterLeaseWorkItemResponse--;
}

core.List<api.AutoscalingEvent> buildUnnamed6691() {
  var o = <api.AutoscalingEvent>[];
  o.add(buildAutoscalingEvent());
  o.add(buildAutoscalingEvent());
  return o;
}

void checkUnnamed6691(core.List<api.AutoscalingEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutoscalingEvent(o[0]);
  checkAutoscalingEvent(o[1]);
}

core.List<api.JobMessage> buildUnnamed6692() {
  var o = <api.JobMessage>[];
  o.add(buildJobMessage());
  o.add(buildJobMessage());
  return o;
}

void checkUnnamed6692(core.List<api.JobMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobMessage(o[0]);
  checkJobMessage(o[1]);
}

core.int buildCounterListJobMessagesResponse = 0;
api.ListJobMessagesResponse buildListJobMessagesResponse() {
  var o = api.ListJobMessagesResponse();
  buildCounterListJobMessagesResponse++;
  if (buildCounterListJobMessagesResponse < 3) {
    o.autoscalingEvents = buildUnnamed6691();
    o.jobMessages = buildUnnamed6692();
    o.nextPageToken = 'foo';
  }
  buildCounterListJobMessagesResponse--;
  return o;
}

void checkListJobMessagesResponse(api.ListJobMessagesResponse o) {
  buildCounterListJobMessagesResponse++;
  if (buildCounterListJobMessagesResponse < 3) {
    checkUnnamed6691(o.autoscalingEvents);
    checkUnnamed6692(o.jobMessages);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListJobMessagesResponse--;
}

core.List<api.FailedLocation> buildUnnamed6693() {
  var o = <api.FailedLocation>[];
  o.add(buildFailedLocation());
  o.add(buildFailedLocation());
  return o;
}

void checkUnnamed6693(core.List<api.FailedLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFailedLocation(o[0]);
  checkFailedLocation(o[1]);
}

core.List<api.Job> buildUnnamed6694() {
  var o = <api.Job>[];
  o.add(buildJob());
  o.add(buildJob());
  return o;
}

void checkUnnamed6694(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterListJobsResponse = 0;
api.ListJobsResponse buildListJobsResponse() {
  var o = api.ListJobsResponse();
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    o.failedLocation = buildUnnamed6693();
    o.jobs = buildUnnamed6694();
    o.nextPageToken = 'foo';
  }
  buildCounterListJobsResponse--;
  return o;
}

void checkListJobsResponse(api.ListJobsResponse o) {
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    checkUnnamed6693(o.failedLocation);
    checkUnnamed6694(o.jobs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListJobsResponse--;
}

core.List<api.Snapshot> buildUnnamed6695() {
  var o = <api.Snapshot>[];
  o.add(buildSnapshot());
  o.add(buildSnapshot());
  return o;
}

void checkUnnamed6695(core.List<api.Snapshot> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSnapshot(o[0]);
  checkSnapshot(o[1]);
}

core.int buildCounterListSnapshotsResponse = 0;
api.ListSnapshotsResponse buildListSnapshotsResponse() {
  var o = api.ListSnapshotsResponse();
  buildCounterListSnapshotsResponse++;
  if (buildCounterListSnapshotsResponse < 3) {
    o.snapshots = buildUnnamed6695();
  }
  buildCounterListSnapshotsResponse--;
  return o;
}

void checkListSnapshotsResponse(api.ListSnapshotsResponse o) {
  buildCounterListSnapshotsResponse++;
  if (buildCounterListSnapshotsResponse < 3) {
    checkUnnamed6695(o.snapshots);
  }
  buildCounterListSnapshotsResponse--;
}

core.List<api.TemplateVersion> buildUnnamed6696() {
  var o = <api.TemplateVersion>[];
  o.add(buildTemplateVersion());
  o.add(buildTemplateVersion());
  return o;
}

void checkUnnamed6696(core.List<api.TemplateVersion> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTemplateVersion(o[0]);
  checkTemplateVersion(o[1]);
}

core.int buildCounterListTemplateVersionsResponse = 0;
api.ListTemplateVersionsResponse buildListTemplateVersionsResponse() {
  var o = api.ListTemplateVersionsResponse();
  buildCounterListTemplateVersionsResponse++;
  if (buildCounterListTemplateVersionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.templateVersions = buildUnnamed6696();
  }
  buildCounterListTemplateVersionsResponse--;
  return o;
}

void checkListTemplateVersionsResponse(api.ListTemplateVersionsResponse o) {
  buildCounterListTemplateVersionsResponse++;
  if (buildCounterListTemplateVersionsResponse < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6696(o.templateVersions);
  }
  buildCounterListTemplateVersionsResponse--;
}

core.List<api.ParallelInstruction> buildUnnamed6697() {
  var o = <api.ParallelInstruction>[];
  o.add(buildParallelInstruction());
  o.add(buildParallelInstruction());
  return o;
}

void checkUnnamed6697(core.List<api.ParallelInstruction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParallelInstruction(o[0]);
  checkParallelInstruction(o[1]);
}

core.int buildCounterMapTask = 0;
api.MapTask buildMapTask() {
  var o = api.MapTask();
  buildCounterMapTask++;
  if (buildCounterMapTask < 3) {
    o.counterPrefix = 'foo';
    o.instructions = buildUnnamed6697();
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
    checkUnnamed6697(o.instructions);
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

core.Map<core.String, core.String> buildUnnamed6698() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6698(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterMetricStructuredName = 0;
api.MetricStructuredName buildMetricStructuredName() {
  var o = api.MetricStructuredName();
  buildCounterMetricStructuredName++;
  if (buildCounterMetricStructuredName < 3) {
    o.context = buildUnnamed6698();
    o.name = 'foo';
    o.origin = 'foo';
  }
  buildCounterMetricStructuredName--;
  return o;
}

void checkMetricStructuredName(api.MetricStructuredName o) {
  buildCounterMetricStructuredName++;
  if (buildCounterMetricStructuredName < 3) {
    checkUnnamed6698(o.context);
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
    checkMetricStructuredName(o.name);
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

core.Map<core.String, core.String> buildUnnamed6699() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6699(core.Map<core.String, core.String> o) {
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
    o.labels = buildUnnamed6699();
  }
  buildCounterModifyTemplateVersionLabelResponse--;
  return o;
}

void checkModifyTemplateVersionLabelResponse(
    api.ModifyTemplateVersionLabelResponse o) {
  buildCounterModifyTemplateVersionLabelResponse++;
  if (buildCounterModifyTemplateVersionLabelResponse < 3) {
    checkUnnamed6699(o.labels);
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

core.List<core.String> buildUnnamed6700() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6700(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterModifyTemplateVersionTagResponse = 0;
api.ModifyTemplateVersionTagResponse buildModifyTemplateVersionTagResponse() {
  var o = api.ModifyTemplateVersionTagResponse();
  buildCounterModifyTemplateVersionTagResponse++;
  if (buildCounterModifyTemplateVersionTagResponse < 3) {
    o.tags = buildUnnamed6700();
  }
  buildCounterModifyTemplateVersionTagResponse--;
  return o;
}

void checkModifyTemplateVersionTagResponse(
    api.ModifyTemplateVersionTagResponse o) {
  buildCounterModifyTemplateVersionTagResponse++;
  if (buildCounterModifyTemplateVersionTagResponse < 3) {
    checkUnnamed6700(o.tags);
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

core.List<api.MultiOutputInfo> buildUnnamed6701() {
  var o = <api.MultiOutputInfo>[];
  o.add(buildMultiOutputInfo());
  o.add(buildMultiOutputInfo());
  return o;
}

void checkUnnamed6701(core.List<api.MultiOutputInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMultiOutputInfo(o[0]);
  checkMultiOutputInfo(o[1]);
}

core.List<api.SideInputInfo> buildUnnamed6702() {
  var o = <api.SideInputInfo>[];
  o.add(buildSideInputInfo());
  o.add(buildSideInputInfo());
  return o;
}

void checkUnnamed6702(core.List<api.SideInputInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSideInputInfo(o[0]);
  checkSideInputInfo(o[1]);
}

core.Map<core.String, core.Object> buildUnnamed6703() {
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

void checkUnnamed6703(core.Map<core.String, core.Object> o) {
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
    o.multiOutputInfos = buildUnnamed6701();
    o.numOutputs = 42;
    o.sideInputs = buildUnnamed6702();
    o.userFn = buildUnnamed6703();
  }
  buildCounterParDoInstruction--;
  return o;
}

void checkParDoInstruction(api.ParDoInstruction o) {
  buildCounterParDoInstruction++;
  if (buildCounterParDoInstruction < 3) {
    checkInstructionInput(o.input);
    checkUnnamed6701(o.multiOutputInfos);
    unittest.expect(o.numOutputs, unittest.equals(42));
    checkUnnamed6702(o.sideInputs);
    checkUnnamed6703(o.userFn);
  }
  buildCounterParDoInstruction--;
}

core.List<api.InstructionOutput> buildUnnamed6704() {
  var o = <api.InstructionOutput>[];
  o.add(buildInstructionOutput());
  o.add(buildInstructionOutput());
  return o;
}

void checkUnnamed6704(core.List<api.InstructionOutput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstructionOutput(o[0]);
  checkInstructionOutput(o[1]);
}

core.int buildCounterParallelInstruction = 0;
api.ParallelInstruction buildParallelInstruction() {
  var o = api.ParallelInstruction();
  buildCounterParallelInstruction++;
  if (buildCounterParallelInstruction < 3) {
    o.flatten = buildFlattenInstruction();
    o.name = 'foo';
    o.originalName = 'foo';
    o.outputs = buildUnnamed6704();
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
    checkFlattenInstruction(o.flatten);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.originalName, unittest.equals('foo'));
    checkUnnamed6704(o.outputs);
    checkParDoInstruction(o.parDo);
    checkPartialGroupByKeyInstruction(o.partialGroupByKey);
    checkReadInstruction(o.read);
    unittest.expect(o.systemName, unittest.equals('foo'));
    checkWriteInstruction(o.write);
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

core.List<core.String> buildUnnamed6705() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6705(core.List<core.String> o) {
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
    o.regexes = buildUnnamed6705();
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
    checkUnnamed6705(o.regexes);
  }
  buildCounterParameterMetadata--;
}

core.Map<core.String, core.Object> buildUnnamed6706() {
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

void checkUnnamed6706(core.Map<core.String, core.Object> o) {
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

core.List<api.SideInputInfo> buildUnnamed6707() {
  var o = <api.SideInputInfo>[];
  o.add(buildSideInputInfo());
  o.add(buildSideInputInfo());
  return o;
}

void checkUnnamed6707(core.List<api.SideInputInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSideInputInfo(o[0]);
  checkSideInputInfo(o[1]);
}

core.Map<core.String, core.Object> buildUnnamed6708() {
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

void checkUnnamed6708(core.Map<core.String, core.Object> o) {
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
    o.inputElementCodec = buildUnnamed6706();
    o.originalCombineValuesInputStoreName = 'foo';
    o.originalCombineValuesStepName = 'foo';
    o.sideInputs = buildUnnamed6707();
    o.valueCombiningFn = buildUnnamed6708();
  }
  buildCounterPartialGroupByKeyInstruction--;
  return o;
}

void checkPartialGroupByKeyInstruction(api.PartialGroupByKeyInstruction o) {
  buildCounterPartialGroupByKeyInstruction++;
  if (buildCounterPartialGroupByKeyInstruction < 3) {
    checkInstructionInput(o.input);
    checkUnnamed6706(o.inputElementCodec);
    unittest.expect(
        o.originalCombineValuesInputStoreName, unittest.equals('foo'));
    unittest.expect(o.originalCombineValuesStepName, unittest.equals('foo'));
    checkUnnamed6707(o.sideInputs);
    checkUnnamed6708(o.valueCombiningFn);
  }
  buildCounterPartialGroupByKeyInstruction--;
}

core.List<api.DisplayData> buildUnnamed6709() {
  var o = <api.DisplayData>[];
  o.add(buildDisplayData());
  o.add(buildDisplayData());
  return o;
}

void checkUnnamed6709(core.List<api.DisplayData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisplayData(o[0]);
  checkDisplayData(o[1]);
}

core.List<api.ExecutionStageSummary> buildUnnamed6710() {
  var o = <api.ExecutionStageSummary>[];
  o.add(buildExecutionStageSummary());
  o.add(buildExecutionStageSummary());
  return o;
}

void checkUnnamed6710(core.List<api.ExecutionStageSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecutionStageSummary(o[0]);
  checkExecutionStageSummary(o[1]);
}

core.List<api.TransformSummary> buildUnnamed6711() {
  var o = <api.TransformSummary>[];
  o.add(buildTransformSummary());
  o.add(buildTransformSummary());
  return o;
}

void checkUnnamed6711(core.List<api.TransformSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransformSummary(o[0]);
  checkTransformSummary(o[1]);
}

core.int buildCounterPipelineDescription = 0;
api.PipelineDescription buildPipelineDescription() {
  var o = api.PipelineDescription();
  buildCounterPipelineDescription++;
  if (buildCounterPipelineDescription < 3) {
    o.displayData = buildUnnamed6709();
    o.executionPipelineStage = buildUnnamed6710();
    o.originalPipelineTransform = buildUnnamed6711();
  }
  buildCounterPipelineDescription--;
  return o;
}

void checkPipelineDescription(api.PipelineDescription o) {
  buildCounterPipelineDescription++;
  if (buildCounterPipelineDescription < 3) {
    checkUnnamed6709(o.displayData);
    checkUnnamed6710(o.executionPipelineStage);
    checkUnnamed6711(o.originalPipelineTransform);
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
    checkConcatPosition(o.concatPosition);
    unittest.expect(o.end, unittest.isTrue);
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.recordIndex, unittest.equals('foo'));
    unittest.expect(o.shufflePosition, unittest.equals('foo'));
  }
  buildCounterPosition--;
}

core.List<api.Point> buildUnnamed6712() {
  var o = <api.Point>[];
  o.add(buildPoint());
  o.add(buildPoint());
  return o;
}

void checkUnnamed6712(core.List<api.Point> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPoint(o[0]);
  checkPoint(o[1]);
}

core.int buildCounterProgressTimeseries = 0;
api.ProgressTimeseries buildProgressTimeseries() {
  var o = api.ProgressTimeseries();
  buildCounterProgressTimeseries++;
  if (buildCounterProgressTimeseries < 3) {
    o.currentProgress = 42.0;
    o.dataPoints = buildUnnamed6712();
  }
  buildCounterProgressTimeseries--;
  return o;
}

void checkProgressTimeseries(api.ProgressTimeseries o) {
  buildCounterProgressTimeseries++;
  if (buildCounterProgressTimeseries < 3) {
    unittest.expect(o.currentProgress, unittest.equals(42.0));
    checkUnnamed6712(o.dataPoints);
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

core.List<core.String> buildUnnamed6713() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6713(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterQueryInfo = 0;
api.QueryInfo buildQueryInfo() {
  var o = api.QueryInfo();
  buildCounterQueryInfo++;
  if (buildCounterQueryInfo < 3) {
    o.queryProperty = buildUnnamed6713();
  }
  buildCounterQueryInfo--;
  return o;
}

void checkQueryInfo(api.QueryInfo o) {
  buildCounterQueryInfo++;
  if (buildCounterQueryInfo < 3) {
    checkUnnamed6713(o.queryProperty);
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
    checkSource(o.source);
  }
  buildCounterReadInstruction--;
}

core.Map<core.String, core.Object> buildUnnamed6714() {
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

void checkUnnamed6714(core.Map<core.String, core.Object> o) {
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

core.List<api.WorkItemStatus> buildUnnamed6715() {
  var o = <api.WorkItemStatus>[];
  o.add(buildWorkItemStatus());
  o.add(buildWorkItemStatus());
  return o;
}

void checkUnnamed6715(core.List<api.WorkItemStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkItemStatus(o[0]);
  checkWorkItemStatus(o[1]);
}

core.int buildCounterReportWorkItemStatusRequest = 0;
api.ReportWorkItemStatusRequest buildReportWorkItemStatusRequest() {
  var o = api.ReportWorkItemStatusRequest();
  buildCounterReportWorkItemStatusRequest++;
  if (buildCounterReportWorkItemStatusRequest < 3) {
    o.currentWorkerTime = 'foo';
    o.location = 'foo';
    o.unifiedWorkerRequest = buildUnnamed6714();
    o.workItemStatuses = buildUnnamed6715();
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
    checkUnnamed6714(o.unifiedWorkerRequest);
    checkUnnamed6715(o.workItemStatuses);
    unittest.expect(o.workerId, unittest.equals('foo'));
  }
  buildCounterReportWorkItemStatusRequest--;
}

core.Map<core.String, core.Object> buildUnnamed6716() {
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

void checkUnnamed6716(core.Map<core.String, core.Object> o) {
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

core.List<api.WorkItemServiceState> buildUnnamed6717() {
  var o = <api.WorkItemServiceState>[];
  o.add(buildWorkItemServiceState());
  o.add(buildWorkItemServiceState());
  return o;
}

void checkUnnamed6717(core.List<api.WorkItemServiceState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkItemServiceState(o[0]);
  checkWorkItemServiceState(o[1]);
}

core.int buildCounterReportWorkItemStatusResponse = 0;
api.ReportWorkItemStatusResponse buildReportWorkItemStatusResponse() {
  var o = api.ReportWorkItemStatusResponse();
  buildCounterReportWorkItemStatusResponse++;
  if (buildCounterReportWorkItemStatusResponse < 3) {
    o.unifiedWorkerResponse = buildUnnamed6716();
    o.workItemServiceStates = buildUnnamed6717();
  }
  buildCounterReportWorkItemStatusResponse--;
  return o;
}

void checkReportWorkItemStatusResponse(api.ReportWorkItemStatusResponse o) {
  buildCounterReportWorkItemStatusResponse++;
  if (buildCounterReportWorkItemStatusResponse < 3) {
    checkUnnamed6716(o.unifiedWorkerResponse);
    checkUnnamed6717(o.workItemServiceStates);
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

core.Map<core.String, api.ResourceUtilizationReport> buildUnnamed6718() {
  var o = <core.String, api.ResourceUtilizationReport>{};
  o['x'] = buildResourceUtilizationReport();
  o['y'] = buildResourceUtilizationReport();
  return o;
}

void checkUnnamed6718(core.Map<core.String, api.ResourceUtilizationReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceUtilizationReport(o['x']);
  checkResourceUtilizationReport(o['y']);
}

core.List<api.CPUTime> buildUnnamed6719() {
  var o = <api.CPUTime>[];
  o.add(buildCPUTime());
  o.add(buildCPUTime());
  return o;
}

void checkUnnamed6719(core.List<api.CPUTime> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCPUTime(o[0]);
  checkCPUTime(o[1]);
}

core.List<api.MemInfo> buildUnnamed6720() {
  var o = <api.MemInfo>[];
  o.add(buildMemInfo());
  o.add(buildMemInfo());
  return o;
}

void checkUnnamed6720(core.List<api.MemInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMemInfo(o[0]);
  checkMemInfo(o[1]);
}

core.int buildCounterResourceUtilizationReport = 0;
api.ResourceUtilizationReport buildResourceUtilizationReport() {
  var o = api.ResourceUtilizationReport();
  buildCounterResourceUtilizationReport++;
  if (buildCounterResourceUtilizationReport < 3) {
    o.containers = buildUnnamed6718();
    o.cpuTime = buildUnnamed6719();
    o.memoryInfo = buildUnnamed6720();
  }
  buildCounterResourceUtilizationReport--;
  return o;
}

void checkResourceUtilizationReport(api.ResourceUtilizationReport o) {
  buildCounterResourceUtilizationReport++;
  if (buildCounterResourceUtilizationReport < 3) {
    checkUnnamed6718(o.containers);
    checkUnnamed6719(o.cpuTime);
    checkUnnamed6720(o.memoryInfo);
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

core.List<core.String> buildUnnamed6721() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6721(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed6722() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6722(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterRuntimeEnvironment = 0;
api.RuntimeEnvironment buildRuntimeEnvironment() {
  var o = api.RuntimeEnvironment();
  buildCounterRuntimeEnvironment++;
  if (buildCounterRuntimeEnvironment < 3) {
    o.additionalExperiments = buildUnnamed6721();
    o.additionalUserLabels = buildUnnamed6722();
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
    checkUnnamed6721(o.additionalExperiments);
    checkUnnamed6722(o.additionalUserLabels);
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

core.List<api.ParameterMetadata> buildUnnamed6723() {
  var o = <api.ParameterMetadata>[];
  o.add(buildParameterMetadata());
  o.add(buildParameterMetadata());
  return o;
}

void checkUnnamed6723(core.List<api.ParameterMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameterMetadata(o[0]);
  checkParameterMetadata(o[1]);
}

core.int buildCounterRuntimeMetadata = 0;
api.RuntimeMetadata buildRuntimeMetadata() {
  var o = api.RuntimeMetadata();
  buildCounterRuntimeMetadata++;
  if (buildCounterRuntimeMetadata < 3) {
    o.parameters = buildUnnamed6723();
    o.sdkInfo = buildSDKInfo();
  }
  buildCounterRuntimeMetadata--;
  return o;
}

void checkRuntimeMetadata(api.RuntimeMetadata o) {
  buildCounterRuntimeMetadata++;
  if (buildCounterRuntimeMetadata < 3) {
    checkUnnamed6723(o.parameters);
    checkSDKInfo(o.sdkInfo);
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
    o.useSingleCorePerContainer = true;
  }
  buildCounterSdkHarnessContainerImage--;
  return o;
}

void checkSdkHarnessContainerImage(api.SdkHarnessContainerImage o) {
  buildCounterSdkHarnessContainerImage++;
  if (buildCounterSdkHarnessContainerImage < 3) {
    unittest.expect(o.containerImage, unittest.equals('foo'));
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

core.List<api.WorkerMessage> buildUnnamed6724() {
  var o = <api.WorkerMessage>[];
  o.add(buildWorkerMessage());
  o.add(buildWorkerMessage());
  return o;
}

void checkUnnamed6724(core.List<api.WorkerMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkerMessage(o[0]);
  checkWorkerMessage(o[1]);
}

core.int buildCounterSendWorkerMessagesRequest = 0;
api.SendWorkerMessagesRequest buildSendWorkerMessagesRequest() {
  var o = api.SendWorkerMessagesRequest();
  buildCounterSendWorkerMessagesRequest++;
  if (buildCounterSendWorkerMessagesRequest < 3) {
    o.location = 'foo';
    o.workerMessages = buildUnnamed6724();
  }
  buildCounterSendWorkerMessagesRequest--;
  return o;
}

void checkSendWorkerMessagesRequest(api.SendWorkerMessagesRequest o) {
  buildCounterSendWorkerMessagesRequest++;
  if (buildCounterSendWorkerMessagesRequest < 3) {
    unittest.expect(o.location, unittest.equals('foo'));
    checkUnnamed6724(o.workerMessages);
  }
  buildCounterSendWorkerMessagesRequest--;
}

core.List<api.WorkerMessageResponse> buildUnnamed6725() {
  var o = <api.WorkerMessageResponse>[];
  o.add(buildWorkerMessageResponse());
  o.add(buildWorkerMessageResponse());
  return o;
}

void checkUnnamed6725(core.List<api.WorkerMessageResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkerMessageResponse(o[0]);
  checkWorkerMessageResponse(o[1]);
}

core.int buildCounterSendWorkerMessagesResponse = 0;
api.SendWorkerMessagesResponse buildSendWorkerMessagesResponse() {
  var o = api.SendWorkerMessagesResponse();
  buildCounterSendWorkerMessagesResponse++;
  if (buildCounterSendWorkerMessagesResponse < 3) {
    o.workerMessageResponses = buildUnnamed6725();
  }
  buildCounterSendWorkerMessagesResponse--;
  return o;
}

void checkSendWorkerMessagesResponse(api.SendWorkerMessagesResponse o) {
  buildCounterSendWorkerMessagesResponse++;
  if (buildCounterSendWorkerMessagesResponse < 3) {
    checkUnnamed6725(o.workerMessageResponses);
  }
  buildCounterSendWorkerMessagesResponse--;
}

core.List<api.SideInputInfo> buildUnnamed6726() {
  var o = <api.SideInputInfo>[];
  o.add(buildSideInputInfo());
  o.add(buildSideInputInfo());
  return o;
}

void checkUnnamed6726(core.List<api.SideInputInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSideInputInfo(o[0]);
  checkSideInputInfo(o[1]);
}

core.List<api.SeqMapTaskOutputInfo> buildUnnamed6727() {
  var o = <api.SeqMapTaskOutputInfo>[];
  o.add(buildSeqMapTaskOutputInfo());
  o.add(buildSeqMapTaskOutputInfo());
  return o;
}

void checkUnnamed6727(core.List<api.SeqMapTaskOutputInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSeqMapTaskOutputInfo(o[0]);
  checkSeqMapTaskOutputInfo(o[1]);
}

core.Map<core.String, core.Object> buildUnnamed6728() {
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

void checkUnnamed6728(core.Map<core.String, core.Object> o) {
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
    o.inputs = buildUnnamed6726();
    o.name = 'foo';
    o.outputInfos = buildUnnamed6727();
    o.stageName = 'foo';
    o.systemName = 'foo';
    o.userFn = buildUnnamed6728();
  }
  buildCounterSeqMapTask--;
  return o;
}

void checkSeqMapTask(api.SeqMapTask o) {
  buildCounterSeqMapTask++;
  if (buildCounterSeqMapTask < 3) {
    checkUnnamed6726(o.inputs);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6727(o.outputInfos);
    unittest.expect(o.stageName, unittest.equals('foo'));
    unittest.expect(o.systemName, unittest.equals('foo'));
    checkUnnamed6728(o.userFn);
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
    checkSink(o.sink);
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

core.Map<core.String, core.Object> buildUnnamed6729() {
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

void checkUnnamed6729(core.Map<core.String, core.Object> o) {
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

core.List<api.Source> buildUnnamed6730() {
  var o = <api.Source>[];
  o.add(buildSource());
  o.add(buildSource());
  return o;
}

void checkUnnamed6730(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0]);
  checkSource(o[1]);
}

core.int buildCounterSideInputInfo = 0;
api.SideInputInfo buildSideInputInfo() {
  var o = api.SideInputInfo();
  buildCounterSideInputInfo++;
  if (buildCounterSideInputInfo < 3) {
    o.kind = buildUnnamed6729();
    o.sources = buildUnnamed6730();
    o.tag = 'foo';
  }
  buildCounterSideInputInfo--;
  return o;
}

void checkSideInputInfo(api.SideInputInfo o) {
  buildCounterSideInputInfo++;
  if (buildCounterSideInputInfo < 3) {
    checkUnnamed6729(o.kind);
    checkUnnamed6730(o.sources);
    unittest.expect(o.tag, unittest.equals('foo'));
  }
  buildCounterSideInputInfo--;
}

core.Map<core.String, core.Object> buildUnnamed6731() {
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

void checkUnnamed6731(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed6732() {
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

void checkUnnamed6732(core.Map<core.String, core.Object> o) {
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
    o.codec = buildUnnamed6731();
    o.spec = buildUnnamed6732();
  }
  buildCounterSink--;
  return o;
}

void checkSink(api.Sink o) {
  buildCounterSink++;
  if (buildCounterSink < 3) {
    checkUnnamed6731(o.codec);
    checkUnnamed6732(o.spec);
  }
  buildCounterSink--;
}

core.List<api.PubsubSnapshotMetadata> buildUnnamed6733() {
  var o = <api.PubsubSnapshotMetadata>[];
  o.add(buildPubsubSnapshotMetadata());
  o.add(buildPubsubSnapshotMetadata());
  return o;
}

void checkUnnamed6733(core.List<api.PubsubSnapshotMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPubsubSnapshotMetadata(o[0]);
  checkPubsubSnapshotMetadata(o[1]);
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
    o.pubsubMetadata = buildUnnamed6733();
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
    checkUnnamed6733(o.pubsubMetadata);
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

core.Map<core.String, core.Object> buildUnnamed6734() {
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

void checkUnnamed6734(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed6735() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed6734());
  o.add(buildUnnamed6734());
  return o;
}

void checkUnnamed6735(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed6734(o[0]);
  checkUnnamed6734(o[1]);
}

core.Map<core.String, core.Object> buildUnnamed6736() {
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

void checkUnnamed6736(core.Map<core.String, core.Object> o) {
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

core.Map<core.String, core.Object> buildUnnamed6737() {
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

void checkUnnamed6737(core.Map<core.String, core.Object> o) {
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
    o.baseSpecs = buildUnnamed6735();
    o.codec = buildUnnamed6736();
    o.doesNotNeedSplitting = true;
    o.metadata = buildSourceMetadata();
    o.spec = buildUnnamed6737();
  }
  buildCounterSource--;
  return o;
}

void checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    checkUnnamed6735(o.baseSpecs);
    checkUnnamed6736(o.codec);
    unittest.expect(o.doesNotNeedSplitting, unittest.isTrue);
    checkSourceMetadata(o.metadata);
    checkUnnamed6737(o.spec);
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
    checkSourceSplitShard(o.primary);
    checkDerivedSource(o.primarySource);
    checkSourceSplitShard(o.residual);
    checkDerivedSource(o.residualSource);
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
    checkSource(o.source);
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
    checkSourceMetadata(o.metadata);
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
    checkSourceGetMetadataRequest(o.getMetadata);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.originalName, unittest.equals('foo'));
    checkSourceSplitRequest(o.split);
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
    checkSourceGetMetadataResponse(o.getMetadata);
    checkSourceSplitResponse(o.split);
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
    checkSourceSplitOptions(o.options);
    checkSource(o.source);
  }
  buildCounterSourceSplitRequest--;
}

core.List<api.DerivedSource> buildUnnamed6738() {
  var o = <api.DerivedSource>[];
  o.add(buildDerivedSource());
  o.add(buildDerivedSource());
  return o;
}

void checkUnnamed6738(core.List<api.DerivedSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDerivedSource(o[0]);
  checkDerivedSource(o[1]);
}

core.List<api.SourceSplitShard> buildUnnamed6739() {
  var o = <api.SourceSplitShard>[];
  o.add(buildSourceSplitShard());
  o.add(buildSourceSplitShard());
  return o;
}

void checkUnnamed6739(core.List<api.SourceSplitShard> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSourceSplitShard(o[0]);
  checkSourceSplitShard(o[1]);
}

core.int buildCounterSourceSplitResponse = 0;
api.SourceSplitResponse buildSourceSplitResponse() {
  var o = api.SourceSplitResponse();
  buildCounterSourceSplitResponse++;
  if (buildCounterSourceSplitResponse < 3) {
    o.bundles = buildUnnamed6738();
    o.outcome = 'foo';
    o.shards = buildUnnamed6739();
  }
  buildCounterSourceSplitResponse--;
  return o;
}

void checkSourceSplitResponse(api.SourceSplitResponse o) {
  buildCounterSourceSplitResponse++;
  if (buildCounterSourceSplitResponse < 3) {
    checkUnnamed6738(o.bundles);
    unittest.expect(o.outcome, unittest.equals('foo'));
    checkUnnamed6739(o.shards);
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
    checkSource(o.source);
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

core.List<api.WorkerDetails> buildUnnamed6740() {
  var o = <api.WorkerDetails>[];
  o.add(buildWorkerDetails());
  o.add(buildWorkerDetails());
  return o;
}

void checkUnnamed6740(core.List<api.WorkerDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkerDetails(o[0]);
  checkWorkerDetails(o[1]);
}

core.int buildCounterStageExecutionDetails = 0;
api.StageExecutionDetails buildStageExecutionDetails() {
  var o = api.StageExecutionDetails();
  buildCounterStageExecutionDetails++;
  if (buildCounterStageExecutionDetails < 3) {
    o.nextPageToken = 'foo';
    o.workers = buildUnnamed6740();
  }
  buildCounterStageExecutionDetails--;
  return o;
}

void checkStageExecutionDetails(api.StageExecutionDetails o) {
  buildCounterStageExecutionDetails++;
  if (buildCounterStageExecutionDetails < 3) {
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
    checkUnnamed6740(o.workers);
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

core.List<api.MetricUpdate> buildUnnamed6741() {
  var o = <api.MetricUpdate>[];
  o.add(buildMetricUpdate());
  o.add(buildMetricUpdate());
  return o;
}

void checkUnnamed6741(core.List<api.MetricUpdate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricUpdate(o[0]);
  checkMetricUpdate(o[1]);
}

core.int buildCounterStageSummary = 0;
api.StageSummary buildStageSummary() {
  var o = api.StageSummary();
  buildCounterStageSummary++;
  if (buildCounterStageSummary < 3) {
    o.endTime = 'foo';
    o.metrics = buildUnnamed6741();
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
    checkUnnamed6741(o.metrics);
    checkProgressTimeseries(o.progress);
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

core.Map<core.String, core.Object> buildUnnamed6742() {
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

void checkUnnamed6742(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed6743() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed6742());
  o.add(buildUnnamed6742());
  return o;
}

void checkUnnamed6743(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed6742(o[0]);
  checkUnnamed6742(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  var o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed6743();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed6743(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.Map<core.String, core.Object> buildUnnamed6744() {
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

void checkUnnamed6744(core.Map<core.String, core.Object> o) {
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
    o.properties = buildUnnamed6744();
  }
  buildCounterStep--;
  return o;
}

void checkStep(api.Step o) {
  buildCounterStep++;
  if (buildCounterStep < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6744(o.properties);
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
    checkCustomSourceLocation(o.customSourceLocation);
    checkPubsubLocation(o.pubsubLocation);
    checkStreamingSideInputLocation(o.sideInputLocation);
    checkStreamingStageLocation(o.streamingStageLocation);
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

core.List<api.ParallelInstruction> buildUnnamed6745() {
  var o = <api.ParallelInstruction>[];
  o.add(buildParallelInstruction());
  o.add(buildParallelInstruction());
  return o;
}

void checkUnnamed6745(core.List<api.ParallelInstruction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParallelInstruction(o[0]);
  checkParallelInstruction(o[1]);
}

core.Map<core.String, core.String> buildUnnamed6746() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6746(core.Map<core.String, core.String> o) {
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
    o.instructions = buildUnnamed6745();
    o.stageName = 'foo';
    o.systemName = 'foo';
    o.transformUserNameToStateFamily = buildUnnamed6746();
  }
  buildCounterStreamingComputationConfig--;
  return o;
}

void checkStreamingComputationConfig(api.StreamingComputationConfig o) {
  buildCounterStreamingComputationConfig++;
  if (buildCounterStreamingComputationConfig < 3) {
    unittest.expect(o.computationId, unittest.equals('foo'));
    checkUnnamed6745(o.instructions);
    unittest.expect(o.stageName, unittest.equals('foo'));
    unittest.expect(o.systemName, unittest.equals('foo'));
    checkUnnamed6746(o.transformUserNameToStateFamily);
  }
  buildCounterStreamingComputationConfig--;
}

core.List<api.KeyRangeDataDiskAssignment> buildUnnamed6747() {
  var o = <api.KeyRangeDataDiskAssignment>[];
  o.add(buildKeyRangeDataDiskAssignment());
  o.add(buildKeyRangeDataDiskAssignment());
  return o;
}

void checkUnnamed6747(core.List<api.KeyRangeDataDiskAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyRangeDataDiskAssignment(o[0]);
  checkKeyRangeDataDiskAssignment(o[1]);
}

core.int buildCounterStreamingComputationRanges = 0;
api.StreamingComputationRanges buildStreamingComputationRanges() {
  var o = api.StreamingComputationRanges();
  buildCounterStreamingComputationRanges++;
  if (buildCounterStreamingComputationRanges < 3) {
    o.computationId = 'foo';
    o.rangeAssignments = buildUnnamed6747();
  }
  buildCounterStreamingComputationRanges--;
  return o;
}

void checkStreamingComputationRanges(api.StreamingComputationRanges o) {
  buildCounterStreamingComputationRanges++;
  if (buildCounterStreamingComputationRanges < 3) {
    unittest.expect(o.computationId, unittest.equals('foo'));
    checkUnnamed6747(o.rangeAssignments);
  }
  buildCounterStreamingComputationRanges--;
}

core.List<api.StreamingComputationRanges> buildUnnamed6748() {
  var o = <api.StreamingComputationRanges>[];
  o.add(buildStreamingComputationRanges());
  o.add(buildStreamingComputationRanges());
  return o;
}

void checkUnnamed6748(core.List<api.StreamingComputationRanges> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStreamingComputationRanges(o[0]);
  checkStreamingComputationRanges(o[1]);
}

core.List<api.MountedDataDisk> buildUnnamed6749() {
  var o = <api.MountedDataDisk>[];
  o.add(buildMountedDataDisk());
  o.add(buildMountedDataDisk());
  return o;
}

void checkUnnamed6749(core.List<api.MountedDataDisk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMountedDataDisk(o[0]);
  checkMountedDataDisk(o[1]);
}

core.int buildCounterStreamingComputationTask = 0;
api.StreamingComputationTask buildStreamingComputationTask() {
  var o = api.StreamingComputationTask();
  buildCounterStreamingComputationTask++;
  if (buildCounterStreamingComputationTask < 3) {
    o.computationRanges = buildUnnamed6748();
    o.dataDisks = buildUnnamed6749();
    o.taskType = 'foo';
  }
  buildCounterStreamingComputationTask--;
  return o;
}

void checkStreamingComputationTask(api.StreamingComputationTask o) {
  buildCounterStreamingComputationTask++;
  if (buildCounterStreamingComputationTask < 3) {
    checkUnnamed6748(o.computationRanges);
    checkUnnamed6749(o.dataDisks);
    unittest.expect(o.taskType, unittest.equals('foo'));
  }
  buildCounterStreamingComputationTask--;
}

core.List<api.StreamingComputationConfig> buildUnnamed6750() {
  var o = <api.StreamingComputationConfig>[];
  o.add(buildStreamingComputationConfig());
  o.add(buildStreamingComputationConfig());
  return o;
}

void checkUnnamed6750(core.List<api.StreamingComputationConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStreamingComputationConfig(o[0]);
  checkStreamingComputationConfig(o[1]);
}

core.Map<core.String, core.String> buildUnnamed6751() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6751(core.Map<core.String, core.String> o) {
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
    o.streamingComputationConfigs = buildUnnamed6750();
    o.userStepToStateFamilyNameMap = buildUnnamed6751();
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
    checkUnnamed6750(o.streamingComputationConfigs);
    checkUnnamed6751(o.userStepToStateFamilyNameMap);
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
    checkStreamingApplianceSnapshotConfig(o.snapshotConfig);
    checkTopologyConfig(o.streamingComputationTopology);
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

core.List<core.String> buildUnnamed6752() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6752(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStringList = 0;
api.StringList buildStringList() {
  var o = api.StringList();
  buildCounterStringList++;
  if (buildCounterStringList < 3) {
    o.elements = buildUnnamed6752();
  }
  buildCounterStringList--;
  return o;
}

void checkStringList(api.StringList o) {
  buildCounterStringList++;
  if (buildCounterStringList < 3) {
    checkUnnamed6752(o.elements);
  }
  buildCounterStringList--;
}

core.List<api.Parameter> buildUnnamed6753() {
  var o = <api.Parameter>[];
  o.add(buildParameter());
  o.add(buildParameter());
  return o;
}

void checkUnnamed6753(core.List<api.Parameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameter(o[0]);
  checkParameter(o[1]);
}

core.int buildCounterStructuredMessage = 0;
api.StructuredMessage buildStructuredMessage() {
  var o = api.StructuredMessage();
  buildCounterStructuredMessage++;
  if (buildCounterStructuredMessage < 3) {
    o.messageKey = 'foo';
    o.messageText = 'foo';
    o.parameters = buildUnnamed6753();
  }
  buildCounterStructuredMessage--;
  return o;
}

void checkStructuredMessage(api.StructuredMessage o) {
  buildCounterStructuredMessage++;
  if (buildCounterStructuredMessage < 3) {
    unittest.expect(o.messageKey, unittest.equals('foo'));
    unittest.expect(o.messageText, unittest.equals('foo'));
    checkUnnamed6753(o.parameters);
  }
  buildCounterStructuredMessage--;
}

core.List<core.String> buildUnnamed6754() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6754(core.List<core.String> o) {
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
    o.oauthScopes = buildUnnamed6754();
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
    checkUnnamed6754(o.oauthScopes);
    checkWorkerSettings(o.parallelWorkerSettings);
    unittest.expect(o.streamingWorkerMainClass, unittest.equals('foo'));
    unittest.expect(o.taskGroup, unittest.equals('foo'));
    unittest.expect(o.taskUser, unittest.equals('foo'));
    unittest.expect(o.tempStoragePrefix, unittest.equals('foo'));
    unittest.expect(o.vmId, unittest.equals('foo'));
    unittest.expect(o.workflowFileName, unittest.equals('foo'));
  }
  buildCounterTaskRunnerSettings--;
}

core.List<api.ParameterMetadata> buildUnnamed6755() {
  var o = <api.ParameterMetadata>[];
  o.add(buildParameterMetadata());
  o.add(buildParameterMetadata());
  return o;
}

void checkUnnamed6755(core.List<api.ParameterMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameterMetadata(o[0]);
  checkParameterMetadata(o[1]);
}

core.int buildCounterTemplateMetadata = 0;
api.TemplateMetadata buildTemplateMetadata() {
  var o = api.TemplateMetadata();
  buildCounterTemplateMetadata++;
  if (buildCounterTemplateMetadata < 3) {
    o.description = 'foo';
    o.name = 'foo';
    o.parameters = buildUnnamed6755();
  }
  buildCounterTemplateMetadata--;
  return o;
}

void checkTemplateMetadata(api.TemplateMetadata o) {
  buildCounterTemplateMetadata++;
  if (buildCounterTemplateMetadata < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6755(o.parameters);
  }
  buildCounterTemplateMetadata--;
}

core.Map<core.String, core.String> buildUnnamed6756() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6756(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed6757() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6757(core.List<core.String> o) {
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
    o.labels = buildUnnamed6756();
    o.projectId = 'foo';
    o.tags = buildUnnamed6757();
    o.type = 'foo';
    o.versionId = 'foo';
  }
  buildCounterTemplateVersion--;
  return o;
}

void checkTemplateVersion(api.TemplateVersion o) {
  buildCounterTemplateVersion++;
  if (buildCounterTemplateVersion < 3) {
    checkArtifact(o.artifact);
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.displayName, unittest.equals('foo'));
    checkUnnamed6756(o.labels);
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkUnnamed6757(o.tags);
    unittest.expect(o.type, unittest.equals('foo'));
    unittest.expect(o.versionId, unittest.equals('foo'));
  }
  buildCounterTemplateVersion--;
}

core.List<api.ComputationTopology> buildUnnamed6758() {
  var o = <api.ComputationTopology>[];
  o.add(buildComputationTopology());
  o.add(buildComputationTopology());
  return o;
}

void checkUnnamed6758(core.List<api.ComputationTopology> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComputationTopology(o[0]);
  checkComputationTopology(o[1]);
}

core.List<api.DataDiskAssignment> buildUnnamed6759() {
  var o = <api.DataDiskAssignment>[];
  o.add(buildDataDiskAssignment());
  o.add(buildDataDiskAssignment());
  return o;
}

void checkUnnamed6759(core.List<api.DataDiskAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataDiskAssignment(o[0]);
  checkDataDiskAssignment(o[1]);
}

core.Map<core.String, core.String> buildUnnamed6760() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6760(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterTopologyConfig = 0;
api.TopologyConfig buildTopologyConfig() {
  var o = api.TopologyConfig();
  buildCounterTopologyConfig++;
  if (buildCounterTopologyConfig < 3) {
    o.computations = buildUnnamed6758();
    o.dataDiskAssignments = buildUnnamed6759();
    o.forwardingKeyBits = 42;
    o.persistentStateVersion = 42;
    o.userStageToComputationNameMap = buildUnnamed6760();
  }
  buildCounterTopologyConfig--;
  return o;
}

void checkTopologyConfig(api.TopologyConfig o) {
  buildCounterTopologyConfig++;
  if (buildCounterTopologyConfig < 3) {
    checkUnnamed6758(o.computations);
    checkUnnamed6759(o.dataDiskAssignments);
    unittest.expect(o.forwardingKeyBits, unittest.equals(42));
    unittest.expect(o.persistentStateVersion, unittest.equals(42));
    checkUnnamed6760(o.userStageToComputationNameMap);
  }
  buildCounterTopologyConfig--;
}

core.List<api.DisplayData> buildUnnamed6761() {
  var o = <api.DisplayData>[];
  o.add(buildDisplayData());
  o.add(buildDisplayData());
  return o;
}

void checkUnnamed6761(core.List<api.DisplayData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisplayData(o[0]);
  checkDisplayData(o[1]);
}

core.List<core.String> buildUnnamed6762() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6762(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed6763() {
  var o = <core.String>[];
  o.add('foo');
  o.add('foo');
  return o;
}

void checkUnnamed6763(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTransformSummary = 0;
api.TransformSummary buildTransformSummary() {
  var o = api.TransformSummary();
  buildCounterTransformSummary++;
  if (buildCounterTransformSummary < 3) {
    o.displayData = buildUnnamed6761();
    o.id = 'foo';
    o.inputCollectionName = buildUnnamed6762();
    o.kind = 'foo';
    o.name = 'foo';
    o.outputCollectionName = buildUnnamed6763();
  }
  buildCounterTransformSummary--;
  return o;
}

void checkTransformSummary(api.TransformSummary o) {
  buildCounterTransformSummary++;
  if (buildCounterTransformSummary < 3) {
    checkUnnamed6761(o.displayData);
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed6762(o.inputCollectionName);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6763(o.outputCollectionName);
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
    checkQueryInfo(o.queryInfo);
  }
  buildCounterValidateResponse--;
}

core.List<api.Package> buildUnnamed6764() {
  var o = <api.Package>[];
  o.add(buildPackage());
  o.add(buildPackage());
  return o;
}

void checkUnnamed6764(core.List<api.Package> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPackage(o[0]);
  checkPackage(o[1]);
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
    o.packages = buildUnnamed6764();
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
    checkMapTask(o.mapTask);
    checkUnnamed6764(o.packages);
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.reportStatusInterval, unittest.equals('foo'));
    checkSeqMapTask(o.seqMapTask);
    checkShellTask(o.shellTask);
    checkSourceOperationRequest(o.sourceOperationTask);
    checkStreamingComputationTask(o.streamingComputationTask);
    checkStreamingConfigTask(o.streamingConfigTask);
    checkStreamingSetupTask(o.streamingSetupTask);
  }
  buildCounterWorkItem--;
}

core.List<api.MetricUpdate> buildUnnamed6765() {
  var o = <api.MetricUpdate>[];
  o.add(buildMetricUpdate());
  o.add(buildMetricUpdate());
  return o;
}

void checkUnnamed6765(core.List<api.MetricUpdate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricUpdate(o[0]);
  checkMetricUpdate(o[1]);
}

core.int buildCounterWorkItemDetails = 0;
api.WorkItemDetails buildWorkItemDetails() {
  var o = api.WorkItemDetails();
  buildCounterWorkItemDetails++;
  if (buildCounterWorkItemDetails < 3) {
    o.attemptId = 'foo';
    o.endTime = 'foo';
    o.metrics = buildUnnamed6765();
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
    checkUnnamed6765(o.metrics);
    checkProgressTimeseries(o.progress);
    unittest.expect(o.startTime, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.taskId, unittest.equals('foo'));
  }
  buildCounterWorkItemDetails--;
}

core.Map<core.String, core.Object> buildUnnamed6766() {
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

void checkUnnamed6766(core.Map<core.String, core.Object> o) {
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

core.List<api.MetricShortId> buildUnnamed6767() {
  var o = <api.MetricShortId>[];
  o.add(buildMetricShortId());
  o.add(buildMetricShortId());
  return o;
}

void checkUnnamed6767(core.List<api.MetricShortId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricShortId(o[0]);
  checkMetricShortId(o[1]);
}

core.int buildCounterWorkItemServiceState = 0;
api.WorkItemServiceState buildWorkItemServiceState() {
  var o = api.WorkItemServiceState();
  buildCounterWorkItemServiceState++;
  if (buildCounterWorkItemServiceState < 3) {
    o.completeWorkStatus = buildStatus();
    o.harnessData = buildUnnamed6766();
    o.hotKeyDetection = buildHotKeyDetection();
    o.leaseExpireTime = 'foo';
    o.metricShortId = buildUnnamed6767();
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
    checkStatus(o.completeWorkStatus);
    checkUnnamed6766(o.harnessData);
    checkHotKeyDetection(o.hotKeyDetection);
    unittest.expect(o.leaseExpireTime, unittest.equals('foo'));
    checkUnnamed6767(o.metricShortId);
    unittest.expect(o.nextReportIndex, unittest.equals('foo'));
    unittest.expect(o.reportStatusInterval, unittest.equals('foo'));
    checkApproximateSplitRequest(o.splitRequest);
    checkApproximateProgress(o.suggestedStopPoint);
    checkPosition(o.suggestedStopPosition);
  }
  buildCounterWorkItemServiceState--;
}

core.List<api.CounterUpdate> buildUnnamed6768() {
  var o = <api.CounterUpdate>[];
  o.add(buildCounterUpdate());
  o.add(buildCounterUpdate());
  return o;
}

void checkUnnamed6768(core.List<api.CounterUpdate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCounterUpdate(o[0]);
  checkCounterUpdate(o[1]);
}

core.List<api.Status> buildUnnamed6769() {
  var o = <api.Status>[];
  o.add(buildStatus());
  o.add(buildStatus());
  return o;
}

void checkUnnamed6769(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

core.List<api.MetricUpdate> buildUnnamed6770() {
  var o = <api.MetricUpdate>[];
  o.add(buildMetricUpdate());
  o.add(buildMetricUpdate());
  return o;
}

void checkUnnamed6770(core.List<api.MetricUpdate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricUpdate(o[0]);
  checkMetricUpdate(o[1]);
}

core.int buildCounterWorkItemStatus = 0;
api.WorkItemStatus buildWorkItemStatus() {
  var o = api.WorkItemStatus();
  buildCounterWorkItemStatus++;
  if (buildCounterWorkItemStatus < 3) {
    o.completed = true;
    o.counterUpdates = buildUnnamed6768();
    o.dynamicSourceSplit = buildDynamicSourceSplit();
    o.errors = buildUnnamed6769();
    o.metricUpdates = buildUnnamed6770();
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
    checkUnnamed6768(o.counterUpdates);
    checkDynamicSourceSplit(o.dynamicSourceSplit);
    checkUnnamed6769(o.errors);
    checkUnnamed6770(o.metricUpdates);
    checkApproximateProgress(o.progress);
    unittest.expect(o.reportIndex, unittest.equals('foo'));
    checkApproximateReportedProgress(o.reportedProgress);
    unittest.expect(o.requestedLeaseDuration, unittest.equals('foo'));
    checkSourceFork(o.sourceFork);
    checkSourceOperationResponse(o.sourceOperationResponse);
    checkPosition(o.stopPosition);
    unittest.expect(o.totalThrottlerWaitTimeSeconds, unittest.equals(42.0));
    unittest.expect(o.workItemId, unittest.equals('foo'));
  }
  buildCounterWorkItemStatus--;
}

core.List<api.WorkItemDetails> buildUnnamed6771() {
  var o = <api.WorkItemDetails>[];
  o.add(buildWorkItemDetails());
  o.add(buildWorkItemDetails());
  return o;
}

void checkUnnamed6771(core.List<api.WorkItemDetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkItemDetails(o[0]);
  checkWorkItemDetails(o[1]);
}

core.int buildCounterWorkerDetails = 0;
api.WorkerDetails buildWorkerDetails() {
  var o = api.WorkerDetails();
  buildCounterWorkerDetails++;
  if (buildCounterWorkerDetails < 3) {
    o.workItems = buildUnnamed6771();
    o.workerName = 'foo';
  }
  buildCounterWorkerDetails--;
  return o;
}

void checkWorkerDetails(api.WorkerDetails o) {
  buildCounterWorkerDetails++;
  if (buildCounterWorkerDetails < 3) {
    checkUnnamed6771(o.workItems);
    unittest.expect(o.workerName, unittest.equals('foo'));
  }
  buildCounterWorkerDetails--;
}

core.Map<core.String, core.Object> buildUnnamed6772() {
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

void checkUnnamed6772(core.Map<core.String, core.Object> o) {
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

core.List<core.Map<core.String, core.Object>> buildUnnamed6773() {
  var o = <core.Map<core.String, core.Object>>[];
  o.add(buildUnnamed6772());
  o.add(buildUnnamed6772());
  return o;
}

void checkUnnamed6773(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed6772(o[0]);
  checkUnnamed6772(o[1]);
}

core.int buildCounterWorkerHealthReport = 0;
api.WorkerHealthReport buildWorkerHealthReport() {
  var o = api.WorkerHealthReport();
  buildCounterWorkerHealthReport++;
  if (buildCounterWorkerHealthReport < 3) {
    o.msg = 'foo';
    o.pods = buildUnnamed6773();
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
    checkUnnamed6773(o.pods);
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

core.Map<core.String, core.String> buildUnnamed6774() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6774(core.Map<core.String, core.String> o) {
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
    o.metadata = buildUnnamed6774();
  }
  buildCounterWorkerLifecycleEvent--;
  return o;
}

void checkWorkerLifecycleEvent(api.WorkerLifecycleEvent o) {
  buildCounterWorkerLifecycleEvent++;
  if (buildCounterWorkerLifecycleEvent < 3) {
    unittest.expect(o.containerStartTime, unittest.equals('foo'));
    unittest.expect(o.event, unittest.equals('foo'));
    checkUnnamed6774(o.metadata);
  }
  buildCounterWorkerLifecycleEvent--;
}

core.Map<core.String, core.String> buildUnnamed6775() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6775(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.int buildCounterWorkerMessage = 0;
api.WorkerMessage buildWorkerMessage() {
  var o = api.WorkerMessage();
  buildCounterWorkerMessage++;
  if (buildCounterWorkerMessage < 3) {
    o.labels = buildUnnamed6775();
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
    checkUnnamed6775(o.labels);
    unittest.expect(o.time, unittest.equals('foo'));
    checkWorkerHealthReport(o.workerHealthReport);
    checkWorkerLifecycleEvent(o.workerLifecycleEvent);
    checkWorkerMessageCode(o.workerMessageCode);
    checkResourceUtilizationReport(o.workerMetrics);
    checkWorkerShutdownNotice(o.workerShutdownNotice);
  }
  buildCounterWorkerMessage--;
}

core.Map<core.String, core.Object> buildUnnamed6776() {
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

void checkUnnamed6776(core.Map<core.String, core.Object> o) {
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
    o.parameters = buildUnnamed6776();
  }
  buildCounterWorkerMessageCode--;
  return o;
}

void checkWorkerMessageCode(api.WorkerMessageCode o) {
  buildCounterWorkerMessageCode++;
  if (buildCounterWorkerMessageCode < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed6776(o.parameters);
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
    checkWorkerHealthReportResponse(o.workerHealthReportResponse);
    checkResourceUtilizationReportResponse(o.workerMetricsResponse);
    checkWorkerShutdownNoticeResponse(o.workerShutdownNoticeResponse);
  }
  buildCounterWorkerMessageResponse--;
}

core.List<api.Disk> buildUnnamed6777() {
  var o = <api.Disk>[];
  o.add(buildDisk());
  o.add(buildDisk());
  return o;
}

void checkUnnamed6777(core.List<api.Disk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisk(o[0]);
  checkDisk(o[1]);
}

core.Map<core.String, core.String> buildUnnamed6778() {
  var o = <core.String, core.String>{};
  o['x'] = 'foo';
  o['y'] = 'foo';
  return o;
}

void checkUnnamed6778(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x'], unittest.equals('foo'));
  unittest.expect(o['y'], unittest.equals('foo'));
}

core.List<api.Package> buildUnnamed6779() {
  var o = <api.Package>[];
  o.add(buildPackage());
  o.add(buildPackage());
  return o;
}

void checkUnnamed6779(core.List<api.Package> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPackage(o[0]);
  checkPackage(o[1]);
}

core.Map<core.String, core.Object> buildUnnamed6780() {
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

void checkUnnamed6780(core.Map<core.String, core.Object> o) {
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

core.List<api.SdkHarnessContainerImage> buildUnnamed6781() {
  var o = <api.SdkHarnessContainerImage>[];
  o.add(buildSdkHarnessContainerImage());
  o.add(buildSdkHarnessContainerImage());
  return o;
}

void checkUnnamed6781(core.List<api.SdkHarnessContainerImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSdkHarnessContainerImage(o[0]);
  checkSdkHarnessContainerImage(o[1]);
}

core.int buildCounterWorkerPool = 0;
api.WorkerPool buildWorkerPool() {
  var o = api.WorkerPool();
  buildCounterWorkerPool++;
  if (buildCounterWorkerPool < 3) {
    o.autoscalingSettings = buildAutoscalingSettings();
    o.dataDisks = buildUnnamed6777();
    o.defaultPackageSet = 'foo';
    o.diskSizeGb = 42;
    o.diskSourceImage = 'foo';
    o.diskType = 'foo';
    o.ipConfiguration = 'foo';
    o.kind = 'foo';
    o.machineType = 'foo';
    o.metadata = buildUnnamed6778();
    o.network = 'foo';
    o.numThreadsPerWorker = 42;
    o.numWorkers = 42;
    o.onHostMaintenance = 'foo';
    o.packages = buildUnnamed6779();
    o.poolArgs = buildUnnamed6780();
    o.sdkHarnessContainerImages = buildUnnamed6781();
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
    checkAutoscalingSettings(o.autoscalingSettings);
    checkUnnamed6777(o.dataDisks);
    unittest.expect(o.defaultPackageSet, unittest.equals('foo'));
    unittest.expect(o.diskSizeGb, unittest.equals(42));
    unittest.expect(o.diskSourceImage, unittest.equals('foo'));
    unittest.expect(o.diskType, unittest.equals('foo'));
    unittest.expect(o.ipConfiguration, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.machineType, unittest.equals('foo'));
    checkUnnamed6778(o.metadata);
    unittest.expect(o.network, unittest.equals('foo'));
    unittest.expect(o.numThreadsPerWorker, unittest.equals(42));
    unittest.expect(o.numWorkers, unittest.equals(42));
    unittest.expect(o.onHostMaintenance, unittest.equals('foo'));
    checkUnnamed6779(o.packages);
    checkUnnamed6780(o.poolArgs);
    checkUnnamed6781(o.sdkHarnessContainerImages);
    unittest.expect(o.subnetwork, unittest.equals('foo'));
    checkTaskRunnerSettings(o.taskrunnerSettings);
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
    checkInstructionInput(o.input);
    checkSink(o.sink);
  }
  buildCounterWriteInstruction--;
}

void main() {
  unittest.group('obj-schema-ApproximateProgress', () {
    unittest.test('to-json--from-json', () {
      var o = buildApproximateProgress();
      var od = api.ApproximateProgress.fromJson(o.toJson());
      checkApproximateProgress(od);
    });
  });

  unittest.group('obj-schema-ApproximateReportedProgress', () {
    unittest.test('to-json--from-json', () {
      var o = buildApproximateReportedProgress();
      var od = api.ApproximateReportedProgress.fromJson(o.toJson());
      checkApproximateReportedProgress(od);
    });
  });

  unittest.group('obj-schema-ApproximateSplitRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildApproximateSplitRequest();
      var od = api.ApproximateSplitRequest.fromJson(o.toJson());
      checkApproximateSplitRequest(od);
    });
  });

  unittest.group('obj-schema-Artifact', () {
    unittest.test('to-json--from-json', () {
      var o = buildArtifact();
      var od = api.Artifact.fromJson(o.toJson());
      checkArtifact(od);
    });
  });

  unittest.group('obj-schema-AutoscalingEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildAutoscalingEvent();
      var od = api.AutoscalingEvent.fromJson(o.toJson());
      checkAutoscalingEvent(od);
    });
  });

  unittest.group('obj-schema-AutoscalingSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildAutoscalingSettings();
      var od = api.AutoscalingSettings.fromJson(o.toJson());
      checkAutoscalingSettings(od);
    });
  });

  unittest.group('obj-schema-BigQueryIODetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildBigQueryIODetails();
      var od = api.BigQueryIODetails.fromJson(o.toJson());
      checkBigQueryIODetails(od);
    });
  });

  unittest.group('obj-schema-BigTableIODetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildBigTableIODetails();
      var od = api.BigTableIODetails.fromJson(o.toJson());
      checkBigTableIODetails(od);
    });
  });

  unittest.group('obj-schema-CPUTime', () {
    unittest.test('to-json--from-json', () {
      var o = buildCPUTime();
      var od = api.CPUTime.fromJson(o.toJson());
      checkCPUTime(od);
    });
  });

  unittest.group('obj-schema-CommitTemplateVersionRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCommitTemplateVersionRequest();
      var od = api.CommitTemplateVersionRequest.fromJson(o.toJson());
      checkCommitTemplateVersionRequest(od);
    });
  });

  unittest.group('obj-schema-ComponentSource', () {
    unittest.test('to-json--from-json', () {
      var o = buildComponentSource();
      var od = api.ComponentSource.fromJson(o.toJson());
      checkComponentSource(od);
    });
  });

  unittest.group('obj-schema-ComponentTransform', () {
    unittest.test('to-json--from-json', () {
      var o = buildComponentTransform();
      var od = api.ComponentTransform.fromJson(o.toJson());
      checkComponentTransform(od);
    });
  });

  unittest.group('obj-schema-ComputationTopology', () {
    unittest.test('to-json--from-json', () {
      var o = buildComputationTopology();
      var od = api.ComputationTopology.fromJson(o.toJson());
      checkComputationTopology(od);
    });
  });

  unittest.group('obj-schema-ConcatPosition', () {
    unittest.test('to-json--from-json', () {
      var o = buildConcatPosition();
      var od = api.ConcatPosition.fromJson(o.toJson());
      checkConcatPosition(od);
    });
  });

  unittest.group('obj-schema-ContainerSpec', () {
    unittest.test('to-json--from-json', () {
      var o = buildContainerSpec();
      var od = api.ContainerSpec.fromJson(o.toJson());
      checkContainerSpec(od);
    });
  });

  unittest.group('obj-schema-CounterMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildCounterMetadata();
      var od = api.CounterMetadata.fromJson(o.toJson());
      checkCounterMetadata(od);
    });
  });

  unittest.group('obj-schema-CounterStructuredName', () {
    unittest.test('to-json--from-json', () {
      var o = buildCounterStructuredName();
      var od = api.CounterStructuredName.fromJson(o.toJson());
      checkCounterStructuredName(od);
    });
  });

  unittest.group('obj-schema-CounterStructuredNameAndMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildCounterStructuredNameAndMetadata();
      var od = api.CounterStructuredNameAndMetadata.fromJson(o.toJson());
      checkCounterStructuredNameAndMetadata(od);
    });
  });

  unittest.group('obj-schema-CounterUpdate', () {
    unittest.test('to-json--from-json', () {
      var o = buildCounterUpdate();
      var od = api.CounterUpdate.fromJson(o.toJson());
      checkCounterUpdate(od);
    });
  });

  unittest.group('obj-schema-CreateJobFromTemplateRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateJobFromTemplateRequest();
      var od = api.CreateJobFromTemplateRequest.fromJson(o.toJson());
      checkCreateJobFromTemplateRequest(od);
    });
  });

  unittest.group('obj-schema-CreateTemplateVersionRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildCreateTemplateVersionRequest();
      var od = api.CreateTemplateVersionRequest.fromJson(o.toJson());
      checkCreateTemplateVersionRequest(od);
    });
  });

  unittest.group('obj-schema-CustomSourceLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildCustomSourceLocation();
      var od = api.CustomSourceLocation.fromJson(o.toJson());
      checkCustomSourceLocation(od);
    });
  });

  unittest.group('obj-schema-DataDiskAssignment', () {
    unittest.test('to-json--from-json', () {
      var o = buildDataDiskAssignment();
      var od = api.DataDiskAssignment.fromJson(o.toJson());
      checkDataDiskAssignment(od);
    });
  });

  unittest.group('obj-schema-DatastoreIODetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildDatastoreIODetails();
      var od = api.DatastoreIODetails.fromJson(o.toJson());
      checkDatastoreIODetails(od);
    });
  });

  unittest.group('obj-schema-DeleteSnapshotResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildDeleteSnapshotResponse();
      var od = api.DeleteSnapshotResponse.fromJson(o.toJson());
      checkDeleteSnapshotResponse(od);
    });
  });

  unittest.group('obj-schema-DerivedSource', () {
    unittest.test('to-json--from-json', () {
      var o = buildDerivedSource();
      var od = api.DerivedSource.fromJson(o.toJson());
      checkDerivedSource(od);
    });
  });

  unittest.group('obj-schema-Disk', () {
    unittest.test('to-json--from-json', () {
      var o = buildDisk();
      var od = api.Disk.fromJson(o.toJson());
      checkDisk(od);
    });
  });

  unittest.group('obj-schema-DisplayData', () {
    unittest.test('to-json--from-json', () {
      var o = buildDisplayData();
      var od = api.DisplayData.fromJson(o.toJson());
      checkDisplayData(od);
    });
  });

  unittest.group('obj-schema-DistributionUpdate', () {
    unittest.test('to-json--from-json', () {
      var o = buildDistributionUpdate();
      var od = api.DistributionUpdate.fromJson(o.toJson());
      checkDistributionUpdate(od);
    });
  });

  unittest.group('obj-schema-DynamicSourceSplit', () {
    unittest.test('to-json--from-json', () {
      var o = buildDynamicSourceSplit();
      var od = api.DynamicSourceSplit.fromJson(o.toJson());
      checkDynamicSourceSplit(od);
    });
  });

  unittest.group('obj-schema-Empty', () {
    unittest.test('to-json--from-json', () {
      var o = buildEmpty();
      var od = api.Empty.fromJson(o.toJson());
      checkEmpty(od);
    });
  });

  unittest.group('obj-schema-Environment', () {
    unittest.test('to-json--from-json', () {
      var o = buildEnvironment();
      var od = api.Environment.fromJson(o.toJson());
      checkEnvironment(od);
    });
  });

  unittest.group('obj-schema-ExecutionStageState', () {
    unittest.test('to-json--from-json', () {
      var o = buildExecutionStageState();
      var od = api.ExecutionStageState.fromJson(o.toJson());
      checkExecutionStageState(od);
    });
  });

  unittest.group('obj-schema-ExecutionStageSummary', () {
    unittest.test('to-json--from-json', () {
      var o = buildExecutionStageSummary();
      var od = api.ExecutionStageSummary.fromJson(o.toJson());
      checkExecutionStageSummary(od);
    });
  });

  unittest.group('obj-schema-FailedLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildFailedLocation();
      var od = api.FailedLocation.fromJson(o.toJson());
      checkFailedLocation(od);
    });
  });

  unittest.group('obj-schema-FileIODetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildFileIODetails();
      var od = api.FileIODetails.fromJson(o.toJson());
      checkFileIODetails(od);
    });
  });

  unittest.group('obj-schema-FlattenInstruction', () {
    unittest.test('to-json--from-json', () {
      var o = buildFlattenInstruction();
      var od = api.FlattenInstruction.fromJson(o.toJson());
      checkFlattenInstruction(od);
    });
  });

  unittest.group('obj-schema-FlexTemplateRuntimeEnvironment', () {
    unittest.test('to-json--from-json', () {
      var o = buildFlexTemplateRuntimeEnvironment();
      var od = api.FlexTemplateRuntimeEnvironment.fromJson(o.toJson());
      checkFlexTemplateRuntimeEnvironment(od);
    });
  });

  unittest.group('obj-schema-FloatingPointList', () {
    unittest.test('to-json--from-json', () {
      var o = buildFloatingPointList();
      var od = api.FloatingPointList.fromJson(o.toJson());
      checkFloatingPointList(od);
    });
  });

  unittest.group('obj-schema-FloatingPointMean', () {
    unittest.test('to-json--from-json', () {
      var o = buildFloatingPointMean();
      var od = api.FloatingPointMean.fromJson(o.toJson());
      checkFloatingPointMean(od);
    });
  });

  unittest.group('obj-schema-GetDebugConfigRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildGetDebugConfigRequest();
      var od = api.GetDebugConfigRequest.fromJson(o.toJson());
      checkGetDebugConfigRequest(od);
    });
  });

  unittest.group('obj-schema-GetDebugConfigResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGetDebugConfigResponse();
      var od = api.GetDebugConfigResponse.fromJson(o.toJson());
      checkGetDebugConfigResponse(od);
    });
  });

  unittest.group('obj-schema-GetTemplateResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildGetTemplateResponse();
      var od = api.GetTemplateResponse.fromJson(o.toJson());
      checkGetTemplateResponse(od);
    });
  });

  unittest.group('obj-schema-Histogram', () {
    unittest.test('to-json--from-json', () {
      var o = buildHistogram();
      var od = api.Histogram.fromJson(o.toJson());
      checkHistogram(od);
    });
  });

  unittest.group('obj-schema-HotKeyDetection', () {
    unittest.test('to-json--from-json', () {
      var o = buildHotKeyDetection();
      var od = api.HotKeyDetection.fromJson(o.toJson());
      checkHotKeyDetection(od);
    });
  });

  unittest.group('obj-schema-InstructionInput', () {
    unittest.test('to-json--from-json', () {
      var o = buildInstructionInput();
      var od = api.InstructionInput.fromJson(o.toJson());
      checkInstructionInput(od);
    });
  });

  unittest.group('obj-schema-InstructionOutput', () {
    unittest.test('to-json--from-json', () {
      var o = buildInstructionOutput();
      var od = api.InstructionOutput.fromJson(o.toJson());
      checkInstructionOutput(od);
    });
  });

  unittest.group('obj-schema-IntegerGauge', () {
    unittest.test('to-json--from-json', () {
      var o = buildIntegerGauge();
      var od = api.IntegerGauge.fromJson(o.toJson());
      checkIntegerGauge(od);
    });
  });

  unittest.group('obj-schema-IntegerList', () {
    unittest.test('to-json--from-json', () {
      var o = buildIntegerList();
      var od = api.IntegerList.fromJson(o.toJson());
      checkIntegerList(od);
    });
  });

  unittest.group('obj-schema-IntegerMean', () {
    unittest.test('to-json--from-json', () {
      var o = buildIntegerMean();
      var od = api.IntegerMean.fromJson(o.toJson());
      checkIntegerMean(od);
    });
  });

  unittest.group('obj-schema-Job', () {
    unittest.test('to-json--from-json', () {
      var o = buildJob();
      var od = api.Job.fromJson(o.toJson());
      checkJob(od);
    });
  });

  unittest.group('obj-schema-JobExecutionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildJobExecutionDetails();
      var od = api.JobExecutionDetails.fromJson(o.toJson());
      checkJobExecutionDetails(od);
    });
  });

  unittest.group('obj-schema-JobExecutionInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildJobExecutionInfo();
      var od = api.JobExecutionInfo.fromJson(o.toJson());
      checkJobExecutionInfo(od);
    });
  });

  unittest.group('obj-schema-JobExecutionStageInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildJobExecutionStageInfo();
      var od = api.JobExecutionStageInfo.fromJson(o.toJson());
      checkJobExecutionStageInfo(od);
    });
  });

  unittest.group('obj-schema-JobMessage', () {
    unittest.test('to-json--from-json', () {
      var o = buildJobMessage();
      var od = api.JobMessage.fromJson(o.toJson());
      checkJobMessage(od);
    });
  });

  unittest.group('obj-schema-JobMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildJobMetadata();
      var od = api.JobMetadata.fromJson(o.toJson());
      checkJobMetadata(od);
    });
  });

  unittest.group('obj-schema-JobMetrics', () {
    unittest.test('to-json--from-json', () {
      var o = buildJobMetrics();
      var od = api.JobMetrics.fromJson(o.toJson());
      checkJobMetrics(od);
    });
  });

  unittest.group('obj-schema-KeyRangeDataDiskAssignment', () {
    unittest.test('to-json--from-json', () {
      var o = buildKeyRangeDataDiskAssignment();
      var od = api.KeyRangeDataDiskAssignment.fromJson(o.toJson());
      checkKeyRangeDataDiskAssignment(od);
    });
  });

  unittest.group('obj-schema-KeyRangeLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildKeyRangeLocation();
      var od = api.KeyRangeLocation.fromJson(o.toJson());
      checkKeyRangeLocation(od);
    });
  });

  unittest.group('obj-schema-LaunchFlexTemplateParameter', () {
    unittest.test('to-json--from-json', () {
      var o = buildLaunchFlexTemplateParameter();
      var od = api.LaunchFlexTemplateParameter.fromJson(o.toJson());
      checkLaunchFlexTemplateParameter(od);
    });
  });

  unittest.group('obj-schema-LaunchFlexTemplateRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildLaunchFlexTemplateRequest();
      var od = api.LaunchFlexTemplateRequest.fromJson(o.toJson());
      checkLaunchFlexTemplateRequest(od);
    });
  });

  unittest.group('obj-schema-LaunchFlexTemplateResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLaunchFlexTemplateResponse();
      var od = api.LaunchFlexTemplateResponse.fromJson(o.toJson());
      checkLaunchFlexTemplateResponse(od);
    });
  });

  unittest.group('obj-schema-LaunchTemplateParameters', () {
    unittest.test('to-json--from-json', () {
      var o = buildLaunchTemplateParameters();
      var od = api.LaunchTemplateParameters.fromJson(o.toJson());
      checkLaunchTemplateParameters(od);
    });
  });

  unittest.group('obj-schema-LaunchTemplateResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLaunchTemplateResponse();
      var od = api.LaunchTemplateResponse.fromJson(o.toJson());
      checkLaunchTemplateResponse(od);
    });
  });

  unittest.group('obj-schema-LeaseWorkItemRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildLeaseWorkItemRequest();
      var od = api.LeaseWorkItemRequest.fromJson(o.toJson());
      checkLeaseWorkItemRequest(od);
    });
  });

  unittest.group('obj-schema-LeaseWorkItemResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildLeaseWorkItemResponse();
      var od = api.LeaseWorkItemResponse.fromJson(o.toJson());
      checkLeaseWorkItemResponse(od);
    });
  });

  unittest.group('obj-schema-ListJobMessagesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListJobMessagesResponse();
      var od = api.ListJobMessagesResponse.fromJson(o.toJson());
      checkListJobMessagesResponse(od);
    });
  });

  unittest.group('obj-schema-ListJobsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListJobsResponse();
      var od = api.ListJobsResponse.fromJson(o.toJson());
      checkListJobsResponse(od);
    });
  });

  unittest.group('obj-schema-ListSnapshotsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListSnapshotsResponse();
      var od = api.ListSnapshotsResponse.fromJson(o.toJson());
      checkListSnapshotsResponse(od);
    });
  });

  unittest.group('obj-schema-ListTemplateVersionsResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildListTemplateVersionsResponse();
      var od = api.ListTemplateVersionsResponse.fromJson(o.toJson());
      checkListTemplateVersionsResponse(od);
    });
  });

  unittest.group('obj-schema-MapTask', () {
    unittest.test('to-json--from-json', () {
      var o = buildMapTask();
      var od = api.MapTask.fromJson(o.toJson());
      checkMapTask(od);
    });
  });

  unittest.group('obj-schema-MemInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildMemInfo();
      var od = api.MemInfo.fromJson(o.toJson());
      checkMemInfo(od);
    });
  });

  unittest.group('obj-schema-MetricShortId', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetricShortId();
      var od = api.MetricShortId.fromJson(o.toJson());
      checkMetricShortId(od);
    });
  });

  unittest.group('obj-schema-MetricStructuredName', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetricStructuredName();
      var od = api.MetricStructuredName.fromJson(o.toJson());
      checkMetricStructuredName(od);
    });
  });

  unittest.group('obj-schema-MetricUpdate', () {
    unittest.test('to-json--from-json', () {
      var o = buildMetricUpdate();
      var od = api.MetricUpdate.fromJson(o.toJson());
      checkMetricUpdate(od);
    });
  });

  unittest.group('obj-schema-ModifyTemplateVersionLabelRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildModifyTemplateVersionLabelRequest();
      var od = api.ModifyTemplateVersionLabelRequest.fromJson(o.toJson());
      checkModifyTemplateVersionLabelRequest(od);
    });
  });

  unittest.group('obj-schema-ModifyTemplateVersionLabelResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildModifyTemplateVersionLabelResponse();
      var od = api.ModifyTemplateVersionLabelResponse.fromJson(o.toJson());
      checkModifyTemplateVersionLabelResponse(od);
    });
  });

  unittest.group('obj-schema-ModifyTemplateVersionTagRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildModifyTemplateVersionTagRequest();
      var od = api.ModifyTemplateVersionTagRequest.fromJson(o.toJson());
      checkModifyTemplateVersionTagRequest(od);
    });
  });

  unittest.group('obj-schema-ModifyTemplateVersionTagResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildModifyTemplateVersionTagResponse();
      var od = api.ModifyTemplateVersionTagResponse.fromJson(o.toJson());
      checkModifyTemplateVersionTagResponse(od);
    });
  });

  unittest.group('obj-schema-MountedDataDisk', () {
    unittest.test('to-json--from-json', () {
      var o = buildMountedDataDisk();
      var od = api.MountedDataDisk.fromJson(o.toJson());
      checkMountedDataDisk(od);
    });
  });

  unittest.group('obj-schema-MultiOutputInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildMultiOutputInfo();
      var od = api.MultiOutputInfo.fromJson(o.toJson());
      checkMultiOutputInfo(od);
    });
  });

  unittest.group('obj-schema-NameAndKind', () {
    unittest.test('to-json--from-json', () {
      var o = buildNameAndKind();
      var od = api.NameAndKind.fromJson(o.toJson());
      checkNameAndKind(od);
    });
  });

  unittest.group('obj-schema-Package', () {
    unittest.test('to-json--from-json', () {
      var o = buildPackage();
      var od = api.Package.fromJson(o.toJson());
      checkPackage(od);
    });
  });

  unittest.group('obj-schema-ParDoInstruction', () {
    unittest.test('to-json--from-json', () {
      var o = buildParDoInstruction();
      var od = api.ParDoInstruction.fromJson(o.toJson());
      checkParDoInstruction(od);
    });
  });

  unittest.group('obj-schema-ParallelInstruction', () {
    unittest.test('to-json--from-json', () {
      var o = buildParallelInstruction();
      var od = api.ParallelInstruction.fromJson(o.toJson());
      checkParallelInstruction(od);
    });
  });

  unittest.group('obj-schema-Parameter', () {
    unittest.test('to-json--from-json', () {
      var o = buildParameter();
      var od = api.Parameter.fromJson(o.toJson());
      checkParameter(od);
    });
  });

  unittest.group('obj-schema-ParameterMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildParameterMetadata();
      var od = api.ParameterMetadata.fromJson(o.toJson());
      checkParameterMetadata(od);
    });
  });

  unittest.group('obj-schema-PartialGroupByKeyInstruction', () {
    unittest.test('to-json--from-json', () {
      var o = buildPartialGroupByKeyInstruction();
      var od = api.PartialGroupByKeyInstruction.fromJson(o.toJson());
      checkPartialGroupByKeyInstruction(od);
    });
  });

  unittest.group('obj-schema-PipelineDescription', () {
    unittest.test('to-json--from-json', () {
      var o = buildPipelineDescription();
      var od = api.PipelineDescription.fromJson(o.toJson());
      checkPipelineDescription(od);
    });
  });

  unittest.group('obj-schema-Point', () {
    unittest.test('to-json--from-json', () {
      var o = buildPoint();
      var od = api.Point.fromJson(o.toJson());
      checkPoint(od);
    });
  });

  unittest.group('obj-schema-Position', () {
    unittest.test('to-json--from-json', () {
      var o = buildPosition();
      var od = api.Position.fromJson(o.toJson());
      checkPosition(od);
    });
  });

  unittest.group('obj-schema-ProgressTimeseries', () {
    unittest.test('to-json--from-json', () {
      var o = buildProgressTimeseries();
      var od = api.ProgressTimeseries.fromJson(o.toJson());
      checkProgressTimeseries(od);
    });
  });

  unittest.group('obj-schema-PubSubIODetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildPubSubIODetails();
      var od = api.PubSubIODetails.fromJson(o.toJson());
      checkPubSubIODetails(od);
    });
  });

  unittest.group('obj-schema-PubsubLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildPubsubLocation();
      var od = api.PubsubLocation.fromJson(o.toJson());
      checkPubsubLocation(od);
    });
  });

  unittest.group('obj-schema-PubsubSnapshotMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildPubsubSnapshotMetadata();
      var od = api.PubsubSnapshotMetadata.fromJson(o.toJson());
      checkPubsubSnapshotMetadata(od);
    });
  });

  unittest.group('obj-schema-QueryInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildQueryInfo();
      var od = api.QueryInfo.fromJson(o.toJson());
      checkQueryInfo(od);
    });
  });

  unittest.group('obj-schema-ReadInstruction', () {
    unittest.test('to-json--from-json', () {
      var o = buildReadInstruction();
      var od = api.ReadInstruction.fromJson(o.toJson());
      checkReadInstruction(od);
    });
  });

  unittest.group('obj-schema-ReportWorkItemStatusRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportWorkItemStatusRequest();
      var od = api.ReportWorkItemStatusRequest.fromJson(o.toJson());
      checkReportWorkItemStatusRequest(od);
    });
  });

  unittest.group('obj-schema-ReportWorkItemStatusResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportWorkItemStatusResponse();
      var od = api.ReportWorkItemStatusResponse.fromJson(o.toJson());
      checkReportWorkItemStatusResponse(od);
    });
  });

  unittest.group('obj-schema-ReportedParallelism', () {
    unittest.test('to-json--from-json', () {
      var o = buildReportedParallelism();
      var od = api.ReportedParallelism.fromJson(o.toJson());
      checkReportedParallelism(od);
    });
  });

  unittest.group('obj-schema-ResourceUtilizationReport', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceUtilizationReport();
      var od = api.ResourceUtilizationReport.fromJson(o.toJson());
      checkResourceUtilizationReport(od);
    });
  });

  unittest.group('obj-schema-ResourceUtilizationReportResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildResourceUtilizationReportResponse();
      var od = api.ResourceUtilizationReportResponse.fromJson(o.toJson());
      checkResourceUtilizationReportResponse(od);
    });
  });

  unittest.group('obj-schema-RuntimeEnvironment', () {
    unittest.test('to-json--from-json', () {
      var o = buildRuntimeEnvironment();
      var od = api.RuntimeEnvironment.fromJson(o.toJson());
      checkRuntimeEnvironment(od);
    });
  });

  unittest.group('obj-schema-RuntimeMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildRuntimeMetadata();
      var od = api.RuntimeMetadata.fromJson(o.toJson());
      checkRuntimeMetadata(od);
    });
  });

  unittest.group('obj-schema-SDKInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildSDKInfo();
      var od = api.SDKInfo.fromJson(o.toJson());
      checkSDKInfo(od);
    });
  });

  unittest.group('obj-schema-SdkHarnessContainerImage', () {
    unittest.test('to-json--from-json', () {
      var o = buildSdkHarnessContainerImage();
      var od = api.SdkHarnessContainerImage.fromJson(o.toJson());
      checkSdkHarnessContainerImage(od);
    });
  });

  unittest.group('obj-schema-SdkVersion', () {
    unittest.test('to-json--from-json', () {
      var o = buildSdkVersion();
      var od = api.SdkVersion.fromJson(o.toJson());
      checkSdkVersion(od);
    });
  });

  unittest.group('obj-schema-SendDebugCaptureRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSendDebugCaptureRequest();
      var od = api.SendDebugCaptureRequest.fromJson(o.toJson());
      checkSendDebugCaptureRequest(od);
    });
  });

  unittest.group('obj-schema-SendDebugCaptureResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSendDebugCaptureResponse();
      var od = api.SendDebugCaptureResponse.fromJson(o.toJson());
      checkSendDebugCaptureResponse(od);
    });
  });

  unittest.group('obj-schema-SendWorkerMessagesRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSendWorkerMessagesRequest();
      var od = api.SendWorkerMessagesRequest.fromJson(o.toJson());
      checkSendWorkerMessagesRequest(od);
    });
  });

  unittest.group('obj-schema-SendWorkerMessagesResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSendWorkerMessagesResponse();
      var od = api.SendWorkerMessagesResponse.fromJson(o.toJson());
      checkSendWorkerMessagesResponse(od);
    });
  });

  unittest.group('obj-schema-SeqMapTask', () {
    unittest.test('to-json--from-json', () {
      var o = buildSeqMapTask();
      var od = api.SeqMapTask.fromJson(o.toJson());
      checkSeqMapTask(od);
    });
  });

  unittest.group('obj-schema-SeqMapTaskOutputInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildSeqMapTaskOutputInfo();
      var od = api.SeqMapTaskOutputInfo.fromJson(o.toJson());
      checkSeqMapTaskOutputInfo(od);
    });
  });

  unittest.group('obj-schema-ShellTask', () {
    unittest.test('to-json--from-json', () {
      var o = buildShellTask();
      var od = api.ShellTask.fromJson(o.toJson());
      checkShellTask(od);
    });
  });

  unittest.group('obj-schema-SideInputInfo', () {
    unittest.test('to-json--from-json', () {
      var o = buildSideInputInfo();
      var od = api.SideInputInfo.fromJson(o.toJson());
      checkSideInputInfo(od);
    });
  });

  unittest.group('obj-schema-Sink', () {
    unittest.test('to-json--from-json', () {
      var o = buildSink();
      var od = api.Sink.fromJson(o.toJson());
      checkSink(od);
    });
  });

  unittest.group('obj-schema-Snapshot', () {
    unittest.test('to-json--from-json', () {
      var o = buildSnapshot();
      var od = api.Snapshot.fromJson(o.toJson());
      checkSnapshot(od);
    });
  });

  unittest.group('obj-schema-SnapshotJobRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSnapshotJobRequest();
      var od = api.SnapshotJobRequest.fromJson(o.toJson());
      checkSnapshotJobRequest(od);
    });
  });

  unittest.group('obj-schema-Source', () {
    unittest.test('to-json--from-json', () {
      var o = buildSource();
      var od = api.Source.fromJson(o.toJson());
      checkSource(od);
    });
  });

  unittest.group('obj-schema-SourceFork', () {
    unittest.test('to-json--from-json', () {
      var o = buildSourceFork();
      var od = api.SourceFork.fromJson(o.toJson());
      checkSourceFork(od);
    });
  });

  unittest.group('obj-schema-SourceGetMetadataRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSourceGetMetadataRequest();
      var od = api.SourceGetMetadataRequest.fromJson(o.toJson());
      checkSourceGetMetadataRequest(od);
    });
  });

  unittest.group('obj-schema-SourceGetMetadataResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSourceGetMetadataResponse();
      var od = api.SourceGetMetadataResponse.fromJson(o.toJson());
      checkSourceGetMetadataResponse(od);
    });
  });

  unittest.group('obj-schema-SourceMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildSourceMetadata();
      var od = api.SourceMetadata.fromJson(o.toJson());
      checkSourceMetadata(od);
    });
  });

  unittest.group('obj-schema-SourceOperationRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSourceOperationRequest();
      var od = api.SourceOperationRequest.fromJson(o.toJson());
      checkSourceOperationRequest(od);
    });
  });

  unittest.group('obj-schema-SourceOperationResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSourceOperationResponse();
      var od = api.SourceOperationResponse.fromJson(o.toJson());
      checkSourceOperationResponse(od);
    });
  });

  unittest.group('obj-schema-SourceSplitOptions', () {
    unittest.test('to-json--from-json', () {
      var o = buildSourceSplitOptions();
      var od = api.SourceSplitOptions.fromJson(o.toJson());
      checkSourceSplitOptions(od);
    });
  });

  unittest.group('obj-schema-SourceSplitRequest', () {
    unittest.test('to-json--from-json', () {
      var o = buildSourceSplitRequest();
      var od = api.SourceSplitRequest.fromJson(o.toJson());
      checkSourceSplitRequest(od);
    });
  });

  unittest.group('obj-schema-SourceSplitResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildSourceSplitResponse();
      var od = api.SourceSplitResponse.fromJson(o.toJson());
      checkSourceSplitResponse(od);
    });
  });

  unittest.group('obj-schema-SourceSplitShard', () {
    unittest.test('to-json--from-json', () {
      var o = buildSourceSplitShard();
      var od = api.SourceSplitShard.fromJson(o.toJson());
      checkSourceSplitShard(od);
    });
  });

  unittest.group('obj-schema-SpannerIODetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildSpannerIODetails();
      var od = api.SpannerIODetails.fromJson(o.toJson());
      checkSpannerIODetails(od);
    });
  });

  unittest.group('obj-schema-SplitInt64', () {
    unittest.test('to-json--from-json', () {
      var o = buildSplitInt64();
      var od = api.SplitInt64.fromJson(o.toJson());
      checkSplitInt64(od);
    });
  });

  unittest.group('obj-schema-StageExecutionDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildStageExecutionDetails();
      var od = api.StageExecutionDetails.fromJson(o.toJson());
      checkStageExecutionDetails(od);
    });
  });

  unittest.group('obj-schema-StageSource', () {
    unittest.test('to-json--from-json', () {
      var o = buildStageSource();
      var od = api.StageSource.fromJson(o.toJson());
      checkStageSource(od);
    });
  });

  unittest.group('obj-schema-StageSummary', () {
    unittest.test('to-json--from-json', () {
      var o = buildStageSummary();
      var od = api.StageSummary.fromJson(o.toJson());
      checkStageSummary(od);
    });
  });

  unittest.group('obj-schema-StateFamilyConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildStateFamilyConfig();
      var od = api.StateFamilyConfig.fromJson(o.toJson());
      checkStateFamilyConfig(od);
    });
  });

  unittest.group('obj-schema-Status', () {
    unittest.test('to-json--from-json', () {
      var o = buildStatus();
      var od = api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group('obj-schema-Step', () {
    unittest.test('to-json--from-json', () {
      var o = buildStep();
      var od = api.Step.fromJson(o.toJson());
      checkStep(od);
    });
  });

  unittest.group('obj-schema-StreamLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildStreamLocation();
      var od = api.StreamLocation.fromJson(o.toJson());
      checkStreamLocation(od);
    });
  });

  unittest.group('obj-schema-StreamingApplianceSnapshotConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildStreamingApplianceSnapshotConfig();
      var od = api.StreamingApplianceSnapshotConfig.fromJson(o.toJson());
      checkStreamingApplianceSnapshotConfig(od);
    });
  });

  unittest.group('obj-schema-StreamingComputationConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildStreamingComputationConfig();
      var od = api.StreamingComputationConfig.fromJson(o.toJson());
      checkStreamingComputationConfig(od);
    });
  });

  unittest.group('obj-schema-StreamingComputationRanges', () {
    unittest.test('to-json--from-json', () {
      var o = buildStreamingComputationRanges();
      var od = api.StreamingComputationRanges.fromJson(o.toJson());
      checkStreamingComputationRanges(od);
    });
  });

  unittest.group('obj-schema-StreamingComputationTask', () {
    unittest.test('to-json--from-json', () {
      var o = buildStreamingComputationTask();
      var od = api.StreamingComputationTask.fromJson(o.toJson());
      checkStreamingComputationTask(od);
    });
  });

  unittest.group('obj-schema-StreamingConfigTask', () {
    unittest.test('to-json--from-json', () {
      var o = buildStreamingConfigTask();
      var od = api.StreamingConfigTask.fromJson(o.toJson());
      checkStreamingConfigTask(od);
    });
  });

  unittest.group('obj-schema-StreamingSetupTask', () {
    unittest.test('to-json--from-json', () {
      var o = buildStreamingSetupTask();
      var od = api.StreamingSetupTask.fromJson(o.toJson());
      checkStreamingSetupTask(od);
    });
  });

  unittest.group('obj-schema-StreamingSideInputLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildStreamingSideInputLocation();
      var od = api.StreamingSideInputLocation.fromJson(o.toJson());
      checkStreamingSideInputLocation(od);
    });
  });

  unittest.group('obj-schema-StreamingStageLocation', () {
    unittest.test('to-json--from-json', () {
      var o = buildStreamingStageLocation();
      var od = api.StreamingStageLocation.fromJson(o.toJson());
      checkStreamingStageLocation(od);
    });
  });

  unittest.group('obj-schema-StringList', () {
    unittest.test('to-json--from-json', () {
      var o = buildStringList();
      var od = api.StringList.fromJson(o.toJson());
      checkStringList(od);
    });
  });

  unittest.group('obj-schema-StructuredMessage', () {
    unittest.test('to-json--from-json', () {
      var o = buildStructuredMessage();
      var od = api.StructuredMessage.fromJson(o.toJson());
      checkStructuredMessage(od);
    });
  });

  unittest.group('obj-schema-TaskRunnerSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildTaskRunnerSettings();
      var od = api.TaskRunnerSettings.fromJson(o.toJson());
      checkTaskRunnerSettings(od);
    });
  });

  unittest.group('obj-schema-TemplateMetadata', () {
    unittest.test('to-json--from-json', () {
      var o = buildTemplateMetadata();
      var od = api.TemplateMetadata.fromJson(o.toJson());
      checkTemplateMetadata(od);
    });
  });

  unittest.group('obj-schema-TemplateVersion', () {
    unittest.test('to-json--from-json', () {
      var o = buildTemplateVersion();
      var od = api.TemplateVersion.fromJson(o.toJson());
      checkTemplateVersion(od);
    });
  });

  unittest.group('obj-schema-TopologyConfig', () {
    unittest.test('to-json--from-json', () {
      var o = buildTopologyConfig();
      var od = api.TopologyConfig.fromJson(o.toJson());
      checkTopologyConfig(od);
    });
  });

  unittest.group('obj-schema-TransformSummary', () {
    unittest.test('to-json--from-json', () {
      var o = buildTransformSummary();
      var od = api.TransformSummary.fromJson(o.toJson());
      checkTransformSummary(od);
    });
  });

  unittest.group('obj-schema-ValidateResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildValidateResponse();
      var od = api.ValidateResponse.fromJson(o.toJson());
      checkValidateResponse(od);
    });
  });

  unittest.group('obj-schema-WorkItem', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkItem();
      var od = api.WorkItem.fromJson(o.toJson());
      checkWorkItem(od);
    });
  });

  unittest.group('obj-schema-WorkItemDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkItemDetails();
      var od = api.WorkItemDetails.fromJson(o.toJson());
      checkWorkItemDetails(od);
    });
  });

  unittest.group('obj-schema-WorkItemServiceState', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkItemServiceState();
      var od = api.WorkItemServiceState.fromJson(o.toJson());
      checkWorkItemServiceState(od);
    });
  });

  unittest.group('obj-schema-WorkItemStatus', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkItemStatus();
      var od = api.WorkItemStatus.fromJson(o.toJson());
      checkWorkItemStatus(od);
    });
  });

  unittest.group('obj-schema-WorkerDetails', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkerDetails();
      var od = api.WorkerDetails.fromJson(o.toJson());
      checkWorkerDetails(od);
    });
  });

  unittest.group('obj-schema-WorkerHealthReport', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkerHealthReport();
      var od = api.WorkerHealthReport.fromJson(o.toJson());
      checkWorkerHealthReport(od);
    });
  });

  unittest.group('obj-schema-WorkerHealthReportResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkerHealthReportResponse();
      var od = api.WorkerHealthReportResponse.fromJson(o.toJson());
      checkWorkerHealthReportResponse(od);
    });
  });

  unittest.group('obj-schema-WorkerLifecycleEvent', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkerLifecycleEvent();
      var od = api.WorkerLifecycleEvent.fromJson(o.toJson());
      checkWorkerLifecycleEvent(od);
    });
  });

  unittest.group('obj-schema-WorkerMessage', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkerMessage();
      var od = api.WorkerMessage.fromJson(o.toJson());
      checkWorkerMessage(od);
    });
  });

  unittest.group('obj-schema-WorkerMessageCode', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkerMessageCode();
      var od = api.WorkerMessageCode.fromJson(o.toJson());
      checkWorkerMessageCode(od);
    });
  });

  unittest.group('obj-schema-WorkerMessageResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkerMessageResponse();
      var od = api.WorkerMessageResponse.fromJson(o.toJson());
      checkWorkerMessageResponse(od);
    });
  });

  unittest.group('obj-schema-WorkerPool', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkerPool();
      var od = api.WorkerPool.fromJson(o.toJson());
      checkWorkerPool(od);
    });
  });

  unittest.group('obj-schema-WorkerSettings', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkerSettings();
      var od = api.WorkerSettings.fromJson(o.toJson());
      checkWorkerSettings(od);
    });
  });

  unittest.group('obj-schema-WorkerShutdownNotice', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkerShutdownNotice();
      var od = api.WorkerShutdownNotice.fromJson(o.toJson());
      checkWorkerShutdownNotice(od);
    });
  });

  unittest.group('obj-schema-WorkerShutdownNoticeResponse', () {
    unittest.test('to-json--from-json', () {
      var o = buildWorkerShutdownNoticeResponse();
      var od = api.WorkerShutdownNoticeResponse.fromJson(o.toJson());
      checkWorkerShutdownNoticeResponse(od);
    });
  });

  unittest.group('obj-schema-WriteInstruction', () {
    unittest.test('to-json--from-json', () {
      var o = buildWriteInstruction();
      var od = api.WriteInstruction.fromJson(o.toJson());
      checkWriteInstruction(od);
    });
  });

  unittest.group('resource-ProjectsResourceApi', () {
    unittest.test('method--deleteSnapshots', () {
      var mock = HttpServerMock();
      api.ProjectsResourceApi res = api.DataflowApi(mock).projects;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkDeleteSnapshotResponse(response);
      })));
    });

    unittest.test('method--workerMessages', () {
      var mock = HttpServerMock();
      api.ProjectsResourceApi res = api.DataflowApi(mock).projects;
      var arg_request = buildSendWorkerMessagesRequest();
      var arg_projectId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SendWorkerMessagesRequest.fromJson(json);
        checkSendWorkerMessagesRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkSendWorkerMessagesResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsCatalogTemplatesResourceApi', () {
    unittest.test('method--commit', () {
      var mock = HttpServerMock();
      api.ProjectsCatalogTemplatesResourceApi res =
          api.DataflowApi(mock).projects.catalogTemplates;
      var arg_request = buildCommitTemplateVersionRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CommitTemplateVersionRequest.fromJson(json);
        checkCommitTemplateVersionRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkTemplateVersion(response);
      })));
    });

    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ProjectsCatalogTemplatesResourceApi res =
          api.DataflowApi(mock).projects.catalogTemplates;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkEmpty(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsCatalogTemplatesResourceApi res =
          api.DataflowApi(mock).projects.catalogTemplates;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkTemplateVersion(response);
      })));
    });

    unittest.test('method--label', () {
      var mock = HttpServerMock();
      api.ProjectsCatalogTemplatesResourceApi res =
          api.DataflowApi(mock).projects.catalogTemplates;
      var arg_request = buildModifyTemplateVersionLabelRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ModifyTemplateVersionLabelRequest.fromJson(json);
        checkModifyTemplateVersionLabelRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkModifyTemplateVersionLabelResponse(response);
      })));
    });

    unittest.test('method--tag', () {
      var mock = HttpServerMock();
      api.ProjectsCatalogTemplatesResourceApi res =
          api.DataflowApi(mock).projects.catalogTemplates;
      var arg_request = buildModifyTemplateVersionTagRequest();
      var arg_name = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ModifyTemplateVersionTagRequest.fromJson(json);
        checkModifyTemplateVersionTagRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkModifyTemplateVersionTagResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsCatalogTemplatesTemplateVersionsResourceApi',
      () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.ProjectsCatalogTemplatesTemplateVersionsResourceApi res =
          api.DataflowApi(mock).projects.catalogTemplates.templateVersions;
      var arg_request = buildCreateTemplateVersionRequest();
      var arg_parent = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreateTemplateVersionRequest.fromJson(json);
        checkCreateTemplateVersionRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkTemplateVersion(response);
      })));
    });
  });

  unittest.group('resource-ProjectsJobsResourceApi', () {
    unittest.test('method--aggregated', () {
      var mock = HttpServerMock();
      api.ProjectsJobsResourceApi res = api.DataflowApi(mock).projects.jobs;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListJobsResponse(response);
      })));
    });

    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.ProjectsJobsResourceApi res = api.DataflowApi(mock).projects.jobs;
      var arg_request = buildJob();
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_replaceJobId = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Job.fromJson(json);
        checkJob(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkJob(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsJobsResourceApi res = api.DataflowApi(mock).projects.jobs;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkJob(response);
      })));
    });

    unittest.test('method--getMetrics', () {
      var mock = HttpServerMock();
      api.ProjectsJobsResourceApi res = api.DataflowApi(mock).projects.jobs;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkJobMetrics(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsJobsResourceApi res = api.DataflowApi(mock).projects.jobs;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListJobsResponse(response);
      })));
    });

    unittest.test('method--snapshot', () {
      var mock = HttpServerMock();
      api.ProjectsJobsResourceApi res = api.DataflowApi(mock).projects.jobs;
      var arg_request = buildSnapshotJobRequest();
      var arg_projectId = 'foo';
      var arg_jobId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SnapshotJobRequest.fromJson(json);
        checkSnapshotJobRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkSnapshot(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.ProjectsJobsResourceApi res = api.DataflowApi(mock).projects.jobs;
      var arg_request = buildJob();
      var arg_projectId = 'foo';
      var arg_jobId = 'foo';
      var arg_location = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Job.fromJson(json);
        checkJob(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkJob(response);
      })));
    });
  });

  unittest.group('resource-ProjectsJobsDebugResourceApi', () {
    unittest.test('method--getConfig', () {
      var mock = HttpServerMock();
      api.ProjectsJobsDebugResourceApi res =
          api.DataflowApi(mock).projects.jobs.debug;
      var arg_request = buildGetDebugConfigRequest();
      var arg_projectId = 'foo';
      var arg_jobId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetDebugConfigRequest.fromJson(json);
        checkGetDebugConfigRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkGetDebugConfigResponse(response);
      })));
    });

    unittest.test('method--sendCapture', () {
      var mock = HttpServerMock();
      api.ProjectsJobsDebugResourceApi res =
          api.DataflowApi(mock).projects.jobs.debug;
      var arg_request = buildSendDebugCaptureRequest();
      var arg_projectId = 'foo';
      var arg_jobId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SendDebugCaptureRequest.fromJson(json);
        checkSendDebugCaptureRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkSendDebugCaptureResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsJobsMessagesResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsJobsMessagesResourceApi res =
          api.DataflowApi(mock).projects.jobs.messages;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListJobMessagesResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsJobsWorkItemsResourceApi', () {
    unittest.test('method--lease', () {
      var mock = HttpServerMock();
      api.ProjectsJobsWorkItemsResourceApi res =
          api.DataflowApi(mock).projects.jobs.workItems;
      var arg_request = buildLeaseWorkItemRequest();
      var arg_projectId = 'foo';
      var arg_jobId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LeaseWorkItemRequest.fromJson(json);
        checkLeaseWorkItemRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkLeaseWorkItemResponse(response);
      })));
    });

    unittest.test('method--reportStatus', () {
      var mock = HttpServerMock();
      api.ProjectsJobsWorkItemsResourceApi res =
          api.DataflowApi(mock).projects.jobs.workItems;
      var arg_request = buildReportWorkItemStatusRequest();
      var arg_projectId = 'foo';
      var arg_jobId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ReportWorkItemStatusRequest.fromJson(json);
        checkReportWorkItemStatusRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkReportWorkItemStatusResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsResourceApi', () {
    unittest.test('method--workerMessages', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          api.DataflowApi(mock).projects.locations;
      var arg_request = buildSendWorkerMessagesRequest();
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SendWorkerMessagesRequest.fromJson(json);
        checkSendWorkerMessagesRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkSendWorkerMessagesResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsFlexTemplatesResourceApi', () {
    unittest.test('method--launch', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsFlexTemplatesResourceApi res =
          api.DataflowApi(mock).projects.locations.flexTemplates;
      var arg_request = buildLaunchFlexTemplateRequest();
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LaunchFlexTemplateRequest.fromJson(json);
        checkLaunchFlexTemplateRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkLaunchFlexTemplateResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsJobsResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsJobsResourceApi res =
          api.DataflowApi(mock).projects.locations.jobs;
      var arg_request = buildJob();
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_replaceJobId = 'foo';
      var arg_view = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Job.fromJson(json);
        checkJob(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkJob(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsJobsResourceApi res =
          api.DataflowApi(mock).projects.locations.jobs;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkJob(response);
      })));
    });

    unittest.test('method--getExecutionDetails', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsJobsResourceApi res =
          api.DataflowApi(mock).projects.locations.jobs;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkJobExecutionDetails(response);
      })));
    });

    unittest.test('method--getMetrics', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsJobsResourceApi res =
          api.DataflowApi(mock).projects.locations.jobs;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkJobMetrics(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsJobsResourceApi res =
          api.DataflowApi(mock).projects.locations.jobs;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListJobsResponse(response);
      })));
    });

    unittest.test('method--snapshot', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsJobsResourceApi res =
          api.DataflowApi(mock).projects.locations.jobs;
      var arg_request = buildSnapshotJobRequest();
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_jobId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SnapshotJobRequest.fromJson(json);
        checkSnapshotJobRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkSnapshot(response);
      })));
    });

    unittest.test('method--update', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsJobsResourceApi res =
          api.DataflowApi(mock).projects.locations.jobs;
      var arg_request = buildJob();
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_jobId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.Job.fromJson(json);
        checkJob(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkJob(response);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsJobsDebugResourceApi', () {
    unittest.test('method--getConfig', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsJobsDebugResourceApi res =
          api.DataflowApi(mock).projects.locations.jobs.debug;
      var arg_request = buildGetDebugConfigRequest();
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_jobId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.GetDebugConfigRequest.fromJson(json);
        checkGetDebugConfigRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkGetDebugConfigResponse(response);
      })));
    });

    unittest.test('method--sendCapture', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsJobsDebugResourceApi res =
          api.DataflowApi(mock).projects.locations.jobs.debug;
      var arg_request = buildSendDebugCaptureRequest();
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_jobId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.SendDebugCaptureRequest.fromJson(json);
        checkSendDebugCaptureRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkSendDebugCaptureResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsJobsMessagesResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsJobsMessagesResourceApi res =
          api.DataflowApi(mock).projects.locations.jobs.messages;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListJobMessagesResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsJobsSnapshotsResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsJobsSnapshotsResourceApi res =
          api.DataflowApi(mock).projects.locations.jobs.snapshots;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListSnapshotsResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsJobsStagesResourceApi', () {
    unittest.test('method--getExecutionDetails', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsJobsStagesResourceApi res =
          api.DataflowApi(mock).projects.locations.jobs.stages;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkStageExecutionDetails(response);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsJobsWorkItemsResourceApi', () {
    unittest.test('method--lease', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsJobsWorkItemsResourceApi res =
          api.DataflowApi(mock).projects.locations.jobs.workItems;
      var arg_request = buildLeaseWorkItemRequest();
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_jobId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LeaseWorkItemRequest.fromJson(json);
        checkLeaseWorkItemRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkLeaseWorkItemResponse(response);
      })));
    });

    unittest.test('method--reportStatus', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsJobsWorkItemsResourceApi res =
          api.DataflowApi(mock).projects.locations.jobs.workItems;
      var arg_request = buildReportWorkItemStatusRequest();
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_jobId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.ReportWorkItemStatusRequest.fromJson(json);
        checkReportWorkItemStatusRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkReportWorkItemStatusResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsSnapshotsResourceApi', () {
    unittest.test('method--delete', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsSnapshotsResourceApi res =
          api.DataflowApi(mock).projects.locations.snapshots;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkDeleteSnapshotResponse(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsSnapshotsResourceApi res =
          api.DataflowApi(mock).projects.locations.snapshots;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkSnapshot(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsSnapshotsResourceApi res =
          api.DataflowApi(mock).projects.locations.snapshots;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListSnapshotsResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsSqlResourceApi', () {
    unittest.test('method--validate', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsSqlResourceApi res =
          api.DataflowApi(mock).projects.locations.sql;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkValidateResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsLocationsTemplatesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTemplatesResourceApi res =
          api.DataflowApi(mock).projects.locations.templates;
      var arg_request = buildCreateJobFromTemplateRequest();
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreateJobFromTemplateRequest.fromJson(json);
        checkCreateJobFromTemplateRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkJob(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTemplatesResourceApi res =
          api.DataflowApi(mock).projects.locations.templates;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkGetTemplateResponse(response);
      })));
    });

    unittest.test('method--launch', () {
      var mock = HttpServerMock();
      api.ProjectsLocationsTemplatesResourceApi res =
          api.DataflowApi(mock).projects.locations.templates;
      var arg_request = buildLaunchTemplateParameters();
      var arg_projectId = 'foo';
      var arg_location = 'foo';
      var arg_dynamicTemplate_gcsPath = 'foo';
      var arg_dynamicTemplate_stagingLocation = 'foo';
      var arg_gcsPath = 'foo';
      var arg_validateOnly = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LaunchTemplateParameters.fromJson(json);
        checkLaunchTemplateParameters(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkLaunchTemplateResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsSnapshotsResourceApi', () {
    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsSnapshotsResourceApi res =
          api.DataflowApi(mock).projects.snapshots;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkSnapshot(response);
      })));
    });

    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsSnapshotsResourceApi res =
          api.DataflowApi(mock).projects.snapshots;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListSnapshotsResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsTemplateVersionsResourceApi', () {
    unittest.test('method--list', () {
      var mock = HttpServerMock();
      api.ProjectsTemplateVersionsResourceApi res =
          api.DataflowApi(mock).projects.templateVersions;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkListTemplateVersionsResponse(response);
      })));
    });
  });

  unittest.group('resource-ProjectsTemplatesResourceApi', () {
    unittest.test('method--create', () {
      var mock = HttpServerMock();
      api.ProjectsTemplatesResourceApi res =
          api.DataflowApi(mock).projects.templates;
      var arg_request = buildCreateJobFromTemplateRequest();
      var arg_projectId = 'foo';
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.CreateJobFromTemplateRequest.fromJson(json);
        checkCreateJobFromTemplateRequest(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkJob(response);
      })));
    });

    unittest.test('method--get', () {
      var mock = HttpServerMock();
      api.ProjectsTemplatesResourceApi res =
          api.DataflowApi(mock).projects.templates;
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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkGetTemplateResponse(response);
      })));
    });

    unittest.test('method--launch', () {
      var mock = HttpServerMock();
      api.ProjectsTemplatesResourceApi res =
          api.DataflowApi(mock).projects.templates;
      var arg_request = buildLaunchTemplateParameters();
      var arg_projectId = 'foo';
      var arg_dynamicTemplate_gcsPath = 'foo';
      var arg_dynamicTemplate_stagingLocation = 'foo';
      var arg_gcsPath = 'foo';
      var arg_location = 'foo';
      var arg_validateOnly = true;
      var arg_$fields = 'foo';
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = api.LaunchTemplateParameters.fromJson(json);
        checkLaunchTemplateParameters(obj);

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
        void addQueryParam(n, v) => queryMap.putIfAbsent(n, () => []).add(v);

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
        checkLaunchTemplateResponse(response);
      })));
    });
  });
}
