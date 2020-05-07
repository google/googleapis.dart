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

  async.Future<http.StreamedResponse> send(http.BaseRequest request) {
    if (_expectJson) {
      return request
          .finalize()
          .transform(convert.utf8.decoder)
          .join('')
          .then((core.String jsonString) {
        if (jsonString.isEmpty) {
          return _callback(request, null);
        } else {
          return _callback(request, convert.json.decode(jsonString));
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

http.StreamedResponse stringResponse(core.int status,
    core.Map<core.String, core.String> headers, core.String body) {
  var stream = new async.Stream.fromIterable([convert.utf8.encode(body)]);
  return new http.StreamedResponse(stream, status, headers: headers);
}

core.int buildCounterApproximateProgress = 0;
buildApproximateProgress() {
  var o = new api.ApproximateProgress();
  buildCounterApproximateProgress++;
  if (buildCounterApproximateProgress < 3) {
    o.percentComplete = 42.0;
    o.position = buildPosition();
    o.remainingTime = "foo";
  }
  buildCounterApproximateProgress--;
  return o;
}

checkApproximateProgress(api.ApproximateProgress o) {
  buildCounterApproximateProgress++;
  if (buildCounterApproximateProgress < 3) {
    unittest.expect(o.percentComplete, unittest.equals(42.0));
    checkPosition(o.position);
    unittest.expect(o.remainingTime, unittest.equals('foo'));
  }
  buildCounterApproximateProgress--;
}

core.int buildCounterApproximateReportedProgress = 0;
buildApproximateReportedProgress() {
  var o = new api.ApproximateReportedProgress();
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

checkApproximateReportedProgress(api.ApproximateReportedProgress o) {
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
buildApproximateSplitRequest() {
  var o = new api.ApproximateSplitRequest();
  buildCounterApproximateSplitRequest++;
  if (buildCounterApproximateSplitRequest < 3) {
    o.fractionConsumed = 42.0;
    o.fractionOfRemainder = 42.0;
    o.position = buildPosition();
  }
  buildCounterApproximateSplitRequest--;
  return o;
}

checkApproximateSplitRequest(api.ApproximateSplitRequest o) {
  buildCounterApproximateSplitRequest++;
  if (buildCounterApproximateSplitRequest < 3) {
    unittest.expect(o.fractionConsumed, unittest.equals(42.0));
    unittest.expect(o.fractionOfRemainder, unittest.equals(42.0));
    checkPosition(o.position);
  }
  buildCounterApproximateSplitRequest--;
}

core.int buildCounterAutoscalingEvent = 0;
buildAutoscalingEvent() {
  var o = new api.AutoscalingEvent();
  buildCounterAutoscalingEvent++;
  if (buildCounterAutoscalingEvent < 3) {
    o.currentNumWorkers = "foo";
    o.description = buildStructuredMessage();
    o.eventType = "foo";
    o.targetNumWorkers = "foo";
    o.time = "foo";
    o.workerPool = "foo";
  }
  buildCounterAutoscalingEvent--;
  return o;
}

checkAutoscalingEvent(api.AutoscalingEvent o) {
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
buildAutoscalingSettings() {
  var o = new api.AutoscalingSettings();
  buildCounterAutoscalingSettings++;
  if (buildCounterAutoscalingSettings < 3) {
    o.algorithm = "foo";
    o.maxNumWorkers = 42;
  }
  buildCounterAutoscalingSettings--;
  return o;
}

checkAutoscalingSettings(api.AutoscalingSettings o) {
  buildCounterAutoscalingSettings++;
  if (buildCounterAutoscalingSettings < 3) {
    unittest.expect(o.algorithm, unittest.equals('foo'));
    unittest.expect(o.maxNumWorkers, unittest.equals(42));
  }
  buildCounterAutoscalingSettings--;
}

core.int buildCounterBigQueryIODetails = 0;
buildBigQueryIODetails() {
  var o = new api.BigQueryIODetails();
  buildCounterBigQueryIODetails++;
  if (buildCounterBigQueryIODetails < 3) {
    o.dataset = "foo";
    o.projectId = "foo";
    o.query = "foo";
    o.table = "foo";
  }
  buildCounterBigQueryIODetails--;
  return o;
}

checkBigQueryIODetails(api.BigQueryIODetails o) {
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
buildBigTableIODetails() {
  var o = new api.BigTableIODetails();
  buildCounterBigTableIODetails++;
  if (buildCounterBigTableIODetails < 3) {
    o.instanceId = "foo";
    o.projectId = "foo";
    o.tableId = "foo";
  }
  buildCounterBigTableIODetails--;
  return o;
}

checkBigTableIODetails(api.BigTableIODetails o) {
  buildCounterBigTableIODetails++;
  if (buildCounterBigTableIODetails < 3) {
    unittest.expect(o.instanceId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.tableId, unittest.equals('foo'));
  }
  buildCounterBigTableIODetails--;
}

core.int buildCounterCPUTime = 0;
buildCPUTime() {
  var o = new api.CPUTime();
  buildCounterCPUTime++;
  if (buildCounterCPUTime < 3) {
    o.rate = 42.0;
    o.timestamp = "foo";
    o.totalMs = "foo";
  }
  buildCounterCPUTime--;
  return o;
}

checkCPUTime(api.CPUTime o) {
  buildCounterCPUTime++;
  if (buildCounterCPUTime < 3) {
    unittest.expect(o.rate, unittest.equals(42.0));
    unittest.expect(o.timestamp, unittest.equals('foo'));
    unittest.expect(o.totalMs, unittest.equals('foo'));
  }
  buildCounterCPUTime--;
}

core.int buildCounterComponentSource = 0;
buildComponentSource() {
  var o = new api.ComponentSource();
  buildCounterComponentSource++;
  if (buildCounterComponentSource < 3) {
    o.name = "foo";
    o.originalTransformOrCollection = "foo";
    o.userName = "foo";
  }
  buildCounterComponentSource--;
  return o;
}

checkComponentSource(api.ComponentSource o) {
  buildCounterComponentSource++;
  if (buildCounterComponentSource < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.originalTransformOrCollection, unittest.equals('foo'));
    unittest.expect(o.userName, unittest.equals('foo'));
  }
  buildCounterComponentSource--;
}

core.int buildCounterComponentTransform = 0;
buildComponentTransform() {
  var o = new api.ComponentTransform();
  buildCounterComponentTransform++;
  if (buildCounterComponentTransform < 3) {
    o.name = "foo";
    o.originalTransform = "foo";
    o.userName = "foo";
  }
  buildCounterComponentTransform--;
  return o;
}

checkComponentTransform(api.ComponentTransform o) {
  buildCounterComponentTransform++;
  if (buildCounterComponentTransform < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.originalTransform, unittest.equals('foo'));
    unittest.expect(o.userName, unittest.equals('foo'));
  }
  buildCounterComponentTransform--;
}

buildUnnamed6170() {
  var o = new core.List<api.StreamLocation>();
  o.add(buildStreamLocation());
  o.add(buildStreamLocation());
  return o;
}

checkUnnamed6170(core.List<api.StreamLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStreamLocation(o[0]);
  checkStreamLocation(o[1]);
}

buildUnnamed6171() {
  var o = new core.List<api.KeyRangeLocation>();
  o.add(buildKeyRangeLocation());
  o.add(buildKeyRangeLocation());
  return o;
}

checkUnnamed6171(core.List<api.KeyRangeLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyRangeLocation(o[0]);
  checkKeyRangeLocation(o[1]);
}

buildUnnamed6172() {
  var o = new core.List<api.StreamLocation>();
  o.add(buildStreamLocation());
  o.add(buildStreamLocation());
  return o;
}

checkUnnamed6172(core.List<api.StreamLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStreamLocation(o[0]);
  checkStreamLocation(o[1]);
}

buildUnnamed6173() {
  var o = new core.List<api.StateFamilyConfig>();
  o.add(buildStateFamilyConfig());
  o.add(buildStateFamilyConfig());
  return o;
}

checkUnnamed6173(core.List<api.StateFamilyConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStateFamilyConfig(o[0]);
  checkStateFamilyConfig(o[1]);
}

core.int buildCounterComputationTopology = 0;
buildComputationTopology() {
  var o = new api.ComputationTopology();
  buildCounterComputationTopology++;
  if (buildCounterComputationTopology < 3) {
    o.computationId = "foo";
    o.inputs = buildUnnamed6170();
    o.keyRanges = buildUnnamed6171();
    o.outputs = buildUnnamed6172();
    o.stateFamilies = buildUnnamed6173();
    o.systemStageName = "foo";
  }
  buildCounterComputationTopology--;
  return o;
}

checkComputationTopology(api.ComputationTopology o) {
  buildCounterComputationTopology++;
  if (buildCounterComputationTopology < 3) {
    unittest.expect(o.computationId, unittest.equals('foo'));
    checkUnnamed6170(o.inputs);
    checkUnnamed6171(o.keyRanges);
    checkUnnamed6172(o.outputs);
    checkUnnamed6173(o.stateFamilies);
    unittest.expect(o.systemStageName, unittest.equals('foo'));
  }
  buildCounterComputationTopology--;
}

core.int buildCounterConcatPosition = 0;
buildConcatPosition() {
  var o = new api.ConcatPosition();
  buildCounterConcatPosition++;
  if (buildCounterConcatPosition < 3) {
    o.index = 42;
    o.position = buildPosition();
  }
  buildCounterConcatPosition--;
  return o;
}

checkConcatPosition(api.ConcatPosition o) {
  buildCounterConcatPosition++;
  if (buildCounterConcatPosition < 3) {
    unittest.expect(o.index, unittest.equals(42));
    checkPosition(o.position);
  }
  buildCounterConcatPosition--;
}

core.int buildCounterContainerSpec = 0;
buildContainerSpec() {
  var o = new api.ContainerSpec();
  buildCounterContainerSpec++;
  if (buildCounterContainerSpec < 3) {
    o.image = "foo";
    o.metadata = buildTemplateMetadata();
    o.sdkInfo = buildSDKInfo();
  }
  buildCounterContainerSpec--;
  return o;
}

checkContainerSpec(api.ContainerSpec o) {
  buildCounterContainerSpec++;
  if (buildCounterContainerSpec < 3) {
    unittest.expect(o.image, unittest.equals('foo'));
    checkTemplateMetadata(o.metadata);
    checkSDKInfo(o.sdkInfo);
  }
  buildCounterContainerSpec--;
}

core.int buildCounterCounterMetadata = 0;
buildCounterMetadata() {
  var o = new api.CounterMetadata();
  buildCounterCounterMetadata++;
  if (buildCounterCounterMetadata < 3) {
    o.description = "foo";
    o.kind = "foo";
    o.otherUnits = "foo";
    o.standardUnits = "foo";
  }
  buildCounterCounterMetadata--;
  return o;
}

checkCounterMetadata(api.CounterMetadata o) {
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
buildCounterStructuredName() {
  var o = new api.CounterStructuredName();
  buildCounterCounterStructuredName++;
  if (buildCounterCounterStructuredName < 3) {
    o.componentStepName = "foo";
    o.executionStepName = "foo";
    o.inputIndex = 42;
    o.name = "foo";
    o.origin = "foo";
    o.originNamespace = "foo";
    o.originalRequestingStepName = "foo";
    o.originalStepName = "foo";
    o.portion = "foo";
    o.workerId = "foo";
  }
  buildCounterCounterStructuredName--;
  return o;
}

checkCounterStructuredName(api.CounterStructuredName o) {
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
buildCounterStructuredNameAndMetadata() {
  var o = new api.CounterStructuredNameAndMetadata();
  buildCounterCounterStructuredNameAndMetadata++;
  if (buildCounterCounterStructuredNameAndMetadata < 3) {
    o.metadata = buildCounterMetadata();
    o.name = buildCounterStructuredName();
  }
  buildCounterCounterStructuredNameAndMetadata--;
  return o;
}

checkCounterStructuredNameAndMetadata(api.CounterStructuredNameAndMetadata o) {
  buildCounterCounterStructuredNameAndMetadata++;
  if (buildCounterCounterStructuredNameAndMetadata < 3) {
    checkCounterMetadata(o.metadata);
    checkCounterStructuredName(o.name);
  }
  buildCounterCounterStructuredNameAndMetadata--;
}

core.int buildCounterCounterUpdate = 0;
buildCounterUpdate() {
  var o = new api.CounterUpdate();
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
    o.shortId = "foo";
    o.stringList = buildStringList();
    o.structuredNameAndMetadata = buildCounterStructuredNameAndMetadata();
  }
  buildCounterCounterUpdate--;
  return o;
}

checkCounterUpdate(api.CounterUpdate o) {
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
    unittest.expect(casted1["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted1["bool"], unittest.equals(true));
    unittest.expect(casted1["string"], unittest.equals('foo'));
    checkNameAndKind(o.nameAndKind);
    unittest.expect(o.shortId, unittest.equals('foo'));
    checkStringList(o.stringList);
    checkCounterStructuredNameAndMetadata(o.structuredNameAndMetadata);
  }
  buildCounterCounterUpdate--;
}

buildUnnamed6174() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed6174(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterCreateJobFromTemplateRequest = 0;
buildCreateJobFromTemplateRequest() {
  var o = new api.CreateJobFromTemplateRequest();
  buildCounterCreateJobFromTemplateRequest++;
  if (buildCounterCreateJobFromTemplateRequest < 3) {
    o.environment = buildRuntimeEnvironment();
    o.gcsPath = "foo";
    o.jobName = "foo";
    o.location = "foo";
    o.parameters = buildUnnamed6174();
  }
  buildCounterCreateJobFromTemplateRequest--;
  return o;
}

checkCreateJobFromTemplateRequest(api.CreateJobFromTemplateRequest o) {
  buildCounterCreateJobFromTemplateRequest++;
  if (buildCounterCreateJobFromTemplateRequest < 3) {
    checkRuntimeEnvironment(o.environment);
    unittest.expect(o.gcsPath, unittest.equals('foo'));
    unittest.expect(o.jobName, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    checkUnnamed6174(o.parameters);
  }
  buildCounterCreateJobFromTemplateRequest--;
}

core.int buildCounterCustomSourceLocation = 0;
buildCustomSourceLocation() {
  var o = new api.CustomSourceLocation();
  buildCounterCustomSourceLocation++;
  if (buildCounterCustomSourceLocation < 3) {
    o.stateful = true;
  }
  buildCounterCustomSourceLocation--;
  return o;
}

checkCustomSourceLocation(api.CustomSourceLocation o) {
  buildCounterCustomSourceLocation++;
  if (buildCounterCustomSourceLocation < 3) {
    unittest.expect(o.stateful, unittest.isTrue);
  }
  buildCounterCustomSourceLocation--;
}

buildUnnamed6175() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6175(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDataDiskAssignment = 0;
buildDataDiskAssignment() {
  var o = new api.DataDiskAssignment();
  buildCounterDataDiskAssignment++;
  if (buildCounterDataDiskAssignment < 3) {
    o.dataDisks = buildUnnamed6175();
    o.vmInstance = "foo";
  }
  buildCounterDataDiskAssignment--;
  return o;
}

checkDataDiskAssignment(api.DataDiskAssignment o) {
  buildCounterDataDiskAssignment++;
  if (buildCounterDataDiskAssignment < 3) {
    checkUnnamed6175(o.dataDisks);
    unittest.expect(o.vmInstance, unittest.equals('foo'));
  }
  buildCounterDataDiskAssignment--;
}

core.int buildCounterDatastoreIODetails = 0;
buildDatastoreIODetails() {
  var o = new api.DatastoreIODetails();
  buildCounterDatastoreIODetails++;
  if (buildCounterDatastoreIODetails < 3) {
    o.namespace = "foo";
    o.projectId = "foo";
  }
  buildCounterDatastoreIODetails--;
  return o;
}

checkDatastoreIODetails(api.DatastoreIODetails o) {
  buildCounterDatastoreIODetails++;
  if (buildCounterDatastoreIODetails < 3) {
    unittest.expect(o.namespace, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterDatastoreIODetails--;
}

core.int buildCounterDeleteSnapshotResponse = 0;
buildDeleteSnapshotResponse() {
  var o = new api.DeleteSnapshotResponse();
  buildCounterDeleteSnapshotResponse++;
  if (buildCounterDeleteSnapshotResponse < 3) {}
  buildCounterDeleteSnapshotResponse--;
  return o;
}

checkDeleteSnapshotResponse(api.DeleteSnapshotResponse o) {
  buildCounterDeleteSnapshotResponse++;
  if (buildCounterDeleteSnapshotResponse < 3) {}
  buildCounterDeleteSnapshotResponse--;
}

core.int buildCounterDerivedSource = 0;
buildDerivedSource() {
  var o = new api.DerivedSource();
  buildCounterDerivedSource++;
  if (buildCounterDerivedSource < 3) {
    o.derivationMode = "foo";
    o.source = buildSource();
  }
  buildCounterDerivedSource--;
  return o;
}

checkDerivedSource(api.DerivedSource o) {
  buildCounterDerivedSource++;
  if (buildCounterDerivedSource < 3) {
    unittest.expect(o.derivationMode, unittest.equals('foo'));
    checkSource(o.source);
  }
  buildCounterDerivedSource--;
}

core.int buildCounterDisk = 0;
buildDisk() {
  var o = new api.Disk();
  buildCounterDisk++;
  if (buildCounterDisk < 3) {
    o.diskType = "foo";
    o.mountPoint = "foo";
    o.sizeGb = 42;
  }
  buildCounterDisk--;
  return o;
}

checkDisk(api.Disk o) {
  buildCounterDisk++;
  if (buildCounterDisk < 3) {
    unittest.expect(o.diskType, unittest.equals('foo'));
    unittest.expect(o.mountPoint, unittest.equals('foo'));
    unittest.expect(o.sizeGb, unittest.equals(42));
  }
  buildCounterDisk--;
}

core.int buildCounterDisplayData = 0;
buildDisplayData() {
  var o = new api.DisplayData();
  buildCounterDisplayData++;
  if (buildCounterDisplayData < 3) {
    o.boolValue = true;
    o.durationValue = "foo";
    o.floatValue = 42.0;
    o.int64Value = "foo";
    o.javaClassValue = "foo";
    o.key = "foo";
    o.label = "foo";
    o.namespace = "foo";
    o.shortStrValue = "foo";
    o.strValue = "foo";
    o.timestampValue = "foo";
    o.url = "foo";
  }
  buildCounterDisplayData--;
  return o;
}

checkDisplayData(api.DisplayData o) {
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
buildDistributionUpdate() {
  var o = new api.DistributionUpdate();
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

checkDistributionUpdate(api.DistributionUpdate o) {
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
buildDynamicSourceSplit() {
  var o = new api.DynamicSourceSplit();
  buildCounterDynamicSourceSplit++;
  if (buildCounterDynamicSourceSplit < 3) {
    o.primary = buildDerivedSource();
    o.residual = buildDerivedSource();
  }
  buildCounterDynamicSourceSplit--;
  return o;
}

checkDynamicSourceSplit(api.DynamicSourceSplit o) {
  buildCounterDynamicSourceSplit++;
  if (buildCounterDynamicSourceSplit < 3) {
    checkDerivedSource(o.primary);
    checkDerivedSource(o.residual);
  }
  buildCounterDynamicSourceSplit--;
}

buildUnnamed6176() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6176(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed6177() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6177(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted2 = (o["x"]) as core.Map;
  unittest.expect(casted2, unittest.hasLength(3));
  unittest.expect(casted2["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted2["bool"], unittest.equals(true));
  unittest.expect(casted2["string"], unittest.equals('foo'));
  var casted3 = (o["y"]) as core.Map;
  unittest.expect(casted3, unittest.hasLength(3));
  unittest.expect(casted3["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted3["bool"], unittest.equals(true));
  unittest.expect(casted3["string"], unittest.equals('foo'));
}

buildUnnamed6178() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6178(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted4 = (o["x"]) as core.Map;
  unittest.expect(casted4, unittest.hasLength(3));
  unittest.expect(casted4["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted4["bool"], unittest.equals(true));
  unittest.expect(casted4["string"], unittest.equals('foo'));
  var casted5 = (o["y"]) as core.Map;
  unittest.expect(casted5, unittest.hasLength(3));
  unittest.expect(casted5["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted5["bool"], unittest.equals(true));
  unittest.expect(casted5["string"], unittest.equals('foo'));
}

buildUnnamed6179() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6179(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted6 = (o["x"]) as core.Map;
  unittest.expect(casted6, unittest.hasLength(3));
  unittest.expect(casted6["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted6["bool"], unittest.equals(true));
  unittest.expect(casted6["string"], unittest.equals('foo'));
  var casted7 = (o["y"]) as core.Map;
  unittest.expect(casted7, unittest.hasLength(3));
  unittest.expect(casted7["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted7["bool"], unittest.equals(true));
  unittest.expect(casted7["string"], unittest.equals('foo'));
}

buildUnnamed6180() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6180(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted8 = (o["x"]) as core.Map;
  unittest.expect(casted8, unittest.hasLength(3));
  unittest.expect(casted8["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted8["bool"], unittest.equals(true));
  unittest.expect(casted8["string"], unittest.equals('foo'));
  var casted9 = (o["y"]) as core.Map;
  unittest.expect(casted9, unittest.hasLength(3));
  unittest.expect(casted9["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted9["bool"], unittest.equals(true));
  unittest.expect(casted9["string"], unittest.equals('foo'));
}

buildUnnamed6181() {
  var o = new core.List<api.WorkerPool>();
  o.add(buildWorkerPool());
  o.add(buildWorkerPool());
  return o;
}

checkUnnamed6181(core.List<api.WorkerPool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkerPool(o[0]);
  checkWorkerPool(o[1]);
}

core.int buildCounterEnvironment = 0;
buildEnvironment() {
  var o = new api.Environment();
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    o.clusterManagerApiService = "foo";
    o.dataset = "foo";
    o.experiments = buildUnnamed6176();
    o.flexResourceSchedulingGoal = "foo";
    o.internalExperiments = buildUnnamed6177();
    o.sdkPipelineOptions = buildUnnamed6178();
    o.serviceAccountEmail = "foo";
    o.serviceKmsKeyName = "foo";
    o.tempStoragePrefix = "foo";
    o.userAgent = buildUnnamed6179();
    o.version = buildUnnamed6180();
    o.workerPools = buildUnnamed6181();
    o.workerRegion = "foo";
    o.workerZone = "foo";
  }
  buildCounterEnvironment--;
  return o;
}

checkEnvironment(api.Environment o) {
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    unittest.expect(o.clusterManagerApiService, unittest.equals('foo'));
    unittest.expect(o.dataset, unittest.equals('foo'));
    checkUnnamed6176(o.experiments);
    unittest.expect(o.flexResourceSchedulingGoal, unittest.equals('foo'));
    checkUnnamed6177(o.internalExperiments);
    checkUnnamed6178(o.sdkPipelineOptions);
    unittest.expect(o.serviceAccountEmail, unittest.equals('foo'));
    unittest.expect(o.serviceKmsKeyName, unittest.equals('foo'));
    unittest.expect(o.tempStoragePrefix, unittest.equals('foo'));
    checkUnnamed6179(o.userAgent);
    checkUnnamed6180(o.version);
    checkUnnamed6181(o.workerPools);
    unittest.expect(o.workerRegion, unittest.equals('foo'));
    unittest.expect(o.workerZone, unittest.equals('foo'));
  }
  buildCounterEnvironment--;
}

core.int buildCounterExecutionStageState = 0;
buildExecutionStageState() {
  var o = new api.ExecutionStageState();
  buildCounterExecutionStageState++;
  if (buildCounterExecutionStageState < 3) {
    o.currentStateTime = "foo";
    o.executionStageName = "foo";
    o.executionStageState = "foo";
  }
  buildCounterExecutionStageState--;
  return o;
}

checkExecutionStageState(api.ExecutionStageState o) {
  buildCounterExecutionStageState++;
  if (buildCounterExecutionStageState < 3) {
    unittest.expect(o.currentStateTime, unittest.equals('foo'));
    unittest.expect(o.executionStageName, unittest.equals('foo'));
    unittest.expect(o.executionStageState, unittest.equals('foo'));
  }
  buildCounterExecutionStageState--;
}

buildUnnamed6182() {
  var o = new core.List<api.ComponentSource>();
  o.add(buildComponentSource());
  o.add(buildComponentSource());
  return o;
}

checkUnnamed6182(core.List<api.ComponentSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComponentSource(o[0]);
  checkComponentSource(o[1]);
}

buildUnnamed6183() {
  var o = new core.List<api.ComponentTransform>();
  o.add(buildComponentTransform());
  o.add(buildComponentTransform());
  return o;
}

checkUnnamed6183(core.List<api.ComponentTransform> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComponentTransform(o[0]);
  checkComponentTransform(o[1]);
}

buildUnnamed6184() {
  var o = new core.List<api.StageSource>();
  o.add(buildStageSource());
  o.add(buildStageSource());
  return o;
}

checkUnnamed6184(core.List<api.StageSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStageSource(o[0]);
  checkStageSource(o[1]);
}

buildUnnamed6185() {
  var o = new core.List<api.StageSource>();
  o.add(buildStageSource());
  o.add(buildStageSource());
  return o;
}

checkUnnamed6185(core.List<api.StageSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStageSource(o[0]);
  checkStageSource(o[1]);
}

core.int buildCounterExecutionStageSummary = 0;
buildExecutionStageSummary() {
  var o = new api.ExecutionStageSummary();
  buildCounterExecutionStageSummary++;
  if (buildCounterExecutionStageSummary < 3) {
    o.componentSource = buildUnnamed6182();
    o.componentTransform = buildUnnamed6183();
    o.id = "foo";
    o.inputSource = buildUnnamed6184();
    o.kind = "foo";
    o.name = "foo";
    o.outputSource = buildUnnamed6185();
  }
  buildCounterExecutionStageSummary--;
  return o;
}

checkExecutionStageSummary(api.ExecutionStageSummary o) {
  buildCounterExecutionStageSummary++;
  if (buildCounterExecutionStageSummary < 3) {
    checkUnnamed6182(o.componentSource);
    checkUnnamed6183(o.componentTransform);
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed6184(o.inputSource);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6185(o.outputSource);
  }
  buildCounterExecutionStageSummary--;
}

core.int buildCounterFailedLocation = 0;
buildFailedLocation() {
  var o = new api.FailedLocation();
  buildCounterFailedLocation++;
  if (buildCounterFailedLocation < 3) {
    o.name = "foo";
  }
  buildCounterFailedLocation--;
  return o;
}

checkFailedLocation(api.FailedLocation o) {
  buildCounterFailedLocation++;
  if (buildCounterFailedLocation < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterFailedLocation--;
}

core.int buildCounterFileIODetails = 0;
buildFileIODetails() {
  var o = new api.FileIODetails();
  buildCounterFileIODetails++;
  if (buildCounterFileIODetails < 3) {
    o.filePattern = "foo";
  }
  buildCounterFileIODetails--;
  return o;
}

checkFileIODetails(api.FileIODetails o) {
  buildCounterFileIODetails++;
  if (buildCounterFileIODetails < 3) {
    unittest.expect(o.filePattern, unittest.equals('foo'));
  }
  buildCounterFileIODetails--;
}

buildUnnamed6186() {
  var o = new core.List<api.InstructionInput>();
  o.add(buildInstructionInput());
  o.add(buildInstructionInput());
  return o;
}

checkUnnamed6186(core.List<api.InstructionInput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstructionInput(o[0]);
  checkInstructionInput(o[1]);
}

core.int buildCounterFlattenInstruction = 0;
buildFlattenInstruction() {
  var o = new api.FlattenInstruction();
  buildCounterFlattenInstruction++;
  if (buildCounterFlattenInstruction < 3) {
    o.inputs = buildUnnamed6186();
  }
  buildCounterFlattenInstruction--;
  return o;
}

checkFlattenInstruction(api.FlattenInstruction o) {
  buildCounterFlattenInstruction++;
  if (buildCounterFlattenInstruction < 3) {
    checkUnnamed6186(o.inputs);
  }
  buildCounterFlattenInstruction--;
}

buildUnnamed6187() {
  var o = new core.List<core.double>();
  o.add(42.0);
  o.add(42.0);
  return o;
}

checkUnnamed6187(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterFloatingPointList = 0;
buildFloatingPointList() {
  var o = new api.FloatingPointList();
  buildCounterFloatingPointList++;
  if (buildCounterFloatingPointList < 3) {
    o.elements = buildUnnamed6187();
  }
  buildCounterFloatingPointList--;
  return o;
}

checkFloatingPointList(api.FloatingPointList o) {
  buildCounterFloatingPointList++;
  if (buildCounterFloatingPointList < 3) {
    checkUnnamed6187(o.elements);
  }
  buildCounterFloatingPointList--;
}

core.int buildCounterFloatingPointMean = 0;
buildFloatingPointMean() {
  var o = new api.FloatingPointMean();
  buildCounterFloatingPointMean++;
  if (buildCounterFloatingPointMean < 3) {
    o.count = buildSplitInt64();
    o.sum = 42.0;
  }
  buildCounterFloatingPointMean--;
  return o;
}

checkFloatingPointMean(api.FloatingPointMean o) {
  buildCounterFloatingPointMean++;
  if (buildCounterFloatingPointMean < 3) {
    checkSplitInt64(o.count);
    unittest.expect(o.sum, unittest.equals(42.0));
  }
  buildCounterFloatingPointMean--;
}

core.int buildCounterGetDebugConfigRequest = 0;
buildGetDebugConfigRequest() {
  var o = new api.GetDebugConfigRequest();
  buildCounterGetDebugConfigRequest++;
  if (buildCounterGetDebugConfigRequest < 3) {
    o.componentId = "foo";
    o.location = "foo";
    o.workerId = "foo";
  }
  buildCounterGetDebugConfigRequest--;
  return o;
}

checkGetDebugConfigRequest(api.GetDebugConfigRequest o) {
  buildCounterGetDebugConfigRequest++;
  if (buildCounterGetDebugConfigRequest < 3) {
    unittest.expect(o.componentId, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.workerId, unittest.equals('foo'));
  }
  buildCounterGetDebugConfigRequest--;
}

core.int buildCounterGetDebugConfigResponse = 0;
buildGetDebugConfigResponse() {
  var o = new api.GetDebugConfigResponse();
  buildCounterGetDebugConfigResponse++;
  if (buildCounterGetDebugConfigResponse < 3) {
    o.config = "foo";
  }
  buildCounterGetDebugConfigResponse--;
  return o;
}

checkGetDebugConfigResponse(api.GetDebugConfigResponse o) {
  buildCounterGetDebugConfigResponse++;
  if (buildCounterGetDebugConfigResponse < 3) {
    unittest.expect(o.config, unittest.equals('foo'));
  }
  buildCounterGetDebugConfigResponse--;
}

core.int buildCounterGetTemplateResponse = 0;
buildGetTemplateResponse() {
  var o = new api.GetTemplateResponse();
  buildCounterGetTemplateResponse++;
  if (buildCounterGetTemplateResponse < 3) {
    o.metadata = buildTemplateMetadata();
    o.runtimeMetadata = buildRuntimeMetadata();
    o.status = buildStatus();
    o.templateType = "foo";
  }
  buildCounterGetTemplateResponse--;
  return o;
}

checkGetTemplateResponse(api.GetTemplateResponse o) {
  buildCounterGetTemplateResponse++;
  if (buildCounterGetTemplateResponse < 3) {
    checkTemplateMetadata(o.metadata);
    checkRuntimeMetadata(o.runtimeMetadata);
    checkStatus(o.status);
    unittest.expect(o.templateType, unittest.equals('foo'));
  }
  buildCounterGetTemplateResponse--;
}

buildUnnamed6188() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6188(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterHistogram = 0;
buildHistogram() {
  var o = new api.Histogram();
  buildCounterHistogram++;
  if (buildCounterHistogram < 3) {
    o.bucketCounts = buildUnnamed6188();
    o.firstBucketOffset = 42;
  }
  buildCounterHistogram--;
  return o;
}

checkHistogram(api.Histogram o) {
  buildCounterHistogram++;
  if (buildCounterHistogram < 3) {
    checkUnnamed6188(o.bucketCounts);
    unittest.expect(o.firstBucketOffset, unittest.equals(42));
  }
  buildCounterHistogram--;
}

core.int buildCounterHotKeyDetection = 0;
buildHotKeyDetection() {
  var o = new api.HotKeyDetection();
  buildCounterHotKeyDetection++;
  if (buildCounterHotKeyDetection < 3) {
    o.hotKeyAge = "foo";
    o.systemName = "foo";
    o.userStepName = "foo";
  }
  buildCounterHotKeyDetection--;
  return o;
}

checkHotKeyDetection(api.HotKeyDetection o) {
  buildCounterHotKeyDetection++;
  if (buildCounterHotKeyDetection < 3) {
    unittest.expect(o.hotKeyAge, unittest.equals('foo'));
    unittest.expect(o.systemName, unittest.equals('foo'));
    unittest.expect(o.userStepName, unittest.equals('foo'));
  }
  buildCounterHotKeyDetection--;
}

core.int buildCounterInstructionInput = 0;
buildInstructionInput() {
  var o = new api.InstructionInput();
  buildCounterInstructionInput++;
  if (buildCounterInstructionInput < 3) {
    o.outputNum = 42;
    o.producerInstructionIndex = 42;
  }
  buildCounterInstructionInput--;
  return o;
}

checkInstructionInput(api.InstructionInput o) {
  buildCounterInstructionInput++;
  if (buildCounterInstructionInput < 3) {
    unittest.expect(o.outputNum, unittest.equals(42));
    unittest.expect(o.producerInstructionIndex, unittest.equals(42));
  }
  buildCounterInstructionInput--;
}

buildUnnamed6189() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6189(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted10 = (o["x"]) as core.Map;
  unittest.expect(casted10, unittest.hasLength(3));
  unittest.expect(casted10["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted10["bool"], unittest.equals(true));
  unittest.expect(casted10["string"], unittest.equals('foo'));
  var casted11 = (o["y"]) as core.Map;
  unittest.expect(casted11, unittest.hasLength(3));
  unittest.expect(casted11["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted11["bool"], unittest.equals(true));
  unittest.expect(casted11["string"], unittest.equals('foo'));
}

core.int buildCounterInstructionOutput = 0;
buildInstructionOutput() {
  var o = new api.InstructionOutput();
  buildCounterInstructionOutput++;
  if (buildCounterInstructionOutput < 3) {
    o.codec = buildUnnamed6189();
    o.name = "foo";
    o.onlyCountKeyBytes = true;
    o.onlyCountValueBytes = true;
    o.originalName = "foo";
    o.systemName = "foo";
  }
  buildCounterInstructionOutput--;
  return o;
}

checkInstructionOutput(api.InstructionOutput o) {
  buildCounterInstructionOutput++;
  if (buildCounterInstructionOutput < 3) {
    checkUnnamed6189(o.codec);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.onlyCountKeyBytes, unittest.isTrue);
    unittest.expect(o.onlyCountValueBytes, unittest.isTrue);
    unittest.expect(o.originalName, unittest.equals('foo'));
    unittest.expect(o.systemName, unittest.equals('foo'));
  }
  buildCounterInstructionOutput--;
}

core.int buildCounterIntegerGauge = 0;
buildIntegerGauge() {
  var o = new api.IntegerGauge();
  buildCounterIntegerGauge++;
  if (buildCounterIntegerGauge < 3) {
    o.timestamp = "foo";
    o.value = buildSplitInt64();
  }
  buildCounterIntegerGauge--;
  return o;
}

checkIntegerGauge(api.IntegerGauge o) {
  buildCounterIntegerGauge++;
  if (buildCounterIntegerGauge < 3) {
    unittest.expect(o.timestamp, unittest.equals('foo'));
    checkSplitInt64(o.value);
  }
  buildCounterIntegerGauge--;
}

buildUnnamed6190() {
  var o = new core.List<api.SplitInt64>();
  o.add(buildSplitInt64());
  o.add(buildSplitInt64());
  return o;
}

checkUnnamed6190(core.List<api.SplitInt64> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSplitInt64(o[0]);
  checkSplitInt64(o[1]);
}

core.int buildCounterIntegerList = 0;
buildIntegerList() {
  var o = new api.IntegerList();
  buildCounterIntegerList++;
  if (buildCounterIntegerList < 3) {
    o.elements = buildUnnamed6190();
  }
  buildCounterIntegerList--;
  return o;
}

checkIntegerList(api.IntegerList o) {
  buildCounterIntegerList++;
  if (buildCounterIntegerList < 3) {
    checkUnnamed6190(o.elements);
  }
  buildCounterIntegerList--;
}

core.int buildCounterIntegerMean = 0;
buildIntegerMean() {
  var o = new api.IntegerMean();
  buildCounterIntegerMean++;
  if (buildCounterIntegerMean < 3) {
    o.count = buildSplitInt64();
    o.sum = buildSplitInt64();
  }
  buildCounterIntegerMean--;
  return o;
}

checkIntegerMean(api.IntegerMean o) {
  buildCounterIntegerMean++;
  if (buildCounterIntegerMean < 3) {
    checkSplitInt64(o.count);
    checkSplitInt64(o.sum);
  }
  buildCounterIntegerMean--;
}

buildUnnamed6191() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed6191(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed6192() {
  var o = new core.List<api.ExecutionStageState>();
  o.add(buildExecutionStageState());
  o.add(buildExecutionStageState());
  return o;
}

checkUnnamed6192(core.List<api.ExecutionStageState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecutionStageState(o[0]);
  checkExecutionStageState(o[1]);
}

buildUnnamed6193() {
  var o = new core.List<api.Step>();
  o.add(buildStep());
  o.add(buildStep());
  return o;
}

checkUnnamed6193(core.List<api.Step> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStep(o[0]);
  checkStep(o[1]);
}

buildUnnamed6194() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6194(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed6195() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed6195(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterJob = 0;
buildJob() {
  var o = new api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.clientRequestId = "foo";
    o.createTime = "foo";
    o.createdFromSnapshotId = "foo";
    o.currentState = "foo";
    o.currentStateTime = "foo";
    o.environment = buildEnvironment();
    o.executionInfo = buildJobExecutionInfo();
    o.id = "foo";
    o.jobMetadata = buildJobMetadata();
    o.labels = buildUnnamed6191();
    o.location = "foo";
    o.name = "foo";
    o.pipelineDescription = buildPipelineDescription();
    o.projectId = "foo";
    o.replaceJobId = "foo";
    o.replacedByJobId = "foo";
    o.requestedState = "foo";
    o.stageStates = buildUnnamed6192();
    o.startTime = "foo";
    o.steps = buildUnnamed6193();
    o.stepsLocation = "foo";
    o.tempFiles = buildUnnamed6194();
    o.transformNameMapping = buildUnnamed6195();
    o.type = "foo";
  }
  buildCounterJob--;
  return o;
}

checkJob(api.Job o) {
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
    checkUnnamed6191(o.labels);
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkPipelineDescription(o.pipelineDescription);
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.replaceJobId, unittest.equals('foo'));
    unittest.expect(o.replacedByJobId, unittest.equals('foo'));
    unittest.expect(o.requestedState, unittest.equals('foo'));
    checkUnnamed6192(o.stageStates);
    unittest.expect(o.startTime, unittest.equals('foo'));
    checkUnnamed6193(o.steps);
    unittest.expect(o.stepsLocation, unittest.equals('foo'));
    checkUnnamed6194(o.tempFiles);
    checkUnnamed6195(o.transformNameMapping);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterJob--;
}

buildUnnamed6196() {
  var o = new core.Map<core.String, api.JobExecutionStageInfo>();
  o["x"] = buildJobExecutionStageInfo();
  o["y"] = buildJobExecutionStageInfo();
  return o;
}

checkUnnamed6196(core.Map<core.String, api.JobExecutionStageInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobExecutionStageInfo(o["x"]);
  checkJobExecutionStageInfo(o["y"]);
}

core.int buildCounterJobExecutionInfo = 0;
buildJobExecutionInfo() {
  var o = new api.JobExecutionInfo();
  buildCounterJobExecutionInfo++;
  if (buildCounterJobExecutionInfo < 3) {
    o.stages = buildUnnamed6196();
  }
  buildCounterJobExecutionInfo--;
  return o;
}

checkJobExecutionInfo(api.JobExecutionInfo o) {
  buildCounterJobExecutionInfo++;
  if (buildCounterJobExecutionInfo < 3) {
    checkUnnamed6196(o.stages);
  }
  buildCounterJobExecutionInfo--;
}

buildUnnamed6197() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6197(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterJobExecutionStageInfo = 0;
buildJobExecutionStageInfo() {
  var o = new api.JobExecutionStageInfo();
  buildCounterJobExecutionStageInfo++;
  if (buildCounterJobExecutionStageInfo < 3) {
    o.stepName = buildUnnamed6197();
  }
  buildCounterJobExecutionStageInfo--;
  return o;
}

checkJobExecutionStageInfo(api.JobExecutionStageInfo o) {
  buildCounterJobExecutionStageInfo++;
  if (buildCounterJobExecutionStageInfo < 3) {
    checkUnnamed6197(o.stepName);
  }
  buildCounterJobExecutionStageInfo--;
}

core.int buildCounterJobMessage = 0;
buildJobMessage() {
  var o = new api.JobMessage();
  buildCounterJobMessage++;
  if (buildCounterJobMessage < 3) {
    o.id = "foo";
    o.messageImportance = "foo";
    o.messageText = "foo";
    o.time = "foo";
  }
  buildCounterJobMessage--;
  return o;
}

checkJobMessage(api.JobMessage o) {
  buildCounterJobMessage++;
  if (buildCounterJobMessage < 3) {
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.messageImportance, unittest.equals('foo'));
    unittest.expect(o.messageText, unittest.equals('foo'));
    unittest.expect(o.time, unittest.equals('foo'));
  }
  buildCounterJobMessage--;
}

buildUnnamed6198() {
  var o = new core.List<api.BigTableIODetails>();
  o.add(buildBigTableIODetails());
  o.add(buildBigTableIODetails());
  return o;
}

checkUnnamed6198(core.List<api.BigTableIODetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBigTableIODetails(o[0]);
  checkBigTableIODetails(o[1]);
}

buildUnnamed6199() {
  var o = new core.List<api.BigQueryIODetails>();
  o.add(buildBigQueryIODetails());
  o.add(buildBigQueryIODetails());
  return o;
}

checkUnnamed6199(core.List<api.BigQueryIODetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBigQueryIODetails(o[0]);
  checkBigQueryIODetails(o[1]);
}

buildUnnamed6200() {
  var o = new core.List<api.DatastoreIODetails>();
  o.add(buildDatastoreIODetails());
  o.add(buildDatastoreIODetails());
  return o;
}

checkUnnamed6200(core.List<api.DatastoreIODetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDatastoreIODetails(o[0]);
  checkDatastoreIODetails(o[1]);
}

buildUnnamed6201() {
  var o = new core.List<api.FileIODetails>();
  o.add(buildFileIODetails());
  o.add(buildFileIODetails());
  return o;
}

checkUnnamed6201(core.List<api.FileIODetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFileIODetails(o[0]);
  checkFileIODetails(o[1]);
}

buildUnnamed6202() {
  var o = new core.List<api.PubSubIODetails>();
  o.add(buildPubSubIODetails());
  o.add(buildPubSubIODetails());
  return o;
}

checkUnnamed6202(core.List<api.PubSubIODetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPubSubIODetails(o[0]);
  checkPubSubIODetails(o[1]);
}

buildUnnamed6203() {
  var o = new core.List<api.SpannerIODetails>();
  o.add(buildSpannerIODetails());
  o.add(buildSpannerIODetails());
  return o;
}

checkUnnamed6203(core.List<api.SpannerIODetails> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSpannerIODetails(o[0]);
  checkSpannerIODetails(o[1]);
}

core.int buildCounterJobMetadata = 0;
buildJobMetadata() {
  var o = new api.JobMetadata();
  buildCounterJobMetadata++;
  if (buildCounterJobMetadata < 3) {
    o.bigTableDetails = buildUnnamed6198();
    o.bigqueryDetails = buildUnnamed6199();
    o.datastoreDetails = buildUnnamed6200();
    o.fileDetails = buildUnnamed6201();
    o.pubsubDetails = buildUnnamed6202();
    o.sdkVersion = buildSdkVersion();
    o.spannerDetails = buildUnnamed6203();
  }
  buildCounterJobMetadata--;
  return o;
}

checkJobMetadata(api.JobMetadata o) {
  buildCounterJobMetadata++;
  if (buildCounterJobMetadata < 3) {
    checkUnnamed6198(o.bigTableDetails);
    checkUnnamed6199(o.bigqueryDetails);
    checkUnnamed6200(o.datastoreDetails);
    checkUnnamed6201(o.fileDetails);
    checkUnnamed6202(o.pubsubDetails);
    checkSdkVersion(o.sdkVersion);
    checkUnnamed6203(o.spannerDetails);
  }
  buildCounterJobMetadata--;
}

buildUnnamed6204() {
  var o = new core.List<api.MetricUpdate>();
  o.add(buildMetricUpdate());
  o.add(buildMetricUpdate());
  return o;
}

checkUnnamed6204(core.List<api.MetricUpdate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricUpdate(o[0]);
  checkMetricUpdate(o[1]);
}

core.int buildCounterJobMetrics = 0;
buildJobMetrics() {
  var o = new api.JobMetrics();
  buildCounterJobMetrics++;
  if (buildCounterJobMetrics < 3) {
    o.metricTime = "foo";
    o.metrics = buildUnnamed6204();
  }
  buildCounterJobMetrics--;
  return o;
}

checkJobMetrics(api.JobMetrics o) {
  buildCounterJobMetrics++;
  if (buildCounterJobMetrics < 3) {
    unittest.expect(o.metricTime, unittest.equals('foo'));
    checkUnnamed6204(o.metrics);
  }
  buildCounterJobMetrics--;
}

core.int buildCounterKeyRangeDataDiskAssignment = 0;
buildKeyRangeDataDiskAssignment() {
  var o = new api.KeyRangeDataDiskAssignment();
  buildCounterKeyRangeDataDiskAssignment++;
  if (buildCounterKeyRangeDataDiskAssignment < 3) {
    o.dataDisk = "foo";
    o.end = "foo";
    o.start = "foo";
  }
  buildCounterKeyRangeDataDiskAssignment--;
  return o;
}

checkKeyRangeDataDiskAssignment(api.KeyRangeDataDiskAssignment o) {
  buildCounterKeyRangeDataDiskAssignment++;
  if (buildCounterKeyRangeDataDiskAssignment < 3) {
    unittest.expect(o.dataDisk, unittest.equals('foo'));
    unittest.expect(o.end, unittest.equals('foo'));
    unittest.expect(o.start, unittest.equals('foo'));
  }
  buildCounterKeyRangeDataDiskAssignment--;
}

core.int buildCounterKeyRangeLocation = 0;
buildKeyRangeLocation() {
  var o = new api.KeyRangeLocation();
  buildCounterKeyRangeLocation++;
  if (buildCounterKeyRangeLocation < 3) {
    o.dataDisk = "foo";
    o.deliveryEndpoint = "foo";
    o.deprecatedPersistentDirectory = "foo";
    o.end = "foo";
    o.start = "foo";
  }
  buildCounterKeyRangeLocation--;
  return o;
}

checkKeyRangeLocation(api.KeyRangeLocation o) {
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

buildUnnamed6205() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed6205(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterLaunchFlexTemplateParameter = 0;
buildLaunchFlexTemplateParameter() {
  var o = new api.LaunchFlexTemplateParameter();
  buildCounterLaunchFlexTemplateParameter++;
  if (buildCounterLaunchFlexTemplateParameter < 3) {
    o.containerSpec = buildContainerSpec();
    o.containerSpecGcsPath = "foo";
    o.jobName = "foo";
    o.parameters = buildUnnamed6205();
  }
  buildCounterLaunchFlexTemplateParameter--;
  return o;
}

checkLaunchFlexTemplateParameter(api.LaunchFlexTemplateParameter o) {
  buildCounterLaunchFlexTemplateParameter++;
  if (buildCounterLaunchFlexTemplateParameter < 3) {
    checkContainerSpec(o.containerSpec);
    unittest.expect(o.containerSpecGcsPath, unittest.equals('foo'));
    unittest.expect(o.jobName, unittest.equals('foo'));
    checkUnnamed6205(o.parameters);
  }
  buildCounterLaunchFlexTemplateParameter--;
}

core.int buildCounterLaunchFlexTemplateRequest = 0;
buildLaunchFlexTemplateRequest() {
  var o = new api.LaunchFlexTemplateRequest();
  buildCounterLaunchFlexTemplateRequest++;
  if (buildCounterLaunchFlexTemplateRequest < 3) {
    o.launchParameter = buildLaunchFlexTemplateParameter();
    o.validateOnly = true;
  }
  buildCounterLaunchFlexTemplateRequest--;
  return o;
}

checkLaunchFlexTemplateRequest(api.LaunchFlexTemplateRequest o) {
  buildCounterLaunchFlexTemplateRequest++;
  if (buildCounterLaunchFlexTemplateRequest < 3) {
    checkLaunchFlexTemplateParameter(o.launchParameter);
    unittest.expect(o.validateOnly, unittest.isTrue);
  }
  buildCounterLaunchFlexTemplateRequest--;
}

core.int buildCounterLaunchFlexTemplateResponse = 0;
buildLaunchFlexTemplateResponse() {
  var o = new api.LaunchFlexTemplateResponse();
  buildCounterLaunchFlexTemplateResponse++;
  if (buildCounterLaunchFlexTemplateResponse < 3) {
    o.job = buildJob();
  }
  buildCounterLaunchFlexTemplateResponse--;
  return o;
}

checkLaunchFlexTemplateResponse(api.LaunchFlexTemplateResponse o) {
  buildCounterLaunchFlexTemplateResponse++;
  if (buildCounterLaunchFlexTemplateResponse < 3) {
    checkJob(o.job);
  }
  buildCounterLaunchFlexTemplateResponse--;
}

buildUnnamed6206() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed6206(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed6207() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed6207(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterLaunchTemplateParameters = 0;
buildLaunchTemplateParameters() {
  var o = new api.LaunchTemplateParameters();
  buildCounterLaunchTemplateParameters++;
  if (buildCounterLaunchTemplateParameters < 3) {
    o.environment = buildRuntimeEnvironment();
    o.jobName = "foo";
    o.parameters = buildUnnamed6206();
    o.transformNameMapping = buildUnnamed6207();
    o.update = true;
  }
  buildCounterLaunchTemplateParameters--;
  return o;
}

checkLaunchTemplateParameters(api.LaunchTemplateParameters o) {
  buildCounterLaunchTemplateParameters++;
  if (buildCounterLaunchTemplateParameters < 3) {
    checkRuntimeEnvironment(o.environment);
    unittest.expect(o.jobName, unittest.equals('foo'));
    checkUnnamed6206(o.parameters);
    checkUnnamed6207(o.transformNameMapping);
    unittest.expect(o.update, unittest.isTrue);
  }
  buildCounterLaunchTemplateParameters--;
}

core.int buildCounterLaunchTemplateResponse = 0;
buildLaunchTemplateResponse() {
  var o = new api.LaunchTemplateResponse();
  buildCounterLaunchTemplateResponse++;
  if (buildCounterLaunchTemplateResponse < 3) {
    o.job = buildJob();
  }
  buildCounterLaunchTemplateResponse--;
  return o;
}

checkLaunchTemplateResponse(api.LaunchTemplateResponse o) {
  buildCounterLaunchTemplateResponse++;
  if (buildCounterLaunchTemplateResponse < 3) {
    checkJob(o.job);
  }
  buildCounterLaunchTemplateResponse--;
}

buildUnnamed6208() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6208(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted12 = (o["x"]) as core.Map;
  unittest.expect(casted12, unittest.hasLength(3));
  unittest.expect(casted12["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted12["bool"], unittest.equals(true));
  unittest.expect(casted12["string"], unittest.equals('foo'));
  var casted13 = (o["y"]) as core.Map;
  unittest.expect(casted13, unittest.hasLength(3));
  unittest.expect(casted13["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted13["bool"], unittest.equals(true));
  unittest.expect(casted13["string"], unittest.equals('foo'));
}

buildUnnamed6209() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6209(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed6210() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6210(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterLeaseWorkItemRequest = 0;
buildLeaseWorkItemRequest() {
  var o = new api.LeaseWorkItemRequest();
  buildCounterLeaseWorkItemRequest++;
  if (buildCounterLeaseWorkItemRequest < 3) {
    o.currentWorkerTime = "foo";
    o.location = "foo";
    o.requestedLeaseDuration = "foo";
    o.unifiedWorkerRequest = buildUnnamed6208();
    o.workItemTypes = buildUnnamed6209();
    o.workerCapabilities = buildUnnamed6210();
    o.workerId = "foo";
  }
  buildCounterLeaseWorkItemRequest--;
  return o;
}

checkLeaseWorkItemRequest(api.LeaseWorkItemRequest o) {
  buildCounterLeaseWorkItemRequest++;
  if (buildCounterLeaseWorkItemRequest < 3) {
    unittest.expect(o.currentWorkerTime, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.requestedLeaseDuration, unittest.equals('foo'));
    checkUnnamed6208(o.unifiedWorkerRequest);
    checkUnnamed6209(o.workItemTypes);
    checkUnnamed6210(o.workerCapabilities);
    unittest.expect(o.workerId, unittest.equals('foo'));
  }
  buildCounterLeaseWorkItemRequest--;
}

buildUnnamed6211() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6211(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted14 = (o["x"]) as core.Map;
  unittest.expect(casted14, unittest.hasLength(3));
  unittest.expect(casted14["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted14["bool"], unittest.equals(true));
  unittest.expect(casted14["string"], unittest.equals('foo'));
  var casted15 = (o["y"]) as core.Map;
  unittest.expect(casted15, unittest.hasLength(3));
  unittest.expect(casted15["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted15["bool"], unittest.equals(true));
  unittest.expect(casted15["string"], unittest.equals('foo'));
}

buildUnnamed6212() {
  var o = new core.List<api.WorkItem>();
  o.add(buildWorkItem());
  o.add(buildWorkItem());
  return o;
}

checkUnnamed6212(core.List<api.WorkItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkItem(o[0]);
  checkWorkItem(o[1]);
}

core.int buildCounterLeaseWorkItemResponse = 0;
buildLeaseWorkItemResponse() {
  var o = new api.LeaseWorkItemResponse();
  buildCounterLeaseWorkItemResponse++;
  if (buildCounterLeaseWorkItemResponse < 3) {
    o.unifiedWorkerResponse = buildUnnamed6211();
    o.workItems = buildUnnamed6212();
  }
  buildCounterLeaseWorkItemResponse--;
  return o;
}

checkLeaseWorkItemResponse(api.LeaseWorkItemResponse o) {
  buildCounterLeaseWorkItemResponse++;
  if (buildCounterLeaseWorkItemResponse < 3) {
    checkUnnamed6211(o.unifiedWorkerResponse);
    checkUnnamed6212(o.workItems);
  }
  buildCounterLeaseWorkItemResponse--;
}

buildUnnamed6213() {
  var o = new core.List<api.AutoscalingEvent>();
  o.add(buildAutoscalingEvent());
  o.add(buildAutoscalingEvent());
  return o;
}

checkUnnamed6213(core.List<api.AutoscalingEvent> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutoscalingEvent(o[0]);
  checkAutoscalingEvent(o[1]);
}

buildUnnamed6214() {
  var o = new core.List<api.JobMessage>();
  o.add(buildJobMessage());
  o.add(buildJobMessage());
  return o;
}

checkUnnamed6214(core.List<api.JobMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobMessage(o[0]);
  checkJobMessage(o[1]);
}

core.int buildCounterListJobMessagesResponse = 0;
buildListJobMessagesResponse() {
  var o = new api.ListJobMessagesResponse();
  buildCounterListJobMessagesResponse++;
  if (buildCounterListJobMessagesResponse < 3) {
    o.autoscalingEvents = buildUnnamed6213();
    o.jobMessages = buildUnnamed6214();
    o.nextPageToken = "foo";
  }
  buildCounterListJobMessagesResponse--;
  return o;
}

checkListJobMessagesResponse(api.ListJobMessagesResponse o) {
  buildCounterListJobMessagesResponse++;
  if (buildCounterListJobMessagesResponse < 3) {
    checkUnnamed6213(o.autoscalingEvents);
    checkUnnamed6214(o.jobMessages);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListJobMessagesResponse--;
}

buildUnnamed6215() {
  var o = new core.List<api.FailedLocation>();
  o.add(buildFailedLocation());
  o.add(buildFailedLocation());
  return o;
}

checkUnnamed6215(core.List<api.FailedLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkFailedLocation(o[0]);
  checkFailedLocation(o[1]);
}

buildUnnamed6216() {
  var o = new core.List<api.Job>();
  o.add(buildJob());
  o.add(buildJob());
  return o;
}

checkUnnamed6216(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterListJobsResponse = 0;
buildListJobsResponse() {
  var o = new api.ListJobsResponse();
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    o.failedLocation = buildUnnamed6215();
    o.jobs = buildUnnamed6216();
    o.nextPageToken = "foo";
  }
  buildCounterListJobsResponse--;
  return o;
}

checkListJobsResponse(api.ListJobsResponse o) {
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    checkUnnamed6215(o.failedLocation);
    checkUnnamed6216(o.jobs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListJobsResponse--;
}

buildUnnamed6217() {
  var o = new core.List<api.Snapshot>();
  o.add(buildSnapshot());
  o.add(buildSnapshot());
  return o;
}

checkUnnamed6217(core.List<api.Snapshot> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSnapshot(o[0]);
  checkSnapshot(o[1]);
}

core.int buildCounterListSnapshotsResponse = 0;
buildListSnapshotsResponse() {
  var o = new api.ListSnapshotsResponse();
  buildCounterListSnapshotsResponse++;
  if (buildCounterListSnapshotsResponse < 3) {
    o.snapshots = buildUnnamed6217();
  }
  buildCounterListSnapshotsResponse--;
  return o;
}

checkListSnapshotsResponse(api.ListSnapshotsResponse o) {
  buildCounterListSnapshotsResponse++;
  if (buildCounterListSnapshotsResponse < 3) {
    checkUnnamed6217(o.snapshots);
  }
  buildCounterListSnapshotsResponse--;
}

buildUnnamed6218() {
  var o = new core.List<api.ParallelInstruction>();
  o.add(buildParallelInstruction());
  o.add(buildParallelInstruction());
  return o;
}

checkUnnamed6218(core.List<api.ParallelInstruction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParallelInstruction(o[0]);
  checkParallelInstruction(o[1]);
}

core.int buildCounterMapTask = 0;
buildMapTask() {
  var o = new api.MapTask();
  buildCounterMapTask++;
  if (buildCounterMapTask < 3) {
    o.counterPrefix = "foo";
    o.instructions = buildUnnamed6218();
    o.stageName = "foo";
    o.systemName = "foo";
  }
  buildCounterMapTask--;
  return o;
}

checkMapTask(api.MapTask o) {
  buildCounterMapTask++;
  if (buildCounterMapTask < 3) {
    unittest.expect(o.counterPrefix, unittest.equals('foo'));
    checkUnnamed6218(o.instructions);
    unittest.expect(o.stageName, unittest.equals('foo'));
    unittest.expect(o.systemName, unittest.equals('foo'));
  }
  buildCounterMapTask--;
}

core.int buildCounterMemInfo = 0;
buildMemInfo() {
  var o = new api.MemInfo();
  buildCounterMemInfo++;
  if (buildCounterMemInfo < 3) {
    o.currentLimitBytes = "foo";
    o.currentRssBytes = "foo";
    o.timestamp = "foo";
    o.totalGbMs = "foo";
  }
  buildCounterMemInfo--;
  return o;
}

checkMemInfo(api.MemInfo o) {
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
buildMetricShortId() {
  var o = new api.MetricShortId();
  buildCounterMetricShortId++;
  if (buildCounterMetricShortId < 3) {
    o.metricIndex = 42;
    o.shortId = "foo";
  }
  buildCounterMetricShortId--;
  return o;
}

checkMetricShortId(api.MetricShortId o) {
  buildCounterMetricShortId++;
  if (buildCounterMetricShortId < 3) {
    unittest.expect(o.metricIndex, unittest.equals(42));
    unittest.expect(o.shortId, unittest.equals('foo'));
  }
  buildCounterMetricShortId--;
}

buildUnnamed6219() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed6219(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterMetricStructuredName = 0;
buildMetricStructuredName() {
  var o = new api.MetricStructuredName();
  buildCounterMetricStructuredName++;
  if (buildCounterMetricStructuredName < 3) {
    o.context = buildUnnamed6219();
    o.name = "foo";
    o.origin = "foo";
  }
  buildCounterMetricStructuredName--;
  return o;
}

checkMetricStructuredName(api.MetricStructuredName o) {
  buildCounterMetricStructuredName++;
  if (buildCounterMetricStructuredName < 3) {
    checkUnnamed6219(o.context);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.origin, unittest.equals('foo'));
  }
  buildCounterMetricStructuredName--;
}

core.int buildCounterMetricUpdate = 0;
buildMetricUpdate() {
  var o = new api.MetricUpdate();
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
    o.kind = "foo";
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
    o.updateTime = "foo";
  }
  buildCounterMetricUpdate--;
  return o;
}

checkMetricUpdate(api.MetricUpdate o) {
  buildCounterMetricUpdate++;
  if (buildCounterMetricUpdate < 3) {
    unittest.expect(o.cumulative, unittest.isTrue);
    var casted16 = (o.distribution) as core.Map;
    unittest.expect(casted16, unittest.hasLength(3));
    unittest.expect(casted16["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted16["bool"], unittest.equals(true));
    unittest.expect(casted16["string"], unittest.equals('foo'));
    var casted17 = (o.gauge) as core.Map;
    unittest.expect(casted17, unittest.hasLength(3));
    unittest.expect(casted17["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted17["bool"], unittest.equals(true));
    unittest.expect(casted17["string"], unittest.equals('foo'));
    var casted18 = (o.internal) as core.Map;
    unittest.expect(casted18, unittest.hasLength(3));
    unittest.expect(casted18["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted18["bool"], unittest.equals(true));
    unittest.expect(casted18["string"], unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    var casted19 = (o.meanCount) as core.Map;
    unittest.expect(casted19, unittest.hasLength(3));
    unittest.expect(casted19["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted19["bool"], unittest.equals(true));
    unittest.expect(casted19["string"], unittest.equals('foo'));
    var casted20 = (o.meanSum) as core.Map;
    unittest.expect(casted20, unittest.hasLength(3));
    unittest.expect(casted20["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted20["bool"], unittest.equals(true));
    unittest.expect(casted20["string"], unittest.equals('foo'));
    checkMetricStructuredName(o.name);
    var casted21 = (o.scalar) as core.Map;
    unittest.expect(casted21, unittest.hasLength(3));
    unittest.expect(casted21["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted21["bool"], unittest.equals(true));
    unittest.expect(casted21["string"], unittest.equals('foo'));
    var casted22 = (o.set) as core.Map;
    unittest.expect(casted22, unittest.hasLength(3));
    unittest.expect(casted22["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted22["bool"], unittest.equals(true));
    unittest.expect(casted22["string"], unittest.equals('foo'));
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterMetricUpdate--;
}

core.int buildCounterMountedDataDisk = 0;
buildMountedDataDisk() {
  var o = new api.MountedDataDisk();
  buildCounterMountedDataDisk++;
  if (buildCounterMountedDataDisk < 3) {
    o.dataDisk = "foo";
  }
  buildCounterMountedDataDisk--;
  return o;
}

checkMountedDataDisk(api.MountedDataDisk o) {
  buildCounterMountedDataDisk++;
  if (buildCounterMountedDataDisk < 3) {
    unittest.expect(o.dataDisk, unittest.equals('foo'));
  }
  buildCounterMountedDataDisk--;
}

core.int buildCounterMultiOutputInfo = 0;
buildMultiOutputInfo() {
  var o = new api.MultiOutputInfo();
  buildCounterMultiOutputInfo++;
  if (buildCounterMultiOutputInfo < 3) {
    o.tag = "foo";
  }
  buildCounterMultiOutputInfo--;
  return o;
}

checkMultiOutputInfo(api.MultiOutputInfo o) {
  buildCounterMultiOutputInfo++;
  if (buildCounterMultiOutputInfo < 3) {
    unittest.expect(o.tag, unittest.equals('foo'));
  }
  buildCounterMultiOutputInfo--;
}

core.int buildCounterNameAndKind = 0;
buildNameAndKind() {
  var o = new api.NameAndKind();
  buildCounterNameAndKind++;
  if (buildCounterNameAndKind < 3) {
    o.kind = "foo";
    o.name = "foo";
  }
  buildCounterNameAndKind--;
  return o;
}

checkNameAndKind(api.NameAndKind o) {
  buildCounterNameAndKind++;
  if (buildCounterNameAndKind < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterNameAndKind--;
}

core.int buildCounterPackage = 0;
buildPackage() {
  var o = new api.Package();
  buildCounterPackage++;
  if (buildCounterPackage < 3) {
    o.location = "foo";
    o.name = "foo";
  }
  buildCounterPackage--;
  return o;
}

checkPackage(api.Package o) {
  buildCounterPackage++;
  if (buildCounterPackage < 3) {
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterPackage--;
}

buildUnnamed6220() {
  var o = new core.List<api.MultiOutputInfo>();
  o.add(buildMultiOutputInfo());
  o.add(buildMultiOutputInfo());
  return o;
}

checkUnnamed6220(core.List<api.MultiOutputInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMultiOutputInfo(o[0]);
  checkMultiOutputInfo(o[1]);
}

buildUnnamed6221() {
  var o = new core.List<api.SideInputInfo>();
  o.add(buildSideInputInfo());
  o.add(buildSideInputInfo());
  return o;
}

checkUnnamed6221(core.List<api.SideInputInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSideInputInfo(o[0]);
  checkSideInputInfo(o[1]);
}

buildUnnamed6222() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6222(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted23 = (o["x"]) as core.Map;
  unittest.expect(casted23, unittest.hasLength(3));
  unittest.expect(casted23["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted23["bool"], unittest.equals(true));
  unittest.expect(casted23["string"], unittest.equals('foo'));
  var casted24 = (o["y"]) as core.Map;
  unittest.expect(casted24, unittest.hasLength(3));
  unittest.expect(casted24["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted24["bool"], unittest.equals(true));
  unittest.expect(casted24["string"], unittest.equals('foo'));
}

core.int buildCounterParDoInstruction = 0;
buildParDoInstruction() {
  var o = new api.ParDoInstruction();
  buildCounterParDoInstruction++;
  if (buildCounterParDoInstruction < 3) {
    o.input = buildInstructionInput();
    o.multiOutputInfos = buildUnnamed6220();
    o.numOutputs = 42;
    o.sideInputs = buildUnnamed6221();
    o.userFn = buildUnnamed6222();
  }
  buildCounterParDoInstruction--;
  return o;
}

checkParDoInstruction(api.ParDoInstruction o) {
  buildCounterParDoInstruction++;
  if (buildCounterParDoInstruction < 3) {
    checkInstructionInput(o.input);
    checkUnnamed6220(o.multiOutputInfos);
    unittest.expect(o.numOutputs, unittest.equals(42));
    checkUnnamed6221(o.sideInputs);
    checkUnnamed6222(o.userFn);
  }
  buildCounterParDoInstruction--;
}

buildUnnamed6223() {
  var o = new core.List<api.InstructionOutput>();
  o.add(buildInstructionOutput());
  o.add(buildInstructionOutput());
  return o;
}

checkUnnamed6223(core.List<api.InstructionOutput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstructionOutput(o[0]);
  checkInstructionOutput(o[1]);
}

core.int buildCounterParallelInstruction = 0;
buildParallelInstruction() {
  var o = new api.ParallelInstruction();
  buildCounterParallelInstruction++;
  if (buildCounterParallelInstruction < 3) {
    o.flatten = buildFlattenInstruction();
    o.name = "foo";
    o.originalName = "foo";
    o.outputs = buildUnnamed6223();
    o.parDo = buildParDoInstruction();
    o.partialGroupByKey = buildPartialGroupByKeyInstruction();
    o.read = buildReadInstruction();
    o.systemName = "foo";
    o.write = buildWriteInstruction();
  }
  buildCounterParallelInstruction--;
  return o;
}

checkParallelInstruction(api.ParallelInstruction o) {
  buildCounterParallelInstruction++;
  if (buildCounterParallelInstruction < 3) {
    checkFlattenInstruction(o.flatten);
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.originalName, unittest.equals('foo'));
    checkUnnamed6223(o.outputs);
    checkParDoInstruction(o.parDo);
    checkPartialGroupByKeyInstruction(o.partialGroupByKey);
    checkReadInstruction(o.read);
    unittest.expect(o.systemName, unittest.equals('foo'));
    checkWriteInstruction(o.write);
  }
  buildCounterParallelInstruction--;
}

core.int buildCounterParameter = 0;
buildParameter() {
  var o = new api.Parameter();
  buildCounterParameter++;
  if (buildCounterParameter < 3) {
    o.key = "foo";
    o.value = {
      'list': [1, 2, 3],
      'bool': true,
      'string': 'foo'
    };
  }
  buildCounterParameter--;
  return o;
}

checkParameter(api.Parameter o) {
  buildCounterParameter++;
  if (buildCounterParameter < 3) {
    unittest.expect(o.key, unittest.equals('foo'));
    var casted25 = (o.value) as core.Map;
    unittest.expect(casted25, unittest.hasLength(3));
    unittest.expect(casted25["list"], unittest.equals([1, 2, 3]));
    unittest.expect(casted25["bool"], unittest.equals(true));
    unittest.expect(casted25["string"], unittest.equals('foo'));
  }
  buildCounterParameter--;
}

buildUnnamed6224() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6224(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterParameterMetadata = 0;
buildParameterMetadata() {
  var o = new api.ParameterMetadata();
  buildCounterParameterMetadata++;
  if (buildCounterParameterMetadata < 3) {
    o.helpText = "foo";
    o.isOptional = true;
    o.label = "foo";
    o.name = "foo";
    o.paramType = "foo";
    o.regexes = buildUnnamed6224();
  }
  buildCounterParameterMetadata--;
  return o;
}

checkParameterMetadata(api.ParameterMetadata o) {
  buildCounterParameterMetadata++;
  if (buildCounterParameterMetadata < 3) {
    unittest.expect(o.helpText, unittest.equals('foo'));
    unittest.expect(o.isOptional, unittest.isTrue);
    unittest.expect(o.label, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.paramType, unittest.equals('foo'));
    checkUnnamed6224(o.regexes);
  }
  buildCounterParameterMetadata--;
}

buildUnnamed6225() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6225(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted26 = (o["x"]) as core.Map;
  unittest.expect(casted26, unittest.hasLength(3));
  unittest.expect(casted26["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted26["bool"], unittest.equals(true));
  unittest.expect(casted26["string"], unittest.equals('foo'));
  var casted27 = (o["y"]) as core.Map;
  unittest.expect(casted27, unittest.hasLength(3));
  unittest.expect(casted27["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted27["bool"], unittest.equals(true));
  unittest.expect(casted27["string"], unittest.equals('foo'));
}

buildUnnamed6226() {
  var o = new core.List<api.SideInputInfo>();
  o.add(buildSideInputInfo());
  o.add(buildSideInputInfo());
  return o;
}

checkUnnamed6226(core.List<api.SideInputInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSideInputInfo(o[0]);
  checkSideInputInfo(o[1]);
}

buildUnnamed6227() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6227(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted28 = (o["x"]) as core.Map;
  unittest.expect(casted28, unittest.hasLength(3));
  unittest.expect(casted28["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted28["bool"], unittest.equals(true));
  unittest.expect(casted28["string"], unittest.equals('foo'));
  var casted29 = (o["y"]) as core.Map;
  unittest.expect(casted29, unittest.hasLength(3));
  unittest.expect(casted29["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted29["bool"], unittest.equals(true));
  unittest.expect(casted29["string"], unittest.equals('foo'));
}

core.int buildCounterPartialGroupByKeyInstruction = 0;
buildPartialGroupByKeyInstruction() {
  var o = new api.PartialGroupByKeyInstruction();
  buildCounterPartialGroupByKeyInstruction++;
  if (buildCounterPartialGroupByKeyInstruction < 3) {
    o.input = buildInstructionInput();
    o.inputElementCodec = buildUnnamed6225();
    o.originalCombineValuesInputStoreName = "foo";
    o.originalCombineValuesStepName = "foo";
    o.sideInputs = buildUnnamed6226();
    o.valueCombiningFn = buildUnnamed6227();
  }
  buildCounterPartialGroupByKeyInstruction--;
  return o;
}

checkPartialGroupByKeyInstruction(api.PartialGroupByKeyInstruction o) {
  buildCounterPartialGroupByKeyInstruction++;
  if (buildCounterPartialGroupByKeyInstruction < 3) {
    checkInstructionInput(o.input);
    checkUnnamed6225(o.inputElementCodec);
    unittest.expect(
        o.originalCombineValuesInputStoreName, unittest.equals('foo'));
    unittest.expect(o.originalCombineValuesStepName, unittest.equals('foo'));
    checkUnnamed6226(o.sideInputs);
    checkUnnamed6227(o.valueCombiningFn);
  }
  buildCounterPartialGroupByKeyInstruction--;
}

buildUnnamed6228() {
  var o = new core.List<api.DisplayData>();
  o.add(buildDisplayData());
  o.add(buildDisplayData());
  return o;
}

checkUnnamed6228(core.List<api.DisplayData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisplayData(o[0]);
  checkDisplayData(o[1]);
}

buildUnnamed6229() {
  var o = new core.List<api.ExecutionStageSummary>();
  o.add(buildExecutionStageSummary());
  o.add(buildExecutionStageSummary());
  return o;
}

checkUnnamed6229(core.List<api.ExecutionStageSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecutionStageSummary(o[0]);
  checkExecutionStageSummary(o[1]);
}

buildUnnamed6230() {
  var o = new core.List<api.TransformSummary>();
  o.add(buildTransformSummary());
  o.add(buildTransformSummary());
  return o;
}

checkUnnamed6230(core.List<api.TransformSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTransformSummary(o[0]);
  checkTransformSummary(o[1]);
}

core.int buildCounterPipelineDescription = 0;
buildPipelineDescription() {
  var o = new api.PipelineDescription();
  buildCounterPipelineDescription++;
  if (buildCounterPipelineDescription < 3) {
    o.displayData = buildUnnamed6228();
    o.executionPipelineStage = buildUnnamed6229();
    o.originalPipelineTransform = buildUnnamed6230();
  }
  buildCounterPipelineDescription--;
  return o;
}

checkPipelineDescription(api.PipelineDescription o) {
  buildCounterPipelineDescription++;
  if (buildCounterPipelineDescription < 3) {
    checkUnnamed6228(o.displayData);
    checkUnnamed6229(o.executionPipelineStage);
    checkUnnamed6230(o.originalPipelineTransform);
  }
  buildCounterPipelineDescription--;
}

core.int buildCounterPosition = 0;
buildPosition() {
  var o = new api.Position();
  buildCounterPosition++;
  if (buildCounterPosition < 3) {
    o.byteOffset = "foo";
    o.concatPosition = buildConcatPosition();
    o.end = true;
    o.key = "foo";
    o.recordIndex = "foo";
    o.shufflePosition = "foo";
  }
  buildCounterPosition--;
  return o;
}

checkPosition(api.Position o) {
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

core.int buildCounterPubSubIODetails = 0;
buildPubSubIODetails() {
  var o = new api.PubSubIODetails();
  buildCounterPubSubIODetails++;
  if (buildCounterPubSubIODetails < 3) {
    o.subscription = "foo";
    o.topic = "foo";
  }
  buildCounterPubSubIODetails--;
  return o;
}

checkPubSubIODetails(api.PubSubIODetails o) {
  buildCounterPubSubIODetails++;
  if (buildCounterPubSubIODetails < 3) {
    unittest.expect(o.subscription, unittest.equals('foo'));
    unittest.expect(o.topic, unittest.equals('foo'));
  }
  buildCounterPubSubIODetails--;
}

core.int buildCounterPubsubLocation = 0;
buildPubsubLocation() {
  var o = new api.PubsubLocation();
  buildCounterPubsubLocation++;
  if (buildCounterPubsubLocation < 3) {
    o.dropLateData = true;
    o.idLabel = "foo";
    o.subscription = "foo";
    o.timestampLabel = "foo";
    o.topic = "foo";
    o.trackingSubscription = "foo";
    o.withAttributes = true;
  }
  buildCounterPubsubLocation--;
  return o;
}

checkPubsubLocation(api.PubsubLocation o) {
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
buildPubsubSnapshotMetadata() {
  var o = new api.PubsubSnapshotMetadata();
  buildCounterPubsubSnapshotMetadata++;
  if (buildCounterPubsubSnapshotMetadata < 3) {
    o.expireTime = "foo";
    o.snapshotName = "foo";
    o.topicName = "foo";
  }
  buildCounterPubsubSnapshotMetadata--;
  return o;
}

checkPubsubSnapshotMetadata(api.PubsubSnapshotMetadata o) {
  buildCounterPubsubSnapshotMetadata++;
  if (buildCounterPubsubSnapshotMetadata < 3) {
    unittest.expect(o.expireTime, unittest.equals('foo'));
    unittest.expect(o.snapshotName, unittest.equals('foo'));
    unittest.expect(o.topicName, unittest.equals('foo'));
  }
  buildCounterPubsubSnapshotMetadata--;
}

core.int buildCounterReadInstruction = 0;
buildReadInstruction() {
  var o = new api.ReadInstruction();
  buildCounterReadInstruction++;
  if (buildCounterReadInstruction < 3) {
    o.source = buildSource();
  }
  buildCounterReadInstruction--;
  return o;
}

checkReadInstruction(api.ReadInstruction o) {
  buildCounterReadInstruction++;
  if (buildCounterReadInstruction < 3) {
    checkSource(o.source);
  }
  buildCounterReadInstruction--;
}

buildUnnamed6231() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6231(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted30 = (o["x"]) as core.Map;
  unittest.expect(casted30, unittest.hasLength(3));
  unittest.expect(casted30["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted30["bool"], unittest.equals(true));
  unittest.expect(casted30["string"], unittest.equals('foo'));
  var casted31 = (o["y"]) as core.Map;
  unittest.expect(casted31, unittest.hasLength(3));
  unittest.expect(casted31["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted31["bool"], unittest.equals(true));
  unittest.expect(casted31["string"], unittest.equals('foo'));
}

buildUnnamed6232() {
  var o = new core.List<api.WorkItemStatus>();
  o.add(buildWorkItemStatus());
  o.add(buildWorkItemStatus());
  return o;
}

checkUnnamed6232(core.List<api.WorkItemStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkItemStatus(o[0]);
  checkWorkItemStatus(o[1]);
}

core.int buildCounterReportWorkItemStatusRequest = 0;
buildReportWorkItemStatusRequest() {
  var o = new api.ReportWorkItemStatusRequest();
  buildCounterReportWorkItemStatusRequest++;
  if (buildCounterReportWorkItemStatusRequest < 3) {
    o.currentWorkerTime = "foo";
    o.location = "foo";
    o.unifiedWorkerRequest = buildUnnamed6231();
    o.workItemStatuses = buildUnnamed6232();
    o.workerId = "foo";
  }
  buildCounterReportWorkItemStatusRequest--;
  return o;
}

checkReportWorkItemStatusRequest(api.ReportWorkItemStatusRequest o) {
  buildCounterReportWorkItemStatusRequest++;
  if (buildCounterReportWorkItemStatusRequest < 3) {
    unittest.expect(o.currentWorkerTime, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    checkUnnamed6231(o.unifiedWorkerRequest);
    checkUnnamed6232(o.workItemStatuses);
    unittest.expect(o.workerId, unittest.equals('foo'));
  }
  buildCounterReportWorkItemStatusRequest--;
}

buildUnnamed6233() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6233(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted32 = (o["x"]) as core.Map;
  unittest.expect(casted32, unittest.hasLength(3));
  unittest.expect(casted32["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted32["bool"], unittest.equals(true));
  unittest.expect(casted32["string"], unittest.equals('foo'));
  var casted33 = (o["y"]) as core.Map;
  unittest.expect(casted33, unittest.hasLength(3));
  unittest.expect(casted33["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted33["bool"], unittest.equals(true));
  unittest.expect(casted33["string"], unittest.equals('foo'));
}

buildUnnamed6234() {
  var o = new core.List<api.WorkItemServiceState>();
  o.add(buildWorkItemServiceState());
  o.add(buildWorkItemServiceState());
  return o;
}

checkUnnamed6234(core.List<api.WorkItemServiceState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkItemServiceState(o[0]);
  checkWorkItemServiceState(o[1]);
}

core.int buildCounterReportWorkItemStatusResponse = 0;
buildReportWorkItemStatusResponse() {
  var o = new api.ReportWorkItemStatusResponse();
  buildCounterReportWorkItemStatusResponse++;
  if (buildCounterReportWorkItemStatusResponse < 3) {
    o.unifiedWorkerResponse = buildUnnamed6233();
    o.workItemServiceStates = buildUnnamed6234();
  }
  buildCounterReportWorkItemStatusResponse--;
  return o;
}

checkReportWorkItemStatusResponse(api.ReportWorkItemStatusResponse o) {
  buildCounterReportWorkItemStatusResponse++;
  if (buildCounterReportWorkItemStatusResponse < 3) {
    checkUnnamed6233(o.unifiedWorkerResponse);
    checkUnnamed6234(o.workItemServiceStates);
  }
  buildCounterReportWorkItemStatusResponse--;
}

core.int buildCounterReportedParallelism = 0;
buildReportedParallelism() {
  var o = new api.ReportedParallelism();
  buildCounterReportedParallelism++;
  if (buildCounterReportedParallelism < 3) {
    o.isInfinite = true;
    o.value = 42.0;
  }
  buildCounterReportedParallelism--;
  return o;
}

checkReportedParallelism(api.ReportedParallelism o) {
  buildCounterReportedParallelism++;
  if (buildCounterReportedParallelism < 3) {
    unittest.expect(o.isInfinite, unittest.isTrue);
    unittest.expect(o.value, unittest.equals(42.0));
  }
  buildCounterReportedParallelism--;
}

buildUnnamed6235() {
  var o = new core.Map<core.String, api.ResourceUtilizationReport>();
  o["x"] = buildResourceUtilizationReport();
  o["y"] = buildResourceUtilizationReport();
  return o;
}

checkUnnamed6235(core.Map<core.String, api.ResourceUtilizationReport> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceUtilizationReport(o["x"]);
  checkResourceUtilizationReport(o["y"]);
}

buildUnnamed6236() {
  var o = new core.List<api.CPUTime>();
  o.add(buildCPUTime());
  o.add(buildCPUTime());
  return o;
}

checkUnnamed6236(core.List<api.CPUTime> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCPUTime(o[0]);
  checkCPUTime(o[1]);
}

buildUnnamed6237() {
  var o = new core.List<api.MemInfo>();
  o.add(buildMemInfo());
  o.add(buildMemInfo());
  return o;
}

checkUnnamed6237(core.List<api.MemInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMemInfo(o[0]);
  checkMemInfo(o[1]);
}

core.int buildCounterResourceUtilizationReport = 0;
buildResourceUtilizationReport() {
  var o = new api.ResourceUtilizationReport();
  buildCounterResourceUtilizationReport++;
  if (buildCounterResourceUtilizationReport < 3) {
    o.containers = buildUnnamed6235();
    o.cpuTime = buildUnnamed6236();
    o.memoryInfo = buildUnnamed6237();
  }
  buildCounterResourceUtilizationReport--;
  return o;
}

checkResourceUtilizationReport(api.ResourceUtilizationReport o) {
  buildCounterResourceUtilizationReport++;
  if (buildCounterResourceUtilizationReport < 3) {
    checkUnnamed6235(o.containers);
    checkUnnamed6236(o.cpuTime);
    checkUnnamed6237(o.memoryInfo);
  }
  buildCounterResourceUtilizationReport--;
}

core.int buildCounterResourceUtilizationReportResponse = 0;
buildResourceUtilizationReportResponse() {
  var o = new api.ResourceUtilizationReportResponse();
  buildCounterResourceUtilizationReportResponse++;
  if (buildCounterResourceUtilizationReportResponse < 3) {}
  buildCounterResourceUtilizationReportResponse--;
  return o;
}

checkResourceUtilizationReportResponse(
    api.ResourceUtilizationReportResponse o) {
  buildCounterResourceUtilizationReportResponse++;
  if (buildCounterResourceUtilizationReportResponse < 3) {}
  buildCounterResourceUtilizationReportResponse--;
}

buildUnnamed6238() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6238(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed6239() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed6239(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterRuntimeEnvironment = 0;
buildRuntimeEnvironment() {
  var o = new api.RuntimeEnvironment();
  buildCounterRuntimeEnvironment++;
  if (buildCounterRuntimeEnvironment < 3) {
    o.additionalExperiments = buildUnnamed6238();
    o.additionalUserLabels = buildUnnamed6239();
    o.bypassTempDirValidation = true;
    o.ipConfiguration = "foo";
    o.kmsKeyName = "foo";
    o.machineType = "foo";
    o.maxWorkers = 42;
    o.network = "foo";
    o.numWorkers = 42;
    o.serviceAccountEmail = "foo";
    o.subnetwork = "foo";
    o.tempLocation = "foo";
    o.workerRegion = "foo";
    o.workerZone = "foo";
    o.zone = "foo";
  }
  buildCounterRuntimeEnvironment--;
  return o;
}

checkRuntimeEnvironment(api.RuntimeEnvironment o) {
  buildCounterRuntimeEnvironment++;
  if (buildCounterRuntimeEnvironment < 3) {
    checkUnnamed6238(o.additionalExperiments);
    checkUnnamed6239(o.additionalUserLabels);
    unittest.expect(o.bypassTempDirValidation, unittest.isTrue);
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

buildUnnamed6240() {
  var o = new core.List<api.ParameterMetadata>();
  o.add(buildParameterMetadata());
  o.add(buildParameterMetadata());
  return o;
}

checkUnnamed6240(core.List<api.ParameterMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameterMetadata(o[0]);
  checkParameterMetadata(o[1]);
}

core.int buildCounterRuntimeMetadata = 0;
buildRuntimeMetadata() {
  var o = new api.RuntimeMetadata();
  buildCounterRuntimeMetadata++;
  if (buildCounterRuntimeMetadata < 3) {
    o.parameters = buildUnnamed6240();
    o.sdkInfo = buildSDKInfo();
  }
  buildCounterRuntimeMetadata--;
  return o;
}

checkRuntimeMetadata(api.RuntimeMetadata o) {
  buildCounterRuntimeMetadata++;
  if (buildCounterRuntimeMetadata < 3) {
    checkUnnamed6240(o.parameters);
    checkSDKInfo(o.sdkInfo);
  }
  buildCounterRuntimeMetadata--;
}

core.int buildCounterSDKInfo = 0;
buildSDKInfo() {
  var o = new api.SDKInfo();
  buildCounterSDKInfo++;
  if (buildCounterSDKInfo < 3) {
    o.language = "foo";
    o.version = "foo";
  }
  buildCounterSDKInfo--;
  return o;
}

checkSDKInfo(api.SDKInfo o) {
  buildCounterSDKInfo++;
  if (buildCounterSDKInfo < 3) {
    unittest.expect(o.language, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
  }
  buildCounterSDKInfo--;
}

core.int buildCounterSdkHarnessContainerImage = 0;
buildSdkHarnessContainerImage() {
  var o = new api.SdkHarnessContainerImage();
  buildCounterSdkHarnessContainerImage++;
  if (buildCounterSdkHarnessContainerImage < 3) {
    o.containerImage = "foo";
    o.useSingleCorePerContainer = true;
  }
  buildCounterSdkHarnessContainerImage--;
  return o;
}

checkSdkHarnessContainerImage(api.SdkHarnessContainerImage o) {
  buildCounterSdkHarnessContainerImage++;
  if (buildCounterSdkHarnessContainerImage < 3) {
    unittest.expect(o.containerImage, unittest.equals('foo'));
    unittest.expect(o.useSingleCorePerContainer, unittest.isTrue);
  }
  buildCounterSdkHarnessContainerImage--;
}

core.int buildCounterSdkVersion = 0;
buildSdkVersion() {
  var o = new api.SdkVersion();
  buildCounterSdkVersion++;
  if (buildCounterSdkVersion < 3) {
    o.sdkSupportStatus = "foo";
    o.version = "foo";
    o.versionDisplayName = "foo";
  }
  buildCounterSdkVersion--;
  return o;
}

checkSdkVersion(api.SdkVersion o) {
  buildCounterSdkVersion++;
  if (buildCounterSdkVersion < 3) {
    unittest.expect(o.sdkSupportStatus, unittest.equals('foo'));
    unittest.expect(o.version, unittest.equals('foo'));
    unittest.expect(o.versionDisplayName, unittest.equals('foo'));
  }
  buildCounterSdkVersion--;
}

core.int buildCounterSendDebugCaptureRequest = 0;
buildSendDebugCaptureRequest() {
  var o = new api.SendDebugCaptureRequest();
  buildCounterSendDebugCaptureRequest++;
  if (buildCounterSendDebugCaptureRequest < 3) {
    o.componentId = "foo";
    o.data = "foo";
    o.location = "foo";
    o.workerId = "foo";
  }
  buildCounterSendDebugCaptureRequest--;
  return o;
}

checkSendDebugCaptureRequest(api.SendDebugCaptureRequest o) {
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
buildSendDebugCaptureResponse() {
  var o = new api.SendDebugCaptureResponse();
  buildCounterSendDebugCaptureResponse++;
  if (buildCounterSendDebugCaptureResponse < 3) {}
  buildCounterSendDebugCaptureResponse--;
  return o;
}

checkSendDebugCaptureResponse(api.SendDebugCaptureResponse o) {
  buildCounterSendDebugCaptureResponse++;
  if (buildCounterSendDebugCaptureResponse < 3) {}
  buildCounterSendDebugCaptureResponse--;
}

buildUnnamed6241() {
  var o = new core.List<api.WorkerMessage>();
  o.add(buildWorkerMessage());
  o.add(buildWorkerMessage());
  return o;
}

checkUnnamed6241(core.List<api.WorkerMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkerMessage(o[0]);
  checkWorkerMessage(o[1]);
}

core.int buildCounterSendWorkerMessagesRequest = 0;
buildSendWorkerMessagesRequest() {
  var o = new api.SendWorkerMessagesRequest();
  buildCounterSendWorkerMessagesRequest++;
  if (buildCounterSendWorkerMessagesRequest < 3) {
    o.location = "foo";
    o.workerMessages = buildUnnamed6241();
  }
  buildCounterSendWorkerMessagesRequest--;
  return o;
}

checkSendWorkerMessagesRequest(api.SendWorkerMessagesRequest o) {
  buildCounterSendWorkerMessagesRequest++;
  if (buildCounterSendWorkerMessagesRequest < 3) {
    unittest.expect(o.location, unittest.equals('foo'));
    checkUnnamed6241(o.workerMessages);
  }
  buildCounterSendWorkerMessagesRequest--;
}

buildUnnamed6242() {
  var o = new core.List<api.WorkerMessageResponse>();
  o.add(buildWorkerMessageResponse());
  o.add(buildWorkerMessageResponse());
  return o;
}

checkUnnamed6242(core.List<api.WorkerMessageResponse> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkerMessageResponse(o[0]);
  checkWorkerMessageResponse(o[1]);
}

core.int buildCounterSendWorkerMessagesResponse = 0;
buildSendWorkerMessagesResponse() {
  var o = new api.SendWorkerMessagesResponse();
  buildCounterSendWorkerMessagesResponse++;
  if (buildCounterSendWorkerMessagesResponse < 3) {
    o.workerMessageResponses = buildUnnamed6242();
  }
  buildCounterSendWorkerMessagesResponse--;
  return o;
}

checkSendWorkerMessagesResponse(api.SendWorkerMessagesResponse o) {
  buildCounterSendWorkerMessagesResponse++;
  if (buildCounterSendWorkerMessagesResponse < 3) {
    checkUnnamed6242(o.workerMessageResponses);
  }
  buildCounterSendWorkerMessagesResponse--;
}

buildUnnamed6243() {
  var o = new core.List<api.SideInputInfo>();
  o.add(buildSideInputInfo());
  o.add(buildSideInputInfo());
  return o;
}

checkUnnamed6243(core.List<api.SideInputInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSideInputInfo(o[0]);
  checkSideInputInfo(o[1]);
}

buildUnnamed6244() {
  var o = new core.List<api.SeqMapTaskOutputInfo>();
  o.add(buildSeqMapTaskOutputInfo());
  o.add(buildSeqMapTaskOutputInfo());
  return o;
}

checkUnnamed6244(core.List<api.SeqMapTaskOutputInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSeqMapTaskOutputInfo(o[0]);
  checkSeqMapTaskOutputInfo(o[1]);
}

buildUnnamed6245() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6245(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted34 = (o["x"]) as core.Map;
  unittest.expect(casted34, unittest.hasLength(3));
  unittest.expect(casted34["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted34["bool"], unittest.equals(true));
  unittest.expect(casted34["string"], unittest.equals('foo'));
  var casted35 = (o["y"]) as core.Map;
  unittest.expect(casted35, unittest.hasLength(3));
  unittest.expect(casted35["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted35["bool"], unittest.equals(true));
  unittest.expect(casted35["string"], unittest.equals('foo'));
}

core.int buildCounterSeqMapTask = 0;
buildSeqMapTask() {
  var o = new api.SeqMapTask();
  buildCounterSeqMapTask++;
  if (buildCounterSeqMapTask < 3) {
    o.inputs = buildUnnamed6243();
    o.name = "foo";
    o.outputInfos = buildUnnamed6244();
    o.stageName = "foo";
    o.systemName = "foo";
    o.userFn = buildUnnamed6245();
  }
  buildCounterSeqMapTask--;
  return o;
}

checkSeqMapTask(api.SeqMapTask o) {
  buildCounterSeqMapTask++;
  if (buildCounterSeqMapTask < 3) {
    checkUnnamed6243(o.inputs);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6244(o.outputInfos);
    unittest.expect(o.stageName, unittest.equals('foo'));
    unittest.expect(o.systemName, unittest.equals('foo'));
    checkUnnamed6245(o.userFn);
  }
  buildCounterSeqMapTask--;
}

core.int buildCounterSeqMapTaskOutputInfo = 0;
buildSeqMapTaskOutputInfo() {
  var o = new api.SeqMapTaskOutputInfo();
  buildCounterSeqMapTaskOutputInfo++;
  if (buildCounterSeqMapTaskOutputInfo < 3) {
    o.sink = buildSink();
    o.tag = "foo";
  }
  buildCounterSeqMapTaskOutputInfo--;
  return o;
}

checkSeqMapTaskOutputInfo(api.SeqMapTaskOutputInfo o) {
  buildCounterSeqMapTaskOutputInfo++;
  if (buildCounterSeqMapTaskOutputInfo < 3) {
    checkSink(o.sink);
    unittest.expect(o.tag, unittest.equals('foo'));
  }
  buildCounterSeqMapTaskOutputInfo--;
}

core.int buildCounterShellTask = 0;
buildShellTask() {
  var o = new api.ShellTask();
  buildCounterShellTask++;
  if (buildCounterShellTask < 3) {
    o.command = "foo";
    o.exitCode = 42;
  }
  buildCounterShellTask--;
  return o;
}

checkShellTask(api.ShellTask o) {
  buildCounterShellTask++;
  if (buildCounterShellTask < 3) {
    unittest.expect(o.command, unittest.equals('foo'));
    unittest.expect(o.exitCode, unittest.equals(42));
  }
  buildCounterShellTask--;
}

buildUnnamed6246() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6246(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted36 = (o["x"]) as core.Map;
  unittest.expect(casted36, unittest.hasLength(3));
  unittest.expect(casted36["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted36["bool"], unittest.equals(true));
  unittest.expect(casted36["string"], unittest.equals('foo'));
  var casted37 = (o["y"]) as core.Map;
  unittest.expect(casted37, unittest.hasLength(3));
  unittest.expect(casted37["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted37["bool"], unittest.equals(true));
  unittest.expect(casted37["string"], unittest.equals('foo'));
}

buildUnnamed6247() {
  var o = new core.List<api.Source>();
  o.add(buildSource());
  o.add(buildSource());
  return o;
}

checkUnnamed6247(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0]);
  checkSource(o[1]);
}

core.int buildCounterSideInputInfo = 0;
buildSideInputInfo() {
  var o = new api.SideInputInfo();
  buildCounterSideInputInfo++;
  if (buildCounterSideInputInfo < 3) {
    o.kind = buildUnnamed6246();
    o.sources = buildUnnamed6247();
    o.tag = "foo";
  }
  buildCounterSideInputInfo--;
  return o;
}

checkSideInputInfo(api.SideInputInfo o) {
  buildCounterSideInputInfo++;
  if (buildCounterSideInputInfo < 3) {
    checkUnnamed6246(o.kind);
    checkUnnamed6247(o.sources);
    unittest.expect(o.tag, unittest.equals('foo'));
  }
  buildCounterSideInputInfo--;
}

buildUnnamed6248() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6248(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted38 = (o["x"]) as core.Map;
  unittest.expect(casted38, unittest.hasLength(3));
  unittest.expect(casted38["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted38["bool"], unittest.equals(true));
  unittest.expect(casted38["string"], unittest.equals('foo'));
  var casted39 = (o["y"]) as core.Map;
  unittest.expect(casted39, unittest.hasLength(3));
  unittest.expect(casted39["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted39["bool"], unittest.equals(true));
  unittest.expect(casted39["string"], unittest.equals('foo'));
}

buildUnnamed6249() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6249(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted40 = (o["x"]) as core.Map;
  unittest.expect(casted40, unittest.hasLength(3));
  unittest.expect(casted40["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted40["bool"], unittest.equals(true));
  unittest.expect(casted40["string"], unittest.equals('foo'));
  var casted41 = (o["y"]) as core.Map;
  unittest.expect(casted41, unittest.hasLength(3));
  unittest.expect(casted41["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted41["bool"], unittest.equals(true));
  unittest.expect(casted41["string"], unittest.equals('foo'));
}

core.int buildCounterSink = 0;
buildSink() {
  var o = new api.Sink();
  buildCounterSink++;
  if (buildCounterSink < 3) {
    o.codec = buildUnnamed6248();
    o.spec = buildUnnamed6249();
  }
  buildCounterSink--;
  return o;
}

checkSink(api.Sink o) {
  buildCounterSink++;
  if (buildCounterSink < 3) {
    checkUnnamed6248(o.codec);
    checkUnnamed6249(o.spec);
  }
  buildCounterSink--;
}

buildUnnamed6250() {
  var o = new core.List<api.PubsubSnapshotMetadata>();
  o.add(buildPubsubSnapshotMetadata());
  o.add(buildPubsubSnapshotMetadata());
  return o;
}

checkUnnamed6250(core.List<api.PubsubSnapshotMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPubsubSnapshotMetadata(o[0]);
  checkPubsubSnapshotMetadata(o[1]);
}

core.int buildCounterSnapshot = 0;
buildSnapshot() {
  var o = new api.Snapshot();
  buildCounterSnapshot++;
  if (buildCounterSnapshot < 3) {
    o.creationTime = "foo";
    o.description = "foo";
    o.diskSizeBytes = "foo";
    o.id = "foo";
    o.projectId = "foo";
    o.pubsubMetadata = buildUnnamed6250();
    o.sourceJobId = "foo";
    o.state = "foo";
    o.ttl = "foo";
  }
  buildCounterSnapshot--;
  return o;
}

checkSnapshot(api.Snapshot o) {
  buildCounterSnapshot++;
  if (buildCounterSnapshot < 3) {
    unittest.expect(o.creationTime, unittest.equals('foo'));
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.diskSizeBytes, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    checkUnnamed6250(o.pubsubMetadata);
    unittest.expect(o.sourceJobId, unittest.equals('foo'));
    unittest.expect(o.state, unittest.equals('foo'));
    unittest.expect(o.ttl, unittest.equals('foo'));
  }
  buildCounterSnapshot--;
}

core.int buildCounterSnapshotJobRequest = 0;
buildSnapshotJobRequest() {
  var o = new api.SnapshotJobRequest();
  buildCounterSnapshotJobRequest++;
  if (buildCounterSnapshotJobRequest < 3) {
    o.description = "foo";
    o.location = "foo";
    o.snapshotSources = true;
    o.ttl = "foo";
  }
  buildCounterSnapshotJobRequest--;
  return o;
}

checkSnapshotJobRequest(api.SnapshotJobRequest o) {
  buildCounterSnapshotJobRequest++;
  if (buildCounterSnapshotJobRequest < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.location, unittest.equals('foo'));
    unittest.expect(o.snapshotSources, unittest.isTrue);
    unittest.expect(o.ttl, unittest.equals('foo'));
  }
  buildCounterSnapshotJobRequest--;
}

buildUnnamed6251() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6251(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted42 = (o["x"]) as core.Map;
  unittest.expect(casted42, unittest.hasLength(3));
  unittest.expect(casted42["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted42["bool"], unittest.equals(true));
  unittest.expect(casted42["string"], unittest.equals('foo'));
  var casted43 = (o["y"]) as core.Map;
  unittest.expect(casted43, unittest.hasLength(3));
  unittest.expect(casted43["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted43["bool"], unittest.equals(true));
  unittest.expect(casted43["string"], unittest.equals('foo'));
}

buildUnnamed6252() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed6251());
  o.add(buildUnnamed6251());
  return o;
}

checkUnnamed6252(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed6251(o[0]);
  checkUnnamed6251(o[1]);
}

buildUnnamed6253() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6253(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted44 = (o["x"]) as core.Map;
  unittest.expect(casted44, unittest.hasLength(3));
  unittest.expect(casted44["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted44["bool"], unittest.equals(true));
  unittest.expect(casted44["string"], unittest.equals('foo'));
  var casted45 = (o["y"]) as core.Map;
  unittest.expect(casted45, unittest.hasLength(3));
  unittest.expect(casted45["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted45["bool"], unittest.equals(true));
  unittest.expect(casted45["string"], unittest.equals('foo'));
}

buildUnnamed6254() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6254(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted46 = (o["x"]) as core.Map;
  unittest.expect(casted46, unittest.hasLength(3));
  unittest.expect(casted46["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted46["bool"], unittest.equals(true));
  unittest.expect(casted46["string"], unittest.equals('foo'));
  var casted47 = (o["y"]) as core.Map;
  unittest.expect(casted47, unittest.hasLength(3));
  unittest.expect(casted47["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted47["bool"], unittest.equals(true));
  unittest.expect(casted47["string"], unittest.equals('foo'));
}

core.int buildCounterSource = 0;
buildSource() {
  var o = new api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.baseSpecs = buildUnnamed6252();
    o.codec = buildUnnamed6253();
    o.doesNotNeedSplitting = true;
    o.metadata = buildSourceMetadata();
    o.spec = buildUnnamed6254();
  }
  buildCounterSource--;
  return o;
}

checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    checkUnnamed6252(o.baseSpecs);
    checkUnnamed6253(o.codec);
    unittest.expect(o.doesNotNeedSplitting, unittest.isTrue);
    checkSourceMetadata(o.metadata);
    checkUnnamed6254(o.spec);
  }
  buildCounterSource--;
}

core.int buildCounterSourceFork = 0;
buildSourceFork() {
  var o = new api.SourceFork();
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

checkSourceFork(api.SourceFork o) {
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
buildSourceGetMetadataRequest() {
  var o = new api.SourceGetMetadataRequest();
  buildCounterSourceGetMetadataRequest++;
  if (buildCounterSourceGetMetadataRequest < 3) {
    o.source = buildSource();
  }
  buildCounterSourceGetMetadataRequest--;
  return o;
}

checkSourceGetMetadataRequest(api.SourceGetMetadataRequest o) {
  buildCounterSourceGetMetadataRequest++;
  if (buildCounterSourceGetMetadataRequest < 3) {
    checkSource(o.source);
  }
  buildCounterSourceGetMetadataRequest--;
}

core.int buildCounterSourceGetMetadataResponse = 0;
buildSourceGetMetadataResponse() {
  var o = new api.SourceGetMetadataResponse();
  buildCounterSourceGetMetadataResponse++;
  if (buildCounterSourceGetMetadataResponse < 3) {
    o.metadata = buildSourceMetadata();
  }
  buildCounterSourceGetMetadataResponse--;
  return o;
}

checkSourceGetMetadataResponse(api.SourceGetMetadataResponse o) {
  buildCounterSourceGetMetadataResponse++;
  if (buildCounterSourceGetMetadataResponse < 3) {
    checkSourceMetadata(o.metadata);
  }
  buildCounterSourceGetMetadataResponse--;
}

core.int buildCounterSourceMetadata = 0;
buildSourceMetadata() {
  var o = new api.SourceMetadata();
  buildCounterSourceMetadata++;
  if (buildCounterSourceMetadata < 3) {
    o.estimatedSizeBytes = "foo";
    o.infinite = true;
    o.producesSortedKeys = true;
  }
  buildCounterSourceMetadata--;
  return o;
}

checkSourceMetadata(api.SourceMetadata o) {
  buildCounterSourceMetadata++;
  if (buildCounterSourceMetadata < 3) {
    unittest.expect(o.estimatedSizeBytes, unittest.equals('foo'));
    unittest.expect(o.infinite, unittest.isTrue);
    unittest.expect(o.producesSortedKeys, unittest.isTrue);
  }
  buildCounterSourceMetadata--;
}

core.int buildCounterSourceOperationRequest = 0;
buildSourceOperationRequest() {
  var o = new api.SourceOperationRequest();
  buildCounterSourceOperationRequest++;
  if (buildCounterSourceOperationRequest < 3) {
    o.getMetadata = buildSourceGetMetadataRequest();
    o.name = "foo";
    o.originalName = "foo";
    o.split = buildSourceSplitRequest();
    o.stageName = "foo";
    o.systemName = "foo";
  }
  buildCounterSourceOperationRequest--;
  return o;
}

checkSourceOperationRequest(api.SourceOperationRequest o) {
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
buildSourceOperationResponse() {
  var o = new api.SourceOperationResponse();
  buildCounterSourceOperationResponse++;
  if (buildCounterSourceOperationResponse < 3) {
    o.getMetadata = buildSourceGetMetadataResponse();
    o.split = buildSourceSplitResponse();
  }
  buildCounterSourceOperationResponse--;
  return o;
}

checkSourceOperationResponse(api.SourceOperationResponse o) {
  buildCounterSourceOperationResponse++;
  if (buildCounterSourceOperationResponse < 3) {
    checkSourceGetMetadataResponse(o.getMetadata);
    checkSourceSplitResponse(o.split);
  }
  buildCounterSourceOperationResponse--;
}

core.int buildCounterSourceSplitOptions = 0;
buildSourceSplitOptions() {
  var o = new api.SourceSplitOptions();
  buildCounterSourceSplitOptions++;
  if (buildCounterSourceSplitOptions < 3) {
    o.desiredBundleSizeBytes = "foo";
    o.desiredShardSizeBytes = "foo";
  }
  buildCounterSourceSplitOptions--;
  return o;
}

checkSourceSplitOptions(api.SourceSplitOptions o) {
  buildCounterSourceSplitOptions++;
  if (buildCounterSourceSplitOptions < 3) {
    unittest.expect(o.desiredBundleSizeBytes, unittest.equals('foo'));
    unittest.expect(o.desiredShardSizeBytes, unittest.equals('foo'));
  }
  buildCounterSourceSplitOptions--;
}

core.int buildCounterSourceSplitRequest = 0;
buildSourceSplitRequest() {
  var o = new api.SourceSplitRequest();
  buildCounterSourceSplitRequest++;
  if (buildCounterSourceSplitRequest < 3) {
    o.options = buildSourceSplitOptions();
    o.source = buildSource();
  }
  buildCounterSourceSplitRequest--;
  return o;
}

checkSourceSplitRequest(api.SourceSplitRequest o) {
  buildCounterSourceSplitRequest++;
  if (buildCounterSourceSplitRequest < 3) {
    checkSourceSplitOptions(o.options);
    checkSource(o.source);
  }
  buildCounterSourceSplitRequest--;
}

buildUnnamed6255() {
  var o = new core.List<api.DerivedSource>();
  o.add(buildDerivedSource());
  o.add(buildDerivedSource());
  return o;
}

checkUnnamed6255(core.List<api.DerivedSource> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDerivedSource(o[0]);
  checkDerivedSource(o[1]);
}

buildUnnamed6256() {
  var o = new core.List<api.SourceSplitShard>();
  o.add(buildSourceSplitShard());
  o.add(buildSourceSplitShard());
  return o;
}

checkUnnamed6256(core.List<api.SourceSplitShard> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSourceSplitShard(o[0]);
  checkSourceSplitShard(o[1]);
}

core.int buildCounterSourceSplitResponse = 0;
buildSourceSplitResponse() {
  var o = new api.SourceSplitResponse();
  buildCounterSourceSplitResponse++;
  if (buildCounterSourceSplitResponse < 3) {
    o.bundles = buildUnnamed6255();
    o.outcome = "foo";
    o.shards = buildUnnamed6256();
  }
  buildCounterSourceSplitResponse--;
  return o;
}

checkSourceSplitResponse(api.SourceSplitResponse o) {
  buildCounterSourceSplitResponse++;
  if (buildCounterSourceSplitResponse < 3) {
    checkUnnamed6255(o.bundles);
    unittest.expect(o.outcome, unittest.equals('foo'));
    checkUnnamed6256(o.shards);
  }
  buildCounterSourceSplitResponse--;
}

core.int buildCounterSourceSplitShard = 0;
buildSourceSplitShard() {
  var o = new api.SourceSplitShard();
  buildCounterSourceSplitShard++;
  if (buildCounterSourceSplitShard < 3) {
    o.derivationMode = "foo";
    o.source = buildSource();
  }
  buildCounterSourceSplitShard--;
  return o;
}

checkSourceSplitShard(api.SourceSplitShard o) {
  buildCounterSourceSplitShard++;
  if (buildCounterSourceSplitShard < 3) {
    unittest.expect(o.derivationMode, unittest.equals('foo'));
    checkSource(o.source);
  }
  buildCounterSourceSplitShard--;
}

core.int buildCounterSpannerIODetails = 0;
buildSpannerIODetails() {
  var o = new api.SpannerIODetails();
  buildCounterSpannerIODetails++;
  if (buildCounterSpannerIODetails < 3) {
    o.databaseId = "foo";
    o.instanceId = "foo";
    o.projectId = "foo";
  }
  buildCounterSpannerIODetails--;
  return o;
}

checkSpannerIODetails(api.SpannerIODetails o) {
  buildCounterSpannerIODetails++;
  if (buildCounterSpannerIODetails < 3) {
    unittest.expect(o.databaseId, unittest.equals('foo'));
    unittest.expect(o.instanceId, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
  }
  buildCounterSpannerIODetails--;
}

core.int buildCounterSplitInt64 = 0;
buildSplitInt64() {
  var o = new api.SplitInt64();
  buildCounterSplitInt64++;
  if (buildCounterSplitInt64 < 3) {
    o.highBits = 42;
    o.lowBits = 42;
  }
  buildCounterSplitInt64--;
  return o;
}

checkSplitInt64(api.SplitInt64 o) {
  buildCounterSplitInt64++;
  if (buildCounterSplitInt64 < 3) {
    unittest.expect(o.highBits, unittest.equals(42));
    unittest.expect(o.lowBits, unittest.equals(42));
  }
  buildCounterSplitInt64--;
}

core.int buildCounterStageSource = 0;
buildStageSource() {
  var o = new api.StageSource();
  buildCounterStageSource++;
  if (buildCounterStageSource < 3) {
    o.name = "foo";
    o.originalTransformOrCollection = "foo";
    o.sizeBytes = "foo";
    o.userName = "foo";
  }
  buildCounterStageSource--;
  return o;
}

checkStageSource(api.StageSource o) {
  buildCounterStageSource++;
  if (buildCounterStageSource < 3) {
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.originalTransformOrCollection, unittest.equals('foo'));
    unittest.expect(o.sizeBytes, unittest.equals('foo'));
    unittest.expect(o.userName, unittest.equals('foo'));
  }
  buildCounterStageSource--;
}

core.int buildCounterStateFamilyConfig = 0;
buildStateFamilyConfig() {
  var o = new api.StateFamilyConfig();
  buildCounterStateFamilyConfig++;
  if (buildCounterStateFamilyConfig < 3) {
    o.isRead = true;
    o.stateFamily = "foo";
  }
  buildCounterStateFamilyConfig--;
  return o;
}

checkStateFamilyConfig(api.StateFamilyConfig o) {
  buildCounterStateFamilyConfig++;
  if (buildCounterStateFamilyConfig < 3) {
    unittest.expect(o.isRead, unittest.isTrue);
    unittest.expect(o.stateFamily, unittest.equals('foo'));
  }
  buildCounterStateFamilyConfig--;
}

buildUnnamed6257() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6257(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted48 = (o["x"]) as core.Map;
  unittest.expect(casted48, unittest.hasLength(3));
  unittest.expect(casted48["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted48["bool"], unittest.equals(true));
  unittest.expect(casted48["string"], unittest.equals('foo'));
  var casted49 = (o["y"]) as core.Map;
  unittest.expect(casted49, unittest.hasLength(3));
  unittest.expect(casted49["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted49["bool"], unittest.equals(true));
  unittest.expect(casted49["string"], unittest.equals('foo'));
}

buildUnnamed6258() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed6257());
  o.add(buildUnnamed6257());
  return o;
}

checkUnnamed6258(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed6257(o[0]);
  checkUnnamed6257(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed6258();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed6258(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

buildUnnamed6259() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6259(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted50 = (o["x"]) as core.Map;
  unittest.expect(casted50, unittest.hasLength(3));
  unittest.expect(casted50["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted50["bool"], unittest.equals(true));
  unittest.expect(casted50["string"], unittest.equals('foo'));
  var casted51 = (o["y"]) as core.Map;
  unittest.expect(casted51, unittest.hasLength(3));
  unittest.expect(casted51["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted51["bool"], unittest.equals(true));
  unittest.expect(casted51["string"], unittest.equals('foo'));
}

core.int buildCounterStep = 0;
buildStep() {
  var o = new api.Step();
  buildCounterStep++;
  if (buildCounterStep < 3) {
    o.kind = "foo";
    o.name = "foo";
    o.properties = buildUnnamed6259();
  }
  buildCounterStep--;
  return o;
}

checkStep(api.Step o) {
  buildCounterStep++;
  if (buildCounterStep < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6259(o.properties);
  }
  buildCounterStep--;
}

core.int buildCounterStreamLocation = 0;
buildStreamLocation() {
  var o = new api.StreamLocation();
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

checkStreamLocation(api.StreamLocation o) {
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
buildStreamingApplianceSnapshotConfig() {
  var o = new api.StreamingApplianceSnapshotConfig();
  buildCounterStreamingApplianceSnapshotConfig++;
  if (buildCounterStreamingApplianceSnapshotConfig < 3) {
    o.importStateEndpoint = "foo";
    o.snapshotId = "foo";
  }
  buildCounterStreamingApplianceSnapshotConfig--;
  return o;
}

checkStreamingApplianceSnapshotConfig(api.StreamingApplianceSnapshotConfig o) {
  buildCounterStreamingApplianceSnapshotConfig++;
  if (buildCounterStreamingApplianceSnapshotConfig < 3) {
    unittest.expect(o.importStateEndpoint, unittest.equals('foo'));
    unittest.expect(o.snapshotId, unittest.equals('foo'));
  }
  buildCounterStreamingApplianceSnapshotConfig--;
}

buildUnnamed6260() {
  var o = new core.List<api.ParallelInstruction>();
  o.add(buildParallelInstruction());
  o.add(buildParallelInstruction());
  return o;
}

checkUnnamed6260(core.List<api.ParallelInstruction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParallelInstruction(o[0]);
  checkParallelInstruction(o[1]);
}

buildUnnamed6261() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed6261(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterStreamingComputationConfig = 0;
buildStreamingComputationConfig() {
  var o = new api.StreamingComputationConfig();
  buildCounterStreamingComputationConfig++;
  if (buildCounterStreamingComputationConfig < 3) {
    o.computationId = "foo";
    o.instructions = buildUnnamed6260();
    o.stageName = "foo";
    o.systemName = "foo";
    o.transformUserNameToStateFamily = buildUnnamed6261();
  }
  buildCounterStreamingComputationConfig--;
  return o;
}

checkStreamingComputationConfig(api.StreamingComputationConfig o) {
  buildCounterStreamingComputationConfig++;
  if (buildCounterStreamingComputationConfig < 3) {
    unittest.expect(o.computationId, unittest.equals('foo'));
    checkUnnamed6260(o.instructions);
    unittest.expect(o.stageName, unittest.equals('foo'));
    unittest.expect(o.systemName, unittest.equals('foo'));
    checkUnnamed6261(o.transformUserNameToStateFamily);
  }
  buildCounterStreamingComputationConfig--;
}

buildUnnamed6262() {
  var o = new core.List<api.KeyRangeDataDiskAssignment>();
  o.add(buildKeyRangeDataDiskAssignment());
  o.add(buildKeyRangeDataDiskAssignment());
  return o;
}

checkUnnamed6262(core.List<api.KeyRangeDataDiskAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyRangeDataDiskAssignment(o[0]);
  checkKeyRangeDataDiskAssignment(o[1]);
}

core.int buildCounterStreamingComputationRanges = 0;
buildStreamingComputationRanges() {
  var o = new api.StreamingComputationRanges();
  buildCounterStreamingComputationRanges++;
  if (buildCounterStreamingComputationRanges < 3) {
    o.computationId = "foo";
    o.rangeAssignments = buildUnnamed6262();
  }
  buildCounterStreamingComputationRanges--;
  return o;
}

checkStreamingComputationRanges(api.StreamingComputationRanges o) {
  buildCounterStreamingComputationRanges++;
  if (buildCounterStreamingComputationRanges < 3) {
    unittest.expect(o.computationId, unittest.equals('foo'));
    checkUnnamed6262(o.rangeAssignments);
  }
  buildCounterStreamingComputationRanges--;
}

buildUnnamed6263() {
  var o = new core.List<api.StreamingComputationRanges>();
  o.add(buildStreamingComputationRanges());
  o.add(buildStreamingComputationRanges());
  return o;
}

checkUnnamed6263(core.List<api.StreamingComputationRanges> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStreamingComputationRanges(o[0]);
  checkStreamingComputationRanges(o[1]);
}

buildUnnamed6264() {
  var o = new core.List<api.MountedDataDisk>();
  o.add(buildMountedDataDisk());
  o.add(buildMountedDataDisk());
  return o;
}

checkUnnamed6264(core.List<api.MountedDataDisk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMountedDataDisk(o[0]);
  checkMountedDataDisk(o[1]);
}

core.int buildCounterStreamingComputationTask = 0;
buildStreamingComputationTask() {
  var o = new api.StreamingComputationTask();
  buildCounterStreamingComputationTask++;
  if (buildCounterStreamingComputationTask < 3) {
    o.computationRanges = buildUnnamed6263();
    o.dataDisks = buildUnnamed6264();
    o.taskType = "foo";
  }
  buildCounterStreamingComputationTask--;
  return o;
}

checkStreamingComputationTask(api.StreamingComputationTask o) {
  buildCounterStreamingComputationTask++;
  if (buildCounterStreamingComputationTask < 3) {
    checkUnnamed6263(o.computationRanges);
    checkUnnamed6264(o.dataDisks);
    unittest.expect(o.taskType, unittest.equals('foo'));
  }
  buildCounterStreamingComputationTask--;
}

buildUnnamed6265() {
  var o = new core.List<api.StreamingComputationConfig>();
  o.add(buildStreamingComputationConfig());
  o.add(buildStreamingComputationConfig());
  return o;
}

checkUnnamed6265(core.List<api.StreamingComputationConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStreamingComputationConfig(o[0]);
  checkStreamingComputationConfig(o[1]);
}

buildUnnamed6266() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed6266(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterStreamingConfigTask = 0;
buildStreamingConfigTask() {
  var o = new api.StreamingConfigTask();
  buildCounterStreamingConfigTask++;
  if (buildCounterStreamingConfigTask < 3) {
    o.commitStreamChunkSizeBytes = "foo";
    o.getDataStreamChunkSizeBytes = "foo";
    o.maxWorkItemCommitBytes = "foo";
    o.streamingComputationConfigs = buildUnnamed6265();
    o.userStepToStateFamilyNameMap = buildUnnamed6266();
    o.windmillServiceEndpoint = "foo";
    o.windmillServicePort = "foo";
  }
  buildCounterStreamingConfigTask--;
  return o;
}

checkStreamingConfigTask(api.StreamingConfigTask o) {
  buildCounterStreamingConfigTask++;
  if (buildCounterStreamingConfigTask < 3) {
    unittest.expect(o.commitStreamChunkSizeBytes, unittest.equals('foo'));
    unittest.expect(o.getDataStreamChunkSizeBytes, unittest.equals('foo'));
    unittest.expect(o.maxWorkItemCommitBytes, unittest.equals('foo'));
    checkUnnamed6265(o.streamingComputationConfigs);
    checkUnnamed6266(o.userStepToStateFamilyNameMap);
    unittest.expect(o.windmillServiceEndpoint, unittest.equals('foo'));
    unittest.expect(o.windmillServicePort, unittest.equals('foo'));
  }
  buildCounterStreamingConfigTask--;
}

core.int buildCounterStreamingSetupTask = 0;
buildStreamingSetupTask() {
  var o = new api.StreamingSetupTask();
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

checkStreamingSetupTask(api.StreamingSetupTask o) {
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
buildStreamingSideInputLocation() {
  var o = new api.StreamingSideInputLocation();
  buildCounterStreamingSideInputLocation++;
  if (buildCounterStreamingSideInputLocation < 3) {
    o.stateFamily = "foo";
    o.tag = "foo";
  }
  buildCounterStreamingSideInputLocation--;
  return o;
}

checkStreamingSideInputLocation(api.StreamingSideInputLocation o) {
  buildCounterStreamingSideInputLocation++;
  if (buildCounterStreamingSideInputLocation < 3) {
    unittest.expect(o.stateFamily, unittest.equals('foo'));
    unittest.expect(o.tag, unittest.equals('foo'));
  }
  buildCounterStreamingSideInputLocation--;
}

core.int buildCounterStreamingStageLocation = 0;
buildStreamingStageLocation() {
  var o = new api.StreamingStageLocation();
  buildCounterStreamingStageLocation++;
  if (buildCounterStreamingStageLocation < 3) {
    o.streamId = "foo";
  }
  buildCounterStreamingStageLocation--;
  return o;
}

checkStreamingStageLocation(api.StreamingStageLocation o) {
  buildCounterStreamingStageLocation++;
  if (buildCounterStreamingStageLocation < 3) {
    unittest.expect(o.streamId, unittest.equals('foo'));
  }
  buildCounterStreamingStageLocation--;
}

buildUnnamed6267() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6267(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterStringList = 0;
buildStringList() {
  var o = new api.StringList();
  buildCounterStringList++;
  if (buildCounterStringList < 3) {
    o.elements = buildUnnamed6267();
  }
  buildCounterStringList--;
  return o;
}

checkStringList(api.StringList o) {
  buildCounterStringList++;
  if (buildCounterStringList < 3) {
    checkUnnamed6267(o.elements);
  }
  buildCounterStringList--;
}

buildUnnamed6268() {
  var o = new core.List<api.Parameter>();
  o.add(buildParameter());
  o.add(buildParameter());
  return o;
}

checkUnnamed6268(core.List<api.Parameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameter(o[0]);
  checkParameter(o[1]);
}

core.int buildCounterStructuredMessage = 0;
buildStructuredMessage() {
  var o = new api.StructuredMessage();
  buildCounterStructuredMessage++;
  if (buildCounterStructuredMessage < 3) {
    o.messageKey = "foo";
    o.messageText = "foo";
    o.parameters = buildUnnamed6268();
  }
  buildCounterStructuredMessage--;
  return o;
}

checkStructuredMessage(api.StructuredMessage o) {
  buildCounterStructuredMessage++;
  if (buildCounterStructuredMessage < 3) {
    unittest.expect(o.messageKey, unittest.equals('foo'));
    unittest.expect(o.messageText, unittest.equals('foo'));
    checkUnnamed6268(o.parameters);
  }
  buildCounterStructuredMessage--;
}

buildUnnamed6269() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6269(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTaskRunnerSettings = 0;
buildTaskRunnerSettings() {
  var o = new api.TaskRunnerSettings();
  buildCounterTaskRunnerSettings++;
  if (buildCounterTaskRunnerSettings < 3) {
    o.alsologtostderr = true;
    o.baseTaskDir = "foo";
    o.baseUrl = "foo";
    o.commandlinesFileName = "foo";
    o.continueOnException = true;
    o.dataflowApiVersion = "foo";
    o.harnessCommand = "foo";
    o.languageHint = "foo";
    o.logDir = "foo";
    o.logToSerialconsole = true;
    o.logUploadLocation = "foo";
    o.oauthScopes = buildUnnamed6269();
    o.parallelWorkerSettings = buildWorkerSettings();
    o.streamingWorkerMainClass = "foo";
    o.taskGroup = "foo";
    o.taskUser = "foo";
    o.tempStoragePrefix = "foo";
    o.vmId = "foo";
    o.workflowFileName = "foo";
  }
  buildCounterTaskRunnerSettings--;
  return o;
}

checkTaskRunnerSettings(api.TaskRunnerSettings o) {
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
    checkUnnamed6269(o.oauthScopes);
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

buildUnnamed6270() {
  var o = new core.List<api.ParameterMetadata>();
  o.add(buildParameterMetadata());
  o.add(buildParameterMetadata());
  return o;
}

checkUnnamed6270(core.List<api.ParameterMetadata> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParameterMetadata(o[0]);
  checkParameterMetadata(o[1]);
}

core.int buildCounterTemplateMetadata = 0;
buildTemplateMetadata() {
  var o = new api.TemplateMetadata();
  buildCounterTemplateMetadata++;
  if (buildCounterTemplateMetadata < 3) {
    o.description = "foo";
    o.name = "foo";
    o.parameters = buildUnnamed6270();
  }
  buildCounterTemplateMetadata--;
  return o;
}

checkTemplateMetadata(api.TemplateMetadata o) {
  buildCounterTemplateMetadata++;
  if (buildCounterTemplateMetadata < 3) {
    unittest.expect(o.description, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6270(o.parameters);
  }
  buildCounterTemplateMetadata--;
}

buildUnnamed6271() {
  var o = new core.List<api.ComputationTopology>();
  o.add(buildComputationTopology());
  o.add(buildComputationTopology());
  return o;
}

checkUnnamed6271(core.List<api.ComputationTopology> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComputationTopology(o[0]);
  checkComputationTopology(o[1]);
}

buildUnnamed6272() {
  var o = new core.List<api.DataDiskAssignment>();
  o.add(buildDataDiskAssignment());
  o.add(buildDataDiskAssignment());
  return o;
}

checkUnnamed6272(core.List<api.DataDiskAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataDiskAssignment(o[0]);
  checkDataDiskAssignment(o[1]);
}

buildUnnamed6273() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed6273(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterTopologyConfig = 0;
buildTopologyConfig() {
  var o = new api.TopologyConfig();
  buildCounterTopologyConfig++;
  if (buildCounterTopologyConfig < 3) {
    o.computations = buildUnnamed6271();
    o.dataDiskAssignments = buildUnnamed6272();
    o.forwardingKeyBits = 42;
    o.persistentStateVersion = 42;
    o.userStageToComputationNameMap = buildUnnamed6273();
  }
  buildCounterTopologyConfig--;
  return o;
}

checkTopologyConfig(api.TopologyConfig o) {
  buildCounterTopologyConfig++;
  if (buildCounterTopologyConfig < 3) {
    checkUnnamed6271(o.computations);
    checkUnnamed6272(o.dataDiskAssignments);
    unittest.expect(o.forwardingKeyBits, unittest.equals(42));
    unittest.expect(o.persistentStateVersion, unittest.equals(42));
    checkUnnamed6273(o.userStageToComputationNameMap);
  }
  buildCounterTopologyConfig--;
}

buildUnnamed6274() {
  var o = new core.List<api.DisplayData>();
  o.add(buildDisplayData());
  o.add(buildDisplayData());
  return o;
}

checkUnnamed6274(core.List<api.DisplayData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisplayData(o[0]);
  checkDisplayData(o[1]);
}

buildUnnamed6275() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6275(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed6276() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed6276(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTransformSummary = 0;
buildTransformSummary() {
  var o = new api.TransformSummary();
  buildCounterTransformSummary++;
  if (buildCounterTransformSummary < 3) {
    o.displayData = buildUnnamed6274();
    o.id = "foo";
    o.inputCollectionName = buildUnnamed6275();
    o.kind = "foo";
    o.name = "foo";
    o.outputCollectionName = buildUnnamed6276();
  }
  buildCounterTransformSummary--;
  return o;
}

checkTransformSummary(api.TransformSummary o) {
  buildCounterTransformSummary++;
  if (buildCounterTransformSummary < 3) {
    checkUnnamed6274(o.displayData);
    unittest.expect(o.id, unittest.equals('foo'));
    checkUnnamed6275(o.inputCollectionName);
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed6276(o.outputCollectionName);
  }
  buildCounterTransformSummary--;
}

core.int buildCounterValidateResponse = 0;
buildValidateResponse() {
  var o = new api.ValidateResponse();
  buildCounterValidateResponse++;
  if (buildCounterValidateResponse < 3) {
    o.errorMessage = "foo";
  }
  buildCounterValidateResponse--;
  return o;
}

checkValidateResponse(api.ValidateResponse o) {
  buildCounterValidateResponse++;
  if (buildCounterValidateResponse < 3) {
    unittest.expect(o.errorMessage, unittest.equals('foo'));
  }
  buildCounterValidateResponse--;
}

buildUnnamed6277() {
  var o = new core.List<api.Package>();
  o.add(buildPackage());
  o.add(buildPackage());
  return o;
}

checkUnnamed6277(core.List<api.Package> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPackage(o[0]);
  checkPackage(o[1]);
}

core.int buildCounterWorkItem = 0;
buildWorkItem() {
  var o = new api.WorkItem();
  buildCounterWorkItem++;
  if (buildCounterWorkItem < 3) {
    o.configuration = "foo";
    o.id = "foo";
    o.initialReportIndex = "foo";
    o.jobId = "foo";
    o.leaseExpireTime = "foo";
    o.mapTask = buildMapTask();
    o.packages = buildUnnamed6277();
    o.projectId = "foo";
    o.reportStatusInterval = "foo";
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

checkWorkItem(api.WorkItem o) {
  buildCounterWorkItem++;
  if (buildCounterWorkItem < 3) {
    unittest.expect(o.configuration, unittest.equals('foo'));
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.initialReportIndex, unittest.equals('foo'));
    unittest.expect(o.jobId, unittest.equals('foo'));
    unittest.expect(o.leaseExpireTime, unittest.equals('foo'));
    checkMapTask(o.mapTask);
    checkUnnamed6277(o.packages);
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

buildUnnamed6278() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6278(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted52 = (o["x"]) as core.Map;
  unittest.expect(casted52, unittest.hasLength(3));
  unittest.expect(casted52["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted52["bool"], unittest.equals(true));
  unittest.expect(casted52["string"], unittest.equals('foo'));
  var casted53 = (o["y"]) as core.Map;
  unittest.expect(casted53, unittest.hasLength(3));
  unittest.expect(casted53["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted53["bool"], unittest.equals(true));
  unittest.expect(casted53["string"], unittest.equals('foo'));
}

buildUnnamed6279() {
  var o = new core.List<api.MetricShortId>();
  o.add(buildMetricShortId());
  o.add(buildMetricShortId());
  return o;
}

checkUnnamed6279(core.List<api.MetricShortId> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricShortId(o[0]);
  checkMetricShortId(o[1]);
}

core.int buildCounterWorkItemServiceState = 0;
buildWorkItemServiceState() {
  var o = new api.WorkItemServiceState();
  buildCounterWorkItemServiceState++;
  if (buildCounterWorkItemServiceState < 3) {
    o.harnessData = buildUnnamed6278();
    o.hotKeyDetection = buildHotKeyDetection();
    o.leaseExpireTime = "foo";
    o.metricShortId = buildUnnamed6279();
    o.nextReportIndex = "foo";
    o.reportStatusInterval = "foo";
    o.splitRequest = buildApproximateSplitRequest();
    o.suggestedStopPoint = buildApproximateProgress();
    o.suggestedStopPosition = buildPosition();
  }
  buildCounterWorkItemServiceState--;
  return o;
}

checkWorkItemServiceState(api.WorkItemServiceState o) {
  buildCounterWorkItemServiceState++;
  if (buildCounterWorkItemServiceState < 3) {
    checkUnnamed6278(o.harnessData);
    checkHotKeyDetection(o.hotKeyDetection);
    unittest.expect(o.leaseExpireTime, unittest.equals('foo'));
    checkUnnamed6279(o.metricShortId);
    unittest.expect(o.nextReportIndex, unittest.equals('foo'));
    unittest.expect(o.reportStatusInterval, unittest.equals('foo'));
    checkApproximateSplitRequest(o.splitRequest);
    checkApproximateProgress(o.suggestedStopPoint);
    checkPosition(o.suggestedStopPosition);
  }
  buildCounterWorkItemServiceState--;
}

buildUnnamed6280() {
  var o = new core.List<api.CounterUpdate>();
  o.add(buildCounterUpdate());
  o.add(buildCounterUpdate());
  return o;
}

checkUnnamed6280(core.List<api.CounterUpdate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCounterUpdate(o[0]);
  checkCounterUpdate(o[1]);
}

buildUnnamed6281() {
  var o = new core.List<api.Status>();
  o.add(buildStatus());
  o.add(buildStatus());
  return o;
}

checkUnnamed6281(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

buildUnnamed6282() {
  var o = new core.List<api.MetricUpdate>();
  o.add(buildMetricUpdate());
  o.add(buildMetricUpdate());
  return o;
}

checkUnnamed6282(core.List<api.MetricUpdate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetricUpdate(o[0]);
  checkMetricUpdate(o[1]);
}

core.int buildCounterWorkItemStatus = 0;
buildWorkItemStatus() {
  var o = new api.WorkItemStatus();
  buildCounterWorkItemStatus++;
  if (buildCounterWorkItemStatus < 3) {
    o.completed = true;
    o.counterUpdates = buildUnnamed6280();
    o.dynamicSourceSplit = buildDynamicSourceSplit();
    o.errors = buildUnnamed6281();
    o.metricUpdates = buildUnnamed6282();
    o.progress = buildApproximateProgress();
    o.reportIndex = "foo";
    o.reportedProgress = buildApproximateReportedProgress();
    o.requestedLeaseDuration = "foo";
    o.sourceFork = buildSourceFork();
    o.sourceOperationResponse = buildSourceOperationResponse();
    o.stopPosition = buildPosition();
    o.totalThrottlerWaitTimeSeconds = 42.0;
    o.workItemId = "foo";
  }
  buildCounterWorkItemStatus--;
  return o;
}

checkWorkItemStatus(api.WorkItemStatus o) {
  buildCounterWorkItemStatus++;
  if (buildCounterWorkItemStatus < 3) {
    unittest.expect(o.completed, unittest.isTrue);
    checkUnnamed6280(o.counterUpdates);
    checkDynamicSourceSplit(o.dynamicSourceSplit);
    checkUnnamed6281(o.errors);
    checkUnnamed6282(o.metricUpdates);
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

buildUnnamed6283() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6283(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted54 = (o["x"]) as core.Map;
  unittest.expect(casted54, unittest.hasLength(3));
  unittest.expect(casted54["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted54["bool"], unittest.equals(true));
  unittest.expect(casted54["string"], unittest.equals('foo'));
  var casted55 = (o["y"]) as core.Map;
  unittest.expect(casted55, unittest.hasLength(3));
  unittest.expect(casted55["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted55["bool"], unittest.equals(true));
  unittest.expect(casted55["string"], unittest.equals('foo'));
}

buildUnnamed6284() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed6283());
  o.add(buildUnnamed6283());
  return o;
}

checkUnnamed6284(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed6283(o[0]);
  checkUnnamed6283(o[1]);
}

core.int buildCounterWorkerHealthReport = 0;
buildWorkerHealthReport() {
  var o = new api.WorkerHealthReport();
  buildCounterWorkerHealthReport++;
  if (buildCounterWorkerHealthReport < 3) {
    o.msg = "foo";
    o.pods = buildUnnamed6284();
    o.reportInterval = "foo";
    o.vmIsBroken = true;
    o.vmIsHealthy = true;
    o.vmStartupTime = "foo";
  }
  buildCounterWorkerHealthReport--;
  return o;
}

checkWorkerHealthReport(api.WorkerHealthReport o) {
  buildCounterWorkerHealthReport++;
  if (buildCounterWorkerHealthReport < 3) {
    unittest.expect(o.msg, unittest.equals('foo'));
    checkUnnamed6284(o.pods);
    unittest.expect(o.reportInterval, unittest.equals('foo'));
    unittest.expect(o.vmIsBroken, unittest.isTrue);
    unittest.expect(o.vmIsHealthy, unittest.isTrue);
    unittest.expect(o.vmStartupTime, unittest.equals('foo'));
  }
  buildCounterWorkerHealthReport--;
}

core.int buildCounterWorkerHealthReportResponse = 0;
buildWorkerHealthReportResponse() {
  var o = new api.WorkerHealthReportResponse();
  buildCounterWorkerHealthReportResponse++;
  if (buildCounterWorkerHealthReportResponse < 3) {
    o.reportInterval = "foo";
  }
  buildCounterWorkerHealthReportResponse--;
  return o;
}

checkWorkerHealthReportResponse(api.WorkerHealthReportResponse o) {
  buildCounterWorkerHealthReportResponse++;
  if (buildCounterWorkerHealthReportResponse < 3) {
    unittest.expect(o.reportInterval, unittest.equals('foo'));
  }
  buildCounterWorkerHealthReportResponse--;
}

buildUnnamed6285() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed6285(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterWorkerLifecycleEvent = 0;
buildWorkerLifecycleEvent() {
  var o = new api.WorkerLifecycleEvent();
  buildCounterWorkerLifecycleEvent++;
  if (buildCounterWorkerLifecycleEvent < 3) {
    o.containerStartTime = "foo";
    o.event = "foo";
    o.metadata = buildUnnamed6285();
  }
  buildCounterWorkerLifecycleEvent--;
  return o;
}

checkWorkerLifecycleEvent(api.WorkerLifecycleEvent o) {
  buildCounterWorkerLifecycleEvent++;
  if (buildCounterWorkerLifecycleEvent < 3) {
    unittest.expect(o.containerStartTime, unittest.equals('foo'));
    unittest.expect(o.event, unittest.equals('foo'));
    checkUnnamed6285(o.metadata);
  }
  buildCounterWorkerLifecycleEvent--;
}

buildUnnamed6286() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed6286(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterWorkerMessage = 0;
buildWorkerMessage() {
  var o = new api.WorkerMessage();
  buildCounterWorkerMessage++;
  if (buildCounterWorkerMessage < 3) {
    o.labels = buildUnnamed6286();
    o.time = "foo";
    o.workerHealthReport = buildWorkerHealthReport();
    o.workerLifecycleEvent = buildWorkerLifecycleEvent();
    o.workerMessageCode = buildWorkerMessageCode();
    o.workerMetrics = buildResourceUtilizationReport();
    o.workerShutdownNotice = buildWorkerShutdownNotice();
  }
  buildCounterWorkerMessage--;
  return o;
}

checkWorkerMessage(api.WorkerMessage o) {
  buildCounterWorkerMessage++;
  if (buildCounterWorkerMessage < 3) {
    checkUnnamed6286(o.labels);
    unittest.expect(o.time, unittest.equals('foo'));
    checkWorkerHealthReport(o.workerHealthReport);
    checkWorkerLifecycleEvent(o.workerLifecycleEvent);
    checkWorkerMessageCode(o.workerMessageCode);
    checkResourceUtilizationReport(o.workerMetrics);
    checkWorkerShutdownNotice(o.workerShutdownNotice);
  }
  buildCounterWorkerMessage--;
}

buildUnnamed6287() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6287(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted56 = (o["x"]) as core.Map;
  unittest.expect(casted56, unittest.hasLength(3));
  unittest.expect(casted56["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted56["bool"], unittest.equals(true));
  unittest.expect(casted56["string"], unittest.equals('foo'));
  var casted57 = (o["y"]) as core.Map;
  unittest.expect(casted57, unittest.hasLength(3));
  unittest.expect(casted57["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted57["bool"], unittest.equals(true));
  unittest.expect(casted57["string"], unittest.equals('foo'));
}

core.int buildCounterWorkerMessageCode = 0;
buildWorkerMessageCode() {
  var o = new api.WorkerMessageCode();
  buildCounterWorkerMessageCode++;
  if (buildCounterWorkerMessageCode < 3) {
    o.code = "foo";
    o.parameters = buildUnnamed6287();
  }
  buildCounterWorkerMessageCode--;
  return o;
}

checkWorkerMessageCode(api.WorkerMessageCode o) {
  buildCounterWorkerMessageCode++;
  if (buildCounterWorkerMessageCode < 3) {
    unittest.expect(o.code, unittest.equals('foo'));
    checkUnnamed6287(o.parameters);
  }
  buildCounterWorkerMessageCode--;
}

core.int buildCounterWorkerMessageResponse = 0;
buildWorkerMessageResponse() {
  var o = new api.WorkerMessageResponse();
  buildCounterWorkerMessageResponse++;
  if (buildCounterWorkerMessageResponse < 3) {
    o.workerHealthReportResponse = buildWorkerHealthReportResponse();
    o.workerMetricsResponse = buildResourceUtilizationReportResponse();
    o.workerShutdownNoticeResponse = buildWorkerShutdownNoticeResponse();
  }
  buildCounterWorkerMessageResponse--;
  return o;
}

checkWorkerMessageResponse(api.WorkerMessageResponse o) {
  buildCounterWorkerMessageResponse++;
  if (buildCounterWorkerMessageResponse < 3) {
    checkWorkerHealthReportResponse(o.workerHealthReportResponse);
    checkResourceUtilizationReportResponse(o.workerMetricsResponse);
    checkWorkerShutdownNoticeResponse(o.workerShutdownNoticeResponse);
  }
  buildCounterWorkerMessageResponse--;
}

buildUnnamed6288() {
  var o = new core.List<api.Disk>();
  o.add(buildDisk());
  o.add(buildDisk());
  return o;
}

checkUnnamed6288(core.List<api.Disk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisk(o[0]);
  checkDisk(o[1]);
}

buildUnnamed6289() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed6289(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed6290() {
  var o = new core.List<api.Package>();
  o.add(buildPackage());
  o.add(buildPackage());
  return o;
}

checkUnnamed6290(core.List<api.Package> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPackage(o[0]);
  checkPackage(o[1]);
}

buildUnnamed6291() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  o["y"] = {
    'list': [1, 2, 3],
    'bool': true,
    'string': 'foo'
  };
  return o;
}

checkUnnamed6291(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted58 = (o["x"]) as core.Map;
  unittest.expect(casted58, unittest.hasLength(3));
  unittest.expect(casted58["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted58["bool"], unittest.equals(true));
  unittest.expect(casted58["string"], unittest.equals('foo'));
  var casted59 = (o["y"]) as core.Map;
  unittest.expect(casted59, unittest.hasLength(3));
  unittest.expect(casted59["list"], unittest.equals([1, 2, 3]));
  unittest.expect(casted59["bool"], unittest.equals(true));
  unittest.expect(casted59["string"], unittest.equals('foo'));
}

buildUnnamed6292() {
  var o = new core.List<api.SdkHarnessContainerImage>();
  o.add(buildSdkHarnessContainerImage());
  o.add(buildSdkHarnessContainerImage());
  return o;
}

checkUnnamed6292(core.List<api.SdkHarnessContainerImage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSdkHarnessContainerImage(o[0]);
  checkSdkHarnessContainerImage(o[1]);
}

core.int buildCounterWorkerPool = 0;
buildWorkerPool() {
  var o = new api.WorkerPool();
  buildCounterWorkerPool++;
  if (buildCounterWorkerPool < 3) {
    o.autoscalingSettings = buildAutoscalingSettings();
    o.dataDisks = buildUnnamed6288();
    o.defaultPackageSet = "foo";
    o.diskSizeGb = 42;
    o.diskSourceImage = "foo";
    o.diskType = "foo";
    o.ipConfiguration = "foo";
    o.kind = "foo";
    o.machineType = "foo";
    o.metadata = buildUnnamed6289();
    o.network = "foo";
    o.numThreadsPerWorker = 42;
    o.numWorkers = 42;
    o.onHostMaintenance = "foo";
    o.packages = buildUnnamed6290();
    o.poolArgs = buildUnnamed6291();
    o.sdkHarnessContainerImages = buildUnnamed6292();
    o.subnetwork = "foo";
    o.taskrunnerSettings = buildTaskRunnerSettings();
    o.teardownPolicy = "foo";
    o.workerHarnessContainerImage = "foo";
    o.zone = "foo";
  }
  buildCounterWorkerPool--;
  return o;
}

checkWorkerPool(api.WorkerPool o) {
  buildCounterWorkerPool++;
  if (buildCounterWorkerPool < 3) {
    checkAutoscalingSettings(o.autoscalingSettings);
    checkUnnamed6288(o.dataDisks);
    unittest.expect(o.defaultPackageSet, unittest.equals('foo'));
    unittest.expect(o.diskSizeGb, unittest.equals(42));
    unittest.expect(o.diskSourceImage, unittest.equals('foo'));
    unittest.expect(o.diskType, unittest.equals('foo'));
    unittest.expect(o.ipConfiguration, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.machineType, unittest.equals('foo'));
    checkUnnamed6289(o.metadata);
    unittest.expect(o.network, unittest.equals('foo'));
    unittest.expect(o.numThreadsPerWorker, unittest.equals(42));
    unittest.expect(o.numWorkers, unittest.equals(42));
    unittest.expect(o.onHostMaintenance, unittest.equals('foo'));
    checkUnnamed6290(o.packages);
    checkUnnamed6291(o.poolArgs);
    checkUnnamed6292(o.sdkHarnessContainerImages);
    unittest.expect(o.subnetwork, unittest.equals('foo'));
    checkTaskRunnerSettings(o.taskrunnerSettings);
    unittest.expect(o.teardownPolicy, unittest.equals('foo'));
    unittest.expect(o.workerHarnessContainerImage, unittest.equals('foo'));
    unittest.expect(o.zone, unittest.equals('foo'));
  }
  buildCounterWorkerPool--;
}

core.int buildCounterWorkerSettings = 0;
buildWorkerSettings() {
  var o = new api.WorkerSettings();
  buildCounterWorkerSettings++;
  if (buildCounterWorkerSettings < 3) {
    o.baseUrl = "foo";
    o.reportingEnabled = true;
    o.servicePath = "foo";
    o.shuffleServicePath = "foo";
    o.tempStoragePrefix = "foo";
    o.workerId = "foo";
  }
  buildCounterWorkerSettings--;
  return o;
}

checkWorkerSettings(api.WorkerSettings o) {
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
buildWorkerShutdownNotice() {
  var o = new api.WorkerShutdownNotice();
  buildCounterWorkerShutdownNotice++;
  if (buildCounterWorkerShutdownNotice < 3) {
    o.reason = "foo";
  }
  buildCounterWorkerShutdownNotice--;
  return o;
}

checkWorkerShutdownNotice(api.WorkerShutdownNotice o) {
  buildCounterWorkerShutdownNotice++;
  if (buildCounterWorkerShutdownNotice < 3) {
    unittest.expect(o.reason, unittest.equals('foo'));
  }
  buildCounterWorkerShutdownNotice--;
}

core.int buildCounterWorkerShutdownNoticeResponse = 0;
buildWorkerShutdownNoticeResponse() {
  var o = new api.WorkerShutdownNoticeResponse();
  buildCounterWorkerShutdownNoticeResponse++;
  if (buildCounterWorkerShutdownNoticeResponse < 3) {}
  buildCounterWorkerShutdownNoticeResponse--;
  return o;
}

checkWorkerShutdownNoticeResponse(api.WorkerShutdownNoticeResponse o) {
  buildCounterWorkerShutdownNoticeResponse++;
  if (buildCounterWorkerShutdownNoticeResponse < 3) {}
  buildCounterWorkerShutdownNoticeResponse--;
}

core.int buildCounterWriteInstruction = 0;
buildWriteInstruction() {
  var o = new api.WriteInstruction();
  buildCounterWriteInstruction++;
  if (buildCounterWriteInstruction < 3) {
    o.input = buildInstructionInput();
    o.sink = buildSink();
  }
  buildCounterWriteInstruction--;
  return o;
}

checkWriteInstruction(api.WriteInstruction o) {
  buildCounterWriteInstruction++;
  if (buildCounterWriteInstruction < 3) {
    checkInstructionInput(o.input);
    checkSink(o.sink);
  }
  buildCounterWriteInstruction--;
}

main() {
  unittest.group("obj-schema-ApproximateProgress", () {
    unittest.test("to-json--from-json", () {
      var o = buildApproximateProgress();
      var od = new api.ApproximateProgress.fromJson(o.toJson());
      checkApproximateProgress(od);
    });
  });

  unittest.group("obj-schema-ApproximateReportedProgress", () {
    unittest.test("to-json--from-json", () {
      var o = buildApproximateReportedProgress();
      var od = new api.ApproximateReportedProgress.fromJson(o.toJson());
      checkApproximateReportedProgress(od);
    });
  });

  unittest.group("obj-schema-ApproximateSplitRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildApproximateSplitRequest();
      var od = new api.ApproximateSplitRequest.fromJson(o.toJson());
      checkApproximateSplitRequest(od);
    });
  });

  unittest.group("obj-schema-AutoscalingEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutoscalingEvent();
      var od = new api.AutoscalingEvent.fromJson(o.toJson());
      checkAutoscalingEvent(od);
    });
  });

  unittest.group("obj-schema-AutoscalingSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutoscalingSettings();
      var od = new api.AutoscalingSettings.fromJson(o.toJson());
      checkAutoscalingSettings(od);
    });
  });

  unittest.group("obj-schema-BigQueryIODetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildBigQueryIODetails();
      var od = new api.BigQueryIODetails.fromJson(o.toJson());
      checkBigQueryIODetails(od);
    });
  });

  unittest.group("obj-schema-BigTableIODetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildBigTableIODetails();
      var od = new api.BigTableIODetails.fromJson(o.toJson());
      checkBigTableIODetails(od);
    });
  });

  unittest.group("obj-schema-CPUTime", () {
    unittest.test("to-json--from-json", () {
      var o = buildCPUTime();
      var od = new api.CPUTime.fromJson(o.toJson());
      checkCPUTime(od);
    });
  });

  unittest.group("obj-schema-ComponentSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildComponentSource();
      var od = new api.ComponentSource.fromJson(o.toJson());
      checkComponentSource(od);
    });
  });

  unittest.group("obj-schema-ComponentTransform", () {
    unittest.test("to-json--from-json", () {
      var o = buildComponentTransform();
      var od = new api.ComponentTransform.fromJson(o.toJson());
      checkComponentTransform(od);
    });
  });

  unittest.group("obj-schema-ComputationTopology", () {
    unittest.test("to-json--from-json", () {
      var o = buildComputationTopology();
      var od = new api.ComputationTopology.fromJson(o.toJson());
      checkComputationTopology(od);
    });
  });

  unittest.group("obj-schema-ConcatPosition", () {
    unittest.test("to-json--from-json", () {
      var o = buildConcatPosition();
      var od = new api.ConcatPosition.fromJson(o.toJson());
      checkConcatPosition(od);
    });
  });

  unittest.group("obj-schema-ContainerSpec", () {
    unittest.test("to-json--from-json", () {
      var o = buildContainerSpec();
      var od = new api.ContainerSpec.fromJson(o.toJson());
      checkContainerSpec(od);
    });
  });

  unittest.group("obj-schema-CounterMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildCounterMetadata();
      var od = new api.CounterMetadata.fromJson(o.toJson());
      checkCounterMetadata(od);
    });
  });

  unittest.group("obj-schema-CounterStructuredName", () {
    unittest.test("to-json--from-json", () {
      var o = buildCounterStructuredName();
      var od = new api.CounterStructuredName.fromJson(o.toJson());
      checkCounterStructuredName(od);
    });
  });

  unittest.group("obj-schema-CounterStructuredNameAndMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildCounterStructuredNameAndMetadata();
      var od = new api.CounterStructuredNameAndMetadata.fromJson(o.toJson());
      checkCounterStructuredNameAndMetadata(od);
    });
  });

  unittest.group("obj-schema-CounterUpdate", () {
    unittest.test("to-json--from-json", () {
      var o = buildCounterUpdate();
      var od = new api.CounterUpdate.fromJson(o.toJson());
      checkCounterUpdate(od);
    });
  });

  unittest.group("obj-schema-CreateJobFromTemplateRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildCreateJobFromTemplateRequest();
      var od = new api.CreateJobFromTemplateRequest.fromJson(o.toJson());
      checkCreateJobFromTemplateRequest(od);
    });
  });

  unittest.group("obj-schema-CustomSourceLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildCustomSourceLocation();
      var od = new api.CustomSourceLocation.fromJson(o.toJson());
      checkCustomSourceLocation(od);
    });
  });

  unittest.group("obj-schema-DataDiskAssignment", () {
    unittest.test("to-json--from-json", () {
      var o = buildDataDiskAssignment();
      var od = new api.DataDiskAssignment.fromJson(o.toJson());
      checkDataDiskAssignment(od);
    });
  });

  unittest.group("obj-schema-DatastoreIODetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildDatastoreIODetails();
      var od = new api.DatastoreIODetails.fromJson(o.toJson());
      checkDatastoreIODetails(od);
    });
  });

  unittest.group("obj-schema-DeleteSnapshotResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildDeleteSnapshotResponse();
      var od = new api.DeleteSnapshotResponse.fromJson(o.toJson());
      checkDeleteSnapshotResponse(od);
    });
  });

  unittest.group("obj-schema-DerivedSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildDerivedSource();
      var od = new api.DerivedSource.fromJson(o.toJson());
      checkDerivedSource(od);
    });
  });

  unittest.group("obj-schema-Disk", () {
    unittest.test("to-json--from-json", () {
      var o = buildDisk();
      var od = new api.Disk.fromJson(o.toJson());
      checkDisk(od);
    });
  });

  unittest.group("obj-schema-DisplayData", () {
    unittest.test("to-json--from-json", () {
      var o = buildDisplayData();
      var od = new api.DisplayData.fromJson(o.toJson());
      checkDisplayData(od);
    });
  });

  unittest.group("obj-schema-DistributionUpdate", () {
    unittest.test("to-json--from-json", () {
      var o = buildDistributionUpdate();
      var od = new api.DistributionUpdate.fromJson(o.toJson());
      checkDistributionUpdate(od);
    });
  });

  unittest.group("obj-schema-DynamicSourceSplit", () {
    unittest.test("to-json--from-json", () {
      var o = buildDynamicSourceSplit();
      var od = new api.DynamicSourceSplit.fromJson(o.toJson());
      checkDynamicSourceSplit(od);
    });
  });

  unittest.group("obj-schema-Environment", () {
    unittest.test("to-json--from-json", () {
      var o = buildEnvironment();
      var od = new api.Environment.fromJson(o.toJson());
      checkEnvironment(od);
    });
  });

  unittest.group("obj-schema-ExecutionStageState", () {
    unittest.test("to-json--from-json", () {
      var o = buildExecutionStageState();
      var od = new api.ExecutionStageState.fromJson(o.toJson());
      checkExecutionStageState(od);
    });
  });

  unittest.group("obj-schema-ExecutionStageSummary", () {
    unittest.test("to-json--from-json", () {
      var o = buildExecutionStageSummary();
      var od = new api.ExecutionStageSummary.fromJson(o.toJson());
      checkExecutionStageSummary(od);
    });
  });

  unittest.group("obj-schema-FailedLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildFailedLocation();
      var od = new api.FailedLocation.fromJson(o.toJson());
      checkFailedLocation(od);
    });
  });

  unittest.group("obj-schema-FileIODetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildFileIODetails();
      var od = new api.FileIODetails.fromJson(o.toJson());
      checkFileIODetails(od);
    });
  });

  unittest.group("obj-schema-FlattenInstruction", () {
    unittest.test("to-json--from-json", () {
      var o = buildFlattenInstruction();
      var od = new api.FlattenInstruction.fromJson(o.toJson());
      checkFlattenInstruction(od);
    });
  });

  unittest.group("obj-schema-FloatingPointList", () {
    unittest.test("to-json--from-json", () {
      var o = buildFloatingPointList();
      var od = new api.FloatingPointList.fromJson(o.toJson());
      checkFloatingPointList(od);
    });
  });

  unittest.group("obj-schema-FloatingPointMean", () {
    unittest.test("to-json--from-json", () {
      var o = buildFloatingPointMean();
      var od = new api.FloatingPointMean.fromJson(o.toJson());
      checkFloatingPointMean(od);
    });
  });

  unittest.group("obj-schema-GetDebugConfigRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetDebugConfigRequest();
      var od = new api.GetDebugConfigRequest.fromJson(o.toJson());
      checkGetDebugConfigRequest(od);
    });
  });

  unittest.group("obj-schema-GetDebugConfigResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetDebugConfigResponse();
      var od = new api.GetDebugConfigResponse.fromJson(o.toJson());
      checkGetDebugConfigResponse(od);
    });
  });

  unittest.group("obj-schema-GetTemplateResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildGetTemplateResponse();
      var od = new api.GetTemplateResponse.fromJson(o.toJson());
      checkGetTemplateResponse(od);
    });
  });

  unittest.group("obj-schema-Histogram", () {
    unittest.test("to-json--from-json", () {
      var o = buildHistogram();
      var od = new api.Histogram.fromJson(o.toJson());
      checkHistogram(od);
    });
  });

  unittest.group("obj-schema-HotKeyDetection", () {
    unittest.test("to-json--from-json", () {
      var o = buildHotKeyDetection();
      var od = new api.HotKeyDetection.fromJson(o.toJson());
      checkHotKeyDetection(od);
    });
  });

  unittest.group("obj-schema-InstructionInput", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstructionInput();
      var od = new api.InstructionInput.fromJson(o.toJson());
      checkInstructionInput(od);
    });
  });

  unittest.group("obj-schema-InstructionOutput", () {
    unittest.test("to-json--from-json", () {
      var o = buildInstructionOutput();
      var od = new api.InstructionOutput.fromJson(o.toJson());
      checkInstructionOutput(od);
    });
  });

  unittest.group("obj-schema-IntegerGauge", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntegerGauge();
      var od = new api.IntegerGauge.fromJson(o.toJson());
      checkIntegerGauge(od);
    });
  });

  unittest.group("obj-schema-IntegerList", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntegerList();
      var od = new api.IntegerList.fromJson(o.toJson());
      checkIntegerList(od);
    });
  });

  unittest.group("obj-schema-IntegerMean", () {
    unittest.test("to-json--from-json", () {
      var o = buildIntegerMean();
      var od = new api.IntegerMean.fromJson(o.toJson());
      checkIntegerMean(od);
    });
  });

  unittest.group("obj-schema-Job", () {
    unittest.test("to-json--from-json", () {
      var o = buildJob();
      var od = new api.Job.fromJson(o.toJson());
      checkJob(od);
    });
  });

  unittest.group("obj-schema-JobExecutionInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobExecutionInfo();
      var od = new api.JobExecutionInfo.fromJson(o.toJson());
      checkJobExecutionInfo(od);
    });
  });

  unittest.group("obj-schema-JobExecutionStageInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobExecutionStageInfo();
      var od = new api.JobExecutionStageInfo.fromJson(o.toJson());
      checkJobExecutionStageInfo(od);
    });
  });

  unittest.group("obj-schema-JobMessage", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobMessage();
      var od = new api.JobMessage.fromJson(o.toJson());
      checkJobMessage(od);
    });
  });

  unittest.group("obj-schema-JobMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobMetadata();
      var od = new api.JobMetadata.fromJson(o.toJson());
      checkJobMetadata(od);
    });
  });

  unittest.group("obj-schema-JobMetrics", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobMetrics();
      var od = new api.JobMetrics.fromJson(o.toJson());
      checkJobMetrics(od);
    });
  });

  unittest.group("obj-schema-KeyRangeDataDiskAssignment", () {
    unittest.test("to-json--from-json", () {
      var o = buildKeyRangeDataDiskAssignment();
      var od = new api.KeyRangeDataDiskAssignment.fromJson(o.toJson());
      checkKeyRangeDataDiskAssignment(od);
    });
  });

  unittest.group("obj-schema-KeyRangeLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildKeyRangeLocation();
      var od = new api.KeyRangeLocation.fromJson(o.toJson());
      checkKeyRangeLocation(od);
    });
  });

  unittest.group("obj-schema-LaunchFlexTemplateParameter", () {
    unittest.test("to-json--from-json", () {
      var o = buildLaunchFlexTemplateParameter();
      var od = new api.LaunchFlexTemplateParameter.fromJson(o.toJson());
      checkLaunchFlexTemplateParameter(od);
    });
  });

  unittest.group("obj-schema-LaunchFlexTemplateRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildLaunchFlexTemplateRequest();
      var od = new api.LaunchFlexTemplateRequest.fromJson(o.toJson());
      checkLaunchFlexTemplateRequest(od);
    });
  });

  unittest.group("obj-schema-LaunchFlexTemplateResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildLaunchFlexTemplateResponse();
      var od = new api.LaunchFlexTemplateResponse.fromJson(o.toJson());
      checkLaunchFlexTemplateResponse(od);
    });
  });

  unittest.group("obj-schema-LaunchTemplateParameters", () {
    unittest.test("to-json--from-json", () {
      var o = buildLaunchTemplateParameters();
      var od = new api.LaunchTemplateParameters.fromJson(o.toJson());
      checkLaunchTemplateParameters(od);
    });
  });

  unittest.group("obj-schema-LaunchTemplateResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildLaunchTemplateResponse();
      var od = new api.LaunchTemplateResponse.fromJson(o.toJson());
      checkLaunchTemplateResponse(od);
    });
  });

  unittest.group("obj-schema-LeaseWorkItemRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildLeaseWorkItemRequest();
      var od = new api.LeaseWorkItemRequest.fromJson(o.toJson());
      checkLeaseWorkItemRequest(od);
    });
  });

  unittest.group("obj-schema-LeaseWorkItemResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildLeaseWorkItemResponse();
      var od = new api.LeaseWorkItemResponse.fromJson(o.toJson());
      checkLeaseWorkItemResponse(od);
    });
  });

  unittest.group("obj-schema-ListJobMessagesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListJobMessagesResponse();
      var od = new api.ListJobMessagesResponse.fromJson(o.toJson());
      checkListJobMessagesResponse(od);
    });
  });

  unittest.group("obj-schema-ListJobsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListJobsResponse();
      var od = new api.ListJobsResponse.fromJson(o.toJson());
      checkListJobsResponse(od);
    });
  });

  unittest.group("obj-schema-ListSnapshotsResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildListSnapshotsResponse();
      var od = new api.ListSnapshotsResponse.fromJson(o.toJson());
      checkListSnapshotsResponse(od);
    });
  });

  unittest.group("obj-schema-MapTask", () {
    unittest.test("to-json--from-json", () {
      var o = buildMapTask();
      var od = new api.MapTask.fromJson(o.toJson());
      checkMapTask(od);
    });
  });

  unittest.group("obj-schema-MemInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildMemInfo();
      var od = new api.MemInfo.fromJson(o.toJson());
      checkMemInfo(od);
    });
  });

  unittest.group("obj-schema-MetricShortId", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetricShortId();
      var od = new api.MetricShortId.fromJson(o.toJson());
      checkMetricShortId(od);
    });
  });

  unittest.group("obj-schema-MetricStructuredName", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetricStructuredName();
      var od = new api.MetricStructuredName.fromJson(o.toJson());
      checkMetricStructuredName(od);
    });
  });

  unittest.group("obj-schema-MetricUpdate", () {
    unittest.test("to-json--from-json", () {
      var o = buildMetricUpdate();
      var od = new api.MetricUpdate.fromJson(o.toJson());
      checkMetricUpdate(od);
    });
  });

  unittest.group("obj-schema-MountedDataDisk", () {
    unittest.test("to-json--from-json", () {
      var o = buildMountedDataDisk();
      var od = new api.MountedDataDisk.fromJson(o.toJson());
      checkMountedDataDisk(od);
    });
  });

  unittest.group("obj-schema-MultiOutputInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildMultiOutputInfo();
      var od = new api.MultiOutputInfo.fromJson(o.toJson());
      checkMultiOutputInfo(od);
    });
  });

  unittest.group("obj-schema-NameAndKind", () {
    unittest.test("to-json--from-json", () {
      var o = buildNameAndKind();
      var od = new api.NameAndKind.fromJson(o.toJson());
      checkNameAndKind(od);
    });
  });

  unittest.group("obj-schema-Package", () {
    unittest.test("to-json--from-json", () {
      var o = buildPackage();
      var od = new api.Package.fromJson(o.toJson());
      checkPackage(od);
    });
  });

  unittest.group("obj-schema-ParDoInstruction", () {
    unittest.test("to-json--from-json", () {
      var o = buildParDoInstruction();
      var od = new api.ParDoInstruction.fromJson(o.toJson());
      checkParDoInstruction(od);
    });
  });

  unittest.group("obj-schema-ParallelInstruction", () {
    unittest.test("to-json--from-json", () {
      var o = buildParallelInstruction();
      var od = new api.ParallelInstruction.fromJson(o.toJson());
      checkParallelInstruction(od);
    });
  });

  unittest.group("obj-schema-Parameter", () {
    unittest.test("to-json--from-json", () {
      var o = buildParameter();
      var od = new api.Parameter.fromJson(o.toJson());
      checkParameter(od);
    });
  });

  unittest.group("obj-schema-ParameterMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildParameterMetadata();
      var od = new api.ParameterMetadata.fromJson(o.toJson());
      checkParameterMetadata(od);
    });
  });

  unittest.group("obj-schema-PartialGroupByKeyInstruction", () {
    unittest.test("to-json--from-json", () {
      var o = buildPartialGroupByKeyInstruction();
      var od = new api.PartialGroupByKeyInstruction.fromJson(o.toJson());
      checkPartialGroupByKeyInstruction(od);
    });
  });

  unittest.group("obj-schema-PipelineDescription", () {
    unittest.test("to-json--from-json", () {
      var o = buildPipelineDescription();
      var od = new api.PipelineDescription.fromJson(o.toJson());
      checkPipelineDescription(od);
    });
  });

  unittest.group("obj-schema-Position", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosition();
      var od = new api.Position.fromJson(o.toJson());
      checkPosition(od);
    });
  });

  unittest.group("obj-schema-PubSubIODetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildPubSubIODetails();
      var od = new api.PubSubIODetails.fromJson(o.toJson());
      checkPubSubIODetails(od);
    });
  });

  unittest.group("obj-schema-PubsubLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildPubsubLocation();
      var od = new api.PubsubLocation.fromJson(o.toJson());
      checkPubsubLocation(od);
    });
  });

  unittest.group("obj-schema-PubsubSnapshotMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildPubsubSnapshotMetadata();
      var od = new api.PubsubSnapshotMetadata.fromJson(o.toJson());
      checkPubsubSnapshotMetadata(od);
    });
  });

  unittest.group("obj-schema-ReadInstruction", () {
    unittest.test("to-json--from-json", () {
      var o = buildReadInstruction();
      var od = new api.ReadInstruction.fromJson(o.toJson());
      checkReadInstruction(od);
    });
  });

  unittest.group("obj-schema-ReportWorkItemStatusRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportWorkItemStatusRequest();
      var od = new api.ReportWorkItemStatusRequest.fromJson(o.toJson());
      checkReportWorkItemStatusRequest(od);
    });
  });

  unittest.group("obj-schema-ReportWorkItemStatusResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportWorkItemStatusResponse();
      var od = new api.ReportWorkItemStatusResponse.fromJson(o.toJson());
      checkReportWorkItemStatusResponse(od);
    });
  });

  unittest.group("obj-schema-ReportedParallelism", () {
    unittest.test("to-json--from-json", () {
      var o = buildReportedParallelism();
      var od = new api.ReportedParallelism.fromJson(o.toJson());
      checkReportedParallelism(od);
    });
  });

  unittest.group("obj-schema-ResourceUtilizationReport", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourceUtilizationReport();
      var od = new api.ResourceUtilizationReport.fromJson(o.toJson());
      checkResourceUtilizationReport(od);
    });
  });

  unittest.group("obj-schema-ResourceUtilizationReportResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildResourceUtilizationReportResponse();
      var od = new api.ResourceUtilizationReportResponse.fromJson(o.toJson());
      checkResourceUtilizationReportResponse(od);
    });
  });

  unittest.group("obj-schema-RuntimeEnvironment", () {
    unittest.test("to-json--from-json", () {
      var o = buildRuntimeEnvironment();
      var od = new api.RuntimeEnvironment.fromJson(o.toJson());
      checkRuntimeEnvironment(od);
    });
  });

  unittest.group("obj-schema-RuntimeMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildRuntimeMetadata();
      var od = new api.RuntimeMetadata.fromJson(o.toJson());
      checkRuntimeMetadata(od);
    });
  });

  unittest.group("obj-schema-SDKInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildSDKInfo();
      var od = new api.SDKInfo.fromJson(o.toJson());
      checkSDKInfo(od);
    });
  });

  unittest.group("obj-schema-SdkHarnessContainerImage", () {
    unittest.test("to-json--from-json", () {
      var o = buildSdkHarnessContainerImage();
      var od = new api.SdkHarnessContainerImage.fromJson(o.toJson());
      checkSdkHarnessContainerImage(od);
    });
  });

  unittest.group("obj-schema-SdkVersion", () {
    unittest.test("to-json--from-json", () {
      var o = buildSdkVersion();
      var od = new api.SdkVersion.fromJson(o.toJson());
      checkSdkVersion(od);
    });
  });

  unittest.group("obj-schema-SendDebugCaptureRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSendDebugCaptureRequest();
      var od = new api.SendDebugCaptureRequest.fromJson(o.toJson());
      checkSendDebugCaptureRequest(od);
    });
  });

  unittest.group("obj-schema-SendDebugCaptureResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSendDebugCaptureResponse();
      var od = new api.SendDebugCaptureResponse.fromJson(o.toJson());
      checkSendDebugCaptureResponse(od);
    });
  });

  unittest.group("obj-schema-SendWorkerMessagesRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSendWorkerMessagesRequest();
      var od = new api.SendWorkerMessagesRequest.fromJson(o.toJson());
      checkSendWorkerMessagesRequest(od);
    });
  });

  unittest.group("obj-schema-SendWorkerMessagesResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSendWorkerMessagesResponse();
      var od = new api.SendWorkerMessagesResponse.fromJson(o.toJson());
      checkSendWorkerMessagesResponse(od);
    });
  });

  unittest.group("obj-schema-SeqMapTask", () {
    unittest.test("to-json--from-json", () {
      var o = buildSeqMapTask();
      var od = new api.SeqMapTask.fromJson(o.toJson());
      checkSeqMapTask(od);
    });
  });

  unittest.group("obj-schema-SeqMapTaskOutputInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildSeqMapTaskOutputInfo();
      var od = new api.SeqMapTaskOutputInfo.fromJson(o.toJson());
      checkSeqMapTaskOutputInfo(od);
    });
  });

  unittest.group("obj-schema-ShellTask", () {
    unittest.test("to-json--from-json", () {
      var o = buildShellTask();
      var od = new api.ShellTask.fromJson(o.toJson());
      checkShellTask(od);
    });
  });

  unittest.group("obj-schema-SideInputInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildSideInputInfo();
      var od = new api.SideInputInfo.fromJson(o.toJson());
      checkSideInputInfo(od);
    });
  });

  unittest.group("obj-schema-Sink", () {
    unittest.test("to-json--from-json", () {
      var o = buildSink();
      var od = new api.Sink.fromJson(o.toJson());
      checkSink(od);
    });
  });

  unittest.group("obj-schema-Snapshot", () {
    unittest.test("to-json--from-json", () {
      var o = buildSnapshot();
      var od = new api.Snapshot.fromJson(o.toJson());
      checkSnapshot(od);
    });
  });

  unittest.group("obj-schema-SnapshotJobRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSnapshotJobRequest();
      var od = new api.SnapshotJobRequest.fromJson(o.toJson());
      checkSnapshotJobRequest(od);
    });
  });

  unittest.group("obj-schema-Source", () {
    unittest.test("to-json--from-json", () {
      var o = buildSource();
      var od = new api.Source.fromJson(o.toJson());
      checkSource(od);
    });
  });

  unittest.group("obj-schema-SourceFork", () {
    unittest.test("to-json--from-json", () {
      var o = buildSourceFork();
      var od = new api.SourceFork.fromJson(o.toJson());
      checkSourceFork(od);
    });
  });

  unittest.group("obj-schema-SourceGetMetadataRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSourceGetMetadataRequest();
      var od = new api.SourceGetMetadataRequest.fromJson(o.toJson());
      checkSourceGetMetadataRequest(od);
    });
  });

  unittest.group("obj-schema-SourceGetMetadataResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSourceGetMetadataResponse();
      var od = new api.SourceGetMetadataResponse.fromJson(o.toJson());
      checkSourceGetMetadataResponse(od);
    });
  });

  unittest.group("obj-schema-SourceMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildSourceMetadata();
      var od = new api.SourceMetadata.fromJson(o.toJson());
      checkSourceMetadata(od);
    });
  });

  unittest.group("obj-schema-SourceOperationRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSourceOperationRequest();
      var od = new api.SourceOperationRequest.fromJson(o.toJson());
      checkSourceOperationRequest(od);
    });
  });

  unittest.group("obj-schema-SourceOperationResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSourceOperationResponse();
      var od = new api.SourceOperationResponse.fromJson(o.toJson());
      checkSourceOperationResponse(od);
    });
  });

  unittest.group("obj-schema-SourceSplitOptions", () {
    unittest.test("to-json--from-json", () {
      var o = buildSourceSplitOptions();
      var od = new api.SourceSplitOptions.fromJson(o.toJson());
      checkSourceSplitOptions(od);
    });
  });

  unittest.group("obj-schema-SourceSplitRequest", () {
    unittest.test("to-json--from-json", () {
      var o = buildSourceSplitRequest();
      var od = new api.SourceSplitRequest.fromJson(o.toJson());
      checkSourceSplitRequest(od);
    });
  });

  unittest.group("obj-schema-SourceSplitResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildSourceSplitResponse();
      var od = new api.SourceSplitResponse.fromJson(o.toJson());
      checkSourceSplitResponse(od);
    });
  });

  unittest.group("obj-schema-SourceSplitShard", () {
    unittest.test("to-json--from-json", () {
      var o = buildSourceSplitShard();
      var od = new api.SourceSplitShard.fromJson(o.toJson());
      checkSourceSplitShard(od);
    });
  });

  unittest.group("obj-schema-SpannerIODetails", () {
    unittest.test("to-json--from-json", () {
      var o = buildSpannerIODetails();
      var od = new api.SpannerIODetails.fromJson(o.toJson());
      checkSpannerIODetails(od);
    });
  });

  unittest.group("obj-schema-SplitInt64", () {
    unittest.test("to-json--from-json", () {
      var o = buildSplitInt64();
      var od = new api.SplitInt64.fromJson(o.toJson());
      checkSplitInt64(od);
    });
  });

  unittest.group("obj-schema-StageSource", () {
    unittest.test("to-json--from-json", () {
      var o = buildStageSource();
      var od = new api.StageSource.fromJson(o.toJson());
      checkStageSource(od);
    });
  });

  unittest.group("obj-schema-StateFamilyConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildStateFamilyConfig();
      var od = new api.StateFamilyConfig.fromJson(o.toJson());
      checkStateFamilyConfig(od);
    });
  });

  unittest.group("obj-schema-Status", () {
    unittest.test("to-json--from-json", () {
      var o = buildStatus();
      var od = new api.Status.fromJson(o.toJson());
      checkStatus(od);
    });
  });

  unittest.group("obj-schema-Step", () {
    unittest.test("to-json--from-json", () {
      var o = buildStep();
      var od = new api.Step.fromJson(o.toJson());
      checkStep(od);
    });
  });

  unittest.group("obj-schema-StreamLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildStreamLocation();
      var od = new api.StreamLocation.fromJson(o.toJson());
      checkStreamLocation(od);
    });
  });

  unittest.group("obj-schema-StreamingApplianceSnapshotConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildStreamingApplianceSnapshotConfig();
      var od = new api.StreamingApplianceSnapshotConfig.fromJson(o.toJson());
      checkStreamingApplianceSnapshotConfig(od);
    });
  });

  unittest.group("obj-schema-StreamingComputationConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildStreamingComputationConfig();
      var od = new api.StreamingComputationConfig.fromJson(o.toJson());
      checkStreamingComputationConfig(od);
    });
  });

  unittest.group("obj-schema-StreamingComputationRanges", () {
    unittest.test("to-json--from-json", () {
      var o = buildStreamingComputationRanges();
      var od = new api.StreamingComputationRanges.fromJson(o.toJson());
      checkStreamingComputationRanges(od);
    });
  });

  unittest.group("obj-schema-StreamingComputationTask", () {
    unittest.test("to-json--from-json", () {
      var o = buildStreamingComputationTask();
      var od = new api.StreamingComputationTask.fromJson(o.toJson());
      checkStreamingComputationTask(od);
    });
  });

  unittest.group("obj-schema-StreamingConfigTask", () {
    unittest.test("to-json--from-json", () {
      var o = buildStreamingConfigTask();
      var od = new api.StreamingConfigTask.fromJson(o.toJson());
      checkStreamingConfigTask(od);
    });
  });

  unittest.group("obj-schema-StreamingSetupTask", () {
    unittest.test("to-json--from-json", () {
      var o = buildStreamingSetupTask();
      var od = new api.StreamingSetupTask.fromJson(o.toJson());
      checkStreamingSetupTask(od);
    });
  });

  unittest.group("obj-schema-StreamingSideInputLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildStreamingSideInputLocation();
      var od = new api.StreamingSideInputLocation.fromJson(o.toJson());
      checkStreamingSideInputLocation(od);
    });
  });

  unittest.group("obj-schema-StreamingStageLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildStreamingStageLocation();
      var od = new api.StreamingStageLocation.fromJson(o.toJson());
      checkStreamingStageLocation(od);
    });
  });

  unittest.group("obj-schema-StringList", () {
    unittest.test("to-json--from-json", () {
      var o = buildStringList();
      var od = new api.StringList.fromJson(o.toJson());
      checkStringList(od);
    });
  });

  unittest.group("obj-schema-StructuredMessage", () {
    unittest.test("to-json--from-json", () {
      var o = buildStructuredMessage();
      var od = new api.StructuredMessage.fromJson(o.toJson());
      checkStructuredMessage(od);
    });
  });

  unittest.group("obj-schema-TaskRunnerSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildTaskRunnerSettings();
      var od = new api.TaskRunnerSettings.fromJson(o.toJson());
      checkTaskRunnerSettings(od);
    });
  });

  unittest.group("obj-schema-TemplateMetadata", () {
    unittest.test("to-json--from-json", () {
      var o = buildTemplateMetadata();
      var od = new api.TemplateMetadata.fromJson(o.toJson());
      checkTemplateMetadata(od);
    });
  });

  unittest.group("obj-schema-TopologyConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildTopologyConfig();
      var od = new api.TopologyConfig.fromJson(o.toJson());
      checkTopologyConfig(od);
    });
  });

  unittest.group("obj-schema-TransformSummary", () {
    unittest.test("to-json--from-json", () {
      var o = buildTransformSummary();
      var od = new api.TransformSummary.fromJson(o.toJson());
      checkTransformSummary(od);
    });
  });

  unittest.group("obj-schema-ValidateResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildValidateResponse();
      var od = new api.ValidateResponse.fromJson(o.toJson());
      checkValidateResponse(od);
    });
  });

  unittest.group("obj-schema-WorkItem", () {
    unittest.test("to-json--from-json", () {
      var o = buildWorkItem();
      var od = new api.WorkItem.fromJson(o.toJson());
      checkWorkItem(od);
    });
  });

  unittest.group("obj-schema-WorkItemServiceState", () {
    unittest.test("to-json--from-json", () {
      var o = buildWorkItemServiceState();
      var od = new api.WorkItemServiceState.fromJson(o.toJson());
      checkWorkItemServiceState(od);
    });
  });

  unittest.group("obj-schema-WorkItemStatus", () {
    unittest.test("to-json--from-json", () {
      var o = buildWorkItemStatus();
      var od = new api.WorkItemStatus.fromJson(o.toJson());
      checkWorkItemStatus(od);
    });
  });

  unittest.group("obj-schema-WorkerHealthReport", () {
    unittest.test("to-json--from-json", () {
      var o = buildWorkerHealthReport();
      var od = new api.WorkerHealthReport.fromJson(o.toJson());
      checkWorkerHealthReport(od);
    });
  });

  unittest.group("obj-schema-WorkerHealthReportResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildWorkerHealthReportResponse();
      var od = new api.WorkerHealthReportResponse.fromJson(o.toJson());
      checkWorkerHealthReportResponse(od);
    });
  });

  unittest.group("obj-schema-WorkerLifecycleEvent", () {
    unittest.test("to-json--from-json", () {
      var o = buildWorkerLifecycleEvent();
      var od = new api.WorkerLifecycleEvent.fromJson(o.toJson());
      checkWorkerLifecycleEvent(od);
    });
  });

  unittest.group("obj-schema-WorkerMessage", () {
    unittest.test("to-json--from-json", () {
      var o = buildWorkerMessage();
      var od = new api.WorkerMessage.fromJson(o.toJson());
      checkWorkerMessage(od);
    });
  });

  unittest.group("obj-schema-WorkerMessageCode", () {
    unittest.test("to-json--from-json", () {
      var o = buildWorkerMessageCode();
      var od = new api.WorkerMessageCode.fromJson(o.toJson());
      checkWorkerMessageCode(od);
    });
  });

  unittest.group("obj-schema-WorkerMessageResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildWorkerMessageResponse();
      var od = new api.WorkerMessageResponse.fromJson(o.toJson());
      checkWorkerMessageResponse(od);
    });
  });

  unittest.group("obj-schema-WorkerPool", () {
    unittest.test("to-json--from-json", () {
      var o = buildWorkerPool();
      var od = new api.WorkerPool.fromJson(o.toJson());
      checkWorkerPool(od);
    });
  });

  unittest.group("obj-schema-WorkerSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildWorkerSettings();
      var od = new api.WorkerSettings.fromJson(o.toJson());
      checkWorkerSettings(od);
    });
  });

  unittest.group("obj-schema-WorkerShutdownNotice", () {
    unittest.test("to-json--from-json", () {
      var o = buildWorkerShutdownNotice();
      var od = new api.WorkerShutdownNotice.fromJson(o.toJson());
      checkWorkerShutdownNotice(od);
    });
  });

  unittest.group("obj-schema-WorkerShutdownNoticeResponse", () {
    unittest.test("to-json--from-json", () {
      var o = buildWorkerShutdownNoticeResponse();
      var od = new api.WorkerShutdownNoticeResponse.fromJson(o.toJson());
      checkWorkerShutdownNoticeResponse(od);
    });
  });

  unittest.group("obj-schema-WriteInstruction", () {
    unittest.test("to-json--from-json", () {
      var o = buildWriteInstruction();
      var od = new api.WriteInstruction.fromJson(o.toJson());
      checkWriteInstruction(od);
    });
  });

  unittest.group("resource-ProjectsResourceApi", () {
    unittest.test("method--deleteSnapshots", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.DataflowApi(mock).projects;
      var arg_projectId = "foo";
      var arg_snapshotId = "foo";
      var arg_location = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/snapshots", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/snapshots"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["snapshotId"].first, unittest.equals(arg_snapshotId));
        unittest.expect(
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDeleteSnapshotResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .deleteSnapshots(arg_projectId,
              snapshotId: arg_snapshotId,
              location: arg_location,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDeleteSnapshotResponse(response);
      })));
    });

    unittest.test("method--workerMessages", () {
      var mock = new HttpServerMock();
      api.ProjectsResourceApi res = new api.DataflowApi(mock).projects;
      var arg_request = buildSendWorkerMessagesRequest();
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SendWorkerMessagesRequest.fromJson(json);
        checkSendWorkerMessagesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/WorkerMessages", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/WorkerMessages"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSendWorkerMessagesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .workerMessages(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSendWorkerMessagesResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsJobsResourceApi", () {
    unittest.test("method--aggregated", () {
      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.DataflowApi(mock).projects.jobs;
      var arg_projectId = "foo";
      var arg_view = "foo";
      var arg_filter = "foo";
      var arg_location = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/jobs:aggregated", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/jobs:aggregated"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListJobsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .aggregated(arg_projectId,
              view: arg_view,
              filter: arg_filter,
              location: arg_location,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListJobsResponse(response);
      })));
    });

    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.DataflowApi(mock).projects.jobs;
      var arg_request = buildJob();
      var arg_projectId = "foo";
      var arg_view = "foo";
      var arg_location = "foo";
      var arg_replaceJobId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Job.fromJson(json);
        checkJob(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/jobs", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/jobs"));
        pathOffset += 5;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(
            queryMap["replaceJobId"].first, unittest.equals(arg_replaceJobId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_projectId,
              view: arg_view,
              location: arg_location,
              replaceJobId: arg_replaceJobId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.DataflowApi(mock).projects.jobs;
      var arg_projectId = "foo";
      var arg_jobId = "foo";
      var arg_view = "foo";
      var arg_location = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_jobId,
              view: arg_view, location: arg_location, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });

    unittest.test("method--getMetrics", () {
      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.DataflowApi(mock).projects.jobs;
      var arg_projectId = "foo";
      var arg_jobId = "foo";
      var arg_location = "foo";
      var arg_startTime = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf("/metrics", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/metrics"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(
            queryMap["startTime"].first, unittest.equals(arg_startTime));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildJobMetrics());
        return new async.Future.value(stringResponse(200, h, resp));
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

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.DataflowApi(mock).projects.jobs;
      var arg_projectId = "foo";
      var arg_location = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_view = "foo";
      var arg_filter = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/jobs", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/jobs"));
        pathOffset += 5;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListJobsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId,
              location: arg_location,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              view: arg_view,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListJobsResponse(response);
      })));
    });

    unittest.test("method--snapshot", () {
      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.DataflowApi(mock).projects.jobs;
      var arg_request = buildSnapshotJobRequest();
      var arg_projectId = "foo";
      var arg_jobId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SnapshotJobRequest.fromJson(json);
        checkSnapshotJobRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf(":snapshot", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals(":snapshot"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSnapshot());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .snapshot(arg_request, arg_projectId, arg_jobId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSnapshot(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ProjectsJobsResourceApi res = new api.DataflowApi(mock).projects.jobs;
      var arg_request = buildJob();
      var arg_projectId = "foo";
      var arg_jobId = "foo";
      var arg_location = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Job.fromJson(json);
        checkJob(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_projectId, arg_jobId,
              location: arg_location, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });
  });

  unittest.group("resource-ProjectsJobsDebugResourceApi", () {
    unittest.test("method--getConfig", () {
      var mock = new HttpServerMock();
      api.ProjectsJobsDebugResourceApi res =
          new api.DataflowApi(mock).projects.jobs.debug;
      var arg_request = buildGetDebugConfigRequest();
      var arg_projectId = "foo";
      var arg_jobId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetDebugConfigRequest.fromJson(json);
        checkGetDebugConfigRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf("/debug/getConfig", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/debug/getConfig"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGetDebugConfigResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getConfig(arg_request, arg_projectId, arg_jobId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetDebugConfigResponse(response);
      })));
    });

    unittest.test("method--sendCapture", () {
      var mock = new HttpServerMock();
      api.ProjectsJobsDebugResourceApi res =
          new api.DataflowApi(mock).projects.jobs.debug;
      var arg_request = buildSendDebugCaptureRequest();
      var arg_projectId = "foo";
      var arg_jobId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SendDebugCaptureRequest.fromJson(json);
        checkSendDebugCaptureRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf("/debug/sendCapture", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/debug/sendCapture"));
        pathOffset += 18;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSendDebugCaptureResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .sendCapture(arg_request, arg_projectId, arg_jobId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSendDebugCaptureResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsJobsMessagesResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsJobsMessagesResourceApi res =
          new api.DataflowApi(mock).projects.jobs.messages;
      var arg_projectId = "foo";
      var arg_jobId = "foo";
      var arg_location = "foo";
      var arg_endTime = "foo";
      var arg_pageToken = "foo";
      var arg_startTime = "foo";
      var arg_pageSize = 42;
      var arg_minimumImportance = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf("/messages", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/messages"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(
            queryMap["endTime"].first, unittest.equals(arg_endTime));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(
            queryMap["startTime"].first, unittest.equals(arg_startTime));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["minimumImportance"].first,
            unittest.equals(arg_minimumImportance));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListJobMessagesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_jobId,
              location: arg_location,
              endTime: arg_endTime,
              pageToken: arg_pageToken,
              startTime: arg_startTime,
              pageSize: arg_pageSize,
              minimumImportance: arg_minimumImportance,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListJobMessagesResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsJobsWorkItemsResourceApi", () {
    unittest.test("method--lease", () {
      var mock = new HttpServerMock();
      api.ProjectsJobsWorkItemsResourceApi res =
          new api.DataflowApi(mock).projects.jobs.workItems;
      var arg_request = buildLeaseWorkItemRequest();
      var arg_projectId = "foo";
      var arg_jobId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.LeaseWorkItemRequest.fromJson(json);
        checkLeaseWorkItemRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf("/workItems:lease", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/workItems:lease"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildLeaseWorkItemResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .lease(arg_request, arg_projectId, arg_jobId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLeaseWorkItemResponse(response);
      })));
    });

    unittest.test("method--reportStatus", () {
      var mock = new HttpServerMock();
      api.ProjectsJobsWorkItemsResourceApi res =
          new api.DataflowApi(mock).projects.jobs.workItems;
      var arg_request = buildReportWorkItemStatusRequest();
      var arg_projectId = "foo";
      var arg_jobId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ReportWorkItemStatusRequest.fromJson(json);
        checkReportWorkItemStatusRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf("/workItems:reportStatus", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 23),
            unittest.equals("/workItems:reportStatus"));
        pathOffset += 23;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildReportWorkItemStatusResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reportStatus(arg_request, arg_projectId, arg_jobId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReportWorkItemStatusResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsResourceApi", () {
    unittest.test("method--workerMessages", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsResourceApi res =
          new api.DataflowApi(mock).projects.locations;
      var arg_request = buildSendWorkerMessagesRequest();
      var arg_projectId = "foo";
      var arg_location = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SendWorkerMessagesRequest.fromJson(json);
        checkSendWorkerMessagesRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/locations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf("/WorkerMessages", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_location"));
        unittest.expect(path.substring(pathOffset, pathOffset + 15),
            unittest.equals("/WorkerMessages"));
        pathOffset += 15;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSendWorkerMessagesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .workerMessages(arg_request, arg_projectId, arg_location,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSendWorkerMessagesResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsFlexTemplatesResourceApi", () {
    unittest.test("method--launch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsFlexTemplatesResourceApi res =
          new api.DataflowApi(mock).projects.locations.flexTemplates;
      var arg_request = buildLaunchFlexTemplateRequest();
      var arg_projectId = "foo";
      var arg_location = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.LaunchFlexTemplateRequest.fromJson(json);
        checkLaunchFlexTemplateRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/locations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf("/flexTemplates:launch", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_location"));
        unittest.expect(path.substring(pathOffset, pathOffset + 21),
            unittest.equals("/flexTemplates:launch"));
        pathOffset += 21;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildLaunchFlexTemplateResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .launch(arg_request, arg_projectId, arg_location,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLaunchFlexTemplateResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsJobsResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsJobsResourceApi res =
          new api.DataflowApi(mock).projects.locations.jobs;
      var arg_request = buildJob();
      var arg_projectId = "foo";
      var arg_location = "foo";
      var arg_view = "foo";
      var arg_replaceJobId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Job.fromJson(json);
        checkJob(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/locations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf("/jobs", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_location"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/jobs"));
        pathOffset += 5;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(
            queryMap["replaceJobId"].first, unittest.equals(arg_replaceJobId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_projectId, arg_location,
              view: arg_view,
              replaceJobId: arg_replaceJobId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsJobsResourceApi res =
          new api.DataflowApi(mock).projects.locations.jobs;
      var arg_projectId = "foo";
      var arg_location = "foo";
      var arg_jobId = "foo";
      var arg_view = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/locations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_location"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_location, arg_jobId,
              view: arg_view, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });

    unittest.test("method--getMetrics", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsJobsResourceApi res =
          new api.DataflowApi(mock).projects.locations.jobs;
      var arg_projectId = "foo";
      var arg_location = "foo";
      var arg_jobId = "foo";
      var arg_startTime = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/locations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_location"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf("/metrics", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 8),
            unittest.equals("/metrics"));
        pathOffset += 8;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["startTime"].first, unittest.equals(arg_startTime));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildJobMetrics());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getMetrics(arg_projectId, arg_location, arg_jobId,
              startTime: arg_startTime, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJobMetrics(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsJobsResourceApi res =
          new api.DataflowApi(mock).projects.locations.jobs;
      var arg_projectId = "foo";
      var arg_location = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_view = "foo";
      var arg_filter = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/locations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf("/jobs", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_location"));
        unittest.expect(path.substring(pathOffset, pathOffset + 5),
            unittest.equals("/jobs"));
        pathOffset += 5;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(queryMap["filter"].first, unittest.equals(arg_filter));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListJobsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_location,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              view: arg_view,
              filter: arg_filter,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListJobsResponse(response);
      })));
    });

    unittest.test("method--snapshot", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsJobsResourceApi res =
          new api.DataflowApi(mock).projects.locations.jobs;
      var arg_request = buildSnapshotJobRequest();
      var arg_projectId = "foo";
      var arg_location = "foo";
      var arg_jobId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SnapshotJobRequest.fromJson(json);
        checkSnapshotJobRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/locations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_location"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf(":snapshot", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals(":snapshot"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSnapshot());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .snapshot(arg_request, arg_projectId, arg_location, arg_jobId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSnapshot(response);
      })));
    });

    unittest.test("method--update", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsJobsResourceApi res =
          new api.DataflowApi(mock).projects.locations.jobs;
      var arg_request = buildJob();
      var arg_projectId = "foo";
      var arg_location = "foo";
      var arg_jobId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.Job.fromJson(json);
        checkJob(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/locations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_location"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .update(arg_request, arg_projectId, arg_location, arg_jobId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsJobsDebugResourceApi", () {
    unittest.test("method--getConfig", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsJobsDebugResourceApi res =
          new api.DataflowApi(mock).projects.locations.jobs.debug;
      var arg_request = buildGetDebugConfigRequest();
      var arg_projectId = "foo";
      var arg_location = "foo";
      var arg_jobId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.GetDebugConfigRequest.fromJson(json);
        checkGetDebugConfigRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/locations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_location"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf("/debug/getConfig", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/debug/getConfig"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGetDebugConfigResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .getConfig(arg_request, arg_projectId, arg_location, arg_jobId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetDebugConfigResponse(response);
      })));
    });

    unittest.test("method--sendCapture", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsJobsDebugResourceApi res =
          new api.DataflowApi(mock).projects.locations.jobs.debug;
      var arg_request = buildSendDebugCaptureRequest();
      var arg_projectId = "foo";
      var arg_location = "foo";
      var arg_jobId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.SendDebugCaptureRequest.fromJson(json);
        checkSendDebugCaptureRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/locations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_location"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf("/debug/sendCapture", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 18),
            unittest.equals("/debug/sendCapture"));
        pathOffset += 18;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSendDebugCaptureResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .sendCapture(arg_request, arg_projectId, arg_location, arg_jobId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSendDebugCaptureResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsJobsMessagesResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsJobsMessagesResourceApi res =
          new api.DataflowApi(mock).projects.locations.jobs.messages;
      var arg_projectId = "foo";
      var arg_location = "foo";
      var arg_jobId = "foo";
      var arg_minimumImportance = "foo";
      var arg_endTime = "foo";
      var arg_startTime = "foo";
      var arg_pageToken = "foo";
      var arg_pageSize = 42;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/locations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_location"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf("/messages", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 9),
            unittest.equals("/messages"));
        pathOffset += 9;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["minimumImportance"].first,
            unittest.equals(arg_minimumImportance));
        unittest.expect(
            queryMap["endTime"].first, unittest.equals(arg_endTime));
        unittest.expect(
            queryMap["startTime"].first, unittest.equals(arg_startTime));
        unittest.expect(
            queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(core.int.parse(queryMap["pageSize"].first),
            unittest.equals(arg_pageSize));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListJobMessagesResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_location, arg_jobId,
              minimumImportance: arg_minimumImportance,
              endTime: arg_endTime,
              startTime: arg_startTime,
              pageToken: arg_pageToken,
              pageSize: arg_pageSize,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListJobMessagesResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsJobsSnapshotsResourceApi", () {
    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsJobsSnapshotsResourceApi res =
          new api.DataflowApi(mock).projects.locations.jobs.snapshots;
      var arg_projectId = "foo";
      var arg_location = "foo";
      var arg_jobId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/locations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_location"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf("/snapshots", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/snapshots"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListSnapshotsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_location, arg_jobId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListSnapshotsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsJobsWorkItemsResourceApi", () {
    unittest.test("method--lease", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsJobsWorkItemsResourceApi res =
          new api.DataflowApi(mock).projects.locations.jobs.workItems;
      var arg_request = buildLeaseWorkItemRequest();
      var arg_projectId = "foo";
      var arg_location = "foo";
      var arg_jobId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.LeaseWorkItemRequest.fromJson(json);
        checkLeaseWorkItemRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/locations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_location"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf("/workItems:lease", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 16),
            unittest.equals("/workItems:lease"));
        pathOffset += 16;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildLeaseWorkItemResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .lease(arg_request, arg_projectId, arg_location, arg_jobId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLeaseWorkItemResponse(response);
      })));
    });

    unittest.test("method--reportStatus", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsJobsWorkItemsResourceApi res =
          new api.DataflowApi(mock).projects.locations.jobs.workItems;
      var arg_request = buildReportWorkItemStatusRequest();
      var arg_projectId = "foo";
      var arg_location = "foo";
      var arg_jobId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.ReportWorkItemStatusRequest.fromJson(json);
        checkReportWorkItemStatusRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/locations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf("/jobs/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_location"));
        unittest.expect(path.substring(pathOffset, pathOffset + 6),
            unittest.equals("/jobs/"));
        pathOffset += 6;
        index = path.indexOf("/workItems:reportStatus", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_jobId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 23),
            unittest.equals("/workItems:reportStatus"));
        pathOffset += 23;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildReportWorkItemStatusResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .reportStatus(arg_request, arg_projectId, arg_location, arg_jobId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkReportWorkItemStatusResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsSnapshotsResourceApi", () {
    unittest.test("method--delete", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsSnapshotsResourceApi res =
          new api.DataflowApi(mock).projects.locations.snapshots;
      var arg_projectId = "foo";
      var arg_location = "foo";
      var arg_snapshotId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/locations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf("/snapshots/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_location"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/snapshots/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_snapshotId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildDeleteSnapshotResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .delete(arg_projectId, arg_location, arg_snapshotId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkDeleteSnapshotResponse(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsSnapshotsResourceApi res =
          new api.DataflowApi(mock).projects.locations.snapshots;
      var arg_projectId = "foo";
      var arg_location = "foo";
      var arg_snapshotId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/locations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf("/snapshots/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_location"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/snapshots/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_snapshotId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSnapshot());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_location, arg_snapshotId,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSnapshot(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsSnapshotsResourceApi res =
          new api.DataflowApi(mock).projects.locations.snapshots;
      var arg_projectId = "foo";
      var arg_location = "foo";
      var arg_jobId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/locations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf("/snapshots", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_location"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/snapshots"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["jobId"].first, unittest.equals(arg_jobId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListSnapshotsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId, arg_location,
              jobId: arg_jobId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListSnapshotsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsSqlResourceApi", () {
    unittest.test("method--validate", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsSqlResourceApi res =
          new api.DataflowApi(mock).projects.locations.sql;
      var arg_projectId = "foo";
      var arg_location = "foo";
      var arg_query = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/locations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf("/sql:validate", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_location"));
        unittest.expect(path.substring(pathOffset, pathOffset + 13),
            unittest.equals("/sql:validate"));
        pathOffset += 13;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["query"].first, unittest.equals(arg_query));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildValidateResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .validate(arg_projectId, arg_location,
              query: arg_query, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkValidateResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsLocationsTemplatesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTemplatesResourceApi res =
          new api.DataflowApi(mock).projects.locations.templates;
      var arg_request = buildCreateJobFromTemplateRequest();
      var arg_projectId = "foo";
      var arg_location = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateJobFromTemplateRequest.fromJson(json);
        checkCreateJobFromTemplateRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/locations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf("/templates", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_location"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/templates"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_projectId, arg_location,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTemplatesResourceApi res =
          new api.DataflowApi(mock).projects.locations.templates;
      var arg_projectId = "foo";
      var arg_location = "foo";
      var arg_view = "foo";
      var arg_gcsPath = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/locations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf("/templates:get", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_location"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/templates:get"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(
            queryMap["gcsPath"].first, unittest.equals(arg_gcsPath));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGetTemplateResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_location,
              view: arg_view, gcsPath: arg_gcsPath, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetTemplateResponse(response);
      })));
    });

    unittest.test("method--launch", () {
      var mock = new HttpServerMock();
      api.ProjectsLocationsTemplatesResourceApi res =
          new api.DataflowApi(mock).projects.locations.templates;
      var arg_request = buildLaunchTemplateParameters();
      var arg_projectId = "foo";
      var arg_location = "foo";
      var arg_dynamicTemplate_gcsPath = "foo";
      var arg_dynamicTemplate_stagingLocation = "foo";
      var arg_validateOnly = true;
      var arg_gcsPath = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.LaunchTemplateParameters.fromJson(json);
        checkLaunchTemplateParameters(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/locations/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/locations/"));
        pathOffset += 11;
        index = path.indexOf("/templates:launch", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_location"));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/templates:launch"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["dynamicTemplate.gcsPath"].first,
            unittest.equals(arg_dynamicTemplate_gcsPath));
        unittest.expect(queryMap["dynamicTemplate.stagingLocation"].first,
            unittest.equals(arg_dynamicTemplate_stagingLocation));
        unittest.expect(queryMap["validateOnly"].first,
            unittest.equals("$arg_validateOnly"));
        unittest.expect(
            queryMap["gcsPath"].first, unittest.equals(arg_gcsPath));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildLaunchTemplateResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .launch(arg_request, arg_projectId, arg_location,
              dynamicTemplate_gcsPath: arg_dynamicTemplate_gcsPath,
              dynamicTemplate_stagingLocation:
                  arg_dynamicTemplate_stagingLocation,
              validateOnly: arg_validateOnly,
              gcsPath: arg_gcsPath,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLaunchTemplateResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsSnapshotsResourceApi", () {
    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsSnapshotsResourceApi res =
          new api.DataflowApi(mock).projects.snapshots;
      var arg_projectId = "foo";
      var arg_snapshotId = "foo";
      var arg_location = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/snapshots/", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 11),
            unittest.equals("/snapshots/"));
        pathOffset += 11;
        subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
        pathOffset = path.length;
        unittest.expect(subPart, unittest.equals("$arg_snapshotId"));

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildSnapshot());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId, arg_snapshotId,
              location: arg_location, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkSnapshot(response);
      })));
    });

    unittest.test("method--list", () {
      var mock = new HttpServerMock();
      api.ProjectsSnapshotsResourceApi res =
          new api.DataflowApi(mock).projects.snapshots;
      var arg_projectId = "foo";
      var arg_location = "foo";
      var arg_jobId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/snapshots", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/snapshots"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(queryMap["jobId"].first, unittest.equals(arg_jobId));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildListSnapshotsResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .list(arg_projectId,
              location: arg_location, jobId: arg_jobId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkListSnapshotsResponse(response);
      })));
    });
  });

  unittest.group("resource-ProjectsTemplatesResourceApi", () {
    unittest.test("method--create", () {
      var mock = new HttpServerMock();
      api.ProjectsTemplatesResourceApi res =
          new api.DataflowApi(mock).projects.templates;
      var arg_request = buildCreateJobFromTemplateRequest();
      var arg_projectId = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.CreateJobFromTemplateRequest.fromJson(json);
        checkCreateJobFromTemplateRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/templates", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 10),
            unittest.equals("/templates"));
        pathOffset += 10;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildJob());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .create(arg_request, arg_projectId, $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkJob(response);
      })));
    });

    unittest.test("method--get", () {
      var mock = new HttpServerMock();
      api.ProjectsTemplatesResourceApi res =
          new api.DataflowApi(mock).projects.templates;
      var arg_projectId = "foo";
      var arg_location = "foo";
      var arg_view = "foo";
      var arg_gcsPath = "foo";
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/templates:get", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("/templates:get"));
        pathOffset += 14;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));
        unittest.expect(
            queryMap["gcsPath"].first, unittest.equals(arg_gcsPath));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildGetTemplateResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .get(arg_projectId,
              location: arg_location,
              view: arg_view,
              gcsPath: arg_gcsPath,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkGetTemplateResponse(response);
      })));
    });

    unittest.test("method--launch", () {
      var mock = new HttpServerMock();
      api.ProjectsTemplatesResourceApi res =
          new api.DataflowApi(mock).projects.templates;
      var arg_request = buildLaunchTemplateParameters();
      var arg_projectId = "foo";
      var arg_gcsPath = "foo";
      var arg_location = "foo";
      var arg_dynamicTemplate_gcsPath = "foo";
      var arg_dynamicTemplate_stagingLocation = "foo";
      var arg_validateOnly = true;
      var arg_$fields = "foo";
      mock.register(unittest.expectAsync2((http.BaseRequest req, json) {
        var obj = new api.LaunchTemplateParameters.fromJson(json);
        checkLaunchTemplateParameters(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(
            path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;
        unittest.expect(path.substring(pathOffset, pathOffset + 14),
            unittest.equals("v1b3/projects/"));
        pathOffset += 14;
        index = path.indexOf("/templates:launch", pathOffset);
        unittest.expect(index >= 0, unittest.isTrue);
        subPart =
            core.Uri.decodeQueryComponent(path.substring(pathOffset, index));
        pathOffset = index;
        unittest.expect(subPart, unittest.equals("$arg_projectId"));
        unittest.expect(path.substring(pathOffset, pathOffset + 17),
            unittest.equals("/templates:launch"));
        pathOffset += 17;

        var query = (req.url).query;
        var queryOffset = 0;
        var queryMap = <core.String, core.List<core.String>>{};
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
            addQueryParam(core.Uri.decodeQueryComponent(keyvalue[0]),
                core.Uri.decodeQueryComponent(keyvalue[1]));
          }
        }
        unittest.expect(
            queryMap["gcsPath"].first, unittest.equals(arg_gcsPath));
        unittest.expect(
            queryMap["location"].first, unittest.equals(arg_location));
        unittest.expect(queryMap["dynamicTemplate.gcsPath"].first,
            unittest.equals(arg_dynamicTemplate_gcsPath));
        unittest.expect(queryMap["dynamicTemplate.stagingLocation"].first,
            unittest.equals(arg_dynamicTemplate_stagingLocation));
        unittest.expect(queryMap["validateOnly"].first,
            unittest.equals("$arg_validateOnly"));
        unittest.expect(queryMap["fields"].first, unittest.equals(arg_$fields));

        var h = {
          "content-type": "application/json; charset=utf-8",
        };
        var resp = convert.json.encode(buildLaunchTemplateResponse());
        return new async.Future.value(stringResponse(200, h, resp));
      }), true);
      res
          .launch(arg_request, arg_projectId,
              gcsPath: arg_gcsPath,
              location: arg_location,
              dynamicTemplate_gcsPath: arg_dynamicTemplate_gcsPath,
              dynamicTemplate_stagingLocation:
                  arg_dynamicTemplate_stagingLocation,
              validateOnly: arg_validateOnly,
              $fields: arg_$fields)
          .then(unittest.expectAsync1(((response) {
        checkLaunchTemplateResponse(response);
      })));
    });
  });
}
