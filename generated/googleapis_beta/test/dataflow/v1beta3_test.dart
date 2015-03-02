library googleapis_beta.dataflow.v1beta3.test;

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

import 'package:googleapis_beta/dataflow/v1beta3.dart' as api;



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

buildUnnamed1776() {
  var o = new core.List<api.StreamLocation>();
  o.add(buildStreamLocation());
  o.add(buildStreamLocation());
  return o;
}

checkUnnamed1776(core.List<api.StreamLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStreamLocation(o[0]);
  checkStreamLocation(o[1]);
}

buildUnnamed1777() {
  var o = new core.List<api.KeyRangeLocation>();
  o.add(buildKeyRangeLocation());
  o.add(buildKeyRangeLocation());
  return o;
}

checkUnnamed1777(core.List<api.KeyRangeLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkKeyRangeLocation(o[0]);
  checkKeyRangeLocation(o[1]);
}

buildUnnamed1778() {
  var o = new core.List<api.StreamLocation>();
  o.add(buildStreamLocation());
  o.add(buildStreamLocation());
  return o;
}

checkUnnamed1778(core.List<api.StreamLocation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStreamLocation(o[0]);
  checkStreamLocation(o[1]);
}

core.int buildCounterComputationTopology = 0;
buildComputationTopology() {
  var o = new api.ComputationTopology();
  buildCounterComputationTopology++;
  if (buildCounterComputationTopology < 3) {
    o.computationId = "foo";
    o.inputs = buildUnnamed1776();
    o.keyRanges = buildUnnamed1777();
    o.outputs = buildUnnamed1778();
  }
  buildCounterComputationTopology--;
  return o;
}

checkComputationTopology(api.ComputationTopology o) {
  buildCounterComputationTopology++;
  if (buildCounterComputationTopology < 3) {
    unittest.expect(o.computationId, unittest.equals('foo'));
    checkUnnamed1776(o.inputs);
    checkUnnamed1777(o.keyRanges);
    checkUnnamed1778(o.outputs);
  }
  buildCounterComputationTopology--;
}

buildUnnamed1779() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1779(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDataDiskAssignment = 0;
buildDataDiskAssignment() {
  var o = new api.DataDiskAssignment();
  buildCounterDataDiskAssignment++;
  if (buildCounterDataDiskAssignment < 3) {
    o.dataDisks = buildUnnamed1779();
    o.vmInstance = "foo";
  }
  buildCounterDataDiskAssignment--;
  return o;
}

checkDataDiskAssignment(api.DataDiskAssignment o) {
  buildCounterDataDiskAssignment++;
  if (buildCounterDataDiskAssignment < 3) {
    checkUnnamed1779(o.dataDisks);
    unittest.expect(o.vmInstance, unittest.equals('foo'));
  }
  buildCounterDataDiskAssignment--;
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

buildUnnamed1780() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1780(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1781() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed1781(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted1 = (o["x"]) as core.Map; unittest.expect(casted1, unittest.hasLength(3)); unittest.expect(casted1["list"], unittest.equals([1, 2, 3])); unittest.expect(casted1["bool"], unittest.equals(true)); unittest.expect(casted1["string"], unittest.equals('foo')); 
  var casted2 = (o["y"]) as core.Map; unittest.expect(casted2, unittest.hasLength(3)); unittest.expect(casted2["list"], unittest.equals([1, 2, 3])); unittest.expect(casted2["bool"], unittest.equals(true)); unittest.expect(casted2["string"], unittest.equals('foo')); 
}

buildUnnamed1782() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed1782(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted3 = (o["x"]) as core.Map; unittest.expect(casted3, unittest.hasLength(3)); unittest.expect(casted3["list"], unittest.equals([1, 2, 3])); unittest.expect(casted3["bool"], unittest.equals(true)); unittest.expect(casted3["string"], unittest.equals('foo')); 
  var casted4 = (o["y"]) as core.Map; unittest.expect(casted4, unittest.hasLength(3)); unittest.expect(casted4["list"], unittest.equals([1, 2, 3])); unittest.expect(casted4["bool"], unittest.equals(true)); unittest.expect(casted4["string"], unittest.equals('foo')); 
}

buildUnnamed1783() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed1783(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted5 = (o["x"]) as core.Map; unittest.expect(casted5, unittest.hasLength(3)); unittest.expect(casted5["list"], unittest.equals([1, 2, 3])); unittest.expect(casted5["bool"], unittest.equals(true)); unittest.expect(casted5["string"], unittest.equals('foo')); 
  var casted6 = (o["y"]) as core.Map; unittest.expect(casted6, unittest.hasLength(3)); unittest.expect(casted6["list"], unittest.equals([1, 2, 3])); unittest.expect(casted6["bool"], unittest.equals(true)); unittest.expect(casted6["string"], unittest.equals('foo')); 
}

buildUnnamed1784() {
  var o = new core.List<api.WorkerPool>();
  o.add(buildWorkerPool());
  o.add(buildWorkerPool());
  return o;
}

checkUnnamed1784(core.List<api.WorkerPool> o) {
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
    o.experiments = buildUnnamed1780();
    o.sdkPipelineOptions = buildUnnamed1781();
    o.tempStoragePrefix = "foo";
    o.userAgent = buildUnnamed1782();
    o.version = buildUnnamed1783();
    o.workerPools = buildUnnamed1784();
  }
  buildCounterEnvironment--;
  return o;
}

checkEnvironment(api.Environment o) {
  buildCounterEnvironment++;
  if (buildCounterEnvironment < 3) {
    unittest.expect(o.clusterManagerApiService, unittest.equals('foo'));
    unittest.expect(o.dataset, unittest.equals('foo'));
    checkUnnamed1780(o.experiments);
    checkUnnamed1781(o.sdkPipelineOptions);
    unittest.expect(o.tempStoragePrefix, unittest.equals('foo'));
    checkUnnamed1782(o.userAgent);
    checkUnnamed1783(o.version);
    checkUnnamed1784(o.workerPools);
  }
  buildCounterEnvironment--;
}

buildUnnamed1785() {
  var o = new core.List<api.InstructionInput>();
  o.add(buildInstructionInput());
  o.add(buildInstructionInput());
  return o;
}

checkUnnamed1785(core.List<api.InstructionInput> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstructionInput(o[0]);
  checkInstructionInput(o[1]);
}

core.int buildCounterFlattenInstruction = 0;
buildFlattenInstruction() {
  var o = new api.FlattenInstruction();
  buildCounterFlattenInstruction++;
  if (buildCounterFlattenInstruction < 3) {
    o.inputs = buildUnnamed1785();
  }
  buildCounterFlattenInstruction--;
  return o;
}

checkFlattenInstruction(api.FlattenInstruction o) {
  buildCounterFlattenInstruction++;
  if (buildCounterFlattenInstruction < 3) {
    checkUnnamed1785(o.inputs);
  }
  buildCounterFlattenInstruction--;
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

buildUnnamed1786() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed1786(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted7 = (o["x"]) as core.Map; unittest.expect(casted7, unittest.hasLength(3)); unittest.expect(casted7["list"], unittest.equals([1, 2, 3])); unittest.expect(casted7["bool"], unittest.equals(true)); unittest.expect(casted7["string"], unittest.equals('foo')); 
  var casted8 = (o["y"]) as core.Map; unittest.expect(casted8, unittest.hasLength(3)); unittest.expect(casted8["list"], unittest.equals([1, 2, 3])); unittest.expect(casted8["bool"], unittest.equals(true)); unittest.expect(casted8["string"], unittest.equals('foo')); 
}

core.int buildCounterInstructionOutput = 0;
buildInstructionOutput() {
  var o = new api.InstructionOutput();
  buildCounterInstructionOutput++;
  if (buildCounterInstructionOutput < 3) {
    o.codec = buildUnnamed1786();
    o.name = "foo";
  }
  buildCounterInstructionOutput--;
  return o;
}

checkInstructionOutput(api.InstructionOutput o) {
  buildCounterInstructionOutput++;
  if (buildCounterInstructionOutput < 3) {
    checkUnnamed1786(o.codec);
    unittest.expect(o.name, unittest.equals('foo'));
  }
  buildCounterInstructionOutput--;
}

buildUnnamed1787() {
  var o = new core.List<api.Step>();
  o.add(buildStep());
  o.add(buildStep());
  return o;
}

checkUnnamed1787(core.List<api.Step> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStep(o[0]);
  checkStep(o[1]);
}

core.int buildCounterJob = 0;
buildJob() {
  var o = new api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.createTime = "foo";
    o.currentState = "foo";
    o.currentStateTime = "foo";
    o.environment = buildEnvironment();
    o.executionInfo = buildJobExecutionInfo();
    o.id = "foo";
    o.name = "foo";
    o.projectId = "foo";
    o.requestedState = "foo";
    o.steps = buildUnnamed1787();
    o.type = "foo";
  }
  buildCounterJob--;
  return o;
}

checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    unittest.expect(o.createTime, unittest.equals('foo'));
    unittest.expect(o.currentState, unittest.equals('foo'));
    unittest.expect(o.currentStateTime, unittest.equals('foo'));
    checkEnvironment(o.environment);
    checkJobExecutionInfo(o.executionInfo);
    unittest.expect(o.id, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.requestedState, unittest.equals('foo'));
    checkUnnamed1787(o.steps);
    unittest.expect(o.type, unittest.equals('foo'));
  }
  buildCounterJob--;
}

