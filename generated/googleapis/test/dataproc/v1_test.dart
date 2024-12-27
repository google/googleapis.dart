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

import 'package:googleapis/dataproc/v1.dart' as api;
import 'package:http/http.dart' as http;
import 'package:test/test.dart' as unittest;

import '../test_shared.dart';

core.int buildCounterAcceleratorConfig = 0;
api.AcceleratorConfig buildAcceleratorConfig() {
  final o = api.AcceleratorConfig();
  buildCounterAcceleratorConfig++;
  if (buildCounterAcceleratorConfig < 3) {
    o.acceleratorCount = 42;
    o.acceleratorTypeUri = 'foo';
  }
  buildCounterAcceleratorConfig--;
  return o;
}

void checkAcceleratorConfig(api.AcceleratorConfig o) {
  buildCounterAcceleratorConfig++;
  if (buildCounterAcceleratorConfig < 3) {
    unittest.expect(o.acceleratorCount!, unittest.equals(42));
    unittest.expect(o.acceleratorTypeUri!, unittest.equals('foo'));
  }
  buildCounterAcceleratorConfig--;
}

core.int buildCounterAccessSessionSparkApplicationEnvironmentInfoResponse = 0;
api.AccessSessionSparkApplicationEnvironmentInfoResponse
    buildAccessSessionSparkApplicationEnvironmentInfoResponse() {
  final o = api.AccessSessionSparkApplicationEnvironmentInfoResponse();
  buildCounterAccessSessionSparkApplicationEnvironmentInfoResponse++;
  if (buildCounterAccessSessionSparkApplicationEnvironmentInfoResponse < 3) {
    o.applicationEnvironmentInfo = buildApplicationEnvironmentInfo();
  }
  buildCounterAccessSessionSparkApplicationEnvironmentInfoResponse--;
  return o;
}

void checkAccessSessionSparkApplicationEnvironmentInfoResponse(
  api.AccessSessionSparkApplicationEnvironmentInfoResponse o,
) {
  buildCounterAccessSessionSparkApplicationEnvironmentInfoResponse++;
  if (buildCounterAccessSessionSparkApplicationEnvironmentInfoResponse < 3) {
    checkApplicationEnvironmentInfo(o.applicationEnvironmentInfo!);
  }
  buildCounterAccessSessionSparkApplicationEnvironmentInfoResponse--;
}

core.int buildCounterAccessSessionSparkApplicationJobResponse = 0;
api.AccessSessionSparkApplicationJobResponse
    buildAccessSessionSparkApplicationJobResponse() {
  final o = api.AccessSessionSparkApplicationJobResponse();
  buildCounterAccessSessionSparkApplicationJobResponse++;
  if (buildCounterAccessSessionSparkApplicationJobResponse < 3) {
    o.jobData = buildJobData();
  }
  buildCounterAccessSessionSparkApplicationJobResponse--;
  return o;
}

void checkAccessSessionSparkApplicationJobResponse(
  api.AccessSessionSparkApplicationJobResponse o,
) {
  buildCounterAccessSessionSparkApplicationJobResponse++;
  if (buildCounterAccessSessionSparkApplicationJobResponse < 3) {
    checkJobData(o.jobData!);
  }
  buildCounterAccessSessionSparkApplicationJobResponse--;
}

core.int buildCounterAccessSessionSparkApplicationResponse = 0;
api.AccessSessionSparkApplicationResponse
    buildAccessSessionSparkApplicationResponse() {
  final o = api.AccessSessionSparkApplicationResponse();
  buildCounterAccessSessionSparkApplicationResponse++;
  if (buildCounterAccessSessionSparkApplicationResponse < 3) {
    o.application = buildApplicationInfo();
  }
  buildCounterAccessSessionSparkApplicationResponse--;
  return o;
}

void checkAccessSessionSparkApplicationResponse(
  api.AccessSessionSparkApplicationResponse o,
) {
  buildCounterAccessSessionSparkApplicationResponse++;
  if (buildCounterAccessSessionSparkApplicationResponse < 3) {
    checkApplicationInfo(o.application!);
  }
  buildCounterAccessSessionSparkApplicationResponse--;
}

core.int buildCounterAccessSessionSparkApplicationSqlQueryResponse = 0;
api.AccessSessionSparkApplicationSqlQueryResponse
    buildAccessSessionSparkApplicationSqlQueryResponse() {
  final o = api.AccessSessionSparkApplicationSqlQueryResponse();
  buildCounterAccessSessionSparkApplicationSqlQueryResponse++;
  if (buildCounterAccessSessionSparkApplicationSqlQueryResponse < 3) {
    o.executionData = buildSqlExecutionUiData();
  }
  buildCounterAccessSessionSparkApplicationSqlQueryResponse--;
  return o;
}

void checkAccessSessionSparkApplicationSqlQueryResponse(
  api.AccessSessionSparkApplicationSqlQueryResponse o,
) {
  buildCounterAccessSessionSparkApplicationSqlQueryResponse++;
  if (buildCounterAccessSessionSparkApplicationSqlQueryResponse < 3) {
    checkSqlExecutionUiData(o.executionData!);
  }
  buildCounterAccessSessionSparkApplicationSqlQueryResponse--;
}

core.int buildCounterAccessSessionSparkApplicationSqlSparkPlanGraphResponse = 0;
api.AccessSessionSparkApplicationSqlSparkPlanGraphResponse
    buildAccessSessionSparkApplicationSqlSparkPlanGraphResponse() {
  final o = api.AccessSessionSparkApplicationSqlSparkPlanGraphResponse();
  buildCounterAccessSessionSparkApplicationSqlSparkPlanGraphResponse++;
  if (buildCounterAccessSessionSparkApplicationSqlSparkPlanGraphResponse < 3) {
    o.sparkPlanGraph = buildSparkPlanGraph();
  }
  buildCounterAccessSessionSparkApplicationSqlSparkPlanGraphResponse--;
  return o;
}

void checkAccessSessionSparkApplicationSqlSparkPlanGraphResponse(
  api.AccessSessionSparkApplicationSqlSparkPlanGraphResponse o,
) {
  buildCounterAccessSessionSparkApplicationSqlSparkPlanGraphResponse++;
  if (buildCounterAccessSessionSparkApplicationSqlSparkPlanGraphResponse < 3) {
    checkSparkPlanGraph(o.sparkPlanGraph!);
  }
  buildCounterAccessSessionSparkApplicationSqlSparkPlanGraphResponse--;
}

core.int buildCounterAccessSessionSparkApplicationStageAttemptResponse = 0;
api.AccessSessionSparkApplicationStageAttemptResponse
    buildAccessSessionSparkApplicationStageAttemptResponse() {
  final o = api.AccessSessionSparkApplicationStageAttemptResponse();
  buildCounterAccessSessionSparkApplicationStageAttemptResponse++;
  if (buildCounterAccessSessionSparkApplicationStageAttemptResponse < 3) {
    o.stageData = buildStageData();
  }
  buildCounterAccessSessionSparkApplicationStageAttemptResponse--;
  return o;
}

void checkAccessSessionSparkApplicationStageAttemptResponse(
  api.AccessSessionSparkApplicationStageAttemptResponse o,
) {
  buildCounterAccessSessionSparkApplicationStageAttemptResponse++;
  if (buildCounterAccessSessionSparkApplicationStageAttemptResponse < 3) {
    checkStageData(o.stageData!);
  }
  buildCounterAccessSessionSparkApplicationStageAttemptResponse--;
}

core.int
    buildCounterAccessSessionSparkApplicationStageRddOperationGraphResponse = 0;
api.AccessSessionSparkApplicationStageRddOperationGraphResponse
    buildAccessSessionSparkApplicationStageRddOperationGraphResponse() {
  final o = api.AccessSessionSparkApplicationStageRddOperationGraphResponse();
  buildCounterAccessSessionSparkApplicationStageRddOperationGraphResponse++;
  if (buildCounterAccessSessionSparkApplicationStageRddOperationGraphResponse <
      3) {
    o.rddOperationGraph = buildRddOperationGraph();
  }
  buildCounterAccessSessionSparkApplicationStageRddOperationGraphResponse--;
  return o;
}

void checkAccessSessionSparkApplicationStageRddOperationGraphResponse(
  api.AccessSessionSparkApplicationStageRddOperationGraphResponse o,
) {
  buildCounterAccessSessionSparkApplicationStageRddOperationGraphResponse++;
  if (buildCounterAccessSessionSparkApplicationStageRddOperationGraphResponse <
      3) {
    checkRddOperationGraph(o.rddOperationGraph!);
  }
  buildCounterAccessSessionSparkApplicationStageRddOperationGraphResponse--;
}

core.int buildCounterAccessSparkApplicationEnvironmentInfoResponse = 0;
api.AccessSparkApplicationEnvironmentInfoResponse
    buildAccessSparkApplicationEnvironmentInfoResponse() {
  final o = api.AccessSparkApplicationEnvironmentInfoResponse();
  buildCounterAccessSparkApplicationEnvironmentInfoResponse++;
  if (buildCounterAccessSparkApplicationEnvironmentInfoResponse < 3) {
    o.applicationEnvironmentInfo = buildApplicationEnvironmentInfo();
  }
  buildCounterAccessSparkApplicationEnvironmentInfoResponse--;
  return o;
}

void checkAccessSparkApplicationEnvironmentInfoResponse(
  api.AccessSparkApplicationEnvironmentInfoResponse o,
) {
  buildCounterAccessSparkApplicationEnvironmentInfoResponse++;
  if (buildCounterAccessSparkApplicationEnvironmentInfoResponse < 3) {
    checkApplicationEnvironmentInfo(o.applicationEnvironmentInfo!);
  }
  buildCounterAccessSparkApplicationEnvironmentInfoResponse--;
}

core.int buildCounterAccessSparkApplicationJobResponse = 0;
api.AccessSparkApplicationJobResponse buildAccessSparkApplicationJobResponse() {
  final o = api.AccessSparkApplicationJobResponse();
  buildCounterAccessSparkApplicationJobResponse++;
  if (buildCounterAccessSparkApplicationJobResponse < 3) {
    o.jobData = buildJobData();
  }
  buildCounterAccessSparkApplicationJobResponse--;
  return o;
}

void checkAccessSparkApplicationJobResponse(
  api.AccessSparkApplicationJobResponse o,
) {
  buildCounterAccessSparkApplicationJobResponse++;
  if (buildCounterAccessSparkApplicationJobResponse < 3) {
    checkJobData(o.jobData!);
  }
  buildCounterAccessSparkApplicationJobResponse--;
}

core.int buildCounterAccessSparkApplicationResponse = 0;
api.AccessSparkApplicationResponse buildAccessSparkApplicationResponse() {
  final o = api.AccessSparkApplicationResponse();
  buildCounterAccessSparkApplicationResponse++;
  if (buildCounterAccessSparkApplicationResponse < 3) {
    o.application = buildApplicationInfo();
  }
  buildCounterAccessSparkApplicationResponse--;
  return o;
}

void checkAccessSparkApplicationResponse(api.AccessSparkApplicationResponse o) {
  buildCounterAccessSparkApplicationResponse++;
  if (buildCounterAccessSparkApplicationResponse < 3) {
    checkApplicationInfo(o.application!);
  }
  buildCounterAccessSparkApplicationResponse--;
}

core.int buildCounterAccessSparkApplicationSqlQueryResponse = 0;
api.AccessSparkApplicationSqlQueryResponse
    buildAccessSparkApplicationSqlQueryResponse() {
  final o = api.AccessSparkApplicationSqlQueryResponse();
  buildCounterAccessSparkApplicationSqlQueryResponse++;
  if (buildCounterAccessSparkApplicationSqlQueryResponse < 3) {
    o.executionData = buildSqlExecutionUiData();
  }
  buildCounterAccessSparkApplicationSqlQueryResponse--;
  return o;
}

void checkAccessSparkApplicationSqlQueryResponse(
  api.AccessSparkApplicationSqlQueryResponse o,
) {
  buildCounterAccessSparkApplicationSqlQueryResponse++;
  if (buildCounterAccessSparkApplicationSqlQueryResponse < 3) {
    checkSqlExecutionUiData(o.executionData!);
  }
  buildCounterAccessSparkApplicationSqlQueryResponse--;
}

core.int buildCounterAccessSparkApplicationSqlSparkPlanGraphResponse = 0;
api.AccessSparkApplicationSqlSparkPlanGraphResponse
    buildAccessSparkApplicationSqlSparkPlanGraphResponse() {
  final o = api.AccessSparkApplicationSqlSparkPlanGraphResponse();
  buildCounterAccessSparkApplicationSqlSparkPlanGraphResponse++;
  if (buildCounterAccessSparkApplicationSqlSparkPlanGraphResponse < 3) {
    o.sparkPlanGraph = buildSparkPlanGraph();
  }
  buildCounterAccessSparkApplicationSqlSparkPlanGraphResponse--;
  return o;
}

void checkAccessSparkApplicationSqlSparkPlanGraphResponse(
  api.AccessSparkApplicationSqlSparkPlanGraphResponse o,
) {
  buildCounterAccessSparkApplicationSqlSparkPlanGraphResponse++;
  if (buildCounterAccessSparkApplicationSqlSparkPlanGraphResponse < 3) {
    checkSparkPlanGraph(o.sparkPlanGraph!);
  }
  buildCounterAccessSparkApplicationSqlSparkPlanGraphResponse--;
}

core.int buildCounterAccessSparkApplicationStageAttemptResponse = 0;
api.AccessSparkApplicationStageAttemptResponse
    buildAccessSparkApplicationStageAttemptResponse() {
  final o = api.AccessSparkApplicationStageAttemptResponse();
  buildCounterAccessSparkApplicationStageAttemptResponse++;
  if (buildCounterAccessSparkApplicationStageAttemptResponse < 3) {
    o.stageData = buildStageData();
  }
  buildCounterAccessSparkApplicationStageAttemptResponse--;
  return o;
}

void checkAccessSparkApplicationStageAttemptResponse(
  api.AccessSparkApplicationStageAttemptResponse o,
) {
  buildCounterAccessSparkApplicationStageAttemptResponse++;
  if (buildCounterAccessSparkApplicationStageAttemptResponse < 3) {
    checkStageData(o.stageData!);
  }
  buildCounterAccessSparkApplicationStageAttemptResponse--;
}

core.int buildCounterAccessSparkApplicationStageRddOperationGraphResponse = 0;
api.AccessSparkApplicationStageRddOperationGraphResponse
    buildAccessSparkApplicationStageRddOperationGraphResponse() {
  final o = api.AccessSparkApplicationStageRddOperationGraphResponse();
  buildCounterAccessSparkApplicationStageRddOperationGraphResponse++;
  if (buildCounterAccessSparkApplicationStageRddOperationGraphResponse < 3) {
    o.rddOperationGraph = buildRddOperationGraph();
  }
  buildCounterAccessSparkApplicationStageRddOperationGraphResponse--;
  return o;
}

void checkAccessSparkApplicationStageRddOperationGraphResponse(
  api.AccessSparkApplicationStageRddOperationGraphResponse o,
) {
  buildCounterAccessSparkApplicationStageRddOperationGraphResponse++;
  if (buildCounterAccessSparkApplicationStageRddOperationGraphResponse < 3) {
    checkRddOperationGraph(o.rddOperationGraph!);
  }
  buildCounterAccessSparkApplicationStageRddOperationGraphResponse--;
}

core.int buildCounterAccumulableInfo = 0;
api.AccumulableInfo buildAccumulableInfo() {
  final o = api.AccumulableInfo();
  buildCounterAccumulableInfo++;
  if (buildCounterAccumulableInfo < 3) {
    o.accumullableInfoId = 'foo';
    o.name = 'foo';
    o.update = 'foo';
    o.value = 'foo';
  }
  buildCounterAccumulableInfo--;
  return o;
}

void checkAccumulableInfo(api.AccumulableInfo o) {
  buildCounterAccumulableInfo++;
  if (buildCounterAccumulableInfo < 3) {
    unittest.expect(o.accumullableInfoId!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.update!, unittest.equals('foo'));
    unittest.expect(o.value!, unittest.equals('foo'));
  }
  buildCounterAccumulableInfo--;
}

core.int buildCounterAnalyzeBatchRequest = 0;
api.AnalyzeBatchRequest buildAnalyzeBatchRequest() {
  final o = api.AnalyzeBatchRequest();
  buildCounterAnalyzeBatchRequest++;
  if (buildCounterAnalyzeBatchRequest < 3) {
    o.requestId = 'foo';
  }
  buildCounterAnalyzeBatchRequest--;
  return o;
}

void checkAnalyzeBatchRequest(api.AnalyzeBatchRequest o) {
  buildCounterAnalyzeBatchRequest++;
  if (buildCounterAnalyzeBatchRequest < 3) {
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterAnalyzeBatchRequest--;
}

core.int buildCounterAppSummary = 0;
api.AppSummary buildAppSummary() {
  final o = api.AppSummary();
  buildCounterAppSummary++;
  if (buildCounterAppSummary < 3) {
    o.numCompletedJobs = 42;
    o.numCompletedStages = 42;
  }
  buildCounterAppSummary--;
  return o;
}

void checkAppSummary(api.AppSummary o) {
  buildCounterAppSummary++;
  if (buildCounterAppSummary < 3) {
    unittest.expect(o.numCompletedJobs!, unittest.equals(42));
    unittest.expect(o.numCompletedStages!, unittest.equals(42));
  }
  buildCounterAppSummary--;
}

core.int buildCounterApplicationAttemptInfo = 0;
api.ApplicationAttemptInfo buildApplicationAttemptInfo() {
  final o = api.ApplicationAttemptInfo();
  buildCounterApplicationAttemptInfo++;
  if (buildCounterApplicationAttemptInfo < 3) {
    o.appSparkVersion = 'foo';
    o.attemptId = 'foo';
    o.completed = true;
    o.durationMillis = 'foo';
    o.endTime = 'foo';
    o.lastUpdated = 'foo';
    o.sparkUser = 'foo';
    o.startTime = 'foo';
  }
  buildCounterApplicationAttemptInfo--;
  return o;
}

void checkApplicationAttemptInfo(api.ApplicationAttemptInfo o) {
  buildCounterApplicationAttemptInfo++;
  if (buildCounterApplicationAttemptInfo < 3) {
    unittest.expect(o.appSparkVersion!, unittest.equals('foo'));
    unittest.expect(o.attemptId!, unittest.equals('foo'));
    unittest.expect(o.completed!, unittest.isTrue);
    unittest.expect(o.durationMillis!, unittest.equals('foo'));
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.lastUpdated!, unittest.equals('foo'));
    unittest.expect(o.sparkUser!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
  }
  buildCounterApplicationAttemptInfo--;
}

core.Map<core.String, core.String> buildUnnamed0() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed0(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed1() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed1(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed2() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed2(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.ResourceProfileInfo> buildUnnamed3() => [
      buildResourceProfileInfo(),
      buildResourceProfileInfo(),
    ];

void checkUnnamed3(core.List<api.ResourceProfileInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceProfileInfo(o[0]);
  checkResourceProfileInfo(o[1]);
}

core.Map<core.String, core.String> buildUnnamed4() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed4(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed5() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed5(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterApplicationEnvironmentInfo = 0;
api.ApplicationEnvironmentInfo buildApplicationEnvironmentInfo() {
  final o = api.ApplicationEnvironmentInfo();
  buildCounterApplicationEnvironmentInfo++;
  if (buildCounterApplicationEnvironmentInfo < 3) {
    o.classpathEntries = buildUnnamed0();
    o.hadoopProperties = buildUnnamed1();
    o.metricsProperties = buildUnnamed2();
    o.resourceProfiles = buildUnnamed3();
    o.runtime = buildSparkRuntimeInfo();
    o.sparkProperties = buildUnnamed4();
    o.systemProperties = buildUnnamed5();
  }
  buildCounterApplicationEnvironmentInfo--;
  return o;
}

void checkApplicationEnvironmentInfo(api.ApplicationEnvironmentInfo o) {
  buildCounterApplicationEnvironmentInfo++;
  if (buildCounterApplicationEnvironmentInfo < 3) {
    checkUnnamed0(o.classpathEntries!);
    checkUnnamed1(o.hadoopProperties!);
    checkUnnamed2(o.metricsProperties!);
    checkUnnamed3(o.resourceProfiles!);
    checkSparkRuntimeInfo(o.runtime!);
    checkUnnamed4(o.sparkProperties!);
    checkUnnamed5(o.systemProperties!);
  }
  buildCounterApplicationEnvironmentInfo--;
}

core.List<api.ApplicationAttemptInfo> buildUnnamed6() => [
      buildApplicationAttemptInfo(),
      buildApplicationAttemptInfo(),
    ];

void checkUnnamed6(core.List<api.ApplicationAttemptInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationAttemptInfo(o[0]);
  checkApplicationAttemptInfo(o[1]);
}

core.int buildCounterApplicationInfo = 0;
api.ApplicationInfo buildApplicationInfo() {
  final o = api.ApplicationInfo();
  buildCounterApplicationInfo++;
  if (buildCounterApplicationInfo < 3) {
    o.applicationContextIngestionStatus = 'foo';
    o.applicationId = 'foo';
    o.attempts = buildUnnamed6();
    o.coresGranted = 42;
    o.coresPerExecutor = 42;
    o.maxCores = 42;
    o.memoryPerExecutorMb = 42;
    o.name = 'foo';
    o.quantileDataStatus = 'foo';
  }
  buildCounterApplicationInfo--;
  return o;
}

void checkApplicationInfo(api.ApplicationInfo o) {
  buildCounterApplicationInfo++;
  if (buildCounterApplicationInfo < 3) {
    unittest.expect(
      o.applicationContextIngestionStatus!,
      unittest.equals('foo'),
    );
    unittest.expect(o.applicationId!, unittest.equals('foo'));
    checkUnnamed6(o.attempts!);
    unittest.expect(o.coresGranted!, unittest.equals(42));
    unittest.expect(o.coresPerExecutor!, unittest.equals(42));
    unittest.expect(o.maxCores!, unittest.equals(42));
    unittest.expect(o.memoryPerExecutorMb!, unittest.equals(42));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.quantileDataStatus!, unittest.equals('foo'));
  }
  buildCounterApplicationInfo--;
}

core.int buildCounterAutoscalingConfig = 0;
api.AutoscalingConfig buildAutoscalingConfig() {
  final o = api.AutoscalingConfig();
  buildCounterAutoscalingConfig++;
  if (buildCounterAutoscalingConfig < 3) {
    o.policyUri = 'foo';
  }
  buildCounterAutoscalingConfig--;
  return o;
}

void checkAutoscalingConfig(api.AutoscalingConfig o) {
  buildCounterAutoscalingConfig++;
  if (buildCounterAutoscalingConfig < 3) {
    unittest.expect(o.policyUri!, unittest.equals('foo'));
  }
  buildCounterAutoscalingConfig--;
}

core.Map<core.String, core.String> buildUnnamed7() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed7(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterAutoscalingPolicy = 0;
api.AutoscalingPolicy buildAutoscalingPolicy() {
  final o = api.AutoscalingPolicy();
  buildCounterAutoscalingPolicy++;
  if (buildCounterAutoscalingPolicy < 3) {
    o.basicAlgorithm = buildBasicAutoscalingAlgorithm();
    o.id = 'foo';
    o.labels = buildUnnamed7();
    o.name = 'foo';
    o.secondaryWorkerConfig = buildInstanceGroupAutoscalingPolicyConfig();
    o.workerConfig = buildInstanceGroupAutoscalingPolicyConfig();
  }
  buildCounterAutoscalingPolicy--;
  return o;
}

void checkAutoscalingPolicy(api.AutoscalingPolicy o) {
  buildCounterAutoscalingPolicy++;
  if (buildCounterAutoscalingPolicy < 3) {
    checkBasicAutoscalingAlgorithm(o.basicAlgorithm!);
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed7(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkInstanceGroupAutoscalingPolicyConfig(o.secondaryWorkerConfig!);
    checkInstanceGroupAutoscalingPolicyConfig(o.workerConfig!);
  }
  buildCounterAutoscalingPolicy--;
}

core.List<core.String> buildUnnamed8() => ['foo', 'foo'];

void checkUnnamed8(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterAutotuningConfig = 0;
api.AutotuningConfig buildAutotuningConfig() {
  final o = api.AutotuningConfig();
  buildCounterAutotuningConfig++;
  if (buildCounterAutotuningConfig < 3) {
    o.scenarios = buildUnnamed8();
  }
  buildCounterAutotuningConfig--;
  return o;
}

void checkAutotuningConfig(api.AutotuningConfig o) {
  buildCounterAutotuningConfig++;
  if (buildCounterAutotuningConfig < 3) {
    checkUnnamed8(o.scenarios!);
  }
  buildCounterAutotuningConfig--;
}

core.int buildCounterAuxiliaryNodeGroup = 0;
api.AuxiliaryNodeGroup buildAuxiliaryNodeGroup() {
  final o = api.AuxiliaryNodeGroup();
  buildCounterAuxiliaryNodeGroup++;
  if (buildCounterAuxiliaryNodeGroup < 3) {
    o.nodeGroup = buildNodeGroup();
    o.nodeGroupId = 'foo';
  }
  buildCounterAuxiliaryNodeGroup--;
  return o;
}

void checkAuxiliaryNodeGroup(api.AuxiliaryNodeGroup o) {
  buildCounterAuxiliaryNodeGroup++;
  if (buildCounterAuxiliaryNodeGroup < 3) {
    checkNodeGroup(o.nodeGroup!);
    unittest.expect(o.nodeGroupId!, unittest.equals('foo'));
  }
  buildCounterAuxiliaryNodeGroup--;
}

core.int buildCounterAuxiliaryServicesConfig = 0;
api.AuxiliaryServicesConfig buildAuxiliaryServicesConfig() {
  final o = api.AuxiliaryServicesConfig();
  buildCounterAuxiliaryServicesConfig++;
  if (buildCounterAuxiliaryServicesConfig < 3) {
    o.metastoreConfig = buildMetastoreConfig();
    o.sparkHistoryServerConfig = buildSparkHistoryServerConfig();
  }
  buildCounterAuxiliaryServicesConfig--;
  return o;
}

void checkAuxiliaryServicesConfig(api.AuxiliaryServicesConfig o) {
  buildCounterAuxiliaryServicesConfig++;
  if (buildCounterAuxiliaryServicesConfig < 3) {
    checkMetastoreConfig(o.metastoreConfig!);
    checkSparkHistoryServerConfig(o.sparkHistoryServerConfig!);
  }
  buildCounterAuxiliaryServicesConfig--;
}

core.int buildCounterBasicAutoscalingAlgorithm = 0;
api.BasicAutoscalingAlgorithm buildBasicAutoscalingAlgorithm() {
  final o = api.BasicAutoscalingAlgorithm();
  buildCounterBasicAutoscalingAlgorithm++;
  if (buildCounterBasicAutoscalingAlgorithm < 3) {
    o.cooldownPeriod = 'foo';
    o.sparkStandaloneConfig = buildSparkStandaloneAutoscalingConfig();
    o.yarnConfig = buildBasicYarnAutoscalingConfig();
  }
  buildCounterBasicAutoscalingAlgorithm--;
  return o;
}

void checkBasicAutoscalingAlgorithm(api.BasicAutoscalingAlgorithm o) {
  buildCounterBasicAutoscalingAlgorithm++;
  if (buildCounterBasicAutoscalingAlgorithm < 3) {
    unittest.expect(o.cooldownPeriod!, unittest.equals('foo'));
    checkSparkStandaloneAutoscalingConfig(o.sparkStandaloneConfig!);
    checkBasicYarnAutoscalingConfig(o.yarnConfig!);
  }
  buildCounterBasicAutoscalingAlgorithm--;
}

core.int buildCounterBasicYarnAutoscalingConfig = 0;
api.BasicYarnAutoscalingConfig buildBasicYarnAutoscalingConfig() {
  final o = api.BasicYarnAutoscalingConfig();
  buildCounterBasicYarnAutoscalingConfig++;
  if (buildCounterBasicYarnAutoscalingConfig < 3) {
    o.gracefulDecommissionTimeout = 'foo';
    o.scaleDownFactor = 42.0;
    o.scaleDownMinWorkerFraction = 42.0;
    o.scaleUpFactor = 42.0;
    o.scaleUpMinWorkerFraction = 42.0;
  }
  buildCounterBasicYarnAutoscalingConfig--;
  return o;
}

void checkBasicYarnAutoscalingConfig(api.BasicYarnAutoscalingConfig o) {
  buildCounterBasicYarnAutoscalingConfig++;
  if (buildCounterBasicYarnAutoscalingConfig < 3) {
    unittest.expect(o.gracefulDecommissionTimeout!, unittest.equals('foo'));
    unittest.expect(o.scaleDownFactor!, unittest.equals(42.0));
    unittest.expect(o.scaleDownMinWorkerFraction!, unittest.equals(42.0));
    unittest.expect(o.scaleUpFactor!, unittest.equals(42.0));
    unittest.expect(o.scaleUpMinWorkerFraction!, unittest.equals(42.0));
  }
  buildCounterBasicYarnAutoscalingConfig--;
}

core.Map<core.String, core.String> buildUnnamed9() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed9(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.StateHistory> buildUnnamed10() => [
      buildStateHistory(),
      buildStateHistory(),
    ];

void checkUnnamed10(core.List<api.StateHistory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStateHistory(o[0]);
  checkStateHistory(o[1]);
}

core.int buildCounterBatch = 0;
api.Batch buildBatch() {
  final o = api.Batch();
  buildCounterBatch++;
  if (buildCounterBatch < 3) {
    o.createTime = 'foo';
    o.creator = 'foo';
    o.environmentConfig = buildEnvironmentConfig();
    o.labels = buildUnnamed9();
    o.name = 'foo';
    o.operation = 'foo';
    o.pysparkBatch = buildPySparkBatch();
    o.runtimeConfig = buildRuntimeConfig();
    o.runtimeInfo = buildRuntimeInfo();
    o.sparkBatch = buildSparkBatch();
    o.sparkRBatch = buildSparkRBatch();
    o.sparkSqlBatch = buildSparkSqlBatch();
    o.state = 'foo';
    o.stateHistory = buildUnnamed10();
    o.stateMessage = 'foo';
    o.stateTime = 'foo';
    o.uuid = 'foo';
  }
  buildCounterBatch--;
  return o;
}

void checkBatch(api.Batch o) {
  buildCounterBatch++;
  if (buildCounterBatch < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.creator!, unittest.equals('foo'));
    checkEnvironmentConfig(o.environmentConfig!);
    checkUnnamed9(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.operation!, unittest.equals('foo'));
    checkPySparkBatch(o.pysparkBatch!);
    checkRuntimeConfig(o.runtimeConfig!);
    checkRuntimeInfo(o.runtimeInfo!);
    checkSparkBatch(o.sparkBatch!);
    checkSparkRBatch(o.sparkRBatch!);
    checkSparkSqlBatch(o.sparkSqlBatch!);
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed10(o.stateHistory!);
    unittest.expect(o.stateMessage!, unittest.equals('foo'));
    unittest.expect(o.stateTime!, unittest.equals('foo'));
    unittest.expect(o.uuid!, unittest.equals('foo'));
  }
  buildCounterBatch--;
}

core.List<core.String> buildUnnamed11() => ['foo', 'foo'];

void checkUnnamed11(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterBinding = 0;
api.Binding buildBinding() {
  final o = api.Binding();
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    o.condition = buildExpr();
    o.members = buildUnnamed11();
    o.role = 'foo';
  }
  buildCounterBinding--;
  return o;
}

void checkBinding(api.Binding o) {
  buildCounterBinding++;
  if (buildCounterBinding < 3) {
    checkExpr(o.condition!);
    checkUnnamed11(o.members!);
    unittest.expect(o.role!, unittest.equals('foo'));
  }
  buildCounterBinding--;
}

core.int buildCounterCancelJobRequest = 0;
api.CancelJobRequest buildCancelJobRequest() {
  final o = api.CancelJobRequest();
  buildCounterCancelJobRequest++;
  if (buildCounterCancelJobRequest < 3) {}
  buildCounterCancelJobRequest--;
  return o;
}

void checkCancelJobRequest(api.CancelJobRequest o) {
  buildCounterCancelJobRequest++;
  if (buildCounterCancelJobRequest < 3) {}
  buildCounterCancelJobRequest--;
}

core.Map<core.String, core.String> buildUnnamed12() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed12(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.ClusterStatus> buildUnnamed13() => [
      buildClusterStatus(),
      buildClusterStatus(),
    ];

void checkUnnamed13(core.List<api.ClusterStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkClusterStatus(o[0]);
  checkClusterStatus(o[1]);
}

core.int buildCounterCluster = 0;
api.Cluster buildCluster() {
  final o = api.Cluster();
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    o.clusterName = 'foo';
    o.clusterUuid = 'foo';
    o.config = buildClusterConfig();
    o.labels = buildUnnamed12();
    o.metrics = buildClusterMetrics();
    o.projectId = 'foo';
    o.status = buildClusterStatus();
    o.statusHistory = buildUnnamed13();
    o.virtualClusterConfig = buildVirtualClusterConfig();
  }
  buildCounterCluster--;
  return o;
}

void checkCluster(api.Cluster o) {
  buildCounterCluster++;
  if (buildCounterCluster < 3) {
    unittest.expect(o.clusterName!, unittest.equals('foo'));
    unittest.expect(o.clusterUuid!, unittest.equals('foo'));
    checkClusterConfig(o.config!);
    checkUnnamed12(o.labels!);
    checkClusterMetrics(o.metrics!);
    unittest.expect(o.projectId!, unittest.equals('foo'));
    checkClusterStatus(o.status!);
    checkUnnamed13(o.statusHistory!);
    checkVirtualClusterConfig(o.virtualClusterConfig!);
  }
  buildCounterCluster--;
}

core.List<api.AuxiliaryNodeGroup> buildUnnamed14() => [
      buildAuxiliaryNodeGroup(),
      buildAuxiliaryNodeGroup(),
    ];

void checkUnnamed14(core.List<api.AuxiliaryNodeGroup> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAuxiliaryNodeGroup(o[0]);
  checkAuxiliaryNodeGroup(o[1]);
}

core.List<api.NodeInitializationAction> buildUnnamed15() => [
      buildNodeInitializationAction(),
      buildNodeInitializationAction(),
    ];

void checkUnnamed15(core.List<api.NodeInitializationAction> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodeInitializationAction(o[0]);
  checkNodeInitializationAction(o[1]);
}

core.int buildCounterClusterConfig = 0;
api.ClusterConfig buildClusterConfig() {
  final o = api.ClusterConfig();
  buildCounterClusterConfig++;
  if (buildCounterClusterConfig < 3) {
    o.autoscalingConfig = buildAutoscalingConfig();
    o.auxiliaryNodeGroups = buildUnnamed14();
    o.configBucket = 'foo';
    o.dataprocMetricConfig = buildDataprocMetricConfig();
    o.encryptionConfig = buildEncryptionConfig();
    o.endpointConfig = buildEndpointConfig();
    o.gceClusterConfig = buildGceClusterConfig();
    o.gkeClusterConfig = buildGkeClusterConfig();
    o.initializationActions = buildUnnamed15();
    o.lifecycleConfig = buildLifecycleConfig();
    o.masterConfig = buildInstanceGroupConfig();
    o.metastoreConfig = buildMetastoreConfig();
    o.secondaryWorkerConfig = buildInstanceGroupConfig();
    o.securityConfig = buildSecurityConfig();
    o.softwareConfig = buildSoftwareConfig();
    o.tempBucket = 'foo';
    o.workerConfig = buildInstanceGroupConfig();
  }
  buildCounterClusterConfig--;
  return o;
}

void checkClusterConfig(api.ClusterConfig o) {
  buildCounterClusterConfig++;
  if (buildCounterClusterConfig < 3) {
    checkAutoscalingConfig(o.autoscalingConfig!);
    checkUnnamed14(o.auxiliaryNodeGroups!);
    unittest.expect(o.configBucket!, unittest.equals('foo'));
    checkDataprocMetricConfig(o.dataprocMetricConfig!);
    checkEncryptionConfig(o.encryptionConfig!);
    checkEndpointConfig(o.endpointConfig!);
    checkGceClusterConfig(o.gceClusterConfig!);
    checkGkeClusterConfig(o.gkeClusterConfig!);
    checkUnnamed15(o.initializationActions!);
    checkLifecycleConfig(o.lifecycleConfig!);
    checkInstanceGroupConfig(o.masterConfig!);
    checkMetastoreConfig(o.metastoreConfig!);
    checkInstanceGroupConfig(o.secondaryWorkerConfig!);
    checkSecurityConfig(o.securityConfig!);
    checkSoftwareConfig(o.softwareConfig!);
    unittest.expect(o.tempBucket!, unittest.equals('foo'));
    checkInstanceGroupConfig(o.workerConfig!);
  }
  buildCounterClusterConfig--;
}

core.Map<core.String, core.String> buildUnnamed16() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed16(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed17() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed17(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterClusterMetrics = 0;
api.ClusterMetrics buildClusterMetrics() {
  final o = api.ClusterMetrics();
  buildCounterClusterMetrics++;
  if (buildCounterClusterMetrics < 3) {
    o.hdfsMetrics = buildUnnamed16();
    o.yarnMetrics = buildUnnamed17();
  }
  buildCounterClusterMetrics--;
  return o;
}

void checkClusterMetrics(api.ClusterMetrics o) {
  buildCounterClusterMetrics++;
  if (buildCounterClusterMetrics < 3) {
    checkUnnamed16(o.hdfsMetrics!);
    checkUnnamed17(o.yarnMetrics!);
  }
  buildCounterClusterMetrics--;
}

core.Map<core.String, core.String> buildUnnamed18() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed18(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterClusterSelector = 0;
api.ClusterSelector buildClusterSelector() {
  final o = api.ClusterSelector();
  buildCounterClusterSelector++;
  if (buildCounterClusterSelector < 3) {
    o.clusterLabels = buildUnnamed18();
    o.zone = 'foo';
  }
  buildCounterClusterSelector--;
  return o;
}

void checkClusterSelector(api.ClusterSelector o) {
  buildCounterClusterSelector++;
  if (buildCounterClusterSelector < 3) {
    checkUnnamed18(o.clusterLabels!);
    unittest.expect(o.zone!, unittest.equals('foo'));
  }
  buildCounterClusterSelector--;
}

core.int buildCounterClusterStatus = 0;
api.ClusterStatus buildClusterStatus() {
  final o = api.ClusterStatus();
  buildCounterClusterStatus++;
  if (buildCounterClusterStatus < 3) {
    o.detail = 'foo';
    o.state = 'foo';
    o.stateStartTime = 'foo';
    o.substate = 'foo';
  }
  buildCounterClusterStatus--;
  return o;
}

void checkClusterStatus(api.ClusterStatus o) {
  buildCounterClusterStatus++;
  if (buildCounterClusterStatus < 3) {
    unittest.expect(o.detail!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.stateStartTime!, unittest.equals('foo'));
    unittest.expect(o.substate!, unittest.equals('foo'));
  }
  buildCounterClusterStatus--;
}

core.int buildCounterClusterToRepair = 0;
api.ClusterToRepair buildClusterToRepair() {
  final o = api.ClusterToRepair();
  buildCounterClusterToRepair++;
  if (buildCounterClusterToRepair < 3) {
    o.clusterRepairAction = 'foo';
  }
  buildCounterClusterToRepair--;
  return o;
}

void checkClusterToRepair(api.ClusterToRepair o) {
  buildCounterClusterToRepair++;
  if (buildCounterClusterToRepair < 3) {
    unittest.expect(o.clusterRepairAction!, unittest.equals('foo'));
  }
  buildCounterClusterToRepair--;
}

core.int buildCounterConfidentialInstanceConfig = 0;
api.ConfidentialInstanceConfig buildConfidentialInstanceConfig() {
  final o = api.ConfidentialInstanceConfig();
  buildCounterConfidentialInstanceConfig++;
  if (buildCounterConfidentialInstanceConfig < 3) {
    o.enableConfidentialCompute = true;
  }
  buildCounterConfidentialInstanceConfig--;
  return o;
}

void checkConfidentialInstanceConfig(api.ConfidentialInstanceConfig o) {
  buildCounterConfidentialInstanceConfig++;
  if (buildCounterConfidentialInstanceConfig < 3) {
    unittest.expect(o.enableConfidentialCompute!, unittest.isTrue);
  }
  buildCounterConfidentialInstanceConfig--;
}

core.int buildCounterConsolidatedExecutorSummary = 0;
api.ConsolidatedExecutorSummary buildConsolidatedExecutorSummary() {
  final o = api.ConsolidatedExecutorSummary();
  buildCounterConsolidatedExecutorSummary++;
  if (buildCounterConsolidatedExecutorSummary < 3) {
    o.activeTasks = 42;
    o.completedTasks = 42;
    o.count = 42;
    o.diskUsed = 'foo';
    o.failedTasks = 42;
    o.isExcluded = 42;
    o.maxMemory = 'foo';
    o.memoryMetrics = buildMemoryMetrics();
    o.memoryUsed = 'foo';
    o.rddBlocks = 42;
    o.totalCores = 42;
    o.totalDurationMillis = 'foo';
    o.totalGcTimeMillis = 'foo';
    o.totalInputBytes = 'foo';
    o.totalShuffleRead = 'foo';
    o.totalShuffleWrite = 'foo';
    o.totalTasks = 42;
  }
  buildCounterConsolidatedExecutorSummary--;
  return o;
}

void checkConsolidatedExecutorSummary(api.ConsolidatedExecutorSummary o) {
  buildCounterConsolidatedExecutorSummary++;
  if (buildCounterConsolidatedExecutorSummary < 3) {
    unittest.expect(o.activeTasks!, unittest.equals(42));
    unittest.expect(o.completedTasks!, unittest.equals(42));
    unittest.expect(o.count!, unittest.equals(42));
    unittest.expect(o.diskUsed!, unittest.equals('foo'));
    unittest.expect(o.failedTasks!, unittest.equals(42));
    unittest.expect(o.isExcluded!, unittest.equals(42));
    unittest.expect(o.maxMemory!, unittest.equals('foo'));
    checkMemoryMetrics(o.memoryMetrics!);
    unittest.expect(o.memoryUsed!, unittest.equals('foo'));
    unittest.expect(o.rddBlocks!, unittest.equals(42));
    unittest.expect(o.totalCores!, unittest.equals(42));
    unittest.expect(o.totalDurationMillis!, unittest.equals('foo'));
    unittest.expect(o.totalGcTimeMillis!, unittest.equals('foo'));
    unittest.expect(o.totalInputBytes!, unittest.equals('foo'));
    unittest.expect(o.totalShuffleRead!, unittest.equals('foo'));
    unittest.expect(o.totalShuffleWrite!, unittest.equals('foo'));
    unittest.expect(o.totalTasks!, unittest.equals(42));
  }
  buildCounterConsolidatedExecutorSummary--;
}

core.List<api.Metric> buildUnnamed19() => [buildMetric(), buildMetric()];

void checkUnnamed19(core.List<api.Metric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkMetric(o[0]);
  checkMetric(o[1]);
}

core.int buildCounterDataprocMetricConfig = 0;
api.DataprocMetricConfig buildDataprocMetricConfig() {
  final o = api.DataprocMetricConfig();
  buildCounterDataprocMetricConfig++;
  if (buildCounterDataprocMetricConfig < 3) {
    o.metrics = buildUnnamed19();
  }
  buildCounterDataprocMetricConfig--;
  return o;
}

void checkDataprocMetricConfig(api.DataprocMetricConfig o) {
  buildCounterDataprocMetricConfig++;
  if (buildCounterDataprocMetricConfig < 3) {
    checkUnnamed19(o.metrics!);
  }
  buildCounterDataprocMetricConfig--;
}

core.List<core.String> buildUnnamed20() => ['foo', 'foo'];

void checkUnnamed20(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed21() => ['foo', 'foo'];

void checkUnnamed21(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterDiagnoseClusterRequest = 0;
api.DiagnoseClusterRequest buildDiagnoseClusterRequest() {
  final o = api.DiagnoseClusterRequest();
  buildCounterDiagnoseClusterRequest++;
  if (buildCounterDiagnoseClusterRequest < 3) {
    o.diagnosisInterval = buildInterval();
    o.job = 'foo';
    o.jobs = buildUnnamed20();
    o.tarballAccess = 'foo';
    o.tarballGcsDir = 'foo';
    o.yarnApplicationId = 'foo';
    o.yarnApplicationIds = buildUnnamed21();
  }
  buildCounterDiagnoseClusterRequest--;
  return o;
}

void checkDiagnoseClusterRequest(api.DiagnoseClusterRequest o) {
  buildCounterDiagnoseClusterRequest++;
  if (buildCounterDiagnoseClusterRequest < 3) {
    checkInterval(o.diagnosisInterval!);
    unittest.expect(o.job!, unittest.equals('foo'));
    checkUnnamed20(o.jobs!);
    unittest.expect(o.tarballAccess!, unittest.equals('foo'));
    unittest.expect(o.tarballGcsDir!, unittest.equals('foo'));
    unittest.expect(o.yarnApplicationId!, unittest.equals('foo'));
    checkUnnamed21(o.yarnApplicationIds!);
  }
  buildCounterDiagnoseClusterRequest--;
}

core.int buildCounterDiskConfig = 0;
api.DiskConfig buildDiskConfig() {
  final o = api.DiskConfig();
  buildCounterDiskConfig++;
  if (buildCounterDiskConfig < 3) {
    o.bootDiskProvisionedIops = 'foo';
    o.bootDiskProvisionedThroughput = 'foo';
    o.bootDiskSizeGb = 42;
    o.bootDiskType = 'foo';
    o.localSsdInterface = 'foo';
    o.numLocalSsds = 42;
  }
  buildCounterDiskConfig--;
  return o;
}

void checkDiskConfig(api.DiskConfig o) {
  buildCounterDiskConfig++;
  if (buildCounterDiskConfig < 3) {
    unittest.expect(o.bootDiskProvisionedIops!, unittest.equals('foo'));
    unittest.expect(o.bootDiskProvisionedThroughput!, unittest.equals('foo'));
    unittest.expect(o.bootDiskSizeGb!, unittest.equals(42));
    unittest.expect(o.bootDiskType!, unittest.equals('foo'));
    unittest.expect(o.localSsdInterface!, unittest.equals('foo'));
    unittest.expect(o.numLocalSsds!, unittest.equals(42));
  }
  buildCounterDiskConfig--;
}

core.int buildCounterDriverSchedulingConfig = 0;
api.DriverSchedulingConfig buildDriverSchedulingConfig() {
  final o = api.DriverSchedulingConfig();
  buildCounterDriverSchedulingConfig++;
  if (buildCounterDriverSchedulingConfig < 3) {
    o.memoryMb = 42;
    o.vcores = 42;
  }
  buildCounterDriverSchedulingConfig--;
  return o;
}

void checkDriverSchedulingConfig(api.DriverSchedulingConfig o) {
  buildCounterDriverSchedulingConfig++;
  if (buildCounterDriverSchedulingConfig < 3) {
    unittest.expect(o.memoryMb!, unittest.equals(42));
    unittest.expect(o.vcores!, unittest.equals(42));
  }
  buildCounterDriverSchedulingConfig--;
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

core.int buildCounterEncryptionConfig = 0;
api.EncryptionConfig buildEncryptionConfig() {
  final o = api.EncryptionConfig();
  buildCounterEncryptionConfig++;
  if (buildCounterEncryptionConfig < 3) {
    o.gcePdKmsKeyName = 'foo';
    o.kmsKey = 'foo';
  }
  buildCounterEncryptionConfig--;
  return o;
}

void checkEncryptionConfig(api.EncryptionConfig o) {
  buildCounterEncryptionConfig++;
  if (buildCounterEncryptionConfig < 3) {
    unittest.expect(o.gcePdKmsKeyName!, unittest.equals('foo'));
    unittest.expect(o.kmsKey!, unittest.equals('foo'));
  }
  buildCounterEncryptionConfig--;
}

core.Map<core.String, core.String> buildUnnamed22() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed22(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterEndpointConfig = 0;
api.EndpointConfig buildEndpointConfig() {
  final o = api.EndpointConfig();
  buildCounterEndpointConfig++;
  if (buildCounterEndpointConfig < 3) {
    o.enableHttpPortAccess = true;
    o.httpPorts = buildUnnamed22();
  }
  buildCounterEndpointConfig--;
  return o;
}

void checkEndpointConfig(api.EndpointConfig o) {
  buildCounterEndpointConfig++;
  if (buildCounterEndpointConfig < 3) {
    unittest.expect(o.enableHttpPortAccess!, unittest.isTrue);
    checkUnnamed22(o.httpPorts!);
  }
  buildCounterEndpointConfig--;
}

core.int buildCounterEnvironmentConfig = 0;
api.EnvironmentConfig buildEnvironmentConfig() {
  final o = api.EnvironmentConfig();
  buildCounterEnvironmentConfig++;
  if (buildCounterEnvironmentConfig < 3) {
    o.executionConfig = buildExecutionConfig();
    o.peripheralsConfig = buildPeripheralsConfig();
  }
  buildCounterEnvironmentConfig--;
  return o;
}

void checkEnvironmentConfig(api.EnvironmentConfig o) {
  buildCounterEnvironmentConfig++;
  if (buildCounterEnvironmentConfig < 3) {
    checkExecutionConfig(o.executionConfig!);
    checkPeripheralsConfig(o.peripheralsConfig!);
  }
  buildCounterEnvironmentConfig--;
}

core.List<core.String> buildUnnamed23() => ['foo', 'foo'];

void checkUnnamed23(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterExecutionConfig = 0;
api.ExecutionConfig buildExecutionConfig() {
  final o = api.ExecutionConfig();
  buildCounterExecutionConfig++;
  if (buildCounterExecutionConfig < 3) {
    o.idleTtl = 'foo';
    o.kmsKey = 'foo';
    o.networkTags = buildUnnamed23();
    o.networkUri = 'foo';
    o.serviceAccount = 'foo';
    o.stagingBucket = 'foo';
    o.subnetworkUri = 'foo';
    o.ttl = 'foo';
  }
  buildCounterExecutionConfig--;
  return o;
}

void checkExecutionConfig(api.ExecutionConfig o) {
  buildCounterExecutionConfig++;
  if (buildCounterExecutionConfig < 3) {
    unittest.expect(o.idleTtl!, unittest.equals('foo'));
    unittest.expect(o.kmsKey!, unittest.equals('foo'));
    checkUnnamed23(o.networkTags!);
    unittest.expect(o.networkUri!, unittest.equals('foo'));
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
    unittest.expect(o.stagingBucket!, unittest.equals('foo'));
    unittest.expect(o.subnetworkUri!, unittest.equals('foo'));
    unittest.expect(o.ttl!, unittest.equals('foo'));
  }
  buildCounterExecutionConfig--;
}

core.Map<core.String, core.String> buildUnnamed24() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed24(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterExecutorMetrics = 0;
api.ExecutorMetrics buildExecutorMetrics() {
  final o = api.ExecutorMetrics();
  buildCounterExecutorMetrics++;
  if (buildCounterExecutorMetrics < 3) {
    o.metrics = buildUnnamed24();
  }
  buildCounterExecutorMetrics--;
  return o;
}

void checkExecutorMetrics(api.ExecutorMetrics o) {
  buildCounterExecutorMetrics++;
  if (buildCounterExecutorMetrics < 3) {
    checkUnnamed24(o.metrics!);
  }
  buildCounterExecutorMetrics--;
}

core.List<core.double> buildUnnamed25() => [42.0, 42.0];

void checkUnnamed25(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.List<core.double> buildUnnamed26() => [42.0, 42.0];

void checkUnnamed26(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.List<core.double> buildUnnamed27() => [42.0, 42.0];

void checkUnnamed27(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.List<core.double> buildUnnamed28() => [42.0, 42.0];

void checkUnnamed28(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.List<core.double> buildUnnamed29() => [42.0, 42.0];

void checkUnnamed29(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.List<core.double> buildUnnamed30() => [42.0, 42.0];

void checkUnnamed30(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.List<core.double> buildUnnamed31() => [42.0, 42.0];

void checkUnnamed31(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.List<core.double> buildUnnamed32() => [42.0, 42.0];

void checkUnnamed32(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.List<core.double> buildUnnamed33() => [42.0, 42.0];

void checkUnnamed33(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.List<core.double> buildUnnamed34() => [42.0, 42.0];

void checkUnnamed34(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.List<core.double> buildUnnamed35() => [42.0, 42.0];

void checkUnnamed35(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.List<core.double> buildUnnamed36() => [42.0, 42.0];

void checkUnnamed36(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.List<core.double> buildUnnamed37() => [42.0, 42.0];

void checkUnnamed37(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.List<core.double> buildUnnamed38() => [42.0, 42.0];

void checkUnnamed38(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.List<core.double> buildUnnamed39() => [42.0, 42.0];

void checkUnnamed39(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterExecutorMetricsDistributions = 0;
api.ExecutorMetricsDistributions buildExecutorMetricsDistributions() {
  final o = api.ExecutorMetricsDistributions();
  buildCounterExecutorMetricsDistributions++;
  if (buildCounterExecutorMetricsDistributions < 3) {
    o.diskBytesSpilled = buildUnnamed25();
    o.failedTasks = buildUnnamed26();
    o.inputBytes = buildUnnamed27();
    o.inputRecords = buildUnnamed28();
    o.killedTasks = buildUnnamed29();
    o.memoryBytesSpilled = buildUnnamed30();
    o.outputBytes = buildUnnamed31();
    o.outputRecords = buildUnnamed32();
    o.peakMemoryMetrics = buildExecutorPeakMetricsDistributions();
    o.quantiles = buildUnnamed33();
    o.shuffleRead = buildUnnamed34();
    o.shuffleReadRecords = buildUnnamed35();
    o.shuffleWrite = buildUnnamed36();
    o.shuffleWriteRecords = buildUnnamed37();
    o.succeededTasks = buildUnnamed38();
    o.taskTimeMillis = buildUnnamed39();
  }
  buildCounterExecutorMetricsDistributions--;
  return o;
}

void checkExecutorMetricsDistributions(api.ExecutorMetricsDistributions o) {
  buildCounterExecutorMetricsDistributions++;
  if (buildCounterExecutorMetricsDistributions < 3) {
    checkUnnamed25(o.diskBytesSpilled!);
    checkUnnamed26(o.failedTasks!);
    checkUnnamed27(o.inputBytes!);
    checkUnnamed28(o.inputRecords!);
    checkUnnamed29(o.killedTasks!);
    checkUnnamed30(o.memoryBytesSpilled!);
    checkUnnamed31(o.outputBytes!);
    checkUnnamed32(o.outputRecords!);
    checkExecutorPeakMetricsDistributions(o.peakMemoryMetrics!);
    checkUnnamed33(o.quantiles!);
    checkUnnamed34(o.shuffleRead!);
    checkUnnamed35(o.shuffleReadRecords!);
    checkUnnamed36(o.shuffleWrite!);
    checkUnnamed37(o.shuffleWriteRecords!);
    checkUnnamed38(o.succeededTasks!);
    checkUnnamed39(o.taskTimeMillis!);
  }
  buildCounterExecutorMetricsDistributions--;
}

core.List<api.ExecutorMetrics> buildUnnamed40() => [
      buildExecutorMetrics(),
      buildExecutorMetrics(),
    ];

void checkUnnamed40(core.List<api.ExecutorMetrics> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecutorMetrics(o[0]);
  checkExecutorMetrics(o[1]);
}

core.List<core.double> buildUnnamed41() => [42.0, 42.0];

void checkUnnamed41(core.List<core.double> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42.0));
  unittest.expect(o[1], unittest.equals(42.0));
}

core.int buildCounterExecutorPeakMetricsDistributions = 0;
api.ExecutorPeakMetricsDistributions buildExecutorPeakMetricsDistributions() {
  final o = api.ExecutorPeakMetricsDistributions();
  buildCounterExecutorPeakMetricsDistributions++;
  if (buildCounterExecutorPeakMetricsDistributions < 3) {
    o.executorMetrics = buildUnnamed40();
    o.quantiles = buildUnnamed41();
  }
  buildCounterExecutorPeakMetricsDistributions--;
  return o;
}

void checkExecutorPeakMetricsDistributions(
  api.ExecutorPeakMetricsDistributions o,
) {
  buildCounterExecutorPeakMetricsDistributions++;
  if (buildCounterExecutorPeakMetricsDistributions < 3) {
    checkUnnamed40(o.executorMetrics!);
    checkUnnamed41(o.quantiles!);
  }
  buildCounterExecutorPeakMetricsDistributions--;
}

core.int buildCounterExecutorResourceRequest = 0;
api.ExecutorResourceRequest buildExecutorResourceRequest() {
  final o = api.ExecutorResourceRequest();
  buildCounterExecutorResourceRequest++;
  if (buildCounterExecutorResourceRequest < 3) {
    o.amount = 'foo';
    o.discoveryScript = 'foo';
    o.resourceName = 'foo';
    o.vendor = 'foo';
  }
  buildCounterExecutorResourceRequest--;
  return o;
}

void checkExecutorResourceRequest(api.ExecutorResourceRequest o) {
  buildCounterExecutorResourceRequest++;
  if (buildCounterExecutorResourceRequest < 3) {
    unittest.expect(o.amount!, unittest.equals('foo'));
    unittest.expect(o.discoveryScript!, unittest.equals('foo'));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
    unittest.expect(o.vendor!, unittest.equals('foo'));
  }
  buildCounterExecutorResourceRequest--;
}

core.int buildCounterExecutorStageSummary = 0;
api.ExecutorStageSummary buildExecutorStageSummary() {
  final o = api.ExecutorStageSummary();
  buildCounterExecutorStageSummary++;
  if (buildCounterExecutorStageSummary < 3) {
    o.diskBytesSpilled = 'foo';
    o.executorId = 'foo';
    o.failedTasks = 42;
    o.inputBytes = 'foo';
    o.inputRecords = 'foo';
    o.isExcludedForStage = true;
    o.killedTasks = 42;
    o.memoryBytesSpilled = 'foo';
    o.outputBytes = 'foo';
    o.outputRecords = 'foo';
    o.peakMemoryMetrics = buildExecutorMetrics();
    o.shuffleRead = 'foo';
    o.shuffleReadRecords = 'foo';
    o.shuffleWrite = 'foo';
    o.shuffleWriteRecords = 'foo';
    o.stageAttemptId = 42;
    o.stageId = 'foo';
    o.succeededTasks = 42;
    o.taskTimeMillis = 'foo';
  }
  buildCounterExecutorStageSummary--;
  return o;
}

void checkExecutorStageSummary(api.ExecutorStageSummary o) {
  buildCounterExecutorStageSummary++;
  if (buildCounterExecutorStageSummary < 3) {
    unittest.expect(o.diskBytesSpilled!, unittest.equals('foo'));
    unittest.expect(o.executorId!, unittest.equals('foo'));
    unittest.expect(o.failedTasks!, unittest.equals(42));
    unittest.expect(o.inputBytes!, unittest.equals('foo'));
    unittest.expect(o.inputRecords!, unittest.equals('foo'));
    unittest.expect(o.isExcludedForStage!, unittest.isTrue);
    unittest.expect(o.killedTasks!, unittest.equals(42));
    unittest.expect(o.memoryBytesSpilled!, unittest.equals('foo'));
    unittest.expect(o.outputBytes!, unittest.equals('foo'));
    unittest.expect(o.outputRecords!, unittest.equals('foo'));
    checkExecutorMetrics(o.peakMemoryMetrics!);
    unittest.expect(o.shuffleRead!, unittest.equals('foo'));
    unittest.expect(o.shuffleReadRecords!, unittest.equals('foo'));
    unittest.expect(o.shuffleWrite!, unittest.equals('foo'));
    unittest.expect(o.shuffleWriteRecords!, unittest.equals('foo'));
    unittest.expect(o.stageAttemptId!, unittest.equals(42));
    unittest.expect(o.stageId!, unittest.equals('foo'));
    unittest.expect(o.succeededTasks!, unittest.equals(42));
    unittest.expect(o.taskTimeMillis!, unittest.equals('foo'));
  }
  buildCounterExecutorStageSummary--;
}

core.Map<core.String, core.String> buildUnnamed42() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed42(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed43() => ['foo', 'foo'];

void checkUnnamed43(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed44() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed44(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, api.ResourceInformation> buildUnnamed45() => {
      'x': buildResourceInformation(),
      'y': buildResourceInformation(),
    };

void checkUnnamed45(core.Map<core.String, api.ResourceInformation> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkResourceInformation(o['x']!);
  checkResourceInformation(o['y']!);
}

core.int buildCounterExecutorSummary = 0;
api.ExecutorSummary buildExecutorSummary() {
  final o = api.ExecutorSummary();
  buildCounterExecutorSummary++;
  if (buildCounterExecutorSummary < 3) {
    o.activeTasks = 42;
    o.addTime = 'foo';
    o.attributes = buildUnnamed42();
    o.completedTasks = 42;
    o.diskUsed = 'foo';
    o.excludedInStages = buildUnnamed43();
    o.executorId = 'foo';
    o.executorLogs = buildUnnamed44();
    o.failedTasks = 42;
    o.hostPort = 'foo';
    o.isActive = true;
    o.isExcluded = true;
    o.maxMemory = 'foo';
    o.maxTasks = 42;
    o.memoryMetrics = buildMemoryMetrics();
    o.memoryUsed = 'foo';
    o.peakMemoryMetrics = buildExecutorMetrics();
    o.rddBlocks = 42;
    o.removeReason = 'foo';
    o.removeTime = 'foo';
    o.resourceProfileId = 42;
    o.resources = buildUnnamed45();
    o.totalCores = 42;
    o.totalDurationMillis = 'foo';
    o.totalGcTimeMillis = 'foo';
    o.totalInputBytes = 'foo';
    o.totalShuffleRead = 'foo';
    o.totalShuffleWrite = 'foo';
    o.totalTasks = 42;
  }
  buildCounterExecutorSummary--;
  return o;
}

void checkExecutorSummary(api.ExecutorSummary o) {
  buildCounterExecutorSummary++;
  if (buildCounterExecutorSummary < 3) {
    unittest.expect(o.activeTasks!, unittest.equals(42));
    unittest.expect(o.addTime!, unittest.equals('foo'));
    checkUnnamed42(o.attributes!);
    unittest.expect(o.completedTasks!, unittest.equals(42));
    unittest.expect(o.diskUsed!, unittest.equals('foo'));
    checkUnnamed43(o.excludedInStages!);
    unittest.expect(o.executorId!, unittest.equals('foo'));
    checkUnnamed44(o.executorLogs!);
    unittest.expect(o.failedTasks!, unittest.equals(42));
    unittest.expect(o.hostPort!, unittest.equals('foo'));
    unittest.expect(o.isActive!, unittest.isTrue);
    unittest.expect(o.isExcluded!, unittest.isTrue);
    unittest.expect(o.maxMemory!, unittest.equals('foo'));
    unittest.expect(o.maxTasks!, unittest.equals(42));
    checkMemoryMetrics(o.memoryMetrics!);
    unittest.expect(o.memoryUsed!, unittest.equals('foo'));
    checkExecutorMetrics(o.peakMemoryMetrics!);
    unittest.expect(o.rddBlocks!, unittest.equals(42));
    unittest.expect(o.removeReason!, unittest.equals('foo'));
    unittest.expect(o.removeTime!, unittest.equals('foo'));
    unittest.expect(o.resourceProfileId!, unittest.equals(42));
    checkUnnamed45(o.resources!);
    unittest.expect(o.totalCores!, unittest.equals(42));
    unittest.expect(o.totalDurationMillis!, unittest.equals('foo'));
    unittest.expect(o.totalGcTimeMillis!, unittest.equals('foo'));
    unittest.expect(o.totalInputBytes!, unittest.equals('foo'));
    unittest.expect(o.totalShuffleRead!, unittest.equals('foo'));
    unittest.expect(o.totalShuffleWrite!, unittest.equals('foo'));
    unittest.expect(o.totalTasks!, unittest.equals(42));
  }
  buildCounterExecutorSummary--;
}

core.int buildCounterExpr = 0;
api.Expr buildExpr() {
  final o = api.Expr();
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    o.description = 'foo';
    o.expression = 'foo';
    o.location = 'foo';
    o.title = 'foo';
  }
  buildCounterExpr--;
  return o;
}

void checkExpr(api.Expr o) {
  buildCounterExpr++;
  if (buildCounterExpr < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.expression!, unittest.equals('foo'));
    unittest.expect(o.location!, unittest.equals('foo'));
    unittest.expect(o.title!, unittest.equals('foo'));
  }
  buildCounterExpr--;
}

core.List<core.String> buildUnnamed46() => ['foo', 'foo'];

void checkUnnamed46(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed47() => ['foo', 'foo'];

void checkUnnamed47(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed48() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed48(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterFlinkJob = 0;
api.FlinkJob buildFlinkJob() {
  final o = api.FlinkJob();
  buildCounterFlinkJob++;
  if (buildCounterFlinkJob < 3) {
    o.args = buildUnnamed46();
    o.jarFileUris = buildUnnamed47();
    o.loggingConfig = buildLoggingConfig();
    o.mainClass = 'foo';
    o.mainJarFileUri = 'foo';
    o.properties = buildUnnamed48();
    o.savepointUri = 'foo';
  }
  buildCounterFlinkJob--;
  return o;
}

void checkFlinkJob(api.FlinkJob o) {
  buildCounterFlinkJob++;
  if (buildCounterFlinkJob < 3) {
    checkUnnamed46(o.args!);
    checkUnnamed47(o.jarFileUris!);
    checkLoggingConfig(o.loggingConfig!);
    unittest.expect(o.mainClass!, unittest.equals('foo'));
    unittest.expect(o.mainJarFileUri!, unittest.equals('foo'));
    checkUnnamed48(o.properties!);
    unittest.expect(o.savepointUri!, unittest.equals('foo'));
  }
  buildCounterFlinkJob--;
}

core.Map<core.String, core.String> buildUnnamed49() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed49(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed50() => ['foo', 'foo'];

void checkUnnamed50(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed51() => ['foo', 'foo'];

void checkUnnamed51(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGceClusterConfig = 0;
api.GceClusterConfig buildGceClusterConfig() {
  final o = api.GceClusterConfig();
  buildCounterGceClusterConfig++;
  if (buildCounterGceClusterConfig < 3) {
    o.confidentialInstanceConfig = buildConfidentialInstanceConfig();
    o.internalIpOnly = true;
    o.metadata = buildUnnamed49();
    o.networkUri = 'foo';
    o.nodeGroupAffinity = buildNodeGroupAffinity();
    o.privateIpv6GoogleAccess = 'foo';
    o.reservationAffinity = buildReservationAffinity();
    o.serviceAccount = 'foo';
    o.serviceAccountScopes = buildUnnamed50();
    o.shieldedInstanceConfig = buildShieldedInstanceConfig();
    o.subnetworkUri = 'foo';
    o.tags = buildUnnamed51();
    o.zoneUri = 'foo';
  }
  buildCounterGceClusterConfig--;
  return o;
}

void checkGceClusterConfig(api.GceClusterConfig o) {
  buildCounterGceClusterConfig++;
  if (buildCounterGceClusterConfig < 3) {
    checkConfidentialInstanceConfig(o.confidentialInstanceConfig!);
    unittest.expect(o.internalIpOnly!, unittest.isTrue);
    checkUnnamed49(o.metadata!);
    unittest.expect(o.networkUri!, unittest.equals('foo'));
    checkNodeGroupAffinity(o.nodeGroupAffinity!);
    unittest.expect(o.privateIpv6GoogleAccess!, unittest.equals('foo'));
    checkReservationAffinity(o.reservationAffinity!);
    unittest.expect(o.serviceAccount!, unittest.equals('foo'));
    checkUnnamed50(o.serviceAccountScopes!);
    checkShieldedInstanceConfig(o.shieldedInstanceConfig!);
    unittest.expect(o.subnetworkUri!, unittest.equals('foo'));
    checkUnnamed51(o.tags!);
    unittest.expect(o.zoneUri!, unittest.equals('foo'));
  }
  buildCounterGceClusterConfig--;
}

core.int buildCounterGetIamPolicyRequest = 0;
api.GetIamPolicyRequest buildGetIamPolicyRequest() {
  final o = api.GetIamPolicyRequest();
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    o.options = buildGetPolicyOptions();
  }
  buildCounterGetIamPolicyRequest--;
  return o;
}

void checkGetIamPolicyRequest(api.GetIamPolicyRequest o) {
  buildCounterGetIamPolicyRequest++;
  if (buildCounterGetIamPolicyRequest < 3) {
    checkGetPolicyOptions(o.options!);
  }
  buildCounterGetIamPolicyRequest--;
}

core.int buildCounterGetPolicyOptions = 0;
api.GetPolicyOptions buildGetPolicyOptions() {
  final o = api.GetPolicyOptions();
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    o.requestedPolicyVersion = 42;
  }
  buildCounterGetPolicyOptions--;
  return o;
}

void checkGetPolicyOptions(api.GetPolicyOptions o) {
  buildCounterGetPolicyOptions++;
  if (buildCounterGetPolicyOptions < 3) {
    unittest.expect(o.requestedPolicyVersion!, unittest.equals(42));
  }
  buildCounterGetPolicyOptions--;
}

core.List<api.GkeNodePoolTarget> buildUnnamed52() => [
      buildGkeNodePoolTarget(),
      buildGkeNodePoolTarget(),
    ];

void checkUnnamed52(core.List<api.GkeNodePoolTarget> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGkeNodePoolTarget(o[0]);
  checkGkeNodePoolTarget(o[1]);
}

core.int buildCounterGkeClusterConfig = 0;
api.GkeClusterConfig buildGkeClusterConfig() {
  final o = api.GkeClusterConfig();
  buildCounterGkeClusterConfig++;
  if (buildCounterGkeClusterConfig < 3) {
    o.gkeClusterTarget = 'foo';
    o.namespacedGkeDeploymentTarget = buildNamespacedGkeDeploymentTarget();
    o.nodePoolTarget = buildUnnamed52();
  }
  buildCounterGkeClusterConfig--;
  return o;
}

void checkGkeClusterConfig(api.GkeClusterConfig o) {
  buildCounterGkeClusterConfig++;
  if (buildCounterGkeClusterConfig < 3) {
    unittest.expect(o.gkeClusterTarget!, unittest.equals('foo'));
    checkNamespacedGkeDeploymentTarget(o.namespacedGkeDeploymentTarget!);
    checkUnnamed52(o.nodePoolTarget!);
  }
  buildCounterGkeClusterConfig--;
}

core.List<api.GkeNodePoolAcceleratorConfig> buildUnnamed53() => [
      buildGkeNodePoolAcceleratorConfig(),
      buildGkeNodePoolAcceleratorConfig(),
    ];

void checkUnnamed53(core.List<api.GkeNodePoolAcceleratorConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkGkeNodePoolAcceleratorConfig(o[0]);
  checkGkeNodePoolAcceleratorConfig(o[1]);
}

core.int buildCounterGkeNodeConfig = 0;
api.GkeNodeConfig buildGkeNodeConfig() {
  final o = api.GkeNodeConfig();
  buildCounterGkeNodeConfig++;
  if (buildCounterGkeNodeConfig < 3) {
    o.accelerators = buildUnnamed53();
    o.bootDiskKmsKey = 'foo';
    o.localSsdCount = 42;
    o.machineType = 'foo';
    o.minCpuPlatform = 'foo';
    o.preemptible = true;
    o.spot = true;
  }
  buildCounterGkeNodeConfig--;
  return o;
}

void checkGkeNodeConfig(api.GkeNodeConfig o) {
  buildCounterGkeNodeConfig++;
  if (buildCounterGkeNodeConfig < 3) {
    checkUnnamed53(o.accelerators!);
    unittest.expect(o.bootDiskKmsKey!, unittest.equals('foo'));
    unittest.expect(o.localSsdCount!, unittest.equals(42));
    unittest.expect(o.machineType!, unittest.equals('foo'));
    unittest.expect(o.minCpuPlatform!, unittest.equals('foo'));
    unittest.expect(o.preemptible!, unittest.isTrue);
    unittest.expect(o.spot!, unittest.isTrue);
  }
  buildCounterGkeNodeConfig--;
}

core.int buildCounterGkeNodePoolAcceleratorConfig = 0;
api.GkeNodePoolAcceleratorConfig buildGkeNodePoolAcceleratorConfig() {
  final o = api.GkeNodePoolAcceleratorConfig();
  buildCounterGkeNodePoolAcceleratorConfig++;
  if (buildCounterGkeNodePoolAcceleratorConfig < 3) {
    o.acceleratorCount = 'foo';
    o.acceleratorType = 'foo';
    o.gpuPartitionSize = 'foo';
  }
  buildCounterGkeNodePoolAcceleratorConfig--;
  return o;
}

void checkGkeNodePoolAcceleratorConfig(api.GkeNodePoolAcceleratorConfig o) {
  buildCounterGkeNodePoolAcceleratorConfig++;
  if (buildCounterGkeNodePoolAcceleratorConfig < 3) {
    unittest.expect(o.acceleratorCount!, unittest.equals('foo'));
    unittest.expect(o.acceleratorType!, unittest.equals('foo'));
    unittest.expect(o.gpuPartitionSize!, unittest.equals('foo'));
  }
  buildCounterGkeNodePoolAcceleratorConfig--;
}

core.int buildCounterGkeNodePoolAutoscalingConfig = 0;
api.GkeNodePoolAutoscalingConfig buildGkeNodePoolAutoscalingConfig() {
  final o = api.GkeNodePoolAutoscalingConfig();
  buildCounterGkeNodePoolAutoscalingConfig++;
  if (buildCounterGkeNodePoolAutoscalingConfig < 3) {
    o.maxNodeCount = 42;
    o.minNodeCount = 42;
  }
  buildCounterGkeNodePoolAutoscalingConfig--;
  return o;
}

void checkGkeNodePoolAutoscalingConfig(api.GkeNodePoolAutoscalingConfig o) {
  buildCounterGkeNodePoolAutoscalingConfig++;
  if (buildCounterGkeNodePoolAutoscalingConfig < 3) {
    unittest.expect(o.maxNodeCount!, unittest.equals(42));
    unittest.expect(o.minNodeCount!, unittest.equals(42));
  }
  buildCounterGkeNodePoolAutoscalingConfig--;
}

core.List<core.String> buildUnnamed54() => ['foo', 'foo'];

void checkUnnamed54(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGkeNodePoolConfig = 0;
api.GkeNodePoolConfig buildGkeNodePoolConfig() {
  final o = api.GkeNodePoolConfig();
  buildCounterGkeNodePoolConfig++;
  if (buildCounterGkeNodePoolConfig < 3) {
    o.autoscaling = buildGkeNodePoolAutoscalingConfig();
    o.config = buildGkeNodeConfig();
    o.locations = buildUnnamed54();
  }
  buildCounterGkeNodePoolConfig--;
  return o;
}

void checkGkeNodePoolConfig(api.GkeNodePoolConfig o) {
  buildCounterGkeNodePoolConfig++;
  if (buildCounterGkeNodePoolConfig < 3) {
    checkGkeNodePoolAutoscalingConfig(o.autoscaling!);
    checkGkeNodeConfig(o.config!);
    checkUnnamed54(o.locations!);
  }
  buildCounterGkeNodePoolConfig--;
}

core.List<core.String> buildUnnamed55() => ['foo', 'foo'];

void checkUnnamed55(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterGkeNodePoolTarget = 0;
api.GkeNodePoolTarget buildGkeNodePoolTarget() {
  final o = api.GkeNodePoolTarget();
  buildCounterGkeNodePoolTarget++;
  if (buildCounterGkeNodePoolTarget < 3) {
    o.nodePool = 'foo';
    o.nodePoolConfig = buildGkeNodePoolConfig();
    o.roles = buildUnnamed55();
  }
  buildCounterGkeNodePoolTarget--;
  return o;
}

void checkGkeNodePoolTarget(api.GkeNodePoolTarget o) {
  buildCounterGkeNodePoolTarget++;
  if (buildCounterGkeNodePoolTarget < 3) {
    unittest.expect(o.nodePool!, unittest.equals('foo'));
    checkGkeNodePoolConfig(o.nodePoolConfig!);
    checkUnnamed55(o.roles!);
  }
  buildCounterGkeNodePoolTarget--;
}

core.int buildCounterGoogleCloudDataprocV1WorkflowTemplateEncryptionConfig = 0;
api.GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig
    buildGoogleCloudDataprocV1WorkflowTemplateEncryptionConfig() {
  final o = api.GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig();
  buildCounterGoogleCloudDataprocV1WorkflowTemplateEncryptionConfig++;
  if (buildCounterGoogleCloudDataprocV1WorkflowTemplateEncryptionConfig < 3) {
    o.kmsKey = 'foo';
  }
  buildCounterGoogleCloudDataprocV1WorkflowTemplateEncryptionConfig--;
  return o;
}

void checkGoogleCloudDataprocV1WorkflowTemplateEncryptionConfig(
  api.GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig o,
) {
  buildCounterGoogleCloudDataprocV1WorkflowTemplateEncryptionConfig++;
  if (buildCounterGoogleCloudDataprocV1WorkflowTemplateEncryptionConfig < 3) {
    unittest.expect(o.kmsKey!, unittest.equals('foo'));
  }
  buildCounterGoogleCloudDataprocV1WorkflowTemplateEncryptionConfig--;
}

core.List<core.String> buildUnnamed56() => ['foo', 'foo'];

void checkUnnamed56(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed57() => ['foo', 'foo'];

void checkUnnamed57(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed58() => ['foo', 'foo'];

void checkUnnamed58(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed59() => ['foo', 'foo'];

void checkUnnamed59(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed60() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed60(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterHadoopJob = 0;
api.HadoopJob buildHadoopJob() {
  final o = api.HadoopJob();
  buildCounterHadoopJob++;
  if (buildCounterHadoopJob < 3) {
    o.archiveUris = buildUnnamed56();
    o.args = buildUnnamed57();
    o.fileUris = buildUnnamed58();
    o.jarFileUris = buildUnnamed59();
    o.loggingConfig = buildLoggingConfig();
    o.mainClass = 'foo';
    o.mainJarFileUri = 'foo';
    o.properties = buildUnnamed60();
  }
  buildCounterHadoopJob--;
  return o;
}

void checkHadoopJob(api.HadoopJob o) {
  buildCounterHadoopJob++;
  if (buildCounterHadoopJob < 3) {
    checkUnnamed56(o.archiveUris!);
    checkUnnamed57(o.args!);
    checkUnnamed58(o.fileUris!);
    checkUnnamed59(o.jarFileUris!);
    checkLoggingConfig(o.loggingConfig!);
    unittest.expect(o.mainClass!, unittest.equals('foo'));
    unittest.expect(o.mainJarFileUri!, unittest.equals('foo'));
    checkUnnamed60(o.properties!);
  }
  buildCounterHadoopJob--;
}

core.List<core.String> buildUnnamed61() => ['foo', 'foo'];

void checkUnnamed61(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed62() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed62(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed63() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed63(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterHiveJob = 0;
api.HiveJob buildHiveJob() {
  final o = api.HiveJob();
  buildCounterHiveJob++;
  if (buildCounterHiveJob < 3) {
    o.continueOnFailure = true;
    o.jarFileUris = buildUnnamed61();
    o.properties = buildUnnamed62();
    o.queryFileUri = 'foo';
    o.queryList = buildQueryList();
    o.scriptVariables = buildUnnamed63();
  }
  buildCounterHiveJob--;
  return o;
}

void checkHiveJob(api.HiveJob o) {
  buildCounterHiveJob++;
  if (buildCounterHiveJob < 3) {
    unittest.expect(o.continueOnFailure!, unittest.isTrue);
    checkUnnamed61(o.jarFileUris!);
    checkUnnamed62(o.properties!);
    unittest.expect(o.queryFileUri!, unittest.equals('foo'));
    checkQueryList(o.queryList!);
    checkUnnamed63(o.scriptVariables!);
  }
  buildCounterHiveJob--;
}

core.Map<core.String, core.String> buildUnnamed64() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed64(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterIdentityConfig = 0;
api.IdentityConfig buildIdentityConfig() {
  final o = api.IdentityConfig();
  buildCounterIdentityConfig++;
  if (buildCounterIdentityConfig < 3) {
    o.userServiceAccountMapping = buildUnnamed64();
  }
  buildCounterIdentityConfig--;
  return o;
}

void checkIdentityConfig(api.IdentityConfig o) {
  buildCounterIdentityConfig++;
  if (buildCounterIdentityConfig < 3) {
    checkUnnamed64(o.userServiceAccountMapping!);
  }
  buildCounterIdentityConfig--;
}

core.int buildCounterInjectCredentialsRequest = 0;
api.InjectCredentialsRequest buildInjectCredentialsRequest() {
  final o = api.InjectCredentialsRequest();
  buildCounterInjectCredentialsRequest++;
  if (buildCounterInjectCredentialsRequest < 3) {
    o.clusterUuid = 'foo';
    o.credentialsCiphertext = 'foo';
  }
  buildCounterInjectCredentialsRequest--;
  return o;
}

void checkInjectCredentialsRequest(api.InjectCredentialsRequest o) {
  buildCounterInjectCredentialsRequest++;
  if (buildCounterInjectCredentialsRequest < 3) {
    unittest.expect(o.clusterUuid!, unittest.equals('foo'));
    unittest.expect(o.credentialsCiphertext!, unittest.equals('foo'));
  }
  buildCounterInjectCredentialsRequest--;
}

core.int buildCounterInputMetrics = 0;
api.InputMetrics buildInputMetrics() {
  final o = api.InputMetrics();
  buildCounterInputMetrics++;
  if (buildCounterInputMetrics < 3) {
    o.bytesRead = 'foo';
    o.recordsRead = 'foo';
  }
  buildCounterInputMetrics--;
  return o;
}

void checkInputMetrics(api.InputMetrics o) {
  buildCounterInputMetrics++;
  if (buildCounterInputMetrics < 3) {
    unittest.expect(o.bytesRead!, unittest.equals('foo'));
    unittest.expect(o.recordsRead!, unittest.equals('foo'));
  }
  buildCounterInputMetrics--;
}

core.int buildCounterInputQuantileMetrics = 0;
api.InputQuantileMetrics buildInputQuantileMetrics() {
  final o = api.InputQuantileMetrics();
  buildCounterInputQuantileMetrics++;
  if (buildCounterInputQuantileMetrics < 3) {
    o.bytesRead = buildQuantiles();
    o.recordsRead = buildQuantiles();
  }
  buildCounterInputQuantileMetrics--;
  return o;
}

void checkInputQuantileMetrics(api.InputQuantileMetrics o) {
  buildCounterInputQuantileMetrics++;
  if (buildCounterInputQuantileMetrics < 3) {
    checkQuantiles(o.bytesRead!);
    checkQuantiles(o.recordsRead!);
  }
  buildCounterInputQuantileMetrics--;
}

core.List<api.InstanceSelection> buildUnnamed65() => [
      buildInstanceSelection(),
      buildInstanceSelection(),
    ];

void checkUnnamed65(core.List<api.InstanceSelection> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceSelection(o[0]);
  checkInstanceSelection(o[1]);
}

core.List<api.InstanceSelectionResult> buildUnnamed66() => [
      buildInstanceSelectionResult(),
      buildInstanceSelectionResult(),
    ];

void checkUnnamed66(core.List<api.InstanceSelectionResult> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceSelectionResult(o[0]);
  checkInstanceSelectionResult(o[1]);
}

core.int buildCounterInstanceFlexibilityPolicy = 0;
api.InstanceFlexibilityPolicy buildInstanceFlexibilityPolicy() {
  final o = api.InstanceFlexibilityPolicy();
  buildCounterInstanceFlexibilityPolicy++;
  if (buildCounterInstanceFlexibilityPolicy < 3) {
    o.instanceSelectionList = buildUnnamed65();
    o.instanceSelectionResults = buildUnnamed66();
    o.provisioningModelMix = buildProvisioningModelMix();
  }
  buildCounterInstanceFlexibilityPolicy--;
  return o;
}

void checkInstanceFlexibilityPolicy(api.InstanceFlexibilityPolicy o) {
  buildCounterInstanceFlexibilityPolicy++;
  if (buildCounterInstanceFlexibilityPolicy < 3) {
    checkUnnamed65(o.instanceSelectionList!);
    checkUnnamed66(o.instanceSelectionResults!);
    checkProvisioningModelMix(o.provisioningModelMix!);
  }
  buildCounterInstanceFlexibilityPolicy--;
}

core.int buildCounterInstanceGroupAutoscalingPolicyConfig = 0;
api.InstanceGroupAutoscalingPolicyConfig
    buildInstanceGroupAutoscalingPolicyConfig() {
  final o = api.InstanceGroupAutoscalingPolicyConfig();
  buildCounterInstanceGroupAutoscalingPolicyConfig++;
  if (buildCounterInstanceGroupAutoscalingPolicyConfig < 3) {
    o.maxInstances = 42;
    o.minInstances = 42;
    o.weight = 42;
  }
  buildCounterInstanceGroupAutoscalingPolicyConfig--;
  return o;
}

void checkInstanceGroupAutoscalingPolicyConfig(
  api.InstanceGroupAutoscalingPolicyConfig o,
) {
  buildCounterInstanceGroupAutoscalingPolicyConfig++;
  if (buildCounterInstanceGroupAutoscalingPolicyConfig < 3) {
    unittest.expect(o.maxInstances!, unittest.equals(42));
    unittest.expect(o.minInstances!, unittest.equals(42));
    unittest.expect(o.weight!, unittest.equals(42));
  }
  buildCounterInstanceGroupAutoscalingPolicyConfig--;
}

core.List<api.AcceleratorConfig> buildUnnamed67() => [
      buildAcceleratorConfig(),
      buildAcceleratorConfig(),
    ];

void checkUnnamed67(core.List<api.AcceleratorConfig> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAcceleratorConfig(o[0]);
  checkAcceleratorConfig(o[1]);
}

core.List<core.String> buildUnnamed68() => ['foo', 'foo'];

void checkUnnamed68(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<api.InstanceReference> buildUnnamed69() => [
      buildInstanceReference(),
      buildInstanceReference(),
    ];

void checkUnnamed69(core.List<api.InstanceReference> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkInstanceReference(o[0]);
  checkInstanceReference(o[1]);
}

core.int buildCounterInstanceGroupConfig = 0;
api.InstanceGroupConfig buildInstanceGroupConfig() {
  final o = api.InstanceGroupConfig();
  buildCounterInstanceGroupConfig++;
  if (buildCounterInstanceGroupConfig < 3) {
    o.accelerators = buildUnnamed67();
    o.diskConfig = buildDiskConfig();
    o.imageUri = 'foo';
    o.instanceFlexibilityPolicy = buildInstanceFlexibilityPolicy();
    o.instanceNames = buildUnnamed68();
    o.instanceReferences = buildUnnamed69();
    o.isPreemptible = true;
    o.machineTypeUri = 'foo';
    o.managedGroupConfig = buildManagedGroupConfig();
    o.minCpuPlatform = 'foo';
    o.minNumInstances = 42;
    o.numInstances = 42;
    o.preemptibility = 'foo';
    o.startupConfig = buildStartupConfig();
  }
  buildCounterInstanceGroupConfig--;
  return o;
}

void checkInstanceGroupConfig(api.InstanceGroupConfig o) {
  buildCounterInstanceGroupConfig++;
  if (buildCounterInstanceGroupConfig < 3) {
    checkUnnamed67(o.accelerators!);
    checkDiskConfig(o.diskConfig!);
    unittest.expect(o.imageUri!, unittest.equals('foo'));
    checkInstanceFlexibilityPolicy(o.instanceFlexibilityPolicy!);
    checkUnnamed68(o.instanceNames!);
    checkUnnamed69(o.instanceReferences!);
    unittest.expect(o.isPreemptible!, unittest.isTrue);
    unittest.expect(o.machineTypeUri!, unittest.equals('foo'));
    checkManagedGroupConfig(o.managedGroupConfig!);
    unittest.expect(o.minCpuPlatform!, unittest.equals('foo'));
    unittest.expect(o.minNumInstances!, unittest.equals(42));
    unittest.expect(o.numInstances!, unittest.equals(42));
    unittest.expect(o.preemptibility!, unittest.equals('foo'));
    checkStartupConfig(o.startupConfig!);
  }
  buildCounterInstanceGroupConfig--;
}

core.int buildCounterInstanceReference = 0;
api.InstanceReference buildInstanceReference() {
  final o = api.InstanceReference();
  buildCounterInstanceReference++;
  if (buildCounterInstanceReference < 3) {
    o.instanceId = 'foo';
    o.instanceName = 'foo';
    o.publicEciesKey = 'foo';
    o.publicKey = 'foo';
  }
  buildCounterInstanceReference--;
  return o;
}

void checkInstanceReference(api.InstanceReference o) {
  buildCounterInstanceReference++;
  if (buildCounterInstanceReference < 3) {
    unittest.expect(o.instanceId!, unittest.equals('foo'));
    unittest.expect(o.instanceName!, unittest.equals('foo'));
    unittest.expect(o.publicEciesKey!, unittest.equals('foo'));
    unittest.expect(o.publicKey!, unittest.equals('foo'));
  }
  buildCounterInstanceReference--;
}

core.List<core.String> buildUnnamed70() => ['foo', 'foo'];

void checkUnnamed70(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterInstanceSelection = 0;
api.InstanceSelection buildInstanceSelection() {
  final o = api.InstanceSelection();
  buildCounterInstanceSelection++;
  if (buildCounterInstanceSelection < 3) {
    o.machineTypes = buildUnnamed70();
    o.rank = 42;
  }
  buildCounterInstanceSelection--;
  return o;
}

void checkInstanceSelection(api.InstanceSelection o) {
  buildCounterInstanceSelection++;
  if (buildCounterInstanceSelection < 3) {
    checkUnnamed70(o.machineTypes!);
    unittest.expect(o.rank!, unittest.equals(42));
  }
  buildCounterInstanceSelection--;
}

core.int buildCounterInstanceSelectionResult = 0;
api.InstanceSelectionResult buildInstanceSelectionResult() {
  final o = api.InstanceSelectionResult();
  buildCounterInstanceSelectionResult++;
  if (buildCounterInstanceSelectionResult < 3) {
    o.machineType = 'foo';
    o.vmCount = 42;
  }
  buildCounterInstanceSelectionResult--;
  return o;
}

void checkInstanceSelectionResult(api.InstanceSelectionResult o) {
  buildCounterInstanceSelectionResult++;
  if (buildCounterInstanceSelectionResult < 3) {
    unittest.expect(o.machineType!, unittest.equals('foo'));
    unittest.expect(o.vmCount!, unittest.equals(42));
  }
  buildCounterInstanceSelectionResult--;
}

core.Map<core.String, core.String> buildUnnamed71() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed71(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterInstantiateWorkflowTemplateRequest = 0;
api.InstantiateWorkflowTemplateRequest
    buildInstantiateWorkflowTemplateRequest() {
  final o = api.InstantiateWorkflowTemplateRequest();
  buildCounterInstantiateWorkflowTemplateRequest++;
  if (buildCounterInstantiateWorkflowTemplateRequest < 3) {
    o.parameters = buildUnnamed71();
    o.requestId = 'foo';
    o.version = 42;
  }
  buildCounterInstantiateWorkflowTemplateRequest--;
  return o;
}

void checkInstantiateWorkflowTemplateRequest(
  api.InstantiateWorkflowTemplateRequest o,
) {
  buildCounterInstantiateWorkflowTemplateRequest++;
  if (buildCounterInstantiateWorkflowTemplateRequest < 3) {
    checkUnnamed71(o.parameters!);
    unittest.expect(o.requestId!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterInstantiateWorkflowTemplateRequest--;
}

core.int buildCounterInterval = 0;
api.Interval buildInterval() {
  final o = api.Interval();
  buildCounterInterval++;
  if (buildCounterInterval < 3) {
    o.endTime = 'foo';
    o.startTime = 'foo';
  }
  buildCounterInterval--;
  return o;
}

void checkInterval(api.Interval o) {
  buildCounterInterval++;
  if (buildCounterInterval < 3) {
    unittest.expect(o.endTime!, unittest.equals('foo'));
    unittest.expect(o.startTime!, unittest.equals('foo'));
  }
  buildCounterInterval--;
}

core.Map<core.String, core.String> buildUnnamed72() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed72(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.JobStatus> buildUnnamed73() => [
      buildJobStatus(),
      buildJobStatus(),
    ];

void checkUnnamed73(core.List<api.JobStatus> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobStatus(o[0]);
  checkJobStatus(o[1]);
}

core.List<api.YarnApplication> buildUnnamed74() => [
      buildYarnApplication(),
      buildYarnApplication(),
    ];

void checkUnnamed74(core.List<api.YarnApplication> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkYarnApplication(o[0]);
  checkYarnApplication(o[1]);
}

core.int buildCounterJob = 0;
api.Job buildJob() {
  final o = api.Job();
  buildCounterJob++;
  if (buildCounterJob < 3) {
    o.done = true;
    o.driverControlFilesUri = 'foo';
    o.driverOutputResourceUri = 'foo';
    o.driverSchedulingConfig = buildDriverSchedulingConfig();
    o.flinkJob = buildFlinkJob();
    o.hadoopJob = buildHadoopJob();
    o.hiveJob = buildHiveJob();
    o.jobUuid = 'foo';
    o.labels = buildUnnamed72();
    o.pigJob = buildPigJob();
    o.placement = buildJobPlacement();
    o.prestoJob = buildPrestoJob();
    o.pysparkJob = buildPySparkJob();
    o.reference = buildJobReference();
    o.scheduling = buildJobScheduling();
    o.sparkJob = buildSparkJob();
    o.sparkRJob = buildSparkRJob();
    o.sparkSqlJob = buildSparkSqlJob();
    o.status = buildJobStatus();
    o.statusHistory = buildUnnamed73();
    o.trinoJob = buildTrinoJob();
    o.yarnApplications = buildUnnamed74();
  }
  buildCounterJob--;
  return o;
}

void checkJob(api.Job o) {
  buildCounterJob++;
  if (buildCounterJob < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    unittest.expect(o.driverControlFilesUri!, unittest.equals('foo'));
    unittest.expect(o.driverOutputResourceUri!, unittest.equals('foo'));
    checkDriverSchedulingConfig(o.driverSchedulingConfig!);
    checkFlinkJob(o.flinkJob!);
    checkHadoopJob(o.hadoopJob!);
    checkHiveJob(o.hiveJob!);
    unittest.expect(o.jobUuid!, unittest.equals('foo'));
    checkUnnamed72(o.labels!);
    checkPigJob(o.pigJob!);
    checkJobPlacement(o.placement!);
    checkPrestoJob(o.prestoJob!);
    checkPySparkJob(o.pysparkJob!);
    checkJobReference(o.reference!);
    checkJobScheduling(o.scheduling!);
    checkSparkJob(o.sparkJob!);
    checkSparkRJob(o.sparkRJob!);
    checkSparkSqlJob(o.sparkSqlJob!);
    checkJobStatus(o.status!);
    checkUnnamed73(o.statusHistory!);
    checkTrinoJob(o.trinoJob!);
    checkUnnamed74(o.yarnApplications!);
  }
  buildCounterJob--;
}

core.Map<core.String, core.int> buildUnnamed75() => {'x': 42, 'y': 42};

void checkUnnamed75(core.Map<core.String, core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals(42));
  unittest.expect(o['y']!, unittest.equals(42));
}

core.List<core.int> buildUnnamed76() => [42, 42];

void checkUnnamed76(core.List<core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals(42));
  unittest.expect(o[1], unittest.equals(42));
}

core.List<core.String> buildUnnamed77() => ['foo', 'foo'];

void checkUnnamed77(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterJobData = 0;
api.JobData buildJobData() {
  final o = api.JobData();
  buildCounterJobData++;
  if (buildCounterJobData < 3) {
    o.completionTime = 'foo';
    o.description = 'foo';
    o.jobGroup = 'foo';
    o.jobId = 'foo';
    o.killTasksSummary = buildUnnamed75();
    o.name = 'foo';
    o.numActiveStages = 42;
    o.numActiveTasks = 42;
    o.numCompletedIndices = 42;
    o.numCompletedStages = 42;
    o.numCompletedTasks = 42;
    o.numFailedStages = 42;
    o.numFailedTasks = 42;
    o.numKilledTasks = 42;
    o.numSkippedStages = 42;
    o.numSkippedTasks = 42;
    o.numTasks = 42;
    o.skippedStages = buildUnnamed76();
    o.sqlExecutionId = 'foo';
    o.stageIds = buildUnnamed77();
    o.status = 'foo';
    o.submissionTime = 'foo';
  }
  buildCounterJobData--;
  return o;
}

void checkJobData(api.JobData o) {
  buildCounterJobData++;
  if (buildCounterJobData < 3) {
    unittest.expect(o.completionTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.jobGroup!, unittest.equals('foo'));
    unittest.expect(o.jobId!, unittest.equals('foo'));
    checkUnnamed75(o.killTasksSummary!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.numActiveStages!, unittest.equals(42));
    unittest.expect(o.numActiveTasks!, unittest.equals(42));
    unittest.expect(o.numCompletedIndices!, unittest.equals(42));
    unittest.expect(o.numCompletedStages!, unittest.equals(42));
    unittest.expect(o.numCompletedTasks!, unittest.equals(42));
    unittest.expect(o.numFailedStages!, unittest.equals(42));
    unittest.expect(o.numFailedTasks!, unittest.equals(42));
    unittest.expect(o.numKilledTasks!, unittest.equals(42));
    unittest.expect(o.numSkippedStages!, unittest.equals(42));
    unittest.expect(o.numSkippedTasks!, unittest.equals(42));
    unittest.expect(o.numTasks!, unittest.equals(42));
    checkUnnamed76(o.skippedStages!);
    unittest.expect(o.sqlExecutionId!, unittest.equals('foo'));
    checkUnnamed77(o.stageIds!);
    unittest.expect(o.status!, unittest.equals('foo'));
    unittest.expect(o.submissionTime!, unittest.equals('foo'));
  }
  buildCounterJobData--;
}

core.Map<core.String, core.String> buildUnnamed78() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed78(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterJobPlacement = 0;
api.JobPlacement buildJobPlacement() {
  final o = api.JobPlacement();
  buildCounterJobPlacement++;
  if (buildCounterJobPlacement < 3) {
    o.clusterLabels = buildUnnamed78();
    o.clusterName = 'foo';
    o.clusterUuid = 'foo';
  }
  buildCounterJobPlacement--;
  return o;
}

void checkJobPlacement(api.JobPlacement o) {
  buildCounterJobPlacement++;
  if (buildCounterJobPlacement < 3) {
    checkUnnamed78(o.clusterLabels!);
    unittest.expect(o.clusterName!, unittest.equals('foo'));
    unittest.expect(o.clusterUuid!, unittest.equals('foo'));
  }
  buildCounterJobPlacement--;
}

core.int buildCounterJobReference = 0;
api.JobReference buildJobReference() {
  final o = api.JobReference();
  buildCounterJobReference++;
  if (buildCounterJobReference < 3) {
    o.jobId = 'foo';
    o.projectId = 'foo';
  }
  buildCounterJobReference--;
  return o;
}

void checkJobReference(api.JobReference o) {
  buildCounterJobReference++;
  if (buildCounterJobReference < 3) {
    unittest.expect(o.jobId!, unittest.equals('foo'));
    unittest.expect(o.projectId!, unittest.equals('foo'));
  }
  buildCounterJobReference--;
}

core.int buildCounterJobScheduling = 0;
api.JobScheduling buildJobScheduling() {
  final o = api.JobScheduling();
  buildCounterJobScheduling++;
  if (buildCounterJobScheduling < 3) {
    o.maxFailuresPerHour = 42;
    o.maxFailuresTotal = 42;
  }
  buildCounterJobScheduling--;
  return o;
}

void checkJobScheduling(api.JobScheduling o) {
  buildCounterJobScheduling++;
  if (buildCounterJobScheduling < 3) {
    unittest.expect(o.maxFailuresPerHour!, unittest.equals(42));
    unittest.expect(o.maxFailuresTotal!, unittest.equals(42));
  }
  buildCounterJobScheduling--;
}

core.int buildCounterJobStatus = 0;
api.JobStatus buildJobStatus() {
  final o = api.JobStatus();
  buildCounterJobStatus++;
  if (buildCounterJobStatus < 3) {
    o.details = 'foo';
    o.state = 'foo';
    o.stateStartTime = 'foo';
    o.substate = 'foo';
  }
  buildCounterJobStatus--;
  return o;
}

void checkJobStatus(api.JobStatus o) {
  buildCounterJobStatus++;
  if (buildCounterJobStatus < 3) {
    unittest.expect(o.details!, unittest.equals('foo'));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.stateStartTime!, unittest.equals('foo'));
    unittest.expect(o.substate!, unittest.equals('foo'));
  }
  buildCounterJobStatus--;
}

core.List<api.ApplicationAttemptInfo> buildUnnamed79() => [
      buildApplicationAttemptInfo(),
      buildApplicationAttemptInfo(),
    ];

void checkUnnamed79(core.List<api.ApplicationAttemptInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkApplicationAttemptInfo(o[0]);
  checkApplicationAttemptInfo(o[1]);
}

core.int buildCounterJobsSummary = 0;
api.JobsSummary buildJobsSummary() {
  final o = api.JobsSummary();
  buildCounterJobsSummary++;
  if (buildCounterJobsSummary < 3) {
    o.activeJobs = 42;
    o.applicationId = 'foo';
    o.attempts = buildUnnamed79();
    o.completedJobs = 42;
    o.failedJobs = 42;
    o.schedulingMode = 'foo';
  }
  buildCounterJobsSummary--;
  return o;
}

void checkJobsSummary(api.JobsSummary o) {
  buildCounterJobsSummary++;
  if (buildCounterJobsSummary < 3) {
    unittest.expect(o.activeJobs!, unittest.equals(42));
    unittest.expect(o.applicationId!, unittest.equals('foo'));
    checkUnnamed79(o.attempts!);
    unittest.expect(o.completedJobs!, unittest.equals(42));
    unittest.expect(o.failedJobs!, unittest.equals(42));
    unittest.expect(o.schedulingMode!, unittest.equals('foo'));
  }
  buildCounterJobsSummary--;
}

core.int buildCounterJupyterConfig = 0;
api.JupyterConfig buildJupyterConfig() {
  final o = api.JupyterConfig();
  buildCounterJupyterConfig++;
  if (buildCounterJupyterConfig < 3) {
    o.displayName = 'foo';
    o.kernel = 'foo';
  }
  buildCounterJupyterConfig--;
  return o;
}

void checkJupyterConfig(api.JupyterConfig o) {
  buildCounterJupyterConfig++;
  if (buildCounterJupyterConfig < 3) {
    unittest.expect(o.displayName!, unittest.equals('foo'));
    unittest.expect(o.kernel!, unittest.equals('foo'));
  }
  buildCounterJupyterConfig--;
}

core.int buildCounterKerberosConfig = 0;
api.KerberosConfig buildKerberosConfig() {
  final o = api.KerberosConfig();
  buildCounterKerberosConfig++;
  if (buildCounterKerberosConfig < 3) {
    o.crossRealmTrustAdminServer = 'foo';
    o.crossRealmTrustKdc = 'foo';
    o.crossRealmTrustRealm = 'foo';
    o.crossRealmTrustSharedPasswordUri = 'foo';
    o.enableKerberos = true;
    o.kdcDbKeyUri = 'foo';
    o.keyPasswordUri = 'foo';
    o.keystorePasswordUri = 'foo';
    o.keystoreUri = 'foo';
    o.kmsKeyUri = 'foo';
    o.realm = 'foo';
    o.rootPrincipalPasswordUri = 'foo';
    o.tgtLifetimeHours = 42;
    o.truststorePasswordUri = 'foo';
    o.truststoreUri = 'foo';
  }
  buildCounterKerberosConfig--;
  return o;
}

void checkKerberosConfig(api.KerberosConfig o) {
  buildCounterKerberosConfig++;
  if (buildCounterKerberosConfig < 3) {
    unittest.expect(o.crossRealmTrustAdminServer!, unittest.equals('foo'));
    unittest.expect(o.crossRealmTrustKdc!, unittest.equals('foo'));
    unittest.expect(o.crossRealmTrustRealm!, unittest.equals('foo'));
    unittest.expect(
      o.crossRealmTrustSharedPasswordUri!,
      unittest.equals('foo'),
    );
    unittest.expect(o.enableKerberos!, unittest.isTrue);
    unittest.expect(o.kdcDbKeyUri!, unittest.equals('foo'));
    unittest.expect(o.keyPasswordUri!, unittest.equals('foo'));
    unittest.expect(o.keystorePasswordUri!, unittest.equals('foo'));
    unittest.expect(o.keystoreUri!, unittest.equals('foo'));
    unittest.expect(o.kmsKeyUri!, unittest.equals('foo'));
    unittest.expect(o.realm!, unittest.equals('foo'));
    unittest.expect(o.rootPrincipalPasswordUri!, unittest.equals('foo'));
    unittest.expect(o.tgtLifetimeHours!, unittest.equals(42));
    unittest.expect(o.truststorePasswordUri!, unittest.equals('foo'));
    unittest.expect(o.truststoreUri!, unittest.equals('foo'));
  }
  buildCounterKerberosConfig--;
}

core.int buildCounterKubernetesClusterConfig = 0;
api.KubernetesClusterConfig buildKubernetesClusterConfig() {
  final o = api.KubernetesClusterConfig();
  buildCounterKubernetesClusterConfig++;
  if (buildCounterKubernetesClusterConfig < 3) {
    o.gkeClusterConfig = buildGkeClusterConfig();
    o.kubernetesNamespace = 'foo';
    o.kubernetesSoftwareConfig = buildKubernetesSoftwareConfig();
  }
  buildCounterKubernetesClusterConfig--;
  return o;
}

void checkKubernetesClusterConfig(api.KubernetesClusterConfig o) {
  buildCounterKubernetesClusterConfig++;
  if (buildCounterKubernetesClusterConfig < 3) {
    checkGkeClusterConfig(o.gkeClusterConfig!);
    unittest.expect(o.kubernetesNamespace!, unittest.equals('foo'));
    checkKubernetesSoftwareConfig(o.kubernetesSoftwareConfig!);
  }
  buildCounterKubernetesClusterConfig--;
}

core.Map<core.String, core.String> buildUnnamed80() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed80(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed81() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed81(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterKubernetesSoftwareConfig = 0;
api.KubernetesSoftwareConfig buildKubernetesSoftwareConfig() {
  final o = api.KubernetesSoftwareConfig();
  buildCounterKubernetesSoftwareConfig++;
  if (buildCounterKubernetesSoftwareConfig < 3) {
    o.componentVersion = buildUnnamed80();
    o.properties = buildUnnamed81();
  }
  buildCounterKubernetesSoftwareConfig--;
  return o;
}

void checkKubernetesSoftwareConfig(api.KubernetesSoftwareConfig o) {
  buildCounterKubernetesSoftwareConfig++;
  if (buildCounterKubernetesSoftwareConfig < 3) {
    checkUnnamed80(o.componentVersion!);
    checkUnnamed81(o.properties!);
  }
  buildCounterKubernetesSoftwareConfig--;
}

core.int buildCounterLifecycleConfig = 0;
api.LifecycleConfig buildLifecycleConfig() {
  final o = api.LifecycleConfig();
  buildCounterLifecycleConfig++;
  if (buildCounterLifecycleConfig < 3) {
    o.autoDeleteTime = 'foo';
    o.autoDeleteTtl = 'foo';
    o.idleDeleteTtl = 'foo';
    o.idleStartTime = 'foo';
  }
  buildCounterLifecycleConfig--;
  return o;
}

void checkLifecycleConfig(api.LifecycleConfig o) {
  buildCounterLifecycleConfig++;
  if (buildCounterLifecycleConfig < 3) {
    unittest.expect(o.autoDeleteTime!, unittest.equals('foo'));
    unittest.expect(o.autoDeleteTtl!, unittest.equals('foo'));
    unittest.expect(o.idleDeleteTtl!, unittest.equals('foo'));
    unittest.expect(o.idleStartTime!, unittest.equals('foo'));
  }
  buildCounterLifecycleConfig--;
}

core.List<api.AutoscalingPolicy> buildUnnamed82() => [
      buildAutoscalingPolicy(),
      buildAutoscalingPolicy(),
    ];

void checkUnnamed82(core.List<api.AutoscalingPolicy> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAutoscalingPolicy(o[0]);
  checkAutoscalingPolicy(o[1]);
}

core.int buildCounterListAutoscalingPoliciesResponse = 0;
api.ListAutoscalingPoliciesResponse buildListAutoscalingPoliciesResponse() {
  final o = api.ListAutoscalingPoliciesResponse();
  buildCounterListAutoscalingPoliciesResponse++;
  if (buildCounterListAutoscalingPoliciesResponse < 3) {
    o.nextPageToken = 'foo';
    o.policies = buildUnnamed82();
  }
  buildCounterListAutoscalingPoliciesResponse--;
  return o;
}

void checkListAutoscalingPoliciesResponse(
  api.ListAutoscalingPoliciesResponse o,
) {
  buildCounterListAutoscalingPoliciesResponse++;
  if (buildCounterListAutoscalingPoliciesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed82(o.policies!);
  }
  buildCounterListAutoscalingPoliciesResponse--;
}

core.List<api.Batch> buildUnnamed83() => [buildBatch(), buildBatch()];

void checkUnnamed83(core.List<api.Batch> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBatch(o[0]);
  checkBatch(o[1]);
}

core.List<core.String> buildUnnamed84() => ['foo', 'foo'];

void checkUnnamed84(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListBatchesResponse = 0;
api.ListBatchesResponse buildListBatchesResponse() {
  final o = api.ListBatchesResponse();
  buildCounterListBatchesResponse++;
  if (buildCounterListBatchesResponse < 3) {
    o.batches = buildUnnamed83();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed84();
  }
  buildCounterListBatchesResponse--;
  return o;
}

void checkListBatchesResponse(api.ListBatchesResponse o) {
  buildCounterListBatchesResponse++;
  if (buildCounterListBatchesResponse < 3) {
    checkUnnamed83(o.batches!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed84(o.unreachable!);
  }
  buildCounterListBatchesResponse--;
}

core.List<api.Cluster> buildUnnamed85() => [buildCluster(), buildCluster()];

void checkUnnamed85(core.List<api.Cluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkCluster(o[0]);
  checkCluster(o[1]);
}

core.int buildCounterListClustersResponse = 0;
api.ListClustersResponse buildListClustersResponse() {
  final o = api.ListClustersResponse();
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    o.clusters = buildUnnamed85();
    o.nextPageToken = 'foo';
  }
  buildCounterListClustersResponse--;
  return o;
}

void checkListClustersResponse(api.ListClustersResponse o) {
  buildCounterListClustersResponse++;
  if (buildCounterListClustersResponse < 3) {
    checkUnnamed85(o.clusters!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
  }
  buildCounterListClustersResponse--;
}

core.List<api.Job> buildUnnamed86() => [buildJob(), buildJob()];

void checkUnnamed86(core.List<api.Job> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJob(o[0]);
  checkJob(o[1]);
}

core.List<core.String> buildUnnamed87() => ['foo', 'foo'];

void checkUnnamed87(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListJobsResponse = 0;
api.ListJobsResponse buildListJobsResponse() {
  final o = api.ListJobsResponse();
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    o.jobs = buildUnnamed86();
    o.nextPageToken = 'foo';
    o.unreachable = buildUnnamed87();
  }
  buildCounterListJobsResponse--;
  return o;
}

void checkListJobsResponse(api.ListJobsResponse o) {
  buildCounterListJobsResponse++;
  if (buildCounterListJobsResponse < 3) {
    checkUnnamed86(o.jobs!);
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed87(o.unreachable!);
  }
  buildCounterListJobsResponse--;
}

core.List<api.Operation> buildUnnamed88() => [
      buildOperation(),
      buildOperation(),
    ];

void checkUnnamed88(core.List<api.Operation> o) {
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
    o.operations = buildUnnamed88();
  }
  buildCounterListOperationsResponse--;
  return o;
}

void checkListOperationsResponse(api.ListOperationsResponse o) {
  buildCounterListOperationsResponse++;
  if (buildCounterListOperationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed88(o.operations!);
  }
  buildCounterListOperationsResponse--;
}

core.List<api.SessionTemplate> buildUnnamed89() => [
      buildSessionTemplate(),
      buildSessionTemplate(),
    ];

void checkUnnamed89(core.List<api.SessionTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSessionTemplate(o[0]);
  checkSessionTemplate(o[1]);
}

core.int buildCounterListSessionTemplatesResponse = 0;
api.ListSessionTemplatesResponse buildListSessionTemplatesResponse() {
  final o = api.ListSessionTemplatesResponse();
  buildCounterListSessionTemplatesResponse++;
  if (buildCounterListSessionTemplatesResponse < 3) {
    o.nextPageToken = 'foo';
    o.sessionTemplates = buildUnnamed89();
  }
  buildCounterListSessionTemplatesResponse--;
  return o;
}

void checkListSessionTemplatesResponse(api.ListSessionTemplatesResponse o) {
  buildCounterListSessionTemplatesResponse++;
  if (buildCounterListSessionTemplatesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed89(o.sessionTemplates!);
  }
  buildCounterListSessionTemplatesResponse--;
}

core.List<api.Session> buildUnnamed90() => [buildSession(), buildSession()];

void checkUnnamed90(core.List<api.Session> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSession(o[0]);
  checkSession(o[1]);
}

core.int buildCounterListSessionsResponse = 0;
api.ListSessionsResponse buildListSessionsResponse() {
  final o = api.ListSessionsResponse();
  buildCounterListSessionsResponse++;
  if (buildCounterListSessionsResponse < 3) {
    o.nextPageToken = 'foo';
    o.sessions = buildUnnamed90();
  }
  buildCounterListSessionsResponse--;
  return o;
}

void checkListSessionsResponse(api.ListSessionsResponse o) {
  buildCounterListSessionsResponse++;
  if (buildCounterListSessionsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed90(o.sessions!);
  }
  buildCounterListSessionsResponse--;
}

core.List<api.WorkflowTemplate> buildUnnamed91() => [
      buildWorkflowTemplate(),
      buildWorkflowTemplate(),
    ];

void checkUnnamed91(core.List<api.WorkflowTemplate> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkWorkflowTemplate(o[0]);
  checkWorkflowTemplate(o[1]);
}

core.List<core.String> buildUnnamed92() => ['foo', 'foo'];

void checkUnnamed92(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterListWorkflowTemplatesResponse = 0;
api.ListWorkflowTemplatesResponse buildListWorkflowTemplatesResponse() {
  final o = api.ListWorkflowTemplatesResponse();
  buildCounterListWorkflowTemplatesResponse++;
  if (buildCounterListWorkflowTemplatesResponse < 3) {
    o.nextPageToken = 'foo';
    o.templates = buildUnnamed91();
    o.unreachable = buildUnnamed92();
  }
  buildCounterListWorkflowTemplatesResponse--;
  return o;
}

void checkListWorkflowTemplatesResponse(api.ListWorkflowTemplatesResponse o) {
  buildCounterListWorkflowTemplatesResponse++;
  if (buildCounterListWorkflowTemplatesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed91(o.templates!);
    checkUnnamed92(o.unreachable!);
  }
  buildCounterListWorkflowTemplatesResponse--;
}

core.Map<core.String, core.String> buildUnnamed93() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed93(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterLoggingConfig = 0;
api.LoggingConfig buildLoggingConfig() {
  final o = api.LoggingConfig();
  buildCounterLoggingConfig++;
  if (buildCounterLoggingConfig < 3) {
    o.driverLogLevels = buildUnnamed93();
  }
  buildCounterLoggingConfig--;
  return o;
}

void checkLoggingConfig(api.LoggingConfig o) {
  buildCounterLoggingConfig++;
  if (buildCounterLoggingConfig < 3) {
    checkUnnamed93(o.driverLogLevels!);
  }
  buildCounterLoggingConfig--;
}

core.Map<core.String, core.String> buildUnnamed94() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed94(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterManagedCluster = 0;
api.ManagedCluster buildManagedCluster() {
  final o = api.ManagedCluster();
  buildCounterManagedCluster++;
  if (buildCounterManagedCluster < 3) {
    o.clusterName = 'foo';
    o.config = buildClusterConfig();
    o.labels = buildUnnamed94();
  }
  buildCounterManagedCluster--;
  return o;
}

void checkManagedCluster(api.ManagedCluster o) {
  buildCounterManagedCluster++;
  if (buildCounterManagedCluster < 3) {
    unittest.expect(o.clusterName!, unittest.equals('foo'));
    checkClusterConfig(o.config!);
    checkUnnamed94(o.labels!);
  }
  buildCounterManagedCluster--;
}

core.int buildCounterManagedGroupConfig = 0;
api.ManagedGroupConfig buildManagedGroupConfig() {
  final o = api.ManagedGroupConfig();
  buildCounterManagedGroupConfig++;
  if (buildCounterManagedGroupConfig < 3) {
    o.instanceGroupManagerName = 'foo';
    o.instanceGroupManagerUri = 'foo';
    o.instanceTemplateName = 'foo';
  }
  buildCounterManagedGroupConfig--;
  return o;
}

void checkManagedGroupConfig(api.ManagedGroupConfig o) {
  buildCounterManagedGroupConfig++;
  if (buildCounterManagedGroupConfig < 3) {
    unittest.expect(o.instanceGroupManagerName!, unittest.equals('foo'));
    unittest.expect(o.instanceGroupManagerUri!, unittest.equals('foo'));
    unittest.expect(o.instanceTemplateName!, unittest.equals('foo'));
  }
  buildCounterManagedGroupConfig--;
}

core.int buildCounterMemoryMetrics = 0;
api.MemoryMetrics buildMemoryMetrics() {
  final o = api.MemoryMetrics();
  buildCounterMemoryMetrics++;
  if (buildCounterMemoryMetrics < 3) {
    o.totalOffHeapStorageMemory = 'foo';
    o.totalOnHeapStorageMemory = 'foo';
    o.usedOffHeapStorageMemory = 'foo';
    o.usedOnHeapStorageMemory = 'foo';
  }
  buildCounterMemoryMetrics--;
  return o;
}

void checkMemoryMetrics(api.MemoryMetrics o) {
  buildCounterMemoryMetrics++;
  if (buildCounterMemoryMetrics < 3) {
    unittest.expect(o.totalOffHeapStorageMemory!, unittest.equals('foo'));
    unittest.expect(o.totalOnHeapStorageMemory!, unittest.equals('foo'));
    unittest.expect(o.usedOffHeapStorageMemory!, unittest.equals('foo'));
    unittest.expect(o.usedOnHeapStorageMemory!, unittest.equals('foo'));
  }
  buildCounterMemoryMetrics--;
}

core.int buildCounterMetastoreConfig = 0;
api.MetastoreConfig buildMetastoreConfig() {
  final o = api.MetastoreConfig();
  buildCounterMetastoreConfig++;
  if (buildCounterMetastoreConfig < 3) {
    o.dataprocMetastoreService = 'foo';
  }
  buildCounterMetastoreConfig--;
  return o;
}

void checkMetastoreConfig(api.MetastoreConfig o) {
  buildCounterMetastoreConfig++;
  if (buildCounterMetastoreConfig < 3) {
    unittest.expect(o.dataprocMetastoreService!, unittest.equals('foo'));
  }
  buildCounterMetastoreConfig--;
}

core.List<core.String> buildUnnamed95() => ['foo', 'foo'];

void checkUnnamed95(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterMetric = 0;
api.Metric buildMetric() {
  final o = api.Metric();
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    o.metricOverrides = buildUnnamed95();
    o.metricSource = 'foo';
  }
  buildCounterMetric--;
  return o;
}

void checkMetric(api.Metric o) {
  buildCounterMetric++;
  if (buildCounterMetric < 3) {
    checkUnnamed95(o.metricOverrides!);
    unittest.expect(o.metricSource!, unittest.equals('foo'));
  }
  buildCounterMetric--;
}

core.int buildCounterNamespacedGkeDeploymentTarget = 0;
api.NamespacedGkeDeploymentTarget buildNamespacedGkeDeploymentTarget() {
  final o = api.NamespacedGkeDeploymentTarget();
  buildCounterNamespacedGkeDeploymentTarget++;
  if (buildCounterNamespacedGkeDeploymentTarget < 3) {
    o.clusterNamespace = 'foo';
    o.targetGkeCluster = 'foo';
  }
  buildCounterNamespacedGkeDeploymentTarget--;
  return o;
}

void checkNamespacedGkeDeploymentTarget(api.NamespacedGkeDeploymentTarget o) {
  buildCounterNamespacedGkeDeploymentTarget++;
  if (buildCounterNamespacedGkeDeploymentTarget < 3) {
    unittest.expect(o.clusterNamespace!, unittest.equals('foo'));
    unittest.expect(o.targetGkeCluster!, unittest.equals('foo'));
  }
  buildCounterNamespacedGkeDeploymentTarget--;
}

core.Map<core.String, core.String> buildUnnamed96() => {'x': 'foo', 'y': 'foo'};

void checkUnnamed96(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed97() => ['foo', 'foo'];

void checkUnnamed97(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterNodeGroup = 0;
api.NodeGroup buildNodeGroup() {
  final o = api.NodeGroup();
  buildCounterNodeGroup++;
  if (buildCounterNodeGroup < 3) {
    o.labels = buildUnnamed96();
    o.name = 'foo';
    o.nodeGroupConfig = buildInstanceGroupConfig();
    o.roles = buildUnnamed97();
  }
  buildCounterNodeGroup--;
  return o;
}

void checkNodeGroup(api.NodeGroup o) {
  buildCounterNodeGroup++;
  if (buildCounterNodeGroup < 3) {
    checkUnnamed96(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkInstanceGroupConfig(o.nodeGroupConfig!);
    checkUnnamed97(o.roles!);
  }
  buildCounterNodeGroup--;
}

core.int buildCounterNodeGroupAffinity = 0;
api.NodeGroupAffinity buildNodeGroupAffinity() {
  final o = api.NodeGroupAffinity();
  buildCounterNodeGroupAffinity++;
  if (buildCounterNodeGroupAffinity < 3) {
    o.nodeGroupUri = 'foo';
  }
  buildCounterNodeGroupAffinity--;
  return o;
}

void checkNodeGroupAffinity(api.NodeGroupAffinity o) {
  buildCounterNodeGroupAffinity++;
  if (buildCounterNodeGroupAffinity < 3) {
    unittest.expect(o.nodeGroupUri!, unittest.equals('foo'));
  }
  buildCounterNodeGroupAffinity--;
}

core.int buildCounterNodeInitializationAction = 0;
api.NodeInitializationAction buildNodeInitializationAction() {
  final o = api.NodeInitializationAction();
  buildCounterNodeInitializationAction++;
  if (buildCounterNodeInitializationAction < 3) {
    o.executableFile = 'foo';
    o.executionTimeout = 'foo';
  }
  buildCounterNodeInitializationAction--;
  return o;
}

void checkNodeInitializationAction(api.NodeInitializationAction o) {
  buildCounterNodeInitializationAction++;
  if (buildCounterNodeInitializationAction < 3) {
    unittest.expect(o.executableFile!, unittest.equals('foo'));
    unittest.expect(o.executionTimeout!, unittest.equals('foo'));
  }
  buildCounterNodeInitializationAction--;
}

core.List<core.String> buildUnnamed98() => ['foo', 'foo'];

void checkUnnamed98(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterNodePool = 0;
api.NodePool buildNodePool() {
  final o = api.NodePool();
  buildCounterNodePool++;
  if (buildCounterNodePool < 3) {
    o.id = 'foo';
    o.instanceNames = buildUnnamed98();
    o.repairAction = 'foo';
  }
  buildCounterNodePool--;
  return o;
}

void checkNodePool(api.NodePool o) {
  buildCounterNodePool++;
  if (buildCounterNodePool < 3) {
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed98(o.instanceNames!);
    unittest.expect(o.repairAction!, unittest.equals('foo'));
  }
  buildCounterNodePool--;
}

core.Map<core.String, core.Object?> buildUnnamed99() => {
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

void checkUnnamed99(core.Map<core.String, core.Object?> o) {
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

core.Map<core.String, core.Object?> buildUnnamed100() => {
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

void checkUnnamed100(core.Map<core.String, core.Object?> o) {
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

core.int buildCounterOperation = 0;
api.Operation buildOperation() {
  final o = api.Operation();
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    o.done = true;
    o.error = buildStatus();
    o.metadata = buildUnnamed99();
    o.name = 'foo';
    o.response = buildUnnamed100();
  }
  buildCounterOperation--;
  return o;
}

void checkOperation(api.Operation o) {
  buildCounterOperation++;
  if (buildCounterOperation < 3) {
    unittest.expect(o.done!, unittest.isTrue);
    checkStatus(o.error!);
    checkUnnamed99(o.metadata!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed100(o.response!);
  }
  buildCounterOperation--;
}

core.Map<core.String, core.String> buildUnnamed101() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed101(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed102() => ['foo', 'foo'];

void checkUnnamed102(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterOrderedJob = 0;
api.OrderedJob buildOrderedJob() {
  final o = api.OrderedJob();
  buildCounterOrderedJob++;
  if (buildCounterOrderedJob < 3) {
    o.flinkJob = buildFlinkJob();
    o.hadoopJob = buildHadoopJob();
    o.hiveJob = buildHiveJob();
    o.labels = buildUnnamed101();
    o.pigJob = buildPigJob();
    o.prerequisiteStepIds = buildUnnamed102();
    o.prestoJob = buildPrestoJob();
    o.pysparkJob = buildPySparkJob();
    o.scheduling = buildJobScheduling();
    o.sparkJob = buildSparkJob();
    o.sparkRJob = buildSparkRJob();
    o.sparkSqlJob = buildSparkSqlJob();
    o.stepId = 'foo';
    o.trinoJob = buildTrinoJob();
  }
  buildCounterOrderedJob--;
  return o;
}

void checkOrderedJob(api.OrderedJob o) {
  buildCounterOrderedJob++;
  if (buildCounterOrderedJob < 3) {
    checkFlinkJob(o.flinkJob!);
    checkHadoopJob(o.hadoopJob!);
    checkHiveJob(o.hiveJob!);
    checkUnnamed101(o.labels!);
    checkPigJob(o.pigJob!);
    checkUnnamed102(o.prerequisiteStepIds!);
    checkPrestoJob(o.prestoJob!);
    checkPySparkJob(o.pysparkJob!);
    checkJobScheduling(o.scheduling!);
    checkSparkJob(o.sparkJob!);
    checkSparkRJob(o.sparkRJob!);
    checkSparkSqlJob(o.sparkSqlJob!);
    unittest.expect(o.stepId!, unittest.equals('foo'));
    checkTrinoJob(o.trinoJob!);
  }
  buildCounterOrderedJob--;
}

core.int buildCounterOutputMetrics = 0;
api.OutputMetrics buildOutputMetrics() {
  final o = api.OutputMetrics();
  buildCounterOutputMetrics++;
  if (buildCounterOutputMetrics < 3) {
    o.bytesWritten = 'foo';
    o.recordsWritten = 'foo';
  }
  buildCounterOutputMetrics--;
  return o;
}

void checkOutputMetrics(api.OutputMetrics o) {
  buildCounterOutputMetrics++;
  if (buildCounterOutputMetrics < 3) {
    unittest.expect(o.bytesWritten!, unittest.equals('foo'));
    unittest.expect(o.recordsWritten!, unittest.equals('foo'));
  }
  buildCounterOutputMetrics--;
}

core.int buildCounterOutputQuantileMetrics = 0;
api.OutputQuantileMetrics buildOutputQuantileMetrics() {
  final o = api.OutputQuantileMetrics();
  buildCounterOutputQuantileMetrics++;
  if (buildCounterOutputQuantileMetrics < 3) {
    o.bytesWritten = buildQuantiles();
    o.recordsWritten = buildQuantiles();
  }
  buildCounterOutputQuantileMetrics--;
  return o;
}

void checkOutputQuantileMetrics(api.OutputQuantileMetrics o) {
  buildCounterOutputQuantileMetrics++;
  if (buildCounterOutputQuantileMetrics < 3) {
    checkQuantiles(o.bytesWritten!);
    checkQuantiles(o.recordsWritten!);
  }
  buildCounterOutputQuantileMetrics--;
}

core.int buildCounterParameterValidation = 0;
api.ParameterValidation buildParameterValidation() {
  final o = api.ParameterValidation();
  buildCounterParameterValidation++;
  if (buildCounterParameterValidation < 3) {
    o.regex = buildRegexValidation();
    o.values = buildValueValidation();
  }
  buildCounterParameterValidation--;
  return o;
}

void checkParameterValidation(api.ParameterValidation o) {
  buildCounterParameterValidation++;
  if (buildCounterParameterValidation < 3) {
    checkRegexValidation(o.regex!);
    checkValueValidation(o.values!);
  }
  buildCounterParameterValidation--;
}

core.int buildCounterPeripheralsConfig = 0;
api.PeripheralsConfig buildPeripheralsConfig() {
  final o = api.PeripheralsConfig();
  buildCounterPeripheralsConfig++;
  if (buildCounterPeripheralsConfig < 3) {
    o.metastoreService = 'foo';
    o.sparkHistoryServerConfig = buildSparkHistoryServerConfig();
  }
  buildCounterPeripheralsConfig--;
  return o;
}

void checkPeripheralsConfig(api.PeripheralsConfig o) {
  buildCounterPeripheralsConfig++;
  if (buildCounterPeripheralsConfig < 3) {
    unittest.expect(o.metastoreService!, unittest.equals('foo'));
    checkSparkHistoryServerConfig(o.sparkHistoryServerConfig!);
  }
  buildCounterPeripheralsConfig--;
}

core.List<core.String> buildUnnamed103() => ['foo', 'foo'];

void checkUnnamed103(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
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

core.Map<core.String, core.String> buildUnnamed105() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed105(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterPigJob = 0;
api.PigJob buildPigJob() {
  final o = api.PigJob();
  buildCounterPigJob++;
  if (buildCounterPigJob < 3) {
    o.continueOnFailure = true;
    o.jarFileUris = buildUnnamed103();
    o.loggingConfig = buildLoggingConfig();
    o.properties = buildUnnamed104();
    o.queryFileUri = 'foo';
    o.queryList = buildQueryList();
    o.scriptVariables = buildUnnamed105();
  }
  buildCounterPigJob--;
  return o;
}

void checkPigJob(api.PigJob o) {
  buildCounterPigJob++;
  if (buildCounterPigJob < 3) {
    unittest.expect(o.continueOnFailure!, unittest.isTrue);
    checkUnnamed103(o.jarFileUris!);
    checkLoggingConfig(o.loggingConfig!);
    checkUnnamed104(o.properties!);
    unittest.expect(o.queryFileUri!, unittest.equals('foo'));
    checkQueryList(o.queryList!);
    checkUnnamed105(o.scriptVariables!);
  }
  buildCounterPigJob--;
}

core.List<api.Binding> buildUnnamed106() => [buildBinding(), buildBinding()];

void checkUnnamed106(core.List<api.Binding> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkBinding(o[0]);
  checkBinding(o[1]);
}

core.int buildCounterPolicy = 0;
api.Policy buildPolicy() {
  final o = api.Policy();
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    o.bindings = buildUnnamed106();
    o.etag = 'foo';
    o.version = 42;
  }
  buildCounterPolicy--;
  return o;
}

void checkPolicy(api.Policy o) {
  buildCounterPolicy++;
  if (buildCounterPolicy < 3) {
    checkUnnamed106(o.bindings!);
    unittest.expect(o.etag!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterPolicy--;
}

core.List<core.String> buildUnnamed107() => ['foo', 'foo'];

void checkUnnamed107(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPoolData = 0;
api.PoolData buildPoolData() {
  final o = api.PoolData();
  buildCounterPoolData++;
  if (buildCounterPoolData < 3) {
    o.name = 'foo';
    o.stageIds = buildUnnamed107();
  }
  buildCounterPoolData--;
  return o;
}

void checkPoolData(api.PoolData o) {
  buildCounterPoolData++;
  if (buildCounterPoolData < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed107(o.stageIds!);
  }
  buildCounterPoolData--;
}

core.List<core.String> buildUnnamed108() => ['foo', 'foo'];

void checkUnnamed108(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed109() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed109(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterPrestoJob = 0;
api.PrestoJob buildPrestoJob() {
  final o = api.PrestoJob();
  buildCounterPrestoJob++;
  if (buildCounterPrestoJob < 3) {
    o.clientTags = buildUnnamed108();
    o.continueOnFailure = true;
    o.loggingConfig = buildLoggingConfig();
    o.outputFormat = 'foo';
    o.properties = buildUnnamed109();
    o.queryFileUri = 'foo';
    o.queryList = buildQueryList();
  }
  buildCounterPrestoJob--;
  return o;
}

void checkPrestoJob(api.PrestoJob o) {
  buildCounterPrestoJob++;
  if (buildCounterPrestoJob < 3) {
    checkUnnamed108(o.clientTags!);
    unittest.expect(o.continueOnFailure!, unittest.isTrue);
    checkLoggingConfig(o.loggingConfig!);
    unittest.expect(o.outputFormat!, unittest.equals('foo'));
    checkUnnamed109(o.properties!);
    unittest.expect(o.queryFileUri!, unittest.equals('foo'));
    checkQueryList(o.queryList!);
  }
  buildCounterPrestoJob--;
}

core.Map<core.String, core.String> buildUnnamed110() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed110(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterProcessSummary = 0;
api.ProcessSummary buildProcessSummary() {
  final o = api.ProcessSummary();
  buildCounterProcessSummary++;
  if (buildCounterProcessSummary < 3) {
    o.addTime = 'foo';
    o.hostPort = 'foo';
    o.isActive = true;
    o.processId = 'foo';
    o.processLogs = buildUnnamed110();
    o.removeTime = 'foo';
    o.totalCores = 42;
  }
  buildCounterProcessSummary--;
  return o;
}

void checkProcessSummary(api.ProcessSummary o) {
  buildCounterProcessSummary++;
  if (buildCounterProcessSummary < 3) {
    unittest.expect(o.addTime!, unittest.equals('foo'));
    unittest.expect(o.hostPort!, unittest.equals('foo'));
    unittest.expect(o.isActive!, unittest.isTrue);
    unittest.expect(o.processId!, unittest.equals('foo'));
    checkUnnamed110(o.processLogs!);
    unittest.expect(o.removeTime!, unittest.equals('foo'));
    unittest.expect(o.totalCores!, unittest.equals(42));
  }
  buildCounterProcessSummary--;
}

core.int buildCounterProvisioningModelMix = 0;
api.ProvisioningModelMix buildProvisioningModelMix() {
  final o = api.ProvisioningModelMix();
  buildCounterProvisioningModelMix++;
  if (buildCounterProvisioningModelMix < 3) {
    o.standardCapacityBase = 42;
    o.standardCapacityPercentAboveBase = 42;
  }
  buildCounterProvisioningModelMix--;
  return o;
}

void checkProvisioningModelMix(api.ProvisioningModelMix o) {
  buildCounterProvisioningModelMix++;
  if (buildCounterProvisioningModelMix < 3) {
    unittest.expect(o.standardCapacityBase!, unittest.equals(42));
    unittest.expect(o.standardCapacityPercentAboveBase!, unittest.equals(42));
  }
  buildCounterProvisioningModelMix--;
}

core.int buildCounterPyPiRepositoryConfig = 0;
api.PyPiRepositoryConfig buildPyPiRepositoryConfig() {
  final o = api.PyPiRepositoryConfig();
  buildCounterPyPiRepositoryConfig++;
  if (buildCounterPyPiRepositoryConfig < 3) {
    o.pypiRepository = 'foo';
  }
  buildCounterPyPiRepositoryConfig--;
  return o;
}

void checkPyPiRepositoryConfig(api.PyPiRepositoryConfig o) {
  buildCounterPyPiRepositoryConfig++;
  if (buildCounterPyPiRepositoryConfig < 3) {
    unittest.expect(o.pypiRepository!, unittest.equals('foo'));
  }
  buildCounterPyPiRepositoryConfig--;
}

core.List<core.String> buildUnnamed111() => ['foo', 'foo'];

void checkUnnamed111(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed112() => ['foo', 'foo'];

void checkUnnamed112(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed113() => ['foo', 'foo'];

void checkUnnamed113(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed114() => ['foo', 'foo'];

void checkUnnamed114(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed115() => ['foo', 'foo'];

void checkUnnamed115(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPySparkBatch = 0;
api.PySparkBatch buildPySparkBatch() {
  final o = api.PySparkBatch();
  buildCounterPySparkBatch++;
  if (buildCounterPySparkBatch < 3) {
    o.archiveUris = buildUnnamed111();
    o.args = buildUnnamed112();
    o.fileUris = buildUnnamed113();
    o.jarFileUris = buildUnnamed114();
    o.mainPythonFileUri = 'foo';
    o.pythonFileUris = buildUnnamed115();
  }
  buildCounterPySparkBatch--;
  return o;
}

void checkPySparkBatch(api.PySparkBatch o) {
  buildCounterPySparkBatch++;
  if (buildCounterPySparkBatch < 3) {
    checkUnnamed111(o.archiveUris!);
    checkUnnamed112(o.args!);
    checkUnnamed113(o.fileUris!);
    checkUnnamed114(o.jarFileUris!);
    unittest.expect(o.mainPythonFileUri!, unittest.equals('foo'));
    checkUnnamed115(o.pythonFileUris!);
  }
  buildCounterPySparkBatch--;
}

core.List<core.String> buildUnnamed116() => ['foo', 'foo'];

void checkUnnamed116(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed117() => ['foo', 'foo'];

void checkUnnamed117(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed118() => ['foo', 'foo'];

void checkUnnamed118(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed119() => ['foo', 'foo'];

void checkUnnamed119(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed120() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed120(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed121() => ['foo', 'foo'];

void checkUnnamed121(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterPySparkJob = 0;
api.PySparkJob buildPySparkJob() {
  final o = api.PySparkJob();
  buildCounterPySparkJob++;
  if (buildCounterPySparkJob < 3) {
    o.archiveUris = buildUnnamed116();
    o.args = buildUnnamed117();
    o.fileUris = buildUnnamed118();
    o.jarFileUris = buildUnnamed119();
    o.loggingConfig = buildLoggingConfig();
    o.mainPythonFileUri = 'foo';
    o.properties = buildUnnamed120();
    o.pythonFileUris = buildUnnamed121();
  }
  buildCounterPySparkJob--;
  return o;
}

void checkPySparkJob(api.PySparkJob o) {
  buildCounterPySparkJob++;
  if (buildCounterPySparkJob < 3) {
    checkUnnamed116(o.archiveUris!);
    checkUnnamed117(o.args!);
    checkUnnamed118(o.fileUris!);
    checkUnnamed119(o.jarFileUris!);
    checkLoggingConfig(o.loggingConfig!);
    unittest.expect(o.mainPythonFileUri!, unittest.equals('foo'));
    checkUnnamed120(o.properties!);
    checkUnnamed121(o.pythonFileUris!);
  }
  buildCounterPySparkJob--;
}

core.int buildCounterQuantiles = 0;
api.Quantiles buildQuantiles() {
  final o = api.Quantiles();
  buildCounterQuantiles++;
  if (buildCounterQuantiles < 3) {
    o.count = 'foo';
    o.maximum = 'foo';
    o.minimum = 'foo';
    o.percentile25 = 'foo';
    o.percentile50 = 'foo';
    o.percentile75 = 'foo';
    o.sum = 'foo';
  }
  buildCounterQuantiles--;
  return o;
}

void checkQuantiles(api.Quantiles o) {
  buildCounterQuantiles++;
  if (buildCounterQuantiles < 3) {
    unittest.expect(o.count!, unittest.equals('foo'));
    unittest.expect(o.maximum!, unittest.equals('foo'));
    unittest.expect(o.minimum!, unittest.equals('foo'));
    unittest.expect(o.percentile25!, unittest.equals('foo'));
    unittest.expect(o.percentile50!, unittest.equals('foo'));
    unittest.expect(o.percentile75!, unittest.equals('foo'));
    unittest.expect(o.sum!, unittest.equals('foo'));
  }
  buildCounterQuantiles--;
}

core.List<core.String> buildUnnamed122() => ['foo', 'foo'];

void checkUnnamed122(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterQueryList = 0;
api.QueryList buildQueryList() {
  final o = api.QueryList();
  buildCounterQueryList++;
  if (buildCounterQueryList < 3) {
    o.queries = buildUnnamed122();
  }
  buildCounterQueryList--;
  return o;
}

void checkQueryList(api.QueryList o) {
  buildCounterQueryList++;
  if (buildCounterQueryList < 3) {
    checkUnnamed122(o.queries!);
  }
  buildCounterQueryList--;
}

core.int buildCounterRddDataDistribution = 0;
api.RddDataDistribution buildRddDataDistribution() {
  final o = api.RddDataDistribution();
  buildCounterRddDataDistribution++;
  if (buildCounterRddDataDistribution < 3) {
    o.address = 'foo';
    o.diskUsed = 'foo';
    o.memoryRemaining = 'foo';
    o.memoryUsed = 'foo';
    o.offHeapMemoryRemaining = 'foo';
    o.offHeapMemoryUsed = 'foo';
    o.onHeapMemoryRemaining = 'foo';
    o.onHeapMemoryUsed = 'foo';
  }
  buildCounterRddDataDistribution--;
  return o;
}

void checkRddDataDistribution(api.RddDataDistribution o) {
  buildCounterRddDataDistribution++;
  if (buildCounterRddDataDistribution < 3) {
    unittest.expect(o.address!, unittest.equals('foo'));
    unittest.expect(o.diskUsed!, unittest.equals('foo'));
    unittest.expect(o.memoryRemaining!, unittest.equals('foo'));
    unittest.expect(o.memoryUsed!, unittest.equals('foo'));
    unittest.expect(o.offHeapMemoryRemaining!, unittest.equals('foo'));
    unittest.expect(o.offHeapMemoryUsed!, unittest.equals('foo'));
    unittest.expect(o.onHeapMemoryRemaining!, unittest.equals('foo'));
    unittest.expect(o.onHeapMemoryUsed!, unittest.equals('foo'));
  }
  buildCounterRddDataDistribution--;
}

core.List<api.RddOperationCluster> buildUnnamed123() => [
      buildRddOperationCluster(),
      buildRddOperationCluster(),
    ];

void checkUnnamed123(core.List<api.RddOperationCluster> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRddOperationCluster(o[0]);
  checkRddOperationCluster(o[1]);
}

core.List<api.RddOperationNode> buildUnnamed124() => [
      buildRddOperationNode(),
      buildRddOperationNode(),
    ];

void checkUnnamed124(core.List<api.RddOperationNode> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRddOperationNode(o[0]);
  checkRddOperationNode(o[1]);
}

core.int buildCounterRddOperationCluster = 0;
api.RddOperationCluster buildRddOperationCluster() {
  final o = api.RddOperationCluster();
  buildCounterRddOperationCluster++;
  if (buildCounterRddOperationCluster < 3) {
    o.childClusters = buildUnnamed123();
    o.childNodes = buildUnnamed124();
    o.name = 'foo';
    o.rddClusterId = 'foo';
  }
  buildCounterRddOperationCluster--;
  return o;
}

void checkRddOperationCluster(api.RddOperationCluster o) {
  buildCounterRddOperationCluster++;
  if (buildCounterRddOperationCluster < 3) {
    checkUnnamed123(o.childClusters!);
    checkUnnamed124(o.childNodes!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.rddClusterId!, unittest.equals('foo'));
  }
  buildCounterRddOperationCluster--;
}

core.int buildCounterRddOperationEdge = 0;
api.RddOperationEdge buildRddOperationEdge() {
  final o = api.RddOperationEdge();
  buildCounterRddOperationEdge++;
  if (buildCounterRddOperationEdge < 3) {
    o.fromId = 42;
    o.toId = 42;
  }
  buildCounterRddOperationEdge--;
  return o;
}

void checkRddOperationEdge(api.RddOperationEdge o) {
  buildCounterRddOperationEdge++;
  if (buildCounterRddOperationEdge < 3) {
    unittest.expect(o.fromId!, unittest.equals(42));
    unittest.expect(o.toId!, unittest.equals(42));
  }
  buildCounterRddOperationEdge--;
}

core.List<api.RddOperationEdge> buildUnnamed125() => [
      buildRddOperationEdge(),
      buildRddOperationEdge(),
    ];

void checkUnnamed125(core.List<api.RddOperationEdge> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRddOperationEdge(o[0]);
  checkRddOperationEdge(o[1]);
}

core.List<api.RddOperationEdge> buildUnnamed126() => [
      buildRddOperationEdge(),
      buildRddOperationEdge(),
    ];

void checkUnnamed126(core.List<api.RddOperationEdge> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRddOperationEdge(o[0]);
  checkRddOperationEdge(o[1]);
}

core.List<api.RddOperationEdge> buildUnnamed127() => [
      buildRddOperationEdge(),
      buildRddOperationEdge(),
    ];

void checkUnnamed127(core.List<api.RddOperationEdge> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRddOperationEdge(o[0]);
  checkRddOperationEdge(o[1]);
}

core.int buildCounterRddOperationGraph = 0;
api.RddOperationGraph buildRddOperationGraph() {
  final o = api.RddOperationGraph();
  buildCounterRddOperationGraph++;
  if (buildCounterRddOperationGraph < 3) {
    o.edges = buildUnnamed125();
    o.incomingEdges = buildUnnamed126();
    o.outgoingEdges = buildUnnamed127();
    o.rootCluster = buildRddOperationCluster();
    o.stageId = 'foo';
  }
  buildCounterRddOperationGraph--;
  return o;
}

void checkRddOperationGraph(api.RddOperationGraph o) {
  buildCounterRddOperationGraph++;
  if (buildCounterRddOperationGraph < 3) {
    checkUnnamed125(o.edges!);
    checkUnnamed126(o.incomingEdges!);
    checkUnnamed127(o.outgoingEdges!);
    checkRddOperationCluster(o.rootCluster!);
    unittest.expect(o.stageId!, unittest.equals('foo'));
  }
  buildCounterRddOperationGraph--;
}

core.int buildCounterRddOperationNode = 0;
api.RddOperationNode buildRddOperationNode() {
  final o = api.RddOperationNode();
  buildCounterRddOperationNode++;
  if (buildCounterRddOperationNode < 3) {
    o.barrier = true;
    o.cached = true;
    o.callsite = 'foo';
    o.name = 'foo';
    o.nodeId = 42;
    o.outputDeterministicLevel = 'foo';
  }
  buildCounterRddOperationNode--;
  return o;
}

void checkRddOperationNode(api.RddOperationNode o) {
  buildCounterRddOperationNode++;
  if (buildCounterRddOperationNode < 3) {
    unittest.expect(o.barrier!, unittest.isTrue);
    unittest.expect(o.cached!, unittest.isTrue);
    unittest.expect(o.callsite!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.nodeId!, unittest.equals(42));
    unittest.expect(o.outputDeterministicLevel!, unittest.equals('foo'));
  }
  buildCounterRddOperationNode--;
}

core.List<core.String> buildUnnamed128() => ['foo', 'foo'];

void checkUnnamed128(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRddPartitionInfo = 0;
api.RddPartitionInfo buildRddPartitionInfo() {
  final o = api.RddPartitionInfo();
  buildCounterRddPartitionInfo++;
  if (buildCounterRddPartitionInfo < 3) {
    o.blockName = 'foo';
    o.diskUsed = 'foo';
    o.executors = buildUnnamed128();
    o.memoryUsed = 'foo';
    o.storageLevel = 'foo';
  }
  buildCounterRddPartitionInfo--;
  return o;
}

void checkRddPartitionInfo(api.RddPartitionInfo o) {
  buildCounterRddPartitionInfo++;
  if (buildCounterRddPartitionInfo < 3) {
    unittest.expect(o.blockName!, unittest.equals('foo'));
    unittest.expect(o.diskUsed!, unittest.equals('foo'));
    checkUnnamed128(o.executors!);
    unittest.expect(o.memoryUsed!, unittest.equals('foo'));
    unittest.expect(o.storageLevel!, unittest.equals('foo'));
  }
  buildCounterRddPartitionInfo--;
}

core.List<api.RddDataDistribution> buildUnnamed129() => [
      buildRddDataDistribution(),
      buildRddDataDistribution(),
    ];

void checkUnnamed129(core.List<api.RddDataDistribution> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRddDataDistribution(o[0]);
  checkRddDataDistribution(o[1]);
}

core.List<api.RddPartitionInfo> buildUnnamed130() => [
      buildRddPartitionInfo(),
      buildRddPartitionInfo(),
    ];

void checkUnnamed130(core.List<api.RddPartitionInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkRddPartitionInfo(o[0]);
  checkRddPartitionInfo(o[1]);
}

core.int buildCounterRddStorageInfo = 0;
api.RddStorageInfo buildRddStorageInfo() {
  final o = api.RddStorageInfo();
  buildCounterRddStorageInfo++;
  if (buildCounterRddStorageInfo < 3) {
    o.dataDistribution = buildUnnamed129();
    o.diskUsed = 'foo';
    o.memoryUsed = 'foo';
    o.name = 'foo';
    o.numCachedPartitions = 42;
    o.numPartitions = 42;
    o.partitions = buildUnnamed130();
    o.rddStorageId = 42;
    o.storageLevel = 'foo';
  }
  buildCounterRddStorageInfo--;
  return o;
}

void checkRddStorageInfo(api.RddStorageInfo o) {
  buildCounterRddStorageInfo++;
  if (buildCounterRddStorageInfo < 3) {
    checkUnnamed129(o.dataDistribution!);
    unittest.expect(o.diskUsed!, unittest.equals('foo'));
    unittest.expect(o.memoryUsed!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.numCachedPartitions!, unittest.equals(42));
    unittest.expect(o.numPartitions!, unittest.equals(42));
    checkUnnamed130(o.partitions!);
    unittest.expect(o.rddStorageId!, unittest.equals(42));
    unittest.expect(o.storageLevel!, unittest.equals('foo'));
  }
  buildCounterRddStorageInfo--;
}

core.List<core.String> buildUnnamed131() => ['foo', 'foo'];

void checkUnnamed131(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRegexValidation = 0;
api.RegexValidation buildRegexValidation() {
  final o = api.RegexValidation();
  buildCounterRegexValidation++;
  if (buildCounterRegexValidation < 3) {
    o.regexes = buildUnnamed131();
  }
  buildCounterRegexValidation--;
  return o;
}

void checkRegexValidation(api.RegexValidation o) {
  buildCounterRegexValidation++;
  if (buildCounterRegexValidation < 3) {
    checkUnnamed131(o.regexes!);
  }
  buildCounterRegexValidation--;
}

core.List<api.NodePool> buildUnnamed132() => [buildNodePool(), buildNodePool()];

void checkUnnamed132(core.List<api.NodePool> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkNodePool(o[0]);
  checkNodePool(o[1]);
}

core.int buildCounterRepairClusterRequest = 0;
api.RepairClusterRequest buildRepairClusterRequest() {
  final o = api.RepairClusterRequest();
  buildCounterRepairClusterRequest++;
  if (buildCounterRepairClusterRequest < 3) {
    o.cluster = buildClusterToRepair();
    o.clusterUuid = 'foo';
    o.gracefulDecommissionTimeout = 'foo';
    o.nodePools = buildUnnamed132();
    o.parentOperationId = 'foo';
    o.requestId = 'foo';
  }
  buildCounterRepairClusterRequest--;
  return o;
}

void checkRepairClusterRequest(api.RepairClusterRequest o) {
  buildCounterRepairClusterRequest++;
  if (buildCounterRepairClusterRequest < 3) {
    checkClusterToRepair(o.cluster!);
    unittest.expect(o.clusterUuid!, unittest.equals('foo'));
    unittest.expect(o.gracefulDecommissionTimeout!, unittest.equals('foo'));
    checkUnnamed132(o.nodePools!);
    unittest.expect(o.parentOperationId!, unittest.equals('foo'));
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterRepairClusterRequest--;
}

core.List<core.String> buildUnnamed133() => ['foo', 'foo'];

void checkUnnamed133(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterRepairNodeGroupRequest = 0;
api.RepairNodeGroupRequest buildRepairNodeGroupRequest() {
  final o = api.RepairNodeGroupRequest();
  buildCounterRepairNodeGroupRequest++;
  if (buildCounterRepairNodeGroupRequest < 3) {
    o.instanceNames = buildUnnamed133();
    o.repairAction = 'foo';
    o.requestId = 'foo';
  }
  buildCounterRepairNodeGroupRequest--;
  return o;
}

void checkRepairNodeGroupRequest(api.RepairNodeGroupRequest o) {
  buildCounterRepairNodeGroupRequest++;
  if (buildCounterRepairNodeGroupRequest < 3) {
    checkUnnamed133(o.instanceNames!);
    unittest.expect(o.repairAction!, unittest.equals('foo'));
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterRepairNodeGroupRequest--;
}

core.int buildCounterRepositoryConfig = 0;
api.RepositoryConfig buildRepositoryConfig() {
  final o = api.RepositoryConfig();
  buildCounterRepositoryConfig++;
  if (buildCounterRepositoryConfig < 3) {
    o.pypiRepositoryConfig = buildPyPiRepositoryConfig();
  }
  buildCounterRepositoryConfig--;
  return o;
}

void checkRepositoryConfig(api.RepositoryConfig o) {
  buildCounterRepositoryConfig++;
  if (buildCounterRepositoryConfig < 3) {
    checkPyPiRepositoryConfig(o.pypiRepositoryConfig!);
  }
  buildCounterRepositoryConfig--;
}

core.List<core.String> buildUnnamed134() => ['foo', 'foo'];

void checkUnnamed134(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterReservationAffinity = 0;
api.ReservationAffinity buildReservationAffinity() {
  final o = api.ReservationAffinity();
  buildCounterReservationAffinity++;
  if (buildCounterReservationAffinity < 3) {
    o.consumeReservationType = 'foo';
    o.key = 'foo';
    o.values = buildUnnamed134();
  }
  buildCounterReservationAffinity--;
  return o;
}

void checkReservationAffinity(api.ReservationAffinity o) {
  buildCounterReservationAffinity++;
  if (buildCounterReservationAffinity < 3) {
    unittest.expect(o.consumeReservationType!, unittest.equals('foo'));
    unittest.expect(o.key!, unittest.equals('foo'));
    checkUnnamed134(o.values!);
  }
  buildCounterReservationAffinity--;
}

core.int buildCounterResizeNodeGroupRequest = 0;
api.ResizeNodeGroupRequest buildResizeNodeGroupRequest() {
  final o = api.ResizeNodeGroupRequest();
  buildCounterResizeNodeGroupRequest++;
  if (buildCounterResizeNodeGroupRequest < 3) {
    o.gracefulDecommissionTimeout = 'foo';
    o.parentOperationId = 'foo';
    o.requestId = 'foo';
    o.size = 42;
  }
  buildCounterResizeNodeGroupRequest--;
  return o;
}

void checkResizeNodeGroupRequest(api.ResizeNodeGroupRequest o) {
  buildCounterResizeNodeGroupRequest++;
  if (buildCounterResizeNodeGroupRequest < 3) {
    unittest.expect(o.gracefulDecommissionTimeout!, unittest.equals('foo'));
    unittest.expect(o.parentOperationId!, unittest.equals('foo'));
    unittest.expect(o.requestId!, unittest.equals('foo'));
    unittest.expect(o.size!, unittest.equals(42));
  }
  buildCounterResizeNodeGroupRequest--;
}

core.List<core.String> buildUnnamed135() => ['foo', 'foo'];

void checkUnnamed135(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterResourceInformation = 0;
api.ResourceInformation buildResourceInformation() {
  final o = api.ResourceInformation();
  buildCounterResourceInformation++;
  if (buildCounterResourceInformation < 3) {
    o.addresses = buildUnnamed135();
    o.name = 'foo';
  }
  buildCounterResourceInformation--;
  return o;
}

void checkResourceInformation(api.ResourceInformation o) {
  buildCounterResourceInformation++;
  if (buildCounterResourceInformation < 3) {
    checkUnnamed135(o.addresses!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterResourceInformation--;
}

core.Map<core.String, api.ExecutorResourceRequest> buildUnnamed136() => {
      'x': buildExecutorResourceRequest(),
      'y': buildExecutorResourceRequest(),
    };

void checkUnnamed136(core.Map<core.String, api.ExecutorResourceRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecutorResourceRequest(o['x']!);
  checkExecutorResourceRequest(o['y']!);
}

core.Map<core.String, api.TaskResourceRequest> buildUnnamed137() => {
      'x': buildTaskResourceRequest(),
      'y': buildTaskResourceRequest(),
    };

void checkUnnamed137(core.Map<core.String, api.TaskResourceRequest> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTaskResourceRequest(o['x']!);
  checkTaskResourceRequest(o['y']!);
}

core.int buildCounterResourceProfileInfo = 0;
api.ResourceProfileInfo buildResourceProfileInfo() {
  final o = api.ResourceProfileInfo();
  buildCounterResourceProfileInfo++;
  if (buildCounterResourceProfileInfo < 3) {
    o.executorResources = buildUnnamed136();
    o.resourceProfileId = 42;
    o.taskResources = buildUnnamed137();
  }
  buildCounterResourceProfileInfo--;
  return o;
}

void checkResourceProfileInfo(api.ResourceProfileInfo o) {
  buildCounterResourceProfileInfo++;
  if (buildCounterResourceProfileInfo < 3) {
    checkUnnamed136(o.executorResources!);
    unittest.expect(o.resourceProfileId!, unittest.equals(42));
    checkUnnamed137(o.taskResources!);
  }
  buildCounterResourceProfileInfo--;
}

core.Map<core.String, core.String> buildUnnamed138() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed138(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterRuntimeConfig = 0;
api.RuntimeConfig buildRuntimeConfig() {
  final o = api.RuntimeConfig();
  buildCounterRuntimeConfig++;
  if (buildCounterRuntimeConfig < 3) {
    o.autotuningConfig = buildAutotuningConfig();
    o.cohort = 'foo';
    o.containerImage = 'foo';
    o.properties = buildUnnamed138();
    o.repositoryConfig = buildRepositoryConfig();
    o.version = 'foo';
  }
  buildCounterRuntimeConfig--;
  return o;
}

void checkRuntimeConfig(api.RuntimeConfig o) {
  buildCounterRuntimeConfig++;
  if (buildCounterRuntimeConfig < 3) {
    checkAutotuningConfig(o.autotuningConfig!);
    unittest.expect(o.cohort!, unittest.equals('foo'));
    unittest.expect(o.containerImage!, unittest.equals('foo'));
    checkUnnamed138(o.properties!);
    checkRepositoryConfig(o.repositoryConfig!);
    unittest.expect(o.version!, unittest.equals('foo'));
  }
  buildCounterRuntimeConfig--;
}

core.Map<core.String, core.String> buildUnnamed139() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed139(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterRuntimeInfo = 0;
api.RuntimeInfo buildRuntimeInfo() {
  final o = api.RuntimeInfo();
  buildCounterRuntimeInfo++;
  if (buildCounterRuntimeInfo < 3) {
    o.approximateUsage = buildUsageMetrics();
    o.currentUsage = buildUsageSnapshot();
    o.diagnosticOutputUri = 'foo';
    o.endpoints = buildUnnamed139();
    o.outputUri = 'foo';
  }
  buildCounterRuntimeInfo--;
  return o;
}

void checkRuntimeInfo(api.RuntimeInfo o) {
  buildCounterRuntimeInfo++;
  if (buildCounterRuntimeInfo < 3) {
    checkUsageMetrics(o.approximateUsage!);
    checkUsageSnapshot(o.currentUsage!);
    unittest.expect(o.diagnosticOutputUri!, unittest.equals('foo'));
    checkUnnamed139(o.endpoints!);
    unittest.expect(o.outputUri!, unittest.equals('foo'));
  }
  buildCounterRuntimeInfo--;
}

core.List<api.ExecutorStageSummary> buildUnnamed140() => [
      buildExecutorStageSummary(),
      buildExecutorStageSummary(),
    ];

void checkUnnamed140(core.List<api.ExecutorStageSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecutorStageSummary(o[0]);
  checkExecutorStageSummary(o[1]);
}

core.int buildCounterSearchSessionSparkApplicationExecutorStageSummaryResponse =
    0;
api.SearchSessionSparkApplicationExecutorStageSummaryResponse
    buildSearchSessionSparkApplicationExecutorStageSummaryResponse() {
  final o = api.SearchSessionSparkApplicationExecutorStageSummaryResponse();
  buildCounterSearchSessionSparkApplicationExecutorStageSummaryResponse++;
  if (buildCounterSearchSessionSparkApplicationExecutorStageSummaryResponse <
      3) {
    o.nextPageToken = 'foo';
    o.sparkApplicationStageExecutors = buildUnnamed140();
  }
  buildCounterSearchSessionSparkApplicationExecutorStageSummaryResponse--;
  return o;
}

void checkSearchSessionSparkApplicationExecutorStageSummaryResponse(
  api.SearchSessionSparkApplicationExecutorStageSummaryResponse o,
) {
  buildCounterSearchSessionSparkApplicationExecutorStageSummaryResponse++;
  if (buildCounterSearchSessionSparkApplicationExecutorStageSummaryResponse <
      3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed140(o.sparkApplicationStageExecutors!);
  }
  buildCounterSearchSessionSparkApplicationExecutorStageSummaryResponse--;
}

core.List<api.ExecutorSummary> buildUnnamed141() => [
      buildExecutorSummary(),
      buildExecutorSummary(),
    ];

void checkUnnamed141(core.List<api.ExecutorSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecutorSummary(o[0]);
  checkExecutorSummary(o[1]);
}

core.int buildCounterSearchSessionSparkApplicationExecutorsResponse = 0;
api.SearchSessionSparkApplicationExecutorsResponse
    buildSearchSessionSparkApplicationExecutorsResponse() {
  final o = api.SearchSessionSparkApplicationExecutorsResponse();
  buildCounterSearchSessionSparkApplicationExecutorsResponse++;
  if (buildCounterSearchSessionSparkApplicationExecutorsResponse < 3) {
    o.nextPageToken = 'foo';
    o.sparkApplicationExecutors = buildUnnamed141();
  }
  buildCounterSearchSessionSparkApplicationExecutorsResponse--;
  return o;
}

void checkSearchSessionSparkApplicationExecutorsResponse(
  api.SearchSessionSparkApplicationExecutorsResponse o,
) {
  buildCounterSearchSessionSparkApplicationExecutorsResponse++;
  if (buildCounterSearchSessionSparkApplicationExecutorsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed141(o.sparkApplicationExecutors!);
  }
  buildCounterSearchSessionSparkApplicationExecutorsResponse--;
}

core.List<api.JobData> buildUnnamed142() => [buildJobData(), buildJobData()];

void checkUnnamed142(core.List<api.JobData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobData(o[0]);
  checkJobData(o[1]);
}

core.int buildCounterSearchSessionSparkApplicationJobsResponse = 0;
api.SearchSessionSparkApplicationJobsResponse
    buildSearchSessionSparkApplicationJobsResponse() {
  final o = api.SearchSessionSparkApplicationJobsResponse();
  buildCounterSearchSessionSparkApplicationJobsResponse++;
  if (buildCounterSearchSessionSparkApplicationJobsResponse < 3) {
    o.nextPageToken = 'foo';
    o.sparkApplicationJobs = buildUnnamed142();
  }
  buildCounterSearchSessionSparkApplicationJobsResponse--;
  return o;
}

void checkSearchSessionSparkApplicationJobsResponse(
  api.SearchSessionSparkApplicationJobsResponse o,
) {
  buildCounterSearchSessionSparkApplicationJobsResponse++;
  if (buildCounterSearchSessionSparkApplicationJobsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed142(o.sparkApplicationJobs!);
  }
  buildCounterSearchSessionSparkApplicationJobsResponse--;
}

core.List<api.SqlExecutionUiData> buildUnnamed143() => [
      buildSqlExecutionUiData(),
      buildSqlExecutionUiData(),
    ];

void checkUnnamed143(core.List<api.SqlExecutionUiData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSqlExecutionUiData(o[0]);
  checkSqlExecutionUiData(o[1]);
}

core.int buildCounterSearchSessionSparkApplicationSqlQueriesResponse = 0;
api.SearchSessionSparkApplicationSqlQueriesResponse
    buildSearchSessionSparkApplicationSqlQueriesResponse() {
  final o = api.SearchSessionSparkApplicationSqlQueriesResponse();
  buildCounterSearchSessionSparkApplicationSqlQueriesResponse++;
  if (buildCounterSearchSessionSparkApplicationSqlQueriesResponse < 3) {
    o.nextPageToken = 'foo';
    o.sparkApplicationSqlQueries = buildUnnamed143();
  }
  buildCounterSearchSessionSparkApplicationSqlQueriesResponse--;
  return o;
}

void checkSearchSessionSparkApplicationSqlQueriesResponse(
  api.SearchSessionSparkApplicationSqlQueriesResponse o,
) {
  buildCounterSearchSessionSparkApplicationSqlQueriesResponse++;
  if (buildCounterSearchSessionSparkApplicationSqlQueriesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed143(o.sparkApplicationSqlQueries!);
  }
  buildCounterSearchSessionSparkApplicationSqlQueriesResponse--;
}

core.List<api.TaskData> buildUnnamed144() => [buildTaskData(), buildTaskData()];

void checkUnnamed144(core.List<api.TaskData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTaskData(o[0]);
  checkTaskData(o[1]);
}

core.int buildCounterSearchSessionSparkApplicationStageAttemptTasksResponse = 0;
api.SearchSessionSparkApplicationStageAttemptTasksResponse
    buildSearchSessionSparkApplicationStageAttemptTasksResponse() {
  final o = api.SearchSessionSparkApplicationStageAttemptTasksResponse();
  buildCounterSearchSessionSparkApplicationStageAttemptTasksResponse++;
  if (buildCounterSearchSessionSparkApplicationStageAttemptTasksResponse < 3) {
    o.nextPageToken = 'foo';
    o.sparkApplicationStageAttemptTasks = buildUnnamed144();
  }
  buildCounterSearchSessionSparkApplicationStageAttemptTasksResponse--;
  return o;
}

void checkSearchSessionSparkApplicationStageAttemptTasksResponse(
  api.SearchSessionSparkApplicationStageAttemptTasksResponse o,
) {
  buildCounterSearchSessionSparkApplicationStageAttemptTasksResponse++;
  if (buildCounterSearchSessionSparkApplicationStageAttemptTasksResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed144(o.sparkApplicationStageAttemptTasks!);
  }
  buildCounterSearchSessionSparkApplicationStageAttemptTasksResponse--;
}

core.List<api.StageData> buildUnnamed145() => [
      buildStageData(),
      buildStageData(),
    ];

void checkUnnamed145(core.List<api.StageData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStageData(o[0]);
  checkStageData(o[1]);
}

core.int buildCounterSearchSessionSparkApplicationStageAttemptsResponse = 0;
api.SearchSessionSparkApplicationStageAttemptsResponse
    buildSearchSessionSparkApplicationStageAttemptsResponse() {
  final o = api.SearchSessionSparkApplicationStageAttemptsResponse();
  buildCounterSearchSessionSparkApplicationStageAttemptsResponse++;
  if (buildCounterSearchSessionSparkApplicationStageAttemptsResponse < 3) {
    o.nextPageToken = 'foo';
    o.sparkApplicationStageAttempts = buildUnnamed145();
  }
  buildCounterSearchSessionSparkApplicationStageAttemptsResponse--;
  return o;
}

void checkSearchSessionSparkApplicationStageAttemptsResponse(
  api.SearchSessionSparkApplicationStageAttemptsResponse o,
) {
  buildCounterSearchSessionSparkApplicationStageAttemptsResponse++;
  if (buildCounterSearchSessionSparkApplicationStageAttemptsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed145(o.sparkApplicationStageAttempts!);
  }
  buildCounterSearchSessionSparkApplicationStageAttemptsResponse--;
}

core.List<api.StageData> buildUnnamed146() => [
      buildStageData(),
      buildStageData(),
    ];

void checkUnnamed146(core.List<api.StageData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStageData(o[0]);
  checkStageData(o[1]);
}

core.int buildCounterSearchSessionSparkApplicationStagesResponse = 0;
api.SearchSessionSparkApplicationStagesResponse
    buildSearchSessionSparkApplicationStagesResponse() {
  final o = api.SearchSessionSparkApplicationStagesResponse();
  buildCounterSearchSessionSparkApplicationStagesResponse++;
  if (buildCounterSearchSessionSparkApplicationStagesResponse < 3) {
    o.nextPageToken = 'foo';
    o.sparkApplicationStages = buildUnnamed146();
  }
  buildCounterSearchSessionSparkApplicationStagesResponse--;
  return o;
}

void checkSearchSessionSparkApplicationStagesResponse(
  api.SearchSessionSparkApplicationStagesResponse o,
) {
  buildCounterSearchSessionSparkApplicationStagesResponse++;
  if (buildCounterSearchSessionSparkApplicationStagesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed146(o.sparkApplicationStages!);
  }
  buildCounterSearchSessionSparkApplicationStagesResponse--;
}

core.List<api.SparkApplication> buildUnnamed147() => [
      buildSparkApplication(),
      buildSparkApplication(),
    ];

void checkUnnamed147(core.List<api.SparkApplication> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSparkApplication(o[0]);
  checkSparkApplication(o[1]);
}

core.int buildCounterSearchSessionSparkApplicationsResponse = 0;
api.SearchSessionSparkApplicationsResponse
    buildSearchSessionSparkApplicationsResponse() {
  final o = api.SearchSessionSparkApplicationsResponse();
  buildCounterSearchSessionSparkApplicationsResponse++;
  if (buildCounterSearchSessionSparkApplicationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.sparkApplications = buildUnnamed147();
  }
  buildCounterSearchSessionSparkApplicationsResponse--;
  return o;
}

void checkSearchSessionSparkApplicationsResponse(
  api.SearchSessionSparkApplicationsResponse o,
) {
  buildCounterSearchSessionSparkApplicationsResponse++;
  if (buildCounterSearchSessionSparkApplicationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed147(o.sparkApplications!);
  }
  buildCounterSearchSessionSparkApplicationsResponse--;
}

core.List<api.ExecutorStageSummary> buildUnnamed148() => [
      buildExecutorStageSummary(),
      buildExecutorStageSummary(),
    ];

void checkUnnamed148(core.List<api.ExecutorStageSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecutorStageSummary(o[0]);
  checkExecutorStageSummary(o[1]);
}

core.int buildCounterSearchSparkApplicationExecutorStageSummaryResponse = 0;
api.SearchSparkApplicationExecutorStageSummaryResponse
    buildSearchSparkApplicationExecutorStageSummaryResponse() {
  final o = api.SearchSparkApplicationExecutorStageSummaryResponse();
  buildCounterSearchSparkApplicationExecutorStageSummaryResponse++;
  if (buildCounterSearchSparkApplicationExecutorStageSummaryResponse < 3) {
    o.nextPageToken = 'foo';
    o.sparkApplicationStageExecutors = buildUnnamed148();
  }
  buildCounterSearchSparkApplicationExecutorStageSummaryResponse--;
  return o;
}

void checkSearchSparkApplicationExecutorStageSummaryResponse(
  api.SearchSparkApplicationExecutorStageSummaryResponse o,
) {
  buildCounterSearchSparkApplicationExecutorStageSummaryResponse++;
  if (buildCounterSearchSparkApplicationExecutorStageSummaryResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed148(o.sparkApplicationStageExecutors!);
  }
  buildCounterSearchSparkApplicationExecutorStageSummaryResponse--;
}

core.List<api.ExecutorSummary> buildUnnamed149() => [
      buildExecutorSummary(),
      buildExecutorSummary(),
    ];

void checkUnnamed149(core.List<api.ExecutorSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecutorSummary(o[0]);
  checkExecutorSummary(o[1]);
}

core.int buildCounterSearchSparkApplicationExecutorsResponse = 0;
api.SearchSparkApplicationExecutorsResponse
    buildSearchSparkApplicationExecutorsResponse() {
  final o = api.SearchSparkApplicationExecutorsResponse();
  buildCounterSearchSparkApplicationExecutorsResponse++;
  if (buildCounterSearchSparkApplicationExecutorsResponse < 3) {
    o.nextPageToken = 'foo';
    o.sparkApplicationExecutors = buildUnnamed149();
  }
  buildCounterSearchSparkApplicationExecutorsResponse--;
  return o;
}

void checkSearchSparkApplicationExecutorsResponse(
  api.SearchSparkApplicationExecutorsResponse o,
) {
  buildCounterSearchSparkApplicationExecutorsResponse++;
  if (buildCounterSearchSparkApplicationExecutorsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed149(o.sparkApplicationExecutors!);
  }
  buildCounterSearchSparkApplicationExecutorsResponse--;
}

core.List<api.JobData> buildUnnamed150() => [buildJobData(), buildJobData()];

void checkUnnamed150(core.List<api.JobData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkJobData(o[0]);
  checkJobData(o[1]);
}

core.int buildCounterSearchSparkApplicationJobsResponse = 0;
api.SearchSparkApplicationJobsResponse
    buildSearchSparkApplicationJobsResponse() {
  final o = api.SearchSparkApplicationJobsResponse();
  buildCounterSearchSparkApplicationJobsResponse++;
  if (buildCounterSearchSparkApplicationJobsResponse < 3) {
    o.nextPageToken = 'foo';
    o.sparkApplicationJobs = buildUnnamed150();
  }
  buildCounterSearchSparkApplicationJobsResponse--;
  return o;
}

void checkSearchSparkApplicationJobsResponse(
  api.SearchSparkApplicationJobsResponse o,
) {
  buildCounterSearchSparkApplicationJobsResponse++;
  if (buildCounterSearchSparkApplicationJobsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed150(o.sparkApplicationJobs!);
  }
  buildCounterSearchSparkApplicationJobsResponse--;
}

core.List<api.SqlExecutionUiData> buildUnnamed151() => [
      buildSqlExecutionUiData(),
      buildSqlExecutionUiData(),
    ];

void checkUnnamed151(core.List<api.SqlExecutionUiData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSqlExecutionUiData(o[0]);
  checkSqlExecutionUiData(o[1]);
}

core.int buildCounterSearchSparkApplicationSqlQueriesResponse = 0;
api.SearchSparkApplicationSqlQueriesResponse
    buildSearchSparkApplicationSqlQueriesResponse() {
  final o = api.SearchSparkApplicationSqlQueriesResponse();
  buildCounterSearchSparkApplicationSqlQueriesResponse++;
  if (buildCounterSearchSparkApplicationSqlQueriesResponse < 3) {
    o.nextPageToken = 'foo';
    o.sparkApplicationSqlQueries = buildUnnamed151();
  }
  buildCounterSearchSparkApplicationSqlQueriesResponse--;
  return o;
}

void checkSearchSparkApplicationSqlQueriesResponse(
  api.SearchSparkApplicationSqlQueriesResponse o,
) {
  buildCounterSearchSparkApplicationSqlQueriesResponse++;
  if (buildCounterSearchSparkApplicationSqlQueriesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed151(o.sparkApplicationSqlQueries!);
  }
  buildCounterSearchSparkApplicationSqlQueriesResponse--;
}

core.List<api.TaskData> buildUnnamed152() => [buildTaskData(), buildTaskData()];

void checkUnnamed152(core.List<api.TaskData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTaskData(o[0]);
  checkTaskData(o[1]);
}

core.int buildCounterSearchSparkApplicationStageAttemptTasksResponse = 0;
api.SearchSparkApplicationStageAttemptTasksResponse
    buildSearchSparkApplicationStageAttemptTasksResponse() {
  final o = api.SearchSparkApplicationStageAttemptTasksResponse();
  buildCounterSearchSparkApplicationStageAttemptTasksResponse++;
  if (buildCounterSearchSparkApplicationStageAttemptTasksResponse < 3) {
    o.nextPageToken = 'foo';
    o.sparkApplicationStageAttemptTasks = buildUnnamed152();
  }
  buildCounterSearchSparkApplicationStageAttemptTasksResponse--;
  return o;
}

void checkSearchSparkApplicationStageAttemptTasksResponse(
  api.SearchSparkApplicationStageAttemptTasksResponse o,
) {
  buildCounterSearchSparkApplicationStageAttemptTasksResponse++;
  if (buildCounterSearchSparkApplicationStageAttemptTasksResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed152(o.sparkApplicationStageAttemptTasks!);
  }
  buildCounterSearchSparkApplicationStageAttemptTasksResponse--;
}

core.List<api.StageData> buildUnnamed153() => [
      buildStageData(),
      buildStageData(),
    ];

void checkUnnamed153(core.List<api.StageData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStageData(o[0]);
  checkStageData(o[1]);
}

core.int buildCounterSearchSparkApplicationStageAttemptsResponse = 0;
api.SearchSparkApplicationStageAttemptsResponse
    buildSearchSparkApplicationStageAttemptsResponse() {
  final o = api.SearchSparkApplicationStageAttemptsResponse();
  buildCounterSearchSparkApplicationStageAttemptsResponse++;
  if (buildCounterSearchSparkApplicationStageAttemptsResponse < 3) {
    o.nextPageToken = 'foo';
    o.sparkApplicationStageAttempts = buildUnnamed153();
  }
  buildCounterSearchSparkApplicationStageAttemptsResponse--;
  return o;
}

void checkSearchSparkApplicationStageAttemptsResponse(
  api.SearchSparkApplicationStageAttemptsResponse o,
) {
  buildCounterSearchSparkApplicationStageAttemptsResponse++;
  if (buildCounterSearchSparkApplicationStageAttemptsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed153(o.sparkApplicationStageAttempts!);
  }
  buildCounterSearchSparkApplicationStageAttemptsResponse--;
}

core.List<api.StageData> buildUnnamed154() => [
      buildStageData(),
      buildStageData(),
    ];

void checkUnnamed154(core.List<api.StageData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStageData(o[0]);
  checkStageData(o[1]);
}

core.int buildCounterSearchSparkApplicationStagesResponse = 0;
api.SearchSparkApplicationStagesResponse
    buildSearchSparkApplicationStagesResponse() {
  final o = api.SearchSparkApplicationStagesResponse();
  buildCounterSearchSparkApplicationStagesResponse++;
  if (buildCounterSearchSparkApplicationStagesResponse < 3) {
    o.nextPageToken = 'foo';
    o.sparkApplicationStages = buildUnnamed154();
  }
  buildCounterSearchSparkApplicationStagesResponse--;
  return o;
}

void checkSearchSparkApplicationStagesResponse(
  api.SearchSparkApplicationStagesResponse o,
) {
  buildCounterSearchSparkApplicationStagesResponse++;
  if (buildCounterSearchSparkApplicationStagesResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed154(o.sparkApplicationStages!);
  }
  buildCounterSearchSparkApplicationStagesResponse--;
}

core.List<api.SparkApplication> buildUnnamed155() => [
      buildSparkApplication(),
      buildSparkApplication(),
    ];

void checkUnnamed155(core.List<api.SparkApplication> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSparkApplication(o[0]);
  checkSparkApplication(o[1]);
}

core.int buildCounterSearchSparkApplicationsResponse = 0;
api.SearchSparkApplicationsResponse buildSearchSparkApplicationsResponse() {
  final o = api.SearchSparkApplicationsResponse();
  buildCounterSearchSparkApplicationsResponse++;
  if (buildCounterSearchSparkApplicationsResponse < 3) {
    o.nextPageToken = 'foo';
    o.sparkApplications = buildUnnamed155();
  }
  buildCounterSearchSparkApplicationsResponse--;
  return o;
}

void checkSearchSparkApplicationsResponse(
  api.SearchSparkApplicationsResponse o,
) {
  buildCounterSearchSparkApplicationsResponse++;
  if (buildCounterSearchSparkApplicationsResponse < 3) {
    unittest.expect(o.nextPageToken!, unittest.equals('foo'));
    checkUnnamed155(o.sparkApplications!);
  }
  buildCounterSearchSparkApplicationsResponse--;
}

core.int buildCounterSecurityConfig = 0;
api.SecurityConfig buildSecurityConfig() {
  final o = api.SecurityConfig();
  buildCounterSecurityConfig++;
  if (buildCounterSecurityConfig < 3) {
    o.identityConfig = buildIdentityConfig();
    o.kerberosConfig = buildKerberosConfig();
  }
  buildCounterSecurityConfig--;
  return o;
}

void checkSecurityConfig(api.SecurityConfig o) {
  buildCounterSecurityConfig++;
  if (buildCounterSecurityConfig < 3) {
    checkIdentityConfig(o.identityConfig!);
    checkKerberosConfig(o.kerberosConfig!);
  }
  buildCounterSecurityConfig--;
}

core.Map<core.String, core.String> buildUnnamed156() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed156(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.SessionStateHistory> buildUnnamed157() => [
      buildSessionStateHistory(),
      buildSessionStateHistory(),
    ];

void checkUnnamed157(core.List<api.SessionStateHistory> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSessionStateHistory(o[0]);
  checkSessionStateHistory(o[1]);
}

core.int buildCounterSession = 0;
api.Session buildSession() {
  final o = api.Session();
  buildCounterSession++;
  if (buildCounterSession < 3) {
    o.createTime = 'foo';
    o.creator = 'foo';
    o.environmentConfig = buildEnvironmentConfig();
    o.jupyterSession = buildJupyterConfig();
    o.labels = buildUnnamed156();
    o.name = 'foo';
    o.runtimeConfig = buildRuntimeConfig();
    o.runtimeInfo = buildRuntimeInfo();
    o.sessionTemplate = 'foo';
    o.sparkConnectSession = buildSparkConnectConfig();
    o.state = 'foo';
    o.stateHistory = buildUnnamed157();
    o.stateMessage = 'foo';
    o.stateTime = 'foo';
    o.user = 'foo';
    o.uuid = 'foo';
  }
  buildCounterSession--;
  return o;
}

void checkSession(api.Session o) {
  buildCounterSession++;
  if (buildCounterSession < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.creator!, unittest.equals('foo'));
    checkEnvironmentConfig(o.environmentConfig!);
    checkJupyterConfig(o.jupyterSession!);
    checkUnnamed156(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkRuntimeConfig(o.runtimeConfig!);
    checkRuntimeInfo(o.runtimeInfo!);
    unittest.expect(o.sessionTemplate!, unittest.equals('foo'));
    checkSparkConnectConfig(o.sparkConnectSession!);
    unittest.expect(o.state!, unittest.equals('foo'));
    checkUnnamed157(o.stateHistory!);
    unittest.expect(o.stateMessage!, unittest.equals('foo'));
    unittest.expect(o.stateTime!, unittest.equals('foo'));
    unittest.expect(o.user!, unittest.equals('foo'));
    unittest.expect(o.uuid!, unittest.equals('foo'));
  }
  buildCounterSession--;
}

core.int buildCounterSessionStateHistory = 0;
api.SessionStateHistory buildSessionStateHistory() {
  final o = api.SessionStateHistory();
  buildCounterSessionStateHistory++;
  if (buildCounterSessionStateHistory < 3) {
    o.state = 'foo';
    o.stateMessage = 'foo';
    o.stateStartTime = 'foo';
  }
  buildCounterSessionStateHistory--;
  return o;
}

void checkSessionStateHistory(api.SessionStateHistory o) {
  buildCounterSessionStateHistory++;
  if (buildCounterSessionStateHistory < 3) {
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.stateMessage!, unittest.equals('foo'));
    unittest.expect(o.stateStartTime!, unittest.equals('foo'));
  }
  buildCounterSessionStateHistory--;
}

core.Map<core.String, core.String> buildUnnamed158() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed158(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterSessionTemplate = 0;
api.SessionTemplate buildSessionTemplate() {
  final o = api.SessionTemplate();
  buildCounterSessionTemplate++;
  if (buildCounterSessionTemplate < 3) {
    o.createTime = 'foo';
    o.creator = 'foo';
    o.description = 'foo';
    o.environmentConfig = buildEnvironmentConfig();
    o.jupyterSession = buildJupyterConfig();
    o.labels = buildUnnamed158();
    o.name = 'foo';
    o.runtimeConfig = buildRuntimeConfig();
    o.sparkConnectSession = buildSparkConnectConfig();
    o.updateTime = 'foo';
    o.uuid = 'foo';
  }
  buildCounterSessionTemplate--;
  return o;
}

void checkSessionTemplate(api.SessionTemplate o) {
  buildCounterSessionTemplate++;
  if (buildCounterSessionTemplate < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.creator!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    checkEnvironmentConfig(o.environmentConfig!);
    checkJupyterConfig(o.jupyterSession!);
    checkUnnamed158(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkRuntimeConfig(o.runtimeConfig!);
    checkSparkConnectConfig(o.sparkConnectSession!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.uuid!, unittest.equals('foo'));
  }
  buildCounterSessionTemplate--;
}

core.int buildCounterSetIamPolicyRequest = 0;
api.SetIamPolicyRequest buildSetIamPolicyRequest() {
  final o = api.SetIamPolicyRequest();
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    o.policy = buildPolicy();
  }
  buildCounterSetIamPolicyRequest--;
  return o;
}

void checkSetIamPolicyRequest(api.SetIamPolicyRequest o) {
  buildCounterSetIamPolicyRequest++;
  if (buildCounterSetIamPolicyRequest < 3) {
    checkPolicy(o.policy!);
  }
  buildCounterSetIamPolicyRequest--;
}

core.int buildCounterShieldedInstanceConfig = 0;
api.ShieldedInstanceConfig buildShieldedInstanceConfig() {
  final o = api.ShieldedInstanceConfig();
  buildCounterShieldedInstanceConfig++;
  if (buildCounterShieldedInstanceConfig < 3) {
    o.enableIntegrityMonitoring = true;
    o.enableSecureBoot = true;
    o.enableVtpm = true;
  }
  buildCounterShieldedInstanceConfig--;
  return o;
}

void checkShieldedInstanceConfig(api.ShieldedInstanceConfig o) {
  buildCounterShieldedInstanceConfig++;
  if (buildCounterShieldedInstanceConfig < 3) {
    unittest.expect(o.enableIntegrityMonitoring!, unittest.isTrue);
    unittest.expect(o.enableSecureBoot!, unittest.isTrue);
    unittest.expect(o.enableVtpm!, unittest.isTrue);
  }
  buildCounterShieldedInstanceConfig--;
}

core.int buildCounterShufflePushReadMetrics = 0;
api.ShufflePushReadMetrics buildShufflePushReadMetrics() {
  final o = api.ShufflePushReadMetrics();
  buildCounterShufflePushReadMetrics++;
  if (buildCounterShufflePushReadMetrics < 3) {
    o.corruptMergedBlockChunks = 'foo';
    o.localMergedBlocksFetched = 'foo';
    o.localMergedBytesRead = 'foo';
    o.localMergedChunksFetched = 'foo';
    o.mergedFetchFallbackCount = 'foo';
    o.remoteMergedBlocksFetched = 'foo';
    o.remoteMergedBytesRead = 'foo';
    o.remoteMergedChunksFetched = 'foo';
    o.remoteMergedReqsDuration = 'foo';
  }
  buildCounterShufflePushReadMetrics--;
  return o;
}

void checkShufflePushReadMetrics(api.ShufflePushReadMetrics o) {
  buildCounterShufflePushReadMetrics++;
  if (buildCounterShufflePushReadMetrics < 3) {
    unittest.expect(o.corruptMergedBlockChunks!, unittest.equals('foo'));
    unittest.expect(o.localMergedBlocksFetched!, unittest.equals('foo'));
    unittest.expect(o.localMergedBytesRead!, unittest.equals('foo'));
    unittest.expect(o.localMergedChunksFetched!, unittest.equals('foo'));
    unittest.expect(o.mergedFetchFallbackCount!, unittest.equals('foo'));
    unittest.expect(o.remoteMergedBlocksFetched!, unittest.equals('foo'));
    unittest.expect(o.remoteMergedBytesRead!, unittest.equals('foo'));
    unittest.expect(o.remoteMergedChunksFetched!, unittest.equals('foo'));
    unittest.expect(o.remoteMergedReqsDuration!, unittest.equals('foo'));
  }
  buildCounterShufflePushReadMetrics--;
}

core.int buildCounterShufflePushReadQuantileMetrics = 0;
api.ShufflePushReadQuantileMetrics buildShufflePushReadQuantileMetrics() {
  final o = api.ShufflePushReadQuantileMetrics();
  buildCounterShufflePushReadQuantileMetrics++;
  if (buildCounterShufflePushReadQuantileMetrics < 3) {
    o.corruptMergedBlockChunks = buildQuantiles();
    o.localMergedBlocksFetched = buildQuantiles();
    o.localMergedBytesRead = buildQuantiles();
    o.localMergedChunksFetched = buildQuantiles();
    o.mergedFetchFallbackCount = buildQuantiles();
    o.remoteMergedBlocksFetched = buildQuantiles();
    o.remoteMergedBytesRead = buildQuantiles();
    o.remoteMergedChunksFetched = buildQuantiles();
    o.remoteMergedReqsDuration = buildQuantiles();
  }
  buildCounterShufflePushReadQuantileMetrics--;
  return o;
}

void checkShufflePushReadQuantileMetrics(api.ShufflePushReadQuantileMetrics o) {
  buildCounterShufflePushReadQuantileMetrics++;
  if (buildCounterShufflePushReadQuantileMetrics < 3) {
    checkQuantiles(o.corruptMergedBlockChunks!);
    checkQuantiles(o.localMergedBlocksFetched!);
    checkQuantiles(o.localMergedBytesRead!);
    checkQuantiles(o.localMergedChunksFetched!);
    checkQuantiles(o.mergedFetchFallbackCount!);
    checkQuantiles(o.remoteMergedBlocksFetched!);
    checkQuantiles(o.remoteMergedBytesRead!);
    checkQuantiles(o.remoteMergedChunksFetched!);
    checkQuantiles(o.remoteMergedReqsDuration!);
  }
  buildCounterShufflePushReadQuantileMetrics--;
}

core.int buildCounterShuffleReadMetrics = 0;
api.ShuffleReadMetrics buildShuffleReadMetrics() {
  final o = api.ShuffleReadMetrics();
  buildCounterShuffleReadMetrics++;
  if (buildCounterShuffleReadMetrics < 3) {
    o.fetchWaitTimeMillis = 'foo';
    o.localBlocksFetched = 'foo';
    o.localBytesRead = 'foo';
    o.recordsRead = 'foo';
    o.remoteBlocksFetched = 'foo';
    o.remoteBytesRead = 'foo';
    o.remoteBytesReadToDisk = 'foo';
    o.remoteReqsDuration = 'foo';
    o.shufflePushReadMetrics = buildShufflePushReadMetrics();
  }
  buildCounterShuffleReadMetrics--;
  return o;
}

void checkShuffleReadMetrics(api.ShuffleReadMetrics o) {
  buildCounterShuffleReadMetrics++;
  if (buildCounterShuffleReadMetrics < 3) {
    unittest.expect(o.fetchWaitTimeMillis!, unittest.equals('foo'));
    unittest.expect(o.localBlocksFetched!, unittest.equals('foo'));
    unittest.expect(o.localBytesRead!, unittest.equals('foo'));
    unittest.expect(o.recordsRead!, unittest.equals('foo'));
    unittest.expect(o.remoteBlocksFetched!, unittest.equals('foo'));
    unittest.expect(o.remoteBytesRead!, unittest.equals('foo'));
    unittest.expect(o.remoteBytesReadToDisk!, unittest.equals('foo'));
    unittest.expect(o.remoteReqsDuration!, unittest.equals('foo'));
    checkShufflePushReadMetrics(o.shufflePushReadMetrics!);
  }
  buildCounterShuffleReadMetrics--;
}

core.int buildCounterShuffleReadQuantileMetrics = 0;
api.ShuffleReadQuantileMetrics buildShuffleReadQuantileMetrics() {
  final o = api.ShuffleReadQuantileMetrics();
  buildCounterShuffleReadQuantileMetrics++;
  if (buildCounterShuffleReadQuantileMetrics < 3) {
    o.fetchWaitTimeMillis = buildQuantiles();
    o.localBlocksFetched = buildQuantiles();
    o.readBytes = buildQuantiles();
    o.readRecords = buildQuantiles();
    o.remoteBlocksFetched = buildQuantiles();
    o.remoteBytesRead = buildQuantiles();
    o.remoteBytesReadToDisk = buildQuantiles();
    o.remoteReqsDuration = buildQuantiles();
    o.shufflePushReadMetrics = buildShufflePushReadQuantileMetrics();
    o.totalBlocksFetched = buildQuantiles();
  }
  buildCounterShuffleReadQuantileMetrics--;
  return o;
}

void checkShuffleReadQuantileMetrics(api.ShuffleReadQuantileMetrics o) {
  buildCounterShuffleReadQuantileMetrics++;
  if (buildCounterShuffleReadQuantileMetrics < 3) {
    checkQuantiles(o.fetchWaitTimeMillis!);
    checkQuantiles(o.localBlocksFetched!);
    checkQuantiles(o.readBytes!);
    checkQuantiles(o.readRecords!);
    checkQuantiles(o.remoteBlocksFetched!);
    checkQuantiles(o.remoteBytesRead!);
    checkQuantiles(o.remoteBytesReadToDisk!);
    checkQuantiles(o.remoteReqsDuration!);
    checkShufflePushReadQuantileMetrics(o.shufflePushReadMetrics!);
    checkQuantiles(o.totalBlocksFetched!);
  }
  buildCounterShuffleReadQuantileMetrics--;
}

core.int buildCounterShuffleWriteMetrics = 0;
api.ShuffleWriteMetrics buildShuffleWriteMetrics() {
  final o = api.ShuffleWriteMetrics();
  buildCounterShuffleWriteMetrics++;
  if (buildCounterShuffleWriteMetrics < 3) {
    o.bytesWritten = 'foo';
    o.recordsWritten = 'foo';
    o.writeTimeNanos = 'foo';
  }
  buildCounterShuffleWriteMetrics--;
  return o;
}

void checkShuffleWriteMetrics(api.ShuffleWriteMetrics o) {
  buildCounterShuffleWriteMetrics++;
  if (buildCounterShuffleWriteMetrics < 3) {
    unittest.expect(o.bytesWritten!, unittest.equals('foo'));
    unittest.expect(o.recordsWritten!, unittest.equals('foo'));
    unittest.expect(o.writeTimeNanos!, unittest.equals('foo'));
  }
  buildCounterShuffleWriteMetrics--;
}

core.int buildCounterShuffleWriteQuantileMetrics = 0;
api.ShuffleWriteQuantileMetrics buildShuffleWriteQuantileMetrics() {
  final o = api.ShuffleWriteQuantileMetrics();
  buildCounterShuffleWriteQuantileMetrics++;
  if (buildCounterShuffleWriteQuantileMetrics < 3) {
    o.writeBytes = buildQuantiles();
    o.writeRecords = buildQuantiles();
    o.writeTimeNanos = buildQuantiles();
  }
  buildCounterShuffleWriteQuantileMetrics--;
  return o;
}

void checkShuffleWriteQuantileMetrics(api.ShuffleWriteQuantileMetrics o) {
  buildCounterShuffleWriteQuantileMetrics++;
  if (buildCounterShuffleWriteQuantileMetrics < 3) {
    checkQuantiles(o.writeBytes!);
    checkQuantiles(o.writeRecords!);
    checkQuantiles(o.writeTimeNanos!);
  }
  buildCounterShuffleWriteQuantileMetrics--;
}

core.Map<core.String, core.String> buildUnnamed159() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed159(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterSinkProgress = 0;
api.SinkProgress buildSinkProgress() {
  final o = api.SinkProgress();
  buildCounterSinkProgress++;
  if (buildCounterSinkProgress < 3) {
    o.description = 'foo';
    o.metrics = buildUnnamed159();
    o.numOutputRows = 'foo';
  }
  buildCounterSinkProgress--;
  return o;
}

void checkSinkProgress(api.SinkProgress o) {
  buildCounterSinkProgress++;
  if (buildCounterSinkProgress < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed159(o.metrics!);
    unittest.expect(o.numOutputRows!, unittest.equals('foo'));
  }
  buildCounterSinkProgress--;
}

core.List<core.String> buildUnnamed160() => ['foo', 'foo'];

void checkUnnamed160(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed161() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed161(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterSoftwareConfig = 0;
api.SoftwareConfig buildSoftwareConfig() {
  final o = api.SoftwareConfig();
  buildCounterSoftwareConfig++;
  if (buildCounterSoftwareConfig < 3) {
    o.imageVersion = 'foo';
    o.optionalComponents = buildUnnamed160();
    o.properties = buildUnnamed161();
  }
  buildCounterSoftwareConfig--;
  return o;
}

void checkSoftwareConfig(api.SoftwareConfig o) {
  buildCounterSoftwareConfig++;
  if (buildCounterSoftwareConfig < 3) {
    unittest.expect(o.imageVersion!, unittest.equals('foo'));
    checkUnnamed160(o.optionalComponents!);
    checkUnnamed161(o.properties!);
  }
  buildCounterSoftwareConfig--;
}

core.Map<core.String, core.String> buildUnnamed162() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed162(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterSourceProgress = 0;
api.SourceProgress buildSourceProgress() {
  final o = api.SourceProgress();
  buildCounterSourceProgress++;
  if (buildCounterSourceProgress < 3) {
    o.description = 'foo';
    o.endOffset = 'foo';
    o.inputRowsPerSecond = 42.0;
    o.latestOffset = 'foo';
    o.metrics = buildUnnamed162();
    o.numInputRows = 'foo';
    o.processedRowsPerSecond = 42.0;
    o.startOffset = 'foo';
  }
  buildCounterSourceProgress--;
  return o;
}

void checkSourceProgress(api.SourceProgress o) {
  buildCounterSourceProgress++;
  if (buildCounterSourceProgress < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.endOffset!, unittest.equals('foo'));
    unittest.expect(o.inputRowsPerSecond!, unittest.equals(42.0));
    unittest.expect(o.latestOffset!, unittest.equals('foo'));
    checkUnnamed162(o.metrics!);
    unittest.expect(o.numInputRows!, unittest.equals('foo'));
    unittest.expect(o.processedRowsPerSecond!, unittest.equals(42.0));
    unittest.expect(o.startOffset!, unittest.equals('foo'));
  }
  buildCounterSourceProgress--;
}

core.int buildCounterSparkApplication = 0;
api.SparkApplication buildSparkApplication() {
  final o = api.SparkApplication();
  buildCounterSparkApplication++;
  if (buildCounterSparkApplication < 3) {
    o.application = buildApplicationInfo();
    o.name = 'foo';
  }
  buildCounterSparkApplication--;
  return o;
}

void checkSparkApplication(api.SparkApplication o) {
  buildCounterSparkApplication++;
  if (buildCounterSparkApplication < 3) {
    checkApplicationInfo(o.application!);
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterSparkApplication--;
}

core.List<core.String> buildUnnamed163() => ['foo', 'foo'];

void checkUnnamed163(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed164() => ['foo', 'foo'];

void checkUnnamed164(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed165() => ['foo', 'foo'];

void checkUnnamed165(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed166() => ['foo', 'foo'];

void checkUnnamed166(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSparkBatch = 0;
api.SparkBatch buildSparkBatch() {
  final o = api.SparkBatch();
  buildCounterSparkBatch++;
  if (buildCounterSparkBatch < 3) {
    o.archiveUris = buildUnnamed163();
    o.args = buildUnnamed164();
    o.fileUris = buildUnnamed165();
    o.jarFileUris = buildUnnamed166();
    o.mainClass = 'foo';
    o.mainJarFileUri = 'foo';
  }
  buildCounterSparkBatch--;
  return o;
}

void checkSparkBatch(api.SparkBatch o) {
  buildCounterSparkBatch++;
  if (buildCounterSparkBatch < 3) {
    checkUnnamed163(o.archiveUris!);
    checkUnnamed164(o.args!);
    checkUnnamed165(o.fileUris!);
    checkUnnamed166(o.jarFileUris!);
    unittest.expect(o.mainClass!, unittest.equals('foo'));
    unittest.expect(o.mainJarFileUri!, unittest.equals('foo'));
  }
  buildCounterSparkBatch--;
}

core.int buildCounterSparkConnectConfig = 0;
api.SparkConnectConfig buildSparkConnectConfig() {
  final o = api.SparkConnectConfig();
  buildCounterSparkConnectConfig++;
  if (buildCounterSparkConnectConfig < 3) {}
  buildCounterSparkConnectConfig--;
  return o;
}

void checkSparkConnectConfig(api.SparkConnectConfig o) {
  buildCounterSparkConnectConfig++;
  if (buildCounterSparkConnectConfig < 3) {}
  buildCounterSparkConnectConfig--;
}

core.int buildCounterSparkHistoryServerConfig = 0;
api.SparkHistoryServerConfig buildSparkHistoryServerConfig() {
  final o = api.SparkHistoryServerConfig();
  buildCounterSparkHistoryServerConfig++;
  if (buildCounterSparkHistoryServerConfig < 3) {
    o.dataprocCluster = 'foo';
  }
  buildCounterSparkHistoryServerConfig--;
  return o;
}

void checkSparkHistoryServerConfig(api.SparkHistoryServerConfig o) {
  buildCounterSparkHistoryServerConfig++;
  if (buildCounterSparkHistoryServerConfig < 3) {
    unittest.expect(o.dataprocCluster!, unittest.equals('foo'));
  }
  buildCounterSparkHistoryServerConfig--;
}

core.List<core.String> buildUnnamed167() => ['foo', 'foo'];

void checkUnnamed167(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed168() => ['foo', 'foo'];

void checkUnnamed168(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed169() => ['foo', 'foo'];

void checkUnnamed169(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed170() => ['foo', 'foo'];

void checkUnnamed170(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed171() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed171(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterSparkJob = 0;
api.SparkJob buildSparkJob() {
  final o = api.SparkJob();
  buildCounterSparkJob++;
  if (buildCounterSparkJob < 3) {
    o.archiveUris = buildUnnamed167();
    o.args = buildUnnamed168();
    o.fileUris = buildUnnamed169();
    o.jarFileUris = buildUnnamed170();
    o.loggingConfig = buildLoggingConfig();
    o.mainClass = 'foo';
    o.mainJarFileUri = 'foo';
    o.properties = buildUnnamed171();
  }
  buildCounterSparkJob--;
  return o;
}

void checkSparkJob(api.SparkJob o) {
  buildCounterSparkJob++;
  if (buildCounterSparkJob < 3) {
    checkUnnamed167(o.archiveUris!);
    checkUnnamed168(o.args!);
    checkUnnamed169(o.fileUris!);
    checkUnnamed170(o.jarFileUris!);
    checkLoggingConfig(o.loggingConfig!);
    unittest.expect(o.mainClass!, unittest.equals('foo'));
    unittest.expect(o.mainJarFileUri!, unittest.equals('foo'));
    checkUnnamed171(o.properties!);
  }
  buildCounterSparkJob--;
}

core.List<api.SparkPlanGraphEdge> buildUnnamed172() => [
      buildSparkPlanGraphEdge(),
      buildSparkPlanGraphEdge(),
    ];

void checkUnnamed172(core.List<api.SparkPlanGraphEdge> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSparkPlanGraphEdge(o[0]);
  checkSparkPlanGraphEdge(o[1]);
}

core.List<api.SparkPlanGraphNodeWrapper> buildUnnamed173() => [
      buildSparkPlanGraphNodeWrapper(),
      buildSparkPlanGraphNodeWrapper(),
    ];

void checkUnnamed173(core.List<api.SparkPlanGraphNodeWrapper> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSparkPlanGraphNodeWrapper(o[0]);
  checkSparkPlanGraphNodeWrapper(o[1]);
}

core.int buildCounterSparkPlanGraph = 0;
api.SparkPlanGraph buildSparkPlanGraph() {
  final o = api.SparkPlanGraph();
  buildCounterSparkPlanGraph++;
  if (buildCounterSparkPlanGraph < 3) {
    o.edges = buildUnnamed172();
    o.executionId = 'foo';
    o.nodes = buildUnnamed173();
  }
  buildCounterSparkPlanGraph--;
  return o;
}

void checkSparkPlanGraph(api.SparkPlanGraph o) {
  buildCounterSparkPlanGraph++;
  if (buildCounterSparkPlanGraph < 3) {
    checkUnnamed172(o.edges!);
    unittest.expect(o.executionId!, unittest.equals('foo'));
    checkUnnamed173(o.nodes!);
  }
  buildCounterSparkPlanGraph--;
}

core.List<api.SqlPlanMetric> buildUnnamed174() => [
      buildSqlPlanMetric(),
      buildSqlPlanMetric(),
    ];

void checkUnnamed174(core.List<api.SqlPlanMetric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSqlPlanMetric(o[0]);
  checkSqlPlanMetric(o[1]);
}

core.List<api.SparkPlanGraphNodeWrapper> buildUnnamed175() => [
      buildSparkPlanGraphNodeWrapper(),
      buildSparkPlanGraphNodeWrapper(),
    ];

void checkUnnamed175(core.List<api.SparkPlanGraphNodeWrapper> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSparkPlanGraphNodeWrapper(o[0]);
  checkSparkPlanGraphNodeWrapper(o[1]);
}

core.int buildCounterSparkPlanGraphCluster = 0;
api.SparkPlanGraphCluster buildSparkPlanGraphCluster() {
  final o = api.SparkPlanGraphCluster();
  buildCounterSparkPlanGraphCluster++;
  if (buildCounterSparkPlanGraphCluster < 3) {
    o.desc = 'foo';
    o.metrics = buildUnnamed174();
    o.name = 'foo';
    o.nodes = buildUnnamed175();
    o.sparkPlanGraphClusterId = 'foo';
  }
  buildCounterSparkPlanGraphCluster--;
  return o;
}

void checkSparkPlanGraphCluster(api.SparkPlanGraphCluster o) {
  buildCounterSparkPlanGraphCluster++;
  if (buildCounterSparkPlanGraphCluster < 3) {
    unittest.expect(o.desc!, unittest.equals('foo'));
    checkUnnamed174(o.metrics!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed175(o.nodes!);
    unittest.expect(o.sparkPlanGraphClusterId!, unittest.equals('foo'));
  }
  buildCounterSparkPlanGraphCluster--;
}

core.int buildCounterSparkPlanGraphEdge = 0;
api.SparkPlanGraphEdge buildSparkPlanGraphEdge() {
  final o = api.SparkPlanGraphEdge();
  buildCounterSparkPlanGraphEdge++;
  if (buildCounterSparkPlanGraphEdge < 3) {
    o.fromId = 'foo';
    o.toId = 'foo';
  }
  buildCounterSparkPlanGraphEdge--;
  return o;
}

void checkSparkPlanGraphEdge(api.SparkPlanGraphEdge o) {
  buildCounterSparkPlanGraphEdge++;
  if (buildCounterSparkPlanGraphEdge < 3) {
    unittest.expect(o.fromId!, unittest.equals('foo'));
    unittest.expect(o.toId!, unittest.equals('foo'));
  }
  buildCounterSparkPlanGraphEdge--;
}

core.List<api.SqlPlanMetric> buildUnnamed176() => [
      buildSqlPlanMetric(),
      buildSqlPlanMetric(),
    ];

void checkUnnamed176(core.List<api.SqlPlanMetric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSqlPlanMetric(o[0]);
  checkSqlPlanMetric(o[1]);
}

core.int buildCounterSparkPlanGraphNode = 0;
api.SparkPlanGraphNode buildSparkPlanGraphNode() {
  final o = api.SparkPlanGraphNode();
  buildCounterSparkPlanGraphNode++;
  if (buildCounterSparkPlanGraphNode < 3) {
    o.desc = 'foo';
    o.metrics = buildUnnamed176();
    o.name = 'foo';
    o.sparkPlanGraphNodeId = 'foo';
  }
  buildCounterSparkPlanGraphNode--;
  return o;
}

void checkSparkPlanGraphNode(api.SparkPlanGraphNode o) {
  buildCounterSparkPlanGraphNode++;
  if (buildCounterSparkPlanGraphNode < 3) {
    unittest.expect(o.desc!, unittest.equals('foo'));
    checkUnnamed176(o.metrics!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.sparkPlanGraphNodeId!, unittest.equals('foo'));
  }
  buildCounterSparkPlanGraphNode--;
}

core.int buildCounterSparkPlanGraphNodeWrapper = 0;
api.SparkPlanGraphNodeWrapper buildSparkPlanGraphNodeWrapper() {
  final o = api.SparkPlanGraphNodeWrapper();
  buildCounterSparkPlanGraphNodeWrapper++;
  if (buildCounterSparkPlanGraphNodeWrapper < 3) {
    o.cluster = buildSparkPlanGraphCluster();
    o.node = buildSparkPlanGraphNode();
  }
  buildCounterSparkPlanGraphNodeWrapper--;
  return o;
}

void checkSparkPlanGraphNodeWrapper(api.SparkPlanGraphNodeWrapper o) {
  buildCounterSparkPlanGraphNodeWrapper++;
  if (buildCounterSparkPlanGraphNodeWrapper < 3) {
    checkSparkPlanGraphCluster(o.cluster!);
    checkSparkPlanGraphNode(o.node!);
  }
  buildCounterSparkPlanGraphNodeWrapper--;
}

core.List<core.String> buildUnnamed177() => ['foo', 'foo'];

void checkUnnamed177(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed178() => ['foo', 'foo'];

void checkUnnamed178(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed179() => ['foo', 'foo'];

void checkUnnamed179(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSparkRBatch = 0;
api.SparkRBatch buildSparkRBatch() {
  final o = api.SparkRBatch();
  buildCounterSparkRBatch++;
  if (buildCounterSparkRBatch < 3) {
    o.archiveUris = buildUnnamed177();
    o.args = buildUnnamed178();
    o.fileUris = buildUnnamed179();
    o.mainRFileUri = 'foo';
  }
  buildCounterSparkRBatch--;
  return o;
}

void checkSparkRBatch(api.SparkRBatch o) {
  buildCounterSparkRBatch++;
  if (buildCounterSparkRBatch < 3) {
    checkUnnamed177(o.archiveUris!);
    checkUnnamed178(o.args!);
    checkUnnamed179(o.fileUris!);
    unittest.expect(o.mainRFileUri!, unittest.equals('foo'));
  }
  buildCounterSparkRBatch--;
}

core.List<core.String> buildUnnamed180() => ['foo', 'foo'];

void checkUnnamed180(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed181() => ['foo', 'foo'];

void checkUnnamed181(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed182() => ['foo', 'foo'];

void checkUnnamed182(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed183() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed183(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterSparkRJob = 0;
api.SparkRJob buildSparkRJob() {
  final o = api.SparkRJob();
  buildCounterSparkRJob++;
  if (buildCounterSparkRJob < 3) {
    o.archiveUris = buildUnnamed180();
    o.args = buildUnnamed181();
    o.fileUris = buildUnnamed182();
    o.loggingConfig = buildLoggingConfig();
    o.mainRFileUri = 'foo';
    o.properties = buildUnnamed183();
  }
  buildCounterSparkRJob--;
  return o;
}

void checkSparkRJob(api.SparkRJob o) {
  buildCounterSparkRJob++;
  if (buildCounterSparkRJob < 3) {
    checkUnnamed180(o.archiveUris!);
    checkUnnamed181(o.args!);
    checkUnnamed182(o.fileUris!);
    checkLoggingConfig(o.loggingConfig!);
    unittest.expect(o.mainRFileUri!, unittest.equals('foo'));
    checkUnnamed183(o.properties!);
  }
  buildCounterSparkRJob--;
}

core.int buildCounterSparkRuntimeInfo = 0;
api.SparkRuntimeInfo buildSparkRuntimeInfo() {
  final o = api.SparkRuntimeInfo();
  buildCounterSparkRuntimeInfo++;
  if (buildCounterSparkRuntimeInfo < 3) {
    o.javaHome = 'foo';
    o.javaVersion = 'foo';
    o.scalaVersion = 'foo';
  }
  buildCounterSparkRuntimeInfo--;
  return o;
}

void checkSparkRuntimeInfo(api.SparkRuntimeInfo o) {
  buildCounterSparkRuntimeInfo++;
  if (buildCounterSparkRuntimeInfo < 3) {
    unittest.expect(o.javaHome!, unittest.equals('foo'));
    unittest.expect(o.javaVersion!, unittest.equals('foo'));
    unittest.expect(o.scalaVersion!, unittest.equals('foo'));
  }
  buildCounterSparkRuntimeInfo--;
}

core.List<core.String> buildUnnamed184() => ['foo', 'foo'];

void checkUnnamed184(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed185() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed185(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterSparkSqlBatch = 0;
api.SparkSqlBatch buildSparkSqlBatch() {
  final o = api.SparkSqlBatch();
  buildCounterSparkSqlBatch++;
  if (buildCounterSparkSqlBatch < 3) {
    o.jarFileUris = buildUnnamed184();
    o.queryFileUri = 'foo';
    o.queryVariables = buildUnnamed185();
  }
  buildCounterSparkSqlBatch--;
  return o;
}

void checkSparkSqlBatch(api.SparkSqlBatch o) {
  buildCounterSparkSqlBatch++;
  if (buildCounterSparkSqlBatch < 3) {
    checkUnnamed184(o.jarFileUris!);
    unittest.expect(o.queryFileUri!, unittest.equals('foo'));
    checkUnnamed185(o.queryVariables!);
  }
  buildCounterSparkSqlBatch--;
}

core.List<core.String> buildUnnamed186() => ['foo', 'foo'];

void checkUnnamed186(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed187() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed187(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed188() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed188(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterSparkSqlJob = 0;
api.SparkSqlJob buildSparkSqlJob() {
  final o = api.SparkSqlJob();
  buildCounterSparkSqlJob++;
  if (buildCounterSparkSqlJob < 3) {
    o.jarFileUris = buildUnnamed186();
    o.loggingConfig = buildLoggingConfig();
    o.properties = buildUnnamed187();
    o.queryFileUri = 'foo';
    o.queryList = buildQueryList();
    o.scriptVariables = buildUnnamed188();
  }
  buildCounterSparkSqlJob--;
  return o;
}

void checkSparkSqlJob(api.SparkSqlJob o) {
  buildCounterSparkSqlJob++;
  if (buildCounterSparkSqlJob < 3) {
    checkUnnamed186(o.jarFileUris!);
    checkLoggingConfig(o.loggingConfig!);
    checkUnnamed187(o.properties!);
    unittest.expect(o.queryFileUri!, unittest.equals('foo'));
    checkQueryList(o.queryList!);
    checkUnnamed188(o.scriptVariables!);
  }
  buildCounterSparkSqlJob--;
}

core.int buildCounterSparkStandaloneAutoscalingConfig = 0;
api.SparkStandaloneAutoscalingConfig buildSparkStandaloneAutoscalingConfig() {
  final o = api.SparkStandaloneAutoscalingConfig();
  buildCounterSparkStandaloneAutoscalingConfig++;
  if (buildCounterSparkStandaloneAutoscalingConfig < 3) {
    o.gracefulDecommissionTimeout = 'foo';
    o.removeOnlyIdleWorkers = true;
    o.scaleDownFactor = 42.0;
    o.scaleDownMinWorkerFraction = 42.0;
    o.scaleUpFactor = 42.0;
    o.scaleUpMinWorkerFraction = 42.0;
  }
  buildCounterSparkStandaloneAutoscalingConfig--;
  return o;
}

void checkSparkStandaloneAutoscalingConfig(
  api.SparkStandaloneAutoscalingConfig o,
) {
  buildCounterSparkStandaloneAutoscalingConfig++;
  if (buildCounterSparkStandaloneAutoscalingConfig < 3) {
    unittest.expect(o.gracefulDecommissionTimeout!, unittest.equals('foo'));
    unittest.expect(o.removeOnlyIdleWorkers!, unittest.isTrue);
    unittest.expect(o.scaleDownFactor!, unittest.equals(42.0));
    unittest.expect(o.scaleDownMinWorkerFraction!, unittest.equals(42.0));
    unittest.expect(o.scaleUpFactor!, unittest.equals(42.0));
    unittest.expect(o.scaleUpMinWorkerFraction!, unittest.equals(42.0));
  }
  buildCounterSparkStandaloneAutoscalingConfig--;
}

core.int buildCounterSparkWrapperObject = 0;
api.SparkWrapperObject buildSparkWrapperObject() {
  final o = api.SparkWrapperObject();
  buildCounterSparkWrapperObject++;
  if (buildCounterSparkWrapperObject < 3) {
    o.appSummary = buildAppSummary();
    o.applicationEnvironmentInfo = buildApplicationEnvironmentInfo();
    o.applicationId = 'foo';
    o.applicationInfo = buildApplicationInfo();
    o.eventTimestamp = 'foo';
    o.executorStageSummary = buildExecutorStageSummary();
    o.executorSummary = buildExecutorSummary();
    o.jobData = buildJobData();
    o.poolData = buildPoolData();
    o.processSummary = buildProcessSummary();
    o.rddOperationGraph = buildRddOperationGraph();
    o.rddStorageInfo = buildRddStorageInfo();
    o.resourceProfileInfo = buildResourceProfileInfo();
    o.sparkPlanGraph = buildSparkPlanGraph();
    o.speculationStageSummary = buildSpeculationStageSummary();
    o.sqlExecutionUiData = buildSqlExecutionUiData();
    o.stageData = buildStageData();
    o.streamBlockData = buildStreamBlockData();
    o.streamingQueryData = buildStreamingQueryData();
    o.streamingQueryProgress = buildStreamingQueryProgress();
    o.taskData = buildTaskData();
  }
  buildCounterSparkWrapperObject--;
  return o;
}

void checkSparkWrapperObject(api.SparkWrapperObject o) {
  buildCounterSparkWrapperObject++;
  if (buildCounterSparkWrapperObject < 3) {
    checkAppSummary(o.appSummary!);
    checkApplicationEnvironmentInfo(o.applicationEnvironmentInfo!);
    unittest.expect(o.applicationId!, unittest.equals('foo'));
    checkApplicationInfo(o.applicationInfo!);
    unittest.expect(o.eventTimestamp!, unittest.equals('foo'));
    checkExecutorStageSummary(o.executorStageSummary!);
    checkExecutorSummary(o.executorSummary!);
    checkJobData(o.jobData!);
    checkPoolData(o.poolData!);
    checkProcessSummary(o.processSummary!);
    checkRddOperationGraph(o.rddOperationGraph!);
    checkRddStorageInfo(o.rddStorageInfo!);
    checkResourceProfileInfo(o.resourceProfileInfo!);
    checkSparkPlanGraph(o.sparkPlanGraph!);
    checkSpeculationStageSummary(o.speculationStageSummary!);
    checkSqlExecutionUiData(o.sqlExecutionUiData!);
    checkStageData(o.stageData!);
    checkStreamBlockData(o.streamBlockData!);
    checkStreamingQueryData(o.streamingQueryData!);
    checkStreamingQueryProgress(o.streamingQueryProgress!);
    checkTaskData(o.taskData!);
  }
  buildCounterSparkWrapperObject--;
}

core.int buildCounterSpeculationStageSummary = 0;
api.SpeculationStageSummary buildSpeculationStageSummary() {
  final o = api.SpeculationStageSummary();
  buildCounterSpeculationStageSummary++;
  if (buildCounterSpeculationStageSummary < 3) {
    o.numActiveTasks = 42;
    o.numCompletedTasks = 42;
    o.numFailedTasks = 42;
    o.numKilledTasks = 42;
    o.numTasks = 42;
    o.stageAttemptId = 42;
    o.stageId = 'foo';
  }
  buildCounterSpeculationStageSummary--;
  return o;
}

void checkSpeculationStageSummary(api.SpeculationStageSummary o) {
  buildCounterSpeculationStageSummary++;
  if (buildCounterSpeculationStageSummary < 3) {
    unittest.expect(o.numActiveTasks!, unittest.equals(42));
    unittest.expect(o.numCompletedTasks!, unittest.equals(42));
    unittest.expect(o.numFailedTasks!, unittest.equals(42));
    unittest.expect(o.numKilledTasks!, unittest.equals(42));
    unittest.expect(o.numTasks!, unittest.equals(42));
    unittest.expect(o.stageAttemptId!, unittest.equals(42));
    unittest.expect(o.stageId!, unittest.equals('foo'));
  }
  buildCounterSpeculationStageSummary--;
}

core.Map<core.String, core.String> buildUnnamed189() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed189(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed190() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed190(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.SqlPlanMetric> buildUnnamed191() => [
      buildSqlPlanMetric(),
      buildSqlPlanMetric(),
    ];

void checkUnnamed191(core.List<api.SqlPlanMetric> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSqlPlanMetric(o[0]);
  checkSqlPlanMetric(o[1]);
}

core.Map<core.String, core.String> buildUnnamed192() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed192(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed193() => ['foo', 'foo'];

void checkUnnamed193(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterSqlExecutionUiData = 0;
api.SqlExecutionUiData buildSqlExecutionUiData() {
  final o = api.SqlExecutionUiData();
  buildCounterSqlExecutionUiData++;
  if (buildCounterSqlExecutionUiData < 3) {
    o.completionTime = 'foo';
    o.description = 'foo';
    o.details = 'foo';
    o.errorMessage = 'foo';
    o.executionId = 'foo';
    o.jobs = buildUnnamed189();
    o.metricValues = buildUnnamed190();
    o.metricValuesIsNull = true;
    o.metrics = buildUnnamed191();
    o.modifiedConfigs = buildUnnamed192();
    o.physicalPlanDescription = 'foo';
    o.rootExecutionId = 'foo';
    o.stages = buildUnnamed193();
    o.submissionTime = 'foo';
  }
  buildCounterSqlExecutionUiData--;
  return o;
}

void checkSqlExecutionUiData(api.SqlExecutionUiData o) {
  buildCounterSqlExecutionUiData++;
  if (buildCounterSqlExecutionUiData < 3) {
    unittest.expect(o.completionTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.details!, unittest.equals('foo'));
    unittest.expect(o.errorMessage!, unittest.equals('foo'));
    unittest.expect(o.executionId!, unittest.equals('foo'));
    checkUnnamed189(o.jobs!);
    checkUnnamed190(o.metricValues!);
    unittest.expect(o.metricValuesIsNull!, unittest.isTrue);
    checkUnnamed191(o.metrics!);
    checkUnnamed192(o.modifiedConfigs!);
    unittest.expect(o.physicalPlanDescription!, unittest.equals('foo'));
    unittest.expect(o.rootExecutionId!, unittest.equals('foo'));
    checkUnnamed193(o.stages!);
    unittest.expect(o.submissionTime!, unittest.equals('foo'));
  }
  buildCounterSqlExecutionUiData--;
}

core.int buildCounterSqlPlanMetric = 0;
api.SqlPlanMetric buildSqlPlanMetric() {
  final o = api.SqlPlanMetric();
  buildCounterSqlPlanMetric++;
  if (buildCounterSqlPlanMetric < 3) {
    o.accumulatorId = 'foo';
    o.metricType = 'foo';
    o.name = 'foo';
  }
  buildCounterSqlPlanMetric--;
  return o;
}

void checkSqlPlanMetric(api.SqlPlanMetric o) {
  buildCounterSqlPlanMetric++;
  if (buildCounterSqlPlanMetric < 3) {
    unittest.expect(o.accumulatorId!, unittest.equals('foo'));
    unittest.expect(o.metricType!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
  }
  buildCounterSqlPlanMetric--;
}

core.int buildCounterStageAttemptTasksSummary = 0;
api.StageAttemptTasksSummary buildStageAttemptTasksSummary() {
  final o = api.StageAttemptTasksSummary();
  buildCounterStageAttemptTasksSummary++;
  if (buildCounterStageAttemptTasksSummary < 3) {
    o.applicationId = 'foo';
    o.numFailedTasks = 42;
    o.numKilledTasks = 42;
    o.numPendingTasks = 42;
    o.numRunningTasks = 42;
    o.numSuccessTasks = 42;
    o.numTasks = 42;
    o.stageAttemptId = 42;
    o.stageId = 'foo';
  }
  buildCounterStageAttemptTasksSummary--;
  return o;
}

void checkStageAttemptTasksSummary(api.StageAttemptTasksSummary o) {
  buildCounterStageAttemptTasksSummary++;
  if (buildCounterStageAttemptTasksSummary < 3) {
    unittest.expect(o.applicationId!, unittest.equals('foo'));
    unittest.expect(o.numFailedTasks!, unittest.equals(42));
    unittest.expect(o.numKilledTasks!, unittest.equals(42));
    unittest.expect(o.numPendingTasks!, unittest.equals(42));
    unittest.expect(o.numRunningTasks!, unittest.equals(42));
    unittest.expect(o.numSuccessTasks!, unittest.equals(42));
    unittest.expect(o.numTasks!, unittest.equals(42));
    unittest.expect(o.stageAttemptId!, unittest.equals(42));
    unittest.expect(o.stageId!, unittest.equals('foo'));
  }
  buildCounterStageAttemptTasksSummary--;
}

core.List<api.AccumulableInfo> buildUnnamed194() => [
      buildAccumulableInfo(),
      buildAccumulableInfo(),
    ];

void checkUnnamed194(core.List<api.AccumulableInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccumulableInfo(o[0]);
  checkAccumulableInfo(o[1]);
}

core.Map<core.String, api.ExecutorStageSummary> buildUnnamed195() => {
      'x': buildExecutorStageSummary(),
      'y': buildExecutorStageSummary(),
    };

void checkUnnamed195(core.Map<core.String, api.ExecutorStageSummary> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkExecutorStageSummary(o['x']!);
  checkExecutorStageSummary(o['y']!);
}

core.List<core.String> buildUnnamed196() => ['foo', 'foo'];

void checkUnnamed196(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.int> buildUnnamed197() => {'x': 42, 'y': 42};

void checkUnnamed197(core.Map<core.String, core.int> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals(42));
  unittest.expect(o['y']!, unittest.equals(42));
}

core.Map<core.String, core.String> buildUnnamed198() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed198(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<core.String> buildUnnamed199() => ['foo', 'foo'];

void checkUnnamed199(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.List<core.String> buildUnnamed200() => ['foo', 'foo'];

void checkUnnamed200(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, api.TaskData> buildUnnamed201() => {
      'x': buildTaskData(),
      'y': buildTaskData(),
    };

void checkUnnamed201(core.Map<core.String, api.TaskData> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTaskData(o['x']!);
  checkTaskData(o['y']!);
}

core.int buildCounterStageData = 0;
api.StageData buildStageData() {
  final o = api.StageData();
  buildCounterStageData++;
  if (buildCounterStageData < 3) {
    o.accumulatorUpdates = buildUnnamed194();
    o.completionTime = 'foo';
    o.description = 'foo';
    o.details = 'foo';
    o.executorMetricsDistributions = buildExecutorMetricsDistributions();
    o.executorSummary = buildUnnamed195();
    o.failureReason = 'foo';
    o.firstTaskLaunchedTime = 'foo';
    o.isShufflePushEnabled = true;
    o.jobIds = buildUnnamed196();
    o.killedTasksSummary = buildUnnamed197();
    o.locality = buildUnnamed198();
    o.name = 'foo';
    o.numActiveTasks = 42;
    o.numCompleteTasks = 42;
    o.numCompletedIndices = 42;
    o.numFailedTasks = 42;
    o.numKilledTasks = 42;
    o.numTasks = 42;
    o.parentStageIds = buildUnnamed199();
    o.peakExecutorMetrics = buildExecutorMetrics();
    o.rddIds = buildUnnamed200();
    o.resourceProfileId = 42;
    o.schedulingPool = 'foo';
    o.shuffleMergersCount = 42;
    o.speculationSummary = buildSpeculationStageSummary();
    o.stageAttemptId = 42;
    o.stageId = 'foo';
    o.stageMetrics = buildStageMetrics();
    o.status = 'foo';
    o.submissionTime = 'foo';
    o.taskQuantileMetrics = buildTaskQuantileMetrics();
    o.tasks = buildUnnamed201();
  }
  buildCounterStageData--;
  return o;
}

void checkStageData(api.StageData o) {
  buildCounterStageData++;
  if (buildCounterStageData < 3) {
    checkUnnamed194(o.accumulatorUpdates!);
    unittest.expect(o.completionTime!, unittest.equals('foo'));
    unittest.expect(o.description!, unittest.equals('foo'));
    unittest.expect(o.details!, unittest.equals('foo'));
    checkExecutorMetricsDistributions(o.executorMetricsDistributions!);
    checkUnnamed195(o.executorSummary!);
    unittest.expect(o.failureReason!, unittest.equals('foo'));
    unittest.expect(o.firstTaskLaunchedTime!, unittest.equals('foo'));
    unittest.expect(o.isShufflePushEnabled!, unittest.isTrue);
    checkUnnamed196(o.jobIds!);
    checkUnnamed197(o.killedTasksSummary!);
    checkUnnamed198(o.locality!);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.numActiveTasks!, unittest.equals(42));
    unittest.expect(o.numCompleteTasks!, unittest.equals(42));
    unittest.expect(o.numCompletedIndices!, unittest.equals(42));
    unittest.expect(o.numFailedTasks!, unittest.equals(42));
    unittest.expect(o.numKilledTasks!, unittest.equals(42));
    unittest.expect(o.numTasks!, unittest.equals(42));
    checkUnnamed199(o.parentStageIds!);
    checkExecutorMetrics(o.peakExecutorMetrics!);
    checkUnnamed200(o.rddIds!);
    unittest.expect(o.resourceProfileId!, unittest.equals(42));
    unittest.expect(o.schedulingPool!, unittest.equals('foo'));
    unittest.expect(o.shuffleMergersCount!, unittest.equals(42));
    checkSpeculationStageSummary(o.speculationSummary!);
    unittest.expect(o.stageAttemptId!, unittest.equals(42));
    unittest.expect(o.stageId!, unittest.equals('foo'));
    checkStageMetrics(o.stageMetrics!);
    unittest.expect(o.status!, unittest.equals('foo'));
    unittest.expect(o.submissionTime!, unittest.equals('foo'));
    checkTaskQuantileMetrics(o.taskQuantileMetrics!);
    checkUnnamed201(o.tasks!);
  }
  buildCounterStageData--;
}

core.int buildCounterStageInputMetrics = 0;
api.StageInputMetrics buildStageInputMetrics() {
  final o = api.StageInputMetrics();
  buildCounterStageInputMetrics++;
  if (buildCounterStageInputMetrics < 3) {
    o.bytesRead = 'foo';
    o.recordsRead = 'foo';
  }
  buildCounterStageInputMetrics--;
  return o;
}

void checkStageInputMetrics(api.StageInputMetrics o) {
  buildCounterStageInputMetrics++;
  if (buildCounterStageInputMetrics < 3) {
    unittest.expect(o.bytesRead!, unittest.equals('foo'));
    unittest.expect(o.recordsRead!, unittest.equals('foo'));
  }
  buildCounterStageInputMetrics--;
}

core.int buildCounterStageMetrics = 0;
api.StageMetrics buildStageMetrics() {
  final o = api.StageMetrics();
  buildCounterStageMetrics++;
  if (buildCounterStageMetrics < 3) {
    o.diskBytesSpilled = 'foo';
    o.executorCpuTimeNanos = 'foo';
    o.executorDeserializeCpuTimeNanos = 'foo';
    o.executorDeserializeTimeMillis = 'foo';
    o.executorRunTimeMillis = 'foo';
    o.jvmGcTimeMillis = 'foo';
    o.memoryBytesSpilled = 'foo';
    o.peakExecutionMemoryBytes = 'foo';
    o.resultSerializationTimeMillis = 'foo';
    o.resultSize = 'foo';
    o.stageInputMetrics = buildStageInputMetrics();
    o.stageOutputMetrics = buildStageOutputMetrics();
    o.stageShuffleReadMetrics = buildStageShuffleReadMetrics();
    o.stageShuffleWriteMetrics = buildStageShuffleWriteMetrics();
  }
  buildCounterStageMetrics--;
  return o;
}

void checkStageMetrics(api.StageMetrics o) {
  buildCounterStageMetrics++;
  if (buildCounterStageMetrics < 3) {
    unittest.expect(o.diskBytesSpilled!, unittest.equals('foo'));
    unittest.expect(o.executorCpuTimeNanos!, unittest.equals('foo'));
    unittest.expect(o.executorDeserializeCpuTimeNanos!, unittest.equals('foo'));
    unittest.expect(o.executorDeserializeTimeMillis!, unittest.equals('foo'));
    unittest.expect(o.executorRunTimeMillis!, unittest.equals('foo'));
    unittest.expect(o.jvmGcTimeMillis!, unittest.equals('foo'));
    unittest.expect(o.memoryBytesSpilled!, unittest.equals('foo'));
    unittest.expect(o.peakExecutionMemoryBytes!, unittest.equals('foo'));
    unittest.expect(o.resultSerializationTimeMillis!, unittest.equals('foo'));
    unittest.expect(o.resultSize!, unittest.equals('foo'));
    checkStageInputMetrics(o.stageInputMetrics!);
    checkStageOutputMetrics(o.stageOutputMetrics!);
    checkStageShuffleReadMetrics(o.stageShuffleReadMetrics!);
    checkStageShuffleWriteMetrics(o.stageShuffleWriteMetrics!);
  }
  buildCounterStageMetrics--;
}

core.int buildCounterStageOutputMetrics = 0;
api.StageOutputMetrics buildStageOutputMetrics() {
  final o = api.StageOutputMetrics();
  buildCounterStageOutputMetrics++;
  if (buildCounterStageOutputMetrics < 3) {
    o.bytesWritten = 'foo';
    o.recordsWritten = 'foo';
  }
  buildCounterStageOutputMetrics--;
  return o;
}

void checkStageOutputMetrics(api.StageOutputMetrics o) {
  buildCounterStageOutputMetrics++;
  if (buildCounterStageOutputMetrics < 3) {
    unittest.expect(o.bytesWritten!, unittest.equals('foo'));
    unittest.expect(o.recordsWritten!, unittest.equals('foo'));
  }
  buildCounterStageOutputMetrics--;
}

core.int buildCounterStageShufflePushReadMetrics = 0;
api.StageShufflePushReadMetrics buildStageShufflePushReadMetrics() {
  final o = api.StageShufflePushReadMetrics();
  buildCounterStageShufflePushReadMetrics++;
  if (buildCounterStageShufflePushReadMetrics < 3) {
    o.corruptMergedBlockChunks = 'foo';
    o.localMergedBlocksFetched = 'foo';
    o.localMergedBytesRead = 'foo';
    o.localMergedChunksFetched = 'foo';
    o.mergedFetchFallbackCount = 'foo';
    o.remoteMergedBlocksFetched = 'foo';
    o.remoteMergedBytesRead = 'foo';
    o.remoteMergedChunksFetched = 'foo';
    o.remoteMergedReqsDuration = 'foo';
  }
  buildCounterStageShufflePushReadMetrics--;
  return o;
}

void checkStageShufflePushReadMetrics(api.StageShufflePushReadMetrics o) {
  buildCounterStageShufflePushReadMetrics++;
  if (buildCounterStageShufflePushReadMetrics < 3) {
    unittest.expect(o.corruptMergedBlockChunks!, unittest.equals('foo'));
    unittest.expect(o.localMergedBlocksFetched!, unittest.equals('foo'));
    unittest.expect(o.localMergedBytesRead!, unittest.equals('foo'));
    unittest.expect(o.localMergedChunksFetched!, unittest.equals('foo'));
    unittest.expect(o.mergedFetchFallbackCount!, unittest.equals('foo'));
    unittest.expect(o.remoteMergedBlocksFetched!, unittest.equals('foo'));
    unittest.expect(o.remoteMergedBytesRead!, unittest.equals('foo'));
    unittest.expect(o.remoteMergedChunksFetched!, unittest.equals('foo'));
    unittest.expect(o.remoteMergedReqsDuration!, unittest.equals('foo'));
  }
  buildCounterStageShufflePushReadMetrics--;
}

core.int buildCounterStageShuffleReadMetrics = 0;
api.StageShuffleReadMetrics buildStageShuffleReadMetrics() {
  final o = api.StageShuffleReadMetrics();
  buildCounterStageShuffleReadMetrics++;
  if (buildCounterStageShuffleReadMetrics < 3) {
    o.bytesRead = 'foo';
    o.fetchWaitTimeMillis = 'foo';
    o.localBlocksFetched = 'foo';
    o.localBytesRead = 'foo';
    o.recordsRead = 'foo';
    o.remoteBlocksFetched = 'foo';
    o.remoteBytesRead = 'foo';
    o.remoteBytesReadToDisk = 'foo';
    o.remoteReqsDuration = 'foo';
    o.stageShufflePushReadMetrics = buildStageShufflePushReadMetrics();
  }
  buildCounterStageShuffleReadMetrics--;
  return o;
}

void checkStageShuffleReadMetrics(api.StageShuffleReadMetrics o) {
  buildCounterStageShuffleReadMetrics++;
  if (buildCounterStageShuffleReadMetrics < 3) {
    unittest.expect(o.bytesRead!, unittest.equals('foo'));
    unittest.expect(o.fetchWaitTimeMillis!, unittest.equals('foo'));
    unittest.expect(o.localBlocksFetched!, unittest.equals('foo'));
    unittest.expect(o.localBytesRead!, unittest.equals('foo'));
    unittest.expect(o.recordsRead!, unittest.equals('foo'));
    unittest.expect(o.remoteBlocksFetched!, unittest.equals('foo'));
    unittest.expect(o.remoteBytesRead!, unittest.equals('foo'));
    unittest.expect(o.remoteBytesReadToDisk!, unittest.equals('foo'));
    unittest.expect(o.remoteReqsDuration!, unittest.equals('foo'));
    checkStageShufflePushReadMetrics(o.stageShufflePushReadMetrics!);
  }
  buildCounterStageShuffleReadMetrics--;
}

core.int buildCounterStageShuffleWriteMetrics = 0;
api.StageShuffleWriteMetrics buildStageShuffleWriteMetrics() {
  final o = api.StageShuffleWriteMetrics();
  buildCounterStageShuffleWriteMetrics++;
  if (buildCounterStageShuffleWriteMetrics < 3) {
    o.bytesWritten = 'foo';
    o.recordsWritten = 'foo';
    o.writeTimeNanos = 'foo';
  }
  buildCounterStageShuffleWriteMetrics--;
  return o;
}

void checkStageShuffleWriteMetrics(api.StageShuffleWriteMetrics o) {
  buildCounterStageShuffleWriteMetrics++;
  if (buildCounterStageShuffleWriteMetrics < 3) {
    unittest.expect(o.bytesWritten!, unittest.equals('foo'));
    unittest.expect(o.recordsWritten!, unittest.equals('foo'));
    unittest.expect(o.writeTimeNanos!, unittest.equals('foo'));
  }
  buildCounterStageShuffleWriteMetrics--;
}

core.int buildCounterStagesSummary = 0;
api.StagesSummary buildStagesSummary() {
  final o = api.StagesSummary();
  buildCounterStagesSummary++;
  if (buildCounterStagesSummary < 3) {
    o.applicationId = 'foo';
    o.numActiveStages = 42;
    o.numCompletedStages = 42;
    o.numFailedStages = 42;
    o.numPendingStages = 42;
    o.numSkippedStages = 42;
  }
  buildCounterStagesSummary--;
  return o;
}

void checkStagesSummary(api.StagesSummary o) {
  buildCounterStagesSummary++;
  if (buildCounterStagesSummary < 3) {
    unittest.expect(o.applicationId!, unittest.equals('foo'));
    unittest.expect(o.numActiveStages!, unittest.equals(42));
    unittest.expect(o.numCompletedStages!, unittest.equals(42));
    unittest.expect(o.numFailedStages!, unittest.equals(42));
    unittest.expect(o.numPendingStages!, unittest.equals(42));
    unittest.expect(o.numSkippedStages!, unittest.equals(42));
  }
  buildCounterStagesSummary--;
}

core.int buildCounterStartClusterRequest = 0;
api.StartClusterRequest buildStartClusterRequest() {
  final o = api.StartClusterRequest();
  buildCounterStartClusterRequest++;
  if (buildCounterStartClusterRequest < 3) {
    o.clusterUuid = 'foo';
    o.requestId = 'foo';
  }
  buildCounterStartClusterRequest--;
  return o;
}

void checkStartClusterRequest(api.StartClusterRequest o) {
  buildCounterStartClusterRequest++;
  if (buildCounterStartClusterRequest < 3) {
    unittest.expect(o.clusterUuid!, unittest.equals('foo'));
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterStartClusterRequest--;
}

core.int buildCounterStartupConfig = 0;
api.StartupConfig buildStartupConfig() {
  final o = api.StartupConfig();
  buildCounterStartupConfig++;
  if (buildCounterStartupConfig < 3) {
    o.requiredRegistrationFraction = 42.0;
  }
  buildCounterStartupConfig--;
  return o;
}

void checkStartupConfig(api.StartupConfig o) {
  buildCounterStartupConfig++;
  if (buildCounterStartupConfig < 3) {
    unittest.expect(o.requiredRegistrationFraction!, unittest.equals(42.0));
  }
  buildCounterStartupConfig--;
}

core.int buildCounterStateHistory = 0;
api.StateHistory buildStateHistory() {
  final o = api.StateHistory();
  buildCounterStateHistory++;
  if (buildCounterStateHistory < 3) {
    o.state = 'foo';
    o.stateMessage = 'foo';
    o.stateStartTime = 'foo';
  }
  buildCounterStateHistory--;
  return o;
}

void checkStateHistory(api.StateHistory o) {
  buildCounterStateHistory++;
  if (buildCounterStateHistory < 3) {
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.stateMessage!, unittest.equals('foo'));
    unittest.expect(o.stateStartTime!, unittest.equals('foo'));
  }
  buildCounterStateHistory--;
}

core.Map<core.String, core.String> buildUnnamed202() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed202(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterStateOperatorProgress = 0;
api.StateOperatorProgress buildStateOperatorProgress() {
  final o = api.StateOperatorProgress();
  buildCounterStateOperatorProgress++;
  if (buildCounterStateOperatorProgress < 3) {
    o.allRemovalsTimeMs = 'foo';
    o.allUpdatesTimeMs = 'foo';
    o.commitTimeMs = 'foo';
    o.customMetrics = buildUnnamed202();
    o.memoryUsedBytes = 'foo';
    o.numRowsDroppedByWatermark = 'foo';
    o.numRowsRemoved = 'foo';
    o.numRowsTotal = 'foo';
    o.numRowsUpdated = 'foo';
    o.numShufflePartitions = 'foo';
    o.numStateStoreInstances = 'foo';
    o.operatorName = 'foo';
  }
  buildCounterStateOperatorProgress--;
  return o;
}

void checkStateOperatorProgress(api.StateOperatorProgress o) {
  buildCounterStateOperatorProgress++;
  if (buildCounterStateOperatorProgress < 3) {
    unittest.expect(o.allRemovalsTimeMs!, unittest.equals('foo'));
    unittest.expect(o.allUpdatesTimeMs!, unittest.equals('foo'));
    unittest.expect(o.commitTimeMs!, unittest.equals('foo'));
    checkUnnamed202(o.customMetrics!);
    unittest.expect(o.memoryUsedBytes!, unittest.equals('foo'));
    unittest.expect(o.numRowsDroppedByWatermark!, unittest.equals('foo'));
    unittest.expect(o.numRowsRemoved!, unittest.equals('foo'));
    unittest.expect(o.numRowsTotal!, unittest.equals('foo'));
    unittest.expect(o.numRowsUpdated!, unittest.equals('foo'));
    unittest.expect(o.numShufflePartitions!, unittest.equals('foo'));
    unittest.expect(o.numStateStoreInstances!, unittest.equals('foo'));
    unittest.expect(o.operatorName!, unittest.equals('foo'));
  }
  buildCounterStateOperatorProgress--;
}

core.Map<core.String, core.Object?> buildUnnamed203() => {
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

void checkUnnamed203(core.Map<core.String, core.Object?> o) {
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

core.List<core.Map<core.String, core.Object?>> buildUnnamed204() => [
      buildUnnamed203(),
      buildUnnamed203(),
    ];

void checkUnnamed204(core.List<core.Map<core.String, core.Object?>> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkUnnamed203(o[0]);
  checkUnnamed203(o[1]);
}

core.int buildCounterStatus = 0;
api.Status buildStatus() {
  final o = api.Status();
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    o.code = 42;
    o.details = buildUnnamed204();
    o.message = 'foo';
  }
  buildCounterStatus--;
  return o;
}

void checkStatus(api.Status o) {
  buildCounterStatus++;
  if (buildCounterStatus < 3) {
    unittest.expect(o.code!, unittest.equals(42));
    checkUnnamed204(o.details!);
    unittest.expect(o.message!, unittest.equals('foo'));
  }
  buildCounterStatus--;
}

core.int buildCounterStopClusterRequest = 0;
api.StopClusterRequest buildStopClusterRequest() {
  final o = api.StopClusterRequest();
  buildCounterStopClusterRequest++;
  if (buildCounterStopClusterRequest < 3) {
    o.clusterUuid = 'foo';
    o.requestId = 'foo';
  }
  buildCounterStopClusterRequest--;
  return o;
}

void checkStopClusterRequest(api.StopClusterRequest o) {
  buildCounterStopClusterRequest++;
  if (buildCounterStopClusterRequest < 3) {
    unittest.expect(o.clusterUuid!, unittest.equals('foo'));
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterStopClusterRequest--;
}

core.int buildCounterStreamBlockData = 0;
api.StreamBlockData buildStreamBlockData() {
  final o = api.StreamBlockData();
  buildCounterStreamBlockData++;
  if (buildCounterStreamBlockData < 3) {
    o.deserialized = true;
    o.diskSize = 'foo';
    o.executorId = 'foo';
    o.hostPort = 'foo';
    o.memSize = 'foo';
    o.name = 'foo';
    o.storageLevel = 'foo';
    o.useDisk = true;
    o.useMemory = true;
  }
  buildCounterStreamBlockData--;
  return o;
}

void checkStreamBlockData(api.StreamBlockData o) {
  buildCounterStreamBlockData++;
  if (buildCounterStreamBlockData < 3) {
    unittest.expect(o.deserialized!, unittest.isTrue);
    unittest.expect(o.diskSize!, unittest.equals('foo'));
    unittest.expect(o.executorId!, unittest.equals('foo'));
    unittest.expect(o.hostPort!, unittest.equals('foo'));
    unittest.expect(o.memSize!, unittest.equals('foo'));
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.storageLevel!, unittest.equals('foo'));
    unittest.expect(o.useDisk!, unittest.isTrue);
    unittest.expect(o.useMemory!, unittest.isTrue);
  }
  buildCounterStreamBlockData--;
}

core.int buildCounterStreamingQueryData = 0;
api.StreamingQueryData buildStreamingQueryData() {
  final o = api.StreamingQueryData();
  buildCounterStreamingQueryData++;
  if (buildCounterStreamingQueryData < 3) {
    o.endTimestamp = 'foo';
    o.exception = 'foo';
    o.isActive = true;
    o.name = 'foo';
    o.runId = 'foo';
    o.startTimestamp = 'foo';
    o.streamingQueryId = 'foo';
  }
  buildCounterStreamingQueryData--;
  return o;
}

void checkStreamingQueryData(api.StreamingQueryData o) {
  buildCounterStreamingQueryData++;
  if (buildCounterStreamingQueryData < 3) {
    unittest.expect(o.endTimestamp!, unittest.equals('foo'));
    unittest.expect(o.exception!, unittest.equals('foo'));
    unittest.expect(o.isActive!, unittest.isTrue);
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.runId!, unittest.equals('foo'));
    unittest.expect(o.startTimestamp!, unittest.equals('foo'));
    unittest.expect(o.streamingQueryId!, unittest.equals('foo'));
  }
  buildCounterStreamingQueryData--;
}

core.Map<core.String, core.String> buildUnnamed205() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed205(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed206() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed206(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed207() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed207(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.SourceProgress> buildUnnamed208() => [
      buildSourceProgress(),
      buildSourceProgress(),
    ];

void checkUnnamed208(core.List<api.SourceProgress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSourceProgress(o[0]);
  checkSourceProgress(o[1]);
}

core.List<api.StateOperatorProgress> buildUnnamed209() => [
      buildStateOperatorProgress(),
      buildStateOperatorProgress(),
    ];

void checkUnnamed209(core.List<api.StateOperatorProgress> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkStateOperatorProgress(o[0]);
  checkStateOperatorProgress(o[1]);
}

core.int buildCounterStreamingQueryProgress = 0;
api.StreamingQueryProgress buildStreamingQueryProgress() {
  final o = api.StreamingQueryProgress();
  buildCounterStreamingQueryProgress++;
  if (buildCounterStreamingQueryProgress < 3) {
    o.batchDuration = 'foo';
    o.batchId = 'foo';
    o.durationMillis = buildUnnamed205();
    o.eventTime = buildUnnamed206();
    o.name = 'foo';
    o.observedMetrics = buildUnnamed207();
    o.runId = 'foo';
    o.sink = buildSinkProgress();
    o.sources = buildUnnamed208();
    o.stateOperators = buildUnnamed209();
    o.streamingQueryProgressId = 'foo';
    o.timestamp = 'foo';
  }
  buildCounterStreamingQueryProgress--;
  return o;
}

void checkStreamingQueryProgress(api.StreamingQueryProgress o) {
  buildCounterStreamingQueryProgress++;
  if (buildCounterStreamingQueryProgress < 3) {
    unittest.expect(o.batchDuration!, unittest.equals('foo'));
    unittest.expect(o.batchId!, unittest.equals('foo'));
    checkUnnamed205(o.durationMillis!);
    checkUnnamed206(o.eventTime!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed207(o.observedMetrics!);
    unittest.expect(o.runId!, unittest.equals('foo'));
    checkSinkProgress(o.sink!);
    checkUnnamed208(o.sources!);
    checkUnnamed209(o.stateOperators!);
    unittest.expect(o.streamingQueryProgressId!, unittest.equals('foo'));
    unittest.expect(o.timestamp!, unittest.equals('foo'));
  }
  buildCounterStreamingQueryProgress--;
}

core.int buildCounterSubmitJobRequest = 0;
api.SubmitJobRequest buildSubmitJobRequest() {
  final o = api.SubmitJobRequest();
  buildCounterSubmitJobRequest++;
  if (buildCounterSubmitJobRequest < 3) {
    o.job = buildJob();
    o.requestId = 'foo';
  }
  buildCounterSubmitJobRequest--;
  return o;
}

void checkSubmitJobRequest(api.SubmitJobRequest o) {
  buildCounterSubmitJobRequest++;
  if (buildCounterSubmitJobRequest < 3) {
    checkJob(o.job!);
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterSubmitJobRequest--;
}

core.int buildCounterSummarizeSessionSparkApplicationExecutorsResponse = 0;
api.SummarizeSessionSparkApplicationExecutorsResponse
    buildSummarizeSessionSparkApplicationExecutorsResponse() {
  final o = api.SummarizeSessionSparkApplicationExecutorsResponse();
  buildCounterSummarizeSessionSparkApplicationExecutorsResponse++;
  if (buildCounterSummarizeSessionSparkApplicationExecutorsResponse < 3) {
    o.activeExecutorSummary = buildConsolidatedExecutorSummary();
    o.applicationId = 'foo';
    o.deadExecutorSummary = buildConsolidatedExecutorSummary();
    o.totalExecutorSummary = buildConsolidatedExecutorSummary();
  }
  buildCounterSummarizeSessionSparkApplicationExecutorsResponse--;
  return o;
}

void checkSummarizeSessionSparkApplicationExecutorsResponse(
  api.SummarizeSessionSparkApplicationExecutorsResponse o,
) {
  buildCounterSummarizeSessionSparkApplicationExecutorsResponse++;
  if (buildCounterSummarizeSessionSparkApplicationExecutorsResponse < 3) {
    checkConsolidatedExecutorSummary(o.activeExecutorSummary!);
    unittest.expect(o.applicationId!, unittest.equals('foo'));
    checkConsolidatedExecutorSummary(o.deadExecutorSummary!);
    checkConsolidatedExecutorSummary(o.totalExecutorSummary!);
  }
  buildCounterSummarizeSessionSparkApplicationExecutorsResponse--;
}

core.int buildCounterSummarizeSessionSparkApplicationJobsResponse = 0;
api.SummarizeSessionSparkApplicationJobsResponse
    buildSummarizeSessionSparkApplicationJobsResponse() {
  final o = api.SummarizeSessionSparkApplicationJobsResponse();
  buildCounterSummarizeSessionSparkApplicationJobsResponse++;
  if (buildCounterSummarizeSessionSparkApplicationJobsResponse < 3) {
    o.jobsSummary = buildJobsSummary();
  }
  buildCounterSummarizeSessionSparkApplicationJobsResponse--;
  return o;
}

void checkSummarizeSessionSparkApplicationJobsResponse(
  api.SummarizeSessionSparkApplicationJobsResponse o,
) {
  buildCounterSummarizeSessionSparkApplicationJobsResponse++;
  if (buildCounterSummarizeSessionSparkApplicationJobsResponse < 3) {
    checkJobsSummary(o.jobsSummary!);
  }
  buildCounterSummarizeSessionSparkApplicationJobsResponse--;
}

core.int buildCounterSummarizeSessionSparkApplicationStageAttemptTasksResponse =
    0;
api.SummarizeSessionSparkApplicationStageAttemptTasksResponse
    buildSummarizeSessionSparkApplicationStageAttemptTasksResponse() {
  final o = api.SummarizeSessionSparkApplicationStageAttemptTasksResponse();
  buildCounterSummarizeSessionSparkApplicationStageAttemptTasksResponse++;
  if (buildCounterSummarizeSessionSparkApplicationStageAttemptTasksResponse <
      3) {
    o.stageAttemptTasksSummary = buildStageAttemptTasksSummary();
  }
  buildCounterSummarizeSessionSparkApplicationStageAttemptTasksResponse--;
  return o;
}

void checkSummarizeSessionSparkApplicationStageAttemptTasksResponse(
  api.SummarizeSessionSparkApplicationStageAttemptTasksResponse o,
) {
  buildCounterSummarizeSessionSparkApplicationStageAttemptTasksResponse++;
  if (buildCounterSummarizeSessionSparkApplicationStageAttemptTasksResponse <
      3) {
    checkStageAttemptTasksSummary(o.stageAttemptTasksSummary!);
  }
  buildCounterSummarizeSessionSparkApplicationStageAttemptTasksResponse--;
}

core.int buildCounterSummarizeSessionSparkApplicationStagesResponse = 0;
api.SummarizeSessionSparkApplicationStagesResponse
    buildSummarizeSessionSparkApplicationStagesResponse() {
  final o = api.SummarizeSessionSparkApplicationStagesResponse();
  buildCounterSummarizeSessionSparkApplicationStagesResponse++;
  if (buildCounterSummarizeSessionSparkApplicationStagesResponse < 3) {
    o.stagesSummary = buildStagesSummary();
  }
  buildCounterSummarizeSessionSparkApplicationStagesResponse--;
  return o;
}

void checkSummarizeSessionSparkApplicationStagesResponse(
  api.SummarizeSessionSparkApplicationStagesResponse o,
) {
  buildCounterSummarizeSessionSparkApplicationStagesResponse++;
  if (buildCounterSummarizeSessionSparkApplicationStagesResponse < 3) {
    checkStagesSummary(o.stagesSummary!);
  }
  buildCounterSummarizeSessionSparkApplicationStagesResponse--;
}

core.int buildCounterSummarizeSparkApplicationExecutorsResponse = 0;
api.SummarizeSparkApplicationExecutorsResponse
    buildSummarizeSparkApplicationExecutorsResponse() {
  final o = api.SummarizeSparkApplicationExecutorsResponse();
  buildCounterSummarizeSparkApplicationExecutorsResponse++;
  if (buildCounterSummarizeSparkApplicationExecutorsResponse < 3) {
    o.activeExecutorSummary = buildConsolidatedExecutorSummary();
    o.applicationId = 'foo';
    o.deadExecutorSummary = buildConsolidatedExecutorSummary();
    o.totalExecutorSummary = buildConsolidatedExecutorSummary();
  }
  buildCounterSummarizeSparkApplicationExecutorsResponse--;
  return o;
}

void checkSummarizeSparkApplicationExecutorsResponse(
  api.SummarizeSparkApplicationExecutorsResponse o,
) {
  buildCounterSummarizeSparkApplicationExecutorsResponse++;
  if (buildCounterSummarizeSparkApplicationExecutorsResponse < 3) {
    checkConsolidatedExecutorSummary(o.activeExecutorSummary!);
    unittest.expect(o.applicationId!, unittest.equals('foo'));
    checkConsolidatedExecutorSummary(o.deadExecutorSummary!);
    checkConsolidatedExecutorSummary(o.totalExecutorSummary!);
  }
  buildCounterSummarizeSparkApplicationExecutorsResponse--;
}

core.int buildCounterSummarizeSparkApplicationJobsResponse = 0;
api.SummarizeSparkApplicationJobsResponse
    buildSummarizeSparkApplicationJobsResponse() {
  final o = api.SummarizeSparkApplicationJobsResponse();
  buildCounterSummarizeSparkApplicationJobsResponse++;
  if (buildCounterSummarizeSparkApplicationJobsResponse < 3) {
    o.jobsSummary = buildJobsSummary();
  }
  buildCounterSummarizeSparkApplicationJobsResponse--;
  return o;
}

void checkSummarizeSparkApplicationJobsResponse(
  api.SummarizeSparkApplicationJobsResponse o,
) {
  buildCounterSummarizeSparkApplicationJobsResponse++;
  if (buildCounterSummarizeSparkApplicationJobsResponse < 3) {
    checkJobsSummary(o.jobsSummary!);
  }
  buildCounterSummarizeSparkApplicationJobsResponse--;
}

core.int buildCounterSummarizeSparkApplicationStageAttemptTasksResponse = 0;
api.SummarizeSparkApplicationStageAttemptTasksResponse
    buildSummarizeSparkApplicationStageAttemptTasksResponse() {
  final o = api.SummarizeSparkApplicationStageAttemptTasksResponse();
  buildCounterSummarizeSparkApplicationStageAttemptTasksResponse++;
  if (buildCounterSummarizeSparkApplicationStageAttemptTasksResponse < 3) {
    o.stageAttemptTasksSummary = buildStageAttemptTasksSummary();
  }
  buildCounterSummarizeSparkApplicationStageAttemptTasksResponse--;
  return o;
}

void checkSummarizeSparkApplicationStageAttemptTasksResponse(
  api.SummarizeSparkApplicationStageAttemptTasksResponse o,
) {
  buildCounterSummarizeSparkApplicationStageAttemptTasksResponse++;
  if (buildCounterSummarizeSparkApplicationStageAttemptTasksResponse < 3) {
    checkStageAttemptTasksSummary(o.stageAttemptTasksSummary!);
  }
  buildCounterSummarizeSparkApplicationStageAttemptTasksResponse--;
}

core.int buildCounterSummarizeSparkApplicationStagesResponse = 0;
api.SummarizeSparkApplicationStagesResponse
    buildSummarizeSparkApplicationStagesResponse() {
  final o = api.SummarizeSparkApplicationStagesResponse();
  buildCounterSummarizeSparkApplicationStagesResponse++;
  if (buildCounterSummarizeSparkApplicationStagesResponse < 3) {
    o.stagesSummary = buildStagesSummary();
  }
  buildCounterSummarizeSparkApplicationStagesResponse--;
  return o;
}

void checkSummarizeSparkApplicationStagesResponse(
  api.SummarizeSparkApplicationStagesResponse o,
) {
  buildCounterSummarizeSparkApplicationStagesResponse++;
  if (buildCounterSummarizeSparkApplicationStagesResponse < 3) {
    checkStagesSummary(o.stagesSummary!);
  }
  buildCounterSummarizeSparkApplicationStagesResponse--;
}

core.List<api.AccumulableInfo> buildUnnamed210() => [
      buildAccumulableInfo(),
      buildAccumulableInfo(),
    ];

void checkUnnamed210(core.List<api.AccumulableInfo> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkAccumulableInfo(o[0]);
  checkAccumulableInfo(o[1]);
}

core.Map<core.String, core.String> buildUnnamed211() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed211(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterTaskData = 0;
api.TaskData buildTaskData() {
  final o = api.TaskData();
  buildCounterTaskData++;
  if (buildCounterTaskData < 3) {
    o.accumulatorUpdates = buildUnnamed210();
    o.attempt = 42;
    o.durationMillis = 'foo';
    o.errorMessage = 'foo';
    o.executorId = 'foo';
    o.executorLogs = buildUnnamed211();
    o.gettingResultTimeMillis = 'foo';
    o.hasMetrics = true;
    o.host = 'foo';
    o.index = 42;
    o.launchTime = 'foo';
    o.partitionId = 42;
    o.resultFetchStart = 'foo';
    o.schedulerDelayMillis = 'foo';
    o.speculative = true;
    o.stageAttemptId = 42;
    o.stageId = 'foo';
    o.status = 'foo';
    o.taskId = 'foo';
    o.taskLocality = 'foo';
    o.taskMetrics = buildTaskMetrics();
  }
  buildCounterTaskData--;
  return o;
}

void checkTaskData(api.TaskData o) {
  buildCounterTaskData++;
  if (buildCounterTaskData < 3) {
    checkUnnamed210(o.accumulatorUpdates!);
    unittest.expect(o.attempt!, unittest.equals(42));
    unittest.expect(o.durationMillis!, unittest.equals('foo'));
    unittest.expect(o.errorMessage!, unittest.equals('foo'));
    unittest.expect(o.executorId!, unittest.equals('foo'));
    checkUnnamed211(o.executorLogs!);
    unittest.expect(o.gettingResultTimeMillis!, unittest.equals('foo'));
    unittest.expect(o.hasMetrics!, unittest.isTrue);
    unittest.expect(o.host!, unittest.equals('foo'));
    unittest.expect(o.index!, unittest.equals(42));
    unittest.expect(o.launchTime!, unittest.equals('foo'));
    unittest.expect(o.partitionId!, unittest.equals(42));
    unittest.expect(o.resultFetchStart!, unittest.equals('foo'));
    unittest.expect(o.schedulerDelayMillis!, unittest.equals('foo'));
    unittest.expect(o.speculative!, unittest.isTrue);
    unittest.expect(o.stageAttemptId!, unittest.equals(42));
    unittest.expect(o.stageId!, unittest.equals('foo'));
    unittest.expect(o.status!, unittest.equals('foo'));
    unittest.expect(o.taskId!, unittest.equals('foo'));
    unittest.expect(o.taskLocality!, unittest.equals('foo'));
    checkTaskMetrics(o.taskMetrics!);
  }
  buildCounterTaskData--;
}

core.int buildCounterTaskMetrics = 0;
api.TaskMetrics buildTaskMetrics() {
  final o = api.TaskMetrics();
  buildCounterTaskMetrics++;
  if (buildCounterTaskMetrics < 3) {
    o.diskBytesSpilled = 'foo';
    o.executorCpuTimeNanos = 'foo';
    o.executorDeserializeCpuTimeNanos = 'foo';
    o.executorDeserializeTimeMillis = 'foo';
    o.executorRunTimeMillis = 'foo';
    o.inputMetrics = buildInputMetrics();
    o.jvmGcTimeMillis = 'foo';
    o.memoryBytesSpilled = 'foo';
    o.outputMetrics = buildOutputMetrics();
    o.peakExecutionMemoryBytes = 'foo';
    o.resultSerializationTimeMillis = 'foo';
    o.resultSize = 'foo';
    o.shuffleReadMetrics = buildShuffleReadMetrics();
    o.shuffleWriteMetrics = buildShuffleWriteMetrics();
  }
  buildCounterTaskMetrics--;
  return o;
}

void checkTaskMetrics(api.TaskMetrics o) {
  buildCounterTaskMetrics++;
  if (buildCounterTaskMetrics < 3) {
    unittest.expect(o.diskBytesSpilled!, unittest.equals('foo'));
    unittest.expect(o.executorCpuTimeNanos!, unittest.equals('foo'));
    unittest.expect(o.executorDeserializeCpuTimeNanos!, unittest.equals('foo'));
    unittest.expect(o.executorDeserializeTimeMillis!, unittest.equals('foo'));
    unittest.expect(o.executorRunTimeMillis!, unittest.equals('foo'));
    checkInputMetrics(o.inputMetrics!);
    unittest.expect(o.jvmGcTimeMillis!, unittest.equals('foo'));
    unittest.expect(o.memoryBytesSpilled!, unittest.equals('foo'));
    checkOutputMetrics(o.outputMetrics!);
    unittest.expect(o.peakExecutionMemoryBytes!, unittest.equals('foo'));
    unittest.expect(o.resultSerializationTimeMillis!, unittest.equals('foo'));
    unittest.expect(o.resultSize!, unittest.equals('foo'));
    checkShuffleReadMetrics(o.shuffleReadMetrics!);
    checkShuffleWriteMetrics(o.shuffleWriteMetrics!);
  }
  buildCounterTaskMetrics--;
}

core.int buildCounterTaskQuantileMetrics = 0;
api.TaskQuantileMetrics buildTaskQuantileMetrics() {
  final o = api.TaskQuantileMetrics();
  buildCounterTaskQuantileMetrics++;
  if (buildCounterTaskQuantileMetrics < 3) {
    o.diskBytesSpilled = buildQuantiles();
    o.durationMillis = buildQuantiles();
    o.executorCpuTimeNanos = buildQuantiles();
    o.executorDeserializeCpuTimeNanos = buildQuantiles();
    o.executorDeserializeTimeMillis = buildQuantiles();
    o.executorRunTimeMillis = buildQuantiles();
    o.gettingResultTimeMillis = buildQuantiles();
    o.inputMetrics = buildInputQuantileMetrics();
    o.jvmGcTimeMillis = buildQuantiles();
    o.memoryBytesSpilled = buildQuantiles();
    o.outputMetrics = buildOutputQuantileMetrics();
    o.peakExecutionMemoryBytes = buildQuantiles();
    o.resultSerializationTimeMillis = buildQuantiles();
    o.resultSize = buildQuantiles();
    o.schedulerDelayMillis = buildQuantiles();
    o.shuffleReadMetrics = buildShuffleReadQuantileMetrics();
    o.shuffleWriteMetrics = buildShuffleWriteQuantileMetrics();
  }
  buildCounterTaskQuantileMetrics--;
  return o;
}

void checkTaskQuantileMetrics(api.TaskQuantileMetrics o) {
  buildCounterTaskQuantileMetrics++;
  if (buildCounterTaskQuantileMetrics < 3) {
    checkQuantiles(o.diskBytesSpilled!);
    checkQuantiles(o.durationMillis!);
    checkQuantiles(o.executorCpuTimeNanos!);
    checkQuantiles(o.executorDeserializeCpuTimeNanos!);
    checkQuantiles(o.executorDeserializeTimeMillis!);
    checkQuantiles(o.executorRunTimeMillis!);
    checkQuantiles(o.gettingResultTimeMillis!);
    checkInputQuantileMetrics(o.inputMetrics!);
    checkQuantiles(o.jvmGcTimeMillis!);
    checkQuantiles(o.memoryBytesSpilled!);
    checkOutputQuantileMetrics(o.outputMetrics!);
    checkQuantiles(o.peakExecutionMemoryBytes!);
    checkQuantiles(o.resultSerializationTimeMillis!);
    checkQuantiles(o.resultSize!);
    checkQuantiles(o.schedulerDelayMillis!);
    checkShuffleReadQuantileMetrics(o.shuffleReadMetrics!);
    checkShuffleWriteQuantileMetrics(o.shuffleWriteMetrics!);
  }
  buildCounterTaskQuantileMetrics--;
}

core.int buildCounterTaskResourceRequest = 0;
api.TaskResourceRequest buildTaskResourceRequest() {
  final o = api.TaskResourceRequest();
  buildCounterTaskResourceRequest++;
  if (buildCounterTaskResourceRequest < 3) {
    o.amount = 42.0;
    o.resourceName = 'foo';
  }
  buildCounterTaskResourceRequest--;
  return o;
}

void checkTaskResourceRequest(api.TaskResourceRequest o) {
  buildCounterTaskResourceRequest++;
  if (buildCounterTaskResourceRequest < 3) {
    unittest.expect(o.amount!, unittest.equals(42.0));
    unittest.expect(o.resourceName!, unittest.equals('foo'));
  }
  buildCounterTaskResourceRequest--;
}

core.List<core.String> buildUnnamed212() => ['foo', 'foo'];

void checkUnnamed212(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTemplateParameter = 0;
api.TemplateParameter buildTemplateParameter() {
  final o = api.TemplateParameter();
  buildCounterTemplateParameter++;
  if (buildCounterTemplateParameter < 3) {
    o.description = 'foo';
    o.fields = buildUnnamed212();
    o.name = 'foo';
    o.validation = buildParameterValidation();
  }
  buildCounterTemplateParameter--;
  return o;
}

void checkTemplateParameter(api.TemplateParameter o) {
  buildCounterTemplateParameter++;
  if (buildCounterTemplateParameter < 3) {
    unittest.expect(o.description!, unittest.equals('foo'));
    checkUnnamed212(o.fields!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkParameterValidation(o.validation!);
  }
  buildCounterTemplateParameter--;
}

core.int buildCounterTerminateSessionRequest = 0;
api.TerminateSessionRequest buildTerminateSessionRequest() {
  final o = api.TerminateSessionRequest();
  buildCounterTerminateSessionRequest++;
  if (buildCounterTerminateSessionRequest < 3) {
    o.requestId = 'foo';
  }
  buildCounterTerminateSessionRequest--;
  return o;
}

void checkTerminateSessionRequest(api.TerminateSessionRequest o) {
  buildCounterTerminateSessionRequest++;
  if (buildCounterTerminateSessionRequest < 3) {
    unittest.expect(o.requestId!, unittest.equals('foo'));
  }
  buildCounterTerminateSessionRequest--;
}

core.List<core.String> buildUnnamed213() => ['foo', 'foo'];

void checkUnnamed213(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsRequest = 0;
api.TestIamPermissionsRequest buildTestIamPermissionsRequest() {
  final o = api.TestIamPermissionsRequest();
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    o.permissions = buildUnnamed213();
  }
  buildCounterTestIamPermissionsRequest--;
  return o;
}

void checkTestIamPermissionsRequest(api.TestIamPermissionsRequest o) {
  buildCounterTestIamPermissionsRequest++;
  if (buildCounterTestIamPermissionsRequest < 3) {
    checkUnnamed213(o.permissions!);
  }
  buildCounterTestIamPermissionsRequest--;
}

core.List<core.String> buildUnnamed214() => ['foo', 'foo'];

void checkUnnamed214(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterTestIamPermissionsResponse = 0;
api.TestIamPermissionsResponse buildTestIamPermissionsResponse() {
  final o = api.TestIamPermissionsResponse();
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    o.permissions = buildUnnamed214();
  }
  buildCounterTestIamPermissionsResponse--;
  return o;
}

void checkTestIamPermissionsResponse(api.TestIamPermissionsResponse o) {
  buildCounterTestIamPermissionsResponse++;
  if (buildCounterTestIamPermissionsResponse < 3) {
    checkUnnamed214(o.permissions!);
  }
  buildCounterTestIamPermissionsResponse--;
}

core.List<core.String> buildUnnamed215() => ['foo', 'foo'];

void checkUnnamed215(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.Map<core.String, core.String> buildUnnamed216() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed216(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.int buildCounterTrinoJob = 0;
api.TrinoJob buildTrinoJob() {
  final o = api.TrinoJob();
  buildCounterTrinoJob++;
  if (buildCounterTrinoJob < 3) {
    o.clientTags = buildUnnamed215();
    o.continueOnFailure = true;
    o.loggingConfig = buildLoggingConfig();
    o.outputFormat = 'foo';
    o.properties = buildUnnamed216();
    o.queryFileUri = 'foo';
    o.queryList = buildQueryList();
  }
  buildCounterTrinoJob--;
  return o;
}

void checkTrinoJob(api.TrinoJob o) {
  buildCounterTrinoJob++;
  if (buildCounterTrinoJob < 3) {
    checkUnnamed215(o.clientTags!);
    unittest.expect(o.continueOnFailure!, unittest.isTrue);
    checkLoggingConfig(o.loggingConfig!);
    unittest.expect(o.outputFormat!, unittest.equals('foo'));
    checkUnnamed216(o.properties!);
    unittest.expect(o.queryFileUri!, unittest.equals('foo'));
    checkQueryList(o.queryList!);
  }
  buildCounterTrinoJob--;
}

core.int buildCounterUsageMetrics = 0;
api.UsageMetrics buildUsageMetrics() {
  final o = api.UsageMetrics();
  buildCounterUsageMetrics++;
  if (buildCounterUsageMetrics < 3) {
    o.acceleratorType = 'foo';
    o.milliAcceleratorSeconds = 'foo';
    o.milliDcuSeconds = 'foo';
    o.shuffleStorageGbSeconds = 'foo';
  }
  buildCounterUsageMetrics--;
  return o;
}

void checkUsageMetrics(api.UsageMetrics o) {
  buildCounterUsageMetrics++;
  if (buildCounterUsageMetrics < 3) {
    unittest.expect(o.acceleratorType!, unittest.equals('foo'));
    unittest.expect(o.milliAcceleratorSeconds!, unittest.equals('foo'));
    unittest.expect(o.milliDcuSeconds!, unittest.equals('foo'));
    unittest.expect(o.shuffleStorageGbSeconds!, unittest.equals('foo'));
  }
  buildCounterUsageMetrics--;
}

core.int buildCounterUsageSnapshot = 0;
api.UsageSnapshot buildUsageSnapshot() {
  final o = api.UsageSnapshot();
  buildCounterUsageSnapshot++;
  if (buildCounterUsageSnapshot < 3) {
    o.acceleratorType = 'foo';
    o.milliAccelerator = 'foo';
    o.milliDcu = 'foo';
    o.milliDcuPremium = 'foo';
    o.shuffleStorageGb = 'foo';
    o.shuffleStorageGbPremium = 'foo';
    o.snapshotTime = 'foo';
  }
  buildCounterUsageSnapshot--;
  return o;
}

void checkUsageSnapshot(api.UsageSnapshot o) {
  buildCounterUsageSnapshot++;
  if (buildCounterUsageSnapshot < 3) {
    unittest.expect(o.acceleratorType!, unittest.equals('foo'));
    unittest.expect(o.milliAccelerator!, unittest.equals('foo'));
    unittest.expect(o.milliDcu!, unittest.equals('foo'));
    unittest.expect(o.milliDcuPremium!, unittest.equals('foo'));
    unittest.expect(o.shuffleStorageGb!, unittest.equals('foo'));
    unittest.expect(o.shuffleStorageGbPremium!, unittest.equals('foo'));
    unittest.expect(o.snapshotTime!, unittest.equals('foo'));
  }
  buildCounterUsageSnapshot--;
}

core.List<core.String> buildUnnamed217() => ['foo', 'foo'];

void checkUnnamed217(core.List<core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o[0], unittest.equals('foo'));
  unittest.expect(o[1], unittest.equals('foo'));
}

core.int buildCounterValueValidation = 0;
api.ValueValidation buildValueValidation() {
  final o = api.ValueValidation();
  buildCounterValueValidation++;
  if (buildCounterValueValidation < 3) {
    o.values = buildUnnamed217();
  }
  buildCounterValueValidation--;
  return o;
}

void checkValueValidation(api.ValueValidation o) {
  buildCounterValueValidation++;
  if (buildCounterValueValidation < 3) {
    checkUnnamed217(o.values!);
  }
  buildCounterValueValidation--;
}

core.int buildCounterVirtualClusterConfig = 0;
api.VirtualClusterConfig buildVirtualClusterConfig() {
  final o = api.VirtualClusterConfig();
  buildCounterVirtualClusterConfig++;
  if (buildCounterVirtualClusterConfig < 3) {
    o.auxiliaryServicesConfig = buildAuxiliaryServicesConfig();
    o.kubernetesClusterConfig = buildKubernetesClusterConfig();
    o.stagingBucket = 'foo';
  }
  buildCounterVirtualClusterConfig--;
  return o;
}

void checkVirtualClusterConfig(api.VirtualClusterConfig o) {
  buildCounterVirtualClusterConfig++;
  if (buildCounterVirtualClusterConfig < 3) {
    checkAuxiliaryServicesConfig(o.auxiliaryServicesConfig!);
    checkKubernetesClusterConfig(o.kubernetesClusterConfig!);
    unittest.expect(o.stagingBucket!, unittest.equals('foo'));
  }
  buildCounterVirtualClusterConfig--;
}

core.List<api.OrderedJob> buildUnnamed218() => [
      buildOrderedJob(),
      buildOrderedJob(),
    ];

void checkUnnamed218(core.List<api.OrderedJob> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkOrderedJob(o[0]);
  checkOrderedJob(o[1]);
}

core.Map<core.String, core.String> buildUnnamed219() => {
      'x': 'foo',
      'y': 'foo',
    };

void checkUnnamed219(core.Map<core.String, core.String> o) {
  unittest.expect(o, unittest.hasLength(2));
  unittest.expect(o['x']!, unittest.equals('foo'));
  unittest.expect(o['y']!, unittest.equals('foo'));
}

core.List<api.TemplateParameter> buildUnnamed220() => [
      buildTemplateParameter(),
      buildTemplateParameter(),
    ];

void checkUnnamed220(core.List<api.TemplateParameter> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkTemplateParameter(o[0]);
  checkTemplateParameter(o[1]);
}

core.int buildCounterWorkflowTemplate = 0;
api.WorkflowTemplate buildWorkflowTemplate() {
  final o = api.WorkflowTemplate();
  buildCounterWorkflowTemplate++;
  if (buildCounterWorkflowTemplate < 3) {
    o.createTime = 'foo';
    o.dagTimeout = 'foo';
    o.encryptionConfig =
        buildGoogleCloudDataprocV1WorkflowTemplateEncryptionConfig();
    o.id = 'foo';
    o.jobs = buildUnnamed218();
    o.labels = buildUnnamed219();
    o.name = 'foo';
    o.parameters = buildUnnamed220();
    o.placement = buildWorkflowTemplatePlacement();
    o.updateTime = 'foo';
    o.version = 42;
  }
  buildCounterWorkflowTemplate--;
  return o;
}

void checkWorkflowTemplate(api.WorkflowTemplate o) {
  buildCounterWorkflowTemplate++;
  if (buildCounterWorkflowTemplate < 3) {
    unittest.expect(o.createTime!, unittest.equals('foo'));
    unittest.expect(o.dagTimeout!, unittest.equals('foo'));
    checkGoogleCloudDataprocV1WorkflowTemplateEncryptionConfig(
      o.encryptionConfig!,
    );
    unittest.expect(o.id!, unittest.equals('foo'));
    checkUnnamed218(o.jobs!);
    checkUnnamed219(o.labels!);
    unittest.expect(o.name!, unittest.equals('foo'));
    checkUnnamed220(o.parameters!);
    checkWorkflowTemplatePlacement(o.placement!);
    unittest.expect(o.updateTime!, unittest.equals('foo'));
    unittest.expect(o.version!, unittest.equals(42));
  }
  buildCounterWorkflowTemplate--;
}

core.int buildCounterWorkflowTemplatePlacement = 0;
api.WorkflowTemplatePlacement buildWorkflowTemplatePlacement() {
  final o = api.WorkflowTemplatePlacement();
  buildCounterWorkflowTemplatePlacement++;
  if (buildCounterWorkflowTemplatePlacement < 3) {
    o.clusterSelector = buildClusterSelector();
    o.managedCluster = buildManagedCluster();
  }
  buildCounterWorkflowTemplatePlacement--;
  return o;
}

void checkWorkflowTemplatePlacement(api.WorkflowTemplatePlacement o) {
  buildCounterWorkflowTemplatePlacement++;
  if (buildCounterWorkflowTemplatePlacement < 3) {
    checkClusterSelector(o.clusterSelector!);
    checkManagedCluster(o.managedCluster!);
  }
  buildCounterWorkflowTemplatePlacement--;
}

core.List<api.SparkWrapperObject> buildUnnamed221() => [
      buildSparkWrapperObject(),
      buildSparkWrapperObject(),
    ];

void checkUnnamed221(core.List<api.SparkWrapperObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSparkWrapperObject(o[0]);
  checkSparkWrapperObject(o[1]);
}

core.int buildCounterWriteSessionSparkApplicationContextRequest = 0;
api.WriteSessionSparkApplicationContextRequest
    buildWriteSessionSparkApplicationContextRequest() {
  final o = api.WriteSessionSparkApplicationContextRequest();
  buildCounterWriteSessionSparkApplicationContextRequest++;
  if (buildCounterWriteSessionSparkApplicationContextRequest < 3) {
    o.parent = 'foo';
    o.sparkWrapperObjects = buildUnnamed221();
  }
  buildCounterWriteSessionSparkApplicationContextRequest--;
  return o;
}

void checkWriteSessionSparkApplicationContextRequest(
  api.WriteSessionSparkApplicationContextRequest o,
) {
  buildCounterWriteSessionSparkApplicationContextRequest++;
  if (buildCounterWriteSessionSparkApplicationContextRequest < 3) {
    unittest.expect(o.parent!, unittest.equals('foo'));
    checkUnnamed221(o.sparkWrapperObjects!);
  }
  buildCounterWriteSessionSparkApplicationContextRequest--;
}

core.int buildCounterWriteSessionSparkApplicationContextResponse = 0;
api.WriteSessionSparkApplicationContextResponse
    buildWriteSessionSparkApplicationContextResponse() {
  final o = api.WriteSessionSparkApplicationContextResponse();
  buildCounterWriteSessionSparkApplicationContextResponse++;
  if (buildCounterWriteSessionSparkApplicationContextResponse < 3) {}
  buildCounterWriteSessionSparkApplicationContextResponse--;
  return o;
}

void checkWriteSessionSparkApplicationContextResponse(
  api.WriteSessionSparkApplicationContextResponse o,
) {
  buildCounterWriteSessionSparkApplicationContextResponse++;
  if (buildCounterWriteSessionSparkApplicationContextResponse < 3) {}
  buildCounterWriteSessionSparkApplicationContextResponse--;
}

core.List<api.SparkWrapperObject> buildUnnamed222() => [
      buildSparkWrapperObject(),
      buildSparkWrapperObject(),
    ];

void checkUnnamed222(core.List<api.SparkWrapperObject> o) {
  unittest.expect(o, unittest.hasLength(2));
  checkSparkWrapperObject(o[0]);
  checkSparkWrapperObject(o[1]);
}

core.int buildCounterWriteSparkApplicationContextRequest = 0;
api.WriteSparkApplicationContextRequest
    buildWriteSparkApplicationContextRequest() {
  final o = api.WriteSparkApplicationContextRequest();
  buildCounterWriteSparkApplicationContextRequest++;
  if (buildCounterWriteSparkApplicationContextRequest < 3) {
    o.parent = 'foo';
    o.sparkWrapperObjects = buildUnnamed222();
  }
  buildCounterWriteSparkApplicationContextRequest--;
  return o;
}

void checkWriteSparkApplicationContextRequest(
  api.WriteSparkApplicationContextRequest o,
) {
  buildCounterWriteSparkApplicationContextRequest++;
  if (buildCounterWriteSparkApplicationContextRequest < 3) {
    unittest.expect(o.parent!, unittest.equals('foo'));
    checkUnnamed222(o.sparkWrapperObjects!);
  }
  buildCounterWriteSparkApplicationContextRequest--;
}

core.int buildCounterWriteSparkApplicationContextResponse = 0;
api.WriteSparkApplicationContextResponse
    buildWriteSparkApplicationContextResponse() {
  final o = api.WriteSparkApplicationContextResponse();
  buildCounterWriteSparkApplicationContextResponse++;
  if (buildCounterWriteSparkApplicationContextResponse < 3) {}
  buildCounterWriteSparkApplicationContextResponse--;
  return o;
}

void checkWriteSparkApplicationContextResponse(
  api.WriteSparkApplicationContextResponse o,
) {
  buildCounterWriteSparkApplicationContextResponse++;
  if (buildCounterWriteSparkApplicationContextResponse < 3) {}
  buildCounterWriteSparkApplicationContextResponse--;
}

core.int buildCounterYarnApplication = 0;
api.YarnApplication buildYarnApplication() {
  final o = api.YarnApplication();
  buildCounterYarnApplication++;
  if (buildCounterYarnApplication < 3) {
    o.name = 'foo';
    o.progress = 42.0;
    o.state = 'foo';
    o.trackingUrl = 'foo';
  }
  buildCounterYarnApplication--;
  return o;
}

void checkYarnApplication(api.YarnApplication o) {
  buildCounterYarnApplication++;
  if (buildCounterYarnApplication < 3) {
    unittest.expect(o.name!, unittest.equals('foo'));
    unittest.expect(o.progress!, unittest.equals(42.0));
    unittest.expect(o.state!, unittest.equals('foo'));
    unittest.expect(o.trackingUrl!, unittest.equals('foo'));
  }
  buildCounterYarnApplication--;
}

void main() {
  unittest.group('obj-schema-AcceleratorConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAcceleratorConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AcceleratorConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAcceleratorConfig(od);
    });
  });

  unittest.group(
    'obj-schema-AccessSessionSparkApplicationEnvironmentInfoResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildAccessSessionSparkApplicationEnvironmentInfoResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.AccessSessionSparkApplicationEnvironmentInfoResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkAccessSessionSparkApplicationEnvironmentInfoResponse(od);
      });
    },
  );

  unittest.group('obj-schema-AccessSessionSparkApplicationJobResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccessSessionSparkApplicationJobResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccessSessionSparkApplicationJobResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccessSessionSparkApplicationJobResponse(od);
    });
  });

  unittest.group('obj-schema-AccessSessionSparkApplicationResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccessSessionSparkApplicationResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccessSessionSparkApplicationResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccessSessionSparkApplicationResponse(od);
    });
  });

  unittest.group(
    'obj-schema-AccessSessionSparkApplicationSqlQueryResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildAccessSessionSparkApplicationSqlQueryResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.AccessSessionSparkApplicationSqlQueryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkAccessSessionSparkApplicationSqlQueryResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-AccessSessionSparkApplicationSqlSparkPlanGraphResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildAccessSessionSparkApplicationSqlSparkPlanGraphResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.AccessSessionSparkApplicationSqlSparkPlanGraphResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkAccessSessionSparkApplicationSqlSparkPlanGraphResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-AccessSessionSparkApplicationStageAttemptResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildAccessSessionSparkApplicationStageAttemptResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.AccessSessionSparkApplicationStageAttemptResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkAccessSessionSparkApplicationStageAttemptResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-AccessSessionSparkApplicationStageRddOperationGraphResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildAccessSessionSparkApplicationStageRddOperationGraphResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.AccessSessionSparkApplicationStageRddOperationGraphResponse
                .fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkAccessSessionSparkApplicationStageRddOperationGraphResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-AccessSparkApplicationEnvironmentInfoResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildAccessSparkApplicationEnvironmentInfoResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.AccessSparkApplicationEnvironmentInfoResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkAccessSparkApplicationEnvironmentInfoResponse(od);
      });
    },
  );

  unittest.group('obj-schema-AccessSparkApplicationJobResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccessSparkApplicationJobResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccessSparkApplicationJobResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccessSparkApplicationJobResponse(od);
    });
  });

  unittest.group('obj-schema-AccessSparkApplicationResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccessSparkApplicationResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccessSparkApplicationResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccessSparkApplicationResponse(od);
    });
  });

  unittest.group('obj-schema-AccessSparkApplicationSqlQueryResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccessSparkApplicationSqlQueryResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccessSparkApplicationSqlQueryResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccessSparkApplicationSqlQueryResponse(od);
    });
  });

  unittest.group(
    'obj-schema-AccessSparkApplicationSqlSparkPlanGraphResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildAccessSparkApplicationSqlSparkPlanGraphResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.AccessSparkApplicationSqlSparkPlanGraphResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkAccessSparkApplicationSqlSparkPlanGraphResponse(od);
      });
    },
  );

  unittest.group('obj-schema-AccessSparkApplicationStageAttemptResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccessSparkApplicationStageAttemptResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccessSparkApplicationStageAttemptResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccessSparkApplicationStageAttemptResponse(od);
    });
  });

  unittest.group(
    'obj-schema-AccessSparkApplicationStageRddOperationGraphResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildAccessSparkApplicationStageRddOperationGraphResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.AccessSparkApplicationStageRddOperationGraphResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkAccessSparkApplicationStageRddOperationGraphResponse(od);
      });
    },
  );

  unittest.group('obj-schema-AccumulableInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAccumulableInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AccumulableInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAccumulableInfo(od);
    });
  });

  unittest.group('obj-schema-AnalyzeBatchRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAnalyzeBatchRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AnalyzeBatchRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAnalyzeBatchRequest(od);
    });
  });

  unittest.group('obj-schema-AppSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAppSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AppSummary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAppSummary(od);
    });
  });

  unittest.group('obj-schema-ApplicationAttemptInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplicationAttemptInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplicationAttemptInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApplicationAttemptInfo(od);
    });
  });

  unittest.group('obj-schema-ApplicationEnvironmentInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplicationEnvironmentInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplicationEnvironmentInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApplicationEnvironmentInfo(od);
    });
  });

  unittest.group('obj-schema-ApplicationInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildApplicationInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ApplicationInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkApplicationInfo(od);
    });
  });

  unittest.group('obj-schema-AutoscalingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutoscalingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutoscalingConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutoscalingConfig(od);
    });
  });

  unittest.group('obj-schema-AutoscalingPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutoscalingPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutoscalingPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutoscalingPolicy(od);
    });
  });

  unittest.group('obj-schema-AutotuningConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAutotuningConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AutotuningConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAutotuningConfig(od);
    });
  });

  unittest.group('obj-schema-AuxiliaryNodeGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuxiliaryNodeGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuxiliaryNodeGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuxiliaryNodeGroup(od);
    });
  });

  unittest.group('obj-schema-AuxiliaryServicesConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildAuxiliaryServicesConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.AuxiliaryServicesConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkAuxiliaryServicesConfig(od);
    });
  });

  unittest.group('obj-schema-BasicAutoscalingAlgorithm', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBasicAutoscalingAlgorithm();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BasicAutoscalingAlgorithm.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBasicAutoscalingAlgorithm(od);
    });
  });

  unittest.group('obj-schema-BasicYarnAutoscalingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBasicYarnAutoscalingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.BasicYarnAutoscalingConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBasicYarnAutoscalingConfig(od);
    });
  });

  unittest.group('obj-schema-Batch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Batch.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBatch(od);
    });
  });

  unittest.group('obj-schema-Binding', () {
    unittest.test('to-json--from-json', () async {
      final o = buildBinding();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Binding.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkBinding(od);
    });
  });

  unittest.group('obj-schema-CancelJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCancelJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.CancelJobRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCancelJobRequest(od);
    });
  });

  unittest.group('obj-schema-Cluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Cluster.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkCluster(od);
    });
  });

  unittest.group('obj-schema-ClusterConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkClusterConfig(od);
    });
  });

  unittest.group('obj-schema-ClusterMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkClusterMetrics(od);
    });
  });

  unittest.group('obj-schema-ClusterSelector', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterSelector();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterSelector.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkClusterSelector(od);
    });
  });

  unittest.group('obj-schema-ClusterStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkClusterStatus(od);
    });
  });

  unittest.group('obj-schema-ClusterToRepair', () {
    unittest.test('to-json--from-json', () async {
      final o = buildClusterToRepair();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ClusterToRepair.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkClusterToRepair(od);
    });
  });

  unittest.group('obj-schema-ConfidentialInstanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConfidentialInstanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConfidentialInstanceConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConfidentialInstanceConfig(od);
    });
  });

  unittest.group('obj-schema-ConsolidatedExecutorSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildConsolidatedExecutorSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ConsolidatedExecutorSummary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkConsolidatedExecutorSummary(od);
    });
  });

  unittest.group('obj-schema-DataprocMetricConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDataprocMetricConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DataprocMetricConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDataprocMetricConfig(od);
    });
  });

  unittest.group('obj-schema-DiagnoseClusterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiagnoseClusterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiagnoseClusterRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDiagnoseClusterRequest(od);
    });
  });

  unittest.group('obj-schema-DiskConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDiskConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DiskConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDiskConfig(od);
    });
  });

  unittest.group('obj-schema-DriverSchedulingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildDriverSchedulingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.DriverSchedulingConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkDriverSchedulingConfig(od);
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

  unittest.group('obj-schema-EncryptionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEncryptionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EncryptionConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEncryptionConfig(od);
    });
  });

  unittest.group('obj-schema-EndpointConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEndpointConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EndpointConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEndpointConfig(od);
    });
  });

  unittest.group('obj-schema-EnvironmentConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildEnvironmentConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.EnvironmentConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkEnvironmentConfig(od);
    });
  });

  unittest.group('obj-schema-ExecutionConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecutionConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecutionConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExecutionConfig(od);
    });
  });

  unittest.group('obj-schema-ExecutorMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecutorMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecutorMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExecutorMetrics(od);
    });
  });

  unittest.group('obj-schema-ExecutorMetricsDistributions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecutorMetricsDistributions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecutorMetricsDistributions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExecutorMetricsDistributions(od);
    });
  });

  unittest.group('obj-schema-ExecutorPeakMetricsDistributions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecutorPeakMetricsDistributions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecutorPeakMetricsDistributions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExecutorPeakMetricsDistributions(od);
    });
  });

  unittest.group('obj-schema-ExecutorResourceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecutorResourceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecutorResourceRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExecutorResourceRequest(od);
    });
  });

  unittest.group('obj-schema-ExecutorStageSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecutorStageSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecutorStageSummary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExecutorStageSummary(od);
    });
  });

  unittest.group('obj-schema-ExecutorSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExecutorSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ExecutorSummary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExecutorSummary(od);
    });
  });

  unittest.group('obj-schema-Expr', () {
    unittest.test('to-json--from-json', () async {
      final o = buildExpr();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Expr.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkExpr(od);
    });
  });

  unittest.group('obj-schema-FlinkJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildFlinkJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.FlinkJob.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkFlinkJob(od);
    });
  });

  unittest.group('obj-schema-GceClusterConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGceClusterConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GceClusterConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGceClusterConfig(od);
    });
  });

  unittest.group('obj-schema-GetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetIamPolicyRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-GetPolicyOptions', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGetPolicyOptions();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GetPolicyOptions.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGetPolicyOptions(od);
    });
  });

  unittest.group('obj-schema-GkeClusterConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGkeClusterConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GkeClusterConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGkeClusterConfig(od);
    });
  });

  unittest.group('obj-schema-GkeNodeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGkeNodeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GkeNodeConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGkeNodeConfig(od);
    });
  });

  unittest.group('obj-schema-GkeNodePoolAcceleratorConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGkeNodePoolAcceleratorConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GkeNodePoolAcceleratorConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGkeNodePoolAcceleratorConfig(od);
    });
  });

  unittest.group('obj-schema-GkeNodePoolAutoscalingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGkeNodePoolAutoscalingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GkeNodePoolAutoscalingConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGkeNodePoolAutoscalingConfig(od);
    });
  });

  unittest.group('obj-schema-GkeNodePoolConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGkeNodePoolConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GkeNodePoolConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGkeNodePoolConfig(od);
    });
  });

  unittest.group('obj-schema-GkeNodePoolTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildGkeNodePoolTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.GkeNodePoolTarget.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkGkeNodePoolTarget(od);
    });
  });

  unittest.group(
    'obj-schema-GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildGoogleCloudDataprocV1WorkflowTemplateEncryptionConfig();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.GoogleCloudDataprocV1WorkflowTemplateEncryptionConfig.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkGoogleCloudDataprocV1WorkflowTemplateEncryptionConfig(od);
      });
    },
  );

  unittest.group('obj-schema-HadoopJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHadoopJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HadoopJob.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHadoopJob(od);
    });
  });

  unittest.group('obj-schema-HiveJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildHiveJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.HiveJob.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkHiveJob(od);
    });
  });

  unittest.group('obj-schema-IdentityConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildIdentityConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.IdentityConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkIdentityConfig(od);
    });
  });

  unittest.group('obj-schema-InjectCredentialsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInjectCredentialsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InjectCredentialsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInjectCredentialsRequest(od);
    });
  });

  unittest.group('obj-schema-InputMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInputMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InputMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInputMetrics(od);
    });
  });

  unittest.group('obj-schema-InputQuantileMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInputQuantileMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InputQuantileMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInputQuantileMetrics(od);
    });
  });

  unittest.group('obj-schema-InstanceFlexibilityPolicy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstanceFlexibilityPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstanceFlexibilityPolicy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInstanceFlexibilityPolicy(od);
    });
  });

  unittest.group('obj-schema-InstanceGroupAutoscalingPolicyConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstanceGroupAutoscalingPolicyConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstanceGroupAutoscalingPolicyConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInstanceGroupAutoscalingPolicyConfig(od);
    });
  });

  unittest.group('obj-schema-InstanceGroupConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstanceGroupConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstanceGroupConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInstanceGroupConfig(od);
    });
  });

  unittest.group('obj-schema-InstanceReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstanceReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstanceReference.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInstanceReference(od);
    });
  });

  unittest.group('obj-schema-InstanceSelection', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstanceSelection();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstanceSelection.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInstanceSelection(od);
    });
  });

  unittest.group('obj-schema-InstanceSelectionResult', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstanceSelectionResult();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstanceSelectionResult.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInstanceSelectionResult(od);
    });
  });

  unittest.group('obj-schema-InstantiateWorkflowTemplateRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInstantiateWorkflowTemplateRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.InstantiateWorkflowTemplateRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInstantiateWorkflowTemplateRequest(od);
    });
  });

  unittest.group('obj-schema-Interval', () {
    unittest.test('to-json--from-json', () async {
      final o = buildInterval();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Interval.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkInterval(od);
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

  unittest.group('obj-schema-JobData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkJobData(od);
    });
  });

  unittest.group('obj-schema-JobPlacement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobPlacement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobPlacement.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkJobPlacement(od);
    });
  });

  unittest.group('obj-schema-JobReference', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobReference();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobReference.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkJobReference(od);
    });
  });

  unittest.group('obj-schema-JobScheduling', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobScheduling();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobScheduling.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkJobScheduling(od);
    });
  });

  unittest.group('obj-schema-JobStatus', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobStatus();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobStatus.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkJobStatus(od);
    });
  });

  unittest.group('obj-schema-JobsSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJobsSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JobsSummary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkJobsSummary(od);
    });
  });

  unittest.group('obj-schema-JupyterConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildJupyterConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.JupyterConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkJupyterConfig(od);
    });
  });

  unittest.group('obj-schema-KerberosConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKerberosConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KerberosConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkKerberosConfig(od);
    });
  });

  unittest.group('obj-schema-KubernetesClusterConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKubernetesClusterConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KubernetesClusterConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkKubernetesClusterConfig(od);
    });
  });

  unittest.group('obj-schema-KubernetesSoftwareConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildKubernetesSoftwareConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.KubernetesSoftwareConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkKubernetesSoftwareConfig(od);
    });
  });

  unittest.group('obj-schema-LifecycleConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLifecycleConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LifecycleConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLifecycleConfig(od);
    });
  });

  unittest.group('obj-schema-ListAutoscalingPoliciesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListAutoscalingPoliciesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListAutoscalingPoliciesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListAutoscalingPoliciesResponse(od);
    });
  });

  unittest.group('obj-schema-ListBatchesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListBatchesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListBatchesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListBatchesResponse(od);
    });
  });

  unittest.group('obj-schema-ListClustersResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListClustersResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListClustersResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListClustersResponse(od);
    });
  });

  unittest.group('obj-schema-ListJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListJobsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListJobsResponse(od);
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

  unittest.group('obj-schema-ListSessionTemplatesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSessionTemplatesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSessionTemplatesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListSessionTemplatesResponse(od);
    });
  });

  unittest.group('obj-schema-ListSessionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListSessionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListSessionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListSessionsResponse(od);
    });
  });

  unittest.group('obj-schema-ListWorkflowTemplatesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildListWorkflowTemplatesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ListWorkflowTemplatesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkListWorkflowTemplatesResponse(od);
    });
  });

  unittest.group('obj-schema-LoggingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildLoggingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.LoggingConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkLoggingConfig(od);
    });
  });

  unittest.group('obj-schema-ManagedCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedCluster.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkManagedCluster(od);
    });
  });

  unittest.group('obj-schema-ManagedGroupConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildManagedGroupConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ManagedGroupConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkManagedGroupConfig(od);
    });
  });

  unittest.group('obj-schema-MemoryMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMemoryMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MemoryMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMemoryMetrics(od);
    });
  });

  unittest.group('obj-schema-MetastoreConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetastoreConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.MetastoreConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMetastoreConfig(od);
    });
  });

  unittest.group('obj-schema-Metric', () {
    unittest.test('to-json--from-json', () async {
      final o = buildMetric();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Metric.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkMetric(od);
    });
  });

  unittest.group('obj-schema-NamespacedGkeDeploymentTarget', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNamespacedGkeDeploymentTarget();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NamespacedGkeDeploymentTarget.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNamespacedGkeDeploymentTarget(od);
    });
  });

  unittest.group('obj-schema-NodeGroup', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodeGroup();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NodeGroup.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNodeGroup(od);
    });
  });

  unittest.group('obj-schema-NodeGroupAffinity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodeGroupAffinity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NodeGroupAffinity.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNodeGroupAffinity(od);
    });
  });

  unittest.group('obj-schema-NodeInitializationAction', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodeInitializationAction();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NodeInitializationAction.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNodeInitializationAction(od);
    });
  });

  unittest.group('obj-schema-NodePool', () {
    unittest.test('to-json--from-json', () async {
      final o = buildNodePool();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.NodePool.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkNodePool(od);
    });
  });

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

  unittest.group('obj-schema-OrderedJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOrderedJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OrderedJob.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOrderedJob(od);
    });
  });

  unittest.group('obj-schema-OutputMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOutputMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OutputMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOutputMetrics(od);
    });
  });

  unittest.group('obj-schema-OutputQuantileMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildOutputQuantileMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.OutputQuantileMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkOutputQuantileMetrics(od);
    });
  });

  unittest.group('obj-schema-ParameterValidation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildParameterValidation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ParameterValidation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkParameterValidation(od);
    });
  });

  unittest.group('obj-schema-PeripheralsConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPeripheralsConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PeripheralsConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPeripheralsConfig(od);
    });
  });

  unittest.group('obj-schema-PigJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPigJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PigJob.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPigJob(od);
    });
  });

  unittest.group('obj-schema-Policy', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPolicy();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Policy.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPolicy(od);
    });
  });

  unittest.group('obj-schema-PoolData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPoolData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PoolData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPoolData(od);
    });
  });

  unittest.group('obj-schema-PrestoJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPrestoJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PrestoJob.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPrestoJob(od);
    });
  });

  unittest.group('obj-schema-ProcessSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProcessSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProcessSummary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProcessSummary(od);
    });
  });

  unittest.group('obj-schema-ProvisioningModelMix', () {
    unittest.test('to-json--from-json', () async {
      final o = buildProvisioningModelMix();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ProvisioningModelMix.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkProvisioningModelMix(od);
    });
  });

  unittest.group('obj-schema-PyPiRepositoryConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPyPiRepositoryConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PyPiRepositoryConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPyPiRepositoryConfig(od);
    });
  });

  unittest.group('obj-schema-PySparkBatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPySparkBatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PySparkBatch.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPySparkBatch(od);
    });
  });

  unittest.group('obj-schema-PySparkJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildPySparkJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.PySparkJob.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkPySparkJob(od);
    });
  });

  unittest.group('obj-schema-Quantiles', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQuantiles();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Quantiles.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQuantiles(od);
    });
  });

  unittest.group('obj-schema-QueryList', () {
    unittest.test('to-json--from-json', () async {
      final o = buildQueryList();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.QueryList.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkQueryList(od);
    });
  });

  unittest.group('obj-schema-RddDataDistribution', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRddDataDistribution();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RddDataDistribution.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRddDataDistribution(od);
    });
  });

  unittest.group('obj-schema-RddOperationCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRddOperationCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RddOperationCluster.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRddOperationCluster(od);
    });
  });

  unittest.group('obj-schema-RddOperationEdge', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRddOperationEdge();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RddOperationEdge.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRddOperationEdge(od);
    });
  });

  unittest.group('obj-schema-RddOperationGraph', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRddOperationGraph();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RddOperationGraph.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRddOperationGraph(od);
    });
  });

  unittest.group('obj-schema-RddOperationNode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRddOperationNode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RddOperationNode.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRddOperationNode(od);
    });
  });

  unittest.group('obj-schema-RddPartitionInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRddPartitionInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RddPartitionInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRddPartitionInfo(od);
    });
  });

  unittest.group('obj-schema-RddStorageInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRddStorageInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RddStorageInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRddStorageInfo(od);
    });
  });

  unittest.group('obj-schema-RegexValidation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRegexValidation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RegexValidation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRegexValidation(od);
    });
  });

  unittest.group('obj-schema-RepairClusterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepairClusterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RepairClusterRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRepairClusterRequest(od);
    });
  });

  unittest.group('obj-schema-RepairNodeGroupRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepairNodeGroupRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RepairNodeGroupRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRepairNodeGroupRequest(od);
    });
  });

  unittest.group('obj-schema-RepositoryConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRepositoryConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RepositoryConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRepositoryConfig(od);
    });
  });

  unittest.group('obj-schema-ReservationAffinity', () {
    unittest.test('to-json--from-json', () async {
      final o = buildReservationAffinity();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ReservationAffinity.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkReservationAffinity(od);
    });
  });

  unittest.group('obj-schema-ResizeNodeGroupRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResizeNodeGroupRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResizeNodeGroupRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResizeNodeGroupRequest(od);
    });
  });

  unittest.group('obj-schema-ResourceInformation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceInformation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceInformation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResourceInformation(od);
    });
  });

  unittest.group('obj-schema-ResourceProfileInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildResourceProfileInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ResourceProfileInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkResourceProfileInfo(od);
    });
  });

  unittest.group('obj-schema-RuntimeConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRuntimeConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RuntimeConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRuntimeConfig(od);
    });
  });

  unittest.group('obj-schema-RuntimeInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildRuntimeInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.RuntimeInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkRuntimeInfo(od);
    });
  });

  unittest.group(
    'obj-schema-SearchSessionSparkApplicationExecutorStageSummaryResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildSearchSessionSparkApplicationExecutorStageSummaryResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.SearchSessionSparkApplicationExecutorStageSummaryResponse
            .fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkSearchSessionSparkApplicationExecutorStageSummaryResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-SearchSessionSparkApplicationExecutorsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildSearchSessionSparkApplicationExecutorsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.SearchSessionSparkApplicationExecutorsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkSearchSessionSparkApplicationExecutorsResponse(od);
      });
    },
  );

  unittest.group('obj-schema-SearchSessionSparkApplicationJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchSessionSparkApplicationJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchSessionSparkApplicationJobsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSearchSessionSparkApplicationJobsResponse(od);
    });
  });

  unittest.group(
    'obj-schema-SearchSessionSparkApplicationSqlQueriesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildSearchSessionSparkApplicationSqlQueriesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.SearchSessionSparkApplicationSqlQueriesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkSearchSessionSparkApplicationSqlQueriesResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-SearchSessionSparkApplicationStageAttemptTasksResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildSearchSessionSparkApplicationStageAttemptTasksResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.SearchSessionSparkApplicationStageAttemptTasksResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkSearchSessionSparkApplicationStageAttemptTasksResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-SearchSessionSparkApplicationStageAttemptsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildSearchSessionSparkApplicationStageAttemptsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.SearchSessionSparkApplicationStageAttemptsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkSearchSessionSparkApplicationStageAttemptsResponse(od);
      });
    },
  );

  unittest.group('obj-schema-SearchSessionSparkApplicationStagesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchSessionSparkApplicationStagesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchSessionSparkApplicationStagesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSearchSessionSparkApplicationStagesResponse(od);
    });
  });

  unittest.group('obj-schema-SearchSessionSparkApplicationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchSessionSparkApplicationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchSessionSparkApplicationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSearchSessionSparkApplicationsResponse(od);
    });
  });

  unittest.group(
    'obj-schema-SearchSparkApplicationExecutorStageSummaryResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildSearchSparkApplicationExecutorStageSummaryResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.SearchSparkApplicationExecutorStageSummaryResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkSearchSparkApplicationExecutorStageSummaryResponse(od);
      });
    },
  );

  unittest.group('obj-schema-SearchSparkApplicationExecutorsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchSparkApplicationExecutorsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchSparkApplicationExecutorsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSearchSparkApplicationExecutorsResponse(od);
    });
  });

  unittest.group('obj-schema-SearchSparkApplicationJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchSparkApplicationJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchSparkApplicationJobsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSearchSparkApplicationJobsResponse(od);
    });
  });

  unittest.group('obj-schema-SearchSparkApplicationSqlQueriesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchSparkApplicationSqlQueriesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchSparkApplicationSqlQueriesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSearchSparkApplicationSqlQueriesResponse(od);
    });
  });

  unittest.group(
    'obj-schema-SearchSparkApplicationStageAttemptTasksResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildSearchSparkApplicationStageAttemptTasksResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.SearchSparkApplicationStageAttemptTasksResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkSearchSparkApplicationStageAttemptTasksResponse(od);
      });
    },
  );

  unittest.group('obj-schema-SearchSparkApplicationStageAttemptsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchSparkApplicationStageAttemptsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchSparkApplicationStageAttemptsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSearchSparkApplicationStageAttemptsResponse(od);
    });
  });

  unittest.group('obj-schema-SearchSparkApplicationStagesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchSparkApplicationStagesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchSparkApplicationStagesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSearchSparkApplicationStagesResponse(od);
    });
  });

  unittest.group('obj-schema-SearchSparkApplicationsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSearchSparkApplicationsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SearchSparkApplicationsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSearchSparkApplicationsResponse(od);
    });
  });

  unittest.group('obj-schema-SecurityConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSecurityConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SecurityConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSecurityConfig(od);
    });
  });

  unittest.group('obj-schema-Session', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSession();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.Session.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSession(od);
    });
  });

  unittest.group('obj-schema-SessionStateHistory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSessionStateHistory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SessionStateHistory.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSessionStateHistory(od);
    });
  });

  unittest.group('obj-schema-SessionTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSessionTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SessionTemplate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSessionTemplate(od);
    });
  });

  unittest.group('obj-schema-SetIamPolicyRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSetIamPolicyRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SetIamPolicyRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSetIamPolicyRequest(od);
    });
  });

  unittest.group('obj-schema-ShieldedInstanceConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShieldedInstanceConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShieldedInstanceConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkShieldedInstanceConfig(od);
    });
  });

  unittest.group('obj-schema-ShufflePushReadMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShufflePushReadMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShufflePushReadMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkShufflePushReadMetrics(od);
    });
  });

  unittest.group('obj-schema-ShufflePushReadQuantileMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShufflePushReadQuantileMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShufflePushReadQuantileMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkShufflePushReadQuantileMetrics(od);
    });
  });

  unittest.group('obj-schema-ShuffleReadMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShuffleReadMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShuffleReadMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkShuffleReadMetrics(od);
    });
  });

  unittest.group('obj-schema-ShuffleReadQuantileMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShuffleReadQuantileMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShuffleReadQuantileMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkShuffleReadQuantileMetrics(od);
    });
  });

  unittest.group('obj-schema-ShuffleWriteMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShuffleWriteMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShuffleWriteMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkShuffleWriteMetrics(od);
    });
  });

  unittest.group('obj-schema-ShuffleWriteQuantileMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildShuffleWriteQuantileMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ShuffleWriteQuantileMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkShuffleWriteQuantileMetrics(od);
    });
  });

  unittest.group('obj-schema-SinkProgress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSinkProgress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SinkProgress.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSinkProgress(od);
    });
  });

  unittest.group('obj-schema-SoftwareConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSoftwareConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SoftwareConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSoftwareConfig(od);
    });
  });

  unittest.group('obj-schema-SourceProgress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSourceProgress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SourceProgress.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSourceProgress(od);
    });
  });

  unittest.group('obj-schema-SparkApplication', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSparkApplication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SparkApplication.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSparkApplication(od);
    });
  });

  unittest.group('obj-schema-SparkBatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSparkBatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SparkBatch.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSparkBatch(od);
    });
  });

  unittest.group('obj-schema-SparkConnectConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSparkConnectConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SparkConnectConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSparkConnectConfig(od);
    });
  });

  unittest.group('obj-schema-SparkHistoryServerConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSparkHistoryServerConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SparkHistoryServerConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSparkHistoryServerConfig(od);
    });
  });

  unittest.group('obj-schema-SparkJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSparkJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SparkJob.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSparkJob(od);
    });
  });

  unittest.group('obj-schema-SparkPlanGraph', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSparkPlanGraph();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SparkPlanGraph.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSparkPlanGraph(od);
    });
  });

  unittest.group('obj-schema-SparkPlanGraphCluster', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSparkPlanGraphCluster();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SparkPlanGraphCluster.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSparkPlanGraphCluster(od);
    });
  });

  unittest.group('obj-schema-SparkPlanGraphEdge', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSparkPlanGraphEdge();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SparkPlanGraphEdge.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSparkPlanGraphEdge(od);
    });
  });

  unittest.group('obj-schema-SparkPlanGraphNode', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSparkPlanGraphNode();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SparkPlanGraphNode.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSparkPlanGraphNode(od);
    });
  });

  unittest.group('obj-schema-SparkPlanGraphNodeWrapper', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSparkPlanGraphNodeWrapper();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SparkPlanGraphNodeWrapper.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSparkPlanGraphNodeWrapper(od);
    });
  });

  unittest.group('obj-schema-SparkRBatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSparkRBatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SparkRBatch.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSparkRBatch(od);
    });
  });

  unittest.group('obj-schema-SparkRJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSparkRJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SparkRJob.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSparkRJob(od);
    });
  });

  unittest.group('obj-schema-SparkRuntimeInfo', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSparkRuntimeInfo();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SparkRuntimeInfo.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSparkRuntimeInfo(od);
    });
  });

  unittest.group('obj-schema-SparkSqlBatch', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSparkSqlBatch();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SparkSqlBatch.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSparkSqlBatch(od);
    });
  });

  unittest.group('obj-schema-SparkSqlJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSparkSqlJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SparkSqlJob.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSparkSqlJob(od);
    });
  });

  unittest.group('obj-schema-SparkStandaloneAutoscalingConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSparkStandaloneAutoscalingConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SparkStandaloneAutoscalingConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSparkStandaloneAutoscalingConfig(od);
    });
  });

  unittest.group('obj-schema-SparkWrapperObject', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSparkWrapperObject();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SparkWrapperObject.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSparkWrapperObject(od);
    });
  });

  unittest.group('obj-schema-SpeculationStageSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSpeculationStageSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SpeculationStageSummary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSpeculationStageSummary(od);
    });
  });

  unittest.group('obj-schema-SqlExecutionUiData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlExecutionUiData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlExecutionUiData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSqlExecutionUiData(od);
    });
  });

  unittest.group('obj-schema-SqlPlanMetric', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSqlPlanMetric();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SqlPlanMetric.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSqlPlanMetric(od);
    });
  });

  unittest.group('obj-schema-StageAttemptTasksSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStageAttemptTasksSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StageAttemptTasksSummary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStageAttemptTasksSummary(od);
    });
  });

  unittest.group('obj-schema-StageData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStageData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StageData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStageData(od);
    });
  });

  unittest.group('obj-schema-StageInputMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStageInputMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StageInputMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStageInputMetrics(od);
    });
  });

  unittest.group('obj-schema-StageMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStageMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StageMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStageMetrics(od);
    });
  });

  unittest.group('obj-schema-StageOutputMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStageOutputMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StageOutputMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStageOutputMetrics(od);
    });
  });

  unittest.group('obj-schema-StageShufflePushReadMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStageShufflePushReadMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StageShufflePushReadMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStageShufflePushReadMetrics(od);
    });
  });

  unittest.group('obj-schema-StageShuffleReadMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStageShuffleReadMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StageShuffleReadMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStageShuffleReadMetrics(od);
    });
  });

  unittest.group('obj-schema-StageShuffleWriteMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStageShuffleWriteMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StageShuffleWriteMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStageShuffleWriteMetrics(od);
    });
  });

  unittest.group('obj-schema-StagesSummary', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStagesSummary();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StagesSummary.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStagesSummary(od);
    });
  });

  unittest.group('obj-schema-StartClusterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartClusterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartClusterRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStartClusterRequest(od);
    });
  });

  unittest.group('obj-schema-StartupConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStartupConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StartupConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStartupConfig(od);
    });
  });

  unittest.group('obj-schema-StateHistory', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStateHistory();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StateHistory.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStateHistory(od);
    });
  });

  unittest.group('obj-schema-StateOperatorProgress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStateOperatorProgress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StateOperatorProgress.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStateOperatorProgress(od);
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

  unittest.group('obj-schema-StopClusterRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStopClusterRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StopClusterRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStopClusterRequest(od);
    });
  });

  unittest.group('obj-schema-StreamBlockData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStreamBlockData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StreamBlockData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStreamBlockData(od);
    });
  });

  unittest.group('obj-schema-StreamingQueryData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStreamingQueryData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StreamingQueryData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStreamingQueryData(od);
    });
  });

  unittest.group('obj-schema-StreamingQueryProgress', () {
    unittest.test('to-json--from-json', () async {
      final o = buildStreamingQueryProgress();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.StreamingQueryProgress.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkStreamingQueryProgress(od);
    });
  });

  unittest.group('obj-schema-SubmitJobRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSubmitJobRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SubmitJobRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSubmitJobRequest(od);
    });
  });

  unittest.group(
    'obj-schema-SummarizeSessionSparkApplicationExecutorsResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildSummarizeSessionSparkApplicationExecutorsResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.SummarizeSessionSparkApplicationExecutorsResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkSummarizeSessionSparkApplicationExecutorsResponse(od);
      });
    },
  );

  unittest.group('obj-schema-SummarizeSessionSparkApplicationJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSummarizeSessionSparkApplicationJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SummarizeSessionSparkApplicationJobsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSummarizeSessionSparkApplicationJobsResponse(od);
    });
  });

  unittest.group(
    'obj-schema-SummarizeSessionSparkApplicationStageAttemptTasksResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o =
            buildSummarizeSessionSparkApplicationStageAttemptTasksResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.SummarizeSessionSparkApplicationStageAttemptTasksResponse
            .fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkSummarizeSessionSparkApplicationStageAttemptTasksResponse(od);
      });
    },
  );

  unittest.group(
    'obj-schema-SummarizeSessionSparkApplicationStagesResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildSummarizeSessionSparkApplicationStagesResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od = api.SummarizeSessionSparkApplicationStagesResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkSummarizeSessionSparkApplicationStagesResponse(od);
      });
    },
  );

  unittest.group('obj-schema-SummarizeSparkApplicationExecutorsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSummarizeSparkApplicationExecutorsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SummarizeSparkApplicationExecutorsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSummarizeSparkApplicationExecutorsResponse(od);
    });
  });

  unittest.group('obj-schema-SummarizeSparkApplicationJobsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSummarizeSparkApplicationJobsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SummarizeSparkApplicationJobsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSummarizeSparkApplicationJobsResponse(od);
    });
  });

  unittest.group(
    'obj-schema-SummarizeSparkApplicationStageAttemptTasksResponse',
    () {
      unittest.test('to-json--from-json', () async {
        final o = buildSummarizeSparkApplicationStageAttemptTasksResponse();
        final oJson = convert.jsonDecode(convert.jsonEncode(o));
        final od =
            api.SummarizeSparkApplicationStageAttemptTasksResponse.fromJson(
          oJson as core.Map<core.String, core.dynamic>,
        );
        checkSummarizeSparkApplicationStageAttemptTasksResponse(od);
      });
    },
  );

  unittest.group('obj-schema-SummarizeSparkApplicationStagesResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildSummarizeSparkApplicationStagesResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.SummarizeSparkApplicationStagesResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkSummarizeSparkApplicationStagesResponse(od);
    });
  });

  unittest.group('obj-schema-TaskData', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTaskData();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TaskData.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTaskData(od);
    });
  });

  unittest.group('obj-schema-TaskMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTaskMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TaskMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTaskMetrics(od);
    });
  });

  unittest.group('obj-schema-TaskQuantileMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTaskQuantileMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TaskQuantileMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTaskQuantileMetrics(od);
    });
  });

  unittest.group('obj-schema-TaskResourceRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTaskResourceRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TaskResourceRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTaskResourceRequest(od);
    });
  });

  unittest.group('obj-schema-TemplateParameter', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTemplateParameter();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TemplateParameter.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTemplateParameter(od);
    });
  });

  unittest.group('obj-schema-TerminateSessionRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTerminateSessionRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TerminateSessionRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTerminateSessionRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestIamPermissionsRequest(od);
    });
  });

  unittest.group('obj-schema-TestIamPermissionsResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTestIamPermissionsResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TestIamPermissionsResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTestIamPermissionsResponse(od);
    });
  });

  unittest.group('obj-schema-TrinoJob', () {
    unittest.test('to-json--from-json', () async {
      final o = buildTrinoJob();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.TrinoJob.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkTrinoJob(od);
    });
  });

  unittest.group('obj-schema-UsageMetrics', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsageMetrics();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsageMetrics.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUsageMetrics(od);
    });
  });

  unittest.group('obj-schema-UsageSnapshot', () {
    unittest.test('to-json--from-json', () async {
      final o = buildUsageSnapshot();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.UsageSnapshot.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkUsageSnapshot(od);
    });
  });

  unittest.group('obj-schema-ValueValidation', () {
    unittest.test('to-json--from-json', () async {
      final o = buildValueValidation();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.ValueValidation.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkValueValidation(od);
    });
  });

  unittest.group('obj-schema-VirtualClusterConfig', () {
    unittest.test('to-json--from-json', () async {
      final o = buildVirtualClusterConfig();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.VirtualClusterConfig.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkVirtualClusterConfig(od);
    });
  });

  unittest.group('obj-schema-WorkflowTemplate', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkflowTemplate();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkflowTemplate.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWorkflowTemplate(od);
    });
  });

  unittest.group('obj-schema-WorkflowTemplatePlacement', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWorkflowTemplatePlacement();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WorkflowTemplatePlacement.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWorkflowTemplatePlacement(od);
    });
  });

  unittest.group('obj-schema-WriteSessionSparkApplicationContextRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWriteSessionSparkApplicationContextRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WriteSessionSparkApplicationContextRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWriteSessionSparkApplicationContextRequest(od);
    });
  });

  unittest.group('obj-schema-WriteSessionSparkApplicationContextResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWriteSessionSparkApplicationContextResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WriteSessionSparkApplicationContextResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWriteSessionSparkApplicationContextResponse(od);
    });
  });

  unittest.group('obj-schema-WriteSparkApplicationContextRequest', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWriteSparkApplicationContextRequest();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WriteSparkApplicationContextRequest.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWriteSparkApplicationContextRequest(od);
    });
  });

  unittest.group('obj-schema-WriteSparkApplicationContextResponse', () {
    unittest.test('to-json--from-json', () async {
      final o = buildWriteSparkApplicationContextResponse();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.WriteSparkApplicationContextResponse.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkWriteSparkApplicationContextResponse(od);
    });
  });

  unittest.group('obj-schema-YarnApplication', () {
    unittest.test('to-json--from-json', () async {
      final o = buildYarnApplication();
      final oJson = convert.jsonDecode(convert.jsonEncode(o));
      final od = api.YarnApplication.fromJson(
        oJson as core.Map<core.String, core.dynamic>,
      );
      checkYarnApplication(od);
    });
  });

  unittest.group('resource-ProjectsLocationsAutoscalingPoliciesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.autoscalingPolicies;
      final arg_request = buildAutoscalingPolicy();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AutoscalingPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAutoscalingPolicy(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAutoscalingPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkAutoscalingPolicy(response as api.AutoscalingPolicy);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.autoscalingPolicies;
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
      final res = api.DataprocApi(mock).projects.locations.autoscalingPolicies;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAutoscalingPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAutoscalingPolicy(response as api.AutoscalingPolicy);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.autoscalingPolicies;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGetIamPolicyRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.autoscalingPolicies;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListAutoscalingPoliciesResponse(),
          );
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
      checkListAutoscalingPoliciesResponse(
        response as api.ListAutoscalingPoliciesResponse,
      );
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.autoscalingPolicies;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetIamPolicyRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.autoscalingPolicies;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTestIamPermissionsRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.autoscalingPolicies;
      final arg_request = buildAutoscalingPolicy();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AutoscalingPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAutoscalingPolicy(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAutoscalingPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.update(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkAutoscalingPolicy(response as api.AutoscalingPolicy);
    });
  });

  unittest.group('resource-ProjectsLocationsBatchesResource', () {
    unittest.test('method--analyze', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.batches;
      final arg_request = buildAnalyzeBatchRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AnalyzeBatchRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAnalyzeBatchRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.analyze(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.batches;
      final arg_request = buildBatch();
      final arg_parent = 'foo';
      final arg_batchId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Batch.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkBatch(obj);

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
            queryMap['batchId']!.first,
            unittest.equals(arg_batchId),
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
        batchId: arg_batchId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.batches;
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
      final res = api.DataprocApi(mock).projects.locations.batches;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildBatch());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkBatch(response as api.Batch);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.batches;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListBatchesResponse());
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
      checkListBatchesResponse(response as api.ListBatchesResponse);
    });
  });

  unittest.group('resource-ProjectsLocationsBatchesSparkApplicationsResource',
      () {
    unittest.test('method--access', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.batches.sparkApplications;
      final arg_name = 'foo';
      final arg_parent = 'foo';
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildAccessSparkApplicationResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.access(
        arg_name,
        parent: arg_parent,
        $fields: arg_$fields,
      );
      checkAccessSparkApplicationResponse(
        response as api.AccessSparkApplicationResponse,
      );
    });

    unittest.test('method--accessEnvironmentInfo', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.batches.sparkApplications;
      final arg_name = 'foo';
      final arg_parent = 'foo';
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildAccessSparkApplicationEnvironmentInfoResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.accessEnvironmentInfo(
        arg_name,
        parent: arg_parent,
        $fields: arg_$fields,
      );
      checkAccessSparkApplicationEnvironmentInfoResponse(
        response as api.AccessSparkApplicationEnvironmentInfoResponse,
      );
    });

    unittest.test('method--accessJob', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.batches.sparkApplications;
      final arg_name = 'foo';
      final arg_jobId = 'foo';
      final arg_parent = 'foo';
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
          unittest.expect(queryMap['jobId']!.first, unittest.equals(arg_jobId));
          unittest.expect(
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildAccessSparkApplicationJobResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.accessJob(
        arg_name,
        jobId: arg_jobId,
        parent: arg_parent,
        $fields: arg_$fields,
      );
      checkAccessSparkApplicationJobResponse(
        response as api.AccessSparkApplicationJobResponse,
      );
    });

    unittest.test('method--accessSqlPlan', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.batches.sparkApplications;
      final arg_name = 'foo';
      final arg_executionId = 'foo';
      final arg_parent = 'foo';
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
            queryMap['executionId']!.first,
            unittest.equals(arg_executionId),
          );
          unittest.expect(
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildAccessSparkApplicationSqlSparkPlanGraphResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.accessSqlPlan(
        arg_name,
        executionId: arg_executionId,
        parent: arg_parent,
        $fields: arg_$fields,
      );
      checkAccessSparkApplicationSqlSparkPlanGraphResponse(
        response as api.AccessSparkApplicationSqlSparkPlanGraphResponse,
      );
    });

    unittest.test('method--accessSqlQuery', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.batches.sparkApplications;
      final arg_name = 'foo';
      final arg_details = true;
      final arg_executionId = 'foo';
      final arg_parent = 'foo';
      final arg_planDescription = true;
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
            queryMap['details']!.first,
            unittest.equals('$arg_details'),
          );
          unittest.expect(
            queryMap['executionId']!.first,
            unittest.equals(arg_executionId),
          );
          unittest.expect(
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['planDescription']!.first,
            unittest.equals('$arg_planDescription'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildAccessSparkApplicationSqlQueryResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.accessSqlQuery(
        arg_name,
        details: arg_details,
        executionId: arg_executionId,
        parent: arg_parent,
        planDescription: arg_planDescription,
        $fields: arg_$fields,
      );
      checkAccessSparkApplicationSqlQueryResponse(
        response as api.AccessSparkApplicationSqlQueryResponse,
      );
    });

    unittest.test('method--accessStageAttempt', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.batches.sparkApplications;
      final arg_name = 'foo';
      final arg_parent = 'foo';
      final arg_stageAttemptId = 42;
      final arg_stageId = 'foo';
      final arg_summaryMetricsMask = 'foo';
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            core.int.parse(queryMap['stageAttemptId']!.first),
            unittest.equals(arg_stageAttemptId),
          );
          unittest.expect(
            queryMap['stageId']!.first,
            unittest.equals(arg_stageId),
          );
          unittest.expect(
            queryMap['summaryMetricsMask']!.first,
            unittest.equals(arg_summaryMetricsMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildAccessSparkApplicationStageAttemptResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.accessStageAttempt(
        arg_name,
        parent: arg_parent,
        stageAttemptId: arg_stageAttemptId,
        stageId: arg_stageId,
        summaryMetricsMask: arg_summaryMetricsMask,
        $fields: arg_$fields,
      );
      checkAccessSparkApplicationStageAttemptResponse(
        response as api.AccessSparkApplicationStageAttemptResponse,
      );
    });

    unittest.test('method--accessStageRddGraph', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.batches.sparkApplications;
      final arg_name = 'foo';
      final arg_parent = 'foo';
      final arg_stageId = 'foo';
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['stageId']!.first,
            unittest.equals(arg_stageId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildAccessSparkApplicationStageRddOperationGraphResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.accessStageRddGraph(
        arg_name,
        parent: arg_parent,
        stageId: arg_stageId,
        $fields: arg_$fields,
      );
      checkAccessSparkApplicationStageRddOperationGraphResponse(
        response as api.AccessSparkApplicationStageRddOperationGraphResponse,
      );
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.batches.sparkApplications;
      final arg_parent = 'foo';
      final arg_applicationStatus = 'foo';
      final arg_maxEndTime = 'foo';
      final arg_maxTime = 'foo';
      final arg_minEndTime = 'foo';
      final arg_minTime = 'foo';
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
            queryMap['applicationStatus']!.first,
            unittest.equals(arg_applicationStatus),
          );
          unittest.expect(
            queryMap['maxEndTime']!.first,
            unittest.equals(arg_maxEndTime),
          );
          unittest.expect(
            queryMap['maxTime']!.first,
            unittest.equals(arg_maxTime),
          );
          unittest.expect(
            queryMap['minEndTime']!.first,
            unittest.equals(arg_minEndTime),
          );
          unittest.expect(
            queryMap['minTime']!.first,
            unittest.equals(arg_minTime),
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
          final resp = convert.json.encode(
            buildSearchSparkApplicationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.search(
        arg_parent,
        applicationStatus: arg_applicationStatus,
        maxEndTime: arg_maxEndTime,
        maxTime: arg_maxTime,
        minEndTime: arg_minEndTime,
        minTime: arg_minTime,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkSearchSparkApplicationsResponse(
        response as api.SearchSparkApplicationsResponse,
      );
    });

    unittest.test('method--searchExecutorStageSummary', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.batches.sparkApplications;
      final arg_name = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_parent = 'foo';
      final arg_stageAttemptId = 42;
      final arg_stageId = 'foo';
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            core.int.parse(queryMap['stageAttemptId']!.first),
            unittest.equals(arg_stageAttemptId),
          );
          unittest.expect(
            queryMap['stageId']!.first,
            unittest.equals(arg_stageId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildSearchSparkApplicationExecutorStageSummaryResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.searchExecutorStageSummary(
        arg_name,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        parent: arg_parent,
        stageAttemptId: arg_stageAttemptId,
        stageId: arg_stageId,
        $fields: arg_$fields,
      );
      checkSearchSparkApplicationExecutorStageSummaryResponse(
        response as api.SearchSparkApplicationExecutorStageSummaryResponse,
      );
    });

    unittest.test('method--searchExecutors', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.batches.sparkApplications;
      final arg_name = 'foo';
      final arg_executorStatus = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_parent = 'foo';
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
            queryMap['executorStatus']!.first,
            unittest.equals(arg_executorStatus),
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildSearchSparkApplicationExecutorsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.searchExecutors(
        arg_name,
        executorStatus: arg_executorStatus,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        parent: arg_parent,
        $fields: arg_$fields,
      );
      checkSearchSparkApplicationExecutorsResponse(
        response as api.SearchSparkApplicationExecutorsResponse,
      );
    });

    unittest.test('method--searchJobs', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.batches.sparkApplications;
      final arg_name = 'foo';
      final arg_jobStatus = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_parent = 'foo';
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
            queryMap['jobStatus']!.first,
            unittest.equals(arg_jobStatus),
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildSearchSparkApplicationJobsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.searchJobs(
        arg_name,
        jobStatus: arg_jobStatus,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        parent: arg_parent,
        $fields: arg_$fields,
      );
      checkSearchSparkApplicationJobsResponse(
        response as api.SearchSparkApplicationJobsResponse,
      );
    });

    unittest.test('method--searchSqlQueries', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.batches.sparkApplications;
      final arg_name = 'foo';
      final arg_details = true;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_parent = 'foo';
      final arg_planDescription = true;
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
            queryMap['details']!.first,
            unittest.equals('$arg_details'),
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['planDescription']!.first,
            unittest.equals('$arg_planDescription'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildSearchSparkApplicationSqlQueriesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.searchSqlQueries(
        arg_name,
        details: arg_details,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        parent: arg_parent,
        planDescription: arg_planDescription,
        $fields: arg_$fields,
      );
      checkSearchSparkApplicationSqlQueriesResponse(
        response as api.SearchSparkApplicationSqlQueriesResponse,
      );
    });

    unittest.test('method--searchStageAttemptTasks', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.batches.sparkApplications;
      final arg_name = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_parent = 'foo';
      final arg_sortRuntime = true;
      final arg_stageAttemptId = 42;
      final arg_stageId = 'foo';
      final arg_taskStatus = 'foo';
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['sortRuntime']!.first,
            unittest.equals('$arg_sortRuntime'),
          );
          unittest.expect(
            core.int.parse(queryMap['stageAttemptId']!.first),
            unittest.equals(arg_stageAttemptId),
          );
          unittest.expect(
            queryMap['stageId']!.first,
            unittest.equals(arg_stageId),
          );
          unittest.expect(
            queryMap['taskStatus']!.first,
            unittest.equals(arg_taskStatus),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildSearchSparkApplicationStageAttemptTasksResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.searchStageAttemptTasks(
        arg_name,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        parent: arg_parent,
        sortRuntime: arg_sortRuntime,
        stageAttemptId: arg_stageAttemptId,
        stageId: arg_stageId,
        taskStatus: arg_taskStatus,
        $fields: arg_$fields,
      );
      checkSearchSparkApplicationStageAttemptTasksResponse(
        response as api.SearchSparkApplicationStageAttemptTasksResponse,
      );
    });

    unittest.test('method--searchStageAttempts', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.batches.sparkApplications;
      final arg_name = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_parent = 'foo';
      final arg_stageId = 'foo';
      final arg_summaryMetricsMask = 'foo';
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['stageId']!.first,
            unittest.equals(arg_stageId),
          );
          unittest.expect(
            queryMap['summaryMetricsMask']!.first,
            unittest.equals(arg_summaryMetricsMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildSearchSparkApplicationStageAttemptsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.searchStageAttempts(
        arg_name,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        parent: arg_parent,
        stageId: arg_stageId,
        summaryMetricsMask: arg_summaryMetricsMask,
        $fields: arg_$fields,
      );
      checkSearchSparkApplicationStageAttemptsResponse(
        response as api.SearchSparkApplicationStageAttemptsResponse,
      );
    });

    unittest.test('method--searchStages', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.batches.sparkApplications;
      final arg_name = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_parent = 'foo';
      final arg_stageStatus = 'foo';
      final arg_summaryMetricsMask = 'foo';
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['stageStatus']!.first,
            unittest.equals(arg_stageStatus),
          );
          unittest.expect(
            queryMap['summaryMetricsMask']!.first,
            unittest.equals(arg_summaryMetricsMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildSearchSparkApplicationStagesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.searchStages(
        arg_name,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        parent: arg_parent,
        stageStatus: arg_stageStatus,
        summaryMetricsMask: arg_summaryMetricsMask,
        $fields: arg_$fields,
      );
      checkSearchSparkApplicationStagesResponse(
        response as api.SearchSparkApplicationStagesResponse,
      );
    });

    unittest.test('method--summarizeExecutors', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.batches.sparkApplications;
      final arg_name = 'foo';
      final arg_parent = 'foo';
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildSummarizeSparkApplicationExecutorsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.summarizeExecutors(
        arg_name,
        parent: arg_parent,
        $fields: arg_$fields,
      );
      checkSummarizeSparkApplicationExecutorsResponse(
        response as api.SummarizeSparkApplicationExecutorsResponse,
      );
    });

    unittest.test('method--summarizeJobs', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.batches.sparkApplications;
      final arg_name = 'foo';
      final arg_parent = 'foo';
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildSummarizeSparkApplicationJobsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.summarizeJobs(
        arg_name,
        parent: arg_parent,
        $fields: arg_$fields,
      );
      checkSummarizeSparkApplicationJobsResponse(
        response as api.SummarizeSparkApplicationJobsResponse,
      );
    });

    unittest.test('method--summarizeStageAttemptTasks', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.batches.sparkApplications;
      final arg_name = 'foo';
      final arg_parent = 'foo';
      final arg_stageAttemptId = 42;
      final arg_stageId = 'foo';
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            core.int.parse(queryMap['stageAttemptId']!.first),
            unittest.equals(arg_stageAttemptId),
          );
          unittest.expect(
            queryMap['stageId']!.first,
            unittest.equals(arg_stageId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildSummarizeSparkApplicationStageAttemptTasksResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.summarizeStageAttemptTasks(
        arg_name,
        parent: arg_parent,
        stageAttemptId: arg_stageAttemptId,
        stageId: arg_stageId,
        $fields: arg_$fields,
      );
      checkSummarizeSparkApplicationStageAttemptTasksResponse(
        response as api.SummarizeSparkApplicationStageAttemptTasksResponse,
      );
    });

    unittest.test('method--summarizeStages', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.batches.sparkApplications;
      final arg_name = 'foo';
      final arg_parent = 'foo';
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildSummarizeSparkApplicationStagesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.summarizeStages(
        arg_name,
        parent: arg_parent,
        $fields: arg_$fields,
      );
      checkSummarizeSparkApplicationStagesResponse(
        response as api.SummarizeSparkApplicationStagesResponse,
      );
    });

    unittest.test('method--write', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.batches.sparkApplications;
      final arg_request = buildWriteSparkApplicationContextRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.WriteSparkApplicationContextRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkWriteSparkApplicationContextRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildWriteSparkApplicationContextResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.write(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkWriteSparkApplicationContextResponse(
        response as api.WriteSparkApplicationContextResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.operations;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.operations;
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
      final res = api.DataprocApi(mock).projects.locations.operations;
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
      final res = api.DataprocApi(mock).projects.locations.operations;
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

  unittest.group('resource-ProjectsLocationsSessionTemplatesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.sessionTemplates;
      final arg_request = buildSessionTemplate();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SessionTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSessionTemplate(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildSessionTemplate());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkSessionTemplate(response as api.SessionTemplate);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.sessionTemplates;
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
      final res = api.DataprocApi(mock).projects.locations.sessionTemplates;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildSessionTemplate());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSessionTemplate(response as api.SessionTemplate);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.sessionTemplates;
      final arg_parent = 'foo';
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListSessionTemplatesResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListSessionTemplatesResponse(
        response as api.ListSessionTemplatesResponse,
      );
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.sessionTemplates;
      final arg_request = buildSessionTemplate();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SessionTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSessionTemplate(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildSessionTemplate());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkSessionTemplate(response as api.SessionTemplate);
    });
  });

  unittest.group('resource-ProjectsLocationsSessionsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.sessions;
      final arg_request = buildSession();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_sessionId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Session.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSession(obj);

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
            queryMap['sessionId']!.first,
            unittest.equals(arg_sessionId),
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
        sessionId: arg_sessionId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.sessions;
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
      final res = api.DataprocApi(mock).projects.locations.sessions;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildSession());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkSession(response as api.Session);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.sessions;
      final arg_parent = 'foo';
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildListSessionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_parent,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListSessionsResponse(response as api.ListSessionsResponse);
    });

    unittest.test('method--terminate', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.sessions;
      final arg_request = buildTerminateSessionRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TerminateSessionRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTerminateSessionRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.terminate(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsLocationsSessionsSparkApplicationsResource',
      () {
    unittest.test('method--access', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.sessions.sparkApplications;
      final arg_name = 'foo';
      final arg_parent = 'foo';
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildAccessSessionSparkApplicationResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.access(
        arg_name,
        parent: arg_parent,
        $fields: arg_$fields,
      );
      checkAccessSessionSparkApplicationResponse(
        response as api.AccessSessionSparkApplicationResponse,
      );
    });

    unittest.test('method--accessEnvironmentInfo', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.sessions.sparkApplications;
      final arg_name = 'foo';
      final arg_parent = 'foo';
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildAccessSessionSparkApplicationEnvironmentInfoResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.accessEnvironmentInfo(
        arg_name,
        parent: arg_parent,
        $fields: arg_$fields,
      );
      checkAccessSessionSparkApplicationEnvironmentInfoResponse(
        response as api.AccessSessionSparkApplicationEnvironmentInfoResponse,
      );
    });

    unittest.test('method--accessJob', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.sessions.sparkApplications;
      final arg_name = 'foo';
      final arg_jobId = 'foo';
      final arg_parent = 'foo';
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
          unittest.expect(queryMap['jobId']!.first, unittest.equals(arg_jobId));
          unittest.expect(
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildAccessSessionSparkApplicationJobResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.accessJob(
        arg_name,
        jobId: arg_jobId,
        parent: arg_parent,
        $fields: arg_$fields,
      );
      checkAccessSessionSparkApplicationJobResponse(
        response as api.AccessSessionSparkApplicationJobResponse,
      );
    });

    unittest.test('method--accessSqlPlan', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.sessions.sparkApplications;
      final arg_name = 'foo';
      final arg_executionId = 'foo';
      final arg_parent = 'foo';
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
            queryMap['executionId']!.first,
            unittest.equals(arg_executionId),
          );
          unittest.expect(
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildAccessSessionSparkApplicationSqlSparkPlanGraphResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.accessSqlPlan(
        arg_name,
        executionId: arg_executionId,
        parent: arg_parent,
        $fields: arg_$fields,
      );
      checkAccessSessionSparkApplicationSqlSparkPlanGraphResponse(
        response as api.AccessSessionSparkApplicationSqlSparkPlanGraphResponse,
      );
    });

    unittest.test('method--accessSqlQuery', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.sessions.sparkApplications;
      final arg_name = 'foo';
      final arg_details = true;
      final arg_executionId = 'foo';
      final arg_parent = 'foo';
      final arg_planDescription = true;
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
            queryMap['details']!.first,
            unittest.equals('$arg_details'),
          );
          unittest.expect(
            queryMap['executionId']!.first,
            unittest.equals(arg_executionId),
          );
          unittest.expect(
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['planDescription']!.first,
            unittest.equals('$arg_planDescription'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildAccessSessionSparkApplicationSqlQueryResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.accessSqlQuery(
        arg_name,
        details: arg_details,
        executionId: arg_executionId,
        parent: arg_parent,
        planDescription: arg_planDescription,
        $fields: arg_$fields,
      );
      checkAccessSessionSparkApplicationSqlQueryResponse(
        response as api.AccessSessionSparkApplicationSqlQueryResponse,
      );
    });

    unittest.test('method--accessStageAttempt', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.sessions.sparkApplications;
      final arg_name = 'foo';
      final arg_parent = 'foo';
      final arg_stageAttemptId = 42;
      final arg_stageId = 'foo';
      final arg_summaryMetricsMask = 'foo';
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            core.int.parse(queryMap['stageAttemptId']!.first),
            unittest.equals(arg_stageAttemptId),
          );
          unittest.expect(
            queryMap['stageId']!.first,
            unittest.equals(arg_stageId),
          );
          unittest.expect(
            queryMap['summaryMetricsMask']!.first,
            unittest.equals(arg_summaryMetricsMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildAccessSessionSparkApplicationStageAttemptResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.accessStageAttempt(
        arg_name,
        parent: arg_parent,
        stageAttemptId: arg_stageAttemptId,
        stageId: arg_stageId,
        summaryMetricsMask: arg_summaryMetricsMask,
        $fields: arg_$fields,
      );
      checkAccessSessionSparkApplicationStageAttemptResponse(
        response as api.AccessSessionSparkApplicationStageAttemptResponse,
      );
    });

    unittest.test('method--accessStageRddGraph', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.sessions.sparkApplications;
      final arg_name = 'foo';
      final arg_parent = 'foo';
      final arg_stageId = 'foo';
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['stageId']!.first,
            unittest.equals(arg_stageId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildAccessSessionSparkApplicationStageRddOperationGraphResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.accessStageRddGraph(
        arg_name,
        parent: arg_parent,
        stageId: arg_stageId,
        $fields: arg_$fields,
      );
      checkAccessSessionSparkApplicationStageRddOperationGraphResponse(
        response
            as api.AccessSessionSparkApplicationStageRddOperationGraphResponse,
      );
    });

    unittest.test('method--search', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.sessions.sparkApplications;
      final arg_parent = 'foo';
      final arg_applicationStatus = 'foo';
      final arg_maxEndTime = 'foo';
      final arg_maxTime = 'foo';
      final arg_minEndTime = 'foo';
      final arg_minTime = 'foo';
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
            queryMap['applicationStatus']!.first,
            unittest.equals(arg_applicationStatus),
          );
          unittest.expect(
            queryMap['maxEndTime']!.first,
            unittest.equals(arg_maxEndTime),
          );
          unittest.expect(
            queryMap['maxTime']!.first,
            unittest.equals(arg_maxTime),
          );
          unittest.expect(
            queryMap['minEndTime']!.first,
            unittest.equals(arg_minEndTime),
          );
          unittest.expect(
            queryMap['minTime']!.first,
            unittest.equals(arg_minTime),
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
          final resp = convert.json.encode(
            buildSearchSessionSparkApplicationsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.search(
        arg_parent,
        applicationStatus: arg_applicationStatus,
        maxEndTime: arg_maxEndTime,
        maxTime: arg_maxTime,
        minEndTime: arg_minEndTime,
        minTime: arg_minTime,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkSearchSessionSparkApplicationsResponse(
        response as api.SearchSessionSparkApplicationsResponse,
      );
    });

    unittest.test('method--searchExecutorStageSummary', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.sessions.sparkApplications;
      final arg_name = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_parent = 'foo';
      final arg_stageAttemptId = 42;
      final arg_stageId = 'foo';
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            core.int.parse(queryMap['stageAttemptId']!.first),
            unittest.equals(arg_stageAttemptId),
          );
          unittest.expect(
            queryMap['stageId']!.first,
            unittest.equals(arg_stageId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildSearchSessionSparkApplicationExecutorStageSummaryResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.searchExecutorStageSummary(
        arg_name,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        parent: arg_parent,
        stageAttemptId: arg_stageAttemptId,
        stageId: arg_stageId,
        $fields: arg_$fields,
      );
      checkSearchSessionSparkApplicationExecutorStageSummaryResponse(
        response
            as api.SearchSessionSparkApplicationExecutorStageSummaryResponse,
      );
    });

    unittest.test('method--searchExecutors', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.sessions.sparkApplications;
      final arg_name = 'foo';
      final arg_executorStatus = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_parent = 'foo';
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
            queryMap['executorStatus']!.first,
            unittest.equals(arg_executorStatus),
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildSearchSessionSparkApplicationExecutorsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.searchExecutors(
        arg_name,
        executorStatus: arg_executorStatus,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        parent: arg_parent,
        $fields: arg_$fields,
      );
      checkSearchSessionSparkApplicationExecutorsResponse(
        response as api.SearchSessionSparkApplicationExecutorsResponse,
      );
    });

    unittest.test('method--searchJobs', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.sessions.sparkApplications;
      final arg_name = 'foo';
      final arg_jobStatus = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_parent = 'foo';
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
            queryMap['jobStatus']!.first,
            unittest.equals(arg_jobStatus),
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildSearchSessionSparkApplicationJobsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.searchJobs(
        arg_name,
        jobStatus: arg_jobStatus,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        parent: arg_parent,
        $fields: arg_$fields,
      );
      checkSearchSessionSparkApplicationJobsResponse(
        response as api.SearchSessionSparkApplicationJobsResponse,
      );
    });

    unittest.test('method--searchSqlQueries', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.sessions.sparkApplications;
      final arg_name = 'foo';
      final arg_details = true;
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_parent = 'foo';
      final arg_planDescription = true;
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
            queryMap['details']!.first,
            unittest.equals('$arg_details'),
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['planDescription']!.first,
            unittest.equals('$arg_planDescription'),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildSearchSessionSparkApplicationSqlQueriesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.searchSqlQueries(
        arg_name,
        details: arg_details,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        parent: arg_parent,
        planDescription: arg_planDescription,
        $fields: arg_$fields,
      );
      checkSearchSessionSparkApplicationSqlQueriesResponse(
        response as api.SearchSessionSparkApplicationSqlQueriesResponse,
      );
    });

    unittest.test('method--searchStageAttemptTasks', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.sessions.sparkApplications;
      final arg_name = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_parent = 'foo';
      final arg_sortRuntime = true;
      final arg_stageAttemptId = 42;
      final arg_stageId = 'foo';
      final arg_taskStatus = 'foo';
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['sortRuntime']!.first,
            unittest.equals('$arg_sortRuntime'),
          );
          unittest.expect(
            core.int.parse(queryMap['stageAttemptId']!.first),
            unittest.equals(arg_stageAttemptId),
          );
          unittest.expect(
            queryMap['stageId']!.first,
            unittest.equals(arg_stageId),
          );
          unittest.expect(
            queryMap['taskStatus']!.first,
            unittest.equals(arg_taskStatus),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildSearchSessionSparkApplicationStageAttemptTasksResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.searchStageAttemptTasks(
        arg_name,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        parent: arg_parent,
        sortRuntime: arg_sortRuntime,
        stageAttemptId: arg_stageAttemptId,
        stageId: arg_stageId,
        taskStatus: arg_taskStatus,
        $fields: arg_$fields,
      );
      checkSearchSessionSparkApplicationStageAttemptTasksResponse(
        response as api.SearchSessionSparkApplicationStageAttemptTasksResponse,
      );
    });

    unittest.test('method--searchStageAttempts', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.sessions.sparkApplications;
      final arg_name = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_parent = 'foo';
      final arg_stageId = 'foo';
      final arg_summaryMetricsMask = 'foo';
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['stageId']!.first,
            unittest.equals(arg_stageId),
          );
          unittest.expect(
            queryMap['summaryMetricsMask']!.first,
            unittest.equals(arg_summaryMetricsMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildSearchSessionSparkApplicationStageAttemptsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.searchStageAttempts(
        arg_name,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        parent: arg_parent,
        stageId: arg_stageId,
        summaryMetricsMask: arg_summaryMetricsMask,
        $fields: arg_$fields,
      );
      checkSearchSessionSparkApplicationStageAttemptsResponse(
        response as api.SearchSessionSparkApplicationStageAttemptsResponse,
      );
    });

    unittest.test('method--searchStages', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.sessions.sparkApplications;
      final arg_name = 'foo';
      final arg_pageSize = 42;
      final arg_pageToken = 'foo';
      final arg_parent = 'foo';
      final arg_stageStatus = 'foo';
      final arg_summaryMetricsMask = 'foo';
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['stageStatus']!.first,
            unittest.equals(arg_stageStatus),
          );
          unittest.expect(
            queryMap['summaryMetricsMask']!.first,
            unittest.equals(arg_summaryMetricsMask),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildSearchSessionSparkApplicationStagesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.searchStages(
        arg_name,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        parent: arg_parent,
        stageStatus: arg_stageStatus,
        summaryMetricsMask: arg_summaryMetricsMask,
        $fields: arg_$fields,
      );
      checkSearchSessionSparkApplicationStagesResponse(
        response as api.SearchSessionSparkApplicationStagesResponse,
      );
    });

    unittest.test('method--summarizeExecutors', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.sessions.sparkApplications;
      final arg_name = 'foo';
      final arg_parent = 'foo';
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildSummarizeSessionSparkApplicationExecutorsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.summarizeExecutors(
        arg_name,
        parent: arg_parent,
        $fields: arg_$fields,
      );
      checkSummarizeSessionSparkApplicationExecutorsResponse(
        response as api.SummarizeSessionSparkApplicationExecutorsResponse,
      );
    });

    unittest.test('method--summarizeJobs', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.sessions.sparkApplications;
      final arg_name = 'foo';
      final arg_parent = 'foo';
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildSummarizeSessionSparkApplicationJobsResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.summarizeJobs(
        arg_name,
        parent: arg_parent,
        $fields: arg_$fields,
      );
      checkSummarizeSessionSparkApplicationJobsResponse(
        response as api.SummarizeSessionSparkApplicationJobsResponse,
      );
    });

    unittest.test('method--summarizeStageAttemptTasks', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.sessions.sparkApplications;
      final arg_name = 'foo';
      final arg_parent = 'foo';
      final arg_stageAttemptId = 42;
      final arg_stageId = 'foo';
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            core.int.parse(queryMap['stageAttemptId']!.first),
            unittest.equals(arg_stageAttemptId),
          );
          unittest.expect(
            queryMap['stageId']!.first,
            unittest.equals(arg_stageId),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildSummarizeSessionSparkApplicationStageAttemptTasksResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.summarizeStageAttemptTasks(
        arg_name,
        parent: arg_parent,
        stageAttemptId: arg_stageAttemptId,
        stageId: arg_stageId,
        $fields: arg_$fields,
      );
      checkSummarizeSessionSparkApplicationStageAttemptTasksResponse(
        response
            as api.SummarizeSessionSparkApplicationStageAttemptTasksResponse,
      );
    });

    unittest.test('method--summarizeStages', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.sessions.sparkApplications;
      final arg_name = 'foo';
      final arg_parent = 'foo';
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
            queryMap['parent']!.first,
            unittest.equals(arg_parent),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildSummarizeSessionSparkApplicationStagesResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.summarizeStages(
        arg_name,
        parent: arg_parent,
        $fields: arg_$fields,
      );
      checkSummarizeSessionSparkApplicationStagesResponse(
        response as api.SummarizeSessionSparkApplicationStagesResponse,
      );
    });

    unittest.test('method--write', () async {
      final mock = HttpServerMock();
      final res =
          api.DataprocApi(mock).projects.locations.sessions.sparkApplications;
      final arg_request = buildWriteSessionSparkApplicationContextRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.WriteSessionSparkApplicationContextRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkWriteSessionSparkApplicationContextRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildWriteSessionSparkApplicationContextResponse(),
          );
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.write(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkWriteSessionSparkApplicationContextResponse(
        response as api.WriteSessionSparkApplicationContextResponse,
      );
    });
  });

  unittest.group('resource-ProjectsLocationsWorkflowTemplatesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.workflowTemplates;
      final arg_request = buildWorkflowTemplate();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.WorkflowTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkWorkflowTemplate(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildWorkflowTemplate());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkWorkflowTemplate(response as api.WorkflowTemplate);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.workflowTemplates;
      final arg_name = 'foo';
      final arg_version = 42;
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
            core.int.parse(queryMap['version']!.first),
            unittest.equals(arg_version),
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
        version: arg_version,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.workflowTemplates;
      final arg_name = 'foo';
      final arg_version = 42;
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
            core.int.parse(queryMap['version']!.first),
            unittest.equals(arg_version),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildWorkflowTemplate());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        version: arg_version,
        $fields: arg_$fields,
      );
      checkWorkflowTemplate(response as api.WorkflowTemplate);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.workflowTemplates;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGetIamPolicyRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--instantiate', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.workflowTemplates;
      final arg_request = buildInstantiateWorkflowTemplateRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.InstantiateWorkflowTemplateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkInstantiateWorkflowTemplateRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.instantiate(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--instantiateInline', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.workflowTemplates;
      final arg_request = buildWorkflowTemplate();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.WorkflowTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkWorkflowTemplate(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.instantiateInline(
        arg_request,
        arg_parent,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.workflowTemplates;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListWorkflowTemplatesResponse(),
          );
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
      checkListWorkflowTemplatesResponse(
        response as api.ListWorkflowTemplatesResponse,
      );
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.workflowTemplates;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetIamPolicyRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.workflowTemplates;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTestIamPermissionsRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.locations.workflowTemplates;
      final arg_request = buildWorkflowTemplate();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.WorkflowTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkWorkflowTemplate(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildWorkflowTemplate());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.update(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkWorkflowTemplate(response as api.WorkflowTemplate);
    });
  });

  unittest.group('resource-ProjectsRegionsAutoscalingPoliciesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.autoscalingPolicies;
      final arg_request = buildAutoscalingPolicy();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AutoscalingPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAutoscalingPolicy(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAutoscalingPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkAutoscalingPolicy(response as api.AutoscalingPolicy);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.autoscalingPolicies;
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
      final res = api.DataprocApi(mock).projects.regions.autoscalingPolicies;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAutoscalingPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkAutoscalingPolicy(response as api.AutoscalingPolicy);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.autoscalingPolicies;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGetIamPolicyRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.autoscalingPolicies;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListAutoscalingPoliciesResponse(),
          );
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
      checkListAutoscalingPoliciesResponse(
        response as api.ListAutoscalingPoliciesResponse,
      );
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.autoscalingPolicies;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetIamPolicyRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.autoscalingPolicies;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTestIamPermissionsRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.autoscalingPolicies;
      final arg_request = buildAutoscalingPolicy();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.AutoscalingPolicy.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkAutoscalingPolicy(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildAutoscalingPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.update(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkAutoscalingPolicy(response as api.AutoscalingPolicy);
    });
  });

  unittest.group('resource-ProjectsRegionsClustersResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.clusters;
      final arg_request = buildCluster();
      final arg_projectId = 'foo';
      final arg_region = 'foo';
      final arg_actionOnFailedPrimaryWorkers = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Cluster.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCluster(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
          index = path.indexOf('/regions/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_projectId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('/regions/'),
          );
          pathOffset += 9;
          index = path.indexOf('/clusters', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_region'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('/clusters'),
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
            queryMap['actionOnFailedPrimaryWorkers']!.first,
            unittest.equals(arg_actionOnFailedPrimaryWorkers),
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
        arg_projectId,
        arg_region,
        actionOnFailedPrimaryWorkers: arg_actionOnFailedPrimaryWorkers,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.clusters;
      final arg_projectId = 'foo';
      final arg_region = 'foo';
      final arg_clusterName = 'foo';
      final arg_clusterUuid = 'foo';
      final arg_gracefulTerminationTimeout = 'foo';
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
          index = path.indexOf('/regions/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_projectId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('/regions/'),
          );
          pathOffset += 9;
          index = path.indexOf('/clusters/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_region'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('/clusters/'),
          );
          pathOffset += 10;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_clusterName'));

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
            queryMap['clusterUuid']!.first,
            unittest.equals(arg_clusterUuid),
          );
          unittest.expect(
            queryMap['gracefulTerminationTimeout']!.first,
            unittest.equals(arg_gracefulTerminationTimeout),
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
        arg_projectId,
        arg_region,
        arg_clusterName,
        clusterUuid: arg_clusterUuid,
        gracefulTerminationTimeout: arg_gracefulTerminationTimeout,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--diagnose', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.clusters;
      final arg_request = buildDiagnoseClusterRequest();
      final arg_projectId = 'foo';
      final arg_region = 'foo';
      final arg_clusterName = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.DiagnoseClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkDiagnoseClusterRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
          index = path.indexOf('/regions/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_projectId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('/regions/'),
          );
          pathOffset += 9;
          index = path.indexOf('/clusters/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_region'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('/clusters/'),
          );
          pathOffset += 10;
          index = path.indexOf(':diagnose', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_clusterName'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals(':diagnose'),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.diagnose(
        arg_request,
        arg_projectId,
        arg_region,
        arg_clusterName,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.clusters;
      final arg_projectId = 'foo';
      final arg_region = 'foo';
      final arg_clusterName = 'foo';
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
          index = path.indexOf('/regions/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_projectId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('/regions/'),
          );
          pathOffset += 9;
          index = path.indexOf('/clusters/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_region'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('/clusters/'),
          );
          pathOffset += 10;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_clusterName'));

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
          final resp = convert.json.encode(buildCluster());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_projectId,
        arg_region,
        arg_clusterName,
        $fields: arg_$fields,
      );
      checkCluster(response as api.Cluster);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.clusters;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGetIamPolicyRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--injectCredentials', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.clusters;
      final arg_request = buildInjectCredentialsRequest();
      final arg_project = 'foo';
      final arg_region = 'foo';
      final arg_cluster = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.InjectCredentialsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkInjectCredentialsRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.injectCredentials(
        arg_request,
        arg_project,
        arg_region,
        arg_cluster,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.clusters;
      final arg_projectId = 'foo';
      final arg_region = 'foo';
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
          index = path.indexOf('/regions/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_projectId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('/regions/'),
          );
          pathOffset += 9;
          index = path.indexOf('/clusters', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_region'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('/clusters'),
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
          final resp = convert.json.encode(buildListClustersResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_projectId,
        arg_region,
        filter: arg_filter,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListClustersResponse(response as api.ListClustersResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.clusters;
      final arg_request = buildCluster();
      final arg_projectId = 'foo';
      final arg_region = 'foo';
      final arg_clusterName = 'foo';
      final arg_gracefulDecommissionTimeout = 'foo';
      final arg_requestId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Cluster.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCluster(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
          index = path.indexOf('/regions/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_projectId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('/regions/'),
          );
          pathOffset += 9;
          index = path.indexOf('/clusters/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_region'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('/clusters/'),
          );
          pathOffset += 10;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_clusterName'));

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
            queryMap['gracefulDecommissionTimeout']!.first,
            unittest.equals(arg_gracefulDecommissionTimeout),
          );
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
        arg_projectId,
        arg_region,
        arg_clusterName,
        gracefulDecommissionTimeout: arg_gracefulDecommissionTimeout,
        requestId: arg_requestId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--repair', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.clusters;
      final arg_request = buildRepairClusterRequest();
      final arg_projectId = 'foo';
      final arg_region = 'foo';
      final arg_clusterName = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RepairClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRepairClusterRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
          index = path.indexOf('/regions/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_projectId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('/regions/'),
          );
          pathOffset += 9;
          index = path.indexOf('/clusters/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_region'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('/clusters/'),
          );
          pathOffset += 10;
          index = path.indexOf(':repair', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_clusterName'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals(':repair'),
          );
          pathOffset += 7;

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
      final response = await res.repair(
        arg_request,
        arg_projectId,
        arg_region,
        arg_clusterName,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.clusters;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetIamPolicyRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--start', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.clusters;
      final arg_request = buildStartClusterRequest();
      final arg_projectId = 'foo';
      final arg_region = 'foo';
      final arg_clusterName = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.StartClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkStartClusterRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
          index = path.indexOf('/regions/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_projectId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('/regions/'),
          );
          pathOffset += 9;
          index = path.indexOf('/clusters/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_region'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('/clusters/'),
          );
          pathOffset += 10;
          index = path.indexOf(':start', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_clusterName'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 6),
            unittest.equals(':start'),
          );
          pathOffset += 6;

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
      final response = await res.start(
        arg_request,
        arg_projectId,
        arg_region,
        arg_clusterName,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--stop', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.clusters;
      final arg_request = buildStopClusterRequest();
      final arg_projectId = 'foo';
      final arg_region = 'foo';
      final arg_clusterName = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.StopClusterRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkStopClusterRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
          index = path.indexOf('/regions/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_projectId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('/regions/'),
          );
          pathOffset += 9;
          index = path.indexOf('/clusters/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_region'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 10),
            unittest.equals('/clusters/'),
          );
          pathOffset += 10;
          index = path.indexOf(':stop', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_clusterName'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 5),
            unittest.equals(':stop'),
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.stop(
        arg_request,
        arg_projectId,
        arg_region,
        arg_clusterName,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.clusters;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTestIamPermissionsRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsRegionsClustersNodeGroupsResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.clusters.nodeGroups;
      final arg_request = buildNodeGroup();
      final arg_parent = 'foo';
      final arg_nodeGroupId = 'foo';
      final arg_parentOperationId = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.NodeGroup.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkNodeGroup(obj);

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
            queryMap['nodeGroupId']!.first,
            unittest.equals(arg_nodeGroupId),
          );
          unittest.expect(
            queryMap['parentOperationId']!.first,
            unittest.equals(arg_parentOperationId),
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
        nodeGroupId: arg_nodeGroupId,
        parentOperationId: arg_parentOperationId,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.clusters.nodeGroups;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildNodeGroup());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkNodeGroup(response as api.NodeGroup);
    });

    unittest.test('method--repair', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.clusters.nodeGroups;
      final arg_request = buildRepairNodeGroupRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.RepairNodeGroupRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkRepairNodeGroupRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.repair(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--resize', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.clusters.nodeGroups;
      final arg_request = buildResizeNodeGroupRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.ResizeNodeGroupRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkResizeNodeGroupRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.resize(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });
  });

  unittest.group('resource-ProjectsRegionsJobsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.jobs;
      final arg_request = buildCancelJobRequest();
      final arg_projectId = 'foo';
      final arg_region = 'foo';
      final arg_jobId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.CancelJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkCancelJobRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
          index = path.indexOf('/regions/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_projectId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('/regions/'),
          );
          pathOffset += 9;
          index = path.indexOf('/jobs/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_region'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 6),
            unittest.equals('/jobs/'),
          );
          pathOffset += 6;
          index = path.indexOf(':cancel', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_jobId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 7),
            unittest.equals(':cancel'),
          );
          pathOffset += 7;

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
          final resp = convert.json.encode(buildJob());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(
        arg_request,
        arg_projectId,
        arg_region,
        arg_jobId,
        $fields: arg_$fields,
      );
      checkJob(response as api.Job);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.jobs;
      final arg_projectId = 'foo';
      final arg_region = 'foo';
      final arg_jobId = 'foo';
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
          index = path.indexOf('/regions/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_projectId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('/regions/'),
          );
          pathOffset += 9;
          index = path.indexOf('/jobs/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_region'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 6),
            unittest.equals('/jobs/'),
          );
          pathOffset += 6;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_jobId'));

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
      final response = await res.delete(
        arg_projectId,
        arg_region,
        arg_jobId,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.jobs;
      final arg_projectId = 'foo';
      final arg_region = 'foo';
      final arg_jobId = 'foo';
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
          index = path.indexOf('/regions/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_projectId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('/regions/'),
          );
          pathOffset += 9;
          index = path.indexOf('/jobs/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_region'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 6),
            unittest.equals('/jobs/'),
          );
          pathOffset += 6;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_jobId'));

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
          final resp = convert.json.encode(buildJob());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_projectId,
        arg_region,
        arg_jobId,
        $fields: arg_$fields,
      );
      checkJob(response as api.Job);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.jobs;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGetIamPolicyRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.jobs;
      final arg_projectId = 'foo';
      final arg_region = 'foo';
      final arg_clusterName = 'foo';
      final arg_filter = 'foo';
      final arg_jobStateMatcher = 'foo';
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
          index = path.indexOf('/regions/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_projectId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('/regions/'),
          );
          pathOffset += 9;
          index = path.indexOf('/jobs', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_region'));
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
            queryMap['clusterName']!.first,
            unittest.equals(arg_clusterName),
          );
          unittest.expect(
            queryMap['filter']!.first,
            unittest.equals(arg_filter),
          );
          unittest.expect(
            queryMap['jobStateMatcher']!.first,
            unittest.equals(arg_jobStateMatcher),
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
          final resp = convert.json.encode(buildListJobsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.list(
        arg_projectId,
        arg_region,
        clusterName: arg_clusterName,
        filter: arg_filter,
        jobStateMatcher: arg_jobStateMatcher,
        pageSize: arg_pageSize,
        pageToken: arg_pageToken,
        $fields: arg_$fields,
      );
      checkListJobsResponse(response as api.ListJobsResponse);
    });

    unittest.test('method--patch', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.jobs;
      final arg_request = buildJob();
      final arg_projectId = 'foo';
      final arg_region = 'foo';
      final arg_jobId = 'foo';
      final arg_updateMask = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.Job.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
          index = path.indexOf('/regions/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_projectId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('/regions/'),
          );
          pathOffset += 9;
          index = path.indexOf('/jobs/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_region'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 6),
            unittest.equals('/jobs/'),
          );
          pathOffset += 6;
          subPart = core.Uri.decodeQueryComponent(path.substring(pathOffset));
          pathOffset = path.length;
          unittest.expect(subPart, unittest.equals('$arg_jobId'));

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildJob());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.patch(
        arg_request,
        arg_projectId,
        arg_region,
        arg_jobId,
        updateMask: arg_updateMask,
        $fields: arg_$fields,
      );
      checkJob(response as api.Job);
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.jobs;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetIamPolicyRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--submit', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.jobs;
      final arg_request = buildSubmitJobRequest();
      final arg_projectId = 'foo';
      final arg_region = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SubmitJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSubmitJobRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
          index = path.indexOf('/regions/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_projectId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('/regions/'),
          );
          pathOffset += 9;
          index = path.indexOf('/jobs:submit', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_region'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('/jobs:submit'),
          );
          pathOffset += 12;

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
          final resp = convert.json.encode(buildJob());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.submit(
        arg_request,
        arg_projectId,
        arg_region,
        $fields: arg_$fields,
      );
      checkJob(response as api.Job);
    });

    unittest.test('method--submitAsOperation', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.jobs;
      final arg_request = buildSubmitJobRequest();
      final arg_projectId = 'foo';
      final arg_region = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SubmitJobRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSubmitJobRequest(obj);

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
            path.substring(pathOffset, pathOffset + 12),
            unittest.equals('v1/projects/'),
          );
          pathOffset += 12;
          index = path.indexOf('/regions/', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_projectId'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 9),
            unittest.equals('/regions/'),
          );
          pathOffset += 9;
          index = path.indexOf('/jobs:submitAsOperation', pathOffset);
          unittest.expect(index >= 0, unittest.isTrue);
          subPart = core.Uri.decodeQueryComponent(
            path.substring(pathOffset, index),
          );
          pathOffset = index;
          unittest.expect(subPart, unittest.equals('$arg_region'));
          unittest.expect(
            path.substring(pathOffset, pathOffset + 23),
            unittest.equals('/jobs:submitAsOperation'),
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.submitAsOperation(
        arg_request,
        arg_projectId,
        arg_region,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.jobs;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTestIamPermissionsRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsRegionsOperationsResource', () {
    unittest.test('method--cancel', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.operations;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildEmpty());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.cancel(arg_name, $fields: arg_$fields);
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.operations;
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
      final res = api.DataprocApi(mock).projects.regions.operations;
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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(arg_name, $fields: arg_$fields);
      checkOperation(response as api.Operation);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.operations;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGetIamPolicyRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.operations;
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

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.operations;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetIamPolicyRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.operations;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTestIamPermissionsRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });
  });

  unittest.group('resource-ProjectsRegionsWorkflowTemplatesResource', () {
    unittest.test('method--create', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.workflowTemplates;
      final arg_request = buildWorkflowTemplate();
      final arg_parent = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.WorkflowTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkWorkflowTemplate(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildWorkflowTemplate());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.create(
        arg_request,
        arg_parent,
        $fields: arg_$fields,
      );
      checkWorkflowTemplate(response as api.WorkflowTemplate);
    });

    unittest.test('method--delete', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.workflowTemplates;
      final arg_name = 'foo';
      final arg_version = 42;
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
            core.int.parse(queryMap['version']!.first),
            unittest.equals(arg_version),
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
        version: arg_version,
        $fields: arg_$fields,
      );
      checkEmpty(response as api.Empty);
    });

    unittest.test('method--get', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.workflowTemplates;
      final arg_name = 'foo';
      final arg_version = 42;
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
            core.int.parse(queryMap['version']!.first),
            unittest.equals(arg_version),
          );
          unittest.expect(
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildWorkflowTemplate());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.get(
        arg_name,
        version: arg_version,
        $fields: arg_$fields,
      );
      checkWorkflowTemplate(response as api.WorkflowTemplate);
    });

    unittest.test('method--getIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.workflowTemplates;
      final arg_request = buildGetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.GetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkGetIamPolicyRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.getIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--instantiate', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.workflowTemplates;
      final arg_request = buildInstantiateWorkflowTemplateRequest();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.InstantiateWorkflowTemplateRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkInstantiateWorkflowTemplateRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.instantiate(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--instantiateInline', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.workflowTemplates;
      final arg_request = buildWorkflowTemplate();
      final arg_parent = 'foo';
      final arg_requestId = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.WorkflowTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkWorkflowTemplate(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildOperation());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.instantiateInline(
        arg_request,
        arg_parent,
        requestId: arg_requestId,
        $fields: arg_$fields,
      );
      checkOperation(response as api.Operation);
    });

    unittest.test('method--list', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.workflowTemplates;
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
            queryMap['fields']!.first,
            unittest.equals(arg_$fields),
          );

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(
            buildListWorkflowTemplatesResponse(),
          );
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
      checkListWorkflowTemplatesResponse(
        response as api.ListWorkflowTemplatesResponse,
      );
    });

    unittest.test('method--setIamPolicy', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.workflowTemplates;
      final arg_request = buildSetIamPolicyRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.SetIamPolicyRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkSetIamPolicyRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildPolicy());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.setIamPolicy(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkPolicy(response as api.Policy);
    });

    unittest.test('method--testIamPermissions', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.workflowTemplates;
      final arg_request = buildTestIamPermissionsRequest();
      final arg_resource = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.TestIamPermissionsRequest.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkTestIamPermissionsRequest(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildTestIamPermissionsResponse());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.testIamPermissions(
        arg_request,
        arg_resource,
        $fields: arg_$fields,
      );
      checkTestIamPermissionsResponse(
        response as api.TestIamPermissionsResponse,
      );
    });

    unittest.test('method--update', () async {
      final mock = HttpServerMock();
      final res = api.DataprocApi(mock).projects.regions.workflowTemplates;
      final arg_request = buildWorkflowTemplate();
      final arg_name = 'foo';
      final arg_$fields = 'foo';
      mock.register(
        unittest.expectAsync2((http.BaseRequest req, json) {
          final obj = api.WorkflowTemplate.fromJson(
            json as core.Map<core.String, core.dynamic>,
          );
          checkWorkflowTemplate(obj);

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

          final h = {'content-type': 'application/json; charset=utf-8'};
          final resp = convert.json.encode(buildWorkflowTemplate());
          return async.Future.value(stringResponse(200, h, resp));
        }),
        true,
      );
      final response = await res.update(
        arg_request,
        arg_name,
        $fields: arg_$fields,
      );
      checkWorkflowTemplate(response as api.WorkflowTemplate);
    });
  });
}