buildUnnamed1788() {
  var o = new core.Map<core.String, api.JobExecutionStageInfo>();
  o["x"] = buildJobExecutionStageInfo();
  o["y"] = buildJobExecutionStageInfo();
  return o;
}

checkUnnamed1788(core.Map<core.String, api.JobExecutionStageInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobExecutionStageInfo(o["x"]);
  checkJobExecutionStageInfo(o["y"]);
}

core.int buildCounterJobExecutionInfo = 0;
buildJobExecutionInfo() {
  var o = new api.JobExecutionInfo();
  buildCounterJobExecutionInfo++;
  if (buildCounterJobExecutionInfo < 3) {
    o.stages = buildUnnamed1788();
  }
  buildCounterJobExecutionInfo--;
  return o;
}

checkJobExecutionInfo(api.JobExecutionInfo o) {
  buildCounterJobExecutionInfo++;
  if (buildCounterJobExecutionInfo < 3) {
    checkUnnamed1788(o.stages);
  }
  buildCounterJobExecutionInfo--;
}

buildUnnamed1789() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1789(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterJobExecutionStageInfo = 0;
buildJobExecutionStageInfo() {
  var o = new api.JobExecutionStageInfo();
  buildCounterJobExecutionStageInfo++;
  if (buildCounterJobExecutionStageInfo < 3) {
    o.stepName = buildUnnamed1789();
  }
  buildCounterJobExecutionStageInfo--;
  return o;
}

checkJobExecutionStageInfo(api.JobExecutionStageInfo o) {
  buildCounterJobExecutionStageInfo++;
  if (buildCounterJobExecutionStageInfo < 3) {
    checkUnnamed1789(o.stepName);
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

buildUnnamed1790() {
  var o = new core.List<api.MetricUpdate>();
  o.add(buildMetricUpdate());
  o.add(buildMetricUpdate());
  return o;
}

checkUnnamed1790(core.List<api.MetricUpdate> o) {
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
    o.metrics = buildUnnamed1790();
  }
  buildCounterJobMetrics--;
  return o;
}

checkJobMetrics(api.JobMetrics o) {
  buildCounterJobMetrics++;
  if (buildCounterJobMetrics < 3) {
    unittest.expect(o.metricTime, unittest.equals('foo'));
    checkUnnamed1790(o.metrics);
  }
  buildCounterJobMetrics--;
}

core.int buildCounterKeyRangeLocation = 0;
buildKeyRangeLocation() {
  var o = new api.KeyRangeLocation();
  buildCounterKeyRangeLocation++;
  if (buildCounterKeyRangeLocation < 3) {
    o.dataDisk = "foo";
    o.deliveryEndpoint = "foo";
    o.end = "foo";
    o.persistentDirectory = "foo";
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
    unittest.expect(o.end, unittest.equals('foo'));
    unittest.expect(o.persistentDirectory, unittest.equals('foo'));
    unittest.expect(o.start, unittest.equals('foo'));
  }
  buildCounterKeyRangeLocation--;
}

buildUnnamed1791() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1791(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

buildUnnamed1792() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1792(core.List<core.String> o) {
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
    o.requestedLeaseDuration = "foo";
    o.workItemTypes = buildUnnamed1791();
    o.workerCapabilities = buildUnnamed1792();
    o.workerId = "foo";
  }
  buildCounterLeaseWorkItemRequest--;
  return o;
}

checkLeaseWorkItemRequest(api.LeaseWorkItemRequest o) {
  buildCounterLeaseWorkItemRequest++;
  if (buildCounterLeaseWorkItemRequest < 3) {
    unittest.expect(o.currentWorkerTime, unittest.equals('foo'));
    unittest.expect(o.requestedLeaseDuration, unittest.equals('foo'));
    checkUnnamed1791(o.workItemTypes);
    checkUnnamed1792(o.workerCapabilities);
    unittest.expect(o.workerId, unittest.equals('foo'));
  }
  buildCounterLeaseWorkItemRequest--;
}

buildUnnamed1793() {
  var o = new core.List<api.WorkItem>();
  o.add(buildWorkItem());
  o.add(buildWorkItem());
  return o;
}

checkUnnamed1793(core.List<api.WorkItem> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkItem(o[0]);
  checkWorkItem(o[1]);
}

core.int buildCounterLeaseWorkItemResponse = 0;
buildLeaseWorkItemResponse() {
  var o = new api.LeaseWorkItemResponse();
  buildCounterLeaseWorkItemResponse++;
  if (buildCounterLeaseWorkItemResponse < 3) {
    o.workItems = buildUnnamed1793();
  }
  buildCounterLeaseWorkItemResponse--;
  return o;
}

checkLeaseWorkItemResponse(api.LeaseWorkItemResponse o) {
  buildCounterLeaseWorkItemResponse++;
  if (buildCounterLeaseWorkItemResponse < 3) {
    checkUnnamed1793(o.workItems);
  }
  buildCounterLeaseWorkItemResponse--;
}

buildUnnamed1794() {
  var o = new core.List<api.JobMessage>();
  o.add(buildJobMessage());
  o.add(buildJobMessage());
  return o;
}

checkUnnamed1794(core.List<api.JobMessage> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobMessage(o[0]);
  checkJobMessage(o[1]);
}

core.int buildCounterListJobMessagesResponse = 0;
buildListJobMessagesResponse() {
  var o = new api.ListJobMessagesResponse();
  buildCounterListJobMessagesResponse++;
  if (buildCounterListJobMessagesResponse < 3) {
    o.jobMessages = buildUnnamed1794();
    o.nextPageToken = "foo";
  }
  buildCounterListJobMessagesResponse--;
  return o;
}

checkListJobMessagesResponse(api.ListJobMessagesResponse o) {
  buildCounterListJobMessagesResponse++;
  if (buildCounterListJobMessagesResponse < 3) {
    checkUnnamed1794(o.jobMessages);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListJobMessagesResponse--;
}

buildUnnamed1795() {
  var o = new core.List<api.Job>();
  o.add(buildJob());
  o.add(buildJob());
  return o;
}

checkUnnamed1795(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.int buildCounterListJobsResponse = 0;
buildListJobsResponse() {
  var o = new api.ListJobsResponse();
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    o.jobs = buildUnnamed1795();
    o.nextPageToken = "foo";
  }
  buildCounterListJobsResponse--;
  return o;
}

checkListJobsResponse(api.ListJobsResponse o) {
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    checkUnnamed1795(o.jobs);
    unittest.expect(o.nextPageToken, unittest.equals('foo'));
  }
  buildCounterListJobsResponse--;
}

buildUnnamed1796() {
  var o = new core.List<api.ParallelInstruction>();
  o.add(buildParallelInstruction());
  o.add(buildParallelInstruction());
  return o;
}

checkUnnamed1796(core.List<api.ParallelInstruction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkParallelInstruction(o[0]);
  checkParallelInstruction(o[1]);
}

core.int buildCounterMapTask = 0;
buildMapTask() {
  var o = new api.MapTask();
  buildCounterMapTask++;
  if (buildCounterMapTask < 3) {
    o.instructions = buildUnnamed1796();
    o.stageName = "foo";
    o.systemName = "foo";
  }
  buildCounterMapTask--;
  return o;
}

checkMapTask(api.MapTask o) {
  buildCounterMapTask++;
  if (buildCounterMapTask < 3) {
    checkUnnamed1796(o.instructions);
    unittest.expect(o.stageName, unittest.equals('foo'));
    unittest.expect(o.systemName, unittest.equals('foo'));
  }
  buildCounterMapTask--;
}

buildUnnamed1797() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1797(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

core.int buildCounterMetricStructuredName = 0;
buildMetricStructuredName() {
  var o = new api.MetricStructuredName();
  buildCounterMetricStructuredName++;
  if (buildCounterMetricStructuredName < 3) {
    o.context = buildUnnamed1797();
    o.name = "foo";
    o.origin = "foo";
  }
  buildCounterMetricStructuredName--;
  return o;
}

checkMetricStructuredName(api.MetricStructuredName o) {
  buildCounterMetricStructuredName++;
  if (buildCounterMetricStructuredName < 3) {
    checkUnnamed1797(o.context);
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
    o.internal = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
    o.kind = "foo";
    o.meanCount = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
    o.meanSum = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
    o.name = buildMetricStructuredName();
    o.scalar = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
    o.set = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
    o.updateTime = "foo";
  }
  buildCounterMetricUpdate--;
  return o;
}

checkMetricUpdate(api.MetricUpdate o) {
  buildCounterMetricUpdate++;
  if (buildCounterMetricUpdate < 3) {
    unittest.expect(o.cumulative, unittest.isTrue);
    var casted9 = (o.internal) as core.Map; unittest.expect(casted9, unittest.hasLength(3)); unittest.expect(casted9["list"], unittest.equals([1, 2, 3])); unittest.expect(casted9["bool"], unittest.equals(true)); unittest.expect(casted9["string"], unittest.equals('foo')); 
    unittest.expect(o.kind, unittest.equals('foo'));
    var casted10 = (o.meanCount) as core.Map; unittest.expect(casted10, unittest.hasLength(3)); unittest.expect(casted10["list"], unittest.equals([1, 2, 3])); unittest.expect(casted10["bool"], unittest.equals(true)); unittest.expect(casted10["string"], unittest.equals('foo')); 
    var casted11 = (o.meanSum) as core.Map; unittest.expect(casted11, unittest.hasLength(3)); unittest.expect(casted11["list"], unittest.equals([1, 2, 3])); unittest.expect(casted11["bool"], unittest.equals(true)); unittest.expect(casted11["string"], unittest.equals('foo')); 
    checkMetricStructuredName(o.name);
    var casted12 = (o.scalar) as core.Map; unittest.expect(casted12, unittest.hasLength(3)); unittest.expect(casted12["list"], unittest.equals([1, 2, 3])); unittest.expect(casted12["bool"], unittest.equals(true)); unittest.expect(casted12["string"], unittest.equals('foo')); 
    var casted13 = (o.set) as core.Map; unittest.expect(casted13, unittest.hasLength(3)); unittest.expect(casted13["list"], unittest.equals([1, 2, 3])); unittest.expect(casted13["bool"], unittest.equals(true)); unittest.expect(casted13["string"], unittest.equals('foo')); 
    unittest.expect(o.updateTime, unittest.equals('foo'));
  }
  buildCounterMetricUpdate--;
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

buildUnnamed1798() {
  var o = new core.List<api.MultiOutputInfo>();
  o.add(buildMultiOutputInfo());
  o.add(buildMultiOutputInfo());
  return o;
}

checkUnnamed1798(core.List<api.MultiOutputInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMultiOutputInfo(o[0]);
  checkMultiOutputInfo(o[1]);
}

buildUnnamed1799() {
  var o = new core.List<api.SideInputInfo>();
  o.add(buildSideInputInfo());
  o.add(buildSideInputInfo());
  return o;
}

checkUnnamed1799(core.List<api.SideInputInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSideInputInfo(o[0]);
  checkSideInputInfo(o[1]);
}

buildUnnamed1800() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed1800(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted14 = (o["x"]) as core.Map; unittest.expect(casted14, unittest.hasLength(3)); unittest.expect(casted14["list"], unittest.equals([1, 2, 3])); unittest.expect(casted14["bool"], unittest.equals(true)); unittest.expect(casted14["string"], unittest.equals('foo')); 
  var casted15 = (o["y"]) as core.Map; unittest.expect(casted15, unittest.hasLength(3)); unittest.expect(casted15["list"], unittest.equals([1, 2, 3])); unittest.expect(casted15["bool"], unittest.equals(true)); unittest.expect(casted15["string"], unittest.equals('foo')); 
}

core.int buildCounterParDoInstruction = 0;
buildParDoInstruction() {
  var o = new api.ParDoInstruction();
  buildCounterParDoInstruction++;
  if (buildCounterParDoInstruction < 3) {
    o.input = buildInstructionInput();
    o.multiOutputInfos = buildUnnamed1798();
    o.numOutputs = 42;
    o.sideInputs = buildUnnamed1799();
    o.userFn = buildUnnamed1800();
  }
  buildCounterParDoInstruction--;
  return o;
}

checkParDoInstruction(api.ParDoInstruction o) {
  buildCounterParDoInstruction++;
  if (buildCounterParDoInstruction < 3) {
    checkInstructionInput(o.input);
    checkUnnamed1798(o.multiOutputInfos);
    unittest.expect(o.numOutputs, unittest.equals(42));
    checkUnnamed1799(o.sideInputs);
    checkUnnamed1800(o.userFn);
  }
  buildCounterParDoInstruction--;
}

buildUnnamed1801() {
  var o = new core.List<api.InstructionOutput>();
  o.add(buildInstructionOutput());
  o.add(buildInstructionOutput());
  return o;
}

checkUnnamed1801(core.List<api.InstructionOutput> o) {
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
    o.outputs = buildUnnamed1801();
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
    checkUnnamed1801(o.outputs);
    checkParDoInstruction(o.parDo);
    checkPartialGroupByKeyInstruction(o.partialGroupByKey);
    checkReadInstruction(o.read);
    unittest.expect(o.systemName, unittest.equals('foo'));
    checkWriteInstruction(o.write);
  }
  buildCounterParallelInstruction--;
}

buildUnnamed1802() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed1802(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted16 = (o["x"]) as core.Map; unittest.expect(casted16, unittest.hasLength(3)); unittest.expect(casted16["list"], unittest.equals([1, 2, 3])); unittest.expect(casted16["bool"], unittest.equals(true)); unittest.expect(casted16["string"], unittest.equals('foo')); 
  var casted17 = (o["y"]) as core.Map; unittest.expect(casted17, unittest.hasLength(3)); unittest.expect(casted17["list"], unittest.equals([1, 2, 3])); unittest.expect(casted17["bool"], unittest.equals(true)); unittest.expect(casted17["string"], unittest.equals('foo')); 
}

core.int buildCounterPartialGroupByKeyInstruction = 0;
buildPartialGroupByKeyInstruction() {
  var o = new api.PartialGroupByKeyInstruction();
  buildCounterPartialGroupByKeyInstruction++;
  if (buildCounterPartialGroupByKeyInstruction < 3) {
    o.input = buildInstructionInput();
    o.inputElementCodec = buildUnnamed1802();
  }
  buildCounterPartialGroupByKeyInstruction--;
  return o;
}

checkPartialGroupByKeyInstruction(api.PartialGroupByKeyInstruction o) {
  buildCounterPartialGroupByKeyInstruction++;
  if (buildCounterPartialGroupByKeyInstruction < 3) {
    checkInstructionInput(o.input);
    checkUnnamed1802(o.inputElementCodec);
  }
  buildCounterPartialGroupByKeyInstruction--;
}

core.int buildCounterPosition = 0;
buildPosition() {
  var o = new api.Position();
  buildCounterPosition++;
  if (buildCounterPosition < 3) {
    o.byteOffset = "foo";
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
    unittest.expect(o.end, unittest.isTrue);
    unittest.expect(o.key, unittest.equals('foo'));
    unittest.expect(o.recordIndex, unittest.equals('foo'));
    unittest.expect(o.shufflePosition, unittest.equals('foo'));
  }
  buildCounterPosition--;
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
  }
  buildCounterPubsubLocation--;
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

buildUnnamed1803() {
  var o = new core.List<api.WorkItemStatus>();
  o.add(buildWorkItemStatus());
  o.add(buildWorkItemStatus());
  return o;
}

checkUnnamed1803(core.List<api.WorkItemStatus> o) {
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
    o.workItemStatuses = buildUnnamed1803();
    o.workerId = "foo";
  }
  buildCounterReportWorkItemStatusRequest--;
  return o;
}

checkReportWorkItemStatusRequest(api.ReportWorkItemStatusRequest o) {
  buildCounterReportWorkItemStatusRequest++;
  if (buildCounterReportWorkItemStatusRequest < 3) {
    unittest.expect(o.currentWorkerTime, unittest.equals('foo'));
    checkUnnamed1803(o.workItemStatuses);
    unittest.expect(o.workerId, unittest.equals('foo'));
  }
  buildCounterReportWorkItemStatusRequest--;
}

buildUnnamed1804() {
  var o = new core.List<api.WorkItemServiceState>();
  o.add(buildWorkItemServiceState());
  o.add(buildWorkItemServiceState());
  return o;
}

checkUnnamed1804(core.List<api.WorkItemServiceState> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkItemServiceState(o[0]);
  checkWorkItemServiceState(o[1]);
}

core.int buildCounterReportWorkItemStatusResponse = 0;
buildReportWorkItemStatusResponse() {
  var o = new api.ReportWorkItemStatusResponse();
  buildCounterReportWorkItemStatusResponse++;
  if (buildCounterReportWorkItemStatusResponse < 3) {
    o.workItemServiceStates = buildUnnamed1804();
  }
  buildCounterReportWorkItemStatusResponse--;
  return o;
}

checkReportWorkItemStatusResponse(api.ReportWorkItemStatusResponse o) {
  buildCounterReportWorkItemStatusResponse++;
  if (buildCounterReportWorkItemStatusResponse < 3) {
    checkUnnamed1804(o.workItemServiceStates);
  }
  buildCounterReportWorkItemStatusResponse--;
}

buildUnnamed1805() {
  var o = new core.List<api.SideInputInfo>();
  o.add(buildSideInputInfo());
  o.add(buildSideInputInfo());
  return o;
}

checkUnnamed1805(core.List<api.SideInputInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSideInputInfo(o[0]);
  checkSideInputInfo(o[1]);
}

buildUnnamed1806() {
  var o = new core.List<api.SeqMapTaskOutputInfo>();
  o.add(buildSeqMapTaskOutputInfo());
  o.add(buildSeqMapTaskOutputInfo());
  return o;
}

checkUnnamed1806(core.List<api.SeqMapTaskOutputInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSeqMapTaskOutputInfo(o[0]);
  checkSeqMapTaskOutputInfo(o[1]);
}

buildUnnamed1807() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed1807(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted18 = (o["x"]) as core.Map; unittest.expect(casted18, unittest.hasLength(3)); unittest.expect(casted18["list"], unittest.equals([1, 2, 3])); unittest.expect(casted18["bool"], unittest.equals(true)); unittest.expect(casted18["string"], unittest.equals('foo')); 
  var casted19 = (o["y"]) as core.Map; unittest.expect(casted19, unittest.hasLength(3)); unittest.expect(casted19["list"], unittest.equals([1, 2, 3])); unittest.expect(casted19["bool"], unittest.equals(true)); unittest.expect(casted19["string"], unittest.equals('foo')); 
}

core.int buildCounterSeqMapTask = 0;
buildSeqMapTask() {
  var o = new api.SeqMapTask();
  buildCounterSeqMapTask++;
  if (buildCounterSeqMapTask < 3) {
    o.inputs = buildUnnamed1805();
    o.name = "foo";
    o.outputInfos = buildUnnamed1806();
    o.stageName = "foo";
    o.systemName = "foo";
    o.userFn = buildUnnamed1807();
  }
  buildCounterSeqMapTask--;
  return o;
}

checkSeqMapTask(api.SeqMapTask o) {
  buildCounterSeqMapTask++;
  if (buildCounterSeqMapTask < 3) {
    checkUnnamed1805(o.inputs);
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed1806(o.outputInfos);
    unittest.expect(o.stageName, unittest.equals('foo'));
    unittest.expect(o.systemName, unittest.equals('foo'));
    checkUnnamed1807(o.userFn);
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

buildUnnamed1808() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed1808(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted20 = (o["x"]) as core.Map; unittest.expect(casted20, unittest.hasLength(3)); unittest.expect(casted20["list"], unittest.equals([1, 2, 3])); unittest.expect(casted20["bool"], unittest.equals(true)); unittest.expect(casted20["string"], unittest.equals('foo')); 
  var casted21 = (o["y"]) as core.Map; unittest.expect(casted21, unittest.hasLength(3)); unittest.expect(casted21["list"], unittest.equals([1, 2, 3])); unittest.expect(casted21["bool"], unittest.equals(true)); unittest.expect(casted21["string"], unittest.equals('foo')); 
}

buildUnnamed1809() {
  var o = new core.List<api.Source>();
  o.add(buildSource());
  o.add(buildSource());
  return o;
}

checkUnnamed1809(core.List<api.Source> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSource(o[0]);
  checkSource(o[1]);
}

core.int buildCounterSideInputInfo = 0;
buildSideInputInfo() {
  var o = new api.SideInputInfo();
  buildCounterSideInputInfo++;
  if (buildCounterSideInputInfo < 3) {
    o.kind = buildUnnamed1808();
    o.sources = buildUnnamed1809();
    o.tag = "foo";
  }
  buildCounterSideInputInfo--;
  return o;
}

checkSideInputInfo(api.SideInputInfo o) {
  buildCounterSideInputInfo++;
  if (buildCounterSideInputInfo < 3) {
    checkUnnamed1808(o.kind);
    checkUnnamed1809(o.sources);
    unittest.expect(o.tag, unittest.equals('foo'));
  }
  buildCounterSideInputInfo--;
}

buildUnnamed1810() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed1810(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted22 = (o["x"]) as core.Map; unittest.expect(casted22, unittest.hasLength(3)); unittest.expect(casted22["list"], unittest.equals([1, 2, 3])); unittest.expect(casted22["bool"], unittest.equals(true)); unittest.expect(casted22["string"], unittest.equals('foo')); 
  var casted23 = (o["y"]) as core.Map; unittest.expect(casted23, unittest.hasLength(3)); unittest.expect(casted23["list"], unittest.equals([1, 2, 3])); unittest.expect(casted23["bool"], unittest.equals(true)); unittest.expect(casted23["string"], unittest.equals('foo')); 
}

buildUnnamed1811() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed1811(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted24 = (o["x"]) as core.Map; unittest.expect(casted24, unittest.hasLength(3)); unittest.expect(casted24["list"], unittest.equals([1, 2, 3])); unittest.expect(casted24["bool"], unittest.equals(true)); unittest.expect(casted24["string"], unittest.equals('foo')); 
  var casted25 = (o["y"]) as core.Map; unittest.expect(casted25, unittest.hasLength(3)); unittest.expect(casted25["list"], unittest.equals([1, 2, 3])); unittest.expect(casted25["bool"], unittest.equals(true)); unittest.expect(casted25["string"], unittest.equals('foo')); 
}

core.int buildCounterSink = 0;
buildSink() {
  var o = new api.Sink();
  buildCounterSink++;
  if (buildCounterSink < 3) {
    o.codec = buildUnnamed1810();
    o.spec = buildUnnamed1811();
  }
  buildCounterSink--;
  return o;
}

checkSink(api.Sink o) {
  buildCounterSink++;
  if (buildCounterSink < 3) {
    checkUnnamed1810(o.codec);
    checkUnnamed1811(o.spec);
  }
  buildCounterSink--;
}

buildUnnamed1812() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed1812(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted26 = (o["x"]) as core.Map; unittest.expect(casted26, unittest.hasLength(3)); unittest.expect(casted26["list"], unittest.equals([1, 2, 3])); unittest.expect(casted26["bool"], unittest.equals(true)); unittest.expect(casted26["string"], unittest.equals('foo')); 
  var casted27 = (o["y"]) as core.Map; unittest.expect(casted27, unittest.hasLength(3)); unittest.expect(casted27["list"], unittest.equals([1, 2, 3])); unittest.expect(casted27["bool"], unittest.equals(true)); unittest.expect(casted27["string"], unittest.equals('foo')); 
}

buildUnnamed1813() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed1812());
  o.add(buildUnnamed1812());
  return o;
}

checkUnnamed1813(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1812(o[0]);
  checkUnnamed1812(o[1]);
}

buildUnnamed1814() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed1814(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted28 = (o["x"]) as core.Map; unittest.expect(casted28, unittest.hasLength(3)); unittest.expect(casted28["list"], unittest.equals([1, 2, 3])); unittest.expect(casted28["bool"], unittest.equals(true)); unittest.expect(casted28["string"], unittest.equals('foo')); 
  var casted29 = (o["y"]) as core.Map; unittest.expect(casted29, unittest.hasLength(3)); unittest.expect(casted29["list"], unittest.equals([1, 2, 3])); unittest.expect(casted29["bool"], unittest.equals(true)); unittest.expect(casted29["string"], unittest.equals('foo')); 
}

buildUnnamed1815() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed1815(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted30 = (o["x"]) as core.Map; unittest.expect(casted30, unittest.hasLength(3)); unittest.expect(casted30["list"], unittest.equals([1, 2, 3])); unittest.expect(casted30["bool"], unittest.equals(true)); unittest.expect(casted30["string"], unittest.equals('foo')); 
  var casted31 = (o["y"]) as core.Map; unittest.expect(casted31, unittest.hasLength(3)); unittest.expect(casted31["list"], unittest.equals([1, 2, 3])); unittest.expect(casted31["bool"], unittest.equals(true)); unittest.expect(casted31["string"], unittest.equals('foo')); 
}

core.int buildCounterSource = 0;
buildSource() {
  var o = new api.Source();
  buildCounterSource++;
  if (buildCounterSource < 3) {
    o.baseSpecs = buildUnnamed1813();
    o.codec = buildUnnamed1814();
    o.doesNotNeedSplitting = true;
    o.metadata = buildSourceMetadata();
    o.spec = buildUnnamed1815();
  }
  buildCounterSource--;
  return o;
}

checkSource(api.Source o) {
  buildCounterSource++;
  if (buildCounterSource < 3) {
    checkUnnamed1813(o.baseSpecs);
    checkUnnamed1814(o.codec);
    unittest.expect(o.doesNotNeedSplitting, unittest.isTrue);
    checkSourceMetadata(o.metadata);
    checkUnnamed1815(o.spec);
  }
  buildCounterSource--;
}

core.int buildCounterSourceFork = 0;
buildSourceFork() {
  var o = new api.SourceFork();
  buildCounterSourceFork++;
  if (buildCounterSourceFork < 3) {
    o.primary = buildSourceSplitShard();
    o.residual = buildSourceSplitShard();
  }
  buildCounterSourceFork--;
  return o;
}

checkSourceFork(api.SourceFork o) {
  buildCounterSourceFork++;
  if (buildCounterSourceFork < 3) {
    checkSourceSplitShard(o.primary);
    checkSourceSplitShard(o.residual);
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
    o.split = buildSourceSplitRequest();
  }
  buildCounterSourceOperationRequest--;
  return o;
}

checkSourceOperationRequest(api.SourceOperationRequest o) {
  buildCounterSourceOperationRequest++;
  if (buildCounterSourceOperationRequest < 3) {
    checkSourceGetMetadataRequest(o.getMetadata);
    checkSourceSplitRequest(o.split);
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
    o.desiredShardSizeBytes = "foo";
  }
  buildCounterSourceSplitOptions--;
  return o;
}

checkSourceSplitOptions(api.SourceSplitOptions o) {
  buildCounterSourceSplitOptions++;
  if (buildCounterSourceSplitOptions < 3) {
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

buildUnnamed1816() {
  var o = new core.List<api.SourceSplitShard>();
  o.add(buildSourceSplitShard());
  o.add(buildSourceSplitShard());
  return o;
}

checkUnnamed1816(core.List<api.SourceSplitShard> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSourceSplitShard(o[0]);
  checkSourceSplitShard(o[1]);
}

core.int buildCounterSourceSplitResponse = 0;
buildSourceSplitResponse() {
  var o = new api.SourceSplitResponse();
  buildCounterSourceSplitResponse++;
  if (buildCounterSourceSplitResponse < 3) {
    o.outcome = "foo";
    o.shards = buildUnnamed1816();
  }
  buildCounterSourceSplitResponse--;
  return o;
}

checkSourceSplitResponse(api.SourceSplitResponse o) {
  buildCounterSourceSplitResponse++;
  if (buildCounterSourceSplitResponse < 3) {
    unittest.expect(o.outcome, unittest.equals('foo'));
    checkUnnamed1816(o.shards);
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

buildUnnamed1817() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed1817(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted32 = (o["x"]) as core.Map; unittest.expect(casted32, unittest.hasLength(3)); unittest.expect(casted32["list"], unittest.equals([1, 2, 3])); unittest.expect(casted32["bool"], unittest.equals(true)); unittest.expect(casted32["string"], unittest.equals('foo')); 
  var casted33 = (o["y"]) as core.Map; unittest.expect(casted33, unittest.hasLength(3)); unittest.expect(casted33["list"], unittest.equals([1, 2, 3])); unittest.expect(casted33["bool"], unittest.equals(true)); unittest.expect(casted33["string"], unittest.equals('foo')); 
}

buildUnnamed1818() {
  var o = new core.List<core.Map<core.String, core.Object>>();
  o.add(buildUnnamed1817());
  o.add(buildUnnamed1817());
  return o;
}

checkUnnamed1818(core.List<core.Map<core.String, core.Object>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed1817(o[0]);
  checkUnnamed1817(o[1]);
}

core.int buildCounterStatus = 0;
buildStatus() {
  var o = new api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed1818();
    o.message = "foo";
  }
  buildCounterStatus--;
  return o;
}

checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code, unittest.equals(42));
    checkUnnamed1818(o.details);
    unittest.expect(o.message, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

buildUnnamed1819() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed1819(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted34 = (o["x"]) as core.Map; unittest.expect(casted34, unittest.hasLength(3)); unittest.expect(casted34["list"], unittest.equals([1, 2, 3])); unittest.expect(casted34["bool"], unittest.equals(true)); unittest.expect(casted34["string"], unittest.equals('foo')); 
  var casted35 = (o["y"]) as core.Map; unittest.expect(casted35, unittest.hasLength(3)); unittest.expect(casted35["list"], unittest.equals([1, 2, 3])); unittest.expect(casted35["bool"], unittest.equals(true)); unittest.expect(casted35["string"], unittest.equals('foo')); 
}

core.int buildCounterStep = 0;
buildStep() {
  var o = new api.Step();
  buildCounterStep++;
  if (buildCounterStep < 3) {
    o.kind = "foo";
    o.name = "foo";
    o.properties = buildUnnamed1819();
  }
  buildCounterStep--;
  return o;
}

checkStep(api.Step o) {
  buildCounterStep++;
  if (buildCounterStep < 3) {
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.name, unittest.equals('foo'));
    checkUnnamed1819(o.properties);
  }
  buildCounterStep--;
}

core.int buildCounterStreamLocation = 0;
buildStreamLocation() {
  var o = new api.StreamLocation();
  buildCounterStreamLocation++;
  if (buildCounterStreamLocation < 3) {
    o.pubsubLocation = buildPubsubLocation();
    o.streamingStageLocation = buildStreamingStageLocation();
  }
  buildCounterStreamLocation--;
  return o;
}

checkStreamLocation(api.StreamLocation o) {
  buildCounterStreamLocation++;
  if (buildCounterStreamLocation < 3) {
    checkPubsubLocation(o.pubsubLocation);
    checkStreamingStageLocation(o.streamingStageLocation);
  }
  buildCounterStreamLocation--;
}

core.int buildCounterStreamingSetupTask = 0;
buildStreamingSetupTask() {
  var o = new api.StreamingSetupTask();
  buildCounterStreamingSetupTask++;
  if (buildCounterStreamingSetupTask < 3) {
    o.receiveWorkPort = 42;
    o.streamingComputationTopology = buildTopologyConfig();
    o.workerHarnessPort = 42;
  }
  buildCounterStreamingSetupTask--;
  return o;
}

checkStreamingSetupTask(api.StreamingSetupTask o) {
  buildCounterStreamingSetupTask++;
  if (buildCounterStreamingSetupTask < 3) {
    unittest.expect(o.receiveWorkPort, unittest.equals(42));
    checkTopologyConfig(o.streamingComputationTopology);
    unittest.expect(o.workerHarnessPort, unittest.equals(42));
  }
  buildCounterStreamingSetupTask--;
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

buildUnnamed1820() {
  var o = new core.List<core.String>();
  o.add("foo");
  o.add("foo");
  return o;
}

checkUnnamed1820(core.List<core.String> o) {
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
    o.oauthScopes = buildUnnamed1820();
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
    checkUnnamed1820(o.oauthScopes);
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

buildUnnamed1821() {
  var o = new core.List<api.ComputationTopology>();
  o.add(buildComputationTopology());
  o.add(buildComputationTopology());
  return o;
}

checkUnnamed1821(core.List<api.ComputationTopology> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkComputationTopology(o[0]);
  checkComputationTopology(o[1]);
}

buildUnnamed1822() {
  var o = new core.List<api.DataDiskAssignment>();
  o.add(buildDataDiskAssignment());
  o.add(buildDataDiskAssignment());
  return o;
}

checkUnnamed1822(core.List<api.DataDiskAssignment> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDataDiskAssignment(o[0]);
  checkDataDiskAssignment(o[1]);
}

core.int buildCounterTopologyConfig = 0;
buildTopologyConfig() {
  var o = new api.TopologyConfig();
  buildCounterTopologyConfig++;
  if (buildCounterTopologyConfig < 3) {
    o.computations = buildUnnamed1821();
    o.dataDiskAssignments = buildUnnamed1822();
  }
  buildCounterTopologyConfig--;
  return o;
}

checkTopologyConfig(api.TopologyConfig o) {
  buildCounterTopologyConfig++;
  if (buildCounterTopologyConfig < 3) {
    checkUnnamed1821(o.computations);
    checkUnnamed1822(o.dataDiskAssignments);
  }
  buildCounterTopologyConfig--;
}

buildUnnamed1823() {
  var o = new core.List<api.Package>();
  o.add(buildPackage());
  o.add(buildPackage());
  return o;
}

checkUnnamed1823(core.List<api.Package> o) {
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
    o.jobId = "foo";
    o.leaseExpireTime = "foo";
    o.mapTask = buildMapTask();
    o.packages = buildUnnamed1823();
    o.projectId = "foo";
    o.reportStatusInterval = "foo";
    o.seqMapTask = buildSeqMapTask();
    o.shellTask = buildShellTask();
    o.sourceOperationTask = buildSourceOperationRequest();
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
    unittest.expect(o.jobId, unittest.equals('foo'));
    unittest.expect(o.leaseExpireTime, unittest.equals('foo'));
    checkMapTask(o.mapTask);
    checkUnnamed1823(o.packages);
    unittest.expect(o.projectId, unittest.equals('foo'));
    unittest.expect(o.reportStatusInterval, unittest.equals('foo'));
    checkSeqMapTask(o.seqMapTask);
    checkShellTask(o.shellTask);
    checkSourceOperationRequest(o.sourceOperationTask);
    checkStreamingSetupTask(o.streamingSetupTask);
  }
  buildCounterWorkItem--;
}

buildUnnamed1824() {
  var o = new core.Map<core.String, core.Object>();
  o["x"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  o["y"] = {'list' : [1, 2, 3], 'bool' : true, 'string' : 'foo'};
  return o;
}

checkUnnamed1824(core.Map<core.String, core.Object> o) {
  unittest.expect(o, unittest.hasLength(2));
  var casted36 = (o["x"]) as core.Map; unittest.expect(casted36, unittest.hasLength(3)); unittest.expect(casted36["list"], unittest.equals([1, 2, 3])); unittest.expect(casted36["bool"], unittest.equals(true)); unittest.expect(casted36["string"], unittest.equals('foo')); 
  var casted37 = (o["y"]) as core.Map; unittest.expect(casted37, unittest.hasLength(3)); unittest.expect(casted37["list"], unittest.equals([1, 2, 3])); unittest.expect(casted37["bool"], unittest.equals(true)); unittest.expect(casted37["string"], unittest.equals('foo')); 
}

core.int buildCounterWorkItemServiceState = 0;
buildWorkItemServiceState() {
  var o = new api.WorkItemServiceState();
  buildCounterWorkItemServiceState++;
  if (buildCounterWorkItemServiceState < 3) {
    o.harnessData = buildUnnamed1824();
    o.leaseExpireTime = "foo";
    o.reportStatusInterval = "foo";
    o.suggestedStopPoint = buildApproximateProgress();
    o.suggestedStopPosition = buildPosition();
  }
  buildCounterWorkItemServiceState--;
  return o;
}

checkWorkItemServiceState(api.WorkItemServiceState o) {
  buildCounterWorkItemServiceState++;
  if (buildCounterWorkItemServiceState < 3) {
    checkUnnamed1824(o.harnessData);
    unittest.expect(o.leaseExpireTime, unittest.equals('foo'));
    unittest.expect(o.reportStatusInterval, unittest.equals('foo'));
    checkApproximateProgress(o.suggestedStopPoint);
    checkPosition(o.suggestedStopPosition);
  }
  buildCounterWorkItemServiceState--;
}

buildUnnamed1825() {
  var o = new core.List<api.Status>();
  o.add(buildStatus());
  o.add(buildStatus());
  return o;
}

checkUnnamed1825(core.List<api.Status> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStatus(o[0]);
  checkStatus(o[1]);
}

buildUnnamed1826() {
  var o = new core.List<api.MetricUpdate>();
  o.add(buildMetricUpdate());
  o.add(buildMetricUpdate());
  return o;
}

checkUnnamed1826(core.List<api.MetricUpdate> o) {
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
    o.errors = buildUnnamed1825();
    o.metricUpdates = buildUnnamed1826();
    o.progress = buildApproximateProgress();
    o.reportIndex = "foo";
    o.requestedLeaseDuration = "foo";
    o.sourceFork = buildSourceFork();
    o.sourceOperationResponse = buildSourceOperationResponse();
    o.stopPosition = buildPosition();
    o.workItemId = "foo";
  }
  buildCounterWorkItemStatus--;
  return o;
}

checkWorkItemStatus(api.WorkItemStatus o) {
  buildCounterWorkItemStatus++;
  if (buildCounterWorkItemStatus < 3) {
    unittest.expect(o.completed, unittest.isTrue);
    checkUnnamed1825(o.errors);
    checkUnnamed1826(o.metricUpdates);
    checkApproximateProgress(o.progress);
    unittest.expect(o.reportIndex, unittest.equals('foo'));
    unittest.expect(o.requestedLeaseDuration, unittest.equals('foo'));
    checkSourceFork(o.sourceFork);
    checkSourceOperationResponse(o.sourceOperationResponse);
    checkPosition(o.stopPosition);
    unittest.expect(o.workItemId, unittest.equals('foo'));
  }
  buildCounterWorkItemStatus--;
}

buildUnnamed1827() {
  var o = new core.List<api.Disk>();
  o.add(buildDisk());
  o.add(buildDisk());
  return o;
}

checkUnnamed1827(core.List<api.Disk> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkDisk(o[0]);
  checkDisk(o[1]);
}

buildUnnamed1828() {
  var o = new core.Map<core.String, core.String>();
  o["x"] = "foo";
  o["y"] = "foo";
  return o;
}

checkUnnamed1828(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o["x"], unittest.equals('foo'));
  unittest.expect(o["y"], unittest.equals('foo'));
}

buildUnnamed1829() {
  var o = new core.List<api.Package>();
  o.add(buildPackage());
  o.add(buildPackage());
  return o;
}

checkUnnamed1829(core.List<api.Package> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkPackage(o[0]);
  checkPackage(o[1]);
}

core.int buildCounterWorkerPool = 0;
buildWorkerPool() {
  var o = new api.WorkerPool();
  buildCounterWorkerPool++;
  if (buildCounterWorkerPool < 3) {
    o.autoscalingSettings = buildAutoscalingSettings();
    o.dataDisks = buildUnnamed1827();
    o.defaultPackageSet = "foo";
    o.diskSizeGb = 42;
    o.diskSourceImage = "foo";
    o.kind = "foo";
    o.machineType = "foo";
    o.metadata = buildUnnamed1828();
    o.numWorkers = 42;
    o.onHostMaintenance = "foo";
    o.packages = buildUnnamed1829();
    o.taskrunnerSettings = buildTaskRunnerSettings();
    o.teardownPolicy = "foo";
    o.zone = "foo";
  }
  buildCounterWorkerPool--;
  return o;
}

checkWorkerPool(api.WorkerPool o) {
  buildCounterWorkerPool++;
  if (buildCounterWorkerPool < 3) {
    checkAutoscalingSettings(o.autoscalingSettings);
    checkUnnamed1827(o.dataDisks);
    unittest.expect(o.defaultPackageSet, unittest.equals('foo'));
    unittest.expect(o.diskSizeGb, unittest.equals(42));
    unittest.expect(o.diskSourceImage, unittest.equals('foo'));
    unittest.expect(o.kind, unittest.equals('foo'));
    unittest.expect(o.machineType, unittest.equals('foo'));
    checkUnnamed1828(o.metadata);
    unittest.expect(o.numWorkers, unittest.equals(42));
    unittest.expect(o.onHostMaintenance, unittest.equals('foo'));
    checkUnnamed1829(o.packages);
    checkTaskRunnerSettings(o.taskrunnerSettings);
    unittest.expect(o.teardownPolicy, unittest.equals('foo'));
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


  unittest.group("obj-schema-AutoscalingSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildAutoscalingSettings();
      var od = new api.AutoscalingSettings.fromJson(o.toJson());
      checkAutoscalingSettings(od);
    });
  });


  unittest.group("obj-schema-ComputationTopology", () {
    unittest.test("to-json--from-json", () {
      var o = buildComputationTopology();
      var od = new api.ComputationTopology.fromJson(o.toJson());
      checkComputationTopology(od);
    });
  });


  unittest.group("obj-schema-DataDiskAssignment", () {
    unittest.test("to-json--from-json", () {
      var o = buildDataDiskAssignment();
      var od = new api.DataDiskAssignment.fromJson(o.toJson());
      checkDataDiskAssignment(od);
    });
  });


  unittest.group("obj-schema-Disk", () {
    unittest.test("to-json--from-json", () {
      var o = buildDisk();
      var od = new api.Disk.fromJson(o.toJson());
      checkDisk(od);
    });
  });


  unittest.group("obj-schema-Environment", () {
    unittest.test("to-json--from-json", () {
      var o = buildEnvironment();
      var od = new api.Environment.fromJson(o.toJson());
      checkEnvironment(od);
    });
  });


  unittest.group("obj-schema-FlattenInstruction", () {
    unittest.test("to-json--from-json", () {
      var o = buildFlattenInstruction();
      var od = new api.FlattenInstruction.fromJson(o.toJson());
      checkFlattenInstruction(od);
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


  unittest.group("obj-schema-JobMetrics", () {
    unittest.test("to-json--from-json", () {
      var o = buildJobMetrics();
      var od = new api.JobMetrics.fromJson(o.toJson());
      checkJobMetrics(od);
    });
  });


  unittest.group("obj-schema-KeyRangeLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildKeyRangeLocation();
      var od = new api.KeyRangeLocation.fromJson(o.toJson());
      checkKeyRangeLocation(od);
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


  unittest.group("obj-schema-MapTask", () {
    unittest.test("to-json--from-json", () {
      var o = buildMapTask();
      var od = new api.MapTask.fromJson(o.toJson());
      checkMapTask(od);
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


  unittest.group("obj-schema-MultiOutputInfo", () {
    unittest.test("to-json--from-json", () {
      var o = buildMultiOutputInfo();
      var od = new api.MultiOutputInfo.fromJson(o.toJson());
      checkMultiOutputInfo(od);
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


  unittest.group("obj-schema-PartialGroupByKeyInstruction", () {
    unittest.test("to-json--from-json", () {
      var o = buildPartialGroupByKeyInstruction();
      var od = new api.PartialGroupByKeyInstruction.fromJson(o.toJson());
      checkPartialGroupByKeyInstruction(od);
    });
  });


  unittest.group("obj-schema-Position", () {
    unittest.test("to-json--from-json", () {
      var o = buildPosition();
      var od = new api.Position.fromJson(o.toJson());
      checkPosition(od);
    });
  });


  unittest.group("obj-schema-PubsubLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildPubsubLocation();
      var od = new api.PubsubLocation.fromJson(o.toJson());
      checkPubsubLocation(od);
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


  unittest.group("obj-schema-StreamingSetupTask", () {
    unittest.test("to-json--from-json", () {
      var o = buildStreamingSetupTask();
      var od = new api.StreamingSetupTask.fromJson(o.toJson());
      checkStreamingSetupTask(od);
    });
  });


  unittest.group("obj-schema-StreamingStageLocation", () {
    unittest.test("to-json--from-json", () {
      var o = buildStreamingStageLocation();
      var od = new api.StreamingStageLocation.fromJson(o.toJson());
      checkStreamingStageLocation(od);
    });
  });


  unittest.group("obj-schema-TaskRunnerSettings", () {
    unittest.test("to-json--from-json", () {
      var o = buildTaskRunnerSettings();
      var od = new api.TaskRunnerSettings.fromJson(o.toJson());
      checkTaskRunnerSettings(od);
    });
  });


  unittest.group("obj-schema-TopologyConfig", () {
    unittest.test("to-json--from-json", () {
      var o = buildTopologyConfig();
      var od = new api.TopologyConfig.fromJson(o.toJson());
      checkTopologyConfig(od);
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


  unittest.group("obj-schema-WriteInstruction", () {
    unittest.test("to-json--from-json", () {
      var o = buildWriteInstruction();
      var od = new api.WriteInstruction.fromJson(o.toJson());
      checkWriteInstruction(od);
    });
  });


  unittest.group("resource-V1b3ProjectsJobsResourceApi", () {
    unittest.test("method--create", () {

      var mock = new common_test.HttpServerMock();
      api.V1b3ProjectsJobsResourceApi res = new api.DataflowApi(mock).v1b3.projects.jobs;
      var arg_request = buildJob();
      var arg_projectId = "foo";
      var arg_view = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Job.fromJson(json);
        checkJob(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildJob());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.create(arg_request, arg_projectId, view: arg_view).then(unittest.expectAsync(((api.Job response) {
        checkJob(response);
      })));
    });

    unittest.test("method--get", () {

      var mock = new common_test.HttpServerMock();
      api.V1b3ProjectsJobsResourceApi res = new api.DataflowApi(mock).v1b3.projects.jobs;
      var arg_projectId = "foo";
      var arg_jobId = "foo";
      var arg_view = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildJob());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.get(arg_projectId, arg_jobId, view: arg_view).then(unittest.expectAsync(((api.Job response) {
        checkJob(response);
      })));
    });

    unittest.test("method--getMetrics", () {

      var mock = new common_test.HttpServerMock();
      api.V1b3ProjectsJobsResourceApi res = new api.DataflowApi(mock).v1b3.projects.jobs;
      var arg_projectId = "foo";
      var arg_jobId = "foo";
      var arg_startTime = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(queryMap["startTime"].first, unittest.equals(arg_startTime));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildJobMetrics());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.getMetrics(arg_projectId, arg_jobId, startTime: arg_startTime).then(unittest.expectAsync(((api.JobMetrics response) {
        checkJobMetrics(response);
      })));
    });

    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.V1b3ProjectsJobsResourceApi res = new api.DataflowApi(mock).v1b3.projects.jobs;
      var arg_projectId = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_view = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(queryMap["view"].first, unittest.equals(arg_view));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListJobsResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectId, pageSize: arg_pageSize, pageToken: arg_pageToken, view: arg_view).then(unittest.expectAsync(((api.ListJobsResponse response) {
        checkListJobsResponse(response);
      })));
    });

    unittest.test("method--patch", () {

      var mock = new common_test.HttpServerMock();
      api.V1b3ProjectsJobsResourceApi res = new api.DataflowApi(mock).v1b3.projects.jobs;
      var arg_request = buildJob();
      var arg_projectId = "foo";
      var arg_jobId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Job.fromJson(json);
        checkJob(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
      res.patch(arg_request, arg_projectId, arg_jobId).then(unittest.expectAsync(((api.Job response) {
        checkJob(response);
      })));
    });

    unittest.test("method--update", () {

      var mock = new common_test.HttpServerMock();
      api.V1b3ProjectsJobsResourceApi res = new api.DataflowApi(mock).v1b3.projects.jobs;
      var arg_request = buildJob();
      var arg_projectId = "foo";
      var arg_jobId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.Job.fromJson(json);
        checkJob(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
      res.update(arg_request, arg_projectId, arg_jobId).then(unittest.expectAsync(((api.Job response) {
        checkJob(response);
      })));
    });

  });


  unittest.group("resource-V1b3ProjectsJobsMessagesResourceApi", () {
    unittest.test("method--list", () {

      var mock = new common_test.HttpServerMock();
      api.V1b3ProjectsJobsMessagesResourceApi res = new api.DataflowApi(mock).v1b3.projects.jobs.messages;
      var arg_projectId = "foo";
      var arg_jobId = "foo";
      var arg_endTime = "foo";
      var arg_minimumImportance = "foo";
      var arg_pageSize = 42;
      var arg_pageToken = "foo";
      var arg_startTime = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        unittest.expect(queryMap["endTime"].first, unittest.equals(arg_endTime));
        unittest.expect(queryMap["minimumImportance"].first, unittest.equals(arg_minimumImportance));
        unittest.expect(core.int.parse(queryMap["pageSize"].first), unittest.equals(arg_pageSize));
        unittest.expect(queryMap["pageToken"].first, unittest.equals(arg_pageToken));
        unittest.expect(queryMap["startTime"].first, unittest.equals(arg_startTime));


        var h = {
          "content-type" : "application/json; charset=utf-8",
        };
        var resp = convert.JSON.encode(buildListJobMessagesResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.list(arg_projectId, arg_jobId, endTime: arg_endTime, minimumImportance: arg_minimumImportance, pageSize: arg_pageSize, pageToken: arg_pageToken, startTime: arg_startTime).then(unittest.expectAsync(((api.ListJobMessagesResponse response) {
        checkListJobMessagesResponse(response);
      })));
    });

  });


  unittest.group("resource-V1b3ProjectsJobsWorkItemsResourceApi", () {
    unittest.test("method--lease", () {

      var mock = new common_test.HttpServerMock();
      api.V1b3ProjectsJobsWorkItemsResourceApi res = new api.DataflowApi(mock).v1b3.projects.jobs.workItems;
      var arg_request = buildLeaseWorkItemRequest();
      var arg_projectId = "foo";
      var arg_jobId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.LeaseWorkItemRequest.fromJson(json);
        checkLeaseWorkItemRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.JSON.encode(buildLeaseWorkItemResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.lease(arg_request, arg_projectId, arg_jobId).then(unittest.expectAsync(((api.LeaseWorkItemResponse response) {
        checkLeaseWorkItemResponse(response);
      })));
    });

    unittest.test("method--reportStatus", () {

      var mock = new common_test.HttpServerMock();
      api.V1b3ProjectsJobsWorkItemsResourceApi res = new api.DataflowApi(mock).v1b3.projects.jobs.workItems;
      var arg_request = buildReportWorkItemStatusRequest();
      var arg_projectId = "foo";
      var arg_jobId = "foo";
      mock.register(unittest.expectAsync((http.BaseRequest req, json) {
        var obj = new api.ReportWorkItemStatusRequest.fromJson(json);
        checkReportWorkItemStatusRequest(obj);

        var path = (req.url).path;
        var pathOffset = 0;
        var index;
        var subPart;
        unittest.expect(path.substring(pathOffset, pathOffset + 1), unittest.equals("/"));
        pathOffset += 1;

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
        var resp = convert.JSON.encode(buildReportWorkItemStatusResponse());
        return new async.Future.value(common_test.stringResponse(200, h, resp));
      }), true);
      res.reportStatus(arg_request, arg_projectId, arg_jobId).then(unittest.expectAsync(((api.ReportWorkItemStatusResponse response) {
        checkReportWorkItemStatusResponse(response);
      })));
    });

  });


}

